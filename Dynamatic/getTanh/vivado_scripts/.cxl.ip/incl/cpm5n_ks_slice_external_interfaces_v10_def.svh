`ifndef __cpm5n_ks_slice_external_interfaces_v10_def_e_sv__
`define __cpm5n_ks_slice_external_interfaces_v10_def_e_sv__

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
    logic [1:0]   rsrvd;
    logic         select_dst_port;
    logic         select_src_port;
    logic         select_ip_proto;
    logic         select_dst_ip;
    logic         select_src_ip;
    logic         select_ether_type;
    logic         select_ivlan;
    logic         select_ovlan;
    logic         select_dst_mac;
    logic         select_src_mac;
  } ks_sl_p4_ct_key_val_mask_t;

  typedef struct packed {
    logic [5:0]    impl_prio_chan_fifo;
    logic [1:0]    impl_l2_daddr_type;
    logic [2:0]    impl_dpu_pcp;
    logic [39:0]   reserved;
    logic          is_from_network;
    logic [93:0]   sub_1;
  } ks_ef100_cap_netpkt_pre_mae_t;

  typedef struct packed {
    logic          impl_first_replay;
    logic [1:0]    impl_l2_daddr_type;
    logic [15:0]   reserved;
    logic [2:0]    encap_type;
    logic [23:0]   ct_entry_id;
    logic          ct_hit;
    logic          lacp_inc_l4;
    logic          lacp_plugin;
    logic          vswitch_status;
    logic          user_flag;
    logic          is_from_network;
    logic [93:0]   sub_1;
  } ks_ef100_cap_netpkt_post_mae_t;

  typedef struct packed {
    logic          impl_drop;
    logic [2:0]    encap_type;
    logic          vswitch_status;
    logic          user_flag;
    logic [31:0]   user_mark;
    logic [15:0]   csum_frame;
    logic [1:0]    tun_outer_l3_class;
    logic [1:0]    nt_or_inner_l3_class;
    logic          tun_outer_l4_csum;
    logic          nt_or_inner_l4_csum;
    logic          vlan_stripped;
    logic [15:0]   vlan_strip_tci;
    logic [15:0]   ingress_mport;
    logic          rss_hash_valid;
    logic [31:0]   rss_hash;
    logic [1:0]    nt_or_inner_l4_class;
    logic [2:0]    tunnel_class;
    logic [1:0]    l2_n_vlan;
    logic          l2_class;
    logic [11:0]   dst_qid;
  } ks_ef100_cap_netpkt_c2h_dma_t;

  typedef struct packed {
    logic [440:0]   em_data;
    logic [70:0]    em_hdr;
  } ks_ef100_cap_netpkt_ext_t;

  typedef struct packed {
    logic [63:0]   npem_plugin_user;
    logic          npem_keep;
    logic [5:0]    npem_type;
  } ks_ef100_cap_netpkt_ext_hdr_t;

  typedef struct packed {
    logic [312:0]   reserved;
    logic [48:0]    cs_i_l4_ctl;
    logic           cs_i_l4_en;
    logic [12:0]    cs_i_l3_ctl;
    logic           cs_i_l3_en;
    logic [48:0]    cs_o_l4_ctl;
    logic           cs_o_l4_en;
    logic [12:0]    cs_o_l3_ctl;
    logic           cs_o_l3_en;
  } ks_ef100_cap_npext_vnic_tx_in_t;

  typedef struct packed {
    logic [22:0]   reserved;
    logic [15:0]   override_ct;
    logic [32:0]   override_inner_l4;
    logic [74:0]   override_inner_l3;
    logic [61:0]   override_inner_l2;
    logic [61:0]   override_encap;
    logic [32:0]   override_outer_l4;
    logic [74:0]   override_outer_l3;
    logic [61:0]   override_outer_l2;
  } ks_ef100_cap_npext_mae_in_t;

  typedef struct packed {
    logic [109:0]   reserved;
    logic [45:0]    cs_i_l4_ctl;
    logic           cs_i_l4_override;
    logic [14:0]    cs_i_l3_ctl;
    logic           cs_i_l3_override;
    logic [45:0]    cs_o_l4_ctl;
    logic           cs_o_l4_override;
    logic [14:0]    cs_o_l3_ctl;
    logic           cs_o_l3_override;
    logic [31:0]    rss_hash_driver;
    logic           rss_hash_valid_driver;
    logic           override_rss_hash_driver;
    logic [31:0]    rss_hash_steer;
    logic           override_rss_hash_steer;
    logic [32:0]    override_inner_l4;
    logic [74:0]    override_inner_l3;
    logic [15:0]    override_inner_ovlan;
    logic [2:0]     override_inner_ovlan_tpid_compressed;
    logic           override_inner_set_ovlan;
    logic [6:0]     encap_len_w;
    logic [1:0]     inner_type;
    logic           override_encap;
  } ks_ef100_cap_npext_vnic_rx_in_t;

  typedef struct packed {
    logic [3:0]    extend_l2_len_w_minus1;
    logic [15:0]   ether_type;
    logic          set_ether_type;
    logic [15:0]   ivlan;
    logic [2:0]    ivlan_tpid_compressed;
    logic          set_ivlan;
    logic [15:0]   ovlan;
    logic [2:0]    ovlan_tpid_compressed;
    logic          set_ovlan;
    logic          discrim;
  } ks_ef100_cap_override_parse_l2_t;

  typedef struct packed {
    logic          set_ip_src_dw2_user_dw1;
    logic          set_ip_src_dw1_user_dw0;
    logic [31:0]   ip_dst_dw0;
    logic [31:0]   ip_src_dw0;
    logic [7:0]    ip_proto;
    logic          set_l3;
  } ks_ef100_cap_override_parse_l3_t;

  typedef struct packed {
    logic [15:0]   dst_port;
    logic [15:0]   src_port;
    logic          set_ports;
  } ks_ef100_cap_override_parse_l4_t;

  typedef struct packed {
    logic [23:0]   vni;
    logic          set_vni;
    logic [15:0]   domain;
    logic          set_domain;
    logic [9:0]    outer_rule_id;
    logic          set_outer_rule_id;
    logic [1:0]    inner_type;
    logic [6:0]    encap_len_w_plus1;
  } ks_ef100_cap_override_encap_t;

  typedef struct packed {
    logic [1:0]    ct_vni_mode;
    logic [11:0]   ct_key_val;
    logic          ct_key_mode;
    logic          do_ct_first;
  } ks_ef100_cap_override_ct_t;

  typedef struct packed {
    logic [12:0]   start_offset_w;
  } ks_ef100_cap_l3_csum_ins_ctl_t;

  typedef struct packed {
    logic          invert_zero;
    logic [15:0]   csum_pseudohdr;
    logic [13:0]   end_offset;
    logic [4:0]    csum_offset_w;
    logic [12:0]   start_offset_w;
  } ks_ef100_cap_l4_csum_ins_ctl_t;

  typedef struct packed {
    logic [12:0]   start_offset_w;
    logic [1:0]    l3_class;
  } ks_ef100_cap_l3_csum_val_ctl_t;

  typedef struct packed {
    logic          pkt_csum_is_zero;
    logic          zero_csum_is_acceptable;
    logic [15:0]   csum_pseudohdr;
    logic [13:0]   end_offset;
    logic [12:0]   start_offset_w;
    logic          enable;
  } ks_ef100_cap_l4_csum_val_ctl_t;

  typedef struct packed {
    logic [15:0]   csum_frame;
    logic [1:0]    tun_outer_l3_class;
    logic [1:0]    nt_or_inner_l3_class;
    logic          tun_outer_l4_csum;
    logic          nt_or_inner_l4_csum;
  } ks_c2h_packet_char_sf_hdr_t;


// ------------------------------------------------------
//                   Enums
// ------------------------------------------------------

typedef enum logic[15:0] {
  KS_SL_P4_MPORT_MPORT_NULL         = 65535
  } ks_sl_p4_mport_e;

typedef enum logic {
  KS_SL_P4_CT_KEY_MODE_CKM_VAL_IS_ENUM = 0,
  KS_SL_P4_CT_KEY_MODE_CKM_VAL_IS_MASK = 1
  } ks_sl_p4_ct_key_mode_e;

typedef enum logic[11:0] {
  KS_SL_P4_CT_KEY_VAL_ENUM_CKV_ENUM_IP = 0
  } ks_sl_p4_ct_key_val_enum_e;

typedef enum logic[1:0] {
  KS_SL_P4_L2_DADDR_TYPE_L2_DADDR_TYPE_UCAST = 0,
  KS_SL_P4_L2_DADDR_TYPE_L2_DADDR_TYPE_MCAST = 1,
  KS_SL_P4_L2_DADDR_TYPE_L2_DADDR_TYPE_BCAST = 2
  } ks_sl_p4_l2_daddr_type_e;

typedef enum logic[5:0] {
  KS_EF100_NPEXT_TYPE_NPEM_TYPE_VNIC_TX_IN = 0,
  KS_EF100_NPEXT_TYPE_NPEM_TYPE_MAE_IN = 1,
  KS_EF100_NPEXT_TYPE_NPEM_TYPE_VNIC_RX_IN = 2
  } ks_ef100_npext_type_e;

typedef enum logic[1:0] {
  KS_SL_P4_NPEXT_ENCAP_INNER_FRAME_TYPE_INNER_FRAME_TYPE_ETHERNET = 0,
  KS_SL_P4_NPEXT_ENCAP_INNER_FRAME_TYPE_INNER_FRAME_TYPE_IPV4 = 1,
  KS_SL_P4_NPEXT_ENCAP_INNER_FRAME_TYPE_INNER_FRAME_TYPE_IPV6 = 2
  } ks_sl_p4_npext_encap_inner_frame_type_e;

//auto-struct-end

`endif //__ks_slice_external_interfaces_v10_def_e_sv__
