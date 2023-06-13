`ifndef CPM5N_KS_GLOBAL_DEF_SVH
`define CPM5N_KS_GLOBAL_DEF_SVH

`include "cpm5n_ef100_capsule_interfaces_def.svh"
`include "cpm5n_ks_slice_external_interfaces_v10_def.svh"
`include "cpm5n_ks_global_interfaces_def.svh"

// HNICX Memory Port defines in Scan Safe
parameter logic [1:0] HNICX_MEMCFG_SRSPUHD_RAWLM = 0;					
parameter logic [1:0] HNICX_MEMCFG_SRSPUHD_WABLM = 0;
parameter logic	      HNICX_MEMCFG_SRSPUHD_RAWL = 0;					
parameter logic       HNICX_MEMCFG_SRSPUHD_WABL = 1;
parameter logic [2:0] HNICX_MEMCFG_SRSPUHD_EMA    = 2;
parameter logic [1:0] HNICX_MEMCFG_SRSPUHD_EMAW   = 1;
parameter logic       HNICX_MEMCFG_SRSPUHD_EMAS   = 0;
parameter logic       HNICX_MEMCFG_SRSPUHD_STOV   = 0;
parameter logic [2:0] HNICX_MEMCFG_SRSPHD_EMA     = 3;
parameter logic [1:0] HNICX_MEMCFG_SRSPHD_EMAW    = 1;
parameter logic       HNICX_MEMCFG_SRSPHD_EMAS    = 0;
parameter logic       HNICX_MEMCFG_SRSPHD_STOV    = 0;
parameter logic [2:0] HNICX_MEMCFG_RFSPHD_EMA     = 3;
parameter logic [1:0] HNICX_MEMCFG_RFSPHD_EMAW    = 1;
parameter logic       HNICX_MEMCFG_RFSPHD_EMAS    = 0;
parameter logic       HNICX_MEMCFG_RFSPHD_STOV    = 0;
parameter logic [2:0] HNICX_MEMCFG_SR2PUHD_EMA    = 2;
parameter logic [1:0] HNICX_MEMCFG_SR2PUHD_EMAW   = 2;
parameter logic       HNICX_MEMCFG_SR2PUHD_EMAS   = 0;
parameter logic       HNICX_MEMCFG_SR2PUHD_EMAP   = 0;
parameter logic       HNICX_MEMCFG_SR2PUHD_STOV   = 0;
parameter logic       HNICX_MEMCFG_SR2PUHD_STOVAB = 0;
parameter logic	      HNICX_MEMCFG_SR2PUHD_RSTN   = 1;
parameter logic [2:0] HNICX_MEMCFG_RF2PHS_EMAB    = 3;
parameter logic [2:0] HNICX_MEMCFG_RF2PHS_EMAA    = 3;
parameter logic       HNICX_MEMCFG_RF2PHS_EMASA   = 0;
parameter logic       HNICX_MEMCFG_RF2PHS_STOV    = 0;
//

`define assert_clk_xrst(clk, rst, arg) \
    assert property (@(posedge clk) disable iff (rst) arg);

`define assert_clk(clk, arg) \
    assert property (@(posedge clk) arg);

//----- Probe Mux Vector definitions -----------
  typedef struct packed {
    logic [7:0]     psig;
  } hnicx_pbmx_group_t;

  typedef struct packed {
    hnicx_pbmx_group_t[3:0]    pbmx;
  } hnicx_pbmx_vec_t;


  typedef struct packed {
    logic [31:0]     psig;
  } hnicx_pbmx_group_w32_t;

  typedef struct packed {
    hnicx_pbmx_group_w32_t[15:0]    pbmx;
  } hnicx_pbmx_vec_512_t;
//----- pbmx_dbus structure -----------
  typedef struct packed {
    logic [511:0] data;
    logic         sop;
    logic         eop;
    logic [1:0]   err;
    logic         vld;
    logic         rdy;
    logic [6:0]   mty;
    logic [1:0]   ch;
  } pbmx_dbus_t;

typedef union packed {
  logic [145:0] data;
  ks_ef100_cap_netpkt_post_mae_t  np_post_mae;
  ks_ef100_cap_netpkt_pre_mae_t   np_pre_mae;
  ks_ef100_cap_netpkt_c2h_dma_t   np_c2h_dma;
  ks_ef100_cap_netpkt_c2h_dma_t   c2h_dma;
  ks_ef100_cap_netpkt_h2c_dma_t   h2c_dma;
} np_metadata_u;      // 146 bits
localparam np_metadata_size = $bits(np_metadata_u);  // this gives a nice clear error if the widths don't match

typedef struct packed {
  np_metadata_u               np_metadata; //146 bits
  ks_ef100_cap_netpkt_hdr_t   np_hdr; // 40 bits
} ks_cap_netpkt_data_t;     //186 bits

typedef struct packed {
  ks_cap_netpkt_data_t    net_hdr; //186 bits
  ks_ef100_cap_hdr_t      cap_hdr; //38 bits
} ks_cap_net_meta_t; //224 bits

typedef union packed {
  ks_ef100_cap_control_hdr_t   control;
  ks_ef100_cap_mem_write_hdr_t mem_write;
  ks_ef100_cap_barrier_hdr_t   barrier;
  ks_ef100_cap_tx_tstamp_t     tstamps;//KSR DMAC New TSTAMPS
} ks_ef100_oc_metadata_u;      // 182 bits
localparam oc_metadata_size = $bits(ks_ef100_oc_metadata_u);  // this gives a nice clear error if the widths don't match

typedef struct packed {
  ks_ef100_oc_metadata_u  oc_metadata; //182 bits 
  ks_ef100_oc_type_e      oc_type; //4 bits
} ks_ef100_cap_other_data_t; //186 bits

typedef union packed {
  ks_cap_netpkt_data_t netpkt; //186 bits
  ks_ef100_cap_other_data_t other;
} sss_ks_cap_data_u;  // 186 bits
localparam sss_ks_cap_data_size = $bits(sss_ks_cap_data_u);  // this gives a nice clear error if the widths don't match

typedef struct packed {
  logic [287:0] data;
  ks_ef100_net_cap_normal_metadata_t metadata;   // 224 bits
} sss_beat_net_cap_normal_metadata_t;  // 512 bits

//Arnab
typedef struct packed {
  sss_ks_cap_data_u  type_specific_header; //186 bits
  ks_ef100_cap_hdr_t common_capsule_header; //38 bits 
} ks_ef100_cap_meta_t; //224 bits

typedef struct packed {    // erb:todo: I assume this will be replaced with global version
  logic [287:0] body_data;
  sss_ks_cap_data_u data;
  ks_ef100_cap_hdr_t header;
} sss_beat_pseudo_hdr_t;   // 38 + 186 + 288 = 512 bits 

typedef union packed {
  logic [511:0] body_data;
  sss_beat_pseudo_hdr_t pseudo;
  sss_beat_net_cap_normal_metadata_t meta;
} sss_ks_icsb_data_u;
localparam sss_ks_icsb_data_size = $bits(sss_ks_icsb_data_u);  // this gives a nice clear error if the widths don't match
                
typedef struct packed {
  logic [1:0]  err;
  logic [5:0]  eop_mty;
  logic        eop;
  logic        sop;
  sss_ks_icsb_data_u data;
} sss_ks_icsb_beat_t;     // 512 + 1 + 1 + 6 + 2 = 522 bits
                

typedef struct packed {
  logic [1:0]  err;
  logic [6:0]  eop_mty;
  logic        eop;
  logic        sop;
  sss_ks_icsb_data_u data1;
  sss_ks_icsb_data_u data0;
} sss_ks_icsb1024_beat_t;     // 512 + 512 + 1 + 1 + 7 + 2 = 1035 bits
                
localparam sss_pkt1024_beat_size = $bits(sss_ks_icsb1024_beat_t);  // this gives a nice clear error if the widths don't match


//##############################################################################

// Payload of CM message related to sss_ks_cap_data_u (pseudo.data.other.control) Control Capsules

typedef union packed {
  ks_ef100_cap_cm_cntr_t  rmon;
  ks_ef100_cap_cm_csr_t   csr;
} ef100_cap_pyld_u;       // 448 bits


typedef struct packed {
  ef100_cap_pyld_u    cm_payload;          //448-bit payload
  logic [47:0]        cm_rsvd;             //48-bit reserved
  logic               cm_terminate;        //1-bit; indicates to downstream CEs not to process CMs
  logic               cm_terminate_on_err; //1-bit; F/W set; if CM error stop  processing later CMs and set cm_terminate
  cm_status_e         cm_status;           //2-bit  0=success, 1=CSR Timeout, 3-2 = TBD errors
  cnfg_msg_type_e     cm_op;               //6-bit
  logic [5:0]         cm_engine_id;        //6-bit; position of a single 1-hot target IDs (cnfg_engine_tgt_t)
} cnfg_msg_t;                              //512-bit

//##############################################################################

// Interface structures between Config Engine and RMON/Counter Engine

typedef struct packed {
  logic [31:0]  cntr_set_id;       //extracted from CM payload ks_ef100_cap_cm_cntr_t)
  logic         last;              //denotes last command to RMON (even NOP), flush and allow update commands to flow
  rmon_op_e     rmon_op;           //2-bit Operation
} rmon_engine_req_t;                        


typedef struct packed {
  logic          error;
  logic [47:0]   cntr_7;
  logic [47:0]   cntr_6;
  logic [47:0]   cntr_5;
  logic [47:0]   cntr_4;
  logic [47:0]   cntr_3;
  logic [47:0]   cntr_2;
  logic [47:0]   cntr_1;
  logic [47:0]   cntr_0;
} rmon_engine_rsp_t;                        

//**** Global RH union for RH Pseudo Net header **
//
//`include "ks_global_interfaces_def.sv"

//--- Note: This union needs to have the other net context types added as they're defined ----
typedef union packed {
  rh_h2c_dma_context_hdr_t    h2c_dma_hdr;
  rh_c2h_dma_context_hdr_t    c2h_dma_hdr;
} rh_net_context_u;

typedef struct packed {
  rh_net_context_u        contxt;
} rh_pseudo_netcontext_t;

`endif   // KS_GLOBAL_DEF_SVH
