`ifndef CPM5N_CDX5N_DMA5_DEBUG_DEFINES_SVH
`define CPM5N_CDX5N_DMA5_DEBUG_DEFINES_SVH

typedef struct packed {
  logic  [3:0]  rsv;
  logic  [3:0]  int_mm_throttle;
  logic  [3:0]  int_h2c_throttle;
  logic   sw_evt_vld;
  logic   sw_evt_sel;
  logic [11:0] sw_evt_qid;
  logic   chn_evt_vld_h2c;
  logic [11:0] chn_evt_qid_h2c;
  logic   chn_evt_vld_c2h;
  logic [11:0] chn_evt_qid_c2h;
  logic   rcp_evt_fl_h2c;
  logic   rcp_evt_ep_h2c;
  logic [5:0] rcp_evt_fifo_used_h2c;
  logic   rcp_evt_fl_c2h;
  logic   rcp_evt_ep_c2h;
  logic [5:0]  rcp_evt_fifo_used_c2h;
  logic   ctxt_rvld;
  logic   fen_vld;
  logic   imm_vld;
  logic   sel;
  logic [11:0] qid;
  logic   qen;
  logic [1:0]  err;
  logic   evt_pnd;
  logic   fetch_pnd;
  logic   dsc_pnd;
  logic [15:0] crd_avl;
  logic [15:0] pidx;  // if imm_vld, imm.idx
  logic [15:0] cidx;
  logic [1:0]  cancel;
  logic        rrq_vld;
  logic [15:0] rrq_adr;
  logic [9:0]  rrq_dsc_len;
  logic [9:0]  rrq_did;
//logic [3:0]  rrq_cnt_h2c;
  logic        rrq_spc_h2c;
//logic [3:0]  rrq_cnt_c2h;
  logic        rrq_spc_c2h;
  logic        dcp_arb_vld;
  logic        dcp_arb_gnt;
  logic        cpl_sop_h2c;
  logic [9:0]  cpl_did_h2c;
  logic [11:3] cpl_len_h2c;
  logic        cpl_err_h2c;
  logic        cpl_sop_c2h;
  logic [9:0]  cpl_did_c2h;
  logic [11:3] cpl_len_c2h;
  logic        cpl_err_c2h;
  logic        dsc_out_fl_h2c;
  logic        dsc_out_vld_h2c;
  logic        dsc_out_rdy_h2c;
  logic [11:0] dsc_out_qid_h2c;
  logic        dsc_out_fl_c2h;
  logic        dsc_out_vld_c2h;
  logic        dsc_out_rdy_c2h;
  logic [11:0] dsc_out_qid_c2h;
  logic [2:0]  dsc_out_fmt_c2h;
} udma_dsc_eng_dbg_t;

typedef struct packed {
    logic            rrq_alloc_gnt_in;
    logic [8:0]      rrq_alloc_csi_dst_fifo;                                                             
    logic [4:0]      rrq_alloc_csi_dst;                                                                  
    logic [15:0]     rrq_alloc_len;                                                                      
    logic            rrq_alloc_vld;
} cdx_cdm_dsc_eng_dbg_reg0_t;
  
typedef struct packed {
    logic [19:0]     rrq_pasid;
    logic            rrq_pasid_en;
    logic [1:0]      rrq_addr_type;                                                                      
    logic            rrq_rro;
    logic            rrq_ro;
    logic            rrq_ido;
    logic            rrq_no_snoop;
    logic            rrq_vio_idx; 
    logic [3:0]      rrq_client_id;
} cdx_cdm_dsc_eng_dbg_reg1_t;

typedef struct packed {
    logic [3:0]      rsvd;
    logic            rrq_alloc_fifo_almost_full;
    logic [4:0]      rrq_dsc_chnl;
    logic [5:0]      rrq_rid;
    logic            rrq_hw_db;                                                                          
    logic            rrq_sw_db;                                                                          
    logic [1:0]      rrq_type;                                                                           
    logic [11:0]     rrq_cnt;
} cdx_cdm_dsc_eng_dbg_reg2_t;

typedef struct packed {
    logic [1:0]      rsvd;
    logic [2:0]      rrq_fmt;
    logic            rrq_virtio_en;                                                                      
    logic [2:0]      rrq_dsc_sz;                                                                         
    logic            rrq_qen;
    logic [12:0]     rrq_qid;
    logic [4:0]      rrq_csi_prof_id;                                                                    
    logic [3:0]      rrq_int_prof_id;
} cdx_cdm_dsc_eng_dbg_reg3_t;

typedef struct packed {
    logic            rrq_end_rng;
    logic            rrq_c2h;
    logic            rrq_wbi_chk;
    logic [15:0]     rrq_cidx;
    logic            rrq_infer_mem_spc;                                                                  
    logic [11:0]     rrq_fnc;
} cdx_cdm_dsc_eng_dbg_reg4_t;

typedef struct packed {
    logic [3:0]      int_mm_throttle;
    logic [3:0]      int_h2c_throttle;
    logic [5:0]      rrq_rcid;
    logic [11:0]     rrq_response_cookie;
    logic [4:0]      rrq_start_offset;
    logic            rrq_barrier;
} cdx_cdm_dsc_eng_dbg_reg5_t;

typedef struct packed {
    logic            ctxt_rvld;
    logic            ctxt_cancel;
    logic            ctxt_qen;
    logic [1:0]      ctxt_err;
    logic            fen_vld;
    logic            imm_vld;
    logic            rrq_uodsc_throttle;
    logic [1:0]      rrq_alloc_fifo_af;               
    logic            fcrd_en;
    logic [4:0]      fetch_pnd;
    logic [15:0]     pidx;
} cdx_cdm_dsc_eng_dbg_reg6_t;

typedef struct packed {
    logic [15:0]     crd_avl;
    logic [15:0]     dsc_avl;
} cdx_cdm_dsc_eng_dbg_reg7_t;

typedef struct packed {
    cdx_cdm_dsc_eng_dbg_reg7_t dbg7;  //CRD/DSC AVL  [255:224]
    cdx_cdm_dsc_eng_dbg_reg6_t dbg6;  //DSCF fetch [223:192]
    cdx_cdm_dsc_eng_dbg_reg5_t dbg5;  //RRQ MSGLD DSB [191:160]
    cdx_cdm_dsc_eng_dbg_reg4_t dbg4;  //RRQ_DSB_1 [159:128]
    cdx_cdm_dsc_eng_dbg_reg3_t dbg3;  //RRQ_DSB_0 [127:96]
    cdx_cdm_dsc_eng_dbg_reg2_t dbg2;  //RRQ_META [95:64] 
    cdx_cdm_dsc_eng_dbg_reg1_t dbg1;  //RRQ HDR [63:32]
    cdx_cdm_dsc_eng_dbg_reg0_t dbg0;  //RRQ ALLOC [31:0]
} cdx_cdm_dsc_eng_dbg_t;

typedef struct packed {
  logic [7:0]  crdt_len_calc_chn0_0;
  rcp_cnt_t    rcp_cnt_chnl1;
  rcp_cnt_t    rcp_cnt_chnl0;
} cdx_cdm_dsc_eng_rcp_dbg0_t;

typedef struct packed {
  logic [7:0]  crdt_len_calc_chn0_1;
  rcp_cnt_t    rcp_cnt_chnl3;
  rcp_cnt_t    rcp_cnt_chnl2;
} cdx_cdm_dsc_eng_rcp_dbg1_t;

typedef struct packed {
  logic [7:0]  crdt_len_calc_chn1_0;
  rcp_cnt_t    rcp_cnt_chnl5;
  rcp_cnt_t    rcp_cnt_chnl4;
} cdx_cdm_dsc_eng_rcp_dbg2_t;

typedef struct packed {
  logic [7:0]  crdt_len_calc_chn1_1;
  rcp_cnt_t    rcp_cnt_chnl7;
  rcp_cnt_t    rcp_cnt_chnl6;
} cdx_cdm_dsc_eng_rcp_dbg3_t;

typedef struct packed {
  logic [7:0]  crdt_len_calc_chn2_0;
  rcp_cnt_t    rcp_cnt_chnl9;
  rcp_cnt_t    rcp_cnt_chnl8;
} cdx_cdm_dsc_eng_rcp_dbg4_t;

typedef struct packed {
  logic [7:0]  crdt_len_calc_chn2_1;
  rcp_cnt_t    rcp_cnt_chnl11;
  rcp_cnt_t    rcp_cnt_chnl10;
} cdx_cdm_dsc_eng_rcp_dbg5_t;

typedef struct packed {
  logic [15:0] crdt_len_calc_chn4;
  logic [15:0] crdt_len_calc_chn3;
} cdx_cdm_dsc_eng_rcp_dbg6_t;

typedef struct packed {
  logic [15:0] crdt_len_calc_chn6;
  logic [15:0] crdt_len_calc_chn5;
} cdx_cdm_dsc_eng_rcp_dbg7_t;

typedef struct packed {
  logic [15:0] crdt_len_calc_chn8;
  logic [15:0] crdt_len_calc_chn7;
} cdx_cdm_dsc_eng_rcp_dbg8_t;

typedef struct packed {
  logic [15:0] crdt_len_calc_chn10;
  logic [15:0] crdt_len_calc_chn9;
} cdx_cdm_dsc_eng_rcp_dbg9_t;

typedef struct packed {
  logic [3:0]  out_vfifo_cdt_chnl1_0;
  rcp_cnt_t    out_vfifo_cdt_chnl0;
  logic [15:0] crdt_len_calc_chn11;
} cdx_cdm_dsc_eng_rcp_dbg10_t;

typedef struct packed {
  rcp_cnt_t    out_vfifo_cdt_chnl3;
  rcp_cnt_t    out_vfifo_cdt_chnl2;
  logic [$bits(rcp_cnt_t) -4 -1:0]  out_vfifo_cdt_chnl1_1;
} cdx_cdm_dsc_eng_rcp_dbg11_t;

typedef struct packed {
  logic [7:0]  out_vfifo_cdt_chnl6_0;
  rcp_cnt_t    out_vfifo_cdt_chnl5;
  rcp_cnt_t    out_vfifo_cdt_chnl4;
} cdx_cdm_dsc_eng_rcp_dbg12_t;

typedef struct packed {
  logic [3:0]  out_vfifo_cdt_chnl9_0;
  rcp_cnt_t    out_vfifo_cdt_chnl8;
  rcp_cnt_t    out_vfifo_cdt_chnl7;
  logic [$bits(rcp_cnt_t) -8 -1:0]  out_vfifo_cdt_chnl6_1;
} cdx_cdm_dsc_eng_rcp_dbg13_t;

typedef struct packed {
  rcp_cnt_t    out_vfifo_cdt_chn11;
  rcp_cnt_t    out_vfifo_cdt_chn10;
  logic [$bits(rcp_cnt_t) -4 -1:0] out_vfifo_cdt_chnl9_1;
} cdx_cdm_dsc_eng_rcp_dbg14_t;

typedef struct packed {
  logic [18:0] rsvd;
  logic [5:0]  rcp_crdt_cnt;
  logic [3:0]  rcp_deq_dw_en;
  logic        rcp_deq_rdy;
  logic        rcp_deq_vld;
  logic        rcp_sts_vld;
} cdx_cdm_dsc_eng_rcp_dbg15_t;

typedef struct packed {
  cdx_cdm_dsc_eng_rcp_dbg15_t rcp_sched_dbg15;
  cdx_cdm_dsc_eng_rcp_dbg14_t rcp_sched_dbg14;
  cdx_cdm_dsc_eng_rcp_dbg13_t rcp_sched_dbg13;
  cdx_cdm_dsc_eng_rcp_dbg12_t rcp_sched_dbg12;
  cdx_cdm_dsc_eng_rcp_dbg11_t rcp_sched_dbg11;
  cdx_cdm_dsc_eng_rcp_dbg10_t rcp_sched_dbg10;
  cdx_cdm_dsc_eng_rcp_dbg9_t  rcp_sched_dbg9;
  cdx_cdm_dsc_eng_rcp_dbg8_t  rcp_sched_dbg8;
} cdx_cdm_rcp_sched_dbg1_t;

typedef struct packed {
  cdx_cdm_dsc_eng_rcp_dbg7_t  rcp_sched_dbg7;
  cdx_cdm_dsc_eng_rcp_dbg6_t  rcp_sched_dbg6;
  cdx_cdm_dsc_eng_rcp_dbg5_t  rcp_sched_dbg5;
  cdx_cdm_dsc_eng_rcp_dbg4_t  rcp_sched_dbg4;
  cdx_cdm_dsc_eng_rcp_dbg3_t  rcp_sched_dbg3;
  cdx_cdm_dsc_eng_rcp_dbg2_t  rcp_sched_dbg2;
  cdx_cdm_dsc_eng_rcp_dbg1_t  rcp_sched_dbg1;
  cdx_cdm_dsc_eng_rcp_dbg0_t  rcp_sched_dbg0;
} cdx_cdm_rcp_sched_dbg0_t;

typedef struct packed {
  logic [4:0] rsvd;
  logic [8:0] crdt_chnl2;
  logic [8:0] crdt_chnl1;
  logic [8:0] crdt_chnl0;
} cdx_cdm_dsc_out_vfifo_crdt_dbg0_t; 

typedef struct packed {
  logic [4:0] rsvd;
  logic [8:0] crdt_chnl5;
  logic [8:0] crdt_chnl4;
  logic [8:0] crdt_chnl3;
} cdx_cdm_dsc_out_vfifo_crdt_dbg1_t;

typedef struct packed {
  logic [4:0] rsvd;
  logic [8:0] crdt_chnl8;
  logic [8:0] crdt_chnl7;
  logic [8:0] crdt_chnl6;
} cdx_cdm_dsc_out_vfifo_crdt_dbg2_t;

typedef struct packed {
  logic [4:0] rsvd;
  logic [8:0] crdt_chnl11;
  logic [8:0] crdt_chnl10;
  logic [8:0] crdt_chnl9;
} cdx_cdm_dsc_out_vfifo_crdt_dbg3_t;

typedef struct packed {
  cdx_cdm_dsc_out_vfifo_crdt_dbg3_t dbg3;
  cdx_cdm_dsc_out_vfifo_crdt_dbg2_t dbg2;
  cdx_cdm_dsc_out_vfifo_crdt_dbg1_t dbg1;
  cdx_cdm_dsc_out_vfifo_crdt_dbg0_t dbg0;
} cdx_cdm_dsc_out_vfifo_crdt_dbg_t;

typedef struct packed {
  logic [1:0] rsvd;
  logic [4:0] crdt_chn5;
  logic [4:0] crdt_chn4;
  logic [4:0] crdt_chn3;
  logic [4:0] crdt_chn2;
  logic [4:0] crdt_chn1;
  logic [4:0] crdt_chn0;
} cdx_cdm_dsc_crdif_sched0_t;

typedef struct packed {
  logic [21:0] rsvd;
  logic [4:0] crdt_chn7;
  logic [4:0] crdt_chn6;
} cdx_cdm_dsc_crdif_sched1_t;

typedef struct packed {
  logic [63:0]  rsvd;
  cdx_cdm_dsc_crdif_sched1_t       dsc_eng_crdif_crdt_dbg1;
  cdx_cdm_dsc_crdif_sched0_t       dsc_eng_crdif_crdt_dbg0;
  cdx_cdm_dsc_out_vfifo_crdt_dbg_t dsc_out_vfifo_crdt_dbg;
} cdx_cdm_dsc_eng_crd_dbg_t;

typedef struct  packed {
    logic  [15:0]   ctxt_win_hw_wdat;
    logic  [15:0]   ctxt_win_crd_wdat;
} cdx_cdm_dsc_reg_dbg0_t;

typedef struct  packed {
    logic           rsvd;
    logic           trq_sel;
    logic           wbc_cpl_irq;
    logic           irq_no_last;
    logic           err_wb_sent;
    logic           wbc_rq_vld;
  logic  [3:0]    qinv_cnt;
    logic  [2:0]    ctxt_win_src;
    logic  [15:0]   ctxt_win_sw_wdat;
    logic  [1:0]    ctxt_win_sw_werr;
    logic           ctxt_win_crd_wen;
} cdx_cdm_dsc_reg_dbg1_t;

typedef struct  packed {
  logic           trq_rd;
  logic           trq_wr;
    logic  [12:0]   trq_qid;
  logic           ind_rd;
  logic           ind_wr;
  logic           ind_clr;
  logic           ind_inv;
    logic  [12:0]   ind_qid;
} cdx_cdm_dsc_reg_dbg2_t;

typedef struct  packed {
    logic   [15:0]  crd_imm_idx;  //
    logic   [15:0]  crd_imm_crdt;   //
} cdx_cdm_dsc_reg_dbg3_t;

typedef struct  packed {
    logic [4:0]     rsvd;
    logic           crd_msgld_vld;
    logic   [8:0]   crd_msgld_len;
    logic   [1:0]   crd_msgld_op;   
    logic           crd_imm_rdy;
    logic           crd_imm_vld;  //
    logic   [12:0]  crd_imm_qid; //
} cdx_cdm_dsc_reg_dbg4_t;

typedef struct  packed {
    logic           crd_rcv_rdy;
    logic           fcrd_rcv_vld;  //
    logic           fcrd_rcv_fen;  //
    logic   [12:0]  fcrd_rcv_qid; //
    logic   [15:0]  fcrd_rcv_crdt;   //
} cdx_cdm_dsc_reg_dbg5_t;

typedef struct  packed {
  logic           irq_req;
  logic           irq_arm;
    logic           irq_fifo_fl;
    logic  [12:0]   irq_qid;
    logic  [15:0]   irq_cidx;
} cdx_cdm_dsc_reg_dbg6_t;

typedef struct  packed {
    logic           wbc_cpl_wbi;
    logic           wbc_cpl_vld;
    logic           wbc_cpl_rdy;
    logic  [15:0]   wbc_cpl_cidx;
    logic  [12:0]   wbc_rq_qid;
} cdx_cdm_dsc_reg_dbg7_t;

typedef struct packed {
    cdx_cdm_dsc_reg_dbg0_t dbg0;
    cdx_cdm_dsc_reg_dbg1_t dbg1;
    cdx_cdm_dsc_reg_dbg2_t dbg2;
    cdx_cdm_dsc_reg_dbg3_t dbg3;
    cdx_cdm_dsc_reg_dbg4_t dbg4;
    cdx_cdm_dsc_reg_dbg5_t dbg5;
    cdx_cdm_dsc_reg_dbg6_t dbg6;
    cdx_cdm_dsc_reg_dbg7_t dbg7;
} udma_dsc_reg_dbg_t;

typedef struct packed {
    logic [31:19] rsvd;
    logic rcp_dat_err_in;
    logic rcp_dat_vld_in;
    logic rcp_deq_vld_out;
    logic rcp_deq_rdy_in;
    logic rcp_sts_vld_in;
    logic rrq_hdr_meta_vld_out;
    logic rrq_hdr_vld_out;
    logic rrq_alloc_vld_out;
    logic rrq_alloc_gnt_in; 
    logic imm_crd_rdy_out;
    logic imm_crd_vld_in;
    logic int_crd_rdy_out;
    logic int_crd_vld_in;
    logic dmac_crd_rdy_out;
    logic dmac_crd_vld_in;
    logic fab1_crd_rdy_out;
    logic fab1_crd_vld_in;
    logic fab0_crd_rdy_out;
    logic fab0_crd_vld_in;
} cdx_cdm_dsc_eng_intf_dbg0_t;

typedef struct packed {
    logic [31:18] rsvd;
    logic [12:0] tm_dsc_sts_qid;
    logic [3:0]  tm_dsc_sts_client_id;
    logic        tm_dsc_sts_rdy;
    logic        tm_dsc_sts_out_vld;
} cdx_cdm_dsc_eng_intf_dbg1_t;

typedef struct packed {
    logic [31:23] rsvd;
    logic [1:0]  dsc_irq_msg_typ;
    logic        dsc_irq_rdy_in;
    logic        dsc_irq_vld_out;
    logic [1:0]  wbk_irq_msg_typ;
    logic        wbk_irq_rdy_in;
    logic        wbk_irq_vld_out;
    logic [12:0] wbk_req_qid;
    logic        wbk_req_rdy_out;
    logic        wbk_req_vld_in;
} cdx_cdm_dsc_eng_intf_dbg2_t;

typedef struct packed {
    logic [31:20] rsvd;
    logic [3:0]  h2c_dsc_out_pop_in;
    logic [12:0] h2c_dsc_out_qid;
    logic [1:0]  h2c_dsc_out_chnl_out;
    logic        h2c_dsc_out_vld_out;
    logic        h2c_dsc_out_rdy_in;
} cdx_cdm_dsc_eng_intf_dbg3_t;

typedef struct packed {
    logic [31:17] rsvd;
    logic        c2h_dsc_out_pop_in;
    logic        c2h_dsc_out_vio_pop_in;
    logic [12:0] c2h_dsc_out_qid;
    logic        c2h_dsc_out_vld_out;
    logic        c2h_dsc_out_rdy_in;
} cdx_cdm_dsc_eng_intf_dbg4_t;

typedef struct packed {
    logic [31:20] rsvd;
    logic [3:0]  mm_dsc_out_pop_in;
    logic [12:0] mm_dsc_out_qid;
    logic [1:0]  mm_dsc_out_chnl_out;
    logic        mm_dsc_out_vld_out;
    logic        mm_dsc_out_rdy_in;
} cdx_cdm_dsc_eng_intf_dbg5_t;

typedef struct packed {
    logic [31:6] rsvd;
    logic [3:0] cmpt_rsp_client_id;
    logic        cmpt_rsp_rdy;
    logic        cmpt_rsp_vld;
} cdx_cdm_dsc_eng_intf_dbg6_t;

typedef struct packed {
    logic [31:21]  rsvd;
    logic [4:0]   dmac_byp_out_dsc_mty;
    logic         dmac_byp_out_dsc_rdy;
    logic         dmac_byp_out_dsc_vld;
    logic [4:0]   fab1_byp_out_dsc_mty;
    logic         fab1_byp_out_dsc_rdy;
    logic         fab1_byp_out_dsc_vld;
    logic [4:0]   fab0_byp_out_dsc_mty;
    logic         fab0_byp_out_dsc_rdy;
    logic         fab0_byp_out_dsc_vld;
} cdx_cdm_dsc_eng_intf_dbg7_t;

typedef struct packed {
    cdx_cdm_dsc_eng_intf_dbg0_t dbg0;
    cdx_cdm_dsc_eng_intf_dbg1_t dbg1;
    cdx_cdm_dsc_eng_intf_dbg2_t dbg2;
    cdx_cdm_dsc_eng_intf_dbg3_t dbg3;
    cdx_cdm_dsc_eng_intf_dbg4_t dbg4;
    cdx_cdm_dsc_eng_intf_dbg5_t dbg5;
    cdx_cdm_dsc_eng_intf_dbg6_t dbg6;
    cdx_cdm_dsc_eng_intf_dbg7_t dbg7;
}cdx_cdm_dsc_eng_intf_dbg_t;

typedef struct  packed {
  logic [30:0]   rsv;
  logic [11:0]   nph_avail;
  logic [10:0]   RcbAvail;
  logic [7:0]    rcb_claim;
  logic          rreq_rcb_ok;

  logic          rreq0_rdy;
  logic          rreq0_vld;
  logic  [3:0]   rreq0_chn;
  logic          rreq0_slv;
  logic [31:0]   rreq0_adr;
  logic [9:0]    rreq0_tag;
  logic [15:0]   rreq0_fnc;

  logic          rreq1_rdy;
  logic          rreq1_vld;
  logic  [3:0]   rreq1_chn;
  logic          rreq1_slv;
  logic  [31:0]  rreq1_adr;
  logic  [9:0]   rreq1_tag;
  logic  [15:0]  rreq1_fnc;

  logic [6:0]    slv_rd_credits;

  logic [15:0]   pcie_rq_seq_ret;

  logic [2:0]   tlpsm;
  logic [2:0]   tlpsm512;
  logic [9:0]   beatrem;

  logic         wtlp_req;
  logic [3:0]   wtlp_chn;
  logic         wtlp_hdr_eor;
  logic         wtlp_hdr_rd;
  logic [3:0]   wtlp_seq;

  logic         wtlp_straddle;
  logic [3:0]   wtlp_rd_dat0_cnt_nn1;
  logic [3:0]   wtlp_rd_dat1_cnt_nn1;
  logic         wtlp_hdr_fifo_fl;
  logic         wtlp_hdr_fifo_ep;
  logic         rq_fifo_ep;
  logic         rq_fifo_fl;
} dma_pcie_rq_dbg_t; 

//DBG2 struct
typedef struct  packed {
  logic [9:0]    rsv;
  logic [11:0]   nph_avail;
  logic [10:0]   RcbAvail;
  logic [7:0]    rcb_claim;
  logic          rreq_rcb_ok;

  logic          rreq0_rdy;
  logic          rreq0_vld;
  logic [3:0]    rreq0_chn;
  logic          rreq0_slv;
  logic [31:0]   rreq0_adr;
//logic [9:0]    rreq0_tag;
//logic [15:0]   rreq0_fnc;

  logic rreq1_rdy;
  logic rreq1_vld;
  logic [3:0] rreq1_chn;
  logic rreq1_slv;
  logic [31:0] rreq1_adr;
//logic [9:0]  rreq1_tag;
//logic [15:0] rreq1_fnc;

  logic [6:0]    slv_rd_credits;
  logic [15:0]   pcie_rq_seq_ret;

  logic [2:0]   tlpsm;
  logic [2:0]   tlpsm512;
  logic [9:0]   beatrem;

  logic [2:0]   wtlp_sm;
  logic [3:0]   wrq_chn;
  logic [31:0]  wrq_adr;
  logic [5:0]   wrq_aln;
  logic [10:0]  wrq_dwlen;
  logic [15:0]  wrq_fnc;
  logic         wrq_eor;

  logic wtlp_req;
  logic [3:0] wtlp_chn;
  logic wtlp_hdr_eor;
  logic wtlp_hdr_rd;
  logic [3:0] wtlp_seq;
              
  logic wtlp_straddle;
  logic [3:0] wtlp_rd_dat0_cnt_nn1;
  logic [3:0] wtlp_rd_dat1_cnt_nn1;
  logic wtlp_hdr_fifo_fl;
  logic wtlp_hdr_fifo_ep;
  logic rq_fifo_ep;
  logic rq_fifo_fl;
} dma_pcie_rq_dbg2_t; 

typedef struct packed {
  logic [90:0] rsv;
  logic ld_stg1_2_stg2;
  logic tlp_stg2_sop;
  logic [3:0]  tlp_stg2_sop_loc;
  logic tlp_stg2_eop;
  logic tlp_stg2_nopload;
  logic tlp_stg2_dw_en;
//logic [511:0] tlp_stg2_pload;
  logic [7:0]   tlp_stg2_rc_tag;
  logic [5:0]   tlp_stg2_hdr_addr50;
  logic [12:0]  tlp_stg2_hdr_bytecnt;
  logic tlp_stg2_cfg_tag;
  logic tlp_stg2_hdr_rcmpl;
  logic [2:0]   tlp_stg2_hdr_stat;
  logic tlp_stg2_hdr_poison;
  logic [7:0]   tlp_stg2_hdr_fnc;
  logic tlp_stg2_hdr_error;
  logic tlp_stg2_parityerr;
  logic [4:0]   tlp_stg2_dw_cnt;

  logic dw_tlp_1_sop;
  logic dw_tlp_2_sop;
  logic dw_tlp_3_sop;
  logic dw_tlp_4_sop;
  logic [3:0] dw_tlp_1_sop_ch;
  logic [3:0] dw_tlp_2_sop_ch;
  logic [3:0] dw_tlp_3_sop_ch;
  logic [3:0] dw_tlp_4_sop_ch;
  logic dw_tlp_0_eop;
  logic dw_tlp_1_eop;
  logic dw_tlp_2_eop;
  logic dw_tlp_3_eop;
  logic dw_tlp_4_eop;
  logic [3:0] dw_tlp_0_eidx;
  logic [3:0] dw_tlp_1_eidx;
  logic [3:0] dw_tlp_2_eidx;
  logic [3:0] dw_tlp_3_eidx;
  logic [3:0] dw_tlp_4_eidx;

  logic [3:0] rclp_mem_chn;
  logic [9:0] rclp_tlp_did;
  logic [9:0] rclp_tlp_rid;
  logic rclp_tlp_sop;
  logic rclp_tlp_eop;
  logic [7:0] rclp_tlp_func;
  logic [3:0] rclp_tlp_errc;
  logic rclp_tlp_parityerr;
  logic rclp_cfg_valid;
  logic rclp_err_cmp_vld;
  logic rclp_tlp_tagdone;
  logic [7:0] rclp_tlp_tag;
  logic [9:0] rclp_err_cmp_btrem;
  logic [2:0] rclp_cfg_status;
} dma_pcie_rc_dbg_t;

typedef struct packed {
  logic [206:0] rsv;
  logic [1:0] tag_ep;
  logic [1:0] tag_fl;

  logic       rrq_cancel;
  logic       rrq_vld;
  logic       rrq_rdy;
  logic [3:0] rrq_chn;
  logic [15:0] rrq_fnc;

  logic       wrq_cancel;
  logic       wrq_vld;
  logic [3:0] wrq_chn;
  logic [15:0] wrq_fnc;
} dma_pcie_req_dbg_t;

typedef struct packed {
  logic [31-9:0] rsv;
  logic          dsc_fl;
  logic          dsc_ep;
  logic  [15:0]  dsc_cidx;
  logic  [11:0]  dsc_qid;
  logic  [31:0]  dsc_radr;
  logic  [31:0]  dsc_wadr;
  logic  [27:0]  dsc_len;
  logic          dsc_stp;
  logic          dsc_cpl;
  logic          dsc_eop;
  logic  [7:0]   wrq_sm_cur;
  logic  [6:0]   rrq_sm_cur;
  logic  [5:0]   rrq_entries;
  logic  [5:0]   rrq_rid;
  logic  [11:0]  rrq_qid;
  logic  [15:0]  rrq_idx;
  logic          rrq_vld;
  logic          rcp_vld;
  logic  [5:0]   rcp_rid;
  logic          rcp_eop;
  logic  [4:0]   rcp_errc;
  logic          rcp_err2;
  logic          wrq_vld;
  logic [11:0]   wrq_qid;
  logic [15:0]   wrq_idx;
  logic          wcp_vld;
  logic [5:0]    wcp_rid;
  logic          wcp_any;
  logic          wcp_err;
} dma_rdwr_eng_dbg_t;

typedef struct packed {
  logic [81:0] rsv;
  logic [8:0]  rrq_head_did;
  logic [11:0] rrq_head_len;
  logic [31:0] rrq_head_adr;
  logic [2:0]  rrq_head_chn;
  logic        rrq_head_vld;
  logic        rrq_arb_win;
  logic [7:0]  rrq_arb_winner;
  logic [7:0]  reg_ch_dsc_run;
  logic [7:0]  chn_rrq_pnd;
  logic [7:0]  chn_rrq_0len;
  logic [7:0]  chn_crd_avl;
  logic [7:0]  chn_spc_avl;
  logic [3:0]  rcp_rid;
  logic [8:0]  rcp_did;
  logic        rcp_vld;
  logic [4:0]  rcp_errc;
  logic        rcp_err2;
  logic [31:0] rcp_nxt_adr;
               
  logic [7:0]  dcp_vld;
  logic [7:0]  dcp_rdy;
} xdma_dsc_eng_dbg_t;

typedef struct packed {
  logic [43:0]    rsv;
  tcp_t           tcp_qspc;
  trq_t           trq_qspc;
  tcp_t           tcp;
  trq_t           trq;
} dma_trq_dbg_t;

typedef struct packed {
  logic h2c_inb_conv_in_vld;
  logic h2c_inb_conv_in_rdy;
  logic h2c_seg_in_vld;
  logic h2c_seg_in_rdy;
  logic [3:0] h2c_seg_out_vld;
  logic h2c_seg_out_rdy;
  logic [6:0] h2c_mst_crdt_stat;
  logic c2h_slv_afifo_full;
  logic c2h_slv_afifo_empty;
  logic [3:0] c2h_deseg_seg_vld;
  logic c2h_deseg_seg_rdy;
  logic c2h_deseg_out_vld;
  logic c2h_deseg_out_rdy;
  logic c2h_inb_deconv_out_vld;
  logic c2h_inb_deconv_out_rdy;
  logic [2:0] c2h_wrb_crdt_stat;
  logic [1:0][6:0] byp_out_crdt_stat;
  logic [6:0] tm_dsc_sts_crdt_stat;
  logic [6:0] sts_crdt_stat;
  logic c2h_dsc_crdt_afifo_full;
  logic c2h_dsc_crdt_afifo_empty;
  logic imm_crd_afifo_full;
  logic imm_crd_afifo_empty;
  logic irq_in_afifo_full;
  logic irq_in_afifo_empty;
} dma_mdma_fab_mux_dbg_t;

typedef struct packed {
  logic [3:0][8:0] h2c_mst_crdt_stat;
  logic [3:0][2:0] h2c_byp_in_crdt_stat;
  logic [3:0][2:0] c2h_byp_in_crdt_stat;
  logic irq_in_afifo_full;
  logic irq_in_afifo_empty;
  logic axis_cmp_afifo_full;
  logic axis_cmp_afifo_empty;
} dma_xdma_fab_mux_dbg_t;

typedef struct packed {
  logic [29:0] rsv;
  logic fab_mst_crd_rst;
  logic fab_slv_crd_rls_en;
  logic [7:0]  mgmt_cpl_mst_crdt_stat;
  logic mgmt_req_slv_fifo_full;
  logic mgmt_req_slv_fifo_empty;
  logic [7:0]  vdm_mst_crdt_stat;
  logic cfg_ext_in_afifo_full;
  logic cfg_ext_in_afifo_empty;
  logic cfg_ext_out_afifo_full;
  logic cfg_ext_out_afifo_empty;
  logic c2h_drop_afifo_full;
  logic c2h_drop_afifo_empty;
  logic c2h_pcie_cmp_afifo_full;
  logic c2h_pcie_cmp_afifo_empty;
  logic flr_out_afifo_full;
  logic flr_out_afifo_empty;
  logic flr_in_afifo_full;
  logic flr_in_afifo_empty;
  logic axi_intr_afifo_full;
  logic axi_intr_afifo_empty;
} dma_hard_fab_shim_dbg_t;

typedef struct packed {
  logic [57:0] rsv;
  logic c2h_cmn_afifo_full;
  logic c2h_cmn_afifo_empty;
  logic c2h_byp_in_afifo_full;
  logic c2h_byp_in_afifo_empty;
  logic h2c_byp_in_afifo_full;
  logic h2c_byp_in_afifo_empty;
} dma_fab_mux_tl_slv_dbg_t;

typedef struct packed {
  dma_mdma_fab_mux_dbg_t   mdma_fab_mux_dbg;
  dma_xdma_fab_mux_dbg_t   xdma_fab_mux_dbg;
  dma_hard_fab_shim_dbg_t  hard_fab_shim_dbg;
  dma_fab_mux_tl_slv_dbg_t fab_mux_tl_slv_dbg;
} dma_fab_dbg_t;

typedef union packed {
  dma_trq_dbg_t      dma_trq_dbg;
  dma_pcie_rq_dbg_t  dma_pcie_rq_dbg;
  dma_pcie_rq_dbg2_t dma_pcie_rq_dbg2;
  dma_pcie_rc_dbg_t  dma_pcie_rc_dbg;
  dma_pcie_req_dbg_t dma_pcie_req_dbg;
  dma_rdwr_eng_dbg_t dma_rdwr_eng_dbg;
  xdma_dsc_eng_dbg_t xdma_dsc_eng_dbg;          
  udma_dsc_eng_dbg_t udma_dsc_eng_dbg;          
  udma_dsc_reg_dbg_t udma_dsc_reg_dbg;          
  dma_fab_dbg_t      dma_fab_dbg;
  logic [255:0]      dma_debug;
} dma_debug_t;
  
localparam DMA_RDWR_ENG_DBG_SIZE = $bits(dma_rdwr_eng_dbg_t);
localparam DSC_ENG_DBG_SIZE = $bits(udma_dsc_eng_dbg_t);
localparam DSC_REG_DBG_SIZE = $bits(udma_dsc_reg_dbg_t);
localparam DMA_PCIE_RQ_DBG_SIZE = $bits(dma_pcie_rq_dbg_t);
localparam DMA_PCIE_RQ_DBG2_SIZE = $bits(dma_pcie_rq_dbg2_t);
localparam DMA_PCIE_REQ_DBG_SIZE = $bits(dma_pcie_req_dbg_t);
localparam DMA_PCIE_RC_DBG_SIZE = $bits(dma_pcie_rc_dbg_t);
localparam DMA_TRQ_DBG_SIZE     = $bits(dma_trq_dbg_t);
localparam DMA_FAB_DBG_SIZE     = $bits(dma_fab_dbg_t);
`endif
