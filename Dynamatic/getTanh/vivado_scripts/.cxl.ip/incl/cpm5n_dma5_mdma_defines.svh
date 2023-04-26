`ifndef CPM5N_CDX5N_DMA5_MDMA_DEFINES_SVH
`define CPM5N_CDX5N_DMA5_MDMA_DEFINES_SVH
  localparam MDMA_PFCH_CACHE_MAX_DEPTH=128; // Maximum depth

  // Virtual channel
  localparam MDMA_VIRT_CH = 2;
  localparam C2H_VIRT_CH = 8; // CDX
  typedef logic [$clog2(C2H_VIRT_CH)-1:0] c2h_virt_ch_t;

  typedef logic [511:0] mdma_int_tdata_t;
  typedef logic [10:0]  mdma_pid_t;
  typedef logic [3:0]   mdma_host_id_t;
  typedef logic [12:0]  mdma_qid_max_t;
  typedef logic [11:0]  mdma_qid_t;
  typedef logic [8:0]   mdma_pfch_cnt_t;
  typedef logic [12:0]  mdma_cqid_t;
  typedef logic [23:0]  mdma_qid_outside_t;
  typedef logic [15:0]  mdma_qidx_t;
  typedef logic [15:0]  mdma_pld_pkt_id_t;
  typedef logic         mdma_virt_ch_t;
  typedef logic [21:0]  mdma_byte_qidx_t;
  typedef logic [11:0]  mdma_int_pidx_t;
  typedef logic [15:0]  mdma_qsize_t;
  typedef logic [9:0]   mdma_qsize_64desc_t;
  typedef logic [15:0]  mdma_dma_buf_len_t;

  localparam  MDMA_C2H_ST_MAX_LEN = (1<<$bits(mdma_dma_buf_len_t))-1;

  typedef logic [63:6]   mdma_dma_buf_addr64_t;
  typedef logic [63:12]  mdma_dma_buf_addr4k_t;
  typedef logic [63:6]   mdma_dma_buf_addr4_high_t;
  typedef logic [5:2]    mdma_dma_buf_addr4_low_t;
  typedef logic [63:2]   mdma_dma_buf_addr4_t;
  typedef logic [63:0]   mdma_dma_buf_addr_t;
  typedef logic [511:0]  mdma_dma_wrb_data_t;
  typedef logic [127:0]  mdma_dma_wrb_data_fab_t;
  typedef logic [255:0]  mdma_max_dsc_t;

  typedef logic [31:0] mdma_stat_t;
  typedef logic [11:0] mdma_fnid_t;
  typedef logic [2:0]  mdma_int_page_size_t;
  typedef logic [31:0] mdma_int_vec_out_t;
  typedef logic [7:0]  mdma_int_vec_id_coal_t; // Absolute vector id.
  typedef logic [10:0] mdma_int_vec_id_t;
  typedef logic [15:0] mdma_int_cnt_th_t; //Absolute interrupt count threshold
  typedef logic [15:0] mdma_int_timer_cnt_t; //Absolute interrupt count threshold

  localparam  MDMA_C2H_MAX_STBUF = 31;
  typedef logic [$clog2(MDMA_C2H_MAX_STBUF+1)-1:0]         mdma_desc_cnt_t;
  typedef logic [$clog2(MDMA_PFCH_CACHE_MAX_DEPTH)-1:0]    mdma_c2h_cache_tag_t;
  typedef logic [3:0] mdma_c2h_buf_size_ix_t;

  typedef enum logic {
    H2C=0, C2H=1
  } mdma_dir_e;

  typedef logic [11:0] cdm_resp_cookie_t;

  typedef logic [19:0] mdma_pasid_val_t;

  typedef struct packed {
    logic pasid_en;
    mdma_pasid_val_t pasid;
  } mdma_pasid_t;

  typedef struct packed {
    logic int_sup;
    logic int_allow;
    logic noe;
    logic sw_db;
    logic hw_db;
    logic en_not;
    logic dis_not;
    mdma_qid_t qid;
  } mdma_vio_wm_fifo_t;

  // H2C Writeback Check Request (H2C writeback engine -> Descriptor engine)
  typedef struct packed {
     logic [1:0] err; // Error status      // bit[1] : dma error, bit[0] dsc erro
     logic wbi;     //
     logic wbi_chk; //
     mdma_qidx_t cidx;    // Context Index
     mdma_cqid_t qid;     // Queue ID
  } mdma_h2c_wbc_req_t;

  typedef struct packed {
    logic sol; // 1: Solicited marker response
    logic [2:0] port_id;
    mdma_host_id_t host_id;
    logic st_mm; //
    logic err;   // Error status // bit[1] : dma error, bit[0] dsc erro
    mdma_qidx_t cidx; // Context Index
    mdma_qid_t  qid;  // Queue ID
  } mdma_wb_sts_t;

  // pciea_int
  typedef struct packed {
    logic [6:0] ecc; //ECC to protect the header fields
    logic var_desc; // Variable descriptor
    logic drop_req; // Drop the data packet and CMPT packet
    logic num_buf_ov;
    mdma_host_id_t host_id;
    logic has_cmpt; // Has completion
    logic marker;   // Make sure the pipeline is completely flushed
    logic [2:0] port_id;
    mdma_qid_outside_t qid;           // FIXME
    mdma_dma_buf_len_t len;
  } mdma_c2h_axis_ctrl_outside_t;

  typedef struct packed {
    mdma_int_tdata_t tdata;
    logic [$bits(mdma_int_tdata_t)/8 - 1 :0]   par;
  } mdma_c2h_axis_data_t;

  typedef struct packed {
    mdma_int_tdata_t tdata;
    logic [$bits(mdma_int_tdata_t)/8 - 1 :0]   par;
  } mdma_h2c_axis_data_t;

  // FIXME: Name appropriately
  typedef enum logic [1:0]    {
    WRB_DSC_8B=0, WRB_DSC_16B=1, WRB_DSC_32B=2, WRB_DSC_64B=3
  } mdma_c2h_wrb_type_e;

  localparam  MDMA_C2H_WRB_PAR_BITS = $bits(mdma_dma_wrb_data_t)/32;
  localparam  MDMA_C2H_WRB_PAR_FAB_BITS = $bits(mdma_dma_wrb_data_fab_t)/32;

  typedef struct packed {
    logic [$bits(mdma_dma_wrb_data_t)/8-1:0]   wrb_data;
    logic [MDMA_C2H_WRB_PAR_BITS/8-1:0]        dpar; //Data parity
  } mdma_c2h_wrb_data_8B_chunk_t;

  typedef struct packed {
    mdma_dma_wrb_data_t wrb_data;
    logic [MDMA_C2H_WRB_PAR_BITS-1:0] dpar; //Data parity
  } mdma_c2h_wrb_data_t;

  // HAS_PLD: The CMPT packet has a corresponding payload packet; It needs to wait for the payload packet to be sent before sending the CMPT packet
  // NO_PLD_NO_WAIT: The CMPT packet doesn't have a corresponding payload packet; It doesn't need to wait
  // NO_PLD_BUT_WAIT: The CMPT packet doesn't have a corresponding payload packet; But it still needs to wait for the payload packet to be sent before sending the cmpt packet
  typedef enum logic [1:0]    {
    NO_PLD_NO_WAIT=0, NO_PLD_BUT_WAIT=1, RSVD=2, HAS_PLD=3
  } mdma_c2h_cmpt_type_e;

  typedef struct packed {
    logic eop;
    c2h_virt_ch_t pld_virt_ch; // If it has the paired payload, it is the virtual channel of the payload. 1'b0: PCIE, 1'b1: AXIMM
    mdma_cqid_t   cqid; // Completion queue ID
    mdma_c2h_cmpt_type_e cmpt_type; // Type of completion packet (HAS_PLD, NO_PLD_NO_WAIT etc.)
    mdma_pld_pkt_id_t wait_pld_pkt_id; // The data payload packet ID that it waits for
  } mdma_c2h_wrb_user_t;

  // On pciea_int
  typedef struct packed {
    logic non_blocking;     // 1'b1: CMPT non-blocking by payload, 1'b0: CMPT blocking by payload
    logic no_wrb_marker;
    c2h_virt_ch_t pld_virt_ch;      // If it has the paired payload, it is the virtual channel of the payload. 1'b0: PCIE, 1'b1: AXIMM
    mdma_qid_outside_t   cqid;             // Completion queue ID
    mdma_c2h_cmpt_type_e cmpt_type;        // Type of completion packet
    mdma_pld_pkt_id_t    wait_pld_pkt_id;  // The data payload packet ID that it waits for
    logic [2:0] port_id;
    logic marker;
    logic user_trig;
    logic [2:0] color_idx;
    logic [2:0] desc_err_idx;
    mdma_c2h_wrb_type_e  wrb_type;
  } mdma_c2h_wrb_user_outside_t;

  typedef struct packed {
    mdma_dma_wrb_data_fab_t wrb_data;
    logic [MDMA_C2H_WRB_PAR_FAB_BITS-1:0] dpar; //Data parity
  } mdma_c2h_wrb_data_fab_t;

  localparam  MDMA_C2H_WRB_BITS = $bits(mdma_c2h_wrb_data_t);
  localparam  MDMA_C2H_WRB_TL_BITS = $bits(mdma_c2h_wrb_data_fab_t);

  typedef struct packed {
    logic vio_wm;
    logic non_block;
    logic vio_axi;
    logic vio_pcie;
    logic non_vio_axi;
    logic non_vio_pcie;
  } mdma_wrb_fifo_in_req_t;

  typedef struct packed {
    logic enable;      // Enable the CMPT data replacement by available ring index
    mdma_qidx_t index; // VirtIO available ring index
  } mdma_c2h_avl_idx_t;

  typedef enum logic [2:0] {
    PCIE_ERR=0, CHAIN_ERR=1, FLAG_WRITE_ERR=2, FLAG_INDIRECT_ERR=3, RSVD1=4, RSVD2=5, RSVD3=6, RSVD4=7
  } mdma_c2h_desc_err_type_e;

  // CDX
  typedef enum logic {
    QDM_MODE=0,
    CDM_MODE=1
  } cdx_cdm_if_mode_e;

  typedef logic[$clog2(MDMA_C2H_MAX_STBUF+1):0] mdma_c2h_alloc_max_desc_t;   //Maximum descriptors prefetch

  typedef struct packed {
    mdma_c2h_alloc_max_desc_t cnt;
    mdma_qid_t qid;
  } mdma_c2h_evt_cmp_t;

  typedef struct packed {
    mdma_c2h_cache_tag_t tag;
    mdma_qid_t qid;
  } mdma_c2h_evt_t;

  typedef struct packed {
    mdma_c2h_desc_err_type_e  err_type;        // Type of error
    logic [2:0]port_id;
    logic host_target_id;  // 1'b0: PCIE, 1'b1: AXIMM
    logic error;
    logic valid;           // This is asserted per descriptor, or per packet for the case of imm_data or marker
    logic last;
    logic drop;
    mdma_qid_t qid;
    logic cmp;             // This descriptor has completion
  } mdma_desc_rsp_drop_t;

  typedef struct packed {
    logic [MDMA_VIRT_CH:0]     cmpt_fifo_rd_out;
    logic [MDMA_VIRT_CH-1:0]   qid_fifo_rd_out;
    logic [MDMA_VIRT_CH-1:0]   payload_fifo_rd_out;
    logic [MDMA_VIRT_CH-1:0]   pld_order;
    logic [MDMA_VIRT_CH-1:0]   smpl_byp_rd_out;
  } mdma_c2h_st_mhost_feedback_t;

  typedef struct packed {
   logic [15:0] rsvd;
   logic [15:0] pld_pkt_id;
  } mdma_stat_pld_pkt_id_t;

  typedef struct packed {
    logic [31-1-8-16-2:0] rsvd;
    logic [1:0]  cmpt_type;
    logic [15:0] wait_pld_pkt_id;
    logic [3:0]  vc;
    logic [3:0]  client_id;
    logic        ctl_vfifo_out_vld;
  } mdma_stat_cmpt_vfifo_t;

  typedef struct packed {
    logic [2:0] port_id;
    logic virt_ch;  // 1'b0: PCIE, 1'b1: AXIMM
    logic cmp;      // completion
  } mdma_c2h_pcie_cmp_t;

  typedef struct packed {
    logic valid;
    logic [4:0] source;
  } dma_err_out_t;

  typedef struct packed {
    logic dsc_vfifo_ram_sbe;    //31
    logic rd_hdr_vfifo_ram_sbe; //30
    logic wr_hdr_vfifo_ram_sbe; //29
    logic wr_pld_vfifo_ram_sbe; //28
    logic wbk_vfifo_ram_sbe;    //27
    logic [26:1] rsv;
    logic rcp_data_sts_err;     //0
  } cdx_cdm_m2m_nfat_evt_t;

  typedef struct packed {
    logic dsc_vfifo_ram_dbe;      //31
    logic rd_hdr_vfifo_ram_dbe;   //30
    logic wr_hdr_vfifo_ram_dbe;   //29
    logic wr_pld_vfifo_ram_dbe;   //28
    logic wbk_vfifo_ram_dbe;      //27
    logic [26:1] rsv;
    logic rcp_data_par_err;       //0
  } cdx_cdm_m2m_fat_evt_t;

  typedef struct packed {
    logic dsc_ctxt_ram_sbe;   //31
    logic crd_vfifo_ram_sbe;  //30
    logic cmpl_vfifo_ram_sbe; //29
    logic [28:7] rsv;
    logic dma_err;            //6
    logic dsc_pidx_upd_err;   //5
    logic dsc_pidx_ovf_err;   //4
    logic dsc_rcv_crd_err;    //3
    logic dsc_fen_crd_err;    //2
    logic unsup_virtio_adr;   //1
    logic rcp_err;            //0
  } cdx_cdm_msgld_nfat_evt_t;

  typedef struct packed {
    logic dsc_ctxt_ram_dbe;   //31
    logic crd_vfifo_ram_dbe;  //30
    logic cmpl_vfifo_ram_dbe; //29
    logic rcp_sched_dscf_len_prog_err; //28
    logic rcp_par_err;       //27
    logic [26:0]    rsv;
  } cdx_cdm_msgld_fat_evt_t;

  typedef struct packed {
    logic wr_req_fifo_ram_sbe;
    logic wr_hdr_fifo_ram_sbe;
    logic wr_pld_fifo0_ram_sbe;
    logic wr_pld_fifo1_ram_sbe;
    logic rd_req_fifo_ram_sbe;
    logic rob_data0_ram_sbe;
    logic rob_data1_ram_sbe;
    logic rob_enq_hptr_ram_sbe;
    logic rob_enq_nptr_ram_sbe;
    logic rob_stat_nptr_ram_sbe;
    logic rob_deq_nptr_ram_sbe;
    logic rob_mdata_vfifo_ram_sbe;
    logic rob_mdata_nptr_ram_sbe;
    logic rob_binfo_vfifo_ram_sbe;
    logic rob_binfo_nptr_ram_sbe;
    logic [10:0] rsv;
    logic wrq_csi_fifo_multmatch;
    logic wrq_csi_fifo_nomatch;
    logic rrq_csi_fifo_multmatch;
    logic rrq_csi_fifo_nomatch;
    logic rcp_deq_empty_vch; // Dequeue received for empty rc_id
    logic rcp_enq_dat_err;   // Any error from CSI read completion
  } cdx_cdm_rfab_nfat_evt_t;

  typedef struct packed {
    logic wr_req_fifo_ram_dbe;
    logic wr_hdr_fifo_ram_dbe;
    logic wr_pld_fifo0_ram_dbe;
    logic wr_pld_fifo1_ram_dbe;
    logic rd_req_fifo_ram_dbe;
    logic rob_data0_ram_dbe;
    logic rob_data1_ram_dbe;
    logic rob_enq_hptr_ram_dbe;
    logic rob_enq_nptr_ram_dbe;
    logic rob_stat_nptr_ram_dbe;
    logic rob_deq_nptr_ram_dbe;
    logic rob_mdata_vfifo_ram_dbe;
    logic rob_mdata_nptr_ram_dbe;
    logic rob_binfo_vfifo_ram_dbe;
    logic rob_binfo_nptr_ram_dbe;
    logic [9:0] rsv;
    logic wpl_parity_err;
    logic [2:0] rcp_deq_rcid_err; // Invalid rc_id used for rcp deq_req
    logic [2:0] buf_req_rcid_err; // Invalid rc_id used for rrq buf_req
  } cdx_cdm_rfab_fat_evt_t;

  typedef struct packed {
    logic [7:0]  csi_sink_buf_ram_sbe;
    logic [23:2] rsv;
    logic csi_cmpl_poison_err;
    logic csi_cmpl_status_err;
  } cdx_cdm_csi_nfat_evt_t;

  typedef struct packed {
    logic [7:0]  csi_sink_buf_ram_dbe;
    logic [23:2] rsv;
    logic csi_cmpl_upstream_crc;
    logic csi_cmpl_local_crc;
  } cdx_cdm_csi_fat_evt_t;

  typedef struct packed {
    logic req_sw_crdt;    // Request sw_crdt again
    logic virtio;
    mdma_desc_cnt_t cnt;
    mdma_c2h_cache_tag_t  tag;
    mdma_qid_t qid;
  } mdma_deq_cnt_fifo_t;

  typedef struct packed {
    mdma_qid_t qid;
  } mdma_ctxt_mgr_evt_fifo_t;

  typedef struct packed {
    logic dsc_len_mismatch; // This checks if the total descriptor length matches the data packet length
    logic len_mismatch;     // This checks if the total packet size matches Len field on data interface
    logic mty_mismatch;     // This checks if the mty input is zero in the non-last packet
  } mdma_s_axis_c2h_err_t;

  typedef struct packed {
    logic [(32-22)-1:0] rsvd;
    logic st2m_wr_hdr_fifo_ram_rsbe;
    logic st2m_payload_fifo_ram_rsbe;
    logic pfch_skid_fifo_ram_rsbe;
    logic chain_fifo_ram_rsbe;
    logic c2h_drop_ram_rsbe;
    logic chain_ll_ram_rsbe;
    logic avl_ring_fifo_ram_rsbe;
    logic payload_fifo_ram_rsbe;
    logic qid_fifo_ram_rsbe;
    logic c2h_wcp_fifo_ram_rsbe;
    logic desc_req_fifo_ram_rsbe;
    logic pfch_ctxt_ram_rsbe;
    logic pfch_ll_ram_rsbe;
    logic c2h_wr_hdr_fifo_ram_rsbe;
    logic c2h_pld_st_fifo_ram_rsbe;
    logic pfch_ctxt_mgr_err;       // Prefetch CTXT MGR used incorrect free-list entry
    logic wrb_ctxt_mgr_err;        // Writeback CTXT MGR used incorrect free-list entry
    logic avl_ring_dsc_err;        // Indicates the avl-ring entry received with error flag
    logic client_id_ctxt_mismatch; // Client ID mismatch between descriptor request and Pfch context
    logic err_desc_cnt;
    logic desc_rsp_error;          // The desc_rsp from the Prefetch module has error bit set
    logic mty_mismatch;            // This checks if the mty input is zero in the non-last packet on C2H ST data
  } mdma_c2h_err_t;

  typedef struct packed {
    logic [32-6-1:0] rsvd;
    logic par_err;
    logic sbe;
    logic dbe;
    logic no_dma_dsc_err;
    logic wbi_mod_err;
    logic zero_len_dsc_err;
  } mdma_h2c_err_t;

  typedef struct packed {
    logic [31-18:0] Rsvd;
    logic st2m_wr_hdr_fifo_ram_rdbe;
    logic st2m_payload_fifo_ram_rdbe;
    logic pfch_skid_fifo_ram_rdbe;
    logic chain_fifo_ram_rdbe;
    logic c2h_drop_ram_rdbe;
    logic chain_ll_ram_rdbe;
    logic avl_ring_fifo_ram_rdbe;
    logic payload_fifo_ram_rdbe;
    logic qid_fifo_ram_rdbe;
    logic c2h_wcp_fifo_ram_rdbe;
    logic desc_req_fifo_ram_rdbe;
    logic pfch_ctxt_ram_rdbe;
    logic pfch_ll_ram_rdbe;
    logic c2h_wr_hdr_fifo_ram_rdbe;
    logic c2h_pld_st_fifo_ram_rdbe;
    logic mdma_c2h_crc_err;            // CRC error of the C2H ST data
    logic dsc_len_mismatch;            // This checks if the descriptor length matches packet length
    logic pkt_len_mismatch;            // This checks if the total packet size matches Len field on data interface
  } mdma_c2h_fatal_err_t;

  typedef struct packed {
    logic [32-16-5-1:0] rsvd;
    logic [4:0] err_type;
    logic [15-$bits(mdma_qid_max_t):0] rsvd1;
    mdma_qid_max_t qid;
  } mdma_c2h_first_err_t;

  typedef struct packed {
    logic [32-16-4-1:0] rsvd;
    logic [3:0] err_type;
    logic [15-$bits(mdma_qid_max_t):0]  rsvd1;
    mdma_qid_max_t qid;
  } mdma_h2c_first_err_t;

  typedef enum logic [1:0] {
    INV=0, PFCH_ONLY=1, FETCH=2, PFCH=3
  } mdma_cache_state_t;

  typedef enum logic [2:0] {
    DBG_PFCH_KEY_CAM=0, DBG_PFCH_TAG_ST=1, DBG_PFCH_TAG_USED_CNT=2, DBG_PFCH_TAG_DESC_CNT=3, DBG_PFCH_ERR_CTXT=4
  } mdma_c2h_dbg_pfch_target_e;

  typedef struct packed {
    logic [31-$bits(mdma_c2h_dbg_pfch_target_e)-$bits(mdma_qid_t)-1:0]  rsv;
    logic err_ctxt;
    mdma_c2h_dbg_pfch_target_e target;
    mdma_qid_t qid;
  } mdma_c2h_dbg_pfch_t;

  typedef struct packed {
    logic cm_del;
    logic ctx;
    logic wrb;
    logic dyn;
    logic tmr;
  } cmpt_rra_t;

  typedef enum logic {
    RD_INIT=0, RVLD_AND_DEC
  } wrb_rd_sm_e;

  typedef enum logic [2:0] {
    VIO_NONE = 0,
    VIO_FLG  = 1,
    VIO_IDX  = 2,
    VIO_FLG_IDX = 3,
    VIO_4K_SPL0 = 4,
    VIO_4K_SPL1 = 5
  } mdma_wrb_coal_vio_ctl_e;

  typedef logic [3:0] mdma_wrb_timer_th_ix_t;
  typedef logic [3:0] mdma_wrb_cnt_th_ix_t;

  typedef enum logic [1:0] {
    INT_MOD_TMR_RET = 0,
    INT_MOD_TMR_RNNG = 1,
    INT_MOD_IGN_TMR_EXP = 2,
    INT_MOD_RSV_ST_0 = 3
  } mdma_c2h_wrb_int_state_e;

  typedef enum logic [2:0] {
    IDLE_WT_CMPT = 0,
    PRI_TMR_PEND = 1,
    WT_EOP       = 2,
    WT_EOP_INT_RTY  = 3,
    WT_EOP_NOT_RTY  = 4,
    INT_RTY = 5,
    NOT_RTY = 6
  } mdma_cmpt_vio_int_st_e;

  typedef enum logic [2:0]    {
    WRB_TRIG_DIS=0, WRB_TRIG_EVERY, WRB_TRIG_USER_COUNT, WRB_TRIG_USER, WRB_TRIG_USER_TIMER, WRB_TRIG_USER_TIMER_COUNT
  } mdma_c2h_wrb_trig_mode_e;

  typedef enum logic [1:0] {
    WRB_ERR_NONE=0, WRB_ERR_CIDX, WRB_ERR_DSC, WRB_ERR_QFULL
  } mdma_wrb_err_e;

  typedef union packed {
    mdma_wrb_err_e c2h_err;
    logic [1:0] h2c_err;
  } mdma_wrb_stat_err_t;

  //Dont let this grow more than 8B
  typedef struct packed {
  //logic ctxt_vld;
    mdma_wrb_stat_err_t err;
    mdma_c2h_wrb_int_state_e int_st;
    logic color;
    mdma_qidx_t cidx;
    mdma_qidx_t pidx;
  } mdma_wrb_stat_desc_t;

  // 8B only
  typedef struct packed {
    logic [15:0] rsvd1;
    mdma_qidx_t  pidx;
    mdma_qidx_t  cidx;
    logic [15:2] rsvd0;
    logic [1:0]  err;
  } mdma_h2c_wb_desc_t;

  typedef struct packed {
    logic [$bits(mdma_int_tdata_t)/8 - 1 :0]  par;
    mdma_int_tdata_t dat;
  } mdma_wpl_t;

  // Chain LL
  localparam  CHAIN_NUM = 64;

  // FIFO parameters
  localparam MDMA_FIFO_BRAM_READ_LAT = 2;
  localparam MDMA_FIFO_BRAM_BUF_WR   = 1;
  localparam MDMA_FIFO_BRAM_BUF_RD   = 1;

  // C2H Drop Count RAM
  localparam C2H_DROP_RAM_DATA_BITS = 36;

  // C2H ST Payload FIFO
  localparam C2H_PAYLOAD_FIFO_DEPTH = 2048;
  localparam C2H_PAYLOAD_FIFO_ADDR_BITS = $clog2(C2H_PAYLOAD_FIFO_DEPTH);
  localparam C2H_PAYLOAD_FIFO_DATA_BITS = 512;
  localparam C2H_PAYLOAD_FIFO_PAR_BITS  = C2H_PAYLOAD_FIFO_DATA_BITS/8;

  // C2H ST Qid FIFO
  localparam C2H_QID_FIFO_DEPTH = C2H_PAYLOAD_FIFO_DEPTH;
  localparam C2H_QID_FIFO_ADDR_BITS = $clog2(C2H_QID_FIFO_DEPTH);
  localparam C2H_QID_FIFO_DATA_BITS = 56;

  // C2H Pfch LL
  localparam C2H_PFCH_LL_DEPTH = 2*C2H_PAYLOAD_FIFO_DEPTH;
  localparam C2H_PFCH_LL_ADDR_BITS = $clog2(C2H_PFCH_LL_DEPTH);
  localparam C2H_PFCH_LL_DATA_BITS = 216;

  // C2H ST Desc Req FIFO
  localparam C2H_DESC_REQ_FIFO_DEPTH = C2H_PAYLOAD_FIFO_DEPTH;
  localparam C2H_DESC_REQ_FIFO_ADDR_BITS = $clog2(C2H_DESC_REQ_FIFO_DEPTH);
  localparam C2H_DESC_REQ_FIFO_DATA_BITS = 80;
  localparam C2H_DESC_REQ_FIFO_RDT_FFOUT = 1;

  // C2H ST DROP
  localparam C2H_DROP_DEPTH = 4096;
  localparam C2H_DROP_ADDR_BITS = $clog2(C2H_DROP_DEPTH);
  localparam C2H_DROP_DATA_BITS = 36;

  // C2H ST Chain FIFO
  localparam C2H_CHAIN_FIFO_DEPTH = CHAIN_NUM;
  localparam C2H_CHAIN_FIFO_ADDR_BITS = $clog2(C2H_CHAIN_FIFO_DEPTH);
  localparam C2H_CHAIN_FIFO_DATA_BITS = 240;

  // C2H ST Deq SKID FIFO
  localparam C2H_DEQ_SKID_FIFO_DEPTH = 256;
  localparam C2H_DEQ_SKID_FIFO_ADDR_BITS = $clog2(C2H_DEQ_SKID_FIFO_DEPTH);
  localparam C2H_DEQ_SKID_FIFO_DATA_BITS = 218;

  // C2H ST Wcp FIFO
  localparam C2H_WCP_FIFO_DEPTH = 256;
  localparam C2H_WCP_FIFO_ADDR_BITS = $clog2(C2H_WCP_FIFO_DEPTH);
  localparam C2H_WCP_FIFO_DATA_BITS = 20;
  localparam C2H_WCP_FIFO_CNT_BITS  = $clog2(C2H_WCP_FIFO_DEPTH+1);

  // C2H ST Wr Hdr FIFO
  localparam C2H_WR_HDR_FIFO_DEPTH = 128;
  localparam C2H_WR_HDR_FIFO_ADDR_BITS = $clog2(C2H_WR_HDR_FIFO_DEPTH);
  localparam C2H_WR_HDR_FIFO_DATA_BITS = 171;
  localparam C2H_WR_HDR_FIFO_CNT_BITS  = $clog2(C2H_WR_HDR_FIFO_DEPTH+1);

  // C2H ST PLD Status FIFO
  localparam C2H_PLD_ST_FIFO_DEPTH = C2H_PAYLOAD_FIFO_DEPTH;
  localparam C2H_PLD_ST_FIFO_ADDR_BITS = $clog2(C2H_PLD_ST_FIFO_DEPTH);
  localparam C2H_PLD_ST_FIFO_DATA_BITS = 2;
  localparam C2H_PLD_ST_FIFO_CNT_BITS  = $clog2(C2H_PLD_ST_FIFO_DEPTH+1);

  // C2H ST Payload FIFO NPTR
  localparam C2H_PAYLOAD_FIFO_NPTR_DEPTH = C2H_PAYLOAD_FIFO_DEPTH/2;
  localparam C2H_PAYLOAD_FIFO_NPTR_ADDR_BITS = $clog2(C2H_PAYLOAD_FIFO_NPTR_DEPTH);
  localparam C2H_PAYLOAD_FIFO_NPTR_DATA_BITS = C2H_PAYLOAD_FIFO_NPTR_ADDR_BITS;

  // C2H ST Qid FIFO NPTR
  localparam C2H_QID_FIFO_NPTR_DEPTH = C2H_QID_FIFO_DEPTH/2;
  localparam C2H_QID_FIFO_NPTR_ADDR_BITS = $clog2(C2H_QID_FIFO_NPTR_DEPTH);
  localparam C2H_QID_FIFO_NPTR_DATA_BITS = C2H_QID_FIFO_NPTR_ADDR_BITS;

  // C2H ST Desc Req FIFO NPTR
  localparam C2H_DESC_REQ_FIFO_NPTR_DEPTH = C2H_DESC_REQ_FIFO_DEPTH/2;
  localparam C2H_DESC_REQ_FIFO_NPTR_ADDR_BITS = $clog2(C2H_DESC_REQ_FIFO_NPTR_DEPTH);
  localparam C2H_DESC_REQ_FIFO_NPTR_DATA_BITS = C2H_QID_FIFO_NPTR_ADDR_BITS;

  // C2H ST PLD ST FIFO NPTR
  localparam C2H_PLD_ST_FIFO_NPTR_DEPTH = C2H_PLD_ST_FIFO_DEPTH/2;
  localparam C2H_PLD_ST_FIFO_NPTR_ADDR_BITS = $clog2(C2H_PLD_ST_FIFO_NPTR_DEPTH);
  localparam C2H_PLD_ST_FIFO_NPTR_DATA_BITS = C2H_QID_FIFO_NPTR_ADDR_BITS;

  // C2H ST Pfch LL NPTR
  localparam C2H_PFCH_LL_NPTR_DEPTH = 4096;
  localparam C2H_PFCH_LL_NPTR_ADDR_BITS = $clog2(C2H_PFCH_LL_NPTR_DEPTH);
  localparam C2H_PFCH_LL_NPTR_DATA_BITS = C2H_PFCH_LL_NPTR_ADDR_BITS;

  // C2H ST Pfch Ctxt MGR DPORT
  localparam C2H_PFCH_CTXT_MGR_DPORT_DEPTH = 128;
  localparam C2H_PFCH_CTXT_MGR_DPORT_ADDR_BITS = $clog2(C2H_PFCH_CTXT_MGR_DPORT_DEPTH);
  localparam C2H_PFCH_CTXT_MGR_DPORT_DATA_BITS = 80;

  // Prefetch parameters
  localparam EVT_INIT_CRDT = 1;
  localparam CTXT_INIT_CRDT = 1;
  localparam TM_STS_INIT_CRDT = 2;
  localparam DEQ_CNT_INIT_CRDT = 4;
  localparam DESC_REQ_INIT_CRDT = 8;

  // DMA Write Engine parameters
  localparam WR_ENG_FIFO_DEPTH = 2048;
  localparam WR_ENG_PAYLOAD_FIFO_DEPTH = WR_ENG_FIFO_DEPTH;
  localparam WR_ENG_QID_FIFO_DEPTH = WR_ENG_FIFO_DEPTH;
  localparam WR_ENG_FIFO_ADDR_BITS = $clog2(WR_ENG_FIFO_DEPTH);
  localparam WR_ENG_PAYLOAD_FIFO_BITS = $bits(mdma_wpl_t);
  localparam WR_ENG_PAYLOAD_FIFO_DATA_BYTE = $bits(mdma_int_tdata_t)/8;
  localparam WR_ENG_PAYLOAD_FIFO_BYTE_CNT_BITS = $clog2(WR_ENG_PAYLOAD_FIFO_DEPTH*WR_ENG_PAYLOAD_FIFO_DATA_BYTE+1);
  localparam WR_ENG_PAYLOAD_FIFO_MTY_BITS = $clog2(WR_ENG_PAYLOAD_FIFO_DATA_BYTE+1);

  localparam TICK_CNT_BITS = 12;

  typedef struct packed {
    mdma_host_id_t host_id;
    logic dis_intr_on_vf;  // 1'b1: disable interrupt with VF; 1'b0: allow interrupt with VF
    logic int_aggr; // 1'b1: indirect interrupt; 1'b0: direct interrupt
    mdma_int_vec_id_t vec;
    logic sel;      // 0: H2C; 1: C2H
    logic err_int;  // Error generated interrupt
    mdma_fnid_t fnc;
    mdma_qidx_t qid;
    mdma_wrb_stat_desc_t stat_desc;
  } mdma_c2h_wrb2int_t; // FIXME: All engines must eliminate the use of this struct and move to cdx_mdma_eng2int_t instead

  typedef struct packed {
    mdma_dir_e dir;
    logic      vio;
    mdma_cqid_t qid;
    mdma_wrb_timer_th_ix_t  timer_ix;
  } mdma_c2h_wrb2timer_t;

  typedef struct packed {
    mdma_dir_e dir;
    logic vio;
    mdma_cqid_t qid;
  } mdma_c2h_timer2wrb_t;

  typedef struct packed {
    logic [16:0] intc_cidx_upd_off;
    logic [16:0] cmpt_cidx_upd_off;
    logic [16:0] dsc_pidx_upd_off;
    logic [19:0] qspc_start_off; // bits [31:12] of starting address offset in queue space. Note that bits [31:26] are ignored in current implementation
    logic  [3:0] fnc_strides;    // Number of strides per function as power of 2, max value is 13 for 8k strides per func
    logic  [3:0] stride_sz;      // Size of stride in bytes = 1 << (stride_sz+4), valud values for stride_sz are 0 to 13 to allow for 16B-128KB
    logic [12:0] tot_fnc;        // Total number of functions in address region
    logic [11:0] start_fnc;      // Starting function number offset
  } fmap_cfg_ctxt_t;  // Only contains values written by indirect bus

  typedef struct packed {
    logic [13:0] qid_cnt1;
    logic [12:0] qid_base1;
    logic [13:0] qid_cnt0;   // enable num_qid up to 8k
    logic [12:0] qid_base0;  // enable 8k base qid
  } mdma_func_map_t;

  typedef enum logic [0:0]    {
    WAIT_TRIGGER=0, ISR_RUNNING=1
  } mdma_int_state_e;

  // Interrupt wpl pkt to the WPL FIFO
  typedef struct packed {
    logic coal_color;
    mdma_qid_outside_t qid;
    logic int_type;   // 0: H2C; 1: C2H
    logic err_int;    // Error generated interrupt
    mdma_wrb_stat_desc_t    stat_desc;
  } mdma_int_wpl_pkt_t;

  // Interrupt wpl pkt to PCIE
  typedef struct packed {
    logic [$bits(mdma_int_tdata_t)-64-1:0] rsvd1;
    logic coal_color;
    mdma_qid_outside_t qid;
    logic int_type; // 0: H2C; 1: C2H
    logic err_int;  // Error generated interrupt
    mdma_wrb_stat_desc_t stat_desc;
  } mdma_int_wpl_t;

  // Fetch Engine and C2H prefetch interface
  typedef logic [$bits(mdma_max_dsc_t) - 1 - $bits(mdma_qid_t) - $bits(mdma_qidx_t) -1:0] mdma_c2h_dsc_usr_t;
  typedef mdma_c2h_wrb_type_e mdma_dsc_size_e;

  typedef enum logic [2:0] {
    MDMA_CRD_ADD =3'h0, MDMA_CRD_SUB = 3'h1, MDMA_IDX_SUB=3'h2, MDMA_FETCH_IMM= 3'h3 , MDMA_FETCH_IMM_INT=3'd4
  } mdma_dsc_eng_crdt_op_e;

  typedef struct packed {
    logic [2:0] rsvd;
    logic desc_chain;
    logic virtio;
    mdma_c2h_cache_tag_t pfch_tag;
    logic var_desc;
    logic c2h_pfch;
  } mdma_c2h_misc_t;

  typedef struct packed {
    mdma_c2h_misc_t misc;
    logic [1:0] bsel; // Base address select for FETCH_IMM mode. 2'h0: Ctxt base_address/Virtio Desc Base; 2'h1: Virtio Avail Base
    logic fence; // Block further credits updates until fetch is completed for this update
    mdma_dsc_eng_crdt_op_e op;
    logic sel; //0 H2C, 1 C2H
  } mdma_dsc_eng_crdt_info_t;

  typedef struct packed {
    mdma_c2h_misc_t misc;
    mdma_qidx_t idx;       // Index from the base to start fetch for FETCH_IMM mode
    logic fence;     // Block further credits updates until fetch is completed for this update
    mdma_dsc_eng_crdt_op_e op;
    mdma_cqid_t qid;
    mdma_qidx_t crdt;
  } mdma_dsc_eng_crdt_t;

  typedef struct packed {
    mdma_qid_t qid;
    logic var_desc;
    mdma_c2h_buf_size_ix_t buf_sz_ix; // Buffer size index
    mdma_c2h_cache_tag_t pfch_tag;
    mdma_qidx_t cnt;
  } mdma_pfch_tag_ram_data_t;

  localparam PFCH_TAG_RAM_DEPTH = 1024;
  localparam PFCH_TAG_RAM_DATA_BITS = $bits(mdma_pfch_tag_ram_data_t);
  localparam PFCH_TAG_RAM_CNT_BITS  = $clog2(PFCH_TAG_RAM_DEPTH+1);

  typedef struct packed {
    mdma_c2h_misc_t misc;
    mdma_qidx_t idx;       // Index from the base to start fetch for FETCH_IMM mode
    mdma_cqid_t qid;
    mdma_qidx_t crdt;
  } mdma_dsc_eng_imm_crdt_t;

  typedef struct packed {
    mdma_c2h_dsc_usr_t usr;
    mdma_dma_buf_len_t len; //Only for XDMA mode
    mdma_dma_buf_addr_t src_addr; //AXI address (XDMA Mode only
    mdma_dma_buf_addr_t dst_addr; //PCIe address
  } mdma_c2h_dsc_t;

  typedef struct packed {
    mdma_c2h_dsc_t dsc;
    mdma_qid_t qid;
    mdma_dsc_size_e size;
  } mdma_c2h_dsc_if_t;

  typedef logic [7:0] mdma_c2h_dsc_cache_ptr_t;

  typedef struct packed {
    logic valid;
    mdma_qidx_t sw_crdt;
    logic pfch;
    logic pfch_en;
    logic err;
    logic [16-$bits(mdma_c2h_alloc_max_desc_t)-$bits(mdma_c2h_alloc_max_desc_t)-1:0]  rsv2;
    mdma_c2h_alloc_max_desc_t pfch_need;
    mdma_c2h_alloc_max_desc_t num_pfch;
    logic virtio;
    logic var_desc;
    logic [3:0] client_id;
    mdma_c2h_buf_size_ix_t buf_size_ix;
  } mdma_wrb_c2h_pftch_ctxt_t;

  typedef struct packed {
    logic ctxt_valid;
    mdma_qid_t qid;
    //Add cache flush here
  } mdma_c2h_pfch_ctxt2cache_t;

  typedef enum logic [0:0] {
    HPTR_INV, HPTR_VLD
  } hptr_st_e;

  typedef enum logic [2:0] {
    MDMA_PFCH_TYPE_DESC, MDMA_PFCH_TYPE_CFLUSH, MDMA_PFCH_TYPE_EFLUSH, MDMA_PFCH_TYPE_DSC_INV, MDMA_PFCH_TYPE_EFLUSH_CMP, MDMA_PFCH_TYPE_DEQ_CRDT, MDMA_PFCH_TYPE_SMPL_BYP
  } mdma_pfch_cmd_type_e;

  typedef struct packed {
    logic desc_chain;
    logic req_sw_crdt;
    mdma_qid_t qid;
    mdma_c2h_cache_tag_t tag;
    mdma_c2h_alloc_max_desc_t cnt;
    logic pfch;
    mdma_pfch_cmd_type_e typ;
  } mdma_c2h_cache_alloc_t;

  typedef enum logic [2:0] {
    ALLOC_SRCH_IDLE, ALLOC_SRCH_WAIT, ALLOC_SRCH_EVT, ALLOC_SRCH_FLUSH, ALLOC_GEN_DESC
  } alloc_srch_sm_e;

  typedef struct packed {
    logic [31-13-13-$bits(mdma_cache_state_t):0] rsvd;
    logic [12:0] tag_desc_cnt;
    logic [12:0] tag_used_cnt;
    mdma_cache_state_t tag_st;
  } mdma_c2h_pfch_cache_debug_reg_t;

  typedef struct packed {
    logic [31-$bits(alloc_srch_sm_e)-$bits(mdma_pfch_cmd_type_e)-$bits(mdma_qid_t)-7-2:0] rsvd;
    logic       alloc_st_stall;
    logic [6:0] alloc_req_tag;
    mdma_qid_t  alloc_req_qid;
    mdma_pfch_cmd_type_e alloc_req_type;
    logic       alloc_req_vld;
    alloc_srch_sm_e alloc_st;
  } mdma_c2h_pfch_cache_4_debug_reg_t;

  typedef struct packed {
    logic [31-13-8:0] rsvd;
    logic [12:0]      fl_free_cnt;
    logic [7:0]       cam_cnt;
  } mdma_c2h_pfch_cache_5_debug_reg_t;

  typedef struct packed {
    logic [31-7-$bits(mdma_qid_t)-1:0]    rsvd;
    logic       evt_vld;
    mdma_qid_t  evt_qid;
    logic [6:0] evt_tag;
  } mdma_c2h_pfch_cache_6_debug_reg_t;

  typedef enum logic [1:0] {
    DSC_RSP_IDLE, DSC_RSP_ALLOC_WAIT, DSC_RSP_LAST
  } dsc_rsp_st_e;

  typedef struct packed {
    logic [31-$bits(dsc_rsp_st_e)-17:0] rsvd;
    logic desc_req_in_vld;
    logic desc_req_in_rdy;
    logic desc_req_crdt_avail;
    logic desc_cam_th;
    logic fl_free_cnt_th;
    logic desc_req_var_desc;
    logic evt_cmp_on;
    logic evt_busy;
    logic ctxt_rq_vld;
    logic ctxt_crdt_avail;
    logic c2h_tm_sts_vld;
    logic tm_sts_crdt_avail;
    logic evt_req_vld;
    logic ctxt_busy;
    logic deq_cnt_vld;
    logic deq_cnt_crdt_avail;
    logic dsc_err_vld;
    dsc_rsp_st_e dsc_rsp_st;
  } mdma_c2h_pfch_crdt_debug_reg_t;

  typedef struct packed {
    logic deq_cnt;
    logic evt_cmp;
    logic ctxt;
    logic tm_sts;
    logic desc_req;
    logic dsc_err;
    logic evt;
  } mdma_crdt_rra_q_t;

  typedef enum logic [1:0] {
    TUSER_INIT_IDLE, TUSER_INIT_ON, TUSER_INIT_DONE
  } tuser_init_sm_type_e;

  typedef enum logic [1:0] {
    ERR_CTXT_INIT_IDLE, ERR_CTXT_INIT_ON, ERR_CTXT_INIT_DONE
  } err_ctxt_init_sm_type_e;

  typedef enum logic [3:0] {
    ENG_IDLE=0, WAIT_DESC_RSP=1, SEND_WR_REQ=2, DROP_WAIT=3, DROP=4, DROP_WAIT_WRQ=5, ERROR_WAIT=6, ERROR=7, ERROR_WAIT_WRQ=8, WAIT_MARKER_RSP=9, WRQ_NUM_BUF=10, ERROR_WAIT_PLD=11
  } dma_eng_sm_type_e;

  typedef enum logic [2:0]    {
    DROP_RAM_IDLE=0, DROP_RAM_RDATA_BACK=1, DROP_RAM_REG_RDATA_BACK=2, DROP_RAM_CLR_RDATA_BACK=3, DROP_RAM_REG_WEN=4
  } drop_ram_sm_type_e;

  typedef enum logic [1:0] {
    WPL_IDLE=0, BEAT_ONE=1, BEAT_TWO=2
  } wpl_sm_type_e;

  typedef enum logic [2:0] {
    INT_IDLE=0, WRB_SEND_MSIX=1, H2C_SEND_MSIX=2, DYN_PROCESS=3, REG_CTXT_RAM_RD=4, REG_CTXT_RAM_RD_BACK=5, REG_CTXT_RAM_WR=6, REG_CTXT_RAM_DEASSERT
  } int_sm_type_e;

  typedef enum logic [5:0] {
    INT_COAL_IDLE=0, RAM_RD=1, RAM_RDATA_BACK=2, RAM_WR=3, WR_BUF_REQ=4, WAIT_WCP=5, SEND_MSIX=6, REG_RAM_RD=7, REG_RAM_RDATA_BACK=8, DYN_RAM_RD=9, DYN_RAM_RDATA_BACK=10, DYN_RAM_WR=11, DYN_WAIT_WCP=12, DYN_SEND_MSIX=13, DYN_WAIT_WCP_LGCY=14, DYN_SEND_DEASSERT=15, SEND_ASSERT=16
  } int_coal_sm_type_e;

  typedef enum logic [0:0] {
     MARKER_SM_IDLE=0, MARKER_SM_WAIT=1
  } marker_sm_type_e;

  typedef struct packed {
    logic reg_ctxt_wr;
    logic reg_ctxt_rd;
    logic dyn;
    logic h2c;
    logic wrb;
  } mdma_c2h_int_req_t;

  localparam TIMER_BITS = 9;

  typedef struct packed {
    mdma_dir_e dir;
    logic vio;
    mdma_cqid_t qid;
    logic [TIMER_BITS-1:0] timer_inj;
  } mdma_timer_fifo_dat_t;

  localparam TIMER_FIFO_RAM_NUM   = 4;
  localparam TIMER_FIFO_TOTAL_DEPTH = 8192;
  localparam TIMER_FIFO_DEPTH     = TIMER_FIFO_TOTAL_DEPTH/TIMER_FIFO_RAM_NUM;
  localparam TIMER_FIFO_ADDR_BITS = $clog2(TIMER_FIFO_DEPTH);
  localparam TIMER_FIFO_BITS      = $bits(mdma_timer_fifo_dat_t);
  localparam TIMER_TOTAL_FIFO_CNT_BITS = $clog2(TIMER_FIFO_TOTAL_DEPTH+1);
  localparam TIMER_FIFO_CNT_BITS  = $clog2(TIMER_FIFO_DEPTH+1);

  localparam  FIFO_CNT_BITS = 11;
  localparam  WRB_FIFO_CNT_BITS = 3;
  localparam  WR_HDR_FIFO_CNT_BITS = 5;

  typedef struct packed {
    logic virt_ch;
    mdma_dma_wrb_data_t wrb_data;
    mdma_c2h_wrb_user_t wrb_user;
  } mdma_tuser_in_fifo_data_t;

  // Tuser Input FIFO
  localparam TUSER_IN_FIFO_DEPTH    = 32;
  localparam TUSER_IN_FIFO_ADDR_BITS = $clog2(TUSER_IN_FIFO_DEPTH);
  localparam TUSER_IN_FIFO_UPF      = 1;
  localparam TUSER_IN_FIFO_DNF      = 1;
  localparam TUSER_IN_FIFO_SB_BITS  = 1;
  localparam TUSER_IN_FIFO_DNF_LOG  = TUSER_IN_FIFO_DNF > 1 ? $clog2(TUSER_IN_FIFO_DNF+1) : 1;
  localparam TUSER_IN_FIFO_IN_BITS  = $bits(mdma_tuser_in_fifo_data_t);
  localparam TUSER_IN_FIFO_OUT_BITS = TUSER_IN_FIFO_IN_BITS;
  localparam TUSER_IN_FIFO_LOG_OUT_BITS = TUSER_IN_FIFO_DNF>1 ? TUSER_IN_FIFO_OUT_BITS : TUSER_IN_FIFO_IN_BITS;
  localparam TUSER_IN_FIFO_CNT_BITS = $clog2(TUSER_IN_FIFO_DEPTH+1);

  // Desc Rsp FIFO
  localparam  DESC_RSP_FIFO_CNT_BITS = 2;

  // Wcp FIFO
  localparam  WCP_FIFO_CNT_BITS = 7;

  typedef struct packed {
    logic error;
    logic drop;
  } mdma_pld_st_fifo_data_t;

  // Debug status registers
  typedef struct packed {
    logic [1:0]rsvd;
    logic c2h_virtio_cmpt_rdy;
    logic c2h_virtio_cmpt_vld;
    logic payload_fifo_out_vld;
    logic drop_count_fifo_in_rdy;
    logic desc_req_fifo_in_rdy;
    logic wcp_fifo_in_rdy;
    logic pld_st_fifo_in_rdy;
    logic wr_hdr_fifo_in_rdy;
    logic arb_fifo_in_rdy;
    logic s_axis_c2h_tvalid;
    logic s_axis_c2h_tready;
    logic payload_fifo_in_rdy;
    logic qid_fifo_in_rdy;
    logic arb_fifo_out_vld;
    mdma_qid_t arb_fifo_out_data_qid;
    dma_eng_sm_type_e main_sm_cs;
  } mdma_stat_c2h_debug_dma_eng_t;

  typedef struct packed {
    logic [31-FIFO_CNT_BITS-FIFO_CNT_BITS-3:0] rsvd;
    logic qid_fifo_out_vld;
    logic [FIFO_CNT_BITS:0] payload_fifo_out_cnt;
    logic [FIFO_CNT_BITS:0] qid_fifo_out_cnt;
  } mdma_stat_c2h_debug_dma_eng_ch_0_t;

  typedef struct packed {
    logic [31-C2H_PLD_ST_FIFO_CNT_BITS-C2H_WCP_FIFO_CNT_BITS:0] rsvd;
    logic [C2H_WCP_FIFO_CNT_BITS-1:0] wcp_fifo_out_cnt;
    logic [C2H_PLD_ST_FIFO_CNT_BITS-1:0] pld_st_fifo_cnt;
  } mdma_stat_c2h_debug_dma_eng_ch_1_t;

  typedef struct packed {
    int_coal_sm_type_e int_coal_sm_cs;
    int_sm_type_e      sm_cs;
    mdma_int_vec_id_t  vec;
  } mdma_stat_c2h_int_msix_t;

  typedef struct packed {
    int_coal_sm_type_e int_coal_sm_cs;
    int_sm_type_e sm_cs;
  } mdma_stat_c2h_debug_int_t;

  // Debug signals
  typedef struct packed {
    logic [15:0] qid_fifo_out_dat_0_qid;
    logic [15:0] qid_fifo_out_dat_0_len;
    logic [15:0] qid_fifo_out_dat_1_qid;
    logic [15:0] qid_fifo_out_dat_1_len;
    logic [15:0] qid_fifo_out_dat_2_qid;
    logic [15:0] qid_fifo_out_dat_2_len;
    logic [15:0] qid_fifo_out_dat_3_qid;
    logic [15:0] qid_fifo_out_dat_3_len;
    logic [15:0] qid_fifo_out_dat_4_qid;
    logic [15:0] qid_fifo_out_dat_4_len;
    logic [15:0] qid_fifo_out_dat_5_qid;
    logic [15:0] qid_fifo_out_dat_5_len;
    logic [15:0] qid_fifo_out_dat_6_qid;
    logic [15:0] qid_fifo_out_dat_6_len;
    logic [15:0] qid_fifo_out_dat_7_qid;
    logic [15:0] qid_fifo_out_dat_7_len;
  } mdma_c2h_debug_dma_wr_eng_2_t;

  typedef struct packed {
    logic [13:0] rsv;

    logic qid_ram_wen;
    logic [11:0] qid_ram_wdat;
    logic [6:0]  qid_ram_wadr;
    logic qid_ram_ren;
    logic [6:0]  qid_ram_radr;
    logic [11:0] qid_ram_rdat;

    logic fl_rtn_vec_vld;
    logic [11:0] fl_rtn_vec_ix;

    logic fl_free_vec_vld;
    logic fl_free_vec_rdy;
    logic [11:0] fl_free_vec_ix;

    logic ll_rra_enq_gnt;
    logic ll_rra_deq_gnt;
    logic [11:0] ll_hptr_enq;
    logic [11:0] ll_tptr_deq;

    logic [1:0] ll_hst_enq;
    logic [1:0] ll_hst_deq;

    logic ll_in_vld;
    mdma_c2h_cache_tag_t ll_in_tag;
    logic ll_in_rdy;
    logic [31:0] ll_in_data;

    logic ll_flush_vld;
    logic ll_flush_done;
    logic ll_flush_idle;
    mdma_c2h_cache_tag_t ll_flush_tag;

    logic [31:0] ll_out_rsp_data;
    logic        ll_out_rsp_vld;
    mdma_c2h_cache_tag_t ll_out_rsp_tag;
    logic        ll_out_deq_vld;
    logic ll_out_deq_rdy;
    mdma_c2h_cache_tag_t ll_out_deq_tag;
    logic       enq_vld;
    logic [6:0] enq_tag;
    logic       enq_rdy;
    logic       deq_vld;
    logic       deq_rdy;
    logic [6:0] deq_tag;
    logic [0:0] deq_rsp_st;
    logic [15:0]deq_len_sum;
    logic       deq_byp;
    logic [4:0] deq_pkt_cnt;
    logic       deq_arb_rq;
    logic [2:0] pipe_vld;
  } mdma_c2h_pfch_ll_debug_t;

  typedef struct packed {
    logic [93:0] tm_sts_in;
    logic tm_sts_in_rdy;
    logic ctxt_rq_vld;
    logic ctxt_crdt_avail;
    logic c2h_tm_sts_vld;
    logic tm_sts_crdt_avail;
    logic desc_req_vld;
    logic desc_req_crdt_avail;
    logic desc_cam_th;
    logic fl_free_cnt_th;
    logic evt_req_vld;
    logic evt_crdt_avail;
    logic evt_cmp_fifo_out_vld;
    logic ctxt_busy;
    logic deq_cnt_vld;
    logic deq_cnt_crdt_avail;
    logic dsc_err_vld;
    logic [6:0] in_rra_rq;
    logic [6:0] in_rra_gnt;
    logic hint_vld;
    logic hint_del;
    logic [10:0] hint_qid;
    logic desc_sts_vld;
    logic desc_sts_rdy;
    logic [6:0] mgr_ctxt_rd_ix;
    logic [9:0] desc_qid;
    logic [1:0] wr_st;
    logic [1:0] rd_st;
    logic [1:0] dsc_rsp_st;
    logic [4:0] evt_credit;
    logic [4:0] ctxt_credit;
    logic [4:0] tm_sts_credit;
    logic [4:0] desc_req_credit;
    logic [4:0] deq_cnt_credit;
    logic [4:0] desc_fifo_cnt;
    logic [4:0] desc_cnt_fifo_cnt;
    logic sm_desc_cnt_vld;
    logic sm_desc_cnt_rdy;
    logic [5:0] sm_desc_cnt;
    logic sm_desc_drop;
    logic sm_pfch;
    logic sm_desc_vld;
    logic sm_desc_rdy;
    logic [10:0]sm_desc_req_qid;
    logic [15:0]sm_desc_req_len;
    logic sm_desc_req_byp;
    logic [2:0] sm_desc_req_typ;
    logic desc_req_cache_fifo_vld;
    logic desc_req_cache_fifo_rdy;
    logic desc_req_cache_fifo_byp;
    logic [2:0] desc_req_cache_fifo_typ;
    logic desc_cnt_vld;
    logic desc_cnt_rdy;
    logic [5:0] desc_cnt;
    logic desc_drop;
    logic alloc_pfch;
   } mdma_c2h_pfch_crdt_debug_t;

  typedef struct packed {
    logic [127:0] vec_ary1;
    logic [127:0] vec_ary0;
   } mdma_c2h_pfch_fl_vec_1_debug_t;

  typedef struct packed {
    logic [127:0] vec_ary3;
    logic [127:0] vec_ary2;
   } mdma_c2h_pfch_fl_vec_2_debug_t;

  typedef struct packed {
    logic [12:0] rsvd;
    logic chain_detect;
    logic [5:0]  chain_cnt;
    logic chain_ll_deq_req_vld;
    logic chain_ll_deq_req_rdy;
    logic [5:0]  chain_ll_deq_req_tag;
    logic [11:0] chain_ll_deq_req_qid;
    logic chain_ll_deq_rsp_vld;
    logic chain_ll_deq_rsp_rdy;
    logic [2:0]  chain_ll_deq_crdt_chnl;
    logic [1:0]  main_chain_sm_cs;
    logic [1:0]  walk_chain_sm_cs;
    logic chain_fifo_in_vld;
    logic chain_fifo_in_rdy;
    logic chain_fifo_out_vld;
    logic chain_fifo_out_rdy;
    logic [6:0]  chain_fifo_crdt_avl;
    logic [7:0]  skid_fifo_crdt_nz;
    logic [0:0]  chain_out_sm_cs;
    logic chain_crdt_vld;
    logic chain_crdt_rdy;
    logic [11:0] chain_crdt_qid;
    logic [3:0]  chain_crdt_crdt;
    logic evt_rq;
    logic evt_vld;
    logic [6:0]  evt_tag;
    logic [11:0] evt_qid;
    logic evt_rdy;
    logic deq_cnt_fifo_in_vld;
    logic deq_cnt_fifo_in_rdy;
    logic deq_cnt_fifo_out_vld;
    logic deq_cnt_fifo_out_rdy;
    logic [2:0]  alloc_st;
    logic alloc_rsp_vld;
    logic [6:0]  alloc_rsp;
    logic [29:0] alloc_req;
    logic alloc_req_vld;
    logic alloc_req_rdy;
    logic byp_in_desc_vld;
    logic byp_in_desc_rdy;
    logic [60:0] byp_in_desc_u;
    logic [3:0]  byp_in_desc_client_id;
    logic [3:0]  byp_in_desc_csi_dst;
    logic alloc_srch_vld;
    logic [11:0] alloc_srch_key;
    logic alloc_srch_hit;
    logic [6:0]  alloc_srch_ix;
    logic [6:0]  alloc_srch_free;
    logic alloc_srch_full;
   } mdma_c2h_pfch_cache_2_debug_t;

  typedef struct packed {
    logic [35:0] rsvd;
    logic        deq_rsp_chain;
    logic [7:0]  eop_only_seen; // bits 127:120
    logic        tag_cnt_info_wen;
    logic [6:0]  tag_cnt_info_wadr;
    logic [53:0] tag_cnt_info_wdat;
    logic        tag_alloc_cnt_wen;
    logic [6:0]  tag_alloc_cnt_wadr;
    logic [12:0] tag_alloc_cnt_wdat;
    logic [127:0] hst;
   } mdma_c2h_pfch_ll_2_debug_t;

  typedef struct packed {
    logic [0:0] rsvd;
    mdma_qid_t cam_wr_key;
    logic cam_wr_vld;
    mdma_c2h_cache_tag_t cam_wr_ix;

    logic cam_del_vld;
    mdma_c2h_cache_tag_t cam_del_ix ;

    logic [7:0] pfch_qcnt;

    mdma_qid_t  dsc_cmp_qid;
    logic dsc_cmp_err;
    logic[63:0] dsc_cmp_dsc;
    mdma_qidx_t dsc_cmp_cidx;
    logic dsc_cmp_vld;
    logic dsc_cmp_rdy;

    logic [7:0] desc_req_cache_vld;
    logic [7:0] desc_req_cache_rdy;
    logic desc_req_arb_vld;
    logic desc_req_arb_drop;
    logic desc_req_arb_var_desc;
    logic tag_cnt_arb_ren;
    logic [6:0]  tag_cnt_arb_rtag;
    logic [15:0] tag_cnt_arb_rlen;
    logic deq_ll_byte_rdy;
    logic deq_ll_hst_rdy;
    logic deq_ll_dsc_done;
    logic alloc_st_stall_p1;
    logic deq_lat_fifo_rdy;
    logic desc_req_cache_req;
    logic desc_req_cache_drop;
    logic desc_deq_vld;
    logic desc_deq_rdy;
    logic [6:0]  desc_deq_tag;
    logic [11:0] desc_deq_qid;
    logic  desc_deq_eff_var;
    logic  desc_deq_var_desc;
    logic  desc_ll_vld;
    logic  desc_ll_rdy;

    logic [7:0]  desc_rsp_vld;
    logic [7:0]  desc_rsp_rdy;
    logic [11:0] desc_rsp0_qid;

    logic [7:0]  cam_cnt;
    logic [12:0] fl_free_cnt;
  } mdma_c2h_pfch_cache_debug_t;

  typedef struct packed {
    logic [127:0][1:0]          tag_st;
  } mdma_c2h_pfch_lru_debug_t;

  typedef struct packed {
    logic vio_dsc_crdt;  // If qinv, 1 means virtio dsc negative credits.  0 means virtio avail entry or regular dsc credit.  N/a if qinv == 0
    mdma_qidx_t pidx;
    logic vio_en;
    logic vio_sw_db; // Used for VirtIO only. Set when the tm_sts is due to a SW initiated write to PIDX register
    logic vio_hw_db; // Used for VirtIO only. Set when the tm_sts is due to a HW initiated write to PIDX register
    logic vio_avl_flg; // Used for VirtIO only. Contains avail.flags field
    mdma_fnid_t fnid;
    logic vld;
    logic qen;
    logic [2:0] port_id;
    logic err;
    logic byp;
    logic c2h_st;
    logic mm;
    mdma_cqid_t qid;
    logic [15:0] avl;
    logic qinv; //  queue enable status.  1 : avl hold leftover credits, 0: avl hold available descriptors
                //  queue enable was 1 but is now 0.  queue was invalidated
    logic irq_arm;    //  irq arm bit became set (not current state)
  } tm_dsc_sts_t;

  // This ext struct has 13b QID. This is used only in the fab_demux.
  typedef struct packed {
    logic vio_dsc_crdt;  // If qinv, 1 means virtio dsc negative credits.  0 means virtio avail entry or regular dsc credit.  N/a if qinv == 0
    mdma_qidx_t pidx;
    logic vio_en;
    logic vio_sw_db; // Used for VirtIO only. Set when the tm_sts is due to a SW initiated write to PIDX register
    logic vio_hw_db; // Used for VirtIO only. Set when the tm_sts is due to a HW initiated write to PIDX register
    logic vio_avl_flg; // Used for VirtIO only. Contains avail.flags field
    mdma_fnid_t fnid;
    logic vld;
    logic qen;
    logic [2:0] port_id;
    logic err;
    logic byp;
    logic dir;
    logic mm;
    mdma_qid_max_t qid;
    logic [15:0] avl;
    logic qinv; // queue enable status. 1 : avl hold leftover credits, 0: avl hold available descriptors
               //  queue enable was 1 but is now 0.  queue was invalidated
    logic irq_arm; // irq arm bit became set (not current state)
  } tm_dsc_sts_ext_t;

  localparam MDMA_TM_DSC_STS_BITS=$bits(tm_dsc_sts_t);


   // FIXME: 2 bits (wrb_timer_vld and timer_exp_vld) commented to make room for wider qid.
  typedef struct packed {
    logic [17:0] rsvd;
    logic wrb_timer_rdy;
    mdma_c2h_wrb2timer_t wrb_timer_req;
    logic timer_exp_rdy;
    mdma_qid_t timer_exp_qid;
    logic ref_timer_en;
    logic ref_timer_stall;
    logic timer_tick_stop;
    logic [TIMER_BITS-1:0] ref_timer;
    logic [3:0][TIMER_TOTAL_FIFO_CNT_BITS-1:0] quad_cnt;
    logic [TIMER_BITS-1:0] timer_inj_value;
    logic [TIMER_FIFO_RAM_NUM-1:0] wrb_timer_request;
    logic [TIMER_FIFO_RAM_NUM-1:0] wrb_timer_fifo_accepted;
    logic [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_exp_vld;
    logic [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_exp_gnt;
    logic [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_in_vld;
    mdma_timer_fifo_dat_t [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_in_data;
    logic [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_out_vld;
    logic [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_out_rdy;
    logic [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_exp_accepted;
   } mdma_c2h_debug_timer_1_t;

  typedef struct packed {
     logic [TIMER_FIFO_RAM_NUM-1:0] fifo_wrap_vld;
     mdma_timer_fifo_dat_t [TIMER_FIFO_RAM_NUM-1:0] timer_fifo_out_dat;
     logic [TIMER_FIFO_RAM_NUM-1:0] [TIMER_FIFO_CNT_BITS-1:0] timer_fifo_out_cnt;
  } mdma_c2h_debug_timer_part_2_t;

  localparam MDMA_MAX_QID = 1<<$bits(mdma_qid_t);

  // Prefetch context RAM
  localparam PFCH_CTXT_RAM_DATA_BITS = $bits(mdma_wrb_c2h_pftch_ctxt_t);
  localparam PFCH_CTXT_RAM_DEPTH     = 1<<$bits(mdma_qid_t);
  localparam PFCH_CTXT_RAM_ADDR_BITS = $clog2(PFCH_CTXT_RAM_DEPTH);
  localparam PFCH_CTXT_RAM_RDT_FFOUT = 1;

  // Prefetch LL RAM
  localparam PFCH_LL_RAM_DATA_BITS = 216; //$bits(mdma_c2h_pfch_ll_t);
  localparam PFCH_LL_RAM_DEPTH = 2048;
  localparam PFCH_LL_RAM_ADDR_BITS = $clog2(PFCH_LL_RAM_DEPTH);
  localparam PFCH_LL_RAM_RDT_FFOUT = 1;

  // Chain LL
  localparam  CHAIN_LL_DATA_BITS = PFCH_LL_RAM_DATA_BITS;
  localparam  CHAIN_LL_MAX_TAGS  = CHAIN_NUM;
  localparam  CHAIN_LL_TAG_BITS  = $clog2(CHAIN_LL_MAX_TAGS);
  localparam  CHAIN_LL_DESC_NUM_PER_TAG = 8;
  localparam  CHAIN_LL_READ_LAT = MDMA_FIFO_BRAM_READ_LAT;
  localparam  CHAIN_LL_BUF_WR   = MDMA_FIFO_BRAM_BUF_WR;
  localparam  CHAIN_LL_BUF_RD   = MDMA_FIFO_BRAM_BUF_RD;
  localparam  CHAIN_LL_LEN_BITS = $bits(mdma_dma_buf_len_t);
  localparam  CHAIN_LL_PKTCNT_BITS = $clog2(MDMA_C2H_MAX_STBUF+1);

  // CHAIN LL RAM
  localparam CHAIN_LL_RAM_DATA_BITS = 216; //$bits(mdma_c2h_pfch_ll_t);
  localparam CHAIN_LL_RAM_DEPTH = CHAIN_LL_MAX_TAGS * CHAIN_LL_DESC_NUM_PER_TAG;
  localparam CHAIN_LL_RAM_ADDR_BITS = 9;
  localparam CHAIN_LL_RAM_RDT_FFOUT = 1;
  localparam MDMA_NUM_PASID_RAMS    = 2;

  typedef enum logic [1:0] {
    MDMA_CTXT_CMD_CLR=0, MDMA_CTXT_CMD_WR, MDMA_CTXT_CMD_RD, MDMA_CTXT_CMD_INV
  } mdma_ind_ctxt_cmd_e;

  //Avail-ring FIFO parameters
  localparam AVL_RING_CRDT_FIFO_WIDTH       = $bits(mdma_dsc_eng_imm_crdt_t) < 72 ? 72 : -1;
  localparam AVL_RING_CRDT_FIFO_DEPTH       = 1024;
  localparam AVL_RING_CRDT_FIFO_ADDR_BITS   = $clog2(AVL_RING_CRDT_FIFO_DEPTH);
  // make this programmable: add register for threshold
  localparam AVL_RING_DSC_CRDT_THROTTLE_THRESHOLD = AVL_RING_CRDT_FIFO_DEPTH - 64;

  //---------------------------------------------------------
  // cmpt
  //---------------------------------------------------------
  typedef struct packed {
  //mdma_c2h_wrb_type_e wrb_type;
    logic is_rx_vio_msg;
    logic no_wrb_marker;
    logic eop;
    logic [2:0] color_idx;
    logic [2:0] desc_err_idx;
    logic mrkr;
    logic usr_trig;
    logic [2:0] port_id;
    mdma_cqid_t qid;
  } cmpt_ctrl_t;

  typedef struct packed {
    cmpt_ctrl_t ctrl;
    mdma_dma_wrb_data_t usr_data;
  } mdma_c2h_wrb_wrbif_t;

  typedef struct packed {
    logic [31:1] rsv;
    logic vio_sprs_int_after_rty;
    logic vio_evnt_sup_en;
  } mdma_cmpt_cfg_0_t;

  localparam CMPT_NUM_FMT_REG = 7;
  localparam integer CMPT_COL_LOC[CMPT_NUM_FMT_REG-1:0] = '{0, 0, 0, 0, 0, 0, 1};
  localparam integer CMPT_ERR_LOC[CMPT_NUM_FMT_REG-1:0] = '{0, 0, 0, 0, 0, 0, 2};

  typedef struct packed {
    logic [31:18]   rsv;
    logic [8:0]     err_loc;
    logic [8:0]     col_loc;
  } mdma_cmpt_fmt_reg_t;

  typedef struct packed {
    mdma_cmpt_fmt_reg_t [CMPT_NUM_FMT_REG-1:0] fmt_reg;
  } mdma_cmpt_fmt_reg_blk_t;

  localparam MAX_MSGST_LEN = 256;
  localparam CMPT_PLD_BITS = 256;

  localparam NUM_PLD_BTS_BITS = $clog2(MAX_MSGST_LEN/(CMPT_PLD_BITS/8))+1; // Works with offset-adjusted length too.
  localparam MSGST_LEN_BITS = $clog2(MAX_MSGST_LEN)+1;

  // VIO CMPT structs
  // B0->B15: CMPT, if present. Otherwise DC.
  // B16->B22: CTRL
  // B23: PIDX_INC (F_IN_ORDER)
  // B24->B63: RESERVED, so these do not need to be in the struct.
  typedef struct packed {
    logic [7:0]  pidx_inc;
    logic [47:0] rsv;
    struct packed {
      logic noe;
      logic dis_not;
      logic en_not;
      logic int_sup;
      logic int_allow;
      logic sw_db;
      logic hw_db;
      logic msg_vld;
    } vio_ctl_ext;
    logic [127:0] dat;
  } dma5_vio_cmpt_if_pkt_t;

  typedef struct packed {
    logic [7:0] pidx_inc;
    logic noe;
    logic dis_not;
    logic en_not;
    logic int_sup;
    logic int_allow;
    logic sw_db;
    logic hw_db;
    logic msg_vld;
  } dma5_cmpt_vio_ctl_t;

  localparam WRB_COOKIE_WIDTH = 16;

  // TODO: Is a 16b timer value enough?
  localparam CMPT_COAL_TMR_BITS=16;
  localparam CMPT_COAL_DEF_TMR_VAL = 8'h80;

  typedef struct packed {
    logic [31:CMPT_COAL_TMR_BITS]   rsv;
    logic [CMPT_COAL_TMR_BITS-1:0]  tmr_val;
  } cdx5n_cmpt_coal_cfg_reg_t;

  // TODO: Add parity/CRC in this struct when implementing data protection in the CMPT Engine.
  typedef struct packed {
    logic [CMPT_PLD_BITS-1:0]       pld;
    logic [(CMPT_PLD_BITS/8)-1:0]   par;
  } cdx5n_mdma_cmpt_pld_t;

  localparam CMPT_COAL_BUF_LOGICAL_BITS = 512;
  localparam CMPT_COAL_SEG_BITS = 64;
  localparam MAX_LOG_OFST = CMPT_COAL_BUF_LOGICAL_BITS/CMPT_COAL_SEG_BITS;
  localparam COAL_LOG_OFF_BITS = $clog2(MAX_LOG_OFST);
  typedef logic [COAL_LOG_OFF_BITS-1:0]   cdx5n_cmpt_coal_log_buf_ptr_t;
  typedef logic [COAL_LOG_OFF_BITS:0]   cdx5n_cmpt_coal_size64b_t;

  // The timer CSRs default to about 1us timer value. This is used in certain CMPT INT trigger modes that should not
  // require the user to program the timers.
  localparam CMPT_TIMER_TICK_DEF = 512;
  localparam CMPT_TIMER_VAL_DEF = 2;
  //------------------------------------------------------------------------------------------------------------------

  //------------------------------------------------------------------------------------------------------------------
  // h2c-st
  //------------------------------------------------------------------------------------------------------------------
  localparam PEND_FIFO_WIDTH = 6 + /*addr*/
    32 + /*mdata*/
    $bits(mdma_dma_buf_len_t) + /*len*/
    $bits(mdma_qid_max_t) + /*qid*/
    16 + /*cidx*/
    $bits(mdma_fnid_t) + /*fnid*/
    1 + /*wbi*/
    1 + /*wbi_chk*/
    1 + /*err2ctxt*/
    1 + /*eod*/
    1 + /*sop*/
    1 + /*eop*/
    1 + /*err*/
    3 + /*port_id*/
    1 + /*no_dma*/
    1 + /*byp*/
    1 + /*vch_id*/
    $bits(mdma_pasid_val_t) + /*pasid*/
    1; /*pasid_en*/

  localparam PEND_FIFO_RAM_RDT_FFOUT = 1;
  localparam DATA_BITS = 512;//CDM by KSR
  localparam DAT_OFST_BITS = $clog2(DATA_BITS/8);//FIXME

  typedef struct packed {
    logic [3:0]  vc;
    logic [DAT_OFST_BITS-1:0] src_aln;
    logic [5:0]  rc_id;
    logic [4:0]  client_id;

    logic [6:0]  ecc;
    logic        vch_id;     //[71]
    logic        zero_b_dma; //[70]
    logic [2:0]  port_id;    //[69:67]
    logic [31:0] mdata;      //[66:35]
    logic [7:0]  err;        //[34:27]
    logic        wbc;        //[26]
    logic [$clog2($bits(mdma_int_tdata_t)/8)-1:0] meb; //[25:20]
    logic [$clog2($bits(mdma_int_tdata_t)/8)-1:0] leb; //[19:14]
    logic eop; //[13]
    logic sop; //[12]
    mdma_qid_max_t qid; //[11:0]
  } mdma_h2c_axis_unal_tuser_t;

  typedef struct packed {
    logic [3:0]  vc;
    logic [5:0]  src_aln;
    logic [5:0]  rc_id;
    logic [4:0]  client_id;

    logic [6:0]  ecc;
    logic        zero_b;
    logic [5:0]  mty;
    logic [31:0] mdata;
    logic        err;
    logic [2:0]  port_id;
    logic        wbc;
    mdma_qid_max_t qid;
  } mdma_h2c_axis_tuser_t;

  typedef struct packed {
    logic csi_bar;
    logic snd_bar_dat;
    logic snd_bar_rsp;
    logic mrkr_req;
    logic [5:0] dst_aln;
    logic int_mode;
    logic [3:0] req_vc;
    logic [4:0] client_id;
    cdm_resp_cookie_t rsp_cookie;
    logic [1:0] at;
    mdma_qidx_t cidx;
    mdma_fnid_t fnc;
    mdma_pasid_val_t pasid;
    logic pasid_en;
    logic err2ctxt;
    logic dsc_err;
    logic zb_dma;
    logic sdi;
    logic sdi_chk;
    logic [DAT_OFST_BITS-1:0] leb;
    logic [DAT_OFST_BITS-1:0] meb;
    mdma_qid_max_t qid;
  } cdx5n_h2c_mdat_t;

  // Shift direction for data aligners
  typedef enum logic {
    SH_LEFT  = 0,
    SH_RIGHT = 1
  } mdma_data_sh_dir_e;

  typedef enum logic {
    SH_0  = 0, // Shift by 0B
    SH_DW = 1  // Shift by Data Width bytes
  } mdma_aln_sh_cnt_e;

  typedef struct packed {
    logic [31:0] addr_h; //[127:96]
    logic [31:0] addr_l; //[95:64]
    logic [13:0] rsv1;   //[63:50]
    logic        eop;    //[49]
    logic        sop;    //[48]
    logic [15:0] len;    //[47:32]
    logic [31:0] rsv2;   //[31:0]
  } mdma_h2c_byp_in_dsc_t;

  typedef struct packed {
    logic [31:0] addr_h; //[127:96]
    logic [31:0] addr_l; //[95:64]
    logic [15:0] rsv1;   //[63:48]
    logic [15:0] len;    //[47:32]
    logic [31:0] rsv2;   //[31:0]
  } mdma_h2c_dsc_t;

  typedef struct packed {
    logic req_throt_en_req; // [31]
    logic [11:0] req_th;    // [30:19]
    logic req_throt_en_dat; // [18]
    logic [17:0] dat_th;    // [17:0]
  } mdma_h2c_req_throt_reg_t;

  //H2C-ST Core debug registers
  typedef struct packed {
    logic [15:0] num_dsc_rcvd;
    logic [15:0] num_wrb_sent;
  } mdma_h2c_core_dbg_reg32_0_t;

  typedef struct packed {
    logic [15:0] num_req_sent;
    logic [15:0] num_cmp_rcvd;
  } mdma_h2c_core_dbg_reg32_1_t;

  typedef struct packed {
    logic [15:0] rsv;
    logic [15:0] num_err_dsc_rcvd;
  } mdma_h2c_core_dbg_reg32_2_t;

  typedef struct packed {
    logic rsv;
    logic dsco_fifo_empty;
    logic dsco_fifo_full;
    logic [2:0] cur_rc_state;
    logic [9:0] rdreq_lines;
    logic [9:0] rdata_lines_avail;
    logic pend_fifo_empty;
    logic pend_fifo_full;
    logic [1:0] cur_rq_state;
    logic dsci_fifo_full;
    logic dsci_fifo_empty;
  } mdma_h2c_core_dbg_reg32_3_t;

  typedef struct packed {
    logic [31:0] rdreq_addr;
  } mdma_h2c_core_dbg_reg32_4_t;

  typedef struct packed {
    mdma_h2c_core_dbg_reg32_0_t reg_0;
    mdma_h2c_core_dbg_reg32_1_t reg_1;
    mdma_h2c_core_dbg_reg32_2_t reg_2;
    mdma_h2c_core_dbg_reg32_3_t reg_3;
    mdma_h2c_core_dbg_reg32_4_t reg_4;
  } mdma_h2c_core_dbg_reg_t;

  //H2C aligner debug registers
  typedef struct packed {
    logic [15:0] rsv;
    logic [15:0] num_pkt_sent;
  } mdma_h2c_aln_dbg_reg32_0_t;

  typedef struct packed {
    mdma_h2c_aln_dbg_reg32_0_t reg_0;
  } mdma_h2c_aln_dbg_reg_t;
  //------------------------------------------------------------------------------------------------------------------

  typedef enum logic [7:0]    {
    TRQ_SRC = 1, WBC_SRC = 2, CRD_SRC= 4, IND_SRC= 8, EVT_SRC = 16, IMM_SRC= 32, RCP_SRC= 64, FEN_SRC= 128
  } dsc_ctxt_src_e;

  typedef enum logic [2:0]    {
    TRQ_SRC_ENC = 0, WBC_SRC_ENC = 1, CRD_SRC_ENC= 2, IND_SRC_ENC = 3, EVT_SRC_ENC = 4, IMM_SRC_ENC = 5, RCP_SRC_ENC = 6 , FEN_SRC_ENC = 7
  } dsc_ctxt_src_enc_e;

  typedef enum logic [1:0]{
    MDMA_DSC_MISC_EVT = 0,
    MDMA_DSC_RCP_EVT =  1,
    MDMA_DSC_IMM_EVT = 2,
    MDMA_DSC_VIO_IDX_RCP_EVT =  3
  } mdma_dsc_evt_e;

  typedef struct packed {
  //mdma_dsc_evt_e rcp;
    dsc_ctxt_src_e src;
    mdma_cqid_t    qid;
  } dsc_ctxt_info_t;


  typedef struct packed {
    logic [25:0] rsv;
  } dsc_rsv_ctxt_dat_t;

  typedef struct packed {
    logic [3:0]  rsv;
    logic sw_db;
    logic hw_db;
    logic err;
    logic vio_idx;
    logic avl_flg;
    logic pnd_sub;
    logic [15:0] idx;
  } dsc_rcp_ctxt_dat_t;

  typedef struct packed {
    logic [23:0] rsv;
    logic [1:0]  err;
  } dsc_wbc_ctxt_dat_t;

  typedef struct packed {
    logic [6:0] rsv;
    mdma_dsc_eng_crdt_op_e cmd;   // 3 bits
    logic [15:0] crd;
  } dsc_crd_ctxt_dat_t;

  typedef union packed {
    dsc_rsv_ctxt_dat_t rsv;
    dsc_rcp_ctxt_dat_t rcp;
    dsc_crd_ctxt_dat_t crd;
    dsc_wbc_ctxt_dat_t wbc;
  } dsc_ctxt_req_dat_t;

  // ----------------------------------------------------------------
  // QSTS OUT port
  // ----------------------------------------------------------------
  typedef enum logic [7:0] {
    CMPT_MRKR_RSP=0, H2C_ST_MRKR_RSP=1, C2H_MM_MRKR_RSP=2, H2C_MM_MRKR_RSP=3
  } mdma_sts_out_op_e;

  typedef struct packed {
    logic [45:0]  rsv;
    logic sol; // 1: Solicited marker response
    logic err;
    logic [15:0]  cidx;
  }  mdma_mm_h2c_st_mrkr_data_t;

  typedef union packed {
    logic [63:0] union_bal;
  // mdma_cmpt_mrkr_data_t cmpt_mrkr_data;
    mdma_mm_h2c_st_mrkr_data_t mm_h2c_st_mrkr_data;
  } mdma_sts_out_data_u;

  typedef struct packed {
    logic                   rsv2;
    mdma_sts_out_op_e       op;
    mdma_sts_out_data_u     data;
    logic [2:0]             port_id;
    logic [10:0]            rsv;        // These will be part of qid if it becomes 24b
    mdma_qid_max_t          qid;
  } mdma_sts_out_t;
  // ----------------------------------------------------------------
`endif
