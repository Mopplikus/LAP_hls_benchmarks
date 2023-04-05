// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Wed Apr  5 22:35:49 2023
// Host        : Frostspark running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck24-ubva530-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,getTanh,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "getTanh,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (A_ce0,
    A_we0,
    addr_ce0,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return,
    A_address0,
    A_d0,
    A_q0,
    addr_address0,
    addr_q0);
  output A_ce0;
  output A_we0;
  output addr_ce0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 ap_return DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef" *) output [31:0]ap_return;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_address0, LAYERED_METADATA undef" *) output [9:0]A_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_d0, LAYERED_METADATA undef" *) output [31:0]A_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_q0, LAYERED_METADATA undef" *) input [31:0]A_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 addr_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME addr_address0, LAYERED_METADATA undef" *) output [9:0]addr_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 addr_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME addr_q0, LAYERED_METADATA undef" *) input [31:0]addr_q0;

  wire [9:0]A_address0;
  wire A_ce0;
  wire [31:0]A_d0;
  wire [31:0]A_q0;
  wire A_we0;
  wire [9:0]addr_address0;
  wire addr_ce0;
  wire [31:0]addr_q0;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire [31:0]ap_return;
  wire ap_rst;
  wire ap_start;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "6'b000001" *) 
  (* ap_ST_fsm_pp0_stage1 = "6'b000010" *) 
  (* ap_ST_fsm_pp0_stage2 = "6'b000100" *) 
  (* ap_ST_fsm_pp0_stage3 = "6'b001000" *) 
  (* ap_ST_fsm_pp0_stage4 = "6'b010000" *) 
  (* ap_ST_fsm_pp0_stage5 = "6'b100000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh inst
       (.A_address0(A_address0),
        .A_ce0(A_ce0),
        .A_d0(A_d0),
        .A_q0(A_q0),
        .A_we0(A_we0),
        .addr_address0(addr_address0),
        .addr_ce0(addr_ce0),
        .addr_q0(addr_q0),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .ap_start(ap_start));
endmodule

(* ap_ST_fsm_pp0_stage0 = "6'b000001" *) (* ap_ST_fsm_pp0_stage1 = "6'b000010" *) (* ap_ST_fsm_pp0_stage2 = "6'b000100" *) 
(* ap_ST_fsm_pp0_stage3 = "6'b001000" *) (* ap_ST_fsm_pp0_stage4 = "6'b010000" *) (* ap_ST_fsm_pp0_stage5 = "6'b100000" *) 
(* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    A_address0,
    A_ce0,
    A_we0,
    A_d0,
    A_q0,
    addr_address0,
    addr_ce0,
    addr_q0,
    ap_return);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [9:0]A_address0;
  output A_ce0;
  output A_we0;
  output [31:0]A_d0;
  input [31:0]A_q0;
  output [9:0]addr_address0;
  output addr_ce0;
  input [31:0]addr_q0;
  output [31:0]ap_return;

  wire [9:0]A_addr_reg_243;
  wire [9:0]A_addr_reg_243_pp0_iter1_reg;
  wire [9:0]A_address0;
  wire A_ce0;
  wire [31:0]A_d0;
  wire [31:0]A_q0;
  wire A_we0;
  wire [31:9]add_ln13_1_fu_178_p2;
  wire add_ln13_1_reg_2810;
  wire [31:9]add_ln13_fu_169_p2;
  wire add_ln13_reg_2710;
  wire [9:0]addr_address0;
  wire addr_ce0;
  wire addr_cmp_fu_138_p2;
  wire addr_cmp_reg_248;
  wire \addr_cmp_reg_248[0]_i_10_n_0 ;
  wire \addr_cmp_reg_248[0]_i_11_n_0 ;
  wire \addr_cmp_reg_248[0]_i_12_n_0 ;
  wire \addr_cmp_reg_248[0]_i_13_n_0 ;
  wire \addr_cmp_reg_248[0]_i_14_n_0 ;
  wire \addr_cmp_reg_248[0]_i_15_n_0 ;
  wire \addr_cmp_reg_248[0]_i_16_n_0 ;
  wire \addr_cmp_reg_248[0]_i_17_n_0 ;
  wire \addr_cmp_reg_248[0]_i_18_n_0 ;
  wire \addr_cmp_reg_248[0]_i_19_n_0 ;
  wire \addr_cmp_reg_248[0]_i_20_n_0 ;
  wire \addr_cmp_reg_248[0]_i_21_n_0 ;
  wire \addr_cmp_reg_248[0]_i_22_n_0 ;
  wire \addr_cmp_reg_248[0]_i_23_n_0 ;
  wire \addr_cmp_reg_248[0]_i_24_n_0 ;
  wire \addr_cmp_reg_248[0]_i_25_n_0 ;
  wire \addr_cmp_reg_248[0]_i_3_n_0 ;
  wire \addr_cmp_reg_248[0]_i_4_n_0 ;
  wire \addr_cmp_reg_248[0]_i_5_n_0 ;
  wire \addr_cmp_reg_248[0]_i_6_n_0 ;
  wire \addr_cmp_reg_248[0]_i_7_n_0 ;
  wire \addr_cmp_reg_248[0]_i_8_n_0 ;
  wire \addr_cmp_reg_248_reg[0]_i_1_n_3 ;
  wire \addr_cmp_reg_248_reg[0]_i_1_n_4 ;
  wire \addr_cmp_reg_248_reg[0]_i_1_n_5 ;
  wire \addr_cmp_reg_248_reg[0]_i_1_n_6 ;
  wire \addr_cmp_reg_248_reg[0]_i_1_n_7 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_0 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_1 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_2 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_3 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_4 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_5 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_6 ;
  wire \addr_cmp_reg_248_reg[0]_i_2_n_7 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_0 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_1 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_2 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_3 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_4 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_5 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_6 ;
  wire \addr_cmp_reg_248_reg[0]_i_9_n_7 ;
  wire [31:0]addr_q0;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire ap_CS_fsm_pp0_stage4;
  wire ap_CS_fsm_pp0_stage5;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [3:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_113;
  wire ap_done;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_idle;
  wire [31:0]ap_return;
  wire ap_rst;
  wire ap_sig_allocacmp_i_11;
  wire [31:0]ap_sig_allocacmp_reuse_reg_load;
  wire ap_start;
  wire [31:0]beta_fu_152_p3;
  wire beta_reg_2530;
  wire flow_control_loop_pipe_U_n_0;
  wire flow_control_loop_pipe_U_n_25;
  wire flow_control_loop_pipe_U_n_26;
  wire i_fu_60;
  wire \i_fu_60[9]_i_5_n_0 ;
  wire \i_fu_60[9]_i_6_n_0 ;
  wire \i_fu_60_reg_n_0_[0] ;
  wire \i_fu_60_reg_n_0_[1] ;
  wire \i_fu_60_reg_n_0_[2] ;
  wire \i_fu_60_reg_n_0_[3] ;
  wire \i_fu_60_reg_n_0_[4] ;
  wire \i_fu_60_reg_n_0_[5] ;
  wire \i_fu_60_reg_n_0_[6] ;
  wire \i_fu_60_reg_n_0_[7] ;
  wire \i_fu_60_reg_n_0_[8] ;
  wire \i_fu_60_reg_n_0_[9] ;
  wire \icmp_ln10_reg_261[0]_i_20_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_21_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_22_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_23_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_24_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_25_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_26_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_27_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_28_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_29_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_30_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_31_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_32_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_33_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_34_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_35_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_36_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_37_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_38_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_39_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_40_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_41_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_42_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_43_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_44_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_45_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_46_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_47_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_48_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_49_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_50_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_51_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_52_n_0 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_0 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_1 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_2 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_3 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_4 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_5 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_6 ;
  wire \icmp_ln10_reg_261_reg[0]_i_3_n_7 ;
  wire \icmp_ln10_reg_261_reg_n_0_[0] ;
  wire \icmp_ln6_reg_234_reg_n_0_[0] ;
  wire mul_32s_32s_32_1_1_U1_n_18;
  wire mul_32s_32s_32_1_1_U1_n_19;
  wire mul_32s_32s_32_1_1_U1_n_20;
  wire mul_32s_32s_32_1_1_U1_n_21;
  wire mul_32s_32s_32_1_1_U1_n_22;
  wire mul_32s_32s_32_1_1_U1_n_23;
  wire mul_32s_32s_32_1_1_U1_n_24;
  wire mul_32s_32s_32_1_1_U1_n_25;
  wire mul_32s_32s_32_1_1_U1_n_26;
  wire mul_32s_32s_32_1_1_U1_n_27;
  wire mul_32s_32s_32_1_1_U1_n_28;
  wire mul_32s_32s_32_1_1_U1_n_29;
  wire mul_32s_32s_32_1_1_U1_n_30;
  wire mul_32s_32s_32_1_1_U1_n_31;
  wire mul_32s_32s_32_1_1_U1_n_32;
  wire mul_32s_32s_32_1_1_U1_n_33;
  wire mul_32s_32s_32_1_1_U1_n_34;
  wire mul_32s_32s_32_1_1_U1_n_35;
  wire mul_32s_32s_32_1_1_U1_n_36;
  wire mul_32s_32s_32_1_1_U1_n_37;
  wire mul_32s_32s_32_1_1_U1_n_38;
  wire mul_32s_32s_32_1_1_U1_n_39;
  wire mul_32s_32s_32_1_1_U1_n_40;
  wire mul_32s_32s_32_1_1_U1_n_41;
  wire mul_32s_32s_32_1_1_U1_n_42;
  wire mul_32s_32s_32_1_1_U1_n_43;
  wire mul_32s_32s_32_1_1_U1_n_44;
  wire mul_32s_32s_32_1_1_U1_n_45;
  wire mul_32s_32s_32_1_1_U1_n_46;
  wire mul_32s_32s_32_1_1_U1_n_47;
  wire mul_32s_32s_32_1_1_U1_n_48;
  wire mul_32s_32s_32_1_1_U1_n_49;
  wire mul_32s_32s_32_1_1_U1_n_50;
  wire mul_32s_32s_32_1_1_U1_n_51;
  wire mul_32s_32s_32_1_1_U1_n_52;
  wire mul_32s_32s_32_1_1_U1_n_53;
  wire mul_32s_32s_32_1_1_U1_n_54;
  wire mul_32s_32s_32_1_1_U1_n_55;
  wire mul_32s_32s_32_1_1_U1_n_56;
  wire mul_32s_32s_32_1_1_U1_n_57;
  wire mul_32s_32s_32_1_1_U1_n_58;
  wire mul_32s_32s_32_1_1_U1_n_59;
  wire mul_32s_32s_32_1_1_U1_n_60;
  wire mul_32s_32s_32_1_1_U1_n_61;
  wire mul_32s_32s_32_1_1_U1_n_62;
  wire mul_32s_32s_32_1_1_U1_n_63;
  wire mul_32s_32s_32_1_1_U1_n_64;
  wire mul_32s_32s_32_1_1_U1_n_65;
  wire mul_32s_32s_32_1_1_U1_n_66;
  wire mul_32s_32s_32_1_1_U1_n_67;
  wire mul_32s_32s_32_1_1_U1_n_68;
  wire mul_32s_32s_32_1_1_U1_n_69;
  wire mul_32s_32s_32_1_1_U1_n_70;
  wire mul_32s_32s_32_1_1_U1_n_71;
  wire mul_32s_32s_32_1_1_U1_n_72;
  wire mul_32s_32s_32_1_1_U1_n_73;
  wire mul_32s_32s_32_1_1_U1_n_74;
  wire mul_32s_32s_32_1_1_U1_n_75;
  wire mul_32s_32s_32_1_1_U1_n_76;
  wire mul_32s_32s_32_1_1_U1_n_77;
  wire mul_32s_32s_32_1_1_U1_n_78;
  wire mul_32s_32s_32_1_1_U1_n_79;
  wire mul_32s_32s_32_1_1_U1_n_80;
  wire mul_32s_32s_32_1_1_U1_n_81;
  wire mul_32s_32s_32_1_1_U1_n_82;
  wire mul_32s_32s_32_1_1_U2_n_10;
  wire mul_32s_32s_32_1_1_U2_n_11;
  wire mul_32s_32s_32_1_1_U2_n_12;
  wire mul_32s_32s_32_1_1_U2_n_13;
  wire mul_32s_32s_32_1_1_U2_n_14;
  wire mul_32s_32s_32_1_1_U2_n_15;
  wire mul_32s_32s_32_1_1_U2_n_16;
  wire mul_32s_32s_32_1_1_U2_n_17;
  wire mul_32s_32s_32_1_1_U2_n_18;
  wire mul_32s_32s_32_1_1_U2_n_19;
  wire mul_32s_32s_32_1_1_U2_n_2;
  wire mul_32s_32s_32_1_1_U2_n_20;
  wire mul_32s_32s_32_1_1_U2_n_21;
  wire mul_32s_32s_32_1_1_U2_n_22;
  wire mul_32s_32s_32_1_1_U2_n_23;
  wire mul_32s_32s_32_1_1_U2_n_24;
  wire mul_32s_32s_32_1_1_U2_n_25;
  wire mul_32s_32s_32_1_1_U2_n_26;
  wire mul_32s_32s_32_1_1_U2_n_27;
  wire mul_32s_32s_32_1_1_U2_n_28;
  wire mul_32s_32s_32_1_1_U2_n_29;
  wire mul_32s_32s_32_1_1_U2_n_3;
  wire mul_32s_32s_32_1_1_U2_n_30;
  wire mul_32s_32s_32_1_1_U2_n_31;
  wire mul_32s_32s_32_1_1_U2_n_32;
  wire mul_32s_32s_32_1_1_U2_n_33;
  wire mul_32s_32s_32_1_1_U2_n_34;
  wire mul_32s_32s_32_1_1_U2_n_35;
  wire mul_32s_32s_32_1_1_U2_n_36;
  wire mul_32s_32s_32_1_1_U2_n_37;
  wire mul_32s_32s_32_1_1_U2_n_38;
  wire mul_32s_32s_32_1_1_U2_n_39;
  wire mul_32s_32s_32_1_1_U2_n_4;
  wire mul_32s_32s_32_1_1_U2_n_40;
  wire mul_32s_32s_32_1_1_U2_n_41;
  wire mul_32s_32s_32_1_1_U2_n_42;
  wire mul_32s_32s_32_1_1_U2_n_43;
  wire mul_32s_32s_32_1_1_U2_n_44;
  wire mul_32s_32s_32_1_1_U2_n_45;
  wire mul_32s_32s_32_1_1_U2_n_46;
  wire mul_32s_32s_32_1_1_U2_n_47;
  wire mul_32s_32s_32_1_1_U2_n_48;
  wire mul_32s_32s_32_1_1_U2_n_49;
  wire mul_32s_32s_32_1_1_U2_n_5;
  wire mul_32s_32s_32_1_1_U2_n_50;
  wire mul_32s_32s_32_1_1_U2_n_51;
  wire mul_32s_32s_32_1_1_U2_n_52;
  wire mul_32s_32s_32_1_1_U2_n_53;
  wire mul_32s_32s_32_1_1_U2_n_54;
  wire mul_32s_32s_32_1_1_U2_n_55;
  wire mul_32s_32s_32_1_1_U2_n_56;
  wire mul_32s_32s_32_1_1_U2_n_57;
  wire mul_32s_32s_32_1_1_U2_n_58;
  wire mul_32s_32s_32_1_1_U2_n_59;
  wire mul_32s_32s_32_1_1_U2_n_6;
  wire mul_32s_32s_32_1_1_U2_n_60;
  wire mul_32s_32s_32_1_1_U2_n_61;
  wire mul_32s_32s_32_1_1_U2_n_62;
  wire mul_32s_32s_32_1_1_U2_n_63;
  wire mul_32s_32s_32_1_1_U2_n_64;
  wire mul_32s_32s_32_1_1_U2_n_65;
  wire mul_32s_32s_32_1_1_U2_n_66;
  wire mul_32s_32s_32_1_1_U2_n_67;
  wire mul_32s_32s_32_1_1_U2_n_7;
  wire mul_32s_32s_32_1_1_U2_n_8;
  wire mul_32s_32s_32_1_1_U2_n_9;
  wire mul_32s_32s_32_1_1_U3_n_131;
  wire mul_32s_32s_32_1_1_U3_n_132;
  wire mul_32s_32s_32_1_1_U3_n_18;
  wire mul_32s_32s_32_1_1_U3_n_19;
  wire mul_32s_32s_32_1_1_U3_n_20;
  wire mul_32s_32s_32_1_1_U3_n_21;
  wire mul_32s_32s_32_1_1_U3_n_22;
  wire mul_32s_32s_32_1_1_U3_n_23;
  wire mul_32s_32s_32_1_1_U3_n_24;
  wire mul_32s_32s_32_1_1_U3_n_25;
  wire mul_32s_32s_32_1_1_U3_n_26;
  wire mul_32s_32s_32_1_1_U3_n_27;
  wire mul_32s_32s_32_1_1_U3_n_28;
  wire mul_32s_32s_32_1_1_U3_n_29;
  wire mul_32s_32s_32_1_1_U3_n_30;
  wire mul_32s_32s_32_1_1_U3_n_31;
  wire mul_32s_32s_32_1_1_U3_n_32;
  wire mul_32s_32s_32_1_1_U3_n_33;
  wire mul_32s_32s_32_1_1_U3_n_34;
  wire mul_32s_32s_32_1_1_U3_n_35;
  wire mul_32s_32s_32_1_1_U3_n_36;
  wire mul_32s_32s_32_1_1_U3_n_37;
  wire mul_32s_32s_32_1_1_U3_n_38;
  wire mul_32s_32s_32_1_1_U3_n_39;
  wire mul_32s_32s_32_1_1_U3_n_40;
  wire mul_32s_32s_32_1_1_U3_n_41;
  wire mul_32s_32s_32_1_1_U3_n_42;
  wire mul_32s_32s_32_1_1_U3_n_43;
  wire mul_32s_32s_32_1_1_U3_n_44;
  wire mul_32s_32s_32_1_1_U3_n_45;
  wire mul_32s_32s_32_1_1_U3_n_46;
  wire mul_32s_32s_32_1_1_U3_n_47;
  wire mul_32s_32s_32_1_1_U3_n_48;
  wire mul_32s_32s_32_1_1_U3_n_49;
  wire mul_32s_32s_32_1_1_U3_n_50;
  wire mul_32s_32s_32_1_1_U3_n_51;
  wire mul_32s_32s_32_1_1_U3_n_52;
  wire mul_32s_32s_32_1_1_U3_n_53;
  wire mul_32s_32s_32_1_1_U3_n_54;
  wire mul_32s_32s_32_1_1_U3_n_55;
  wire mul_32s_32s_32_1_1_U3_n_56;
  wire mul_32s_32s_32_1_1_U3_n_57;
  wire mul_32s_32s_32_1_1_U3_n_58;
  wire mul_32s_32s_32_1_1_U3_n_59;
  wire mul_32s_32s_32_1_1_U3_n_60;
  wire mul_32s_32s_32_1_1_U3_n_61;
  wire mul_32s_32s_32_1_1_U3_n_62;
  wire mul_32s_32s_32_1_1_U3_n_63;
  wire mul_32s_32s_32_1_1_U3_n_64;
  wire mul_32s_32s_32_1_1_U3_n_65;
  wire mul_32s_32s_32_1_1_U3_n_66;
  wire mul_32s_32s_32_1_1_U3_n_67;
  wire mul_32s_32s_32_1_1_U3_n_68;
  wire mul_32s_32s_32_1_1_U3_n_69;
  wire mul_32s_32s_32_1_1_U3_n_70;
  wire mul_32s_32s_32_1_1_U3_n_71;
  wire mul_32s_32s_32_1_1_U3_n_72;
  wire mul_32s_32s_32_1_1_U3_n_73;
  wire mul_32s_32s_32_1_1_U3_n_74;
  wire mul_32s_32s_32_1_1_U3_n_75;
  wire mul_32s_32s_32_1_1_U3_n_76;
  wire mul_32s_32s_32_1_1_U3_n_77;
  wire mul_32s_32s_32_1_1_U3_n_78;
  wire mul_32s_32s_32_1_1_U3_n_79;
  wire mul_32s_32s_32_1_1_U3_n_80;
  wire mul_32s_32s_32_1_1_U3_n_81;
  wire mul_32s_32s_32_1_1_U3_n_82;
  wire mul_ln13_1_reg_2760;
  wire \mul_ln13_1_reg_276_reg[0]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[10]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[11]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[12]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[13]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[14]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[15]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[16]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[1]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[2]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[3]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[4]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[5]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[6]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[7]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[8]__0_n_0 ;
  wire \mul_ln13_1_reg_276_reg[9]__0_n_0 ;
  wire mul_ln13_1_reg_276_reg_n_100;
  wire mul_ln13_1_reg_276_reg_n_101;
  wire mul_ln13_1_reg_276_reg_n_102;
  wire mul_ln13_1_reg_276_reg_n_103;
  wire mul_ln13_1_reg_276_reg_n_104;
  wire mul_ln13_1_reg_276_reg_n_105;
  wire mul_ln13_1_reg_276_reg_n_58;
  wire mul_ln13_1_reg_276_reg_n_59;
  wire mul_ln13_1_reg_276_reg_n_60;
  wire mul_ln13_1_reg_276_reg_n_61;
  wire mul_ln13_1_reg_276_reg_n_62;
  wire mul_ln13_1_reg_276_reg_n_63;
  wire mul_ln13_1_reg_276_reg_n_64;
  wire mul_ln13_1_reg_276_reg_n_65;
  wire mul_ln13_1_reg_276_reg_n_66;
  wire mul_ln13_1_reg_276_reg_n_67;
  wire mul_ln13_1_reg_276_reg_n_68;
  wire mul_ln13_1_reg_276_reg_n_69;
  wire mul_ln13_1_reg_276_reg_n_70;
  wire mul_ln13_1_reg_276_reg_n_71;
  wire mul_ln13_1_reg_276_reg_n_72;
  wire mul_ln13_1_reg_276_reg_n_73;
  wire mul_ln13_1_reg_276_reg_n_74;
  wire mul_ln13_1_reg_276_reg_n_75;
  wire mul_ln13_1_reg_276_reg_n_76;
  wire mul_ln13_1_reg_276_reg_n_77;
  wire mul_ln13_1_reg_276_reg_n_78;
  wire mul_ln13_1_reg_276_reg_n_79;
  wire mul_ln13_1_reg_276_reg_n_80;
  wire mul_ln13_1_reg_276_reg_n_81;
  wire mul_ln13_1_reg_276_reg_n_82;
  wire mul_ln13_1_reg_276_reg_n_83;
  wire mul_ln13_1_reg_276_reg_n_84;
  wire mul_ln13_1_reg_276_reg_n_85;
  wire mul_ln13_1_reg_276_reg_n_86;
  wire mul_ln13_1_reg_276_reg_n_87;
  wire mul_ln13_1_reg_276_reg_n_88;
  wire mul_ln13_1_reg_276_reg_n_89;
  wire mul_ln13_1_reg_276_reg_n_90;
  wire mul_ln13_1_reg_276_reg_n_91;
  wire mul_ln13_1_reg_276_reg_n_92;
  wire mul_ln13_1_reg_276_reg_n_93;
  wire mul_ln13_1_reg_276_reg_n_94;
  wire mul_ln13_1_reg_276_reg_n_95;
  wire mul_ln13_1_reg_276_reg_n_96;
  wire mul_ln13_1_reg_276_reg_n_97;
  wire mul_ln13_1_reg_276_reg_n_98;
  wire mul_ln13_1_reg_276_reg_n_99;
  wire mul_ln13_reg_2660;
  wire \mul_ln13_reg_266_reg[0]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[10]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[11]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[12]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[13]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[14]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[15]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[16]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[1]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[2]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[3]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[4]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[5]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[6]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[7]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[8]__0_n_0 ;
  wire \mul_ln13_reg_266_reg[9]__0_n_0 ;
  wire mul_ln13_reg_266_reg_n_100;
  wire mul_ln13_reg_266_reg_n_101;
  wire mul_ln13_reg_266_reg_n_102;
  wire mul_ln13_reg_266_reg_n_103;
  wire mul_ln13_reg_266_reg_n_104;
  wire mul_ln13_reg_266_reg_n_105;
  wire mul_ln13_reg_266_reg_n_58;
  wire mul_ln13_reg_266_reg_n_59;
  wire mul_ln13_reg_266_reg_n_60;
  wire mul_ln13_reg_266_reg_n_61;
  wire mul_ln13_reg_266_reg_n_62;
  wire mul_ln13_reg_266_reg_n_63;
  wire mul_ln13_reg_266_reg_n_64;
  wire mul_ln13_reg_266_reg_n_65;
  wire mul_ln13_reg_266_reg_n_66;
  wire mul_ln13_reg_266_reg_n_67;
  wire mul_ln13_reg_266_reg_n_68;
  wire mul_ln13_reg_266_reg_n_69;
  wire mul_ln13_reg_266_reg_n_70;
  wire mul_ln13_reg_266_reg_n_71;
  wire mul_ln13_reg_266_reg_n_72;
  wire mul_ln13_reg_266_reg_n_73;
  wire mul_ln13_reg_266_reg_n_74;
  wire mul_ln13_reg_266_reg_n_75;
  wire mul_ln13_reg_266_reg_n_76;
  wire mul_ln13_reg_266_reg_n_77;
  wire mul_ln13_reg_266_reg_n_78;
  wire mul_ln13_reg_266_reg_n_79;
  wire mul_ln13_reg_266_reg_n_80;
  wire mul_ln13_reg_266_reg_n_81;
  wire mul_ln13_reg_266_reg_n_82;
  wire mul_ln13_reg_266_reg_n_83;
  wire mul_ln13_reg_266_reg_n_84;
  wire mul_ln13_reg_266_reg_n_85;
  wire mul_ln13_reg_266_reg_n_86;
  wire mul_ln13_reg_266_reg_n_87;
  wire mul_ln13_reg_266_reg_n_88;
  wire mul_ln13_reg_266_reg_n_89;
  wire mul_ln13_reg_266_reg_n_90;
  wire mul_ln13_reg_266_reg_n_91;
  wire mul_ln13_reg_266_reg_n_92;
  wire mul_ln13_reg_266_reg_n_93;
  wire mul_ln13_reg_266_reg_n_94;
  wire mul_ln13_reg_266_reg_n_95;
  wire mul_ln13_reg_266_reg_n_96;
  wire mul_ln13_reg_266_reg_n_97;
  wire mul_ln13_reg_266_reg_n_98;
  wire mul_ln13_reg_266_reg_n_99;
  wire [9:0]p_0_in;
  wire [31:0]result_2_fu_56;
  wire result_reg_2860;
  wire \result_reg_286_reg[0]__0_n_0 ;
  wire \result_reg_286_reg[10]__0_n_0 ;
  wire \result_reg_286_reg[11]__0_n_0 ;
  wire \result_reg_286_reg[12]__0_n_0 ;
  wire \result_reg_286_reg[13]__0_n_0 ;
  wire \result_reg_286_reg[14]__0_n_0 ;
  wire \result_reg_286_reg[15]__0_n_0 ;
  wire \result_reg_286_reg[16]__0_n_0 ;
  wire \result_reg_286_reg[1]__0_n_0 ;
  wire \result_reg_286_reg[2]__0_n_0 ;
  wire \result_reg_286_reg[3]__0_n_0 ;
  wire \result_reg_286_reg[4]__0_n_0 ;
  wire \result_reg_286_reg[5]__0_n_0 ;
  wire \result_reg_286_reg[6]__0_n_0 ;
  wire \result_reg_286_reg[7]__0_n_0 ;
  wire \result_reg_286_reg[8]__0_n_0 ;
  wire \result_reg_286_reg[9]__0_n_0 ;
  wire result_reg_286_reg_n_100;
  wire result_reg_286_reg_n_101;
  wire result_reg_286_reg_n_102;
  wire result_reg_286_reg_n_103;
  wire result_reg_286_reg_n_104;
  wire result_reg_286_reg_n_105;
  wire result_reg_286_reg_n_58;
  wire result_reg_286_reg_n_59;
  wire result_reg_286_reg_n_60;
  wire result_reg_286_reg_n_61;
  wire result_reg_286_reg_n_62;
  wire result_reg_286_reg_n_63;
  wire result_reg_286_reg_n_64;
  wire result_reg_286_reg_n_65;
  wire result_reg_286_reg_n_66;
  wire result_reg_286_reg_n_67;
  wire result_reg_286_reg_n_68;
  wire result_reg_286_reg_n_69;
  wire result_reg_286_reg_n_70;
  wire result_reg_286_reg_n_71;
  wire result_reg_286_reg_n_72;
  wire result_reg_286_reg_n_73;
  wire result_reg_286_reg_n_74;
  wire result_reg_286_reg_n_75;
  wire result_reg_286_reg_n_76;
  wire result_reg_286_reg_n_77;
  wire result_reg_286_reg_n_78;
  wire result_reg_286_reg_n_79;
  wire result_reg_286_reg_n_80;
  wire result_reg_286_reg_n_81;
  wire result_reg_286_reg_n_82;
  wire result_reg_286_reg_n_83;
  wire result_reg_286_reg_n_84;
  wire result_reg_286_reg_n_85;
  wire result_reg_286_reg_n_86;
  wire result_reg_286_reg_n_87;
  wire result_reg_286_reg_n_88;
  wire result_reg_286_reg_n_89;
  wire result_reg_286_reg_n_90;
  wire result_reg_286_reg_n_91;
  wire result_reg_286_reg_n_92;
  wire result_reg_286_reg_n_93;
  wire result_reg_286_reg_n_94;
  wire result_reg_286_reg_n_95;
  wire result_reg_286_reg_n_96;
  wire result_reg_286_reg_n_97;
  wire result_reg_286_reg_n_98;
  wire result_reg_286_reg_n_99;
  wire reuse_addr_reg_fu_48;
  wire \reuse_addr_reg_fu_48_reg_n_0_[0] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[10] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[11] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[12] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[13] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[14] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[15] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[16] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[17] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[18] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[19] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[1] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[20] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[21] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[22] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[23] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[24] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[25] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[26] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[27] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[28] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[29] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[2] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[30] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[31] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[32] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[3] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[4] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[5] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[6] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[7] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[8] ;
  wire \reuse_addr_reg_fu_48_reg_n_0_[9] ;
  wire [31:0]reuse_reg_fu_52;
  wire [7:6]\NLW_addr_cmp_reg_248_reg[0]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_addr_cmp_reg_248_reg[0]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_addr_cmp_reg_248_reg[0]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_addr_cmp_reg_248_reg[0]_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_icmp_ln10_reg_261_reg[0]_i_3_O_UNCONNECTED ;
  wire NLW_mul_ln13_1_reg_276_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln13_1_reg_276_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln13_1_reg_276_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln13_1_reg_276_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln13_1_reg_276_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln13_1_reg_276_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln13_1_reg_276_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln13_1_reg_276_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln13_1_reg_276_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln13_1_reg_276_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln13_1_reg_276_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln13_reg_266_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln13_reg_266_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln13_reg_266_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln13_reg_266_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln13_reg_266_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln13_reg_266_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln13_reg_266_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln13_reg_266_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln13_reg_266_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln13_reg_266_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln13_reg_266_reg_XOROUT_UNCONNECTED;
  wire NLW_result_reg_286_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_result_reg_286_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_result_reg_286_reg_OVERFLOW_UNCONNECTED;
  wire NLW_result_reg_286_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_result_reg_286_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_result_reg_286_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_result_reg_286_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_result_reg_286_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_result_reg_286_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_result_reg_286_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_result_reg_286_reg_XOROUT_UNCONNECTED;

  assign ap_ready = ap_done;
  LUT2 #(
    .INIT(4'h2)) 
    \A_addr_reg_243[9]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(\icmp_ln6_reg_234_reg_n_0_[0] ),
        .O(ap_condition_113));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[0]),
        .Q(A_addr_reg_243_pp0_iter1_reg[0]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[1]),
        .Q(A_addr_reg_243_pp0_iter1_reg[1]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[2]),
        .Q(A_addr_reg_243_pp0_iter1_reg[2]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[3]),
        .Q(A_addr_reg_243_pp0_iter1_reg[3]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[4]),
        .Q(A_addr_reg_243_pp0_iter1_reg[4]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[5]),
        .Q(A_addr_reg_243_pp0_iter1_reg[5]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[6]),
        .Q(A_addr_reg_243_pp0_iter1_reg[6]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[7]),
        .Q(A_addr_reg_243_pp0_iter1_reg[7]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[8]),
        .Q(A_addr_reg_243_pp0_iter1_reg[8]),
        .R(1'b0));
  FDRE \A_addr_reg_243_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(A_addr_reg_243[9]),
        .Q(A_addr_reg_243_pp0_iter1_reg[9]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[0]),
        .Q(A_addr_reg_243[0]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[1]),
        .Q(A_addr_reg_243[1]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[2]),
        .Q(A_addr_reg_243[2]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[3]),
        .Q(A_addr_reg_243[3]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[4]),
        .Q(A_addr_reg_243[4]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[5]),
        .Q(A_addr_reg_243[5]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[6]),
        .Q(A_addr_reg_243[6]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[7]),
        .Q(A_addr_reg_243[7]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[8]),
        .Q(A_addr_reg_243[8]),
        .R(1'b0));
  FDRE \A_addr_reg_243_reg[9] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_q0[9]),
        .Q(A_addr_reg_243[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[0]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[0]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[0]),
        .O(A_address0[0]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[1]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[1]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[1]),
        .O(A_address0[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[2]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[2]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[2]),
        .O(A_address0[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[3]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[3]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[3]),
        .O(A_address0[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[4]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[4]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[4]),
        .O(A_address0[4]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[5]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[5]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[5]),
        .O(A_address0[5]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[6]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[6]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[6]),
        .O(A_address0[6]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[7]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[7]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[7]),
        .O(A_address0[7]));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[8]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[8]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[8]),
        .O(A_address0[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[9]_INST_0 
       (.I0(A_addr_reg_243_pp0_iter1_reg[9]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(addr_q0[9]),
        .O(A_address0[9]));
  LUT6 #(
    .INIT(64'hFFFFA088A088A088)) 
    A_ce0_INST_0
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(ap_enable_reg_pp0_iter1),
        .I5(ap_CS_fsm_pp0_stage2),
        .O(A_ce0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \A_d0[0]_INST_0 
       (.I0(\result_reg_286_reg[0]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[10]_INST_0 
       (.I0(\result_reg_286_reg[10]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[11]_INST_0 
       (.I0(\result_reg_286_reg[11]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[11]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[12]_INST_0 
       (.I0(\result_reg_286_reg[12]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[13]_INST_0 
       (.I0(\result_reg_286_reg[13]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[14]_INST_0 
       (.I0(\result_reg_286_reg[14]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[15]_INST_0 
       (.I0(\result_reg_286_reg[15]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[1]_INST_0 
       (.I0(\result_reg_286_reg[1]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[2]_INST_0 
       (.I0(\result_reg_286_reg[2]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[3]_INST_0 
       (.I0(\result_reg_286_reg[3]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[4]_INST_0 
       (.I0(\result_reg_286_reg[4]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[5]_INST_0 
       (.I0(\result_reg_286_reg[5]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[6]_INST_0 
       (.I0(\result_reg_286_reg[6]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[7]_INST_0 
       (.I0(\result_reg_286_reg[7]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[8]_INST_0 
       (.I0(\result_reg_286_reg[8]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[9]_INST_0 
       (.I0(\result_reg_286_reg[9]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(A_d0[9]));
  LUT2 #(
    .INIT(4'h8)) 
    addr_ce0_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(addr_ce0));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_10 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_11 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_12 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_13 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_14 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h21000021)) 
    \addr_cmp_reg_248[0]_i_15 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[31] ),
        .I1(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .I2(addr_q0[31]),
        .I3(\reuse_addr_reg_fu_48_reg_n_0_[30] ),
        .I4(addr_q0[30]),
        .O(\addr_cmp_reg_248[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_16 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[28] ),
        .I1(addr_q0[28]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[27] ),
        .I3(addr_q0[27]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[29] ),
        .I5(addr_q0[29]),
        .O(\addr_cmp_reg_248[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_17 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[26] ),
        .I1(addr_q0[26]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[24] ),
        .I3(addr_q0[24]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[25] ),
        .I5(addr_q0[25]),
        .O(\addr_cmp_reg_248[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_18 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[23] ),
        .I1(addr_q0[23]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[21] ),
        .I3(addr_q0[21]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[22] ),
        .I5(addr_q0[22]),
        .O(\addr_cmp_reg_248[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_19 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[19] ),
        .I1(addr_q0[19]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[18] ),
        .I3(addr_q0[18]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[20] ),
        .I5(addr_q0[20]),
        .O(\addr_cmp_reg_248[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_20 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[16] ),
        .I1(addr_q0[16]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[15] ),
        .I3(addr_q0[15]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[17] ),
        .I5(addr_q0[17]),
        .O(\addr_cmp_reg_248[0]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_21 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[13] ),
        .I1(addr_q0[13]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[12] ),
        .I3(addr_q0[12]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[14] ),
        .I5(addr_q0[14]),
        .O(\addr_cmp_reg_248[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_22 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[10] ),
        .I1(addr_q0[10]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[9] ),
        .I3(addr_q0[9]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[11] ),
        .I5(addr_q0[11]),
        .O(\addr_cmp_reg_248[0]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_23 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[7] ),
        .I1(addr_q0[7]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[6] ),
        .I3(addr_q0[6]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[8] ),
        .I5(addr_q0[8]),
        .O(\addr_cmp_reg_248[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_24 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[5] ),
        .I1(addr_q0[5]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[3] ),
        .I3(addr_q0[3]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[4] ),
        .I5(addr_q0[4]),
        .O(\addr_cmp_reg_248[0]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \addr_cmp_reg_248[0]_i_25 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[1] ),
        .I1(addr_q0[1]),
        .I2(\reuse_addr_reg_fu_48_reg_n_0_[0] ),
        .I3(addr_q0[0]),
        .I4(\reuse_addr_reg_fu_48_reg_n_0_[2] ),
        .I5(addr_q0[2]),
        .O(\addr_cmp_reg_248[0]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_3 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_4 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_5 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_6 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_7 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_cmp_reg_248[0]_i_8 
       (.I0(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .O(\addr_cmp_reg_248[0]_i_8_n_0 ));
  FDRE \addr_cmp_reg_248_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_113),
        .D(addr_cmp_fu_138_p2),
        .Q(addr_cmp_reg_248),
        .R(1'b0));
  CARRY8 \addr_cmp_reg_248_reg[0]_i_1 
       (.CI(\addr_cmp_reg_248_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_addr_cmp_reg_248_reg[0]_i_1_CO_UNCONNECTED [7:6],addr_cmp_fu_138_p2,\addr_cmp_reg_248_reg[0]_i_1_n_3 ,\addr_cmp_reg_248_reg[0]_i_1_n_4 ,\addr_cmp_reg_248_reg[0]_i_1_n_5 ,\addr_cmp_reg_248_reg[0]_i_1_n_6 ,\addr_cmp_reg_248_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_cmp_reg_248_reg[0]_i_1_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,\addr_cmp_reg_248[0]_i_3_n_0 ,\addr_cmp_reg_248[0]_i_4_n_0 ,\addr_cmp_reg_248[0]_i_5_n_0 ,\addr_cmp_reg_248[0]_i_6_n_0 ,\addr_cmp_reg_248[0]_i_7_n_0 ,\addr_cmp_reg_248[0]_i_8_n_0 }));
  CARRY8 \addr_cmp_reg_248_reg[0]_i_2 
       (.CI(\addr_cmp_reg_248_reg[0]_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\addr_cmp_reg_248_reg[0]_i_2_n_0 ,\addr_cmp_reg_248_reg[0]_i_2_n_1 ,\addr_cmp_reg_248_reg[0]_i_2_n_2 ,\addr_cmp_reg_248_reg[0]_i_2_n_3 ,\addr_cmp_reg_248_reg[0]_i_2_n_4 ,\addr_cmp_reg_248_reg[0]_i_2_n_5 ,\addr_cmp_reg_248_reg[0]_i_2_n_6 ,\addr_cmp_reg_248_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_cmp_reg_248_reg[0]_i_2_O_UNCONNECTED [7:0]),
        .S({\addr_cmp_reg_248[0]_i_10_n_0 ,\addr_cmp_reg_248[0]_i_11_n_0 ,\addr_cmp_reg_248[0]_i_12_n_0 ,\addr_cmp_reg_248[0]_i_13_n_0 ,\addr_cmp_reg_248[0]_i_14_n_0 ,\addr_cmp_reg_248[0]_i_15_n_0 ,\addr_cmp_reg_248[0]_i_16_n_0 ,\addr_cmp_reg_248[0]_i_17_n_0 }));
  CARRY8 \addr_cmp_reg_248_reg[0]_i_9 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\addr_cmp_reg_248_reg[0]_i_9_n_0 ,\addr_cmp_reg_248_reg[0]_i_9_n_1 ,\addr_cmp_reg_248_reg[0]_i_9_n_2 ,\addr_cmp_reg_248_reg[0]_i_9_n_3 ,\addr_cmp_reg_248_reg[0]_i_9_n_4 ,\addr_cmp_reg_248_reg[0]_i_9_n_5 ,\addr_cmp_reg_248_reg[0]_i_9_n_6 ,\addr_cmp_reg_248_reg[0]_i_9_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_addr_cmp_reg_248_reg[0]_i_9_O_UNCONNECTED [7:0]),
        .S({\addr_cmp_reg_248[0]_i_18_n_0 ,\addr_cmp_reg_248[0]_i_19_n_0 ,\addr_cmp_reg_248[0]_i_20_n_0 ,\addr_cmp_reg_248[0]_i_21_n_0 ,\addr_cmp_reg_248[0]_i_22_n_0 ,\addr_cmp_reg_248[0]_i_23_n_0 ,\addr_cmp_reg_248[0]_i_24_n_0 ,\addr_cmp_reg_248[0]_i_25_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hFFFFAAAE)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage5),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_start),
        .I4(ap_done),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_pp0_stage4),
        .I1(ap_CS_fsm_pp0_stage5),
        .I2(\ap_CS_fsm[1]_i_2_n_0 ),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(ap_CS_fsm_pp0_stage3),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_start),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h35FF0000)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(\icmp_ln6_reg_234_reg_n_0_[0] ),
        .I4(ap_CS_fsm_pp0_stage2),
        .O(ap_NS_fsm[3]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage1),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_pp0_stage3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage3),
        .Q(ap_CS_fsm_pp0_stage4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage4),
        .Q(ap_CS_fsm_pp0_stage5),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'h0000504450445044)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(ap_start),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(\icmp_ln6_reg_234_reg_n_0_[0] ),
        .I5(ap_CS_fsm_pp0_stage2),
        .O(ap_enable_reg_pp0_iter0_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0_reg_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00404540)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_CS_fsm_pp0_stage5),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_CS_fsm_pp0_stage2),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h02)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h88088000)) 
    ap_ready_INST_0
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(\icmp_ln6_reg_234_reg_n_0_[0] ),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_start),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .O(ap_done));
  LUT5 #(
    .INIT(32'hEFFFE000)) 
    \ap_return[0]_INST_0 
       (.I0(\result_reg_286_reg[0]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[0]),
        .O(ap_return[0]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[10]_INST_0 
       (.I0(\result_reg_286_reg[10]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[10]),
        .O(ap_return[10]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[11]_INST_0 
       (.I0(\result_reg_286_reg[11]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[11]),
        .O(ap_return[11]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[12]_INST_0 
       (.I0(\result_reg_286_reg[12]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[12]),
        .O(ap_return[12]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[13]_INST_0 
       (.I0(\result_reg_286_reg[13]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[13]),
        .O(ap_return[13]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[14]_INST_0 
       (.I0(\result_reg_286_reg[14]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[14]),
        .O(ap_return[14]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[15]_INST_0 
       (.I0(\result_reg_286_reg[15]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[15]),
        .O(ap_return[15]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[1]_INST_0 
       (.I0(\result_reg_286_reg[1]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[1]),
        .O(ap_return[1]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[2]_INST_0 
       (.I0(\result_reg_286_reg[2]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[2]),
        .O(ap_return[2]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[3]_INST_0 
       (.I0(\result_reg_286_reg[3]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[3]),
        .O(ap_return[3]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[4]_INST_0 
       (.I0(\result_reg_286_reg[4]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[4]),
        .O(ap_return[4]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[5]_INST_0 
       (.I0(\result_reg_286_reg[5]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[5]),
        .O(ap_return[5]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[6]_INST_0 
       (.I0(\result_reg_286_reg[6]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[6]),
        .O(ap_return[6]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[7]_INST_0 
       (.I0(\result_reg_286_reg[7]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[7]),
        .O(ap_return[7]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[8]_INST_0 
       (.I0(\result_reg_286_reg[8]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[8]),
        .O(ap_return[8]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[9]_INST_0 
       (.I0(\result_reg_286_reg[9]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(result_2_fu_56[9]),
        .O(ap_return[9]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_flow_control_loop_pipe flow_control_loop_pipe_U
       (.D(p_0_in),
        .E(i_fu_60),
        .Q({ap_CS_fsm_pp0_stage5,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .addr_address0(addr_address0),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_U_n_25),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_loop_init_reg_0(flow_control_loop_pipe_U_n_0),
        .ap_loop_init_reg_1(\icmp_ln6_reg_234_reg_n_0_[0] ),
        .ap_rst(ap_rst),
        .ap_sig_allocacmp_i_11(ap_sig_allocacmp_i_11),
        .ap_start(ap_start),
        .ap_start_0(flow_control_loop_pipe_U_n_26),
        .\i_fu_60_reg[0] (\i_fu_60[9]_i_5_n_0 ),
        .\i_fu_60_reg[0]_0 (\i_fu_60[9]_i_6_n_0 ),
        .\i_fu_60_reg[9] ({\i_fu_60_reg_n_0_[9] ,\i_fu_60_reg_n_0_[8] ,\i_fu_60_reg_n_0_[7] ,\i_fu_60_reg_n_0_[6] ,\i_fu_60_reg_n_0_[5] ,\i_fu_60_reg_n_0_[4] ,\i_fu_60_reg_n_0_[3] ,\i_fu_60_reg_n_0_[2] ,\i_fu_60_reg_n_0_[1] ,\i_fu_60_reg_n_0_[0] }),
        .reuse_addr_reg_fu_48(reuse_addr_reg_fu_48),
        .\reuse_addr_reg_fu_48_reg[32] (\reuse_addr_reg_fu_48_reg_n_0_[32] ));
  LUT4 #(
    .INIT(16'h8000)) 
    \i_fu_60[9]_i_5 
       (.I0(\i_fu_60_reg_n_0_[9] ),
        .I1(\i_fu_60_reg_n_0_[8] ),
        .I2(\i_fu_60_reg_n_0_[7] ),
        .I3(\i_fu_60_reg_n_0_[6] ),
        .O(\i_fu_60[9]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \i_fu_60[9]_i_6 
       (.I0(\i_fu_60_reg_n_0_[4] ),
        .I1(\i_fu_60_reg_n_0_[3] ),
        .I2(\i_fu_60_reg_n_0_[2] ),
        .O(\i_fu_60[9]_i_6_n_0 ));
  FDRE \i_fu_60_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[0]),
        .Q(\i_fu_60_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[1]),
        .Q(\i_fu_60_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[2]),
        .Q(\i_fu_60_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[3]),
        .Q(\i_fu_60_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[4]),
        .Q(\i_fu_60_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[5]),
        .Q(\i_fu_60_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[6] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[6]),
        .Q(\i_fu_60_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[7] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[7]),
        .Q(\i_fu_60_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[8] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[8]),
        .Q(\i_fu_60_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \i_fu_60_reg[9] 
       (.C(ap_clk),
        .CE(i_fu_60),
        .D(p_0_in[9]),
        .Q(\i_fu_60_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_20 
       (.I0(beta_fu_152_p3[15]),
        .I1(beta_fu_152_p3[14]),
        .O(\icmp_ln10_reg_261[0]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_21 
       (.I0(beta_fu_152_p3[13]),
        .I1(beta_fu_152_p3[12]),
        .O(\icmp_ln10_reg_261[0]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_22 
       (.I0(beta_fu_152_p3[11]),
        .I1(beta_fu_152_p3[10]),
        .O(\icmp_ln10_reg_261[0]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_23 
       (.I0(beta_fu_152_p3[9]),
        .I1(beta_fu_152_p3[8]),
        .O(\icmp_ln10_reg_261[0]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_24 
       (.I0(beta_fu_152_p3[7]),
        .I1(beta_fu_152_p3[6]),
        .O(\icmp_ln10_reg_261[0]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_25 
       (.I0(beta_fu_152_p3[5]),
        .I1(beta_fu_152_p3[4]),
        .O(\icmp_ln10_reg_261[0]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_26 
       (.I0(beta_fu_152_p3[3]),
        .I1(beta_fu_152_p3[2]),
        .O(\icmp_ln10_reg_261[0]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \icmp_ln10_reg_261[0]_i_27 
       (.I0(beta_fu_152_p3[1]),
        .I1(beta_fu_152_p3[0]),
        .O(\icmp_ln10_reg_261[0]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_28 
       (.I0(beta_fu_152_p3[14]),
        .I1(beta_fu_152_p3[15]),
        .O(\icmp_ln10_reg_261[0]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_29 
       (.I0(beta_fu_152_p3[12]),
        .I1(beta_fu_152_p3[13]),
        .O(\icmp_ln10_reg_261[0]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_30 
       (.I0(beta_fu_152_p3[10]),
        .I1(beta_fu_152_p3[11]),
        .O(\icmp_ln10_reg_261[0]_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_31 
       (.I0(beta_fu_152_p3[8]),
        .I1(beta_fu_152_p3[9]),
        .O(\icmp_ln10_reg_261[0]_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_32 
       (.I0(beta_fu_152_p3[6]),
        .I1(beta_fu_152_p3[7]),
        .O(\icmp_ln10_reg_261[0]_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_33 
       (.I0(beta_fu_152_p3[4]),
        .I1(beta_fu_152_p3[5]),
        .O(\icmp_ln10_reg_261[0]_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_34 
       (.I0(beta_fu_152_p3[2]),
        .I1(beta_fu_152_p3[3]),
        .O(\icmp_ln10_reg_261[0]_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \icmp_ln10_reg_261[0]_i_35 
       (.I0(beta_fu_152_p3[0]),
        .I1(beta_fu_152_p3[1]),
        .O(\icmp_ln10_reg_261[0]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_36 
       (.I0(reuse_reg_fu_52[30]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[30]),
        .O(\icmp_ln10_reg_261[0]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \icmp_ln10_reg_261[0]_i_37 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .O(\icmp_ln10_reg_261[0]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_38 
       (.I0(reuse_reg_fu_52[31]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[31]),
        .O(\icmp_ln10_reg_261[0]_i_38_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_39 
       (.I0(reuse_reg_fu_52[29]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[29]),
        .O(\icmp_ln10_reg_261[0]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_40 
       (.I0(reuse_reg_fu_52[28]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[28]),
        .O(\icmp_ln10_reg_261[0]_i_40_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_41 
       (.I0(reuse_reg_fu_52[27]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[27]),
        .O(\icmp_ln10_reg_261[0]_i_41_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_42 
       (.I0(reuse_reg_fu_52[26]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[26]),
        .O(\icmp_ln10_reg_261[0]_i_42_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_43 
       (.I0(reuse_reg_fu_52[25]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[25]),
        .O(\icmp_ln10_reg_261[0]_i_43_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_44 
       (.I0(reuse_reg_fu_52[24]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[24]),
        .O(\icmp_ln10_reg_261[0]_i_44_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_45 
       (.I0(reuse_reg_fu_52[23]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[23]),
        .O(\icmp_ln10_reg_261[0]_i_45_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_46 
       (.I0(reuse_reg_fu_52[22]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[22]),
        .O(\icmp_ln10_reg_261[0]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_47 
       (.I0(reuse_reg_fu_52[21]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[21]),
        .O(\icmp_ln10_reg_261[0]_i_47_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_48 
       (.I0(reuse_reg_fu_52[20]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[20]),
        .O(\icmp_ln10_reg_261[0]_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_49 
       (.I0(reuse_reg_fu_52[19]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[19]),
        .O(\icmp_ln10_reg_261[0]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_50 
       (.I0(reuse_reg_fu_52[18]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[18]),
        .O(\icmp_ln10_reg_261[0]_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_51 
       (.I0(reuse_reg_fu_52[17]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[17]),
        .O(\icmp_ln10_reg_261[0]_i_51_n_0 ));
  LUT5 #(
    .INIT(32'h2AFF2A00)) 
    \icmp_ln10_reg_261[0]_i_52 
       (.I0(reuse_reg_fu_52[16]),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(addr_cmp_reg_248),
        .I4(A_q0[16]),
        .O(\icmp_ln10_reg_261[0]_i_52_n_0 ));
  FDRE \icmp_ln10_reg_261_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(mul_32s_32s_32_1_1_U3_n_132),
        .Q(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 \icmp_ln10_reg_261_reg[0]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\icmp_ln10_reg_261_reg[0]_i_3_n_0 ,\icmp_ln10_reg_261_reg[0]_i_3_n_1 ,\icmp_ln10_reg_261_reg[0]_i_3_n_2 ,\icmp_ln10_reg_261_reg[0]_i_3_n_3 ,\icmp_ln10_reg_261_reg[0]_i_3_n_4 ,\icmp_ln10_reg_261_reg[0]_i_3_n_5 ,\icmp_ln10_reg_261_reg[0]_i_3_n_6 ,\icmp_ln10_reg_261_reg[0]_i_3_n_7 }),
        .DI({\icmp_ln10_reg_261[0]_i_20_n_0 ,\icmp_ln10_reg_261[0]_i_21_n_0 ,\icmp_ln10_reg_261[0]_i_22_n_0 ,\icmp_ln10_reg_261[0]_i_23_n_0 ,\icmp_ln10_reg_261[0]_i_24_n_0 ,\icmp_ln10_reg_261[0]_i_25_n_0 ,\icmp_ln10_reg_261[0]_i_26_n_0 ,\icmp_ln10_reg_261[0]_i_27_n_0 }),
        .O(\NLW_icmp_ln10_reg_261_reg[0]_i_3_O_UNCONNECTED [7:0]),
        .S({\icmp_ln10_reg_261[0]_i_28_n_0 ,\icmp_ln10_reg_261[0]_i_29_n_0 ,\icmp_ln10_reg_261[0]_i_30_n_0 ,\icmp_ln10_reg_261[0]_i_31_n_0 ,\icmp_ln10_reg_261[0]_i_32_n_0 ,\icmp_ln10_reg_261[0]_i_33_n_0 ,\icmp_ln10_reg_261[0]_i_34_n_0 ,\icmp_ln10_reg_261[0]_i_35_n_0 }));
  FDRE \icmp_ln6_reg_234_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_25),
        .Q(\icmp_ln6_reg_234_reg_n_0_[0] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1 mul_32s_32s_32_1_1_U1
       (.A(beta_fu_152_p3[15:0]),
        .A_q0(A_q0[15:0]),
        .CEA2(beta_reg_2530),
        .CO(mul_32s_32s_32_1_1_U2_n_67),
        .D({mul_32s_32s_32_1_1_U1_n_18,mul_32s_32s_32_1_1_U1_n_19,mul_32s_32s_32_1_1_U1_n_20,mul_32s_32s_32_1_1_U1_n_21,mul_32s_32s_32_1_1_U1_n_22,mul_32s_32s_32_1_1_U1_n_23,mul_32s_32s_32_1_1_U1_n_24,mul_32s_32s_32_1_1_U1_n_25,mul_32s_32s_32_1_1_U1_n_26,mul_32s_32s_32_1_1_U1_n_27,mul_32s_32s_32_1_1_U1_n_28,mul_32s_32s_32_1_1_U1_n_29,mul_32s_32s_32_1_1_U1_n_30,mul_32s_32s_32_1_1_U1_n_31,mul_32s_32s_32_1_1_U1_n_32,mul_32s_32s_32_1_1_U1_n_33,mul_32s_32s_32_1_1_U1_n_34}),
        .DSP_A_B_DATA_INST(reuse_reg_fu_52[15:0]),
        .DSP_A_B_DATA_INST_0({\result_reg_286_reg[15]__0_n_0 ,\result_reg_286_reg[14]__0_n_0 ,\result_reg_286_reg[13]__0_n_0 ,\result_reg_286_reg[12]__0_n_0 ,\result_reg_286_reg[11]__0_n_0 ,\result_reg_286_reg[10]__0_n_0 ,\result_reg_286_reg[9]__0_n_0 ,\result_reg_286_reg[8]__0_n_0 ,\result_reg_286_reg[7]__0_n_0 ,\result_reg_286_reg[6]__0_n_0 ,\result_reg_286_reg[5]__0_n_0 ,\result_reg_286_reg[4]__0_n_0 ,\result_reg_286_reg[3]__0_n_0 ,\result_reg_286_reg[2]__0_n_0 ,\result_reg_286_reg[1]__0_n_0 ,\result_reg_286_reg[0]__0_n_0 }),
        .E(mul_ln13_reg_2660),
        .P({mul_ln13_reg_266_reg_n_91,mul_ln13_reg_266_reg_n_92,mul_ln13_reg_266_reg_n_93,mul_ln13_reg_266_reg_n_94,mul_ln13_reg_266_reg_n_95,mul_ln13_reg_266_reg_n_96,mul_ln13_reg_266_reg_n_97,mul_ln13_reg_266_reg_n_98,mul_ln13_reg_266_reg_n_99,mul_ln13_reg_266_reg_n_100,mul_ln13_reg_266_reg_n_101,mul_ln13_reg_266_reg_n_102,mul_ln13_reg_266_reg_n_103,mul_ln13_reg_266_reg_n_104,mul_ln13_reg_266_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65,mul_32s_32s_32_1_1_U1_n_66,mul_32s_32s_32_1_1_U1_n_67,mul_32s_32s_32_1_1_U1_n_68,mul_32s_32s_32_1_1_U1_n_69,mul_32s_32s_32_1_1_U1_n_70,mul_32s_32s_32_1_1_U1_n_71,mul_32s_32s_32_1_1_U1_n_72,mul_32s_32s_32_1_1_U1_n_73,mul_32s_32s_32_1_1_U1_n_74,mul_32s_32s_32_1_1_U1_n_75,mul_32s_32s_32_1_1_U1_n_76,mul_32s_32s_32_1_1_U1_n_77,mul_32s_32s_32_1_1_U1_n_78,mul_32s_32s_32_1_1_U1_n_79,mul_32s_32s_32_1_1_U1_n_80,mul_32s_32s_32_1_1_U1_n_81,mul_32s_32s_32_1_1_U1_n_82}),
        .Q({\mul_ln13_reg_266_reg[16]__0_n_0 ,\mul_ln13_reg_266_reg[15]__0_n_0 ,\mul_ln13_reg_266_reg[14]__0_n_0 ,\mul_ln13_reg_266_reg[13]__0_n_0 ,\mul_ln13_reg_266_reg[12]__0_n_0 ,\mul_ln13_reg_266_reg[11]__0_n_0 ,\mul_ln13_reg_266_reg[10]__0_n_0 ,\mul_ln13_reg_266_reg[9]__0_n_0 }),
        .add_ln13_fu_169_p2(add_ln13_fu_169_p2),
        .addr_cmp_reg_248(addr_cmp_reg_248),
        .\ap_CS_fsm_reg[2] (A_we0),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .beta_fu_152_p3(beta_fu_152_p3[31:16]),
        .\mul_ln13_reg_266_reg[0]__0 (\icmp_ln10_reg_261_reg_n_0_[0] ),
        .\mul_ln13_reg_266_reg[0]__0_0 ({ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage2}),
        .\mul_ln13_reg_266_reg[0]__0_1 (\icmp_ln6_reg_234_reg_n_0_[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_0 mul_32s_32s_32_1_1_U2
       (.CEA2(beta_reg_2530),
        .CEB2(add_ln13_reg_2710),
        .CO(mul_32s_32s_32_1_1_U2_n_67),
        .D({mul_32s_32s_32_1_1_U2_n_2,mul_32s_32s_32_1_1_U2_n_3,mul_32s_32s_32_1_1_U2_n_4,mul_32s_32s_32_1_1_U2_n_5,mul_32s_32s_32_1_1_U2_n_6,mul_32s_32s_32_1_1_U2_n_7,mul_32s_32s_32_1_1_U2_n_8,mul_32s_32s_32_1_1_U2_n_9,mul_32s_32s_32_1_1_U2_n_10,mul_32s_32s_32_1_1_U2_n_11,mul_32s_32s_32_1_1_U2_n_12,mul_32s_32s_32_1_1_U2_n_13,mul_32s_32s_32_1_1_U2_n_14,mul_32s_32s_32_1_1_U2_n_15,mul_32s_32s_32_1_1_U2_n_16,mul_32s_32s_32_1_1_U2_n_17,mul_32s_32s_32_1_1_U2_n_18}),
        .DSP_ALU_INST(add_ln13_fu_169_p2[16:9]),
        .DSP_A_B_DATA_INST({\mul_ln13_reg_266_reg[8]__0_n_0 ,\mul_ln13_reg_266_reg[7]__0_n_0 ,\mul_ln13_reg_266_reg[6]__0_n_0 ,\mul_ln13_reg_266_reg[5]__0_n_0 ,\mul_ln13_reg_266_reg[4]__0_n_0 ,\mul_ln13_reg_266_reg[3]__0_n_0 ,\mul_ln13_reg_266_reg[2]__0_n_0 ,\mul_ln13_reg_266_reg[1]__0_n_0 ,\mul_ln13_reg_266_reg[0]__0_n_0 }),
        .DSP_A_B_DATA_INST_0(mul_32s_32s_32_1_1_U3_n_131),
        .E(mul_ln13_1_reg_2760),
        .P({mul_ln13_1_reg_276_reg_n_91,mul_ln13_1_reg_276_reg_n_92,mul_ln13_1_reg_276_reg_n_93,mul_ln13_1_reg_276_reg_n_94,mul_ln13_1_reg_276_reg_n_95,mul_ln13_1_reg_276_reg_n_96,mul_ln13_1_reg_276_reg_n_97,mul_ln13_1_reg_276_reg_n_98,mul_ln13_1_reg_276_reg_n_99,mul_ln13_1_reg_276_reg_n_100,mul_ln13_1_reg_276_reg_n_101,mul_ln13_1_reg_276_reg_n_102,mul_ln13_1_reg_276_reg_n_103,mul_ln13_1_reg_276_reg_n_104,mul_ln13_1_reg_276_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U2_n_19,mul_32s_32s_32_1_1_U2_n_20,mul_32s_32s_32_1_1_U2_n_21,mul_32s_32s_32_1_1_U2_n_22,mul_32s_32s_32_1_1_U2_n_23,mul_32s_32s_32_1_1_U2_n_24,mul_32s_32s_32_1_1_U2_n_25,mul_32s_32s_32_1_1_U2_n_26,mul_32s_32s_32_1_1_U2_n_27,mul_32s_32s_32_1_1_U2_n_28,mul_32s_32s_32_1_1_U2_n_29,mul_32s_32s_32_1_1_U2_n_30,mul_32s_32s_32_1_1_U2_n_31,mul_32s_32s_32_1_1_U2_n_32,mul_32s_32s_32_1_1_U2_n_33,mul_32s_32s_32_1_1_U2_n_34,mul_32s_32s_32_1_1_U2_n_35,mul_32s_32s_32_1_1_U2_n_36,mul_32s_32s_32_1_1_U2_n_37,mul_32s_32s_32_1_1_U2_n_38,mul_32s_32s_32_1_1_U2_n_39,mul_32s_32s_32_1_1_U2_n_40,mul_32s_32s_32_1_1_U2_n_41,mul_32s_32s_32_1_1_U2_n_42,mul_32s_32s_32_1_1_U2_n_43,mul_32s_32s_32_1_1_U2_n_44,mul_32s_32s_32_1_1_U2_n_45,mul_32s_32s_32_1_1_U2_n_46,mul_32s_32s_32_1_1_U2_n_47,mul_32s_32s_32_1_1_U2_n_48,mul_32s_32s_32_1_1_U2_n_49,mul_32s_32s_32_1_1_U2_n_50,mul_32s_32s_32_1_1_U2_n_51,mul_32s_32s_32_1_1_U2_n_52,mul_32s_32s_32_1_1_U2_n_53,mul_32s_32s_32_1_1_U2_n_54,mul_32s_32s_32_1_1_U2_n_55,mul_32s_32s_32_1_1_U2_n_56,mul_32s_32s_32_1_1_U2_n_57,mul_32s_32s_32_1_1_U2_n_58,mul_32s_32s_32_1_1_U2_n_59,mul_32s_32s_32_1_1_U2_n_60,mul_32s_32s_32_1_1_U2_n_61,mul_32s_32s_32_1_1_U2_n_62,mul_32s_32s_32_1_1_U2_n_63,mul_32s_32s_32_1_1_U2_n_64,mul_32s_32s_32_1_1_U2_n_65,mul_32s_32s_32_1_1_U2_n_66}),
        .Q({\mul_ln13_1_reg_276_reg[16]__0_n_0 ,\mul_ln13_1_reg_276_reg[15]__0_n_0 ,\mul_ln13_1_reg_276_reg[14]__0_n_0 ,\mul_ln13_1_reg_276_reg[13]__0_n_0 ,\mul_ln13_1_reg_276_reg[12]__0_n_0 ,\mul_ln13_1_reg_276_reg[11]__0_n_0 ,\mul_ln13_1_reg_276_reg[10]__0_n_0 ,\mul_ln13_1_reg_276_reg[9]__0_n_0 }),
        .add_ln13_1_fu_178_p2(add_ln13_1_fu_178_p2),
        .ap_clk(ap_clk),
        .beta_fu_152_p3(beta_fu_152_p3),
        .\mul_ln13_1_reg_276_reg[0]__0 (\icmp_ln6_reg_234_reg_n_0_[0] ),
        .\mul_ln13_1_reg_276_reg[0]__0_0 ({ap_CS_fsm_pp0_stage5,ap_CS_fsm_pp0_stage4}),
        .\mul_ln13_1_reg_276_reg[0]__0_1 (\icmp_ln10_reg_261_reg_n_0_[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_1 mul_32s_32s_32_1_1_U3
       (.A(beta_fu_152_p3[15:0]),
        .A_d0(A_d0[31:16]),
        .A_q0(A_q0[31:16]),
        .CEA2(beta_reg_2530),
        .CEB2(add_ln13_1_reg_2810),
        .CO(\icmp_ln10_reg_261_reg[0]_i_3_n_0 ),
        .D({mul_32s_32s_32_1_1_U3_n_18,mul_32s_32s_32_1_1_U3_n_19,mul_32s_32s_32_1_1_U3_n_20,mul_32s_32s_32_1_1_U3_n_21,mul_32s_32s_32_1_1_U3_n_22,mul_32s_32s_32_1_1_U3_n_23,mul_32s_32s_32_1_1_U3_n_24,mul_32s_32s_32_1_1_U3_n_25,mul_32s_32s_32_1_1_U3_n_26,mul_32s_32s_32_1_1_U3_n_27,mul_32s_32s_32_1_1_U3_n_28,mul_32s_32s_32_1_1_U3_n_29,mul_32s_32s_32_1_1_U3_n_30,mul_32s_32s_32_1_1_U3_n_31,mul_32s_32s_32_1_1_U3_n_32,mul_32s_32s_32_1_1_U3_n_33,mul_32s_32s_32_1_1_U3_n_34}),
        .DSP_ALU_INST(add_ln13_1_fu_178_p2[16:9]),
        .DSP_A_B_DATA_INST(A_we0),
        .DSP_A_B_DATA_INST_0({\mul_ln13_1_reg_276_reg[8]__0_n_0 ,\mul_ln13_1_reg_276_reg[7]__0_n_0 ,\mul_ln13_1_reg_276_reg[6]__0_n_0 ,\mul_ln13_1_reg_276_reg[5]__0_n_0 ,\mul_ln13_1_reg_276_reg[4]__0_n_0 ,\mul_ln13_1_reg_276_reg[3]__0_n_0 ,\mul_ln13_1_reg_276_reg[2]__0_n_0 ,\mul_ln13_1_reg_276_reg[1]__0_n_0 ,\mul_ln13_1_reg_276_reg[0]__0_n_0 }),
        .E(result_reg_2860),
        .P({result_reg_286_reg_n_91,result_reg_286_reg_n_92,result_reg_286_reg_n_93,result_reg_286_reg_n_94,result_reg_286_reg_n_95,result_reg_286_reg_n_96,result_reg_286_reg_n_97,result_reg_286_reg_n_98,result_reg_286_reg_n_99,result_reg_286_reg_n_100,result_reg_286_reg_n_101,result_reg_286_reg_n_102,result_reg_286_reg_n_103,result_reg_286_reg_n_104,result_reg_286_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U3_n_35,mul_32s_32s_32_1_1_U3_n_36,mul_32s_32s_32_1_1_U3_n_37,mul_32s_32s_32_1_1_U3_n_38,mul_32s_32s_32_1_1_U3_n_39,mul_32s_32s_32_1_1_U3_n_40,mul_32s_32s_32_1_1_U3_n_41,mul_32s_32s_32_1_1_U3_n_42,mul_32s_32s_32_1_1_U3_n_43,mul_32s_32s_32_1_1_U3_n_44,mul_32s_32s_32_1_1_U3_n_45,mul_32s_32s_32_1_1_U3_n_46,mul_32s_32s_32_1_1_U3_n_47,mul_32s_32s_32_1_1_U3_n_48,mul_32s_32s_32_1_1_U3_n_49,mul_32s_32s_32_1_1_U3_n_50,mul_32s_32s_32_1_1_U3_n_51,mul_32s_32s_32_1_1_U3_n_52,mul_32s_32s_32_1_1_U3_n_53,mul_32s_32s_32_1_1_U3_n_54,mul_32s_32s_32_1_1_U3_n_55,mul_32s_32s_32_1_1_U3_n_56,mul_32s_32s_32_1_1_U3_n_57,mul_32s_32s_32_1_1_U3_n_58,mul_32s_32s_32_1_1_U3_n_59,mul_32s_32s_32_1_1_U3_n_60,mul_32s_32s_32_1_1_U3_n_61,mul_32s_32s_32_1_1_U3_n_62,mul_32s_32s_32_1_1_U3_n_63,mul_32s_32s_32_1_1_U3_n_64,mul_32s_32s_32_1_1_U3_n_65,mul_32s_32s_32_1_1_U3_n_66,mul_32s_32s_32_1_1_U3_n_67,mul_32s_32s_32_1_1_U3_n_68,mul_32s_32s_32_1_1_U3_n_69,mul_32s_32s_32_1_1_U3_n_70,mul_32s_32s_32_1_1_U3_n_71,mul_32s_32s_32_1_1_U3_n_72,mul_32s_32s_32_1_1_U3_n_73,mul_32s_32s_32_1_1_U3_n_74,mul_32s_32s_32_1_1_U3_n_75,mul_32s_32s_32_1_1_U3_n_76,mul_32s_32s_32_1_1_U3_n_77,mul_32s_32s_32_1_1_U3_n_78,mul_32s_32s_32_1_1_U3_n_79,mul_32s_32s_32_1_1_U3_n_80,mul_32s_32s_32_1_1_U3_n_81,mul_32s_32s_32_1_1_U3_n_82}),
        .Q(\result_reg_286_reg[16]__0_n_0 ),
        .addr_cmp_reg_248(addr_cmp_reg_248),
        .\ap_CS_fsm_reg[2] (mul_32s_32s_32_1_1_U3_n_132),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .ap_return(ap_return[31:16]),
        .beta_fu_152_p3(beta_fu_152_p3[31:16]),
        .\icmp_ln10_reg_261_reg[0] (ap_sig_allocacmp_reuse_reg_load[31:16]),
        .\icmp_ln10_reg_261_reg[0]_0 (\icmp_ln10_reg_261_reg_n_0_[0] ),
        .\icmp_ln10_reg_261_reg[0]_1 ({ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .\icmp_ln10_reg_261_reg[0]_2 (\icmp_ln6_reg_234_reg_n_0_[0] ),
        .\icmp_ln10_reg_261_reg[0]_i_2_0 (\icmp_ln10_reg_261[0]_i_52_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_1 (\icmp_ln10_reg_261[0]_i_37_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_10 (\icmp_ln10_reg_261[0]_i_43_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_11 (\icmp_ln10_reg_261[0]_i_42_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_12 (\icmp_ln10_reg_261[0]_i_41_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_13 (\icmp_ln10_reg_261[0]_i_40_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_14 (\icmp_ln10_reg_261[0]_i_39_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_15 (\icmp_ln10_reg_261[0]_i_36_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_16 (\icmp_ln10_reg_261[0]_i_38_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_2 (\icmp_ln10_reg_261[0]_i_51_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_3 (\icmp_ln10_reg_261[0]_i_50_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_4 (\icmp_ln10_reg_261[0]_i_49_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_5 (\icmp_ln10_reg_261[0]_i_48_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_6 (\icmp_ln10_reg_261[0]_i_47_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_7 (\icmp_ln10_reg_261[0]_i_46_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_8 (\icmp_ln10_reg_261[0]_i_45_n_0 ),
        .\icmp_ln10_reg_261_reg[0]_i_2_9 (\icmp_ln10_reg_261[0]_i_44_n_0 ),
        .\mul_ln13_1_reg_276_reg[0]__0 (mul_32s_32s_32_1_1_U3_n_131),
        .\result_2_fu_56_reg[31] (result_2_fu_56[31:16]),
        .\reuse_reg_fu_52_reg[31] (reuse_reg_fu_52[31:16]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln13_1_reg_276_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,beta_fu_152_p3[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln13_1_reg_276_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({add_ln13_fu_169_p2[31],add_ln13_fu_169_p2[31],add_ln13_fu_169_p2[31],add_ln13_fu_169_p2[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln13_1_reg_276_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln13_1_reg_276_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln13_1_reg_276_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(beta_reg_2530),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(add_ln13_reg_2710),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln13_1_reg_2760),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln13_1_reg_276_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln13_1_reg_276_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln13_1_reg_276_reg_n_58,mul_ln13_1_reg_276_reg_n_59,mul_ln13_1_reg_276_reg_n_60,mul_ln13_1_reg_276_reg_n_61,mul_ln13_1_reg_276_reg_n_62,mul_ln13_1_reg_276_reg_n_63,mul_ln13_1_reg_276_reg_n_64,mul_ln13_1_reg_276_reg_n_65,mul_ln13_1_reg_276_reg_n_66,mul_ln13_1_reg_276_reg_n_67,mul_ln13_1_reg_276_reg_n_68,mul_ln13_1_reg_276_reg_n_69,mul_ln13_1_reg_276_reg_n_70,mul_ln13_1_reg_276_reg_n_71,mul_ln13_1_reg_276_reg_n_72,mul_ln13_1_reg_276_reg_n_73,mul_ln13_1_reg_276_reg_n_74,mul_ln13_1_reg_276_reg_n_75,mul_ln13_1_reg_276_reg_n_76,mul_ln13_1_reg_276_reg_n_77,mul_ln13_1_reg_276_reg_n_78,mul_ln13_1_reg_276_reg_n_79,mul_ln13_1_reg_276_reg_n_80,mul_ln13_1_reg_276_reg_n_81,mul_ln13_1_reg_276_reg_n_82,mul_ln13_1_reg_276_reg_n_83,mul_ln13_1_reg_276_reg_n_84,mul_ln13_1_reg_276_reg_n_85,mul_ln13_1_reg_276_reg_n_86,mul_ln13_1_reg_276_reg_n_87,mul_ln13_1_reg_276_reg_n_88,mul_ln13_1_reg_276_reg_n_89,mul_ln13_1_reg_276_reg_n_90,mul_ln13_1_reg_276_reg_n_91,mul_ln13_1_reg_276_reg_n_92,mul_ln13_1_reg_276_reg_n_93,mul_ln13_1_reg_276_reg_n_94,mul_ln13_1_reg_276_reg_n_95,mul_ln13_1_reg_276_reg_n_96,mul_ln13_1_reg_276_reg_n_97,mul_ln13_1_reg_276_reg_n_98,mul_ln13_1_reg_276_reg_n_99,mul_ln13_1_reg_276_reg_n_100,mul_ln13_1_reg_276_reg_n_101,mul_ln13_1_reg_276_reg_n_102,mul_ln13_1_reg_276_reg_n_103,mul_ln13_1_reg_276_reg_n_104,mul_ln13_1_reg_276_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln13_1_reg_276_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln13_1_reg_276_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U2_n_19,mul_32s_32s_32_1_1_U2_n_20,mul_32s_32s_32_1_1_U2_n_21,mul_32s_32s_32_1_1_U2_n_22,mul_32s_32s_32_1_1_U2_n_23,mul_32s_32s_32_1_1_U2_n_24,mul_32s_32s_32_1_1_U2_n_25,mul_32s_32s_32_1_1_U2_n_26,mul_32s_32s_32_1_1_U2_n_27,mul_32s_32s_32_1_1_U2_n_28,mul_32s_32s_32_1_1_U2_n_29,mul_32s_32s_32_1_1_U2_n_30,mul_32s_32s_32_1_1_U2_n_31,mul_32s_32s_32_1_1_U2_n_32,mul_32s_32s_32_1_1_U2_n_33,mul_32s_32s_32_1_1_U2_n_34,mul_32s_32s_32_1_1_U2_n_35,mul_32s_32s_32_1_1_U2_n_36,mul_32s_32s_32_1_1_U2_n_37,mul_32s_32s_32_1_1_U2_n_38,mul_32s_32s_32_1_1_U2_n_39,mul_32s_32s_32_1_1_U2_n_40,mul_32s_32s_32_1_1_U2_n_41,mul_32s_32s_32_1_1_U2_n_42,mul_32s_32s_32_1_1_U2_n_43,mul_32s_32s_32_1_1_U2_n_44,mul_32s_32s_32_1_1_U2_n_45,mul_32s_32s_32_1_1_U2_n_46,mul_32s_32s_32_1_1_U2_n_47,mul_32s_32s_32_1_1_U2_n_48,mul_32s_32s_32_1_1_U2_n_49,mul_32s_32s_32_1_1_U2_n_50,mul_32s_32s_32_1_1_U2_n_51,mul_32s_32s_32_1_1_U2_n_52,mul_32s_32s_32_1_1_U2_n_53,mul_32s_32s_32_1_1_U2_n_54,mul_32s_32s_32_1_1_U2_n_55,mul_32s_32s_32_1_1_U2_n_56,mul_32s_32s_32_1_1_U2_n_57,mul_32s_32s_32_1_1_U2_n_58,mul_32s_32s_32_1_1_U2_n_59,mul_32s_32s_32_1_1_U2_n_60,mul_32s_32s_32_1_1_U2_n_61,mul_32s_32s_32_1_1_U2_n_62,mul_32s_32s_32_1_1_U2_n_63,mul_32s_32s_32_1_1_U2_n_64,mul_32s_32s_32_1_1_U2_n_65,mul_32s_32s_32_1_1_U2_n_66}),
        .PCOUT(NLW_mul_ln13_1_reg_276_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln13_1_reg_276_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln13_1_reg_276_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln13_1_reg_276_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_18),
        .Q(\mul_ln13_1_reg_276_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_8),
        .Q(\mul_ln13_1_reg_276_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_7),
        .Q(\mul_ln13_1_reg_276_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_6),
        .Q(\mul_ln13_1_reg_276_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_5),
        .Q(\mul_ln13_1_reg_276_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_4),
        .Q(\mul_ln13_1_reg_276_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_3),
        .Q(\mul_ln13_1_reg_276_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_2),
        .Q(\mul_ln13_1_reg_276_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_17),
        .Q(\mul_ln13_1_reg_276_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_16),
        .Q(\mul_ln13_1_reg_276_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_15),
        .Q(\mul_ln13_1_reg_276_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_14),
        .Q(\mul_ln13_1_reg_276_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_13),
        .Q(\mul_ln13_1_reg_276_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_12),
        .Q(\mul_ln13_1_reg_276_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_11),
        .Q(\mul_ln13_1_reg_276_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_10),
        .Q(\mul_ln13_1_reg_276_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_1_reg_276_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln13_1_reg_2760),
        .D(mul_32s_32s_32_1_1_U2_n_9),
        .Q(\mul_ln13_1_reg_276_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    mul_ln13_reg_266_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,beta_fu_152_p3[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln13_reg_266_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({beta_fu_152_p3[31],beta_fu_152_p3[31],beta_fu_152_p3[31],beta_fu_152_p3[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln13_reg_266_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln13_reg_266_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln13_reg_266_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(beta_reg_2530),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(beta_reg_2530),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln13_reg_2660),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln13_reg_266_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln13_reg_266_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln13_reg_266_reg_n_58,mul_ln13_reg_266_reg_n_59,mul_ln13_reg_266_reg_n_60,mul_ln13_reg_266_reg_n_61,mul_ln13_reg_266_reg_n_62,mul_ln13_reg_266_reg_n_63,mul_ln13_reg_266_reg_n_64,mul_ln13_reg_266_reg_n_65,mul_ln13_reg_266_reg_n_66,mul_ln13_reg_266_reg_n_67,mul_ln13_reg_266_reg_n_68,mul_ln13_reg_266_reg_n_69,mul_ln13_reg_266_reg_n_70,mul_ln13_reg_266_reg_n_71,mul_ln13_reg_266_reg_n_72,mul_ln13_reg_266_reg_n_73,mul_ln13_reg_266_reg_n_74,mul_ln13_reg_266_reg_n_75,mul_ln13_reg_266_reg_n_76,mul_ln13_reg_266_reg_n_77,mul_ln13_reg_266_reg_n_78,mul_ln13_reg_266_reg_n_79,mul_ln13_reg_266_reg_n_80,mul_ln13_reg_266_reg_n_81,mul_ln13_reg_266_reg_n_82,mul_ln13_reg_266_reg_n_83,mul_ln13_reg_266_reg_n_84,mul_ln13_reg_266_reg_n_85,mul_ln13_reg_266_reg_n_86,mul_ln13_reg_266_reg_n_87,mul_ln13_reg_266_reg_n_88,mul_ln13_reg_266_reg_n_89,mul_ln13_reg_266_reg_n_90,mul_ln13_reg_266_reg_n_91,mul_ln13_reg_266_reg_n_92,mul_ln13_reg_266_reg_n_93,mul_ln13_reg_266_reg_n_94,mul_ln13_reg_266_reg_n_95,mul_ln13_reg_266_reg_n_96,mul_ln13_reg_266_reg_n_97,mul_ln13_reg_266_reg_n_98,mul_ln13_reg_266_reg_n_99,mul_ln13_reg_266_reg_n_100,mul_ln13_reg_266_reg_n_101,mul_ln13_reg_266_reg_n_102,mul_ln13_reg_266_reg_n_103,mul_ln13_reg_266_reg_n_104,mul_ln13_reg_266_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln13_reg_266_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln13_reg_266_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65,mul_32s_32s_32_1_1_U1_n_66,mul_32s_32s_32_1_1_U1_n_67,mul_32s_32s_32_1_1_U1_n_68,mul_32s_32s_32_1_1_U1_n_69,mul_32s_32s_32_1_1_U1_n_70,mul_32s_32s_32_1_1_U1_n_71,mul_32s_32s_32_1_1_U1_n_72,mul_32s_32s_32_1_1_U1_n_73,mul_32s_32s_32_1_1_U1_n_74,mul_32s_32s_32_1_1_U1_n_75,mul_32s_32s_32_1_1_U1_n_76,mul_32s_32s_32_1_1_U1_n_77,mul_32s_32s_32_1_1_U1_n_78,mul_32s_32s_32_1_1_U1_n_79,mul_32s_32s_32_1_1_U1_n_80,mul_32s_32s_32_1_1_U1_n_81,mul_32s_32s_32_1_1_U1_n_82}),
        .PCOUT(NLW_mul_ln13_reg_266_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_mul_ln13_reg_266_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln13_reg_266_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln13_reg_266_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_34),
        .Q(\mul_ln13_reg_266_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_24),
        .Q(\mul_ln13_reg_266_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_23),
        .Q(\mul_ln13_reg_266_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_22),
        .Q(\mul_ln13_reg_266_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_21),
        .Q(\mul_ln13_reg_266_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_20),
        .Q(\mul_ln13_reg_266_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_19),
        .Q(\mul_ln13_reg_266_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_18),
        .Q(\mul_ln13_reg_266_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_33),
        .Q(\mul_ln13_reg_266_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_32),
        .Q(\mul_ln13_reg_266_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_31),
        .Q(\mul_ln13_reg_266_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_30),
        .Q(\mul_ln13_reg_266_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_29),
        .Q(\mul_ln13_reg_266_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_28),
        .Q(\mul_ln13_reg_266_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_27),
        .Q(\mul_ln13_reg_266_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_26),
        .Q(\mul_ln13_reg_266_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln13_reg_266_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln13_reg_2660),
        .D(mul_32s_32s_32_1_1_U1_n_25),
        .Q(\mul_ln13_reg_266_reg[9]__0_n_0 ),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[0]),
        .Q(result_2_fu_56[0]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[10]),
        .Q(result_2_fu_56[10]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[11]),
        .Q(result_2_fu_56[11]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[12]),
        .Q(result_2_fu_56[12]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[13]),
        .Q(result_2_fu_56[13]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[14]),
        .Q(result_2_fu_56[14]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[15]),
        .Q(result_2_fu_56[15]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[16]),
        .Q(result_2_fu_56[16]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[17]),
        .Q(result_2_fu_56[17]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[18]),
        .Q(result_2_fu_56[18]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[19]),
        .Q(result_2_fu_56[19]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[1]),
        .Q(result_2_fu_56[1]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[20]),
        .Q(result_2_fu_56[20]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[21]),
        .Q(result_2_fu_56[21]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[22]),
        .Q(result_2_fu_56[22]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[23]),
        .Q(result_2_fu_56[23]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[24]),
        .Q(result_2_fu_56[24]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[25]),
        .Q(result_2_fu_56[25]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[26]),
        .Q(result_2_fu_56[26]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[27]),
        .Q(result_2_fu_56[27]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[28]),
        .Q(result_2_fu_56[28]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[29]),
        .Q(result_2_fu_56[29]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[2]),
        .Q(result_2_fu_56[2]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[30]),
        .Q(result_2_fu_56[30]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[31]),
        .Q(result_2_fu_56[31]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[3]),
        .Q(result_2_fu_56[3]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[4]),
        .Q(result_2_fu_56[4]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[5]),
        .Q(result_2_fu_56[5]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[6]),
        .Q(result_2_fu_56[6]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[7]),
        .Q(result_2_fu_56[7]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[8]),
        .Q(result_2_fu_56[8]),
        .R(1'b0));
  FDRE \result_2_fu_56_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_return[9]),
        .Q(result_2_fu_56[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    result_reg_286_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,beta_fu_152_p3[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_result_reg_286_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({add_ln13_1_fu_178_p2[31],add_ln13_1_fu_178_p2[31],add_ln13_1_fu_178_p2[31],add_ln13_1_fu_178_p2[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_result_reg_286_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_result_reg_286_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_result_reg_286_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(beta_reg_2530),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(add_ln13_1_reg_2810),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(result_reg_2860),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_result_reg_286_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_result_reg_286_reg_OVERFLOW_UNCONNECTED),
        .P({result_reg_286_reg_n_58,result_reg_286_reg_n_59,result_reg_286_reg_n_60,result_reg_286_reg_n_61,result_reg_286_reg_n_62,result_reg_286_reg_n_63,result_reg_286_reg_n_64,result_reg_286_reg_n_65,result_reg_286_reg_n_66,result_reg_286_reg_n_67,result_reg_286_reg_n_68,result_reg_286_reg_n_69,result_reg_286_reg_n_70,result_reg_286_reg_n_71,result_reg_286_reg_n_72,result_reg_286_reg_n_73,result_reg_286_reg_n_74,result_reg_286_reg_n_75,result_reg_286_reg_n_76,result_reg_286_reg_n_77,result_reg_286_reg_n_78,result_reg_286_reg_n_79,result_reg_286_reg_n_80,result_reg_286_reg_n_81,result_reg_286_reg_n_82,result_reg_286_reg_n_83,result_reg_286_reg_n_84,result_reg_286_reg_n_85,result_reg_286_reg_n_86,result_reg_286_reg_n_87,result_reg_286_reg_n_88,result_reg_286_reg_n_89,result_reg_286_reg_n_90,result_reg_286_reg_n_91,result_reg_286_reg_n_92,result_reg_286_reg_n_93,result_reg_286_reg_n_94,result_reg_286_reg_n_95,result_reg_286_reg_n_96,result_reg_286_reg_n_97,result_reg_286_reg_n_98,result_reg_286_reg_n_99,result_reg_286_reg_n_100,result_reg_286_reg_n_101,result_reg_286_reg_n_102,result_reg_286_reg_n_103,result_reg_286_reg_n_104,result_reg_286_reg_n_105}),
        .PATTERNBDETECT(NLW_result_reg_286_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_result_reg_286_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U3_n_35,mul_32s_32s_32_1_1_U3_n_36,mul_32s_32s_32_1_1_U3_n_37,mul_32s_32s_32_1_1_U3_n_38,mul_32s_32s_32_1_1_U3_n_39,mul_32s_32s_32_1_1_U3_n_40,mul_32s_32s_32_1_1_U3_n_41,mul_32s_32s_32_1_1_U3_n_42,mul_32s_32s_32_1_1_U3_n_43,mul_32s_32s_32_1_1_U3_n_44,mul_32s_32s_32_1_1_U3_n_45,mul_32s_32s_32_1_1_U3_n_46,mul_32s_32s_32_1_1_U3_n_47,mul_32s_32s_32_1_1_U3_n_48,mul_32s_32s_32_1_1_U3_n_49,mul_32s_32s_32_1_1_U3_n_50,mul_32s_32s_32_1_1_U3_n_51,mul_32s_32s_32_1_1_U3_n_52,mul_32s_32s_32_1_1_U3_n_53,mul_32s_32s_32_1_1_U3_n_54,mul_32s_32s_32_1_1_U3_n_55,mul_32s_32s_32_1_1_U3_n_56,mul_32s_32s_32_1_1_U3_n_57,mul_32s_32s_32_1_1_U3_n_58,mul_32s_32s_32_1_1_U3_n_59,mul_32s_32s_32_1_1_U3_n_60,mul_32s_32s_32_1_1_U3_n_61,mul_32s_32s_32_1_1_U3_n_62,mul_32s_32s_32_1_1_U3_n_63,mul_32s_32s_32_1_1_U3_n_64,mul_32s_32s_32_1_1_U3_n_65,mul_32s_32s_32_1_1_U3_n_66,mul_32s_32s_32_1_1_U3_n_67,mul_32s_32s_32_1_1_U3_n_68,mul_32s_32s_32_1_1_U3_n_69,mul_32s_32s_32_1_1_U3_n_70,mul_32s_32s_32_1_1_U3_n_71,mul_32s_32s_32_1_1_U3_n_72,mul_32s_32s_32_1_1_U3_n_73,mul_32s_32s_32_1_1_U3_n_74,mul_32s_32s_32_1_1_U3_n_75,mul_32s_32s_32_1_1_U3_n_76,mul_32s_32s_32_1_1_U3_n_77,mul_32s_32s_32_1_1_U3_n_78,mul_32s_32s_32_1_1_U3_n_79,mul_32s_32s_32_1_1_U3_n_80,mul_32s_32s_32_1_1_U3_n_81,mul_32s_32s_32_1_1_U3_n_82}),
        .PCOUT(NLW_result_reg_286_reg_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_result_reg_286_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_result_reg_286_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \result_reg_286_reg[0]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_34),
        .Q(\result_reg_286_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[10]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_24),
        .Q(\result_reg_286_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[11]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_23),
        .Q(\result_reg_286_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[12]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_22),
        .Q(\result_reg_286_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[13]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_21),
        .Q(\result_reg_286_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[14]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_20),
        .Q(\result_reg_286_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[15]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_19),
        .Q(\result_reg_286_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[16]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_18),
        .Q(\result_reg_286_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[1]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_33),
        .Q(\result_reg_286_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[2]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_32),
        .Q(\result_reg_286_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[3]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_31),
        .Q(\result_reg_286_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[4]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_30),
        .Q(\result_reg_286_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[5]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_29),
        .Q(\result_reg_286_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[6]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_28),
        .Q(\result_reg_286_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[7]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_27),
        .Q(\result_reg_286_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[8]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_26),
        .Q(\result_reg_286_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \result_reg_286_reg[9]__0 
       (.C(ap_clk),
        .CE(result_reg_2860),
        .D(mul_32s_32s_32_1_1_U3_n_25),
        .Q(\result_reg_286_reg[9]__0_n_0 ),
        .R(1'b0));
  FDSE \reuse_addr_reg_fu_48_reg[0] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[0]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[0] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[10] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[10]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[10] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[11] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[11]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[11] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[12] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[12]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[12] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[13] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[13]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[13] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[14] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[14]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[14] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[15] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[15]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[15] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[16] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[16]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[16] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[17] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[17]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[17] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[18] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[18]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[18] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[19] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[19]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[19] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[1] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[1]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[1] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[20] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[20]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[20] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[21] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[21]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[21] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[22] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[22]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[22] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[23] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[23]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[23] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[24] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[24]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[24] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[25] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[25]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[25] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[26] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[26]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[26] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[27] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[27]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[27] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[28] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[28]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[28] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[29] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[29]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[29] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[2] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[2]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[2] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[30] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[30]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[30] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[31] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[31]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[31] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDRE \reuse_addr_reg_fu_48_reg[32] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(flow_control_loop_pipe_U_n_0),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[32] ),
        .R(1'b0));
  FDSE \reuse_addr_reg_fu_48_reg[3] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[3]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[3] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[4] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[4]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[4] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[5] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[5]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[5] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[6] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[6]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[6] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[7] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[7]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[7] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[8] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[8]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[8] ),
        .S(flow_control_loop_pipe_U_n_26));
  FDSE \reuse_addr_reg_fu_48_reg[9] 
       (.C(ap_clk),
        .CE(reuse_addr_reg_fu_48),
        .D(addr_q0[9]),
        .Q(\reuse_addr_reg_fu_48_reg_n_0_[9] ),
        .S(flow_control_loop_pipe_U_n_26));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hEFFFE000)) 
    \reuse_reg_fu_52[0]_i_1 
       (.I0(\result_reg_286_reg[0]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[0]),
        .O(ap_sig_allocacmp_reuse_reg_load[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[10]_i_1 
       (.I0(\result_reg_286_reg[10]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[10]),
        .O(ap_sig_allocacmp_reuse_reg_load[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[11]_i_1 
       (.I0(\result_reg_286_reg[11]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[11]),
        .O(ap_sig_allocacmp_reuse_reg_load[11]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[12]_i_1 
       (.I0(\result_reg_286_reg[12]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[12]),
        .O(ap_sig_allocacmp_reuse_reg_load[12]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[13]_i_1 
       (.I0(\result_reg_286_reg[13]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[13]),
        .O(ap_sig_allocacmp_reuse_reg_load[13]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[14]_i_1 
       (.I0(\result_reg_286_reg[14]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[14]),
        .O(ap_sig_allocacmp_reuse_reg_load[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[15]_i_1 
       (.I0(\result_reg_286_reg[15]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[15]),
        .O(ap_sig_allocacmp_reuse_reg_load[15]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[1]_i_1 
       (.I0(\result_reg_286_reg[1]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[1]),
        .O(ap_sig_allocacmp_reuse_reg_load[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[2]_i_1 
       (.I0(\result_reg_286_reg[2]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[2]),
        .O(ap_sig_allocacmp_reuse_reg_load[2]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[3]_i_1 
       (.I0(\result_reg_286_reg[3]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[3]),
        .O(ap_sig_allocacmp_reuse_reg_load[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[4]_i_1 
       (.I0(\result_reg_286_reg[4]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[4]),
        .O(ap_sig_allocacmp_reuse_reg_load[4]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[5]_i_1 
       (.I0(\result_reg_286_reg[5]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[5]),
        .O(ap_sig_allocacmp_reuse_reg_load[5]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[6]_i_1 
       (.I0(\result_reg_286_reg[6]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[6]),
        .O(ap_sig_allocacmp_reuse_reg_load[6]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[7]_i_1 
       (.I0(\result_reg_286_reg[7]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[7]),
        .O(ap_sig_allocacmp_reuse_reg_load[7]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[8]_i_1 
       (.I0(\result_reg_286_reg[8]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[8]),
        .O(ap_sig_allocacmp_reuse_reg_load[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[9]_i_1 
       (.I0(\result_reg_286_reg[9]__0_n_0 ),
        .I1(\icmp_ln10_reg_261_reg_n_0_[0] ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(reuse_reg_fu_52[9]),
        .O(ap_sig_allocacmp_reuse_reg_load[9]));
  FDRE \reuse_reg_fu_52_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[0]),
        .Q(reuse_reg_fu_52[0]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[10] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[10]),
        .Q(reuse_reg_fu_52[10]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[11] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[11]),
        .Q(reuse_reg_fu_52[11]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[12] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[12]),
        .Q(reuse_reg_fu_52[12]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[13] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[13]),
        .Q(reuse_reg_fu_52[13]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[14] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[14]),
        .Q(reuse_reg_fu_52[14]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[15] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[15]),
        .Q(reuse_reg_fu_52[15]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[16] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[16]),
        .Q(reuse_reg_fu_52[16]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[17] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[17]),
        .Q(reuse_reg_fu_52[17]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[18] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[18]),
        .Q(reuse_reg_fu_52[18]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[19] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[19]),
        .Q(reuse_reg_fu_52[19]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[1]),
        .Q(reuse_reg_fu_52[1]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[20] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[20]),
        .Q(reuse_reg_fu_52[20]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[21] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[21]),
        .Q(reuse_reg_fu_52[21]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[22] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[22]),
        .Q(reuse_reg_fu_52[22]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[23] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[23]),
        .Q(reuse_reg_fu_52[23]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[24] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[24]),
        .Q(reuse_reg_fu_52[24]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[25] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[25]),
        .Q(reuse_reg_fu_52[25]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[26] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[26]),
        .Q(reuse_reg_fu_52[26]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[27] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[27]),
        .Q(reuse_reg_fu_52[27]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[28] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[28]),
        .Q(reuse_reg_fu_52[28]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[29] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[29]),
        .Q(reuse_reg_fu_52[29]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[2]),
        .Q(reuse_reg_fu_52[2]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[30] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[30]),
        .Q(reuse_reg_fu_52[30]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[31] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[31]),
        .Q(reuse_reg_fu_52[31]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[3]),
        .Q(reuse_reg_fu_52[3]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[4]),
        .Q(reuse_reg_fu_52[4]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[5]),
        .Q(reuse_reg_fu_52[5]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[6]),
        .Q(reuse_reg_fu_52[6]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[7]),
        .Q(reuse_reg_fu_52[7]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[8] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[8]),
        .Q(reuse_reg_fu_52[8]),
        .R(ap_sig_allocacmp_i_11));
  FDRE \reuse_reg_fu_52_reg[9] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_sig_allocacmp_reuse_reg_load[9]),
        .Q(reuse_reg_fu_52[9]),
        .R(ap_sig_allocacmp_i_11));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_flow_control_loop_pipe
   (ap_loop_init_reg_0,
    reuse_addr_reg_fu_48,
    ap_enable_reg_pp0_iter0,
    E,
    D,
    ap_sig_allocacmp_i_11,
    addr_address0,
    \ap_CS_fsm_reg[0] ,
    ap_start_0,
    ap_clk,
    Q,
    \reuse_addr_reg_fu_48_reg[32] ,
    ap_loop_init_reg_1,
    ap_rst,
    ap_enable_reg_pp0_iter0_reg,
    ap_start,
    \i_fu_60_reg[9] ,
    \i_fu_60_reg[0] ,
    \i_fu_60_reg[0]_0 );
  output ap_loop_init_reg_0;
  output reuse_addr_reg_fu_48;
  output ap_enable_reg_pp0_iter0;
  output [0:0]E;
  output [9:0]D;
  output ap_sig_allocacmp_i_11;
  output [9:0]addr_address0;
  output \ap_CS_fsm_reg[0] ;
  output ap_start_0;
  input ap_clk;
  input [3:0]Q;
  input \reuse_addr_reg_fu_48_reg[32] ;
  input ap_loop_init_reg_1;
  input ap_rst;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_start;
  input [9:0]\i_fu_60_reg[9] ;
  input \i_fu_60_reg[0] ;
  input \i_fu_60_reg[0]_0 ;

  wire [9:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire [9:0]addr_address0;
  wire \ap_CS_fsm_reg[0] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_loop_init;
  wire ap_loop_init_i_1_n_0;
  wire ap_loop_init_reg_0;
  wire ap_loop_init_reg_1;
  wire ap_rst;
  wire ap_sig_allocacmp_i_11;
  wire ap_start;
  wire ap_start_0;
  wire \i_fu_60[7]_i_2_n_0 ;
  wire \i_fu_60[9]_i_4_n_0 ;
  wire \i_fu_60[9]_i_7_n_0 ;
  wire \i_fu_60_reg[0] ;
  wire \i_fu_60_reg[0]_0 ;
  wire [9:0]\i_fu_60_reg[9] ;
  wire icmp_ln6_fu_108_p2;
  wire reuse_addr_reg_fu_48;
  wire \reuse_addr_reg_fu_48_reg[32] ;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[0]_INST_0 
       (.I0(\i_fu_60_reg[9] [0]),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .I3(ap_start),
        .O(addr_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[1]_INST_0 
       (.I0(\i_fu_60_reg[9] [1]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[2]_INST_0 
       (.I0(\i_fu_60_reg[9] [2]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[3]_INST_0 
       (.I0(\i_fu_60_reg[9] [3]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[4]_INST_0 
       (.I0(\i_fu_60_reg[9] [4]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[5]_INST_0 
       (.I0(\i_fu_60_reg[9] [5]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[6]_INST_0 
       (.I0(\i_fu_60_reg[9] [6]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[7]_INST_0 
       (.I0(\i_fu_60_reg[9] [7]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[8]_INST_0 
       (.I0(\i_fu_60_reg[9] [8]),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .I3(ap_start),
        .O(addr_address0[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \addr_address0[9]_INST_0 
       (.I0(\i_fu_60_reg[9] [9]),
        .I1(ap_start),
        .I2(ap_loop_init),
        .I3(Q[0]),
        .O(addr_address0[9]));
  LUT6 #(
    .INIT(64'hF8FFFFFFF8F8F0F0)) 
    ap_loop_init_i_1
       (.I0(Q[2]),
        .I1(ap_loop_init_reg_1),
        .I2(ap_rst),
        .I3(Q[3]),
        .I4(ap_enable_reg_pp0_iter0),
        .I5(ap_loop_init),
        .O(ap_loop_init_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hCA)) 
    ap_loop_init_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(ap_start),
        .I2(Q[0]),
        .O(ap_enable_reg_pp0_iter0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_i_1_n_0),
        .Q(ap_loop_init),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \i_fu_60[0]_i_1 
       (.I0(ap_loop_init),
        .I1(\i_fu_60_reg[9] [0]),
        .I2(icmp_ln6_fu_108_p2),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \i_fu_60[1]_i_1 
       (.I0(\i_fu_60_reg[9] [0]),
        .I1(\i_fu_60_reg[9] [1]),
        .I2(ap_loop_init),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \i_fu_60[2]_i_1 
       (.I0(\i_fu_60_reg[9] [0]),
        .I1(\i_fu_60_reg[9] [1]),
        .I2(\i_fu_60_reg[9] [2]),
        .I3(ap_loop_init),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000013332000)) 
    \i_fu_60[3]_i_1 
       (.I0(\i_fu_60_reg[9] [0]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_60_reg[9] [1]),
        .I3(\i_fu_60_reg[9] [2]),
        .I4(\i_fu_60_reg[9] [3]),
        .I5(icmp_ln6_fu_108_p2),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h060A0A0A0A0A0A0A)) 
    \i_fu_60[4]_i_1 
       (.I0(\i_fu_60_reg[9] [4]),
        .I1(\i_fu_60_reg[9] [0]),
        .I2(ap_sig_allocacmp_i_11),
        .I3(\i_fu_60_reg[9] [1]),
        .I4(\i_fu_60_reg[9] [2]),
        .I5(\i_fu_60_reg[9] [3]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0059)) 
    \i_fu_60[5]_i_1 
       (.I0(\i_fu_60[7]_i_2_n_0 ),
        .I1(\i_fu_60_reg[9] [5]),
        .I2(ap_loop_init),
        .I3(icmp_ln6_fu_108_p2),
        .O(D[5]));
  LUT5 #(
    .INIT(32'h000B0004)) 
    \i_fu_60[6]_i_1 
       (.I0(\i_fu_60[7]_i_2_n_0 ),
        .I1(\i_fu_60_reg[9] [5]),
        .I2(ap_sig_allocacmp_i_11),
        .I3(icmp_ln6_fu_108_p2),
        .I4(\i_fu_60_reg[9] [6]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h0000000051550400)) 
    \i_fu_60[7]_i_1 
       (.I0(ap_sig_allocacmp_i_11),
        .I1(\i_fu_60_reg[9] [5]),
        .I2(\i_fu_60[7]_i_2_n_0 ),
        .I3(\i_fu_60_reg[9] [6]),
        .I4(\i_fu_60_reg[9] [7]),
        .I5(icmp_ln6_fu_108_p2),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hDFFFFFFFFFFFFFFF)) 
    \i_fu_60[7]_i_2 
       (.I0(\i_fu_60_reg[9] [0]),
        .I1(ap_sig_allocacmp_i_11),
        .I2(\i_fu_60_reg[9] [1]),
        .I3(\i_fu_60_reg[9] [2]),
        .I4(\i_fu_60_reg[9] [3]),
        .I5(\i_fu_60_reg[9] [4]),
        .O(\i_fu_60[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000B04)) 
    \i_fu_60[8]_i_1 
       (.I0(\i_fu_60[9]_i_4_n_0 ),
        .I1(\i_fu_60_reg[9] [7]),
        .I2(ap_sig_allocacmp_i_11),
        .I3(\i_fu_60_reg[9] [8]),
        .I4(icmp_ln6_fu_108_p2),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \i_fu_60[9]_i_1 
       (.I0(icmp_ln6_fu_108_p2),
        .I1(ap_loop_init),
        .I2(Q[0]),
        .I3(ap_start),
        .O(E));
  LUT6 #(
    .INIT(64'h000000000D0F0200)) 
    \i_fu_60[9]_i_2 
       (.I0(\i_fu_60_reg[9] [7]),
        .I1(\i_fu_60[9]_i_4_n_0 ),
        .I2(ap_sig_allocacmp_i_11),
        .I3(\i_fu_60_reg[9] [8]),
        .I4(\i_fu_60_reg[9] [9]),
        .I5(icmp_ln6_fu_108_p2),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \i_fu_60[9]_i_3 
       (.I0(\i_fu_60_reg[9] [5]),
        .I1(\i_fu_60_reg[9] [1]),
        .I2(\i_fu_60_reg[9] [0]),
        .I3(ap_sig_allocacmp_i_11),
        .I4(\i_fu_60_reg[0] ),
        .I5(\i_fu_60_reg[0]_0 ),
        .O(icmp_ln6_fu_108_p2));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \i_fu_60[9]_i_4 
       (.I0(ap_sig_allocacmp_i_11),
        .I1(\i_fu_60_reg[9] [5]),
        .I2(\i_fu_60[9]_i_7_n_0 ),
        .I3(\i_fu_60_reg[9] [3]),
        .I4(\i_fu_60_reg[9] [4]),
        .I5(\i_fu_60_reg[9] [6]),
        .O(\i_fu_60[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD555FFFFFFFFFFFF)) 
    \i_fu_60[9]_i_7 
       (.I0(\i_fu_60_reg[9] [0]),
        .I1(Q[0]),
        .I2(ap_loop_init),
        .I3(ap_start),
        .I4(\i_fu_60_reg[9] [1]),
        .I5(\i_fu_60_reg[9] [2]),
        .O(\i_fu_60[9]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \icmp_ln6_reg_234[0]_i_1 
       (.I0(icmp_ln6_fu_108_p2),
        .I1(Q[0]),
        .I2(ap_loop_init_reg_1),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reuse_addr_reg_fu_48[31]_i_1 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(Q[0]),
        .O(ap_start_0));
  LUT6 #(
    .INIT(64'hF222F02002020000)) 
    \reuse_addr_reg_fu_48[31]_i_2 
       (.I0(Q[1]),
        .I1(ap_loop_init_reg_1),
        .I2(Q[0]),
        .I3(ap_loop_init),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(ap_start),
        .O(reuse_addr_reg_fu_48));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \reuse_addr_reg_fu_48[32]_i_1 
       (.I0(ap_loop_init),
        .I1(Q[0]),
        .I2(reuse_addr_reg_fu_48),
        .I3(\reuse_addr_reg_fu_48_reg[32] ),
        .O(ap_loop_init_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \reuse_reg_fu_52[31]_i_1 
       (.I0(ap_start),
        .I1(ap_loop_init),
        .I2(Q[0]),
        .O(ap_sig_allocacmp_i_11));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1
   (CEA2,
    E,
    A,
    D,
    PCOUT,
    \ap_CS_fsm_reg[2] ,
    add_ln13_fu_169_p2,
    ap_clk,
    beta_fu_152_p3,
    P,
    Q,
    A_q0,
    DSP_A_B_DATA_INST,
    DSP_A_B_DATA_INST_0,
    \mul_ln13_reg_266_reg[0]__0 ,
    addr_cmp_reg_248,
    \mul_ln13_reg_266_reg[0]__0_0 ,
    ap_enable_reg_pp0_iter1,
    \mul_ln13_reg_266_reg[0]__0_1 ,
    CO);
  output CEA2;
  output [0:0]E;
  output [15:0]A;
  output [16:0]D;
  output [47:0]PCOUT;
  output \ap_CS_fsm_reg[2] ;
  output [22:0]add_ln13_fu_169_p2;
  input ap_clk;
  input [15:0]beta_fu_152_p3;
  input [14:0]P;
  input [7:0]Q;
  input [15:0]A_q0;
  input [15:0]DSP_A_B_DATA_INST;
  input [15:0]DSP_A_B_DATA_INST_0;
  input \mul_ln13_reg_266_reg[0]__0 ;
  input addr_cmp_reg_248;
  input [1:0]\mul_ln13_reg_266_reg[0]__0_0 ;
  input ap_enable_reg_pp0_iter1;
  input \mul_ln13_reg_266_reg[0]__0_1 ;
  input [0:0]CO;

  wire [15:0]A;
  wire [15:0]A_q0;
  wire CEA2;
  wire [0:0]CO;
  wire [16:0]D;
  wire [15:0]DSP_A_B_DATA_INST;
  wire [15:0]DSP_A_B_DATA_INST_0;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [7:0]Q;
  wire [22:0]add_ln13_fu_169_p2;
  wire addr_cmp_reg_248;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire [15:0]beta_fu_152_p3;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout_carry__0_i_1__0_n_0;
  wire dout_carry__0_i_2__0_n_0;
  wire dout_carry__0_i_3__0_n_0;
  wire dout_carry__0_i_4__0_n_0;
  wire dout_carry__0_i_5__0_n_0;
  wire dout_carry__0_i_6__0_n_0;
  wire dout_carry__0_i_7__0_n_0;
  wire dout_carry__0_i_8__0_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__0_n_0;
  wire dout_carry_i_2__0_n_0;
  wire dout_carry_i_3__0_n_0;
  wire dout_carry_i_4__0_n_0;
  wire dout_carry_i_5__0_n_0;
  wire dout_carry_i_6__0_n_0;
  wire dout_carry_i_7__0_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_i_3__0_n_0;
  wire dout_i_3__0_n_1;
  wire dout_i_3__0_n_2;
  wire dout_i_3__0_n_3;
  wire dout_i_3__0_n_4;
  wire dout_i_3__0_n_5;
  wire dout_i_3__0_n_6;
  wire dout_i_3__0_n_7;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire mul_ln13_1_reg_276_reg_i_1_n_2;
  wire mul_ln13_1_reg_276_reg_i_1_n_3;
  wire mul_ln13_1_reg_276_reg_i_1_n_4;
  wire mul_ln13_1_reg_276_reg_i_1_n_5;
  wire mul_ln13_1_reg_276_reg_i_1_n_6;
  wire mul_ln13_1_reg_276_reg_i_1_n_7;
  wire mul_ln13_1_reg_276_reg_i_2_n_0;
  wire mul_ln13_1_reg_276_reg_i_2_n_1;
  wire mul_ln13_1_reg_276_reg_i_2_n_2;
  wire mul_ln13_1_reg_276_reg_i_2_n_3;
  wire mul_ln13_1_reg_276_reg_i_2_n_4;
  wire mul_ln13_1_reg_276_reg_i_2_n_5;
  wire mul_ln13_1_reg_276_reg_i_2_n_6;
  wire mul_ln13_1_reg_276_reg_i_2_n_7;
  wire \mul_ln13_reg_266_reg[0]__0 ;
  wire [1:0]\mul_ln13_reg_266_reg[0]__0_0 ;
  wire \mul_ln13_reg_266_reg[0]__0_1 ;
  wire [31:16]mul_ln13_reg_266_reg__1;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_mul_ln13_1_reg_276_reg_i_1_CO_UNCONNECTED;
  wire [7:7]NLW_mul_ln13_1_reg_276_reg_i_1_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    A_we0_INST_0
       (.I0(\mul_ln13_reg_266_reg[0]__0_0 [0]),
        .I1(ap_enable_reg_pp0_iter1),
        .O(\ap_CS_fsm_reg[2] ));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,beta_fu_152_p3[0],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({beta_fu_152_p3[15],beta_fu_152_p3[15],beta_fu_152_p3[15],beta_fu_152_p3[15:1]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,beta_fu_152_p3[0],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,beta_fu_152_p3[0],A}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(mul_ln13_reg_266_reg__1[23:16]),
        .S({dout_carry_i_1__0_n_0,dout_carry_i_2__0_n_0,dout_carry_i_3__0_n_0,dout_carry_i_4__0_n_0,dout_carry_i_5__0_n_0,dout_carry_i_6__0_n_0,dout_carry_i_7__0_n_0,Q[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln13_reg_266_reg__1[31:24]),
        .S({dout_carry__0_i_1__0_n_0,dout_carry__0_i_2__0_n_0,dout_carry__0_i_3__0_n_0,dout_carry__0_i_4__0_n_0,dout_carry__0_i_5__0_n_0,dout_carry__0_i_6__0_n_0,dout_carry__0_i_7__0_n_0,dout_carry__0_i_8__0_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__0
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__0
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__0
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__0
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__0
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__0
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__0
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__0
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__0
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__0
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__0
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__0
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__0
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__0
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__0
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dout_i_1
       (.I0(\mul_ln13_reg_266_reg[0]__0_0 [0]),
        .I1(\mul_ln13_reg_266_reg[0]__0_1 ),
        .O(CEA2));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_19
       (.I0(A_q0[15]),
        .I1(DSP_A_B_DATA_INST[15]),
        .I2(DSP_A_B_DATA_INST_0[15]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[15]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_20
       (.I0(A_q0[14]),
        .I1(DSP_A_B_DATA_INST[14]),
        .I2(DSP_A_B_DATA_INST_0[14]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[14]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_21
       (.I0(A_q0[13]),
        .I1(DSP_A_B_DATA_INST[13]),
        .I2(DSP_A_B_DATA_INST_0[13]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[13]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_22
       (.I0(A_q0[12]),
        .I1(DSP_A_B_DATA_INST[12]),
        .I2(DSP_A_B_DATA_INST_0[12]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[12]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_23
       (.I0(A_q0[11]),
        .I1(DSP_A_B_DATA_INST[11]),
        .I2(DSP_A_B_DATA_INST_0[11]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[11]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_24
       (.I0(A_q0[10]),
        .I1(DSP_A_B_DATA_INST[10]),
        .I2(DSP_A_B_DATA_INST_0[10]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[10]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_25
       (.I0(A_q0[9]),
        .I1(DSP_A_B_DATA_INST[9]),
        .I2(DSP_A_B_DATA_INST_0[9]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[9]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_26
       (.I0(A_q0[8]),
        .I1(DSP_A_B_DATA_INST[8]),
        .I2(DSP_A_B_DATA_INST_0[8]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[8]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_27
       (.I0(A_q0[7]),
        .I1(DSP_A_B_DATA_INST[7]),
        .I2(DSP_A_B_DATA_INST_0[7]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[7]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_28
       (.I0(A_q0[6]),
        .I1(DSP_A_B_DATA_INST[6]),
        .I2(DSP_A_B_DATA_INST_0[6]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[6]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_29
       (.I0(A_q0[5]),
        .I1(DSP_A_B_DATA_INST[5]),
        .I2(DSP_A_B_DATA_INST_0[5]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    dout_i_2__1
       (.I0(\mul_ln13_reg_266_reg[0]__0_1 ),
        .I1(\mul_ln13_reg_266_reg[0]__0_0 [1]),
        .I2(\mul_ln13_reg_266_reg[0]__0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_30
       (.I0(A_q0[4]),
        .I1(DSP_A_B_DATA_INST[4]),
        .I2(DSP_A_B_DATA_INST_0[4]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[4]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_31
       (.I0(A_q0[3]),
        .I1(DSP_A_B_DATA_INST[3]),
        .I2(DSP_A_B_DATA_INST_0[3]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[3]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_32
       (.I0(A_q0[2]),
        .I1(DSP_A_B_DATA_INST[2]),
        .I2(DSP_A_B_DATA_INST_0[2]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[2]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_33
       (.I0(A_q0[1]),
        .I1(DSP_A_B_DATA_INST[1]),
        .I2(DSP_A_B_DATA_INST_0[1]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hFFF0CCCCAAAAAAAA)) 
    dout_i_34
       (.I0(A_q0[0]),
        .I1(DSP_A_B_DATA_INST[0]),
        .I2(DSP_A_B_DATA_INST_0[0]),
        .I3(\mul_ln13_reg_266_reg[0]__0 ),
        .I4(\ap_CS_fsm_reg[2] ),
        .I5(addr_cmp_reg_248),
        .O(A[0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_i_3__0
       (.CI(CO),
        .CI_TOP(1'b0),
        .CO({dout_i_3__0_n_0,dout_i_3__0_n_1,dout_i_3__0_n_2,dout_i_3__0_n_3,dout_i_3__0_n_4,dout_i_3__0_n_5,dout_i_3__0_n_6,dout_i_3__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln13_fu_169_p2[7:0]),
        .S({mul_ln13_reg_266_reg__1[16],Q[6:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 mul_ln13_1_reg_276_reg_i_1
       (.CI(mul_ln13_1_reg_276_reg_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_mul_ln13_1_reg_276_reg_i_1_CO_UNCONNECTED[7:6],mul_ln13_1_reg_276_reg_i_1_n_2,mul_ln13_1_reg_276_reg_i_1_n_3,mul_ln13_1_reg_276_reg_i_1_n_4,mul_ln13_1_reg_276_reg_i_1_n_5,mul_ln13_1_reg_276_reg_i_1_n_6,mul_ln13_1_reg_276_reg_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_mul_ln13_1_reg_276_reg_i_1_O_UNCONNECTED[7],add_ln13_fu_169_p2[22:16]}),
        .S({1'b0,mul_ln13_reg_266_reg__1[31:25]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 mul_ln13_1_reg_276_reg_i_2
       (.CI(dout_i_3__0_n_0),
        .CI_TOP(1'b0),
        .CO({mul_ln13_1_reg_276_reg_i_2_n_0,mul_ln13_1_reg_276_reg_i_2_n_1,mul_ln13_1_reg_276_reg_i_2_n_2,mul_ln13_1_reg_276_reg_i_2_n_3,mul_ln13_1_reg_276_reg_i_2_n_4,mul_ln13_1_reg_276_reg_i_2_n_5,mul_ln13_1_reg_276_reg_i_2_n_6,mul_ln13_1_reg_276_reg_i_2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln13_fu_169_p2[15:8]),
        .S(mul_ln13_reg_266_reg__1[24:17]));
endmodule

(* ORIG_REF_NAME = "getTanh_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_0
   (CEB2,
    E,
    D,
    PCOUT,
    CO,
    add_ln13_1_fu_178_p2,
    CEA2,
    ap_clk,
    beta_fu_152_p3,
    DSP_ALU_INST,
    P,
    Q,
    \mul_ln13_1_reg_276_reg[0]__0 ,
    \mul_ln13_1_reg_276_reg[0]__0_0 ,
    \mul_ln13_1_reg_276_reg[0]__0_1 ,
    DSP_A_B_DATA_INST,
    DSP_A_B_DATA_INST_0);
  output CEB2;
  output [0:0]E;
  output [16:0]D;
  output [47:0]PCOUT;
  output [0:0]CO;
  output [22:0]add_ln13_1_fu_178_p2;
  input CEA2;
  input ap_clk;
  input [31:0]beta_fu_152_p3;
  input [7:0]DSP_ALU_INST;
  input [14:0]P;
  input [7:0]Q;
  input \mul_ln13_1_reg_276_reg[0]__0 ;
  input [1:0]\mul_ln13_1_reg_276_reg[0]__0_0 ;
  input \mul_ln13_1_reg_276_reg[0]__0_1 ;
  input [8:0]DSP_A_B_DATA_INST;
  input [0:0]DSP_A_B_DATA_INST_0;

  wire CEA2;
  wire CEB2;
  wire [0:0]CO;
  wire [16:0]D;
  wire [7:0]DSP_ALU_INST;
  wire [8:0]DSP_A_B_DATA_INST;
  wire [0:0]DSP_A_B_DATA_INST_0;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [7:0]Q;
  wire [22:0]add_ln13_1_fu_178_p2;
  wire [8:0]add_ln13_fu_169_p2;
  wire ap_clk;
  wire [31:0]beta_fu_152_p3;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout_carry__0_i_1__1_n_0;
  wire dout_carry__0_i_2__1_n_0;
  wire dout_carry__0_i_3__1_n_0;
  wire dout_carry__0_i_4__1_n_0;
  wire dout_carry__0_i_5__1_n_0;
  wire dout_carry__0_i_6__1_n_0;
  wire dout_carry__0_i_7__1_n_0;
  wire dout_carry__0_i_8__1_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__1_n_0;
  wire dout_carry_i_2__1_n_0;
  wire dout_carry_i_3__1_n_0;
  wire dout_carry_i_4__1_n_0;
  wire dout_carry_i_5__1_n_0;
  wire dout_carry_i_6__1_n_0;
  wire dout_carry_i_7__1_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_i_3__1_n_0;
  wire dout_i_3__1_n_1;
  wire dout_i_3__1_n_2;
  wire dout_i_3__1_n_3;
  wire dout_i_3__1_n_4;
  wire dout_i_3__1_n_5;
  wire dout_i_3__1_n_6;
  wire dout_i_3__1_n_7;
  wire dout_i_4__0_n_1;
  wire dout_i_4__0_n_2;
  wire dout_i_4__0_n_3;
  wire dout_i_4__0_n_4;
  wire dout_i_4__0_n_5;
  wire dout_i_4__0_n_6;
  wire dout_i_4__0_n_7;
  wire dout_i_6__0_n_0;
  wire dout_i_7__0_n_0;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire \mul_ln13_1_reg_276_reg[0]__0 ;
  wire [1:0]\mul_ln13_1_reg_276_reg[0]__0_0 ;
  wire \mul_ln13_1_reg_276_reg[0]__0_1 ;
  wire [31:16]mul_ln13_1_reg_276_reg__1;
  wire result_reg_286_reg_i_1_n_2;
  wire result_reg_286_reg_i_1_n_3;
  wire result_reg_286_reg_i_1_n_4;
  wire result_reg_286_reg_i_1_n_5;
  wire result_reg_286_reg_i_1_n_6;
  wire result_reg_286_reg_i_1_n_7;
  wire result_reg_286_reg_i_2_n_0;
  wire result_reg_286_reg_i_2_n_1;
  wire result_reg_286_reg_i_2_n_2;
  wire result_reg_286_reg_i_2_n_3;
  wire result_reg_286_reg_i_2_n_4;
  wire result_reg_286_reg_i_2_n_5;
  wire result_reg_286_reg_i_2_n_6;
  wire result_reg_286_reg_i_2_n_7;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_result_reg_286_reg_i_1_CO_UNCONNECTED;
  wire [7:7]NLW_result_reg_286_reg_i_1_O_UNCONNECTED;

  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DSP_ALU_INST,add_ln13_fu_169_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({beta_fu_152_p3[31],beta_fu_152_p3[31],beta_fu_152_p3[31],beta_fu_152_p3[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEB2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,beta_fu_152_p3[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,DSP_ALU_INST,add_ln13_fu_169_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEB2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(mul_ln13_1_reg_276_reg__1[23:16]),
        .S({dout_carry_i_1__1_n_0,dout_carry_i_2__1_n_0,dout_carry_i_3__1_n_0,dout_carry_i_4__1_n_0,dout_carry_i_5__1_n_0,dout_carry_i_6__1_n_0,dout_carry_i_7__1_n_0,Q[7]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln13_1_reg_276_reg__1[31:24]),
        .S({dout_carry__0_i_1__1_n_0,dout_carry__0_i_2__1_n_0,dout_carry__0_i_3__1_n_0,dout_carry__0_i_4__1_n_0,dout_carry__0_i_5__1_n_0,dout_carry__0_i_6__1_n_0,dout_carry__0_i_7__1_n_0,dout_carry__0_i_8__1_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__1
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__1
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__1
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__1
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__1
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__1
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__1
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__1
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__1
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__1
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__1
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__1
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__1
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__1
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__1
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    dout_i_1__1
       (.I0(\mul_ln13_1_reg_276_reg[0]__0 ),
        .I1(\mul_ln13_1_reg_276_reg[0]__0_0 [0]),
        .I2(\mul_ln13_1_reg_276_reg[0]__0_1 ),
        .O(CEB2));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    dout_i_2__0
       (.I0(\mul_ln13_1_reg_276_reg[0]__0 ),
        .I1(\mul_ln13_1_reg_276_reg[0]__0_0 [1]),
        .I2(\mul_ln13_1_reg_276_reg[0]__0_1 ),
        .O(E));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_i_3__1
       (.CI(DSP_A_B_DATA_INST_0),
        .CI_TOP(1'b0),
        .CO({dout_i_3__1_n_0,dout_i_3__1_n_1,dout_i_3__1_n_2,dout_i_3__1_n_3,dout_i_3__1_n_4,dout_i_3__1_n_5,dout_i_3__1_n_6,dout_i_3__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln13_1_fu_178_p2[7:0]),
        .S({mul_ln13_1_reg_276_reg__1[16],Q[6:0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_i_4__0
       (.CI(DSP_A_B_DATA_INST[0]),
        .CI_TOP(1'b0),
        .CO({CO,dout_i_4__0_n_1,dout_i_4__0_n_2,dout_i_4__0_n_3,dout_i_4__0_n_4,dout_i_4__0_n_5,dout_i_4__0_n_6,dout_i_4__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,DSP_A_B_DATA_INST[4],1'b0,1'b0,DSP_A_B_DATA_INST[1]}),
        .O(add_ln13_fu_169_p2[8:1]),
        .S({DSP_A_B_DATA_INST[8:5],dout_i_6__0_n_0,DSP_A_B_DATA_INST[3:2],dout_i_7__0_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    dout_i_5__0
       (.I0(DSP_A_B_DATA_INST[0]),
        .O(add_ln13_fu_169_p2[0]));
  LUT1 #(
    .INIT(2'h1)) 
    dout_i_6__0
       (.I0(DSP_A_B_DATA_INST[4]),
        .O(dout_i_6__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    dout_i_7__0
       (.I0(DSP_A_B_DATA_INST[1]),
        .O(dout_i_7__0_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 result_reg_286_reg_i_1
       (.CI(result_reg_286_reg_i_2_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_result_reg_286_reg_i_1_CO_UNCONNECTED[7:6],result_reg_286_reg_i_1_n_2,result_reg_286_reg_i_1_n_3,result_reg_286_reg_i_1_n_4,result_reg_286_reg_i_1_n_5,result_reg_286_reg_i_1_n_6,result_reg_286_reg_i_1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_result_reg_286_reg_i_1_O_UNCONNECTED[7],add_ln13_1_fu_178_p2[22:16]}),
        .S({1'b0,mul_ln13_1_reg_276_reg__1[31:25]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 result_reg_286_reg_i_2
       (.CI(dout_i_3__1_n_0),
        .CI_TOP(1'b0),
        .CO({result_reg_286_reg_i_2_n_0,result_reg_286_reg_i_2_n_1,result_reg_286_reg_i_2_n_2,result_reg_286_reg_i_2_n_3,result_reg_286_reg_i_2_n_4,result_reg_286_reg_i_2_n_5,result_reg_286_reg_i_2_n_6,result_reg_286_reg_i_2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(add_ln13_1_fu_178_p2[15:8]),
        .S(mul_ln13_1_reg_276_reg__1[24:17]));
endmodule

(* ORIG_REF_NAME = "getTanh_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_getTanh_mul_32s_32s_32_1_1_1
   (CEB2,
    E,
    beta_fu_152_p3,
    D,
    PCOUT,
    \icmp_ln10_reg_261_reg[0] ,
    ap_return,
    A_d0,
    \mul_ln13_1_reg_276_reg[0]__0 ,
    \ap_CS_fsm_reg[2] ,
    CEA2,
    ap_clk,
    DSP_ALU_INST,
    A,
    P,
    Q,
    \icmp_ln10_reg_261_reg[0]_0 ,
    \icmp_ln10_reg_261_reg[0]_1 ,
    ap_enable_reg_pp0_iter1,
    \reuse_reg_fu_52_reg[31] ,
    \result_2_fu_56_reg[31] ,
    \icmp_ln10_reg_261_reg[0]_i_2_0 ,
    \icmp_ln10_reg_261_reg[0]_i_2_1 ,
    addr_cmp_reg_248,
    \icmp_ln10_reg_261_reg[0]_i_2_2 ,
    A_q0,
    DSP_A_B_DATA_INST,
    \icmp_ln10_reg_261_reg[0]_i_2_3 ,
    \icmp_ln10_reg_261_reg[0]_i_2_4 ,
    \icmp_ln10_reg_261_reg[0]_i_2_5 ,
    \icmp_ln10_reg_261_reg[0]_i_2_6 ,
    \icmp_ln10_reg_261_reg[0]_i_2_7 ,
    \icmp_ln10_reg_261_reg[0]_i_2_8 ,
    \icmp_ln10_reg_261_reg[0]_i_2_9 ,
    \icmp_ln10_reg_261_reg[0]_i_2_10 ,
    \icmp_ln10_reg_261_reg[0]_i_2_11 ,
    \icmp_ln10_reg_261_reg[0]_i_2_12 ,
    \icmp_ln10_reg_261_reg[0]_i_2_13 ,
    \icmp_ln10_reg_261_reg[0]_i_2_14 ,
    \icmp_ln10_reg_261_reg[0]_i_2_15 ,
    \icmp_ln10_reg_261_reg[0]_i_2_16 ,
    CO,
    DSP_A_B_DATA_INST_0,
    \icmp_ln10_reg_261_reg[0]_2 );
  output CEB2;
  output [0:0]E;
  output [15:0]beta_fu_152_p3;
  output [16:0]D;
  output [47:0]PCOUT;
  output [15:0]\icmp_ln10_reg_261_reg[0] ;
  output [15:0]ap_return;
  output [15:0]A_d0;
  output [0:0]\mul_ln13_1_reg_276_reg[0]__0 ;
  output \ap_CS_fsm_reg[2] ;
  input CEA2;
  input ap_clk;
  input [7:0]DSP_ALU_INST;
  input [15:0]A;
  input [14:0]P;
  input [0:0]Q;
  input \icmp_ln10_reg_261_reg[0]_0 ;
  input [2:0]\icmp_ln10_reg_261_reg[0]_1 ;
  input ap_enable_reg_pp0_iter1;
  input [15:0]\reuse_reg_fu_52_reg[31] ;
  input [15:0]\result_2_fu_56_reg[31] ;
  input \icmp_ln10_reg_261_reg[0]_i_2_0 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_1 ;
  input addr_cmp_reg_248;
  input \icmp_ln10_reg_261_reg[0]_i_2_2 ;
  input [15:0]A_q0;
  input DSP_A_B_DATA_INST;
  input \icmp_ln10_reg_261_reg[0]_i_2_3 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_4 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_5 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_6 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_7 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_8 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_9 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_10 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_11 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_12 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_13 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_14 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_15 ;
  input \icmp_ln10_reg_261_reg[0]_i_2_16 ;
  input [0:0]CO;
  input [8:0]DSP_A_B_DATA_INST_0;
  input \icmp_ln10_reg_261_reg[0]_2 ;

  wire [15:0]A;
  wire [15:0]A_d0;
  wire [15:0]A_q0;
  wire CEA2;
  wire CEB2;
  wire [0:0]CO;
  wire [16:0]D;
  wire [7:0]DSP_ALU_INST;
  wire DSP_A_B_DATA_INST;
  wire [8:0]DSP_A_B_DATA_INST_0;
  wire [0:0]E;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [8:0]add_ln13_1_fu_178_p2;
  wire addr_cmp_reg_248;
  wire \ap_CS_fsm_reg[2] ;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire [15:0]ap_return;
  wire [15:0]beta_fu_152_p3;
  wire dout__0_n_58;
  wire dout__0_n_59;
  wire dout__0_n_60;
  wire dout__0_n_61;
  wire dout__0_n_62;
  wire dout__0_n_63;
  wire dout__0_n_64;
  wire dout__0_n_65;
  wire dout__0_n_66;
  wire dout__0_n_67;
  wire dout__0_n_68;
  wire dout__0_n_69;
  wire dout__0_n_70;
  wire dout__0_n_71;
  wire dout__0_n_72;
  wire dout__0_n_73;
  wire dout__0_n_74;
  wire dout__0_n_75;
  wire dout__0_n_76;
  wire dout__0_n_77;
  wire dout__0_n_78;
  wire dout__0_n_79;
  wire dout__0_n_80;
  wire dout__0_n_81;
  wire dout__0_n_82;
  wire dout__0_n_83;
  wire dout__0_n_84;
  wire dout__0_n_85;
  wire dout__0_n_86;
  wire dout__0_n_87;
  wire dout__0_n_88;
  wire dout_carry__0_i_1_n_0;
  wire dout_carry__0_i_2_n_0;
  wire dout_carry__0_i_3_n_0;
  wire dout_carry__0_i_4_n_0;
  wire dout_carry__0_i_5_n_0;
  wire dout_carry__0_i_6_n_0;
  wire dout_carry__0_i_7_n_0;
  wire dout_carry__0_i_8_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1_n_0;
  wire dout_carry_i_2_n_0;
  wire dout_carry_i_3_n_0;
  wire dout_carry_i_4_n_0;
  wire dout_carry_i_5_n_0;
  wire dout_carry_i_6_n_0;
  wire dout_carry_i_7_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
  wire dout_i_4__1_n_1;
  wire dout_i_4__1_n_2;
  wire dout_i_4__1_n_3;
  wire dout_i_4__1_n_4;
  wire dout_i_4__1_n_5;
  wire dout_i_4__1_n_6;
  wire dout_i_4__1_n_7;
  wire dout_i_6__1_n_0;
  wire dout_n_100;
  wire dout_n_101;
  wire dout_n_102;
  wire dout_n_103;
  wire dout_n_104;
  wire dout_n_105;
  wire dout_n_106;
  wire dout_n_107;
  wire dout_n_108;
  wire dout_n_109;
  wire dout_n_110;
  wire dout_n_111;
  wire dout_n_112;
  wire dout_n_113;
  wire dout_n_114;
  wire dout_n_115;
  wire dout_n_116;
  wire dout_n_117;
  wire dout_n_118;
  wire dout_n_119;
  wire dout_n_120;
  wire dout_n_121;
  wire dout_n_122;
  wire dout_n_123;
  wire dout_n_124;
  wire dout_n_125;
  wire dout_n_126;
  wire dout_n_127;
  wire dout_n_128;
  wire dout_n_129;
  wire dout_n_130;
  wire dout_n_131;
  wire dout_n_132;
  wire dout_n_133;
  wire dout_n_134;
  wire dout_n_135;
  wire dout_n_136;
  wire dout_n_137;
  wire dout_n_138;
  wire dout_n_139;
  wire dout_n_140;
  wire dout_n_141;
  wire dout_n_142;
  wire dout_n_143;
  wire dout_n_144;
  wire dout_n_145;
  wire dout_n_146;
  wire dout_n_147;
  wire dout_n_148;
  wire dout_n_149;
  wire dout_n_150;
  wire dout_n_151;
  wire dout_n_152;
  wire dout_n_153;
  wire dout_n_58;
  wire dout_n_59;
  wire dout_n_60;
  wire dout_n_61;
  wire dout_n_62;
  wire dout_n_63;
  wire dout_n_64;
  wire dout_n_65;
  wire dout_n_66;
  wire dout_n_67;
  wire dout_n_68;
  wire dout_n_69;
  wire dout_n_70;
  wire dout_n_71;
  wire dout_n_72;
  wire dout_n_73;
  wire dout_n_74;
  wire dout_n_75;
  wire dout_n_76;
  wire dout_n_77;
  wire dout_n_78;
  wire dout_n_79;
  wire dout_n_80;
  wire dout_n_81;
  wire dout_n_82;
  wire dout_n_83;
  wire dout_n_84;
  wire dout_n_85;
  wire dout_n_86;
  wire dout_n_87;
  wire dout_n_88;
  wire dout_n_89;
  wire dout_n_90;
  wire dout_n_91;
  wire dout_n_92;
  wire dout_n_93;
  wire dout_n_94;
  wire dout_n_95;
  wire dout_n_96;
  wire dout_n_97;
  wire dout_n_98;
  wire dout_n_99;
  wire icmp_ln10_fu_159_p2;
  wire \icmp_ln10_reg_261[0]_i_10_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_11_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_12_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_13_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_14_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_15_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_16_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_17_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_18_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_19_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_4_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_5_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_6_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_7_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_8_n_0 ;
  wire \icmp_ln10_reg_261[0]_i_9_n_0 ;
  wire [15:0]\icmp_ln10_reg_261_reg[0] ;
  wire \icmp_ln10_reg_261_reg[0]_0 ;
  wire [2:0]\icmp_ln10_reg_261_reg[0]_1 ;
  wire \icmp_ln10_reg_261_reg[0]_2 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_0 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_1 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_10 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_11 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_12 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_13 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_14 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_15 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_16 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_2 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_3 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_4 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_5 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_6 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_7 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_8 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_9 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_n_1 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_n_2 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_n_3 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_n_4 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_n_5 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_n_6 ;
  wire \icmp_ln10_reg_261_reg[0]_i_2_n_7 ;
  wire [0:0]\mul_ln13_1_reg_276_reg[0]__0 ;
  wire [15:0]\result_2_fu_56_reg[31] ;
  wire [31:16]result_reg_286_reg__1;
  wire [15:0]\reuse_reg_fu_52_reg[31] ;
  wire NLW_dout_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout_OVERFLOW_UNCONNECTED;
  wire NLW_dout_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout_XOROUT_UNCONNECTED;
  wire NLW_dout__0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__0_OVERFLOW_UNCONNECTED;
  wire NLW_dout__0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__0_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__0_CARRYOUT_UNCONNECTED;
  wire [7:0]NLW_dout__0_XOROUT_UNCONNECTED;
  wire [7:7]NLW_dout_carry__0_CO_UNCONNECTED;
  wire [7:0]\NLW_icmp_ln10_reg_261_reg[0]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[16]_INST_0 
       (.I0(result_reg_286_reg__1[16]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[17]_INST_0 
       (.I0(result_reg_286_reg__1[17]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[18]_INST_0 
       (.I0(result_reg_286_reg__1[18]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[19]_INST_0 
       (.I0(result_reg_286_reg__1[19]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[20]_INST_0 
       (.I0(result_reg_286_reg__1[20]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[21]_INST_0 
       (.I0(result_reg_286_reg__1[21]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[22]_INST_0 
       (.I0(result_reg_286_reg__1[22]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[23]_INST_0 
       (.I0(result_reg_286_reg__1[23]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[24]_INST_0 
       (.I0(result_reg_286_reg__1[24]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[25]_INST_0 
       (.I0(result_reg_286_reg__1[25]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[26]_INST_0 
       (.I0(result_reg_286_reg__1[26]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[27]_INST_0 
       (.I0(result_reg_286_reg__1[27]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[28]_INST_0 
       (.I0(result_reg_286_reg__1[28]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[29]_INST_0 
       (.I0(result_reg_286_reg__1[29]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[30]_INST_0 
       (.I0(result_reg_286_reg__1[30]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A_d0[31]_INST_0 
       (.I0(result_reg_286_reg__1[31]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(A_d0[15]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[16]_INST_0 
       (.I0(result_reg_286_reg__1[16]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [0]),
        .O(ap_return[0]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[17]_INST_0 
       (.I0(result_reg_286_reg__1[17]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [1]),
        .O(ap_return[1]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[18]_INST_0 
       (.I0(result_reg_286_reg__1[18]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [2]),
        .O(ap_return[2]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[19]_INST_0 
       (.I0(result_reg_286_reg__1[19]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [3]),
        .O(ap_return[3]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[20]_INST_0 
       (.I0(result_reg_286_reg__1[20]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [4]),
        .O(ap_return[4]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[21]_INST_0 
       (.I0(result_reg_286_reg__1[21]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [5]),
        .O(ap_return[5]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[22]_INST_0 
       (.I0(result_reg_286_reg__1[22]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [6]),
        .O(ap_return[6]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[23]_INST_0 
       (.I0(result_reg_286_reg__1[23]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [7]),
        .O(ap_return[7]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[24]_INST_0 
       (.I0(result_reg_286_reg__1[24]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [8]),
        .O(ap_return[8]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[25]_INST_0 
       (.I0(result_reg_286_reg__1[25]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [9]),
        .O(ap_return[9]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[26]_INST_0 
       (.I0(result_reg_286_reg__1[26]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [10]),
        .O(ap_return[10]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[27]_INST_0 
       (.I0(result_reg_286_reg__1[27]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [11]),
        .O(ap_return[11]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[28]_INST_0 
       (.I0(result_reg_286_reg__1[28]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [12]),
        .O(ap_return[12]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[29]_INST_0 
       (.I0(result_reg_286_reg__1[29]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [13]),
        .O(ap_return[13]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[30]_INST_0 
       (.I0(result_reg_286_reg__1[30]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [14]),
        .O(ap_return[14]));
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \ap_return[31]_INST_0 
       (.I0(result_reg_286_reg__1[31]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\result_2_fu_56_reg[31] [15]),
        .O(ap_return[15]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 15x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(1),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DSP_ALU_INST,add_ln13_1_fu_178_p2}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({beta_fu_152_p3[15],beta_fu_152_p3[15],beta_fu_152_p3[15],beta_fu_152_p3[15:1]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEB2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(E),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout_OVERFLOW_UNCONNECTED),
        .P({dout_n_58,dout_n_59,dout_n_60,dout_n_61,dout_n_62,dout_n_63,dout_n_64,dout_n_65,dout_n_66,dout_n_67,dout_n_68,dout_n_69,dout_n_70,dout_n_71,dout_n_72,dout_n_73,dout_n_74,dout_n_75,dout_n_76,dout_n_77,dout_n_78,dout_n_79,dout_n_80,dout_n_81,dout_n_82,dout_n_83,dout_n_84,dout_n_85,dout_n_86,dout_n_87,dout_n_88,dout_n_89,dout_n_90,dout_n_91,dout_n_92,dout_n_93,dout_n_94,dout_n_95,dout_n_96,dout_n_97,dout_n_98,dout_n_99,dout_n_100,dout_n_101,dout_n_102,dout_n_103,dout_n_104,dout_n_105}),
        .PATTERNBDETECT(NLW_dout_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout_n_106,dout_n_107,dout_n_108,dout_n_109,dout_n_110,dout_n_111,dout_n_112,dout_n_113,dout_n_114,dout_n_115,dout_n_116,dout_n_117,dout_n_118,dout_n_119,dout_n_120,dout_n_121,dout_n_122,dout_n_123,dout_n_124,dout_n_125,dout_n_126,dout_n_127,dout_n_128,dout_n_129,dout_n_130,dout_n_131,dout_n_132,dout_n_133,dout_n_134,dout_n_135,dout_n_136,dout_n_137,dout_n_138,dout_n_139,dout_n_140,dout_n_141,dout_n_142,dout_n_143,dout_n_144,dout_n_145,dout_n_146,dout_n_147,dout_n_148,dout_n_149,dout_n_150,dout_n_151,dout_n_152,dout_n_153}),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout_XOROUT_UNCONNECTED[7:0]));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x18 4}}" *) 
  DSP48E2 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .AUTORESET_PRIORITY("RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BMULTSEL("B"),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREADDINSEL("A"),
    .PREG(0),
    .RND(48'h000000000000),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48"),
    .USE_WIDEXOR("FALSE"),
    .XORSIMD("XOR24_48_96")) 
    dout__0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,beta_fu_152_p3[0],A}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,DSP_ALU_INST,add_ln13_1_fu_178_p2}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(CEA2),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(CEB2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dout__0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__0_OVERFLOW_UNCONNECTED),
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,D}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(PCOUT),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dout__0_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__0_XOROUT_UNCONNECTED[7:0]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(result_reg_286_reg__1[23:16]),
        .S({dout_carry_i_1_n_0,dout_carry_i_2_n_0,dout_carry_i_3_n_0,dout_carry_i_4_n_0,dout_carry_i_5_n_0,dout_carry_i_6_n_0,dout_carry_i_7_n_0,Q}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(result_reg_286_reg__1[31:24]),
        .S({dout_carry__0_i_1_n_0,dout_carry__0_i_2_n_0,dout_carry__0_i_3_n_0,dout_carry__0_i_4_n_0,dout_carry__0_i_5_n_0,dout_carry__0_i_6_n_0,dout_carry__0_i_7_n_0,dout_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1
       (.I0(dout_n_91),
        .I1(P[14]),
        .O(dout_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_10
       (.I0(A_q0[8]),
        .I1(\reuse_reg_fu_52_reg[31] [8]),
        .I2(result_reg_286_reg__1[24]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[8]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_11
       (.I0(A_q0[7]),
        .I1(\reuse_reg_fu_52_reg[31] [7]),
        .I2(result_reg_286_reg__1[23]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[7]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_12
       (.I0(A_q0[6]),
        .I1(\reuse_reg_fu_52_reg[31] [6]),
        .I2(result_reg_286_reg__1[22]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[6]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_13
       (.I0(A_q0[5]),
        .I1(\reuse_reg_fu_52_reg[31] [5]),
        .I2(result_reg_286_reg__1[21]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[5]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_14
       (.I0(A_q0[4]),
        .I1(\reuse_reg_fu_52_reg[31] [4]),
        .I2(result_reg_286_reg__1[20]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[4]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_15
       (.I0(A_q0[3]),
        .I1(\reuse_reg_fu_52_reg[31] [3]),
        .I2(result_reg_286_reg__1[19]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[3]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_16
       (.I0(A_q0[2]),
        .I1(\reuse_reg_fu_52_reg[31] [2]),
        .I2(result_reg_286_reg__1[18]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[2]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_17
       (.I0(A_q0[1]),
        .I1(\reuse_reg_fu_52_reg[31] [1]),
        .I2(result_reg_286_reg__1[17]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[1]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_18
       (.I0(A_q0[0]),
        .I1(\reuse_reg_fu_52_reg[31] [0]),
        .I2(result_reg_286_reg__1[16]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[0]));
  LUT2 #(
    .INIT(4'h2)) 
    dout_i_1__0
       (.I0(\icmp_ln10_reg_261_reg[0]_1 [0]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(CEB2));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    dout_i_2
       (.I0(\icmp_ln10_reg_261_reg[0]_1 [1]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_3
       (.I0(A_q0[15]),
        .I1(\reuse_reg_fu_52_reg[31] [15]),
        .I2(result_reg_286_reg__1[31]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[15]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_4
       (.I0(A_q0[14]),
        .I1(\reuse_reg_fu_52_reg[31] [14]),
        .I2(result_reg_286_reg__1[30]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[14]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_i_4__1
       (.CI(DSP_A_B_DATA_INST_0[0]),
        .CI_TOP(1'b0),
        .CO({\mul_ln13_1_reg_276_reg[0]__0 ,dout_i_4__1_n_1,dout_i_4__1_n_2,dout_i_4__1_n_3,dout_i_4__1_n_4,dout_i_4__1_n_5,dout_i_4__1_n_6,dout_i_4__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,DSP_A_B_DATA_INST_0[1]}),
        .O(add_ln13_1_fu_178_p2[8:1]),
        .S({DSP_A_B_DATA_INST_0[8:2],dout_i_6__1_n_0}));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_5
       (.I0(A_q0[13]),
        .I1(\reuse_reg_fu_52_reg[31] [13]),
        .I2(result_reg_286_reg__1[29]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[13]));
  LUT1 #(
    .INIT(2'h1)) 
    dout_i_5__1
       (.I0(DSP_A_B_DATA_INST_0[0]),
        .O(add_ln13_1_fu_178_p2[0]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_6
       (.I0(A_q0[12]),
        .I1(\reuse_reg_fu_52_reg[31] [12]),
        .I2(result_reg_286_reg__1[28]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[12]));
  LUT1 #(
    .INIT(2'h1)) 
    dout_i_6__1
       (.I0(DSP_A_B_DATA_INST_0[1]),
        .O(dout_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_7
       (.I0(A_q0[11]),
        .I1(\reuse_reg_fu_52_reg[31] [11]),
        .I2(result_reg_286_reg__1[27]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[11]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_8
       (.I0(A_q0[10]),
        .I1(\reuse_reg_fu_52_reg[31] [10]),
        .I2(result_reg_286_reg__1[26]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[10]));
  LUT6 #(
    .INIT(64'h00F0CCCCAAAAAAAA)) 
    dout_i_9
       (.I0(A_q0[9]),
        .I1(\reuse_reg_fu_52_reg[31] [9]),
        .I2(result_reg_286_reg__1[25]),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .I4(DSP_A_B_DATA_INST),
        .I5(addr_cmp_reg_248),
        .O(beta_fu_152_p3[9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \icmp_ln10_reg_261[0]_i_1 
       (.I0(icmp_ln10_fu_159_p2),
        .I1(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I2(\icmp_ln10_reg_261_reg[0]_2 ),
        .I3(\icmp_ln10_reg_261_reg[0]_0 ),
        .O(\ap_CS_fsm_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCECCC)) 
    \icmp_ln10_reg_261[0]_i_10 
       (.I0(result_reg_286_reg__1[19]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_4 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[18]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_3 ),
        .O(\icmp_ln10_reg_261[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCECCC)) 
    \icmp_ln10_reg_261[0]_i_11 
       (.I0(result_reg_286_reg__1[17]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_2 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[16]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_0 ),
        .O(\icmp_ln10_reg_261[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000003331333)) 
    \icmp_ln10_reg_261[0]_i_12 
       (.I0(result_reg_286_reg__1[31]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_16 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[30]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_15 ),
        .O(\icmp_ln10_reg_261[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000055500001555)) 
    \icmp_ln10_reg_261[0]_i_13 
       (.I0(\icmp_ln10_reg_261_reg[0]_i_2_13 ),
        .I1(result_reg_286_reg__1[28]),
        .I2(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I3(addr_cmp_reg_248),
        .I4(\icmp_ln10_reg_261_reg[0]_i_2_14 ),
        .I5(result_reg_286_reg__1[29]),
        .O(\icmp_ln10_reg_261[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000055500001555)) 
    \icmp_ln10_reg_261[0]_i_14 
       (.I0(\icmp_ln10_reg_261_reg[0]_i_2_11 ),
        .I1(result_reg_286_reg__1[26]),
        .I2(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I3(addr_cmp_reg_248),
        .I4(\icmp_ln10_reg_261_reg[0]_i_2_12 ),
        .I5(result_reg_286_reg__1[27]),
        .O(\icmp_ln10_reg_261[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000055500001555)) 
    \icmp_ln10_reg_261[0]_i_15 
       (.I0(\icmp_ln10_reg_261_reg[0]_i_2_9 ),
        .I1(result_reg_286_reg__1[24]),
        .I2(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I3(addr_cmp_reg_248),
        .I4(\icmp_ln10_reg_261_reg[0]_i_2_10 ),
        .I5(result_reg_286_reg__1[25]),
        .O(\icmp_ln10_reg_261[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000055500001555)) 
    \icmp_ln10_reg_261[0]_i_16 
       (.I0(\icmp_ln10_reg_261_reg[0]_i_2_7 ),
        .I1(result_reg_286_reg__1[22]),
        .I2(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I3(addr_cmp_reg_248),
        .I4(\icmp_ln10_reg_261_reg[0]_i_2_8 ),
        .I5(result_reg_286_reg__1[23]),
        .O(\icmp_ln10_reg_261[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000055500001555)) 
    \icmp_ln10_reg_261[0]_i_17 
       (.I0(\icmp_ln10_reg_261_reg[0]_i_2_5 ),
        .I1(result_reg_286_reg__1[20]),
        .I2(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I3(addr_cmp_reg_248),
        .I4(\icmp_ln10_reg_261_reg[0]_i_2_6 ),
        .I5(result_reg_286_reg__1[21]),
        .O(\icmp_ln10_reg_261[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000055500001555)) 
    \icmp_ln10_reg_261[0]_i_18 
       (.I0(\icmp_ln10_reg_261_reg[0]_i_2_3 ),
        .I1(result_reg_286_reg__1[18]),
        .I2(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I3(addr_cmp_reg_248),
        .I4(\icmp_ln10_reg_261_reg[0]_i_2_4 ),
        .I5(result_reg_286_reg__1[19]),
        .O(\icmp_ln10_reg_261[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000055500001555)) 
    \icmp_ln10_reg_261[0]_i_19 
       (.I0(\icmp_ln10_reg_261_reg[0]_i_2_0 ),
        .I1(result_reg_286_reg__1[16]),
        .I2(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I3(addr_cmp_reg_248),
        .I4(\icmp_ln10_reg_261_reg[0]_i_2_2 ),
        .I5(result_reg_286_reg__1[17]),
        .O(\icmp_ln10_reg_261[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000CCCECCC)) 
    \icmp_ln10_reg_261[0]_i_4 
       (.I0(result_reg_286_reg__1[30]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_15 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[31]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_16 ),
        .O(\icmp_ln10_reg_261[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCECCC)) 
    \icmp_ln10_reg_261[0]_i_5 
       (.I0(result_reg_286_reg__1[29]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_14 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[28]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_13 ),
        .O(\icmp_ln10_reg_261[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCECCC)) 
    \icmp_ln10_reg_261[0]_i_6 
       (.I0(result_reg_286_reg__1[27]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_12 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[26]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_11 ),
        .O(\icmp_ln10_reg_261[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCECCC)) 
    \icmp_ln10_reg_261[0]_i_7 
       (.I0(result_reg_286_reg__1[25]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_10 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[24]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_9 ),
        .O(\icmp_ln10_reg_261[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCECCC)) 
    \icmp_ln10_reg_261[0]_i_8 
       (.I0(result_reg_286_reg__1[23]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_8 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[22]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_7 ),
        .O(\icmp_ln10_reg_261[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFCCCECCC)) 
    \icmp_ln10_reg_261[0]_i_9 
       (.I0(result_reg_286_reg__1[21]),
        .I1(\icmp_ln10_reg_261_reg[0]_i_2_6 ),
        .I2(addr_cmp_reg_248),
        .I3(\icmp_ln10_reg_261_reg[0]_i_2_1 ),
        .I4(result_reg_286_reg__1[20]),
        .I5(\icmp_ln10_reg_261_reg[0]_i_2_5 ),
        .O(\icmp_ln10_reg_261[0]_i_9_n_0 ));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 \icmp_ln10_reg_261_reg[0]_i_2 
       (.CI(CO),
        .CI_TOP(1'b0),
        .CO({icmp_ln10_fu_159_p2,\icmp_ln10_reg_261_reg[0]_i_2_n_1 ,\icmp_ln10_reg_261_reg[0]_i_2_n_2 ,\icmp_ln10_reg_261_reg[0]_i_2_n_3 ,\icmp_ln10_reg_261_reg[0]_i_2_n_4 ,\icmp_ln10_reg_261_reg[0]_i_2_n_5 ,\icmp_ln10_reg_261_reg[0]_i_2_n_6 ,\icmp_ln10_reg_261_reg[0]_i_2_n_7 }),
        .DI({\icmp_ln10_reg_261[0]_i_4_n_0 ,\icmp_ln10_reg_261[0]_i_5_n_0 ,\icmp_ln10_reg_261[0]_i_6_n_0 ,\icmp_ln10_reg_261[0]_i_7_n_0 ,\icmp_ln10_reg_261[0]_i_8_n_0 ,\icmp_ln10_reg_261[0]_i_9_n_0 ,\icmp_ln10_reg_261[0]_i_10_n_0 ,\icmp_ln10_reg_261[0]_i_11_n_0 }),
        .O(\NLW_icmp_ln10_reg_261_reg[0]_i_2_O_UNCONNECTED [7:0]),
        .S({\icmp_ln10_reg_261[0]_i_12_n_0 ,\icmp_ln10_reg_261[0]_i_13_n_0 ,\icmp_ln10_reg_261[0]_i_14_n_0 ,\icmp_ln10_reg_261[0]_i_15_n_0 ,\icmp_ln10_reg_261[0]_i_16_n_0 ,\icmp_ln10_reg_261[0]_i_17_n_0 ,\icmp_ln10_reg_261[0]_i_18_n_0 ,\icmp_ln10_reg_261[0]_i_19_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[16]_i_1 
       (.I0(result_reg_286_reg__1[16]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [0]),
        .O(\icmp_ln10_reg_261_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[17]_i_1 
       (.I0(result_reg_286_reg__1[17]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [1]),
        .O(\icmp_ln10_reg_261_reg[0] [1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[18]_i_1 
       (.I0(result_reg_286_reg__1[18]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [2]),
        .O(\icmp_ln10_reg_261_reg[0] [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[19]_i_1 
       (.I0(result_reg_286_reg__1[19]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [3]),
        .O(\icmp_ln10_reg_261_reg[0] [3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[20]_i_1 
       (.I0(result_reg_286_reg__1[20]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [4]),
        .O(\icmp_ln10_reg_261_reg[0] [4]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[21]_i_1 
       (.I0(result_reg_286_reg__1[21]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [5]),
        .O(\icmp_ln10_reg_261_reg[0] [5]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[22]_i_1 
       (.I0(result_reg_286_reg__1[22]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [6]),
        .O(\icmp_ln10_reg_261_reg[0] [6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[23]_i_1 
       (.I0(result_reg_286_reg__1[23]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [7]),
        .O(\icmp_ln10_reg_261_reg[0] [7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[24]_i_1 
       (.I0(result_reg_286_reg__1[24]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [8]),
        .O(\icmp_ln10_reg_261_reg[0] [8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[25]_i_1 
       (.I0(result_reg_286_reg__1[25]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [9]),
        .O(\icmp_ln10_reg_261_reg[0] [9]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[26]_i_1 
       (.I0(result_reg_286_reg__1[26]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [10]),
        .O(\icmp_ln10_reg_261_reg[0] [10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[27]_i_1 
       (.I0(result_reg_286_reg__1[27]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [11]),
        .O(\icmp_ln10_reg_261_reg[0] [11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[28]_i_1 
       (.I0(result_reg_286_reg__1[28]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [12]),
        .O(\icmp_ln10_reg_261_reg[0] [12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[29]_i_1 
       (.I0(result_reg_286_reg__1[29]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [13]),
        .O(\icmp_ln10_reg_261_reg[0] [13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[30]_i_1 
       (.I0(result_reg_286_reg__1[30]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [14]),
        .O(\icmp_ln10_reg_261_reg[0] [14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h2FFF2000)) 
    \reuse_reg_fu_52[31]_i_2 
       (.I0(result_reg_286_reg__1[31]),
        .I1(\icmp_ln10_reg_261_reg[0]_0 ),
        .I2(\icmp_ln10_reg_261_reg[0]_1 [2]),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(\reuse_reg_fu_52_reg[31] [15]),
        .O(\icmp_ln10_reg_261_reg[0] [15]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
