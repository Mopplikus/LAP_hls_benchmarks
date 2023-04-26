`ifndef CPM5N_CDX5N_FAB_DEFS
`define CPM5N_CDX5N_FAB_DEFS
`include "cpm5n_cdc_defs.svh"
`include "cpm5n_defines.svh"
`include "cpm5n_ks_global_def.svh"

`define FIND_NUM_FIFO(DAT_WID) (DAT_WID/32 + (((DAT_WID%32) == 0) ? 0 :1))

`define find_max2(v1, v2) ((v1) > (v2) ? (v1) : (v2))
`define find_max3(v1, v2, v3) `find_max2((v1), `find_max2((v2), (v3)))
`define find_max4(v1, v2, v3 , v4) `find_max2(`find_max2((v1), (v2)), `find_max2((v3), (v4)))

`define ENABLE_FAB_MUX

`define G4_MUX_SEL_BIT     1:0
`define CDM_MUX_SEL_BIT    2
`define G4_MUX_OUT_SEL_BIT 3
`define CSI_SEL_BIT        4
`define FLR_SEL_BIT        5
`define A2_SEL_BIT         6
`define A3_SEL_BIT         7
`define MSGLD_SEL_BIT      8
`define HAH_SEL_BIT        9
`define RRU_SEL_BIT        10
`define CSI_FUR_BIT        16
`define TEL_SEL_BIT        17

`define HAH_PORT_SEL_BIT   30
`define FLR_PORT_SEL_BIT   31

localparam FAB_LO_OUT_MUX_BITS = 1180;
localparam FAB_UP_OUT_MUX_BITS = 1320;
localparam FAB_LO_IN_MUX_BITS  = 1832;
localparam FAB_UP_IN_MUX_BITS  = 1832;

  typedef enum logic [1:0] {
    FAB_QDMA = 0,
    FAB_DMAC = 1,
    FAB_CDM  = 2,
    FAB_CSI  = 3
  } fab_mux_mode_e;

  typedef enum logic {
    FAB_FULL_CDM = 0,
    FAB_CDM_CDC  = 1
  } fab_cdm_mode_e;

  typedef enum logic {
    FAB_LOW = 0,
    FAB_UP  = 1
  } fab_mode_e;

  typedef enum logic {
     FAB_PORT0 = 0,
     FAB_PORT1 = 1
  } fab_port_mode_e;

  typedef struct packed {
    logic [319:0] seg;
    logic         eop;
    logic         sop;
    logic         err;
  } cdx5n_fab_1s_seg_t;

  typedef struct packed {
    logic [1:0]  snk_id;
    logic [1:0]  furc_id;
    csi_flow_t   flow_type;
    logic [6:0]  buf_id;
    logic [15:0] crdt;
  } cdx5n_csi_local_crdt_t;

  //--------------POP Crdit Structs----------//

  typedef struct packed {
   logic jreq_rdy;
  } cdx_a2_sched_crdt_in_t;

  typedef struct packed {
   //logic dcrd_rdy;
   logic src_jrsp_rdy;
  } cdx_a2_sched_crdt_out_t;


  typedef struct packed {
   logic dcrd_rdy;
  } cdx_rru_sched_crdt_out_t;

  typedef struct packed {
   logic jreq_rdy;
  } cdx_a3_sched_crdt_in_t;

  typedef struct packed {
   logic scrd_rdy;
  } cdx_a3_sched_crdt_out_t;

  typedef struct packed {
   logic lcrdt_rdy;
   logic [1:0] prcmpl_rdy;
  } cdx_csi_crdt_in_t;

  typedef struct packed {
   logic dcrdt_rdy;
   logic npr_rdy;
   logic [1:0] prcmpl_rdy;
  } cdx_csi_crdt_out_t;

  typedef struct packed {
   logic bready;
   logic rready;
  } cdx_flr_crdt_in_t;

  typedef struct packed {
   logic awready;
   logic arready;
   logic wready;
  } cdx_flr_crdt_out_t;

  typedef struct packed {
   logic awready;
   logic arready;
   logic wready;
  } cdx_hah_crdt_in_t;

  typedef struct packed {
   logic bready;
   logic rready;
  } cdx_hah_crdt_out_t;

  //--------------------------------------//
  //-----------Schedular Sturcts----------//
  //--------------------------------------//
  typedef struct packed {
    ks_sched_msg_t msg;
    logic vld;
  } cdx_fab_sched_msg_t;

  localparam cdx_fab_sched_msg_t_sig = $bits(cdx_fab_sched_msg_t);

  typedef struct packed {
    cdx_a3_sched_crdt_in_t POP_CRDT;
    cdx_fab_sched_msg_t scrd;
  } cdx_fab_a3_sched_in_t;
  localparam cdx_fab_a3_sched_in_t_sig = $bits(cdx_fab_a3_sched_in_t);

  typedef struct packed {
    cdx_a3_sched_crdt_out_t POP_CRDT;
    cdx_fab_sched_msg_t jreq;
  } cdx_fab_a3_sched_out_t;

  localparam cdx_fab_a3_sched_out_t_sig = $bits(cdx_fab_a3_sched_out_t);

  typedef struct packed {
    cdx_fab_sched_msg_t dcrd;
  } cdx_fab_rru_sched_in_t;

  localparam cdx_fab_rru_sched_in_t_sig = $bits(cdx_fab_rru_sched_in_t);

  typedef struct packed {
    logic dcrd_rdy;
  } cdx_fab_rru_sched_out_t;

  localparam cdx_fab_rru_sched_out_t_sig = $bits(cdx_fab_rru_sched_out_t);

  typedef struct packed {
    cdx_a2_sched_crdt_in_t POP_CRDT;
    cdx_fab_sched_msg_t src_jrsp;
    //cdx_fab_sched_msg_t dcrd;
  } cdx_fab_a2_sched_in_t;

  localparam cdx_fab_a2_sched_in_t_sig = $bits(cdx_fab_a2_sched_in_t);

  typedef struct packed {
    cdx_a2_sched_crdt_out_t POP_CRDT;
    cdx_fab_sched_msg_t jreq;
  } cdx_fab_a2_sched_out_t;
  localparam cdx_fab_a2_sched_out_t_sig = $bits(cdx_fab_a2_sched_out_t);

  typedef struct packed {
    logic [3:0] gic_intr;
  } cdx_fab_gic_intr_t;

  typedef struct packed {
    cdx5n_fab_1s_seg_t  prcmpl;
    logic               prcmpl_vld;
  } cdx_fab_csi_prcmpl_t;

  localparam cdx_fab_csi_prcmpl_t_sig = $bits(cdx_fab_csi_prcmpl_t);

  typedef struct packed {
    cdx5n_fab_1s_seg_t  npr;
    logic               npr_vld;
  } cdx_fab_csi_npr_t;

  localparam cdx_fab_csi_npr_t_sig = $bits(cdx_fab_csi_npr_t);

  typedef struct packed {
    cdx_fab_sched_msg_t dcrdt;
    logic               dcrdt_vld;
  } cdx_fab_csi_dcrdt_t;
  localparam cdx_fab_csi_dcrdt_t_sig = $bits(cdx_fab_csi_dcrdt_t);

  typedef struct packed {
    cdx5n_csi_local_crdt_t   lcrdt;
    logic                    lcrdt_vld;
  } cdx_fab_csi_lcrdt_t;
  localparam cdx_fab_csi_lcrdt_t_sig = $bits(cdx_fab_csi_lcrdt_t);

  //---------------------------------//
  //-------------CDX to Fab----------//
  //---------------------------------//
  typedef struct packed {
    logic                  h2p_sched_msg_rdy; 
    logic                  icsb_p2h_af; 
  } cdx_dmac_crdt_out_t;
  localparam cdx_dmac_crdt_out_t_sig = $bits(cdx_dmac_crdt_out_t);
  
  typedef struct packed {
    cdx_dmac_crdt_out_t    POP_CRDT; 
    ks_plugin_credit_msg_t rd_notify_p2h;  
    logic                  rd_notify_p2h_vld; 
    sss_ks_icsb1024_beat_t  icsb_h2p ;
    logic                  icsb_h2p_vld;
  } cdx_fab_dmac_out_t;
  localparam cdx_fab_dmac_out_t_sig = $bits(cdx_fab_dmac_out_t);

  typedef struct packed {
    logic FAB_RSVD;
    logic FAB_H2C_ST_BYP_IN_M2ST_REQ_RDY;
    logic FAB_DSC_CRD_MSGLD_REQ_RDY;
    logic FAB_CMPT_MSGST_RDY;
    logic FAB_C2H_ST_ST2M_DAT_RDY;
    logic FAB_C2H_ST_BYP_IN_ST2M_REQ_RDY;
    logic FAB_RRU_DST_CRD_RDY;
  } cdx_cdm_crdt_out_t; 
  
  localparam cdx_cdm_crdt_out_t_sig = $bits(cdx_cdm_crdt_out_t);

  typedef struct packed {
    cdx_cdm_crdt_out_t POP_CRDT;
    cdx_qsts_rsp_ext_t FAB_QSTS_RSP;
    logic FAB_QSTS_RSP_VLD;
    cdx_c2h_pld_cmpt_crdt_t FAB_C2H_ST_PLD_CMPT_CRDT;
    logic FAB_C2H_ST_PLD_CMPT_CRDT_VLD; 
    cdx_mm_byp_out_rsp_t FAB_BYP_OUT_MSGLD_DAT;
    logic FAB_BYP_OUT_MSGLD_DAT_VLD;
    cdx_h2c_st_m2st_dat_t FAB_H2C_ST_M2ST_DAT;
    logic FAB_H2C_ST_M2ST_DAT_VLD;
  } cdx_fab_cdm_out_t;

  localparam cdx_fab_cdm_out_t_sig = $bits(cdx_fab_cdm_out_t);

  typedef struct packed {
    logic FAB_RSVD;
    logic FAB_MM_BYP_IN_M2M_RDY;  
    logic FAB_DSC_CRD_MSGLD_REQ_RDY;
    logic FAB_CMPT_MSGST_RDY;  
    logic FAB_C2H_ST_ST2M_DAT_RDY;   
    logic FAB_C2H_ST_BYP_IN_ST2M_REQ_RDY;
    logic FAB_RRU_DST_CRD_RDY;
  } cdx_qdma_crdt_out_t;

  localparam cdx_qdma_crdt_out_t_sig = $bits(cdx_qdma_crdt_out_t);
  
  typedef struct packed {
    cdx_qdma_crdt_out_t POP_CRDT;
    cdx_c2h_pld_cmpt_crdt_t FAB_C2H_ST_PLD_CMPT_CRDT;
    logic FAB_C2H_ST_PLD_CMPT_CRDT_VLD; 
    qdm_tm_dsc_sts_t FAB_TM_STS;
    logic FAB_TM_STS_VLD;
    cdx_qsts_rsp_ext_t FAB_QSTS_RSP;
    logic FAB_QSTS_RSP_VLD;
    cdx_mm_byp_out_rsp_t FAB_BYP_OUT_MSGLD_DAT;
    logic FAB_BYP_OUT_MSGLD_DAT_VLD;
    cdx_h2c_st_m2st_dat_t FAB_H2C_ST_M2ST_DAT;
    logic FAB_H2C_ST_M2ST_DAT_VLD;
    cdx_qdm_c2h_stat_ext_t FAB_C2H_ST_STAT;
    logic FAB_C2H_ST_STAT_VLD;
  } cdx_fab_qdma_out_t;
  localparam cdx_fab_qdma_out_t_sig = $bits(cdx_fab_qdma_out_t);
  typedef struct packed {
    logic FAB_RSVD;
    logic FAB_H2C_ST_BYP_IN_M2ST_REQ_RDY;
    logic fab_cdc_top_fabric_req_in_rdy;
    logic FAB_C2H_ST_ST2M_DAT_RDY;
    logic FAB_C2H_ST_BYP_IN_ST2M_REQ_RDY;
    logic FAB_RRU_DST_CRD_RDY;
  } cdx_cdm_cdc_crdt_out_t;
  localparam cdx_cdm_cdc_crdt_out_t_sig = $bits(cdx_cdm_cdc_crdt_out_t);
  typedef struct packed {
    cdx_cdm_cdc_crdt_out_t POP_CRDT;
    cdx_qsts_rsp_ext_t FAB_QSTS_RSP;
    logic FAB_QSTS_RSP_VLD;
    cdc_resp_t fab_cdc_top_resp_out;  
    logic fab_cdc_top_resp_out_vld;  
    cdx_h2c_st_m2st_dat_t FAB_H2C_ST_M2ST_DAT;
    logic FAB_H2C_ST_M2ST_DAT_VLD;
  } cdx_fab_cdm_cdc_out_t;  
  localparam cdx_fab_cdm_cdc_out_t_sig = $bits(cdx_fab_cdm_cdc_out_t);

typedef struct packed {
  logic FAB_DSC_CRD_MSGLD_REQ_RDY;
  logic FAB_CMPT_MSGST_RDY;
} cdx_msgldst_crdt_out_t;

localparam cdx_msgldst_crdt_out_t_sig = $bits(cdx_msgldst_crdt_out_t);

typedef struct packed {
  cdx_msgldst_crdt_out_t   POP_CRDT;
  cdx_mm_byp_out_rsp_t     FAB_BYP_OUT_MSGLD_DAT;
  logic                    FAB_BYP_OUT_MSGLD_DAT_VLD;
} cdx_fab_msgldst_out_t;

localparam cdx_fab_msgldst_out_t_sig = $bits(cdx_fab_msgldst_out_t);
typedef struct packed {
  cdx_csi_crdt_out_t         POP_CRDT;
  cdx_fab_csi_lcrdt_t        LCRDT;
  cdx_fab_csi_prcmpl_t [1:0] PRCMPL;
} cdx_fab_csi_out_t;

localparam cdx_fab_csi_out_t_sig = $bits(cdx_fab_csi_out_t);
typedef struct packed {
  logic [31:0] awaddr;
  logic [31:0] awuser;
  logic [2:0]  awprot;
  logic        awvalid;
} cdx_fab_hah_aw_t;

typedef struct packed {
  logic [31:0] araddr;
  logic [31:0] aruser;
  logic [2:0]  arprot;
  logic        arvalid;
} cdx_fab_hah_ar_t;


typedef struct packed {
  logic [63:0] wdata;
  logic [7:0]  wstrb;
  logic        wvalid;
} cdx_fab_hah_w_t;


typedef struct packed {
cdx_hah_crdt_out_t POP_CRDT;  
cdx_fab_hah_w_t  W;  
cdx_fab_hah_ar_t AR;  
cdx_fab_hah_aw_t AW;
} cdx_fab_hah_out_t;

localparam cdx_fab_hah_out_t_sig = $bits(cdx_fab_hah_out_t);

typedef struct packed {
  logic [31:0] rdata;
  logic [1:0]  rresp;
  logic        rvalid;
} cdx_fab_flr_r_t;


typedef struct packed {
  logic [1:0] bresp;
  logic       bvalid;
} cdx_fab_flr_b_t;


typedef struct packed {
cdx_flr_crdt_out_t POP_CRDT;
cdx_fab_gic_intr_t INTR;  
cdx_fab_flr_b_t B;  
cdx_fab_flr_r_t R;
} cdx_fab_flr_out_t;

localparam cdx_fab_flr_out_t_sig = $bits(cdx_fab_flr_out_t);

localparam DMAC_LO_OUT_RSV_BITS    =  FAB_LO_OUT_MUX_BITS - $bits(cdx_fab_dmac_out_t);
localparam DMAC_UP_OUT_RSV_BITS    =  FAB_UP_OUT_MUX_BITS - $bits(cdx_fab_dmac_out_t);
localparam CDM_LO_OUT_RSV_BITS     =  FAB_LO_OUT_MUX_BITS - $bits(cdx_fab_cdm_out_t);
localparam CDM_UP_OUT_RSV_BITS     =  FAB_UP_OUT_MUX_BITS - $bits(cdx_fab_cdm_out_t);
localparam QDMA_LO_OUT_RSV_BITS    =  FAB_LO_OUT_MUX_BITS - $bits(cdx_fab_qdma_out_t);
localparam QDMA_UP_OUT_RSV_BITS    =  FAB_UP_OUT_MUX_BITS - $bits(cdx_fab_qdma_out_t);
localparam CDM_CDC_LO_OUT_RSV_BITS =  FAB_LO_OUT_MUX_BITS - $bits(cdx_fab_cdm_cdc_out_t);
localparam CDM_CDC_UP_OUT_RSV_BITS =  FAB_UP_OUT_MUX_BITS - $bits(cdx_fab_cdm_cdc_out_t);
localparam CSI_LO_OUT_RSV_BITS     =  FAB_LO_OUT_MUX_BITS - $bits(cdx_fab_csi_out_t);
localparam CSI_UP_OUT_RSV_BITS     =  FAB_UP_OUT_MUX_BITS - $bits(cdx_fab_csi_out_t);

typedef union packed {
 struct packed {
   logic [QDMA_LO_OUT_RSV_BITS-1:0] rsvd;
   cdx_fab_qdma_out_t  dat;
   } qdma;
 struct packed {
   logic [CDM_LO_OUT_RSV_BITS-1:0] rsvd;
   cdx_fab_cdm_out_t   dat;
   } cdm;
 struct packed {
   logic  [DMAC_LO_OUT_RSV_BITS-1:0] rsvd;
   cdx_fab_dmac_out_t  dat;
  } dmac;

 struct packed {
   logic [CSI_LO_OUT_RSV_BITS-1 : 0] rsvd;
   cdx_fab_csi_out_t   dat;
  } csi;
} cdx_fab_lo_mux_out_t;

localparam cdx_fab_lo_mux_out_t_sig = $bits(cdx_fab_lo_mux_out_t);

typedef union packed {
 struct packed {
   logic [QDMA_UP_OUT_RSV_BITS-1:0] rsvd;
   cdx_fab_qdma_out_t  dat;
   } qdma;
 struct packed {
   logic [CDM_UP_OUT_RSV_BITS-1:0] rsvd;
   cdx_fab_cdm_out_t   dat;
   } cdm;
 struct packed {
   logic  [DMAC_UP_OUT_RSV_BITS-1:0] rsvd;
   cdx_fab_dmac_out_t  dat;
  } dmac;
 struct packed {
   logic [CDM_CDC_UP_OUT_RSV_BITS-1 : 0] rsvd;
   cdx_fab_cdm_cdc_out_t   dat;
  } cdm_cdc;
 struct packed {
   logic [CSI_UP_OUT_RSV_BITS-1 : 0] rsvd;
   cdx_fab_csi_out_t   dat;
  } csi;

} cdx_fab_up_mux_out_t;

localparam cdx_fab_up_mux_out_t_sig = $bits(cdx_fab_up_mux_out_t);
//`ifdef ENABLE_FAB_MUX

typedef struct packed {
  logic rstn;  
  cdx_fab_hah_out_t hah;  
  cdx_fab_flr_out_t flr;
//cdx_fab_rru_sched_out_t rru_sched;
  cdx_fab_a3_sched_out_t a3_sched;
  cdx_fab_a2_sched_out_t a2_sched;
  cdx_fab_csi_out_t csi;
  cdx_fab_lo_mux_out_t mux;
} fab_lo_out_0_t;

localparam fab_lo_out_0_t_sig = $bits(fab_lo_out_0_t);

typedef struct packed {
  cdx_fab_lo_mux_out_t mux;
  cdx_fab_flr_out_t    flr;
//cdx_fab_rru_sched_out_t rru_sched;
  cdx_fab_a3_sched_out_t  a3_sched;
  cdx_fab_a2_sched_out_t  a2_sched;
} fab_lo_out_1_t;

localparam fab_lo_out_1_t_sig = $bits(fab_lo_out_1_t);

typedef struct packed {
  logic rstn;
  cdx_fab_up_mux_out_t  mux;
  cdx_fab_msgldst_out_t msgldst;
  cdx_fab_csi_out_t     csi;
} fab_up_out_0_t;

localparam fab_up_out_0_t_sig = $bits(fab_up_out_0_t);

typedef struct packed {
  cdx_fab_up_mux_out_t mux;
  cdx_fab_hah_out_t    hah;
} fab_up_out_1_t;

localparam fab_up_out_1_t_sig = $bits(fab_up_out_1_t);

//`endif
//----------------------------------------------//
//---------------Fab to CDX (Incoming)----------//
//----------------------------------------------//
typedef struct packed {
    logic FAB_C2H_ST_PLD_CMPT_CRDT_RDY;
    logic FAB_TM_STS_RDY;
    logic FAB_QSTS_RSP_RDY;
    logic FAB_BYP_OUT_MSGLD_DAT_RDY;
    logic FAB_H2C_ST_M2ST_DAT_RDY;
    logic FAB_C2H_ST_STAT_RDY;
} cdx_qdma_crdt_in_t;

localparam cdx_qdma_crdt_in_t_sig = $bits(cdx_qdma_crdt_in_t);

typedef struct packed {
    cdx_qdma_crdt_in_t POP_CRDT;
    cdx_mm_byp_in_m2m_req_t FAB_MM_BYP_IN_M2M;
    logic FAB_CH; 
    logic FAB_MM_BYP_IN_M2M_VLD;
    cdx_dsc_crd_in_msgld_req_t FAB_DSC_CRD_MSGLD_REQ;
    logic FAB_DSC_CRD_MSGLD_REQ_VLD;
    cdx_cmpt_msgst_t FAB_CMPT_MSGST ;
    logic FAB_CMPT_MSGST_VLD;
    cdx_c2h_st2m_dat_t FAB_C2H_ST_ST2M_DAT;
    logic FAB_C2H_ST_ST2M_DAT_VLD;
    cdx_c2h_st_byp_in_st2m_req_t  FAB_C2H_ST_BYP_IN_ST2M_REQ;
    logic FAB_C2H_ST_BYP_IN_ST2M_REQ_VLD;
    cdm_rru_dst_crdt_t FAB_RRU_DST_CRD;
    logic FAB_RRU_DST_CRD_VLD;
} cdx_fab_qdma_in_t;

localparam cdx_fab_qdma_in_t_sig = $bits(cdx_fab_qdma_in_t);

typedef struct packed {
    logic                  icsb_h2p_af;  
    logic                  rd_notify_p2h_rdy; 
} cdx_dmac_crdt_in_t;

typedef struct packed {
    cdx_dmac_crdt_in_t POP_CRDT;
    ks_sched_msg_t h2p_sched_msg;
    logic h2p_sched_msg_vld;  
    sss_ks_icsb1024_beat_t icsb_p2h_bus;
    logic icsb_p2h_ch;
    logic icsb_p2h_vld;
} cdx_fab_dmac_in_t;

localparam cdx_fab_dmac_in_t_sig = $bits(cdx_fab_dmac_in_t);

typedef struct packed {
    logic FAB_QSTS_RSP_RDY;
    logic FAB_C2H_ST_PLD_CMPT_CRDT_RDY;
    logic FAB_BYP_OUT_MSGLD_DAT_RDY;
    logic FAB_H2C_ST_M2ST_DAT_RDY;
} cdx_cdm_crdt_in_t ;

typedef struct packed {
    cdx_cdm_crdt_in_t POP_CRDT;
    cdx_mm_byp_in_m2m_req_t FAB_MM_BYP_IN_M2M;
    logic FAB_CH; 
    logic FAB_MM_BYP_IN_M2M_VLD;
    cdx_dsc_crd_in_msgld_req_t FAB_DSC_CRD_MSGLD_REQ;
    logic FAB_DSC_CRD_MSGLD_REQ_VLD;
    cdx_cmpt_msgst_t FAB_CMPT_MSGST ;
    logic FAB_CMPT_MSGST_VLD;
    cdx_c2h_st2m_dat_t FAB_C2H_ST_ST2M_DAT;
    logic FAB_C2H_ST_ST2M_DAT_VLD;
    cdx_c2h_st_byp_in_st2m_req_t  FAB_C2H_ST_BYP_IN_ST2M_REQ;
    logic FAB_C2H_ST_BYP_IN_ST2M_REQ_VLD;
    cdm_rru_dst_crdt_t FAB_RRU_DST_CRD;
    logic FAB_RRU_DST_CRD_VLD;
} cdx_fab_cdm_in_t;

localparam cdx_fab_cdm_in_t_sig = $bits(cdx_fab_cdm_in_t);

typedef struct packed {
    logic FAB_QSTS_RSP_RDY;
    logic fab_cdc_top_resp_out_rdy;  
    logic FAB_H2C_ST_M2ST_DAT_RDY;
} cdx_cdm_cdc_crdt_in_t ;

typedef struct packed {
    cdx_cdm_cdc_crdt_in_t POP_CRDT;
    cdx_mm_byp_in_m2m_req_t FAB_MM_BYP_IN_M2M;
    logic FAB_CH; 
    logic FAB_MM_BYP_IN_M2M_VLD;
    cdc_req_t fab_cdc_top_fabric_req_in;
    logic     fab_cdc_top_fabric_req_in_vld;
    cdx_c2h_st2m_dat_t FAB_C2H_ST_ST2M_DAT;
    logic FAB_C2H_ST_ST2M_DAT_VLD;
    cdx_c2h_st_byp_in_st2m_req_t  FAB_C2H_ST_BYP_IN_ST2M_REQ;
    logic FAB_C2H_ST_BYP_IN_ST2M_REQ_VLD;
    cdm_rru_dst_crdt_t FAB_RRU_DST_CRD;
    logic FAB_RRU_DST_CRD_VLD;

} cdx_fab_cdm_cdc_in_t;

localparam cdx_fab_cdm_cdc_in_t_sig = $bits(cdx_fab_cdm_cdc_in_t);

typedef struct packed {
    logic FAB_BYP_OUT_MSGLD_DAT_RDY;
} cdx_msgldst_crdt_in_t;


typedef struct packed {
    cdx_msgldst_crdt_in_t POP_CRDT;
    cdx_dsc_crd_in_msgld_req_t FAB_DSC_CRD_MSGLD_REQ;
    logic FAB_DSC_CRD_MSGLD_REQ_VLD;
    cdx_cmpt_msgst_t FAB_CMPT_MSGST ;
    logic FAB_CMPT_MSGST_VLD;

} cdx_fab_msgldst_in_t;
localparam cdx_fab_msgldst_in_t_sig = $bits(cdx_fab_msgldst_in_t);

typedef struct packed {
  cdx_csi_crdt_in_t          POP_CRDT;
  cdx_fab_csi_dcrdt_t        DCRDT;
  cdx_fab_csi_npr_t          NPR;
  cdx_fab_csi_prcmpl_t [1:0] PRCMPL;
} cdx_fab_csi_in_t;

localparam cdx_fab_csi_in_t_sign = $bits(cdx_fab_csi_in_t);

localparam QDMA_LO_IN_RSV_BITS       =  FAB_LO_IN_MUX_BITS - $bits(cdx_fab_qdma_in_t);
localparam QDMA_UP_IN_RSV_BITS       =  FAB_UP_IN_MUX_BITS - $bits(cdx_fab_qdma_in_t);
localparam DMAC_LO_IN_RSV_BITS       =  FAB_LO_IN_MUX_BITS - $bits(cdx_fab_dmac_in_t);
localparam DMAC_UP_IN_RSV_BITS       =  FAB_UP_IN_MUX_BITS - $bits(cdx_fab_dmac_in_t);
localparam CDM_LO_IN_RSV_BITS        =  FAB_LO_IN_MUX_BITS - $bits(cdx_fab_cdm_in_t);
localparam CDM_UP_IN_RSV_BITS        =  FAB_UP_IN_MUX_BITS - $bits(cdx_fab_cdm_in_t);
localparam CDM_CDC_LO_IN_RSV_BITS    =  FAB_LO_IN_MUX_BITS - $bits(cdx_fab_cdm_cdc_in_t);
localparam CDM_CDC_UP_IN_RSV_BITS    =  FAB_UP_IN_MUX_BITS - $bits(cdx_fab_cdm_cdc_in_t);
localparam CSI_LO_IN_RSV_BITS        =  FAB_LO_IN_MUX_BITS - $bits(cdx_fab_csi_in_t);
localparam CSI_UP_IN_RSV_BITS        =  FAB_UP_IN_MUX_BITS - $bits(cdx_fab_csi_in_t);

typedef union packed {
   
  // struct packed {
  // logic [CDM_CDC_LO_IN_RSV_BITS-1:0] rsvd;
  // cdx_fab_cdm_cdc_in_t dat;
  // } cdm_cdc;
   struct packed {
   logic [CDM_LO_IN_RSV_BITS-1:0] rsvd;
   cdx_fab_cdm_in_t     dat;
   } cdm;
   struct packed {
   logic [DMAC_LO_IN_RSV_BITS-1:0] rsvd;
   cdx_fab_dmac_in_t    dat;
   } dmac;
   struct packed {
   logic [QDMA_LO_IN_RSV_BITS-1:0] rsvd;
   cdx_fab_qdma_in_t    dat;
   } qdma;

   struct packed {
   logic [CSI_LO_IN_RSV_BITS-1:0] rsvd;  
   cdx_fab_csi_in_t  dat;
   } csi;

} cdx_fab_lo_mux_in_t;

localparam cdx_fab_lo_mux_in_t_sig = $bits(cdx_fab_lo_mux_in_t);

typedef union packed {
   
   struct packed {
   logic [CDM_CDC_UP_IN_RSV_BITS-1:0] rsvd;
   cdx_fab_cdm_cdc_in_t dat;
   } cdm_cdc;
   struct packed {
   logic [CDM_UP_IN_RSV_BITS-1:0] rsvd;
   cdx_fab_cdm_in_t     dat;
   } cdm;
   struct packed {
   logic [DMAC_UP_IN_RSV_BITS-1:0] rsvd;
   cdx_fab_dmac_in_t    dat;
   } dmac;
   struct packed {
   logic [QDMA_UP_IN_RSV_BITS-1:0] rsvd;
   cdx_fab_qdma_in_t    dat;
   } qdma;

   struct packed {
   logic [CSI_UP_IN_RSV_BITS-1:0] rsvd;  
   cdx_fab_csi_in_t  dat;
   } csi;

} cdx_fab_up_mux_in_t;

localparam cdx_fab_up_mux_in_t_sig = $bits(cdx_fab_up_mux_in_t);

typedef struct packed {
  logic [63:0] rdata;
  logic [1:0]  rresp;
  logic        rvalid;
} cdx_fab_hah_r_t;

typedef struct packed {
  logic [1:0]  bresp;
  logic        bvalid;
} cdx_fab_hah_b_t;

typedef struct packed {
  cdx_hah_crdt_in_t POP_CRDT;
  cdx_fab_hah_r_t  R;
  cdx_fab_hah_b_t  B;
} cdx_fab_hah_in_t;

localparam cdx_fab_hah_in_t_sig = $bits(cdx_fab_hah_in_t);

typedef struct packed {
  logic [31:0] awaddr;
  logic [2:0]  awprot;
  logic [12:0] awuser;
  logic        awvalid;
} cdx_fab_flr_aw_t;

typedef struct packed {
  logic [31:0] araddr;
  logic [2:0]  arprot;
  logic [12:0] aruser;
  logic        arvalid;
} cdx_fab_flr_ar_t;

typedef struct packed {
  logic [31:0] wdata;
  logic [3:0]  wstrb;
  logic        wvalid;
} cdx_fab_flr_w_t;

typedef struct packed {
  cdx_flr_crdt_in_t POP_CRDT;
  cdx_fab_flr_w_t   W;
  cdx_fab_flr_ar_t  AR;
  cdx_fab_flr_aw_t  AW;
} cdx_fab_flr_in_t;

localparam cdx_fab_flr_in_t_sig = $bits(cdx_fab_flr_in_t);

typedef union packed {
  struct packed {
    logic [8-$bits(cdx_dmac_crdt_in_t)-1:0] rsvd;
    cdx_dmac_crdt_in_t POP_CRDT;
   } dmac;
  struct packed {
    logic [8-$bits(cdx_qdma_crdt_in_t)-1:0] rsvd;
    cdx_qdma_crdt_in_t POP_CRDT;
   } qdma;
  struct packed {
    logic [8-$bits(cdx_cdm_crdt_in_t)-1:0] rsvd;
    cdx_cdm_crdt_in_t POP_CRDT;
   } cdm;
  struct packed {
    logic [8-$bits(cdx_cdm_cdc_crdt_in_t)-1:0] rsvd;
    cdx_cdm_cdc_crdt_in_t POP_CRDT;
   } cdm_cdc;

} cdx_mux_crdt_in_t;


typedef struct packed {
  logic [7:0] tel_rdy;
 } cdx_tel_crdt_in_t;

localparam cdx_mux_crdt_in_t_sig = $bits(cdx_mux_crdt_in_t);

typedef union packed {
  struct packed {
    logic [8-$bits(cdx_dmac_crdt_out_t)-1:0] rsvd;
    cdx_dmac_crdt_out_t POP_CRDT;
   } dmac;
  struct packed {
    logic [8-$bits(cdx_qdma_crdt_out_t)-1:0] rsvd;
    cdx_qdma_crdt_out_t POP_CRDT;
   } qdma;
  struct packed {
    logic [8-$bits(cdx_cdm_crdt_out_t)-1:0] rsvd;
    cdx_cdm_crdt_out_t POP_CRDT;
   } cdm;
  struct packed {
    logic [8-$bits(cdx_cdm_cdc_crdt_out_t)-1:0] rsvd;
    cdx_cdm_cdc_crdt_out_t POP_CRDT;
   } cdm_cdc;
} cdx_mux_crdt_out_t;

localparam cdx_mux_crdt_out_t_sig = $bits(cdx_mux_crdt_out_t);


typedef struct packed {
//cdx_rru_sched_crdt_in_t rru_sched;  
cdx_a2_sched_crdt_in_t a2_sched;  
cdx_a3_sched_crdt_in_t a3_sched;
cdx_tel_crdt_in_t   tel;
cdx_csi_crdt_in_t   csi;
cdx_flr_crdt_in_t   flr;
cdx_hah_crdt_in_t   hah;  
cdx_mux_crdt_in_t   mux;
cdx_msgldst_crdt_in_t msgldst;

} fifo_crdt_in_t;

typedef struct packed {
//cdx_rru_sched_crdt_out_t rru_sched;  
  cdx_a2_sched_crdt_out_t a2_sched;  
  cdx_a3_sched_crdt_out_t a3_sched;
  cdx_csi_crdt_out_t   csi;
  cdx_flr_crdt_out_t   flr;
  cdx_hah_crdt_out_t   hah;  
  cdx_mux_crdt_out_t   mux;
  cdx_msgldst_crdt_out_t msgldst;

} fifo_crdt_out_t;

//`ifdef ENABLE_FAB_MUX
typedef struct packed {
  cdx_fab_hah_in_t        hah;
  cdx_fab_flr_in_t        flr;
//cdx_fab_rru_sched_in_t  rru_sched;
  cdx_fab_a3_sched_in_t   a3_sched;
  cdx_fab_a2_sched_in_t   a2_sched;
  cdx_fab_csi_in_t        csi;
  cdx_fab_lo_mux_in_t    mux;
} fab_lo_in_0_t;

localparam fab_lo_in_0_t_sig = $bits(fab_lo_in_0_t);

typedef struct packed {
  cdx_fab_lo_mux_in_t    mux;
  cdx_fab_flr_in_t        flr;
  //cdx_fab_rru_sched_in_t  rru_sched;
  cdx_fab_a3_sched_in_t   a3_sched;
  cdx_fab_a2_sched_in_t   a2_sched;
} fab_lo_in_1_t;

localparam fab_lo_in_1_t_sig = $bits(fab_lo_in_1_t);

typedef struct packed {
  cdx_fab_up_mux_in_t  mux;
  cdx_fab_msgldst_in_t msgldst;
  cdx_fab_csi_in_t     csi;
} fab_up_in_0_t;

localparam fab_up_in_0_t_sig = $bits(fab_up_in_0_t);

typedef struct packed {
  cdx_fab_lo_mux_in_t mux;
  cdx_fab_hah_in_t    hah;
} fab_up_in_1_t;

localparam fab_up_in_1_t_sig = $bits(fab_up_in_1_t);

typedef struct packed {
 logic [CDX_FAB_LO_OUT_0_BITS-1:0] dat;
} cdx_fab_lo_out_0_t;

typedef struct packed {
 logic [CDX_FAB_LO_OUT_1_BITS-1:0] dat;
} cdx_fab_lo_out_1_t;

typedef struct packed {
 logic [CDX_FAB_UP_OUT_0_BITS-1:0] dat;
} cdx_fab_up_out_0_t;

typedef struct packed {
 logic [CDX_FAB_UP_OUT_1_BITS-1:0] dat;
} cdx_fab_up_out_1_t;

typedef struct packed {
 logic [CDX_FAB_LO_IN_0_BITS-1:0] dat ;
} cdx_fab_lo_in_0_t;

typedef struct packed {
 logic [CDX_FAB_LO_IN_1_BITS-1:0] dat ;
} cdx_fab_lo_in_1_t;

typedef struct packed {
 logic [CDX_FAB_UP_IN_0_BITS-1:0] dat ;
} cdx_fab_up_in_0_t;

typedef struct packed {
 logic [CDX_FAB_UP_IN_1_BITS-1:0] dat ;
} cdx_fab_up_in_1_t;

`endif
