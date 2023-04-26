`ifndef _cpm5n_ef100_capsule_interfaces_def_e_sv__
`define _cpm5n_ef100_capsule_interfaces_def_e_sv__

//=============================================================================
//         !!!                      CAUTION                 !!!
//
//         !!!                 GENERATED CODE               !!!
//
//         !!!  DO NOT MANUALLY EDIT THE CODE IN THIS FILE  !!!
//
//=============================================================================

//auto-struct-begin
// ------------------------------------------------------
//                   Structs
// ------------------------------------------------------

  typedef struct packed {
    logic [185:0]   data;
    logic [37:0]    hdr;
  } ks_ef100_capsule_t;

  typedef struct packed {
    logic [13:0]   ch_length;
    logic          ch_cpc_present;
    logic [5:0]    ch_route_rsvd;
    logic          ch_route_rdp_out_host_chan;
    logic          ch_route_rsvd_2;
    logic          ch_route_rdp_out_net;
    logic          ch_route_rdp_d_pl;
    logic          ch_route_rdp_c_pl;
    logic          ch_route_rdp_b_pl;
    logic          ch_route_rdp_a_pl;
    logic          ch_route_rdp_a;
    logic          ch_route_rdp_pl_chan;
    logic          ch_route_rdp_in_net;
    logic [5:0]    ch_vc;
    logic          ch_is_net_packet;
  } ks_ef100_cap_hdr_t;

  typedef struct packed {
    logic [29:0]   np_rx_timestamp;
    logic [1:0]    np_l2_status;
    logic          np_has_fcs;
    logic          np_extended_meta;
    logic [5:0]    np_type;
  } ks_ef100_cap_netpkt_hdr_t;

  typedef struct packed {
    logic [31:0]   user_mark;
    logic [15:0]   dst_mport;
    logic [15:0]   src_mport;
    logic [11:0]   src_id;
    logic [15:0]   tx_timestamp_desc_id;
    logic          tx_timestamp_req;
    logic          rx_timestamp_is_set;
  } ks_ef100_cap_netpkt_sub_1_t;

  typedef struct packed {
    logic [13:0]   reserved;
    logic [15:0]   vlan_insert_tci;
    logic          vlan_insert_en;
    logic [4:0]    cso_partial_csum_w;
    logic [8:0]    cso_partial_start_w;
    logic [1:0]    cso_partial_en;
    logic [2:0]    cso_inner_l3;
    logic          cso_outer_l4;
    logic          cso_outer_l3;
    logic [93:0]   sub_1;
  } ks_ef100_cap_netpkt_h2c_dma_t;

  typedef struct packed {
    logic [145:0]   np_metadata;
    logic [29:0]    np_rx_timestamp;
    logic [1:0]     np_l2_status;
    logic           np_has_fcs;
    logic           np_extended_meta;
    logic [5:0]     np_type;
  } ks_ef100_cap_netpkt_data_t;

  typedef struct packed {
    logic [145:0]   np_metadata;
    logic [29:0]    np_rx_timestamp;
    logic [1:0]     np_l2_status;
    logic           np_has_fcs;
    logic           np_extended_meta;
    logic [5:0]     np_type;
    logic [13:0]    ch_length;
    logic           ch_cpc_present;
    logic [5:0]     ch_route_rsvd;
    logic           ch_route_rdp_out_host_chan;
    logic           ch_route_rsvd_2;
    logic           ch_route_rdp_out_net;
    logic           ch_route_rdp_d_pl;
    logic           ch_route_rdp_c_pl;
    logic           ch_route_rdp_b_pl;
    logic           ch_route_rdp_a_pl;
    logic           ch_route_rdp_a;
    logic           ch_route_rdp_pl_chan;
    logic           ch_route_rdp_in_net;
    logic [5:0]     ch_vc;
    logic           ch_is_net_packet;
  } ks_ef100_net_cap_normal_metadata_t;

  typedef struct packed {
    logic [105:0]   br_rsvd2;
    logic [63:0]    br_cookie;
    logic [5:0]     br_rsvd;
    logic [2:0]     br_extract;
    logic [2:0]     br_type;
  } ks_ef100_cap_barrier_hdr_t;

  typedef struct packed {
    logic [37:0]   cc_rsvd;
    logic [15:0]   cc_dest;
    logic [63:0]   cc_process;
    logic [63:0]   cc_serialize;
  } ks_ef100_cap_control_hdr_t;

  typedef struct packed {
    logic [63:0]   mw_ev;
    logic [11:0]   mw_vi_id;
    logic [35:0]   mw_addr_spc;
    logic [1:0]    mw_reserved2;
    logic [63:0]   mw_addr;
    logic          mw_ev_ordered;
    logic          mw_ev_cmpt2;
    logic          mw_ev_en;
    logic          mw_translate_addr;
  } ks_ef100_cap_mem_write_hdr_t;

  typedef struct packed {
    logic [351:0]   csr_rsvd;
    logic [31:0]    csr_mask;
    logic [31:0]    csr_data;
    logic [31:0]    csr_addr;
  } ks_ef100_cap_cm_csr_t;

  typedef struct packed {
    logic [47:0]   cntr_7;
    logic [47:0]   cntr_6;
    logic [47:0]   cntr_5;
    logic [47:0]   cntr_4;
    logic [47:0]   cntr_3;
    logic [47:0]   cntr_2;
    logic [47:0]   cntr_1;
    logic [47:0]   cntr_0;
    logic [31:0]   cntr_reserved;
    logic [31:0]   cntr_set_id;
  } ks_ef100_cap_cm_cntr_t;

  typedef struct packed {
    logic [31:0]   plugin_kernels;
    logic [21:0]   future_use;
    logic          ae_rmon;
    logic          me_rmon;
    logic          vnic_rx_rmon;
    logic          vnic_tx_rmon;
    logic          net_tx_cnfg;
    logic          net_rx_cnfg;
    logic          vnic_rx_cnfg;
    logic          ae_cnfg;
    logic          me_cnfg;
    logic          vnic_tx_cnfg;
  } cnfg_engine_tgt_t;

  typedef struct packed {
    logic [199:0]   data;
    logic [23:0]    hdr;
  } ef100_capsule_t;

  typedef struct packed {
    logic [7:0]   ch_route_rsvd;
    logic [3:0]   ch_route_rdp_dst;
    logic         ch_route_rdp_d;
    logic         ch_route_rdp_c;
    logic         ch_route_rdp_b;
    logic [1:0]   ch_route_rdp_a;
    logic [5:0]   ch_vc;
    logic         ch_is_net_packet;
  } ef100_cap_hdr_t;

  typedef struct packed {
    logic [145:0]   np_metadata;
    logic [29:0]    np_rx_timestamp;
    logic [1:0]     np_l2_status;
    logic [13:0]    np_length;
    logic           np_has_fcs;
    logic           np_extended_meta;
    logic [5:0]     np_type;
  } ef100_cap_netpkt_data_t;

  typedef struct packed {
    logic [193:0]   oc_metadata;
    logic [5:0]     oc_type;
  } ef100_cap_other_data_t;

  typedef struct packed {
    logic [167:0]   txts_rsvd;
    logic [7:0]     txts_num_tstamps;
    logic [5:0]     txts_rsvd1;
  } ks_ef100_cap_tx_tstamp_t;

  typedef struct packed {
    logic [31:0]   ts_tstamp;
    logic [15:0]   ts_desc_id;
    logic [1:0]    ts_rsvd;
    logic          ts_barrier;
    logic          ts_error;
    logic [11:0]   ts_vi_id;
  } ks_ef100_cap_tx_tstamp_tstamps_t;


// ------------------------------------------------------
//                   Enums
// ------------------------------------------------------

typedef enum logic {
  KS_EF100_RDP_IN_NET_DMAC          = 0,
  KS_EF100_RDP_IN_NET_NET           = 1
  } ks_ef100_rdp_in_net_e;

typedef enum logic {
  KS_EF100_RDP_A_VNIC_TX_OR_H2P     = 0,
  KS_EF100_RDP_A_HUB_NA             = 1
  } ks_ef100_rdp_a_e;

typedef enum logic {
  KS_EF100_RDP_A_PL_VNIC_TX         = 0,
  KS_EF100_RDP_A_PL_H2P             = 1
  } ks_ef100_rdp_a_pl_e;

typedef enum logic {
  KS_EF100_RDP_B_PL_MAE             = 0,
  KS_EF100_RDP_B_PL_VNT2P_OR_NRX2P  = 1
  } ks_ef100_rdp_b_pl_e;

typedef enum logic {
  KS_EF100_RDP_C_PL_VNIC_RX_OR_NET_TX = 0,
  KS_EF100_RDP_C_PL_HMAE2P_OR_NMAE2P = 1
  } ks_ef100_rdp_c_pl_e;

typedef enum logic {
  KS_EF100_RDP_D_PL_DMAC            = 0,
  KS_EF100_RDP_D_PL_VNR2P           = 1
  } ks_ef100_rdp_d_pl_e;

typedef enum logic {
  KS_EF100_RDP_OUT_NET_DMAC         = 0,
  KS_EF100_RDP_OUT_NET_NET          = 1
  } ks_ef100_rdp_out_net_e;

typedef enum logic[5:0] {
  KS_EF100_NP_TYPE_H2C_DMA          = 0,
  KS_EF100_NP_TYPE_PRE_MAE          = 1,
  KS_EF100_NP_TYPE_POST_MAE         = 2,
  KS_EF100_NP_TYPE_C2H_DMA          = 3
  } ks_ef100_np_type_e;

typedef enum logic[3:0] {
  KS_EF100_OC_TYPE_CONTROL          = 0,
  KS_EF100_OC_TYPE_MEM_WRITE        = 1,
  KS_EF100_OC_TYPE_BARRIER          = 2,
  KS_EF100_OC_TYPE_MESSAGE          = 3,
  KS_EF100_OC_TYPE_TX_TSTAMPS       = 4
  } ks_ef100_oc_type_e;

typedef enum logic[15:0] {
  KS_EF100_VLAN_TPID_1              = 37120,
  KS_EF100_VLAN_TPID_2              = 37376,
  KS_EF100_VLAN_TPID_3              = 37632,
  KS_EF100_VLAN_TPID_4              = 34984,
  KS_EF100_VLAN_TPID_5              = 33024
  } ks_ef100_vlan_e;

typedef enum logic[1:0] {
  EF100_RDP_A_VNIC_TX               = 0,
  EF100_RDP_A_H2P                   = 1,
  EF100_RDP_A_HUB_NA                = 2
  } ef100_rdp_a_e;

typedef enum logic {
  EF100_RDP_B_MAE                   = 0,
  EF100_RDP_B_VNT2P                 = 1
  } ef100_rdp_b_e;

typedef enum logic {
  EF100_RDP_C_VNIC_RX_OR_MAC_TX     = 0,
  EF100_RDP_C_HMAE2P_OR_NMAE2P      = 1
  } ef100_rdp_c_e;

typedef enum logic {
  EF100_RDP_D_DMAC                  = 0,
  EF100_RDP_D_VNR2P                 = 1
  } ef100_rdp_d_e;

typedef enum logic[3:0] {
  EF100_RDP_DST_HOST0               = 0,
  EF100_RDP_DST_HOST1               = 1,
  EF100_RDP_DST_NETPORT0            = 2,
  EF100_RDP_DST_NETPORT1            = 3,
  EF100_RDP_DST_NETPORT2            = 4,
  EF100_RDP_DST_NETPORT3            = 5,
  EF100_RDP_DST_NETPORT4            = 6,
  EF100_RDP_DST_NETPORT5            = 7,
  EF100_RDP_DST_NETPORT6            = 8,
  EF100_RDP_DST_NETPORT7            = 9
  } ef100_rdp_dst_e;

typedef enum logic[5:0] {
  EF100_NP_META_H2C_DMA             = 0,
  EF100_NP_META_PRE_MAE             = 1,
  EF100_NP_META_POST_MAE            = 2,
  EF100_NP_META_C2H_DMA             = 3
  } ef100_np_meta_e;

typedef enum logic[2:0] {
  BR_TYPE_STREAMING                 = 0,
  BR_TYPE_STREAM_ENGINE             = 1,
  BR_TYPE_CONFIG_ENGINE             = 2
  } br_type_e;

typedef enum logic[5:0] {
  CNFG_MSG_TYPE_CM_OP_CSR_READ      = 0,
  CNFG_MSG_TYPE_CM_OP_CSR_WRITE     = 1,
  CNFG_MSG_TYPE_CM_OP_CSR_MASK_WRITE = 2,
  CNFG_MSG_TYPE_CM_OP_CNTR_READ     = 3,
  CNFG_MSG_TYPE_CM_OP_CNTR_ZERO     = 4
  } cnfg_msg_type_e;

typedef enum logic[1:0] {
  CM_STATUS_SUCCESS                 = 0,
  CM_STATUS_CSR_TIMEOUT             = 1,
  CM_STATUS_TBD1                    = 2,
  CM_STATUS_TBD2                    = 3
  } cm_status_e;

typedef enum logic[1:0] {
  RMON_OP_CNTR_READ                 = 0,
  RMON_OP_CNTR_ZERO                 = 1,
  RMON_OP_CNTR_NOP                  = 2
  } rmon_op_e;

//auto-struct-end

`endif //__ef100_capsule_interfaces_def_e_sv__
