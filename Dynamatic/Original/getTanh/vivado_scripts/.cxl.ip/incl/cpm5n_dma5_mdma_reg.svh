`ifndef CPM5N_CDX5N_DMA5_MDMA_REG_SVH
`define CPM5N_CDX5N_DMA5_MDMA_REG_SVH

`include "cpm5n_dma5_mdma_defines.svh"
`include "cpm5n_dma5_defines.svh"

typedef enum logic [4:0]{
  MDMA_TRQ_SEL_UNMAPPED=0,
  DMA_TRQ_SEL_GLBL1,
  DMA_TRQ_SEL_GLBL2,
  MDMA_TRQ_SEL_GLBL,
  MDMA_TRQ_SEL_DSC,
  MDMA_TRQ_SEL_FMAP,
  MDMA_TRQ_SEL_IRQ,
  MDMA_TRQ_SEL_IND,
  MDMA_TRQ_SEL_C2H,
  MDMA_TRQ_SEL_H2C,
  MDMA_TRQ_SEL_C2H_2,
  CDM_TRQ_SEL_CSI,
  CDM_TRQ_SEL_RFAB,
  CDM_TRQ_SEL_M2ST,
  CDM_TRQ_SEL_ST2M,
  CDM_TRQ_SEL_M2M,
  CDM_TRQ_SEL_MSGLD,
  CDM_TRQ_SEL_MSGST,
  CDM_TRQ_SEL_PROT,
  CDM_TRQ_SEL_TDBG, // Telemetry and debug
  MDMA_TRQ_SEL_QUEUE
} mdma_dmap_sel_e;

  typedef logic [3:0] qdm_vc_t;

  // QDMA Register space definition/*{{{*/
  // Only QDMA specific registers will go under this section.

  // Global Register Space
  localparam DMA_CMN_GLBL1_START_A    = 32'h0;
  localparam DMA_CMN_GLBL1_SIZE       = 256;
  localparam DMA_CMN_GLBL1_ABITS      = $clog2(DMA_CMN_GLBL1_SIZE);

  localparam DMA_CMN_GLBL2_START_A    = DMA_CMN_GLBL1_START_A + DMA_CMN_GLBL1_SIZE;
  localparam DMA_CMN_GLBL2_SIZE       = 256;
  localparam DMA_CMN_GLBL2_ABITS      = $clog2(DMA_CMN_GLBL2_SIZE);

  localparam MDMA_CMN_GLBL_START_A    = DMA_CMN_GLBL2_START_A + DMA_CMN_GLBL2_SIZE;
  localparam MDMA_CMN_GLBL_SIZE       = 256;
  localparam MDMA_CMN_GLBL_ABITS      = $clog2(MDMA_CMN_GLBL_SIZE);

  // Descriptor Engine Register Space
  localparam MDMA_CMN_DSC_START_A     = MDMA_CMN_GLBL_START_A + MDMA_CMN_GLBL_SIZE;
  localparam MDMA_CMN_DSC_SIZE        = 256;
  localparam MDMA_CMN_DSC_ABITS       = $clog2(MDMA_CMN_DSC_SIZE);

  // Function Mapping Ram
  // FIXME: Remove.
  localparam MDMA_CMN_FMAP_START_A    = MDMA_CMN_DSC_START_A + MDMA_CMN_DSC_SIZE;
  localparam MDMA_CMN_FMAP_SIZE       = 256 * 4;
  localparam MDMA_CMN_FMAP_ABITS      = $clog2(MDMA_CMN_FMAP_SIZE);

  // Indirect Interface Registers
  // QDMA only
  localparam [31:0] MDMA_CMN_IND_START_A=MDMA_CMN_FMAP_START_A + MDMA_CMN_FMAP_SIZE;
  localparam [31:0] MDMA_CMN_IND_SIZE   =512;
  localparam [31:0] MDMA_CMN_IND_ABITS  =$clog2(MDMA_CMN_IND_SIZE);

  //Debug registers and PFCH specific configurations will go under here
  localparam MDMA_CMN_C2H_START_A       = MDMA_CMN_IND_START_A+MDMA_CMN_IND_SIZE;
  localparam MDMA_CMN_C2H_SIZE          = 512;
  localparam MDMA_CMN_C2H_ABITS         = $clog2(MDMA_CMN_C2H_SIZE);
  //FIXME: Remove or relocate to CDM
  localparam MDMA_CMN_IRQ_START_A       = MDMA_CMN_C2H_START_A+MDMA_CMN_C2H_SIZE;
  localparam MDMA_CMN_IRQ_SIZE          = 512;
  localparam MDMA_CMN_IRQ_ABITS         = $clog2(MDMA_CMN_IRQ_SIZE);

  //FIXME: No QDMA specific registers here. Move the throttle registers to CDM M2ST
  localparam MDMA_CMN_H2C_START_A       = MDMA_CMN_IRQ_START_A+MDMA_CMN_IRQ_SIZE;
  localparam MDMA_CMN_H2C_SIZE          = 512;
  localparam MDMA_CMN_H2C_ABITS         = $clog2(MDMA_CMN_H2C_SIZE);


  //localparam MDMA_CMN_MISC_START_A      = MDMA_CMN_H2C_START_A+MDMA_CMN_H2C_SIZE;
  //localparam MDMA_CMN_MISC_SIZE         = 512;

  //Applicable for both VF and PF
  //Depending on the requirement BAR size support only 4K
  //Queue address offset H2C - qid*16, C2H - qid*16+8 and WRB - qid*16+12

  // Direct mapped queue registers
  // 2k queues
  /// enum this
  //   0  INT CIDX   - software interrupt consumer index
  //   1  H2C PIDX   - software descriptor ring producer index
  //   2  C2H PIDX   - software descriptor ring producer index
  //   3  C2H WRB    - software writeback ring consumer index

  //  QID encoded in trq.addr[19:4]
  //  Reg offset encoded in trq.addr[3:0]

  // NOTE: Highjack MSIX for C2H as it is not used anymore.
  //
  //FIXME: Debug registers and PFCH specific configurations will go under here
  localparam MDMA_CMN_C2H_2_START_A       = MDMA_CMN_H2C_START_A + MDMA_CMN_H2C_SIZE;
  localparam MDMA_CMN_C2H_2_SIZE          = 4096;
  localparam MDMA_CMN_C2H_2_ABITS         = $clog2(MDMA_CMN_C2H_2_SIZE);

  localparam MDMA_REG_ADR_BITS          = 16;        // Support up to 64K of address space for all registers.
  localparam MDMA_UNIMP_REG_CMP         = 32'h0;

  localparam MDMA_MAX_IND_PF_SETS = 4;       // Max number of indirect register sets for PCIe
  localparam MDMA_MAX_IND_AXS     = MDMA_MAX_IND_PF_SETS+ 2;

  `define MDMA_MAX_CTXT_REG 8

  localparam MDMA_MAX_CTXT_REG= `MDMA_MAX_CTXT_REG;
  localparam MDMA_MAX_IND_SZ=16;

  localparam MDMA_REG_UNAMPPED_RDAT=32'h0;

  typedef logic [31:0] mdma_csr_data_t;
  localparam MDMA_CSR_DATA_SIZE = $bits(mdma_csr_data_t);

  //---------------------------------------------------------------------
  // Global register space.
  typedef logic [MDMA_CMN_GLBL_ABITS:2] mdma_glbl_csr_addr_t;

  typedef enum mdma_glbl_csr_addr_t {
    MDMA_GLBL_REG_A             = 'h0,
    MDMA_GLBL_RNG_SZ_A[16]      = 'h1,  // 0x1 - 0x10
    MDMA_GLBL_SCRATCH_A         = 'h11, // 0x11

    MDMA_GLBL_DSC_CFG_A         = 'h14, // Leave here to avoid programming changes

    MDMA_GLBL_TRQ_TIMEOUT_CFG_A = 'h18,
    MDMA_GLBL_TRQ_ERR_STS_A     = 'h19,
    MDMA_GLBL_TRQ_ERR_MSK_A     = 'h1a,
    MDMA_GLBL_TRQ_ERR_LOG_A     = 'h1b,
    MDMA_GLBL_QSPC_ERR_LOG_A    = 'h1c,
    MDMA_GLBL_TRQ_FAT_ERR_STS   = 'h1d,
    MDMA_GLBL_TRQ_FAT_ERR_MSK   = 'h1e,
    MDMA_GLBL_TRQ_FAT_ERR_CONTAIN = 'h1f,

    MDMA_GLBL_NFAT_EVT_STAT_A   = 'h20,
    MDMA_GLBL_NFAT_EVT_MASK_A   = 'h21,
    MDMA_GLBL_FAT_EVT_STAT_A    = 'h22,
    MDMA_GLBL_FAT_EVT_MASK_A    = 'h23,

    MDMA_GLBL_PSX_ADMIN_QID0    = 'h26,
    MDMA_GLBL_PSX_ADMIN_QID1    = 'h27,
    MDMA_GLBL_PSX_ADMIN_QID2    = 'h28,
    MDMA_GLBL_PSX_ADMIN_QID3    = 'h29,

    MDMA_GLBL_INTERRUPT_CFG     = 'h31,
    MDMA_GLBL_LGCY_ASSERT_CNT_A[5]     // 0x32 - 0x36
    // CMN_GLBL_END 'h3f
  } mdma_glbl_csr_addr_e;

  // Fixes for TB
  localparam MDMA_GLBL_DBG_CFG = 'h20;
  localparam MDMA_GLBL_DBG_REG0 = 'h21;
  localparam MDMA_GLBL_HOST_ID_A0 = 'h32;
  localparam MDMA_GLBL_FAB_ERR_LOG_A = 'h45;

  typedef struct packed {
    logic [23:0] rsv;
    logic [3:0]  field1;
    logic [3:0]  field2;
  } mdma_glbl_eg_reg_t;

  typedef struct packed {
    logic   [31:0] scratch;
  } mdma_glbl_scratch_t;

  typedef struct packed {
    logic [29:0] rsvd;
    logic lgcy_intr_pending;   // 1'b1: pending legacy interrupt; 1'b0: no pending legacy interrupt
    logic en_lgcy_intr;        // 1'b1: enable the legacy interrupt; 1'b0: disable the legacy interrupt
  } mdma_glbl_interrupt_cfg_t;

  typedef logic [3:0] mdma_reg_virt_ch_t;

  typedef struct packed {
    logic [31:28]      rsv;             // Reserved
    mdma_reg_virt_ch_t vch_h2c_mm;    // H2C MM source virtual channel, 1'b1: AXIMM, 1'b0: PCIE
    mdma_reg_virt_ch_t vch_h2c_st;      // H2C ST source virtual channel, 1'b1: AXIMM, 1'b0: PCIE
    mdma_reg_virt_ch_t vch_dsc;         // Descriptor fetch and H2C/MM Writeback Virtual channel, 1'b1: AXIMM, 1'b0: PCIE
    mdma_reg_virt_ch_t vch_int_msg;     // Interrupt message write destination virtual channel, 1'b1: AXIMM, 1'b0: PCIE
    mdma_reg_virt_ch_t vch_int_aggr;    // Interrrupt aggregation write destination virtual channel, 1'b1: AXIMM, 1'b0: PCIE
    mdma_reg_virt_ch_t vch_cmpt;        // CMPT Engine write destination virtual channel, 1'b1: AXIMM, 1'b0: PCIE
    mdma_reg_virt_ch_t vch_c2h_payload; // C2H ST payload write destination virtual channel, 1'b1: AXIMM, 1'b0: PCIE
  } mdma_glbl_host_id_t;   // registers.  Also ind.data[0]

  typedef struct packed {
    logic [31-$bits(mdma_host_id_t):0] rsv; // Reserved
    mdma_host_id_t bdg_host_id; // Host_id for bridge
  } mdma_glbl_bdg_host_id_t;

  typedef struct packed {
    logic  [15:0] rsv;    // Reserved
    logic  [15:0] rng_sz; // Ring size (includes writeback location)
  } mdma_glbl_rng_sz_t;

  typedef struct packed {
    logic [$bits(mdma_csr_data_t)- MDMA_MAX_IND_AXS -1:0] rsvd;
    logic [MDMA_MAX_IND_AXS-1:0] ctxt_cmd_err;
  } mdma_ind_err_status_t;

  typedef struct packed {
    logic [31:9] rsvd; // 9-31
    logic err_csi;     // 8
    logic err_rfab;    // 7
    logic err_msgst;   // 6
    logic err_cmpt;    // 5
    logic err_h2c_st;  // 4
    logic err_c2h_st;  // 3
    logic err_mm;      // 2
    logic err_trq;     // 1
    logic err_dsc;     // 0
  } mdma_glbl_err_t;


  // TRQ error types:
  // 0: unmapped region
  // 1: rsvd
  // 2: error response from other blocks
  // 3: timeout
  // QSPC error types:
  // 0: address outside of valid address region
  // 1: no matching pcie cfg entry
  // 2: out of bounds QID after FMAP read
  // 3: timeout

  // TRQ Access Error Log
  typedef struct packed {
    logic [2:0]  rsv;
    logic vld;
    logic [1:0] errc;
    logic is_wr; // 0 indicates read, 1 indicates write
    logic [24:0] adr;
  } mdma_trq_err_log_t;

  typedef struct packed {
    logic dat;  // Data to return for Timeout
    logic rsp;  // Set to 1 to enable error response
    logic [4:0] exp; // Exponential TRQ timeout value
  } trq_timeout_reg_t;

  // Global Admin QID Ranges - used for C2H, H2C, M2M
  typedef struct packed {
    logic [13:0] qid_cnt;  // Number of qid's in range. Set to 0 to disable range
    logic [12:0] qid_base; // Start offset for qid range
  } mdma_glbl_qid_admin_t;

  //---------------------------------------------------------------------
  // Descriptor Engine Register Space
  typedef logic [MDMA_CMN_DSC_ABITS:2] mdma_dsc_csr_addr_t;

  typedef enum mdma_dsc_csr_addr_t {
    MDMA_GLBL_DSC_ERR_STS_A   = 'h10,   // 0x10
    MDMA_GLBL_DSC_ERR_MSK_A   = 'h11,   // 0x11
    MDMA_GLBL_DSC_ERR_LOG0_A  = 'h12,   // 0x12
    MDMA_GLBL_DSC_ERR_LOG1_A  = 'h13,   // 0x13
    MDMA_GLBL_DSC_DBG_DAT0_A  = 'h14,   // 0x14
    MDMA_GLBL_DSC_DBG_DAT1_A  = 'h15,   // 0x15
    MDMA_GLBL_DSC_DBG_CTL_A   = 'h16,   // 0x16
    MDMA_GLBL_DSC_ERR_LOG2_A  = 'h17,   // 0x17

    MDMA_GLBL_DSC_CHNL_MAP0  = 'h20,   // 0x20
    MDMA_GLBL_DSC_CHNL_MAP1  = 'h21,   // 0x21
    MDMA_GLBL_DSC_ENG_A      = 'h22,   // 0x22
    MDMA_GLBL_DSC_ENG_B      = 'h23,   // 0x22
    MDMA_DSC_ENG_CRDIF_A     = 'h24,   // 0x23
    MDMA_DSC_ENG_CRDIF_B     = 'h25,   // 0x24
    MDMA_DSC_ENG_CRDIF_C     = 'h26,   // 0x25
    MDMA_DSC_ENG_H2C_INT_THROTTLE_A = 'h27,
    MDMA_DSC_ENG_H2C_INT_THROTTLE_B = 'h28,
    MDMA_DSC_ENG_MM_INT_THROTTLE_A  = 'h29,
    MDMA_DSC_ENG_MM_INT_THROTTLE_B  = 'h2A,
    MDMA_DSC_RCP_SCHED_CRDT_A = 'h2B,
    MDMA_DSC_RCP_SCHED_CRDT_B = 'h2C,
    MDMA_DSC_RCP_SCHED_CRDT_C = 'h2D,
    MDMA_DSC_LAT_CTL = 'h2E
  //CMN_DSC_END 'h3f
  } mdma_dsc_csr_addr_e;


  typedef struct packed {
    logic vld;
    logic sel;
    logic [29:24] rsv;
    logic [23:0]  qid;
  } mdma_glbl_dsc_err_log0_t;

  typedef struct packed {
    logic [31:28] rsv1;
    logic [15:0]  cidx;
    logic [11:9]  rsv0;
    logic [3:0]   sub;  // Error subtype for dsc use errors
    logic [4:0]   err;
  } mdma_glbl_dsc_err_log1_t;

  typedef struct packed {
    logic [31:16] pidx_old;
    logic [15:0]  pidx_new;
  } mdma_glbl_dsc_err_log2_t;

  // DSC Engine Error Status
  typedef struct packed {
    logic [31:0] sts;
  } mdma_glbl_dsc_err_sts_t;

  // DSC Engine Error Mask
  typedef struct packed {
    logic [31:0] msk;
  } mdma_glbl_dsc_err_msk_t;

  typedef struct packed {
    logic [31:30]   rsv1; // Reserved
    logic [1:0][9:0] ch_uodsc_limit; // Throttle non strictly ordered descriptor fetches (i.e.  non-fence,non virtio)
                      // when the dsc fetch oustanding exceeds 16*ch_uodsc_limit.  [0] for H2C, [1] for C2H
                      // Value of 0x0 disables the limit
    logic unc_ovr_cor;  // Uncorrectable log overwrite correctable
    logic ctxt_fer_dis; // Log both dsc and dma error bit in context, not just first
    logic rsv0;
    logic wb_all; // All dsc get writeback
    logic [2:0] max_dsc_fetch; // Max nuber of descriptors to fetch in one request.  8 * 2^val // Max value is 6
    logic [2:0] wb_acc_int;    // Writeback interval.  Interval in descriptors = 2^(val+1)   // Disable via queue context
  } mdma_glbl_dsc_cfg_t;

  //---------------------------------------------------------------------
  // Direct Mapped Queue Registers Space

  typedef enum logic [3:0]{
    MDMA_DMAP_SEL_INT_CIDX=0 , MDMA_DMAP_SEL_UNMAPPED=4, MDMA_DMAP_SEL_DSC_PIDX=8, MDMA_DMAP_SEL_WRB_CIDX=12
  } mdma_dmapq_sel_e;

  // This struct needs to be 32b. Add padding if needed.
  typedef struct packed {
    logic [2:0] pad;
    logic en_int;
    logic en_std;
    mdma_c2h_wrb_trig_mode_e trig_mode;
    mdma_wrb_timer_th_ix_t timer_ix;
    mdma_wrb_cnt_th_ix_t cnt_ix;
    mdma_qidx_t sw_cidx;
  } mdma_dyn_wrb_ptr_upd_t;


  //---------------------------------------------------------------------
  // Indirect context register space.

  typedef logic [MDMA_CMN_C2H_ABITS:2] mdma_c2h_csr_addr_t;
  typedef logic [MDMA_CMN_C2H_2_ABITS:2] mdma_c2h_csr2_addr_t;

  typedef enum mdma_c2h_csr_addr_t {
    MDMA_IND_CONTROL_A=0, MDMA_IND_CTXT_DATA_A[`MDMA_MAX_CTXT_REG], MDMA_IND_CTXT_MASK_A[`MDMA_MAX_CTXT_REG], MDMA_IND_CTXT_CMD_A
  } mdma_ind_csr_addr_e;

  //typedef enum logic [1:0] {
  //    MDMA_CTXT_CMD_CLR=0, MDMA_CTXT_CMD_WR, MDMA_CTXT_CMD_RD, MDMA_CTXT_CMD_INV
  //} mdma_ind_ctxt_cmd_e;

  typedef enum logic [3:0]{
    MDMA_CTXT_SEL_DSC_SW_C2H,   // 0x0
    MDMA_CTXT_SEL_DSC_SW_H2C,   // 0x1 - Reserved
    MDMA_CTXT_SEL_DSC_HW_C2H,   // 0x2
    MDMA_CTXT_SEL_DSC_HW_H2C,   // 0x3 - Reserved
    MDMA_CTXT_SEL_DSC_CR_C2H,   // 0x4
    MDMA_CTXT_SEL_DSC_CR_H2C,   // 0x5 - Reserved
    MDMA_CTXT_SEL_WRB,          // 0x6
    MDMA_CTXT_SEL_PFTCH,        // 0x7
    MDMA_CTXT_SEL_INT_COAL,     // 0x8
    MDMA_CTXT_SEL_FMAP_CFG,     // 0x9
    MDMA_CTXT_SEL_M2M,          // 0xA
    MDMA_CTXT_SEL_TIMER,        // 0xB
    MDMA_CTXT_SEL_FMAP,         // 0xC
    MDMA_CTXT_SEL_FNC_STS,      // 0xD
    MDMA_CTXT_SEL_C2H_DROP,     // 0xE
    MDMA_CTXT_SEL_CSI_PROFILE   // 0xF
  } mdma_ind_ctxt_sel_e;

  // leave old selections for TB usage
  localparam MDMA_CTXT_SEL_PASID_RAM_HIGH = 4'ha;
  localparam MDMA_CTXT_SEL_HOST_PROFILE   = 4'ha;
  typedef struct packed {
    logic [$bits(mdma_csr_data_t)-$bits(mdma_qid_max_t)-$bits(mdma_ind_ctxt_cmd_e)-$bits(mdma_ind_ctxt_sel_e)-1 -1 :0] pad;
    mdma_qid_max_t qid;
    mdma_ind_ctxt_cmd_e op;
    mdma_ind_ctxt_sel_e sel;
    // Writes will be dropped when busy=1.
    logic busy;
  } mdma_ind_ctxt_cmd_t;

  typedef struct packed {
    mdma_csr_data_t [MDMA_MAX_CTXT_REG-1:0] data;
    mdma_csr_data_t [MDMA_MAX_CTXT_REG-1:0] mask;
    mdma_ind_ctxt_cmd_t cmd;
    logic valid;
  } mdma_ctxt_rqif_t;

  typedef struct packed {
    mdma_csr_data_t [MDMA_MAX_CTXT_REG-1:0] data;
    logic valid;
  } mdma_ctxt_cpif_t;

  // Indirect Registers
  typedef struct packed {
    logic   [15:0]          crd_rcv;
  } mdma_dsc_crd_rcv_t;

  typedef struct packed {
    logic sw_db;          // Software doorbell
    logic hw_db;          // Hardware issued a doorbell to read the virtio flags
    logic reserved;       // reserverd
    logic vio_idx_req;    // Virtio idx fetch requested.
    logic [4:0] fetch_pnd;// Fetch pending set when dscf fetch initiated, clear when rcp evt is processed.
    logic evt_pnd;        // Event pending  set if ctxt needs to be analyzed again later to check for freed resource (irq_fifo_fl, imm wbk full....?)
    logic idl_stp_b;      // Queue invalid and no descriptors pending
    logic dsc_pnd;        // Descriptors pending      set when dscf fetch initiated, clear when wbc cidx == pidx
    logic [6:0]  wb_acc;  // Writeback accumulation count
    logic qinv_req;       // Qinvalidate is required for this queue.
    logic [15:0] crd_use;
    logic [15:0] cidx;
  } mdma_dsc_hw_ctxt_t;

   typedef struct packed {
    logic [15:0]            crd_rcv;
   } mdma_ind_crd_t;

   typedef enum logic [3:0] {
    CDM_CLIENT_CDM_FAB0 = 4'h0,
    CDM_CLIENT_CDM_FAB1 = 4'h1,
    CDM_CLIENT_CDM_DPU0 = 4'h2,
    CDM_CLIENT_CDM_DPU1 = 4'h3,
    CDM_CLIENT_QDMA_FAB0 = 4'h8,
    CDM_CLIENT_QDMA_FAB1 = 4'h9,
    CDM_CLIENT_QDMA_DMAC = 4'hA,
    CDM_CLIENT_MM_INTERNAL = 4'hB,
    CDM_CLIENT_C2H_ST_INTERNAL = 4'hC,
    CDM_CLIENT_C2H_AVAIL_RING = 4'hD,
    CDM_CLIENT_H2C_ST_INTERNAL = 4'hE
   } cdm_client_id_t;

   typedef logic [4:0] cdx_qdm_csi_prof_id_t;
   typedef logic [3:0] cdx_int_prof_id_t;
   typedef logic [5:0] cdm_rd_chan_id_t;

   typedef struct packed {
     logic intr_asserted;
     logic oneshot_en;
     cdm_rd_chan_id_t rc_id;
     logic infer_mem_spc;
     cdx_int_prof_id_t cdx_int_prof_id;
     logic c2h_st;
     csi_tph_t tph;
     cdx_qdm_csi_prof_id_t qdm_csi_prof_id;
     cdm_client_id_t client_id;
     logic [63:0] virtio_dsc_base; // Base address for fetch_imm
     logic pasid_en;
     logic [19:0] pasid;
     logic  irq_byp;    // Descriptor engine will remember if irq could not be sent in bypass mode and resend later. CIDX on delayed interrupt will be -1.  User must get last processed CIDX from status descriptor.
     logic  virtio_en;  // Enable Virtio Mode.  spare.vio_en attribute must be enabled as well.
     logic  dis_intr_on_vf; // Disable interrupt with VF
     logic  int_aggr;   // Indirect (1) or direct interrupt (0)
     mdma_int_vec_id_t vec; // MSIX vector for this queue. FIXME: Use 16b VEC for DSC CTXT in CDX
     logic [63:0] dsc_base;
     logic irq_req; // Interrupt required to be sent (waiting for arm)
     logic err_wb_sent;
     logic [1:0] err; //  bit[1] dma error, bit[0] dsc error
     logic irq_no_last; // No interrupt was sent and pidx/cidx was idle due to already pending irq  // 1 VAR-RO
     logic irq_en; // Send interrupt on writeback/irq check        // 1
     logic wbk_en; // Send writeback on writeback/irq check        // 1
     logic [2:0] dsc_sz; // Descriptor size.  0:2, 1:4, 2: 8B, 3: 16B; 4: 32B; 5: 64B; 6:128B, 7:256B // 3
     logic [3:0] rng_sz; // Ring size select                             // 4
     logic err_irq_snt;
     logic f_in_order; // Enbable F_IN_ORDER .  affects only detection of pidx overflow
     logic dis_qinv_on_err;
     logic [3:0] fetch_max; // Max number of fetches outstanding.  0 = 1 outstanding, etc.
     logic at;  // Address type of ring 0: untranslated, 1: translated
     logic wbi_intvl_en; // Write back/Interrupt after accumulation // 1
     logic wbi_chk;    // Writeback/Interrupt after pending check // 1
     logic fcrd_en;   // Enable fetch credits // 1
     logic qen;      // queue enable         // 1
     mdma_fnid_t fnc; // Function
     logic irq_arm;
     logic [15:0] pidx;
   } mdma_ind_dsc_t;

  //---------------------------------------------------------------------
  // Indirect C2H register space.
  `define MDMA_MAX_TRIG_TIMER_VAL 16
  `define MDMA_MAX_TRIG_CNT_VAL   16
  `define MDMA_MAX_BUF_SIZE_VAL   16
  localparam MDMA_MAX_TRIG_TIMER_VAL = `MDMA_MAX_TRIG_TIMER_VAL; // (VCS bug) (1 << $bits(mdma_wrb_timer_th_ix_t));
  localparam MDMA_MAX_TRIG_CNT_VAL   = `MDMA_MAX_TRIG_CNT_VAL;   // (VCS bug) (1 << $bits(mdma_wrb_timer_th_ix_t));
  localparam MDMA_MAX_BUF_SIZE_VAL = `MDMA_MAX_BUF_SIZE_VAL;

  typedef logic [MDMA_CMN_IND_ABITS:2] mdma_ind_csr_addr_t;
  typedef enum mdma_c2h_csr_addr_t {
    MDMA_C2H_TIMER_CNT[`MDMA_MAX_TRIG_TIMER_VAL], // 0x0 - 0xf
    MDMA_C2H_CNT_TH[`MDMA_MAX_TRIG_CNT_VAL], // 0x10 - 0x1f
    MDMA_C2H_PFCH_CFG_1,                // 0x20
    MDMA_C2H_PFCH_CFG_2,                // 0x21
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED,  // 0x22
    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED,  // 0x23
    MDMA_C2H_STAT_DESC_RSP_PKT_ACCEPTED,// 0x24
    MDMA_C2H_STAT_WCP_VLD,              // 0x25
    MDMA_C2H_STAT_DESC_RSP_ACCEPTED,    // 0x26
    MDMA_C2H_STAT_WRQ_OUT,              // 0x27
    MDMA_C2H_STAT_DEBUG_DMA_ENG,        // 0x28
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH0,    // 0x29
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH0_1,  // 0x2a
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH1,    // 0x2b
    MDMA_C2H_BUF_SZ[`MDMA_MAX_BUF_SIZE_VAL], // 0x2c - 0x3b
    MDMA_C2H_ERR_STAT,                   // 0x3c
    MDMA_C2H_ERR_MASK,                   // 0x3d
    MDMA_C2H_FATAL_ERR_STAT,             // 0x3e
    MDMA_C2H_FATAL_ERR_MASK,             // 0x3f
    MDMA_C2H_FATAL_ERR_CONTAIN_MASK,     // 0x40
    MDMA_C2H_ERR_INT,                    // 0x41
    MDMA_C2H_PFCH_CFG,                   // 0x42
    MDMA_C2H_INT_TIMER_TICK,             // 0x43
    MDMA_C2H_STAT_DESC_RSP_DROP_ACCEPTED,// 0x44
    MDMA_C2H_STAT_DESC_RSP_ERR_ACCEPTED, // 0x45
    MDMA_C2H_STAT_DESC_REQ,              // 0x46
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH1_1,   // 0x47
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH2,     // 0x48
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH2_1,   // 0x49
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH3,     // 0x4a
    MDMA_C2H_INTR_MSIX,                  // 0x4b
    MDMA_C2H_FIRST_ERR_QID,              // 0x4c
    MDMA_STAT_NUM_WRB_IN,                // 0x4d
    MDMA_STAT_NUM_WRB_OUT,               // 0x4e
    MDMA_STAT_NUM_WRB_DRP,               // 0x4f
    MDMA_STAT_NUM_STAT_DESC_OUT,         // 0x50
    MDMA_STAT_NUM_DSC_CRDT_SENT,         // 0x51
    MDMA_STAT_NUM_FCH_DSC_RCVD,          // 0x52
    MDMA_STAT_NUM_BYP_DSC_RCVD,          // 0x53
    MDMA_C2H_WRB_COAL_CFG,               // 0x54
    MDMA_C2H_INTR_H2C_REQ,               // 0x55
    MDMA_C2H_INTR_C2H_MM_REQ,            // 0x56
    MDMA_C2H_INTR_ERR_INT_REQ,           // 0x57
    MDMA_C2H_INTR_C2H_ST_REQ,            // 0x58
    MDMA_C2H_INTR_H2C_ERR_C2H_MM_MSIX_ACK,   // 0x59
    MDMA_C2H_INTR_H2C_ERR_C2H_MM_MSIX_FAIL,  // 0x5a
    MDMA_C2H_INTR_H2C_ERR_C2H_MM_NO_MSIX,    // 0x5b
    MDMA_C2H_INTR_H2C_ERR_C2H_MM_CTXT_INVAL, // 0x5c
    MDMA_C2H_INTR_C2H_ST_MSIX_ACK,       // 0x5d
    MDMA_C2H_INTR_C2H_ST_MSIX_FAIL,      // 0x5e
    MDMA_C2H_INTR_C2H_ST_NO_MSIX,        // 0x5f
    MDMA_C2H_INTR_C2H_ST_CTXT_INVAL,     // 0x60
    MDMA_C2H_STAT_PCIE_CMP,              // 0x61
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH3_1,   // 0x62
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH4,     // 0x63
    MDMA_C2H_DBG_PFCH_QID,               // 0x64
    MDMA_C2H_DBG_PFCH,                   // 0x65
    MDMA_C2H_INT_DEBUG,                  // 0x66
    MDMA_C2H_STAT_IMM_ACCEPTED,          // 0x67
    MDMA_C2H_STAT_MARKER_ACCEPTED,       // 0x68
    MDMA_C2H_STAT_DISABLE_CMP_ACCEPTED,  // 0x69
    MDMA_C2H_PAYLOAD_FIFO_CRDT_CNT,      // 0x6a
    MDMA_C2H_INTR_DYN_REQ,               // 0x6b
    MDMA_C2H_INTR_DYN_MSIX,              // 0x6c
    MDMA_DROP_LEN_MISMATCH,              // 0x6d
    MDMA_DROP_DESC_RSP_LEN,              // 0x6e
    MDMA_DROP_QID_FIFO_LEN,              // 0x6f
    MDMA_DROP_PAYLOAD_CNT,               // 0x70
    MDMA_C2H_CMPT_FORMAT_0,              // 0x71
    MDMA_C2H_CMPT_FORMAT_1,              // 0x72
    MDMA_C2H_CMPT_FORMAT_2,              // 0x73
    MDMA_C2H_CMPT_FORMAT_3,              // 0x74
    MDMA_C2H_CMPT_FORMAT_4,              // 0x75
    MDMA_C2H_CMPT_FORMAT_5,              // 0x76
    MDMA_C2H_CMPT_FORMAT_6,              // 0x77
    MDMA_C2H_PFCH_CACHE_DEPTH,           // 0x78
    MDMA_C2H_WRB_COAL_BUF_DEPTH,         // 0x79
    MDMA_C2H_PFCH_CRDT,                  // 0x7a
    MDMA_C2H_STAT_HAS_CMPT_ACCEPTED,     // 0x7b
    MDMA_C2H_STAT_HAS_PLD_ACCEPTED,      // 0x7c
    MDMA_C2H_PLD_PKT_ID,                 // 0x7d
    MDMA_C2H_PLD_PKT_ID_1,               // 0x7e
    MDMA_DROP_PAYLOAD_CNT_1              // 0x7f
    // Max = 'h7f
  } mdma_c2h_csr_addr_e;

  `define MDMA_MAX_WATER_MARK_VAL 16

  typedef enum mdma_c2h_csr2_addr_t {
    MDMA_C2H_CRDT_COAL_CFG_1, // 0x0
    MDMA_C2H_CRDT_COAL_CFG_2, // 0x1
    MDMA_C2H_PFCH_BYP_QID,    // no longer used for CDX
    MDMA_C2H_PFCH_BYP_TAG,    // no longer used for CDX
    MDMA_C2H_WATER_MARK[`MDMA_MAX_WATER_MARK_VAL],  // 0x4 - 0x13
    MDMA_C2H_NOTIFY_EMPTY,                  // 0x14
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_1,    // 0x15
    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED_FAB0, // 0x16
    MDMA_C2H_STAT_DESC_RSP_PKT_ACCEPTED_1,  // 0x17
    MDMA_C2H_STAT_AXIS_PKG_CMP_1,           // 0x18
    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED_FAB1, // 0x19
    MDMA_C2H_ST_PAYLOAD_FIFO_DEPTH,         // 0x1a
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH4_1,      // 0x1b
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH5,        // 0x1c
    MDMA_C2H_STAT_PCIE_CMP_1,               // 0x1d

    MDMA_CMPT_CFG_0,         // 0x1e
    MDMA_CMPT_NFAT_ERR_STAT, // 0x1f
    MDMA_CMPT_NFAT_ERR_MASK, // 0x20
    MDMA_CMPT_FST_NFAT_ERR,  // 0x21
    MDMA_CMPT_FAT_ERR_STAT,  // 0x22
    MDMA_CMPT_FAT_ERR_MASK,  // 0x23

    CDX_C2H_VC_TO_CLIENT,    // 0x24
    CDX_ST2M_CLIENT_TO_VC,   // 0x25

    MDMA_C2H_PFCH_CFG_3,     // 0x26
    MDMA_C2H_CMPT_CFG_0,     // 0x27
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH5_1,  // 0x28
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH6,    // 0x29
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH6_1,  // 0x2a
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH7,    // 0x2b
    MDMA_C2H_STAT_DEBUG_DMA_ENG_CH7_1,  // 0x2c

    MDMA_C2H_SCHED_CHNL_CFG0_A[8] = 'h30,   // 0x30 - 0x37
    MDMA_C2H_SCHED_CHNL_CFG1_A[8] = 'h38,   // 0x38 - 0x3f
    MDMA_C2H_SCHED_CHNL_CFG2_A[8] = 'h40,   // 0x40 - 0x47
    MDMA_C2H_SCHED_CHNL_DBG0_A[8] = 'h48,   // 0x48 - 0x4f
    MDMA_C2H_BYP_IN_LL_CRDT_CFG_A[4],       // 0x50 - 0x53

    CDX_C2H_ENG_CFG, // 0x54
    MDMA_C2H_SCHED_CHNL_DBG1_A[8] = 'h58,   // 0x58 - 0x5f
    CDX_C2H_INT_PROF_TBL_A[16]  = 'h60,     // 0x60 - 0x6f

    CDX_C2H_DAT_VFIFO_TH_FAB0, // 0x70
    CDX_C2H_DAT_VFIFO_TH_FAB1, // 0x71
    CDX_C2H_DAT_VFIFO_TH_DMAC, // 0x72
    CDX_C2H_DAT_VFIFO_TH_DPU0, // 0x73

    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED_DMAC,       // 0x74
    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED_C2H_VIRTIO, // 0x75
    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED_FAB0_NBLK,  // 0x76
    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED_FAB1_NBLK,  // 0x77
    MDMA_C2H_STAT_S_AXIS_WRB_ACCEPTED_DMAC_NBLK,  // 0x78

    MDMA_CMPT_FATAL_ERR_CONTAIN_MASK,   // 0x79
    MDMA_C2H_PFCH_CFG_4,                // 0x80
    MDMA_C2H_RX_VIO_CMPT_MAX_TH,        // 0x81
    MDMA_C2H_PFCH_CRDT_DEBUG_REG,       // 0x82
    MDMA_C2H_PFCH_CACHE_DEBUG_REG_0,    // 0x83
    MDMA_C2H_PFCH_CACHE_DEBUG_REG_1,    // 0x84
    MDMA_C2H_PFCH_CACHE_DEBUG_REG_2,    // 0x85
    MDMA_C2H_PFCH_CACHE_DEBUG_REG_3,    // 0x86
    MDMA_C2H_PFCH_CACHE_DEBUG_REG_4,    // 0x87
    MDMA_C2H_PFCH_CACHE_DEBUG_REG_5,    // 0x88
    MDMA_C2H_PFCH_CACHE_DEBUG_REG_6,    // 0x89
    MDMA_C2H_DAT_SCHED_CRDT_DEBUG_REG_0,// 0x8a
    MDMA_C2H_DAT_SCHED_CRDT_DEBUG_REG_1,// 0x8b
    MDMA_C2H_DAT_SCHED_CRDT_DEBUG_REG_2,// 0x8c
    MDMA_C2H_DAT_SCHED_CRDT_DEBUG_REG_3,// 0x8d
    MDMA_C2H_PLD_PKT_ID_2,              // 0x8e
    MDMA_C2H_PLD_PKT_ID_3,              // 0x8f
    MDMA_C2H_PLD_PKT_ID_4,              // 0x90
    MDMA_C2H_PLD_PKT_ID_5,              // 0x91
    MDMA_C2H_PLD_PKT_ID_6,              // 0x92
    MDMA_C2H_PLD_PKT_ID_7,              // 0x93
    MDMA_C2H_PLD_PKT_ID_8,              // 0x94
    MDMA_STAT_CMPT_VFIFO_FAB0,          // 0x95
    MDMA_STAT_CMPT_VFIFO_FAB1,          // 0x96
    MDMA_STAT_CMPT_VFIFO_DMAC,          // 0x97
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH0, // 0x98
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH1, // 0x99
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH2, // 0x9a
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH3, // 0x9b
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH4, // 0x9c
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH5, // 0x9d
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH6, // 0x9e
    MDMA_C2H_STAT_S_AXIS_C2H_ACCEPTED_CH7  // 0x9f
  } mdma_c2h_csr2_addr_e;

  typedef logic [MDMA_CMN_H2C_ABITS:2] mdma_h2c_csr_addr_t;

  typedef enum mdma_h2c_csr_addr_t {
    MDMA_H2C_ERR_STAT, MDMA_H2C_ERR_MASK, MDMA_H2C_FIRST_ERR_QID, MQDMA_H2C_DBG_REG0, MQDMA_H2C_DBG_REG1, MQDMA_H2C_DBG_REG2, MQDMA_H2C_DBG_REG3, MQDMA_H2C_DBG_REG4, MQDMA_H2C_FATAL_ERR_EN, MQDMA_H2C_DATA_THRESH, MQDMA_H2C_ALN_DBG_REG0
  } mdma_h2c_csr_addr_e;

  typedef struct packed {
    //Start eviction when FL Free count <= evt_pfch_fl_th, minimum value is 16
    logic [15:0]     evt_pfch_fl_th;
    //Allow prefetch when FL Free count >= pfch_fl_th, minimum value is 256
    logic [15:0]     pfch_fl_th;
  } mdma_c2h_pfch_cfg_t;

  typedef struct packed {
    //Start Eviction when pfch qcnt >= evt_qcnt_th; The evc_qcnt_th should always be less than pfch_qcnt
    logic [15:0]     evt_qcnt_th;
    // Max pfch qcnt allowed. Recommended value is < (MDMA_PFCH_CACHE_DEPTH-4)
    logic [15:0]     pfch_qcnt;
  } mdma_c2h_pfch_cfg_1_t;

  typedef struct packed {
    logic fence;    // Credit fence from Prefetch module to Fetch Engine
    logic [30-17-$bits(mdma_c2h_alloc_max_desc_t)-$bits(mdma_c2h_alloc_max_desc_t):0]  rsvd;
    logic var_desc_no_drop; // Don't allow drop in the case of variable descriptor
    //Controls the threshold for small packet sizes in LL performance
    logic [15:0] pfch_ll_sz_th;
    //Controls number of entries prefetched in cached per queue for variable descriptor. Recommended value is 15.
    mdma_c2h_alloc_max_desc_t var_desc_num_pfch;
    //Controls number of entries prefetched in cached per queue for fixed descriptor. Recommended value is 8.
    mdma_c2h_alloc_max_desc_t num_pfch;
  } mdma_c2h_pfch_cfg_2_t;

  typedef struct packed {
    logic [32-1-7-9-11:0] rsvd; // The bit 0 of rsvd is used to disable the marker blocking in DMA Write Engine
    // Block Pfch from sending more descriptor credits when number of outstanding virtio fetches is larger than threshold
    logic [10:0] avl_ring_dsc_crdt_throttle_th;
    // Block desc_req event from var_desc packet when descriptor buffer size is small than threshold.
    logic [8:0] var_desc_fl_free_cnt_th;
    // CAM CNT Threshold for the cases where packet size is large for variable descriptor
    // Recommend value is 32 when pfch_cfg_2.var_desc_num_pfch is larger than 15
    logic [6:0] var_desc_lg_pkt_cam_cn_th;
  } mdma_c2h_pfch_cfg_3_t;

    typedef struct packed {
      logic [30:0] evt_timer_tick; // How many clock cycles in one timer tick for eviction timer
      logic disable_evt_timer;     // Disable the eviction timer feature
    } mdma_c2h_pfch_cfg_4_t;

    typedef struct packed {
      logic [31-6:0] rsvd;
      logic [5:0]    cnt; // Threshold of RX VirtIO CMPT packets in CMPT VFIFO
    } mdma_c2h_rx_vio_cmpt_max_th_t;

  typedef struct packed {
    mdma_qid_t qid;    // bit [19:8]
    logic      rsv;    // bit [7]
    mdma_c2h_cache_tag_t  tag; // bit [6:0]
  } mdma_c2h_pfch_byp_rsp_t;

  typedef struct packed {
    logic [13:0] rsv;
    logic [7:0]  pld_fifo_th;
    logic [9:0]  crdt_timer_th;  // This timer creates backpressure to credit module
  } mdma_crdt_coal_cfg_1_t;

  typedef struct packed {
    logic [7:0] rsv2;
    logic [7:0] crdt_fifo_th;
    logic [16-PFCH_LL_RAM_ADDR_BITS-1:0] rsv1;
    logic [PFCH_LL_RAM_ADDR_BITS-1:0] crdt_cnt_th;
  } mdma_crdt_coal_cfg_2_t;

  typedef struct packed {
    logic [15:0] high_wm;
    logic [15:0] low_wm;
  } mdma_c2h_water_mark_t;

  typedef struct packed {
    logic is_valid;       // If 1, enables channel to send back RRU credits to scheduler. Always 1 for C2H (not CSR controlled)
    logic is_managed;     // If 0, then no need to modify job_resp
    logic fill_level_mode;// If 1, then change fill level calculation to include data pending descriptor or RCP completion
    cdm_client_id_t client_id;   // Corresponding Client ID of channel. Used to route credits to correct A2/A3/A4/A5 scheduler
    logic [4:0]  dest_id;        // Maps to Destination ID used by corresponding CScheduler
    logic [7:0]  grant_num_crdt; // Additional credits that are checked to be granted every grant_rate cycles. Set to 0 to disable additional granting
    logic [7:0]  grant_rate;     // Controls how often additional credits are granted. Every grant_rate beats of data that are received, additional credits based on grant_num_crdt can be added
    logic [11:0] reservation;    // Number of entries dedicated to this channel
    logic [11:0] limit;          // Max number of entries that can be allocated to this channel
    logic [11:0] sched_init_crdt;// Number of credits initialized for this channel as held-by-scheduler
    logic [11:0] egress_alloc_thresh;  // Threshold for checking whether further memory is granted to this channel when VFIFO enqueued
    logic [11:0] egress_return_thresh; // Threshold for returning memory to channel or releasing when VFIFO popped
  } dyn_sched_chnl_cfg_t;

  // Register 0 definition
  typedef struct packed {
    logic [32-12-12-4-1-1-1:0] rsv;
    logic is_valid;
    cdm_client_id_t client_id;  // used to route to correct scheduler
    logic is_managed;
    logic [11:0] reservation;
    logic [11:0] sched_init_crdt;
  } dyn_sched_cfg0_t;

  // Register 1 definition
  typedef struct packed {
    logic [32-12-8-8-1-1:0] rsv;
    logic fill_level_mode;
    logic [7:0]  grant_num_crdt;
    logic [7:0]  grant_rate;
    logic [11:0] limit;
  } dyn_sched_cfg1_t;

  // Register 2 definition
  typedef struct packed {
    logic [32-12-12-5-1:0]  rsv;
    logic [4:0]  dest_id;
    logic [11:0] egress_alloc_thresh;
    logic [11:0] egress_return_thresh;
  } dyn_sched_cfg2_t;

  typedef struct packed {
    logic [15:0] enq_crdt;
    logic [15:0] pnd_crdt;
    logic [15:0] deq_crdt;
    logic [15:0] crdt_out;
  } dyn_sched_chnl_dbg_t;

  typedef struct packed {
    logic [14:0] rsvd;
    logic      enable;
    logic [15:0] noe;
  } mdma_c2h_notify_empty_t;

  typedef struct packed {
    logic [31-1-1:0] rsv;
    logic enable_wpl_par_inv;
    logic enable_wrq_dis;
  } mdma_c2h_fatal_err_enable_t;

  typedef struct packed {
    logic [31-$bits(mdma_fnid_t)-$bits(mdma_int_vec_id_t)-3-$bits(mdma_host_id_t):0] rsv;
    mdma_host_id_t host_id;
    logic dis_intr_on_vf;
    logic err_int_arm;
    logic en_coal;
    mdma_int_vec_id_t vec;
    mdma_fnid_t func;
  } mdma_c2h_err_int_t; // FIXME: Fix for CDX. Add CSI related fields. Define another register if needed to fit them.

  typedef struct packed {
    logic [32-$bits(mdma_qidx_t)-$bits(mdma_int_vec_id_coal_t)-$bits(mdma_host_id_t)-1:0] rsv;
    mdma_host_id_t host_id;
    mdma_int_vec_id_coal_t ring_idx;
    mdma_qidx_t sw_cidx;
  } mdma_c2h_int_upd_cidx_t;

  typedef struct packed {
    logic [$bits(mdma_csr_data_t)-$bits(mdma_qid_t) -1 :0] pad;
    mdma_qid_t qid;
  } mdma_c2h_qid2int_map_qid_t;

  typedef struct packed {
    logic [$bits(mdma_csr_data_t)-1 -$bits(mdma_int_vec_id_coal_t)-1 :0] pad;
    logic coal_en;
    mdma_int_vec_id_coal_t vec_id;
  } mdma_c2h_qid2int_map_t;

  typedef logic [3:0] c2h_vc_t;

  typedef struct packed {
    logic [32-1-$bits(c2h_vc_t)-$bits(c2h_vc_t)-$bits(c2h_vc_t)-$bits(c2h_vc_t):0]  rsvd;
    c2h_vc_t cdm_dpu1;
    c2h_vc_t cdm_dpu0;
    c2h_vc_t cdm_fab1;
    c2h_vc_t cdm_fab0;
  } cdx_st2m_client_to_vc_t;

  typedef struct packed {
    logic [31-11:0] rsvd;
    logic [3:0] int_wr_buf_req_sid; // SID used in Interrupt Engine
    logic en_marker_block; // Enable the marker blocking feature in Payload FIFO
    logic dis_drop_count;  // Disable the drop counter
    logic [3:0] c2h_st_num_buf_byte_loc; // Merge rx buffer
    logic c2h_crc_dis;
  } cdx_c2h_eng_cfg_t;

  typedef struct packed {
    cdm_client_id_t ch7;
    cdm_client_id_t ch6;
    cdm_client_id_t ch5;
    cdm_client_id_t ch4;
    cdm_client_id_t ch3;
    cdm_client_id_t ch2;
    cdm_client_id_t ch1;
    cdm_client_id_t ch0;
  } cdx_cdm_vc2cid_map_reg_t;

  typedef struct packed {
    logic [31-1-12-12:0] rsvd;
    logic [11:0] min_th;
    logic [11:0] max_th;
    logic max_th_en;
  } cdx_c2h_dat_vfifo_th_t;

  //---------------------------------------------------------------------
  //Add all the register structure for some self checking.
  typedef union packed {
    mdma_csr_data_t        csr_data;
    mdma_c2h_dbg_pfch_t    pfch_dbg;
    mdma_ind_ctxt_cmd_t    ctxt_cmd;
    mdma_ind_err_status_t  err_status;
    mdma_dyn_wrb_ptr_upd_t dyn_upd_wrb;
    mdma_glbl_eg_reg_t     glbl_eg_reg;
    mdma_c2h_qid2int_map_qid_t  qid2int_map_qid;
    mdma_c2h_qid2int_map_t qid2int_map;
    mdma_c2h_pfch_cfg_t    pfch_cfg;
    mdma_c2h_pfch_cfg_1_t  pfch_cfg_1;
    mdma_c2h_pfch_cfg_2_t  pfch_cfg_2;
    mdma_crdt_coal_cfg_1_t crdt_coal1;
    mdma_crdt_coal_cfg_2_t crdt_coal2;
    mdma_c2h_water_mark_t  water_mark;
    mdma_c2h_notify_empty_t notify_empty;
    mdma_c2h_fatal_err_enable_t fatal_err_enable;
    mdma_c2h_err_int_t      err_int_reg;
    mdma_c2h_int_upd_cidx_t int_upd_cidx;
    mdma_stat_c2h_debug_dma_eng_t stat_c2h_debug_dma_eng;
    mdma_stat_c2h_debug_dma_eng_ch_0_t stat_c2h_debug_dma_eng_ch_0;
    mdma_stat_c2h_debug_dma_eng_ch_1_t stat_c2h_debug_dma_eng_ch_1;
    cdx_cdm_vc2cid_map_reg_t cdx_cdm_vc2cid_map_reg;
    cdx_st2m_client_to_vc_t  cdx_st2m_client_to_vc;
    cdx_c2h_eng_cfg_t cdx_c2h_eng_cfg;
    dyn_sched_cfg0_t  c2h_pld_sched_cfg0;
    dyn_sched_cfg1_t  c2h_pld_sched_cfg1;
    dyn_sched_cfg2_t  c2h_pld_sched_cfg2;
  } mdma_csr_data_chk_t;


  // PASID RAM is 36 bits wide
  typedef struct packed {
    logic [2:0]  rsv;
    logic [11:0] fnc;
    logic        pasid_en;
    logic [19:0] pasid;
  } pasid_cxt_t;

  typedef struct packed {
    logic [1:0]  rsv;
    logic        ctxt_arb_sel;  // Use dbg_ctl to select which arbiter requester sel (c2h:1, h2c:0)
    logic [11:0] ctxt_arb_qid;  // Use dbg_ctl to select which arbiter requester qid
    logic [4:0]  ctxt_arb_req;  // Vector of ctxt arbitration requesters.  Bit position map: EVT_SRC =0, TRQ_SRC =1, WBC_SRC=2, CRD_SRC=3, IND_SRC=4
    logic        irq_fifo_fl;
    logic        tm_dsc_sts_stall;
    logic [1:0]  rrq_stall;
    logic [1:0]  rcp_fifo_spc_stall;
    logic [1:0]  rrq_fifo_spc_stall;
    logic [1:0]  fab_wb_sts_stall;
    logic [1:0]  dsc_out_stall;
  } mdma_dsc_dbg_dat0_t;

  typedef struct packed {
    logic [3:0]  rsv;
    logic [5:0]  evt_spc_c2h;
    logic [5:0]  evt_spc_h2c;
    logic [7:0]  dsc_spc_c2h;
    logic [7:0]  dsc_spc_h2c;
  } mdma_dsc_dbg_dat1_t;

  typedef struct packed {
    logic [31:3] rsv;
    logic [2:0]  sel;  // Used to select the ctxt_arb_sel and ctxt_arb_qid for each requester.
  } mdma_dsc_dbg_ctl_t;
  /*}}}*/
  // CDM Register space definition/*{{{*/
  // Any registers needed to use CDM mode will be all be defined here
  //
  localparam CDX_CDM_CSI_START_A    = MDMA_CMN_C2H_2_START_A + MDMA_CMN_C2H_2_SIZE;
  localparam CDX_CDM_CSI_SIZE       = 4096;
  localparam CDX_CDM_CSI_ABITS      = $clog2(CDX_CDM_CSI_SIZE);
  typedef logic [CDX_CDM_CSI_ABITS:2]   cdx_cdm_csi_csr_addr_t;
  typedef enum cdx_cdm_csi_csr_addr_t {
    CDM_CSI_NPR_DST_FIFO_CFG[44] = 'h0,     // 0x00-0x2b
    CDM_CSI_PR_DST_FIFO_CFG[44]  = 'h2c,    // 0x2c-0x57
    CDM_CSI_DST_FIFO_CRD_DBG[20] = 'h58,    // 0x58-0x6b
    CDM_CSI_SINK_CRDT_CFG   = 'h80,
    CDM_CSI_BRIDGE_CFG      = 'h84,
    CDM_CSI_NFAT_ERR_STAT   = 'h88,
    CDM_CSI_NFAT_ERR_MASK   = 'h89,
    CDM_CSI_FAT_ERR_STAT    = 'h8a,
    CDM_CSI_FAT_ERR_MASK    = 'h8b,
    CDM_CSI_FAT_CONTAIN_MASK= 'h8c,
    CDM_CSI_STAT_PR_CNT     = 'h90,
    CDM_CSI_STAT_NPR_CNT    = 'h91,
    CDM_CSI_STAT_CMPL_CNT   = 'h92,
    CDM_CSI_CAP_HDR_LOG0    = 'h98,
    CDM_CSI_CAP_HDR_LOG1    = 'h99,
    CDM_CSI_PKT_HDR_LOG0    = 'h9a,
    CDM_CSI_PKT_HDR_LOG1    = 'h9b,
    CDM_CSI_PR_DBG_REG0     = 'h100,
    CDM_CSI_PR_DBG_REG1     = 'h101,
    CDM_CSI_PR_SEQ_DBG_SEL  = 'h104,
    CDM_CSI_PR_SEQ_DBG_DAT0 = 'h105,
    CDM_CSI_PR_SEQ_DBG_DAT1 = 'h106,
    CDM_CSI_NPR_DBG_REG0    = 'h108,
    CDM_CSI_NPR_DBG_REG1    = 'h109,
    CDM_CSI_CMPL_DBG_REG    = 'h110,
    CDM_CSI_PR_JOB_RESP_DBG[5] = 'h118,
    CDM_CSI_NPR_JOB_RESP_DBG[5] = 'h120,
    CDM_CSI_RRU_JOB_RESP_DBG[5] = 'h128
  } cdx_cdm_csr_addr_e;

  localparam CDX_CDM_RFAB_START_A    = CDX_CDM_CSI_START_A + CDX_CDM_CSI_SIZE;
  localparam CDX_CDM_RFAB_SIZE       = 4096;
  localparam CDX_CDM_RFAB_ABITS      = $clog2(CDX_CDM_RFAB_SIZE);
  typedef logic [CDX_CDM_RFAB_ABITS:2]   cdx_cdm_rfab_csr_addr_t;
  typedef enum cdx_cdm_rfab_csr_addr_t {
    CDM_RFAB_CSI_MPS=0,           // 0x0
    CDM_RFAB_CSI_MRRS,            // 0x1
    CDM_RFAB_CDM_PCIE_IDE,        // 0x2  // reserved
    CDM_RFAB_QDM_PCIE_IDE,        // 0x3  // reserved
    CDM_RFAB_CDM_PCIE_TC,         // 0x4
    CDM_RFAB_QDM_PCIE_TC,         // 0x5
    CDM_RFAB_RRU_CHNL_ALLOC,      // 0x6
    CDM_RFAB_RRU_CHNL_ERR,        // 0x7
    CDM_RFAB_QDM_HW_DB_PCIE_ATTR, // 0x8
    CDM_RFAB_QDM_READ_PCIE_ATTR,  // 0x9
    CDM_RFAB_QDM_WRITE_PCIE_ATTR, // 0xA
    CDM_RFAB_QDM_CMPT_PCIE_ATTR,  // 0xB
    CDM_RFAB_QDM_INTR_PCIE_ATTR,  // 0xC
    CDM_RFAB_QDM_TPH_MODE,        // 0xD
    CDM_RFAB_REQ_PCIE0_MSG_THROTTLE = 'h10,
    CDM_RFAB_REQ_PCIE1_MSG_THROTTLE = 'h11,
    CDM_RFAB_REQ_PCIE2_MSG_THROTTLE = 'h12,
    CDM_RFAB_REQ_PCIE3_MSG_THROTTLE = 'h13,
    CDM_RFAB_REQ_PSX_MSG_THROTTLE   = 'h14,
    CDM_RFAB_REQ_PCIE0_DAT_THROTTLE = 'h15,
    CDM_RFAB_REQ_PCIE1_DAT_THROTTLE = 'h16,
    CDM_RFAB_REQ_PCIE2_DAT_THROTTLE = 'h17,
    CDM_RFAB_REQ_PCIE3_DAT_THROTTLE = 'h18,
    CDM_RFAB_REQ_PSX_DAT_THROTTLE   = 'h19,
    CDM_RFAB_REQ_RCID_THROTTLE   = 'h20,    // 0x20-0x3f    // 1 per RC-ID
    CDM_RFAB_RRU_SCHED_CHNL_CFG0 = 'h40,    // 0x40-0x5f
    CDM_RFAB_RRU_SCHED_CHNL_CFG1 = 'h60,    // 0x60-0x7f
    CDM_RFAB_RRU_SCHED_CHNL_CFG2 = 'h80,    // 0x80-0x9f
    CDM_RFAB_RRU_SCHED_CHNL_DBG0 = 'ha0,    // 0xa0-0xbf
    CDM_RFAB_CSI_SRC_TO_DEST_ID  = 'hc0,    // 0xc0-0xff
    CDM_RFAB_RRU_SCHED_CHNL_DBG1 = 'h100,   // 0x100-0x11f
    //CDM_RFAB_CSI_FIFO_TO_DEST_ID = 'h100,   // 0x100-0x13f
    CDM_RFAB_NFAT_ERR_STAT     = 'h140,
    CDM_RFAB_NFAT_ERR_MASK     = 'h141,
    CDM_RFAB_FAT_ERR_STAT      = 'h142,
    CDM_RFAB_FAT_ERR_MASK      = 'h143,
    CDM_RFAB_FAT_CONTAIN_MASK  = 'h144,
    CDM_RFAB_WR_REQ_CTL        = 'h150,
    CDM_RFAB_RD_REQ_CTL        = 'h151,
    CDM_RFAB_RD_CPL_CTL        = 'h152,
    CDM_RFAB_RD_BUF_VFIFO_TH[3]= 'h160,
    CDM_RFAB_WR_BUF_VFIFO_TH[6]= 'h168,
    CDM_RFAB_RRQ_LAT_MIN[5]    = 'h188,   // 0x188-0x18c
    CDM_RFAB_RRQ_LAT_MAX[5]    = 'h18d,   // 0x18d-0x191
    CDM_RFAB_RRQ_LAT_AVG[5]    = 'h192,   // 0x192-0x196
    CDM_RFAB_RRQ_LAT_CTL[5]    = 'h197,   // 0x197-0x19b
    CDM_RFAB_WR_REQ_DBG0       = 'h200,
    CDM_RFAB_WR_REQ_DBG1       = 'h201,
    CDM_RFAB_WR_REQ_DBG2       = 'h202,
    CDM_RFAB_WR_REQ_DBG3       = 'h203,
    CDM_RFAB_RD_REQ_DBG0       = 'h210,
    CDM_RFAB_RD_REQ_DBG1       = 'h211,
    CDM_RFAB_RD_REQ_DBG2       = 'h212,
    CDM_RFAB_RD_REQ_DBG3       = 'h213,
    CDM_RFAB_RD_CPL_DBG0       = 'h220,
    CDM_RFAB_RD_CPL_DBG1       = 'h221,
    CDM_RFAB_RD_CPL_DBG2       = 'h222,
    CDM_RFAB_RD_CPL_DBG3       = 'h223,
    CDM_RFAB_RD_CPL_DBG4       = 'h224,
    CDM_RFAB_RD_CPL_DBG5       = 'h225,
    CDM_RFAB_RD_CPL_DBG6       = 'h226,
    CDM_RFAB_WR_REQ_M2M_DBG    = 'h230,
    CDM_RFAB_WR_REQ_C2H_DBG    = 'h231,
    CDM_RFAB_WR_REQ_ST2M_DBG   = 'h232,
    CDM_RFAB_WR_REQ_CMPT_DBG   = 'h233,
    CDM_RFAB_WR_REQ_WBK_DBG    = 'h234,
    CDM_RFAB_WR_REQ_INT_DBG    = 'h235,
    CDM_RFAB_RD_REQ_M2M_DBG    = 'h238,
    CDM_RFAB_RD_REQ_H2C_DBG    = 'h239,
    CDM_RFAB_RD_REQ_DSC_DBG    = 'h23a,
    CDM_RFAB_RCID_THROTTLE_DBG = 'h240,   // 0x240 - 0x25f
    CDM_RFAB_CSI_THROTTLE_DBG  = 'h260,   // 0x260 - 0x26f
    CDM_RFAB_WR_ARB_DBG_SEL    = 'h270,
    CDM_RFAB_WR_ARB_DBG_DAT0   = 'h271,
    CDM_RFAB_WR_ARB_DBG_DAT1   = 'h272,
    CDM_RFAB_RD_ARB_DBG_SEL    = 'h274,
    CDM_RFAB_RD_ARB_DBG_DAT    = 'h275
  } cdx_cdm_rfab_addr_e;  // max = 'h3ff

  localparam CDX_CDM_M2ST_START_A    = CDX_CDM_RFAB_START_A + CDX_CDM_RFAB_SIZE;
  localparam CDX_CDM_M2ST_SIZE       = 4096;
  localparam CDX_CDM_M2ST_ABITS      = $clog2(CDX_CDM_M2ST_SIZE);

  typedef logic [CDX_CDM_M2ST_ABITS:2]   cdx_cdm_m2st_csr_addr_t;
  typedef enum cdx_cdm_m2st_csr_addr_t {
    CDM_M2ST_CFG_FIFO_CRDT_A[5] = 'h0,
    CDM_M2ST_CFG_DST_CRDT_A[12] = 'h10,
    CDM_M2ST_INT_PROF_TBL_A[16] = 'h20,
    CDM_M2ST_CFG_0              = 'h30,
    CDM_M2ST_WCQ_0              = 'h31,
    CDM_M2ST_WCQ_1              = 'h32,
    CDM_M2ST_CLID2VC_MAP        = 'h33,
    CDX_CDM_M2ST_FAT_ERR_STAT   = 'h34,
    CDX_CDM_M2ST_FAT_ERR_MASK   = 'h35,
    CDX_CDM_M2ST_FATAL_ERR_CNTN_MASK = 'h36,
    CDX_CDM_M2ST_NFAT_ERR_STAT  = 'h37,
    CDX_CDM_M2ST_NFAT_ERR_MASK  = 'h38,
    CDX_CDM_M2ST_FST_NFAT_ERR   = 'h39,
    CDX_CDM_M2ST_REQ_SCH_MIN_CRD_0 = 'h3a,
    CDX_CDM_M2ST_REQ_SCH_MIN_CRD_1 = 'h3b,
    CDX_CDM_M2ST_REQ_SCH_MIN_CRD_2 = 'h3c,
    CDX_CDM_M2ST_REQ_SCH_MAX_CRD_0 = 'h3d,
    CDX_CDM_M2ST_REQ_SCH_MAX_CRD_1 = 'h3e,
    CDX_CDM_M2ST_REQ_SCH_MAX_CRD_2 = 'h3f,
    CDX_CDM_M2ST_DST_CRD_UPD    = 'h40,
    CDX_CDM_M2ST_DBG_0_A[56]    = 'h41 // 0x41 - 0x78
  } cdx_cdm_m2st_addr_e;

  localparam CDX_CDM_ST2M_START_A    = CDX_CDM_M2ST_START_A + CDX_CDM_RFAB_SIZE;
  localparam CDX_CDM_ST2M_SIZE       = 4096;
  localparam CDX_CDM_ST2M_ABITS      = $clog2(CDX_CDM_ST2M_SIZE);

  typedef logic [CDX_CDM_ST2M_ABITS:2]   cdx_cdm_st2m_csr_addr_t;
  typedef enum cdx_cdm_st2m_csr_addr_t {
    CDM_ST2M_PLACEHOLDER_A=0
  } cdx_cdm_st2m_addr_e;

  localparam CDX_CDM_M2M_START_A    = CDX_CDM_ST2M_START_A + CDX_CDM_ST2M_SIZE;
  localparam CDX_CDM_M2M_SIZE       = 4096;
  localparam CDX_CDM_M2M_ABITS      = $clog2(CDX_CDM_M2M_SIZE);

  typedef logic [CDX_CDM_M2M_ABITS:2]   cdx_cdm_m2m_csr_addr_t;
  typedef enum cdx_cdm_m2m_csr_addr_t {
    CDM_M2M_CTL_A              =  0,
    CDM_M2M_FAB_CLIENTID2VCH_A = 'h4,
    CDM_M2M_FAB_VCH2CLIENTID_A = 'h8,
    CDM_M2M_WR_PLD_MAX_THROT_A[2] = 'h11,
    CDM_M2M_ERR2CTXT_CLIENT_A  = 'h13,
    CDM_M2M_DSC_VFIFO_TH_INT0  = 'h14,
    CDM_M2M_DSC_VFIFO_TH_INT1  = 'h15,
    CDM_M2M_DSC_VFIFO_TH_INT2  = 'h16,
    CDM_M2M_DSC_VFIFO_TH_INT3  = 'h17,
    CDM_M2M_DSC_VFIFO_TH_FAB0  = 'h18,
    CDM_M2M_DSC_VFIFO_TH_FAB1  = 'h19,
    CDM_M2M_DSC_VFIFO_TH_DMAC  = 'h1a,
    CDM_M2M_WR_PLD_MIN_THROT_A[2] = 'h1b,
    CDM_M2M_INT_PROF_TBL_A[16] = 'h20, // 0x80
    CDM_M2M_NFAT_STS_A         = 'h80, // 0x200
    CDM_M2M_NFAT_MSK_A         = 'h81,
    CDM_M2M_FAT_STS_A          = 'h82,
    CDM_M2M_FAT_MSK_A          = 'h83,
    CDM_M2M_FAT_CONTAIN_MSK_A  = 'h84,
    CDM_M2M_PMON_CTL_A         = 'h100, // 0x400
    CDM_M2M_PMON_CYC_CNT0_A    = 'h101,
    CDM_M2M_PMON_CYC_CNT1_A    = 'h102,
    CDM_M2M_PMON_RCP_CNT0_A    = 'h103,
    CDM_M2M_PMON_RCP_CNT1_A    = 'h104,
    CDM_M2M_PMON_DSC_CNT0_A    = 'h105,
    CDM_M2M_PMON_DSC_CNT1_A    = 'h106,
    CDM_M2M_ENG_DBG0_A         = 'h120,
    CDM_M2M_ENG_DBG1_A         = 'h121,
    CDM_M2M_ENG_DBG2_A         = 'h122,
    CDM_M2M_ENG_DBG3_A         = 'h123,
    CDM_M2M_ENG_DBG4_A         = 'h124,
    CDM_M2M_ENG_DBG5_A         = 'h125,
    CDM_M2M_REQ_DBG0_A         = 'h130,
    CDM_M2M_REQ_DBG1_A         = 'h131,
    CDM_M2M_REQ_DBG2_A         = 'h132,
    CDM_M2M_REQ_DBG3_A         = 'h133,
    CDM_M2M_REQ_DBG4_A         = 'h134,
    CDM_M2M_REQ_DBG5_A         = 'h135,
    CDM_M2M_REQ_DBG6_A         = 'h136
  } cdm_m2m_csr_addr_e;

  localparam CDX_CDM_MSGLD_START_A    = CDX_CDM_M2M_START_A + CDX_CDM_M2M_SIZE;
  localparam CDX_CDM_MSGLD_SIZE       = 4096;
  localparam CDX_CDM_MSGLD_ABITS      = $clog2(CDX_CDM_MSGLD_SIZE);

  typedef logic [CDX_CDM_MSGLD_ABITS:2]   cdx_cdm_msgld_csr_addr_t;
  typedef enum cdx_cdm_msgld_csr_addr_t {
    CDM_MSGLD_CTL_A      =  0,
    CDM_MSGLD_NFAT_STS_A = 'h80, // 0x200
    CDM_MSGLD_NFAT_MSK_A = 'h81,
    CDM_MSGLD_FAT_STS_A  = 'h82,
    CDM_MSGLD_FAT_MSK_A  = 'h83,
    CDM_MSGLD_FAT_CONTAIN_MSK_A = 'h84,
  //CDM_MSGLD_ERR_LOG_A  = 'h88,  // 0x220 FIXME ERROR LOGS
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG0  = 'h85,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG1  = 'h86,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG2  = 'h87,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG3  = 'h88,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG4  = 'h89,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG5  = 'h8A,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG6  = 'h8B,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG7  = 'h8C,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG8  = 'h8D,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG9  = 'h8E,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG10 = 'h8F,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG11 = 'h90,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG12 = 'h91,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG13 = 'h92,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG14 = 'h93,
    CDM_MSGLD_DSC_ENG_RCP_SCHED_DBG15 = 'h94,
    CDM_MSGLD_DSC_ENG_DBG0  = 'h95,
    CDM_MSGLD_DSC_ENG_DBG1  = 'h96,
    CDM_MSGLD_DSC_ENG_DBG2  = 'h97,
    CDM_MSGLD_DSC_ENG_DBG3  = 'h98,
    CDM_MSGLD_DSC_ENG_DBG4  = 'h99,
    CDM_MSGLD_DSC_ENG_DBG5  = 'h9A,
    CDM_MSGLD_DSC_ENG_DBG6  = 'h9B,
    CDM_MSGLD_DSC_ENG_DBG7  = 'h9C,
    CDM_MSGLD_DSC_ENG_VFIFO_CRDT_DBG0 = 'h9D,
    CDM_MSGLD_DSC_ENG_VFIFO_CRDT_DBG1 = 'h9E,
    CDM_MSGLD_DSC_ENG_VFIFO_CRDT_DBG2 = 'h9F,
    CDM_MSGLD_DSC_ENG_VFIFO_CRDT_DBG3 = 'hA0,
    CDM_MSGLD_DSC_ENG_CRDIF_CRDT_DBG0 = 'hA1,
    CDM_MSGLD_DSC_ENG_CRDIF_CRDT_DBG1 = 'hA2,
    CDM_MSGLD_DSC_REG_DBG0  = 'hA3,
    CDM_MSGLD_DSC_REG_DBG1  = 'hA4,
    CDM_MSGLD_DSC_REG_DBG2  = 'hA5,
    CDM_MSGLD_DSC_REG_DBG3  = 'hA6,
    CDM_MSGLD_DSC_REG_DBG4  = 'hA7,
    CDM_MSGLD_DSC_REG_DBG5  = 'hA8,
    CDM_MSGLD_DSC_REG_DBG6  = 'hA9,
    CDM_MSGLD_DSC_REG_DBG7  = 'hAA,
    CDM_MSGLD_DSC_ENG_LAT_DBG_0 = 'hAB,
    CDM_MSGLD_DSC_ENG_LAT_DBG_1 = 'hAC,
    CDM_MSGLD_DSC_ENG_LAT_DBG_2 = 'hAD,
    CDM_MSGLD_DSC_ENG_LAT_DBG_3 = 'hAE,
    CDM_MSGLD_DSC_ENG_LAT_DBG_4 = 'hAF,
    CDM_MSGLD_DSC_ENG_LAT_DBG_5 = 'hB0,
    CDM_MSGLD_DSC_ENG_LAT_DBG_6 = 'hB1,
    CDM_MSGLD_DSC_ENG_LAT_DBG_7 = 'hB2
  } cdx_cdm_msgld_addr_e;

  localparam CDX_CDM_MSGST_START_A = CDX_CDM_MSGLD_START_A + CDX_CDM_MSGLD_SIZE;
  localparam CDX_CDM_MSGST_SIZE    = 4096;
  localparam CDX_CDM_MSGST_ABITS   = $clog2(CDX_CDM_MSGST_SIZE);
  typedef logic [CDX_CDM_MSGST_ABITS:2] cdx_cdm_msgst_csr_addr_t;

  localparam CDX_CDM_PROT_START_A = CDX_CDM_MSGST_START_A + CDX_CDM_MSGST_SIZE;
  localparam CDX_CDM_PROT_SIZE    = 4096;
  localparam CDX_CDM_PROT_ABITS   = $clog2(CDX_CDM_PROT_SIZE);
  typedef logic [CDX_CDM_PROT_ABITS:2] cdx_cdm_prot_csr_addr_t;
  typedef enum cdx_cdm_prot_csr_addr_t {
    CDM_PROT_CDM_PCIE_IDE   = 'h0,
    CDM_PROT_QDM_PCIE_IDE   = 'h1
  } cdx_cdm_prot_addr_e;

  localparam CDX_CDM_TDBG_START_A = CDX_CDM_PROT_START_A + CDX_CDM_PROT_SIZE;
  localparam CDX_CDM_TDBG_SIZE    = 4096;
  localparam CDX_CDM_TDBG_ABITS   = $clog2(CDX_CDM_TDBG_SIZE);
  typedef logic [CDX_CDM_TDBG_ABITS:2]   cdx_cdm_tdbg_csr_addr_t;
  typedef enum cdx_cdm_tdbg_csr_addr_t {
    CDM_TDBGB_PLACEHOLDER_A=0
  } cdx_cdm_tdbg_addr_e;

  /*}}}*/
  // QUEUE space definition/*{{{*/
  localparam MDMA_PF_QUEUE_START_A = 32'h0; //Old H10 address space mapping in IX
  localparam MDMA_VF_QUEUE_START_A = 32'h0; //Old H10 address space mapping in IX
  localparam MDMA_CMN_QUEUE_SIZE = 8192*16;
  /*}}}*/

  //---------------------------------------------------------------------
  // M2M register space.
  typedef struct packed {
    logic [30:0] rsv;
    logic rcp_par_chk_dis; // Disable parity checking on RCP data
  } cdx_cdm_m2m_ctl_reg_t;

  typedef struct packed {
    logic [31:8] rsv;
    logic [1:0][3:0] vch;
  } cdx_cdm_m2m_cid2vch_map_reg_t;

  typedef logic [7:0] cdx_cdm_m2m_pld_throt_reg_t;

  typedef struct packed {
    logic [31:3] rsv;
    logic [2:0]  err2ctxt;
  } cdx_cdm_m2m_err2ctxt_reg_t;

  typedef struct packed {
    logic [14:0] rsv;
    logic        crdt_max_en;
    logic [7:0]  crdt_max_thresh;
    logic [7:0]  crdt_min_thresh;
  } cdx_cdm_m2m_dsc_th_reg_t;

  typedef struct packed {
    logic [31:2] rsv;
    logic clr; // rw1c Self clearing.  Clears pmon counters
    logic run; // rw Run counters
  } cdx_cdm_m2m_pmon_ctl_reg_t;

  typedef struct packed {
    logic [31:0]  cnt31_0; // Counter bits [31:0]
  } cdx_cdm_m2m_pmon_cnt0_reg_t;

  typedef struct packed {
    logic max;  // Counter has max out
    logic [30:10]  rsv;
    logic [9:0]  cnt41_32; // Counter bits [41:32]
  } cdx_cdm_m2m_pmon_cnt1_reg_t;

  typedef struct packed {
    logic [7:0]  sched_crdt;
    logic [23:0] req_cnt;
  } cdx_cdm_m2m_req_dbg_t;

  typedef struct packed {
    logic dsc_mm_vld_in;
    logic dsc_mm_rdy_out;
    logic [6:0] dsc_fifo_out_vld;
    logic [7:0] rd_hdr_fifo_crdt;
    logic [3:0] rd_req_fifo_crdt;
    logic rd_hdr_fifo_in_rdy;
    logic [7:0] rd_hdr_fifo_out_vld;
    logic rd_buf_req_vld;
    logic rd_buf_req_rdy;
  } cdx_cdm_m2m_dbg_reg0_t;

  typedef struct packed {
    logic [2:0] byp_in_vld_in;
    logic [2:0] byp_in_rdy_out;
    logic int_dsc_vld_in;
    logic int_dsc_rdy_out;
    logic [7:0] rcp_bt_acc_avl;
    logic [7:0] dst_vc_fifo_crdt_avl;
    logic [7:0] pld_fifo_crdt_avl;
  } cdx_cdm_m2m_dbg_reg1_t;

  typedef struct packed {
    logic rcp_deq_vld_bp;
    logic wr_buf_req_vld_bp;
    logic [7:0] wr_hdr_fifo_out_vld;
    logic [7:0] wr_pld_fifo_out_vld;
    logic [7:0] wr_hdr_fifo_crdt;
    logic [5:0] wr_req_fifo_crdt;
  } cdx_cdm_m2m_dbg_reg2_t;

  typedef struct packed {
    logic [7:0] wbrq_fifo_crdt;
    logic wbrq_fifo_in_rdy;
    logic [7:0] wbrq_fifo_out_vld;
    logic [7:0] wbrq_fifo_arb_req;
    logic wbk_fifo_in_rdy;
    logic wbrq_out_vld_bp;
    logic sts_fifo_in_rdy;
    logic sts_vld_bp;
    logic [1:0] sts_chn;
    logic rid_entries_full;
  } cdx_cdm_m2m_dbg_reg3_t;

    typedef struct packed {
      logic [3:0][7:0] pld_fifo_cnt;  // VC 0-3
    } cdx_cdm_m2m_dbg_reg4_t;

    typedef struct packed {
      logic [3:0][7:0] pld_fifo_cnt;  // VC 4-7
    } cdx_cdm_m2m_dbg_reg5_t;

    typedef struct packed {
      cdx_cdm_m2m_dbg_reg5_t  dbg5;
      cdx_cdm_m2m_dbg_reg4_t  dbg4;
      cdx_cdm_m2m_dbg_reg3_t  dbg3;
      cdx_cdm_m2m_dbg_reg2_t  dbg2;
      cdx_cdm_m2m_dbg_reg1_t  dbg1;
      cdx_cdm_m2m_dbg_reg0_t  dbg0;
    } cdx_cdm_m2m_dbg_t;

    typedef struct packed {
      logic [255:0] req_lo;
    } cdx_cdm_m2m_req_dbg0_t;

    typedef struct packed {
      logic vld;
      logic rdy;
      logic [4:0] chn;
      logic [127:0] req_hi;
    } cdx_cdm_m2m_req_dbg1_t;

  // Checker for 32-bit registers
  typedef union packed {
    logic [31:0] reg_chk;
    cdx_cdm_m2m_ctl_reg_t ctl;
    cdx_cdm_m2m_cid2vch_map_reg_t cid2vch_map;
    cdx_cdm_m2m_pld_throt_reg_t[3:0] dst_vc_throt;
    cdx_cdm_m2m_err2ctxt_reg_t  err2ctxt;
    cdx_cdm_m2m_dsc_th_reg_t    dsc_th;
    cdx_cdm_m2m_pmon_ctl_reg_t  pmon_ctl;
    cdx_cdm_m2m_pmon_cnt0_reg_t cnt0_reg;
    cdx_cdm_m2m_pmon_cnt1_reg_t cnt1_reg;
    cdx_cdm_m2m_dbg_reg0_t dbg0;
    cdx_cdm_m2m_dbg_reg1_t dbg1;
    cdx_cdm_m2m_dbg_reg2_t dbg2;
    cdx_cdm_m2m_dbg_reg3_t dbg3;
  } m2m_reg_chk_t;

  //---------------------------------------------------------------------
  // MSGLD register space.
  // DWORD sizes

  // Define MSGLD registers here

  // CMPT Registers/*{{{*/
  typedef struct packed {
    logic cmpt_ctxt_ram_sbe;
    logic tmr0_ram_sbe;
    logic tmr1_ram_sbe;
    logic tmr2_ram_sbe;
    logic tmr3_ram_sbe;
    logic int_ctxt_ram_sbe;
    logic [25:7] rsv;
    logic pld_sbe;
    logic cmpt_client_id_err;      // CMPT or CMPT CIDX update had incorrect client_id
    logic int_qdm_csi_prof_id_err; // Host_ID mismatch on Interrupt Context for Point Update
    logic cmpt_bad_cidx_upd_err;   // Indicates that a PtrUpd was received with a bad cidx
    logic cmpt_qfull_err;          // Indicates that a WRB was received on a FullQ
    logic wrb_inv_q_cidx_upd_err;  // Indicates that a SW pointer UPD was received on an invalid Q
    logic sh_cmpt_dsc_err;         // A shared CMPT queue saw a DSC error.
  } mdma_cmpt_nfat_err_reg_t;

  // First ERR QID and type
  typedef enum logic [4:0] {
    MDMA_CMPT_NFAT_ERR_NONE = 5'd0,
    MDMA_CMPT_CLIENT_ID_ERR = 5'd1,
    MDMA_INT_QDM_CSI_PROF_ID_ERR = 5'd2,
    MDMA_CMPT_BAD_CIDX_UPD_ERR = 5'd3,
    MDMA_CMPT_QFULL_ERR   = 5'd4,
    MDMA_CMPT_INV_Q_CIDX_UPD_ERR = 5'd5,
    MDMA_SH_CMPT_DSC_ERR  = 5'd6,
    MDMA_CMPT_CTXT_RAM_SBE= 5'd7,
    MDMA_TMR0_RAM_SBE     = 5'd8,
    MDMA_TMR1_RAM_SBE     = 5'd9,
    MDMA_TMR2_RAM_SBE     = 5'd10,
    MDMA_TMR3_RAM_SBE     = 5'd11,
    MDMA_INT_CTXT_RAM_SBE = 5'd12,
    MDMA_CMPT_PLD_SBE     = 5'd13
  } mdma_cmpt_nfat_err_type_e;

  typedef struct packed {
        logic [31:$bits(mdma_cqid_t)+$bits(mdma_cmpt_nfat_err_type_e)]    rsv;
    mdma_cmpt_nfat_err_type_e    err_type;
    mdma_cqid_t             cqid;
  } mdma_cmpt_fst_nfat_err_reg_t;

  typedef struct packed {
    logic [31:7] rsv;
    logic pld_dbe;
    logic cmpt_ctxt_ram_dbe;
    logic tmr0_ram_dbe;
    logic tmr1_ram_dbe;
    logic tmr2_ram_dbe;
    logic tmr3_ram_dbe;
    logic int_ctxt_ram_dbe;
  } mdma_cmpt_fat_err_reg_t;

  typedef struct packed {
    logic [31:1] rsv;
    logic fat_err_en;
  } mdma_cmpt_cfg_0_reg_t;
  /*}}}*/
  // MSGST Registers/*{{{*/
  typedef enum cdx_cdm_msgst_csr_addr_t {
    CDX_MSGST_CFG_0=0              ,// 0x0
    CDX_MSGST_NFAT_ERR_STAT        ,// 0x1
    CDX_MSGST_NFAT_ERR_MASK        ,// 0x2
    CDX_MSGST_FST_NFAT_ERR         ,// 0x3
    CDX_MSGST_FAT_ERR_STAT         ,// 0x4
    CDX_MSGST_FAT_ERR_MASK         ,// 0x5
    CDX_MSGST_FAT_ERR_CONTAIN_MASK ,// 0x6
    CDX_MSGST_CTL_SCH_CRD_MIN_0    ,// 0x7
    CDX_MSGST_CTL_SCH_CRD_MIN_1    ,// 0x8
    CDX_MSGST_PLD_SCH_CRD_MIN_0    ,// 0x9
    CDX_MSGST_PLD_SCH_CRD_MIN_1    ,// 0xA
    CDX_MSGST_CLIENT2VC_MAP_UNUSED ,// 0xB
    CDX_MSGST_CTL_SCH_CRD_MAX_0    ,// 0xC
    CDX_MSGST_CTL_SCH_CRD_MAX_1    ,// 0xD
    CDX_MSGST_PLD_SCH_CRD_MAX_0    ,// 0xE
    CDX_MSGST_PLD_SCH_CRD_MAX_1    ,// 0xF
    CDX_CDM_MSGST_DBG_0_A[25]       // 0x10 - 0x28
  } cdx_cdm_msgst_addr_e;

  typedef struct packed {
    logic [31:4] rsv;
    logic [6:0]  inp_pld_sch_max_crd_en;
    logic [6:0]  inp_ctl_sch_max_crd_en;
    logic ecc_cor_en;
    logic fat_err_en;
  } cdx_msgst_cfg_0_reg_t;

  typedef struct packed {
    logic [31:3] rsv;
    logic msgst_pld_vfifo_ram_rdbe;
    logic msgst_ctl_vfifo_ram_rdbe;
    logic msgst_coal_ram_dbe;
  } cdx_msgst_fat_err_reg_t;

  typedef struct packed {
    logic [31:3] rsv;
    logic msgst_pld_vfifo_ram_rsbe;
    logic msgst_ctl_vfifo_ram_rsbe;
    logic msgst_coal_ram_sbe;
  } cdx_msgst_nfat_err_reg_t;

  // First ERR type
  typedef enum logic [4:0] {
    CDX_MSGST_NFAT_ERR_NONE = 0,
    CDX_MSGST_COAL_RAM_SBE
  } cdx_msgst_nfat_err_type_e;

  typedef struct packed {
    logic [31:$bits(cdx_msgst_nfat_err_type_e)] rsv;
    cdx_msgst_nfat_err_type_e err_type;
  } cdx_msgst_fst_nfat_err_reg_t;

  typedef struct packed {
    logic [7:0] chn3;
    logic [7:0] chn2;
    logic [7:0] chn1;
    logic [7:0] chn0;
  } cdx_msgst_sch_crd_reg_t;

  /*}}}*/
  // M2ST registers/*{{{*/
  typedef struct packed {
    qdm_vc_t [4:0]      vc;
  } m2st_cdm_clid_vc_map_t;

  typedef struct packed {
    logic [31:12] rsv;
    logic [8:0] req_sch_max_crd_en;
    logic rcp_par_chk_en;
    logic [1:0] m2st_tel_src; // 0: DPU0/FAB/DMAC DAT; 1: DPU1 DAT; 2: REQ
  } cdx5n_m2st_cfg_0_t;

  typedef struct packed {
    logic [31:4] rsv;
    logic rcp_dat_par_err;
    logic req_vfifo_ram_dbe;
    logic hdr_vfifo_ram_dbe;
    logic sts0_vfifo_ram_dbe;
    logic sts1_vfifo_ram_dbe;
    logic dat0_vfifo_ram_dbe;
    logic dat1_vfifo_ram_dbe;
  } cdx_m2st_fat_err_reg_t;

  typedef struct packed {
    logic [31:13] rsv;
    logic req_vfifo_ram_sbe;
    logic hdr_vfifo_ram_sbe;
    logic sts0_vfifo_ram_sbe;
    logic sts1_vfifo_ram_sbe;
    logic dat0_vfifo_ram_sbe;
    logic dat1_vfifo_ram_sbe;
    logic sdi_frm_err;
    logic zb_dma_frm_err;
    logic no_dma_werr_frm_err;
    logic no_dma_woerr_frm_err;
    logic mrkr_frm_err;
    logic internal_mode_clid_err;
    logic ext_mode_clid_err;
  } cdx_m2st_nfat_err_reg_t;

  // First ERR type
  typedef enum logic [4:0] {
    CDX_M2ST_NFAT_ERR_NONE      = 5'd0,
    CDX_M2ST_REQ_VFIFO_RAM_SBE  = 5'd1,
    CDX_M2ST_HDR_VFIFO_RAM_SBE  = 5'd2,
    CDX_M2ST_STS0_VFIFO_RAM_SBE = 5'd3,
    CDX_M2ST_STS1_VFIFO_RAM_SBE = 5'd4,
    CDX_M2ST_DAT0_VFIFO_RAM_SBE = 5'd5,
    CDX_M2ST_DAT1_VFIFO_RAM_SBE = 5'd6,
    SDI_FRM_ERR           = 5'd7,
    ZB_DMA_FRM_ERR        = 5'd8,
    NO_DMA_WERR_FRM_ERR   = 5'd9,
    NO_DMA_WOERR_FRM_ERR  = 5'd10,
    MRKR_FRM_ERR          = 5'd11,
    INTERNAL_MODE_CLID_ERR= 5'd12,
    EXT_MODE_CLID_ERR     = 5'd13
  } cdx_m2st_nfat_err_type_e;

  typedef struct packed {
    logic [31:$bits(cdx_m2st_nfat_err_type_e)] rsv;
    cdx_m2st_nfat_err_type_e err_type;
  } cdx_m2st_fst_nfat_err_reg_t;

  typedef struct packed {
    logic [7:0] chn3;
    logic [7:0] chn2;
    logic [7:0] chn1;
    logic [7:0] chn0;
  } cdx_m2st_req_sch_crd_reg_t;

  typedef struct packed {
    logic [31:$bits(cdm_rd_chan_id_t)+11+1+1] rsv;
    cdm_rd_chan_id_t rc_id;
    logic [10:0] crd_val;
    logic inc;
    logic dec;
  } cdx_m2st_dst_crd_upd_reg_t;
  /*}}}*/

  // Req Fab Registers/*{{{*/
  // 8-bit per-engine struct for allocating RRU channels
  typedef struct packed {
    logic [8-3-3-1:0] rsv;
    logic [2:0] num_blk;    // allow 0-6
    logic [2:0] blk_idx;    // allow 0-5
  } rru_alloc_vch_tbl_t;

  // Error struct for RRU allocation
  localparam RFAB_RNUM_CHNL = 3; // 1 for M2M, 1 for H2C-ST, 1 for Dsc Eng
  typedef struct packed {
    logic [32-RFAB_RNUM_CHNL*5-1-1:0]  rsv;
    // Invalid VCH detected on engine inputs
    logic [RFAB_RNUM_CHNL-1:0] rcp_deq_err;
    logic [RFAB_RNUM_CHNL-1:0] buf_req_err;
    // Overlap detected in VCH allocation
    logic rru_chn_col;
    // Invalid values driven for alloc_tbl
    logic [RFAB_RNUM_CHNL-1:0] tot_blk_err;
    logic [RFAB_RNUM_CHNL-1:0] num_blk_err;
    logic [RFAB_RNUM_CHNL-1:0] blk_idx_err;
  } rru_alloc_err_t;

  // Throttle register definition
  typedef struct packed {
    logic [5:0]  rsv;
    logic req_throt_en;  // Enable request throttle
    logic [11:0] req_th; // Number of outstanding requests
    logic dat_throt_en;  // Enable data throttle
    logic [11:0] dat_th; // Amount of outstanding data, units of 128B
  } rd_req_throt_reg_t;

  // Buffer Request VFIFO Sched Config
  typedef struct packed {
    logic max_en;
    logic [7:0] max_th;
    logic [7:0] min_th;
  } rfab_buf_req_sched_t;

  // Debug register definitions
  typedef struct packed {
    logic [6:0] wr_buf_req_vld;
    logic wr_buf_req_sched_vld;
    logic wr_buf_req_sched_rdy;
    logic buf_req_fifo_match;
    logic [8:0] buf_req_fifo_vld;
    logic [5:0] hdr_fifo_crdt;
    logic [6:0] pld_fifo_crdt;
  } req_fab_wr_mgmt_dbg0_t;

  typedef struct packed {
    logic rsv;
    logic [8:0] buf_req_fifo_rdy;
    logic [8:0] buf_req_tlp_arb_vld;
    logic [8:0] buf_req_tlp_arb_req;
    logic tlp_fifo_in_vld;
    logic tlp_fifo_in_rdy;
    logic tlp_arb_vld;
    logic tlp_arb_rdy;
  } req_fab_wr_mgmt_dbg1_t;

  typedef struct packed {
    logic [5:0] wpl_fifo_out_vld;
    logic [5:0] wpl_fifo_out_eop;
    logic [5:0] wpl_fifo_in_rdy;
    logic wpl_sb_fifo_vld;
    logic wpl_sb_fifo_rdy;
    logic [2:0] wpl_sb_fifo_eid;
    logic [4:0] wpl_sb_fifo_cnt;
    logic [3:0] wpl_sb_dat_cnt;
  } req_fab_wr_mux_dbg_t;

  typedef struct packed {
    logic [5:0] rsv;
    logic [2:0] pld_reg_wr_ix;
    logic [2:0] pld_aln_wr_ix;
    logic hdr_in_vld;
    logic hdr_in_rdy;
    logic wrq_vld;
    logic wrq_rdy;
    logic [5:0] hdr_fifo_cnt;
    logic [1:0] pld_fifo_in_vld;
    logic [1:0] pld_fifo_in_rdy;
    logic [1:0] wpl_vld;
    logic [1:0] wpl_rdy;
    logic [1:0] wpl_lst;
  } req_fab_wr_buf_dbg_t;

  typedef struct packed {
    logic rsv;
    logic arb_vld;
    logic arb_req;
    logic arb_gnt;
    logic [4:0] csi_dst;
    logic [4:0] csi_fifo;
    logic csi_fifo_avl;
    logic fifo_in_rdy;
    logic [1:0] eid;
    logic sob;
    logic eob;
    logic [1:0] frm;
    logic csi_bar;
    logic dma_bar;
    logic [4:0] rc_id;
    logic csi_th_chk;
    logic rcid_th_chk;
    logic hdr_fifo_avl;
  } req_fab_rd_arb_dbg_t;

  typedef struct packed {
    // 32-bits
    logic [10:0] len;
    logic [6:0]  saln;
    logic mrkr; // num_buf_ov C2H
    logic [4:0]  csi_dst;
    logic [7:0]  aoff;
    // 32-bits
    logic arb_vld;
    logic arb_req;
    logic arb_gnt;
    logic [4:0]  csi_fifo;
    logic csi_fifo_avl;
    logic fifo_in_rdy;
    logic last;
    logic [2:0]  eid;
    logic [5:0]  wpl_cnt;
    logic [11:0] eng_crdt;
  } req_fab_wr_arb_dbg_t;

    typedef struct packed {
    logic [2:0] rd_buf_req_vld;
    logic rd_buf_req_sched_vld;
    logic rd_buf_req_sched_rdy;
    logic [8:0] buf_req_fifo_vld;
    logic [8:0] buf_req_fifo_rdy;
    logic [8:0] buf_req_tlp_arb_vld;
  } req_fab_rd_sched_dbg0_t;

  typedef struct packed {
    logic csi_msg_th_chk_pass; // Only bit 0
    logic [23:0] rcid_th_chk_pass;
    logic [4:0]  csi_dat_th_chk_pass;
    logic tlp_fifo_in_vld;
    logic tlp_fifo_in_rdy;
  } req_fab_rd_sched_dbg1_t;

  typedef struct packed {
    logic buf_req_fifo_match;
    logic [8:0] buf_req_tlp_arb_req;
    logic tlp_fifo_out_vld;
    logic tlp_fifo_arb_req;
    logic [11:0] tlp_fifo_out_btlen;
    logic rcp_alloc_req_vld;
    logic rcp_alloc_req_rdy;
    logic rcp_alloc_binfo_vld;
    logic rcp_alloc_binfo_rdy;
    logic hdr_fifo_in_vld;
    logic hdr_fifo_in_rdy;
    logic rrq_vld;
    logic rrq_rdy;
  } req_fab_rd_sched_dbg2_t;

  typedef struct packed {
    logic [2:0]  rsv;
    logic [11:0] rcp_rob_crdt;
    logic [10:0] rcp_req_crdt;
    logic [5:0]  hdr_fifo_crdt;
  } req_fab_rd_sched_dbg3_t;

  typedef struct packed {
    logic [5:0]  rsv;
    logic rcp_vld_in;
    logic rcp_rdy_in;
    logic [23:0] rcp_binfo_vld;
  } req_fab_rd_cpl_dbg0_t;

  typedef struct packed {
    logic mdata_in_vld;
    logic mdata_in_rdy;
    logic [23:0] mdata_out_vld;
    logic [2:0]  rcp_deq_vld;
    logic [2:0]  rcp_deq_rdy;
  } req_fab_rd_cpl_dbg1_t;

  typedef struct packed {
    logic [19:0] rsv;
    logic rcp_aln_out_vld;
    logic rcp_aln_out_rdy;
    logic [9:0]  rcp_aln_out_rid;
  } req_fab_rd_cpl_dbg2_t;

  typedef struct packed {
    logic [2:0]  rsv;
    logic alloc_fifo_out_vld;
    logic alloc_fifo_out_rdy;
    logic free_rid_vld;
    logic free_rid_rdy;
    logic [10:0] free_rid_cnt;
    logic free_did_vld;
    logic free_did_rdy;
    logic [11:0] free_did_cnt;
  } req_fab_rd_cpl_dbg3_t;

  typedef struct packed {
    logic [7:0]  rsv;
    logic [23:0] stat_st;
  } req_fab_rd_cpl_dbg4_t;

  typedef struct packed {
    logic [7:0]  rsv;
    logic [23:0] deq_st;
  } req_fab_rd_cpl_dbg5_t;

  typedef struct packed {
    logic [2:0]  rsv;
    logic [4:0]  rob_vch_chn;
    logic [23:0] rob_vch_avl;
  } req_fab_rd_cpl_dbg6_t;

  typedef struct packed {
    logic [7:0]  vfifo_sched;    // Credits in vfifo_sched
    logic [11:0] pld_alloc;      // ROB/Payload Counter
    logic [11:0] buf_req_cnt;    // Cumulative Counter
  } req_fab_buf_req_dbg_t;

  typedef struct packed {
    logic [11:0] req_otsd;
    logic [11:0] dat_otsd;
  } req_fab_rd_throt_dbg_t;

  typedef struct packed {
    req_fab_rd_throt_dbg_t [23:0] dbg;
  } req_fab_rd_rcid_throt_dbg_t;

  typedef struct packed {
    req_fab_rd_throt_dbg_t [4:0] msg;
    req_fab_rd_throt_dbg_t [4:0] dat;
  } req_fab_rd_csi_throt_dbg_t;

  // Debug bus 256-bit registers
  typedef struct packed {
    req_fab_buf_req_dbg_t  c2h_dbg;
    req_fab_buf_req_dbg_t  m2m_dbg;
    req_fab_buf_req_dbg_t  cmpt_dbg;
    req_fab_buf_req_dbg_t  st2m_dbg;
    req_fab_wr_buf_dbg_t   wr_buf;
    req_fab_wr_mux_dbg_t   wr_mux;
    req_fab_wr_mgmt_dbg1_t wr_mgmt1;
    req_fab_wr_mgmt_dbg0_t wr_mgmt0;
  } cdx_req_fab_wr_req_dbg_t;

  typedef struct packed {
    logic [256-7*32-1:0]  rsv;
    req_fab_buf_req_dbg_t dsc_dbg;
    req_fab_buf_req_dbg_t h2c_dbg;
    req_fab_buf_req_dbg_t m2m_dbg;
    req_fab_rd_sched_dbg3_t dbg3;
    req_fab_rd_sched_dbg2_t dbg2;
    req_fab_rd_sched_dbg1_t dbg1;
    req_fab_rd_sched_dbg0_t dbg0;
  } cdx_req_fab_rd_req_dbg_t;

  typedef struct packed {
    logic [256-7*32-1:0]  rsv;
    req_fab_rd_cpl_dbg6_t dbg6;
    req_fab_rd_cpl_dbg5_t dbg5;
    req_fab_rd_cpl_dbg4_t dbg4;
    req_fab_rd_cpl_dbg3_t dbg3;
    req_fab_rd_cpl_dbg2_t dbg2;
    req_fab_rd_cpl_dbg1_t dbg1;
    req_fab_rd_cpl_dbg0_t dbg0;
  } cdx_req_fab_rd_cpl_dbg_t;

  typedef struct packed {
    req_fab_wr_arb_dbg_t [8:0]  dat;
  } cdx_req_fab_wr_arb_dbg_t;

  typedef struct packed {
    req_fab_rd_arb_dbg_t [8:0]  dat;
  } cdx_req_fab_rd_arb_dbg_t;

  // Checker for 32-bit sized registers
  typedef union packed {
    logic [31:0] reg_chk;
    rru_alloc_vch_tbl_t [3:0] rru_alloc;
    rru_alloc_err_t         rru_err;
    rd_req_throt_reg_t      throt_reg;
    req_fab_wr_mgmt_dbg0_t  wrq_dbg0;
    req_fab_wr_mgmt_dbg1_t  wrq_dbg1;
    req_fab_wr_buf_dbg_t    wrq_dbg2;
    req_fab_wr_mux_dbg_t    wrq_dbg3;
    req_fab_rd_sched_dbg0_t rrq_dbg0;
    req_fab_rd_sched_dbg1_t rrq_dbg1;
    req_fab_rd_sched_dbg2_t rrq_dbg2;
    req_fab_rd_sched_dbg3_t rrq_dbg3;
    req_fab_rd_arb_dbg_t    rrq_arb;
    req_fab_rd_cpl_dbg0_t   rcp_dbg0;
    req_fab_rd_cpl_dbg1_t   rcp_dbg1;
    req_fab_rd_cpl_dbg2_t   rcp_dbg2;
    req_fab_rd_cpl_dbg3_t   rcp_dbg3;
    req_fab_rd_cpl_dbg4_t   rcp_dbg4;
    req_fab_rd_cpl_dbg5_t   rcp_dbg5;
    req_fab_rd_cpl_dbg6_t   rcp_dbg6;
    req_fab_buf_req_dbg_t   req_dbg;
  } req_fab_reg_chk_t;

  // Checker for 256-bit sized registers
  typedef union packed {
    logic [255:0] reg_chk;
    cdx_req_fab_wr_req_dbg_t wrq_dbg;
    cdx_req_fab_rd_req_dbg_t rrq_dbg;
    cdx_req_fab_rd_cpl_dbg_t rcp_dbg;
  } req_fab_dbg_reg_chk_t;

  /*}}}*/

  // CSI Registers/*{{{*/
  typedef struct packed {
    logic [26:0] rsv;
    logic        mod_en;
    logic [3:0]  cmpl_delay;
  } cdx_cdm_csi_sink_crdt_cfg_t;

  typedef struct packed {
    logic crd_mgr_out_vld;
    logic crd_mgr_out_rdy;
    logic crd_mgr_match_vld;
    logic [5:0] crd_mgr_match_idx;
    logic crd_mgr_in_vld;
    logic crd_mgr_in_rdy;
    logic [8:0] crd_mgr_in_csi_fifo;
    logic [5:0] crd_mgr_in_cnt;
    logic [1:0] crd_mgr_in_sink_id;
    logic intr_msg_vld;
    logic intr_msg_rdy;
    logic wrq_vld;
    logic wrq_rdy;
  } cdx_cdm_csi_pr_dbg_t;

  typedef struct packed {
    logic [1:0] rsv;
    logic pr_job_resp_vld;
    logic pr_job_resp_rdy;
    logic npr_job_resp_vld;
    logic npr_job_resp_rdy;
    logic crd_mgr_out_vld;
    logic crd_mgr_out_rdy;
    logic crd_mgr_match_vld;
    logic [5:0] crd_mgr_match_idx;
    logic crd_mgr_in_vld;
    logic crd_mgr_in_rdy;
    logic [8:0] crd_mgr_in_csi_fifo;
    logic [1:0] crd_mgr_in_sink_id;
    logic pr_seq_in_vld;
    logic pr_seq_in_rdy;
    logic rrq_vld;
    logic rrq_rdy;
  } cdx_cdm_csi_npr_dbg_t;

  typedef struct packed {
    logic [3:0]  rsv;
    logic [10:0] csi_sink_cmpl_avail;
    logic [3:0]  csi_sink_cmpl_crdt;
    logic cmpl_gb_out_rdy;
    logic cmpl_gb_out_vld;
    logic csi_sink_out_rdy;
    logic csi_sink_out_vld;
    logic csi_sink_in_rdy;
    logic [7:0]  csi_sink_in_vld;
  } cdx_cdm_csi_cmpl_dbg_t;

  typedef struct packed {
    logic [15:0] job_cnt;    // Track job-end's sent
    logic [15:0] crdt_cnt;   // Track total credits sent
  } cdm_job_resp_dbg_t;

  // Checker for 32-bit sized registers
  typedef union packed {
    logic [31:0] reg_chk;
    cdm_job_resp_dbg_t  job_resp;
    cdx_cdm_csi_sink_crdt_cfg_t sink_cfg;
    cdx_cdm_csi_pr_dbg_t pr_dbg;
    cdx_cdm_csi_npr_dbg_t npr_dbg;
    cdx_cdm_csi_cmpl_dbg_t cmpl_dbg;
  } cdm_csi_reg_chk_t;

  // Debug structs for debug bus
  typedef struct packed {
    logic [31:0] ctl;
  } cdm_csi_ctl_dbg_t;

  typedef struct packed {
    cdm_csi_ctl_dbg_t ctl;
    csi_capsule_t hdr;
    logic [1023:0] dat;
  } cdm_csi_capsule_dbg_t;

  typedef struct packed {
      logic [255:0] dbg;
  } cdx_cdm_csi_dbg_t;
  /*}}}*/

`endif
