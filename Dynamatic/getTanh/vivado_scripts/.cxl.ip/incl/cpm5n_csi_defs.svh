`ifndef CPM5N_CDX5N_CSI_DEFS
`define CPM5N_CDX5N_CSI_DEFS

`include "cpm5n_csi_param_defs.svh"

`define DEF_PCI_SINK_BASE_ADDR  'h0001_C000 
`define DEF_CDM_SINK_BASE_ADDR  'h0001_D000 
`define DEF_TNOC_SINK_BASE_ADDR 'h0001_E000 
`define DEF_BNOC_SINK_BASE_ADDR 'h0001_F000 

`define NEW_SCHEME
//`define FIXED_JLEN_FIFO_SCHEME

typedef logic [4:0] num_buf_t;

typedef struct packed {
   logic [C_DEST_ID_W-1:0] csi_dest_id;
   logic [C_DEST_FIFO_ID_W-1:0] csi_dest_fifo_id; 
} seg_csi_glbl_bfr_id_t;

typedef struct packed {
   logic [LBUF_ID_W-1:0] snk_bufid;
} seg_csi_local_bfr_id_t;

typedef struct packed {
  logic [159:0] data;
  logic sop;
  logic eop;
} seg_t;

typedef enum logic [1:0] {
  IS_X8 = 0,
  IS_X4,
  IS_X2,
  IS_X1
} furcation_mode_e;

typedef struct packed {
   furcation_mode_e furc_m;
} per_seg_fur_t;

typedef enum logic [2:0] {
  CSI_X8 = 0,
  CSI_X4,
  CSI_X2_X2,
  CSI_X2_X1_X1,// Segments 2,3 are independant
  CSI_X1_X1_X2,// Segments 0,1 are independant
  CSI_X1_X1_X1_X1
} fur_mode_attr_e;

parameter CSI_FT_NPR  = 2'b00 ;
parameter CSI_FT_CMPL = 2'b01 ;
parameter CSI_FT_PR   = 2'b10 ;

typedef logic [1:0] fltyp_t;

typedef struct packed {
  fur_mode_attr_e fur_m_attr;
} per_if_fur_t;

typedef struct packed {
  logic seg7_eq_seg6;
  logic seg7_eq_seg5;
  logic seg7_eq_seg4;
  logic seg7_eq_seg3;
  logic seg7_eq_seg2;
  logic seg7_eq_seg1;
  logic seg7_eq_seg0;
  logic seg6_eq_seg5;
  logic seg6_eq_seg4;
  logic seg6_eq_seg3;
  logic seg6_eq_seg2;
  logic seg6_eq_seg1;
  logic seg6_eq_seg0;
  logic seg5_eq_seg4;
  logic seg5_eq_seg3;
  logic seg5_eq_seg2;
  logic seg5_eq_seg1;
  logic seg5_eq_seg0;
  logic seg4_eq_seg3;
  logic seg4_eq_seg2;
  logic seg4_eq_seg1;
  logic seg4_eq_seg0;
  logic seg3_eq_seg2;
  logic seg3_eq_seg1;
  logic seg3_eq_seg0;
  logic seg2_eq_seg1;
  logic seg2_eq_seg0;
  logic seg1_eq_seg0;
} seg_eq_t;

typedef struct packed {
  logic [C_JB_CHNK_LEN-1:0] sz_0;
  logic [C_JB_CHNK_LEN-1:0] sz_1;
  logic [C_JB_CHNK_LEN-1:0] sz_2;
  logic [C_JB_CHNK_LEN-1:0] sz_3;
  logic [C_JB_CHNK_LEN-1:0] sz_4;
  logic [C_JB_CHNK_LEN-1:0] sz_5;
  logic [C_JB_CHNK_LEN-1:0] sz_6;
  logic [C_JB_CHNK_LEN-1:0] sz_7;

  logic [C_JB_CHNK_LEN-1:0] add0_0;
  logic [C_JB_CHNK_LEN:0] add1_01;
  logic [C_JB_CHNK_LEN:0] add2_02;
  logic [C_JB_CHNK_LEN:0] add3_03;
  logic [C_JB_CHNK_LEN:0] add3_23;
  logic [C_JB_CHNK_LEN:0] add4_04;
  logic [C_JB_CHNK_LEN:0] add5_05;
  logic [C_JB_CHNK_LEN:0] add6_06;
  logic [C_JB_CHNK_LEN:0] add7_07;

  logic [C_JB_CHNK_LEN:0] add4_24;
  logic [C_JB_CHNK_LEN:0] add5_25;
  logic [C_JB_CHNK_LEN:0] add5_45;
  logic [C_JB_CHNK_LEN:0] add6_26;
  logic [C_JB_CHNK_LEN:0] add6_46;
  logic [C_JB_CHNK_LEN:0] add7_27;
  logic [C_JB_CHNK_LEN:0] add7_47;
  logic [C_JB_CHNK_LEN:0] add7_67;
} job_comb_t;

typedef struct packed {
  logic [C_JB_CHNK_LEN-3:0] sz_0;
  logic [C_JB_CHNK_LEN-3:0] sz_1;
  logic [C_JB_CHNK_LEN-3:0] sz_2;
  logic [C_JB_CHNK_LEN-3:0] sz_3;
  logic [C_JB_CHNK_LEN-3:0] sz_4;
  logic [C_JB_CHNK_LEN-3:0] sz_5;
  logic [C_JB_CHNK_LEN-3:0] sz_6;
  logic [C_JB_CHNK_LEN-3:0] sz_7;

  logic [C_JB_CHNK_LEN-3:0] add0_0;
  logic [C_JB_CHNK_LEN-2:0] add1_01;
  logic [C_JB_CHNK_LEN-2:0] add2_02;
  logic [C_JB_CHNK_LEN-2:0] add3_03;
  logic [C_JB_CHNK_LEN-2:0] add3_23;
  logic [C_JB_CHNK_LEN-2:0] add4_04;
  logic [C_JB_CHNK_LEN-2:0] add5_05;
  logic [C_JB_CHNK_LEN-2:0] add6_06;
  logic [C_JB_CHNK_LEN-2:0] add7_07;

  logic [C_JB_CHNK_LEN-2:0] add4_24;
  logic [C_JB_CHNK_LEN-2:0] add5_25;
  logic [C_JB_CHNK_LEN-2:0] add5_45;
  logic [C_JB_CHNK_LEN-2:0] add6_26;
  logic [C_JB_CHNK_LEN-2:0] add6_46;
  logic [C_JB_CHNK_LEN-2:0] add7_27;
  logic [C_JB_CHNK_LEN-2:0] add7_47;
  logic [C_JB_CHNK_LEN-2:0] add7_67;
} job_comb_nseg_t;


typedef struct packed {
  logic full;
  logic empty;
} jsz_q_sts_t;

typedef struct packed {
  logic vc_en;
  logic vc_cfg_dn;
  logic [LBUF_ID_W-1:0]  buf_id;  
  logic [LBUF_ADD_W-1:0] start_add;
  logic [LBUF_ADD_W-1:0] end_add;
  logic [C_JOB_SZ_W-1:0] prg_job_sz;
} sbuf_ctxt_rd_t; //Static buffer context

typedef struct packed {
  `ifdef SIMULATION
  logic [LBUF_ADD_W-1:0] cur_buf_fill_lvl;
  logic [LBUF_ADD_W-1:0] max_buf_fill_lvl;
  `endif
  logic [LBUF_ADD_W-1:0] rd_ptr;
  logic                  tmr_expired;
  logic [LBUF_ADD_W-1:0] wr_ptr;
  logic                  tmr_armed;
  jsz_q_sts_t            jsz_q_sts;
  logic [C_JOB_SZ_W-2  :0] cur_job_segs; //cur job size can be > prog job size in case of end of job condition
  logic [C_JOB_SZ_W  :0] cur_job_sz; //cur job size can be > prog job size in case of end of job condition
  logic [C_JOB_SZ_W +1 :0] cur_npr_rslt_sz; //cur job size can be > prog job size in case of end of job condition
} buf_ctxt_rd_t;

typedef struct packed {
  logic        sink_idle;
  logic        txn_on;
  logic [LBUF_ID_W-1:0]  buf_id;  
  logic [C_JB_TMR_W-1:0] tmr_val;
  logic        tmr_armed;
  logic        tmr_expired;
  jsz_q_sts_t  jsz_q_sts;
  logic [2:0]  tmr_seg;
  logic [C_JB_TMR_W-1:0] tmr_snst;
  logic [C_JOB_SZ_W-2:0] cur_job_segs; //cur job size can be > prog job size in case of end of job condition
  logic [C_JOB_SZ_W  :0] cur_job_sz; //cur job size can be > prog job size in case of end of job condition
  logic [C_JOB_SZ_W +1 :0] cur_npr_rslt_sz; //cur job size can be > prog job size in case of end of job condition
} tmt_ctxt_rd_t;

typedef struct packed {
  logic       incr_sop;
  logic [3:0] sop_cnt;
  logic       incr_eop;
  logic [3:0] eop_cnt;
  logic       incr_seg;
  logic [3:0] seg_cnt;
  logic       incr_jsz;
  logic [C_JOB_SZ_W-2:0] jsz_cnt;
  `ifdef SIMULATION
  logic [LBUF_ADD_W-1:0] cur_buf_fill_lvl;
  logic [LBUF_ADD_W-1:0] max_buf_fill_lvl;
  `endif
  logic                  csi_buf_ovfl;
  logic                  txn_on;
  logic [LBUF_ADD_W-1:0] wr_ptr;
} buf_ctxt_wr_t;

typedef struct packed {
  logic [C_JOB_SZ_W-2:0] cur_job_segs; //cur job size can be > prog job size in case of end of job condition
  logic [C_JOB_SZ_W :0] cur_job_sz; //cur job size can be > prog job size in case of end of job condition
  logic [C_JOB_SZ_W +1:0] cur_npr_rslt_sz; //cur job size can be > prog job size in case of end of job condition
} jb_sz_ctxt_wr_t;

typedef struct packed {
  logic tmr_expired;   
  logic [C_JB_TMR_W-1:0] tmr_snst;
  logic tmr_armed;
  logic [2:0] tmr_seg;
} tmr_ctxt_wr_t;

typedef struct packed {
  logic incr_jsz;
  logic [C_JOB_SZ_W-2:0] jsz_cnt;
  logic [C_JB_TMR_W-1:0] tmr_snst;
  logic tmr_expired;   
  logic tmr_armed;
} tmt_ctxt_wr_t;

typedef struct packed {
  logic [C_JB_TMR_W-1:0] tmr_snst;
} jb_tmr_snpsht_t;

typedef struct packed {
  logic tmr_armed;
} jb_tmr_armed_t;

typedef struct packed {
  logic [LBUF_ADD_W-1:0] start_add;
  logic [LBUF_ADD_W-1:0] end_add;
  logic [LBUF_ADD_W-1:0] wr_ptr;
  logic [LBUF_ADD_W-1:0] rd_ptr;
  logic                  is_npr; //FIXME
} rp_ctxt_rd_t;

typedef struct packed {
  logic 			 dbg_cnt_clr;
  logic [7:0] cap_cntid;
  logic [7:0] map_pr_cntid;
  logic [C_SRC_ID_W-1:0]       csi_src_id;
  logic [CSCHED_DEST_ID_W-1:0] csched_dest_id;
  logic [C_VIRT_CH_ID_W-1:0]   csi_virt_ch_id; 
  logic [CRDT_CNTR_W_MAX-1:0]  lcrdt_cntid;
  logic is_mngd;
  logic is_npr;
} cap_map_ctxt_t;

typedef struct packed {
  cap_map_ctxt_t rp_cap_ctxt_rd_d;
  rp_ctxt_rd_t rp_ctxt_rd_d;
} rd_pipe_ctxt_t;


typedef struct packed {
logic [31:28] rsv2;
logic [27:16] cpl_off;
logic [15:3] rsv1;
logic [2:0] req_off; 
} rp_rg_ctxt_t;

typedef struct packed {
rp_rg_ctxt_t rg_cfg;
} rg_limit_t;

typedef struct packed {
  rp_rg_ctxt_t rg_cfg;
  logic [3:0][15:0] mtu_reg;
  logic rd_governer_en;
  logic vc_alloc_en;
  logic [7:0]  timer_val;
} gbl_reg_t;

typedef struct packed {
  logic [LBUF_ADD_W-1:0] rd_ptr;
} rp_ctxt_wr_t;

typedef logic [C_JOB_SZ_W-1:0] jb_sz_t;
typedef logic [C_JOB_SZ_W-3:0] jb_sz_seg_t;
typedef logic [C_JOB_SZ_W+1:0] npr_rslt_t;
typedef logic [LBUF_ADD_W-1:0] lbuf_add_t;
typedef logic [LBUF_ID_W-1:0] lbuf_id_t;
typedef logic [$clog2(C_WP_EBUF_D):0] elst_buf_ptr_t;

typedef struct packed {
 logic [15:0] src_id;
 logic [1:0]  mxcreds;//1:0 - encoded value, 0
 logic [15:0] creds; //
 logic [15:0] dst_id;// 
} job_req_t;

typedef struct packed {
  logic [15:0] src_id;
  logic [15:0] cost;
  logic [15:0] dcreds;
  logic [15:0] dcreds_type1;
  logic [1:0]  screds;
  logic        msg;
  logic        barrier;
  logic [2:0]  barrier_code;
  logic        error;
  logic [1:0]  maxcr;
} job_rsp_t; 

  typedef struct packed {
    logic       [3:0] job_done;
    lbuf_id_t   [3:0] job_done_buf_id;
    fltyp_t     [3:0] job_done_fltyp;
    logic       [3:0] job_sz_vld;
    jb_sz_seg_t [3:0] job_sz;
    npr_rslt_t  [3:0] job_npr_rslt_sz;
    lbuf_id_t   [3:0] job_sz_lbuf_id;
    fltyp_t     [3:0] job_sz_fltyp;
  } wp_jb_dn_t;

  typedef struct packed {
    logic       [7:0] job_done;
    lbuf_id_t   [7:0] job_done_buf_id;
    fltyp_t     [7:0] job_done_fltyp;
    logic       [7:0] job_sz_vld;
    jb_sz_seg_t [7:0] job_sz;
    npr_rslt_t  [7:0] job_npr_rslt_sz;
    lbuf_id_t   [7:0] job_sz_lbuf_id;
    fltyp_t     [7:0] job_sz_fltyp;
  } wp_jb_dn_8s_t;

  typedef struct packed {
    logic       job_done;
    lbuf_id_t   job_done_buf_id;
    fltyp_t     job_done_fltyp;
    logic       job_sz_vld;
    jb_sz_seg_t job_sz;
    npr_rslt_t  job_npr_rslt_sz;
    lbuf_id_t   job_sz_lbuf_id;
    fltyp_t     job_sz_fltyp;
  } wp_jb_dn_1s_t;

typedef struct packed {
  logic [LBUF_ADD_W-1:0] cur_buf_fill_lvl;
  logic [LBUF_ADD_W-1:0] max_buf_fill_lvl;
} dbg_buf_fill_lvl_ctxt_t;

typedef logic [4:0] vc_t;

typedef struct packed {
  vc_t cdm_vc_cnt;
  vc_t pcie_vc_cnt;
  vc_t tnoc_vc_cnt;
} psx_vc_t;
typedef struct packed {
  vc_t cdm_vc_cnt;
  vc_t pcie_vc_cnt;
  vc_t psx_vc_cnt;
} tnoc_vc_t;
typedef struct packed {
  vc_t cdm_vc_cnt;
  vc_t tnoc_vc_cnt;
  vc_t psx_vc_cnt;
} pcie_vc_t;

typedef struct packed {
  vc_t pcie_vc_cnt;
  vc_t tnoc_vc_cnt;
  vc_t psx_vc_cnt;
} cdm_vc_t;

typedef struct packed {
  cdm_vc_t npr;
  cdm_vc_t cmpl;
  cdm_vc_t pr;
} cdm_snk_vc_t;

typedef struct packed {
  pcie_vc_t npr;
  pcie_vc_t cmpl;
  pcie_vc_t pr;
} pcie_snk_vc_t;

typedef struct packed {
  tnoc_vc_t npr;
  tnoc_vc_t cmpl;
  tnoc_vc_t pr;
} tnoc_snk_vc_t;

typedef struct packed {
  psx_vc_t npr;
  psx_vc_t cmpl;
  psx_vc_t pr;
} psx_snk_vc_t;

typedef struct packed {
  psx_snk_vc_t psx_snk_attr;
  tnoc_snk_vc_t tnoc_snk_attr;
  pcie_snk_vc_t pcie_snk_attr;
  cdm_snk_vc_t cdm_snk_attr;
  per_if_fur_t cdm_fur_attr;
  per_if_fur_t pcie_fur_attr;
  per_if_fur_t tnoc_fur_attr;
  per_if_fur_t psx_fur_attr;
} csi_attr_t;

typedef struct packed {
  psx_snk_vc_t psx_snk_attr;
  tnoc_snk_vc_t tnoc_snk_attr;
  pcie_snk_vc_t pcie_snk_attr;
  cdm_snk_vc_t cdm_snk_attr;
} csi_reg_attr_t;

typedef struct packed {
  logic vld;
  jb_sz_seg_t val;
  logic [$clog2(MAX_CMPL_DATA_OTSD_IN_DW)-1:0 ] npr_res_val;
  logic done;
} rp_jb_dn_t;

typedef struct packed {
  logic eop;
  logic is_last;
  logic [LBUF_ID_W-1:0] buf_id;
  logic [CSI_DW_LEN_W-1:0] pyld_sz;
  logic [1:0] dest_id;
} govern_cmpl_t;

typedef struct packed {
  logic [$clog2(MAX_CMPL_DATA_OTSD_IN_DW):0] max_otsd_data;
  logic [$clog2(MAX_NPR_OTSD):0] max_npr_otsd;
}read_govern_cfg_t;

typedef struct packed {
  logic [7:0] bid;
  logic ptr;
  logic wen;
  logic [31:0]wdat;
} jlen_cntx_wr_t;

typedef struct packed {
  logic [31:0] rsvd;
  logic [31:0] buf_sts;
  logic [47:0] seq_cnt;
  logic [15:0] seg_cnt;
  logic [15:0] eop_cnt;
  logic [15:0] sop_cnt;
} rp_dbg_sts_t;

typedef struct packed {
  rp_dbg_sts_t dbg;
  logic [15:0] rptr;
  logic [15:0] wptr;
  logic [15:0] soff;
  logic [15:0] eoff;
} jlen_fifo_cntx_t;

typedef struct packed {
  lbuf_id_t nxt_cyc_buf_id;
  fltyp_t nxt_cyc_fltyp;
  logic nxt_cyc_vld;
  logic nxt_cyc_sop;
  logic nxt_cyc_eop;
  logic [LBUF_ID_W-1:0] ctxt_rd_add;  
  logic [3:0] seg_addr_offset;
  logic [3:0] seg_adr_ofst_pls1;
  lbuf_add_t cmp_offset;
  lbuf_add_t neg_offset;
  lbuf_add_t wb_cmp_offset;
  lbuf_add_t wb_neg_offset;
  logic [7:0] vldt_vc_eq_vc;
  logic wb_en;
  logic [C_JOB_SZ_W-1:0] sbuf_ctxt_prg_job_sz;
  logic [LBUF_ID_W-1:0]  sbuf_ctxt_buf_id;  
} wp_precalc_t;

typedef struct packed {
  logic sop;
  logic eop;
  logic vld;
  seg_csi_glbl_bfr_id_t bid;
  logic [1:0]  dest_id;
  logic is_cmpl;
  logic rdy;
  logic [27:0] vc_eq_vc;
} precalc_ctl_t;

`endif
