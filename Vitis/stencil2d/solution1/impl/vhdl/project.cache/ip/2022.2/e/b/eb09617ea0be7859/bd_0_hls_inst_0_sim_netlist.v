// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Mar 30 00:13:08 2023
// Host        : Frostspark running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck24-ubva530-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,stencil_2d,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "HLS" *) 
(* x_core_info = "stencil_2d,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (orig_ce0,
    orig_ce1,
    sol_ce0,
    sol_we0,
    filter_ce0,
    filter_ce1,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    ap_return,
    orig_address0,
    orig_q0,
    orig_address1,
    orig_q1,
    sol_address0,
    sol_d0,
    filter_address0,
    filter_q0,
    filter_address1,
    filter_q1);
  output orig_ce0;
  output orig_ce1;
  output sol_ce0;
  output sol_we0;
  output filter_ce0;
  output filter_ce1;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* x_interface_info = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* x_interface_info = "xilinx.com:signal:data:1.0 ap_return DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME ap_return, LAYERED_METADATA undef" *) output [31:0]ap_return;
  (* x_interface_info = "xilinx.com:signal:data:1.0 orig_address0 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME orig_address0, LAYERED_METADATA undef" *) output [9:0]orig_address0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 orig_q0 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME orig_q0, LAYERED_METADATA undef" *) input [31:0]orig_q0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 orig_address1 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME orig_address1, LAYERED_METADATA undef" *) output [9:0]orig_address1;
  (* x_interface_info = "xilinx.com:signal:data:1.0 orig_q1 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME orig_q1, LAYERED_METADATA undef" *) input [31:0]orig_q1;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sol_address0 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sol_address0, LAYERED_METADATA undef" *) output [9:0]sol_address0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 sol_d0 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME sol_d0, LAYERED_METADATA undef" *) output [31:0]sol_d0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 filter_address0 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME filter_address0, LAYERED_METADATA undef" *) output [3:0]filter_address0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 filter_q0 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME filter_q0, LAYERED_METADATA undef" *) input [31:0]filter_q0;
  (* x_interface_info = "xilinx.com:signal:data:1.0 filter_address1 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME filter_address1, LAYERED_METADATA undef" *) output [3:0]filter_address1;
  (* x_interface_info = "xilinx.com:signal:data:1.0 filter_q1 DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME filter_q1, LAYERED_METADATA undef" *) input [31:0]filter_q1;

  wire \<const0> ;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire [31:0]ap_return;
  wire ap_rst;
  wire ap_start;
  wire [2:0]\^filter_address0 ;
  wire [3:0]filter_address1;
  wire filter_ce0;
  wire filter_ce1;
  wire [31:0]filter_q0;
  wire [31:0]filter_q1;
  wire [9:0]orig_address0;
  wire [9:0]orig_address1;
  wire orig_ce0;
  wire orig_ce1;
  wire [31:0]orig_q0;
  wire [31:0]orig_q1;
  wire [9:0]sol_address0;
  wire sol_ce0;
  wire [31:0]sol_d0;
  wire sol_we0;
  wire [3:3]NLW_U0_filter_address0_UNCONNECTED;

  assign filter_address0[3] = \<const0> ;
  assign filter_address0[2:0] = \^filter_address0 [2:0];
  GND GND
       (.G(\<const0> ));
  (* sdx_kernel = "true" *) 
  (* sdx_kernel_synth_inst = "U0" *) 
  (* sdx_kernel_type = "hls" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d U0
       (.ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .filter_address0({NLW_U0_filter_address0_UNCONNECTED[3],\^filter_address0 }),
        .filter_address1(filter_address1),
        .filter_ce0(filter_ce0),
        .filter_ce1(filter_ce1),
        .filter_q0(filter_q0),
        .filter_q1(filter_q1),
        .orig_address0(orig_address0),
        .orig_address1(orig_address1),
        .orig_ce0(orig_ce0),
        .orig_ce1(orig_ce1),
        .orig_q0(orig_q0),
        .orig_q1(orig_q1),
        .sol_address0(sol_address0),
        .sol_ce0(sol_ce0),
        .sol_d0(sol_d0),
        .sol_we0(sol_we0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    orig_address0,
    orig_ce0,
    orig_q0,
    orig_address1,
    orig_ce1,
    orig_q1,
    sol_address0,
    sol_ce0,
    sol_we0,
    sol_d0,
    filter_address0,
    filter_ce0,
    filter_q0,
    filter_address1,
    filter_ce1,
    filter_q1,
    ap_return);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [9:0]orig_address0;
  output orig_ce0;
  input [31:0]orig_q0;
  output [9:0]orig_address1;
  output orig_ce1;
  input [31:0]orig_q1;
  output [9:0]sol_address0;
  output sol_ce0;
  output sol_we0;
  output [31:0]sol_d0;
  output [3:0]filter_address0;
  output filter_ce0;
  input [31:0]filter_q0;
  output [3:0]filter_address1;
  output filter_ce1;
  input [31:0]filter_q1;
  output [31:0]ap_return;

  wire \<const0> ;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state2;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire ap_CS_fsm_state6;
  wire ap_CS_fsm_state7;
  wire [7:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire [31:0]ap_return;
  wire ap_rst;
  wire ap_start;
  wire [2:0]\^filter_address0 ;
  wire [3:0]filter_address1;
  wire filter_ce0;
  wire filter_ce1;
  wire [31:0]filter_q0;
  wire [31:0]filter_q1;
  wire grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg_n_0;
  wire grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_n_25;
  wire [9:0]orig_address0;
  wire [9:0]orig_address1;
  wire orig_ce0;
  wire orig_ce1;
  wire [31:0]orig_q0;
  wire [31:0]orig_q1;
  wire [9:0]sol_address0;
  wire sol_ce0;
  wire [31:0]sol_d0;

  assign ap_ready = ap_done;
  assign filter_address0[3] = \<const0> ;
  assign filter_address0[2:0] = \^filter_address0 [2:0];
  assign sol_we0 = sol_ce0;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_done),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm[1]_i_2_n_0 ),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_CS_fsm_state7),
        .I4(ap_done),
        .I5(ap_CS_fsm_state6),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_CS_fsm_state3),
        .I1(ap_CS_fsm_state4),
        .I2(filter_address1[3]),
        .I3(ap_CS_fsm_state2),
        .O(\ap_CS_fsm[1]_i_2_n_0 ));
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
        .Q(ap_CS_fsm_state2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state2),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state3),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_state4),
        .Q(filter_address1[3]),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[5] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(filter_address1[3]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[6] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[6]),
        .Q(ap_CS_fsm_state7),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[7] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[7]),
        .Q(ap_done),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \filter_address0[0]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(filter_address1[3]),
        .I2(ap_CS_fsm_state3),
        .O(\^filter_address0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hF0FE)) 
    \filter_address0[1]_INST_0 
       (.I0(ap_CS_fsm_state2),
        .I1(ap_CS_fsm_state3),
        .I2(filter_address1[3]),
        .I3(ap_CS_fsm_state4),
        .O(\^filter_address0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \filter_address0[2]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(filter_address1[3]),
        .O(\^filter_address0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \filter_address1[0]_INST_0 
       (.I0(ap_CS_fsm_state3),
        .I1(filter_address1[3]),
        .I2(ap_CS_fsm_state4),
        .O(filter_address1[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \filter_address1[1]_INST_0 
       (.I0(ap_CS_fsm_state4),
        .I1(filter_address1[3]),
        .O(filter_address1[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \filter_address1[2]_INST_0 
       (.I0(filter_address1[3]),
        .I1(ap_CS_fsm_state3),
        .I2(ap_CS_fsm_state4),
        .O(filter_address1[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    filter_ce0_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .I2(ap_CS_fsm_state2),
        .I3(filter_address1[3]),
        .I4(ap_CS_fsm_state4),
        .I5(ap_CS_fsm_state3),
        .O(filter_ce0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    filter_ce1_INST_0
       (.I0(ap_CS_fsm_state2),
        .I1(filter_address1[3]),
        .I2(ap_CS_fsm_state4),
        .I3(ap_CS_fsm_state3),
        .O(filter_ce1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2 grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136
       (.D(ap_NS_fsm[7:6]),
        .E(sol_ce0),
        .Q({ap_CS_fsm_state7,ap_CS_fsm_state6,filter_address1[3],ap_CS_fsm_state4,ap_CS_fsm_state3,ap_CS_fsm_state2}),
        .\ap_CS_fsm_reg[5] (grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_n_25),
        .ap_clk(ap_clk),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .\empty_6_reg_737_reg[1]_0 (grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg_n_0),
        .filter_q0(filter_q0),
        .filter_q1(filter_q1),
        .orig_address0(orig_address0),
        .orig_address1(orig_address1),
        .orig_ce0(orig_ce0),
        .orig_ce1(orig_ce1),
        .orig_q0(orig_q0),
        .orig_q1(orig_q1),
        .sol_address0(sol_address0),
        .sol_d0(sol_d0));
  FDRE #(
    .INIT(1'b0)) 
    grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_n_25),
        .Q(grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg_n_0),
        .R(ap_rst));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_flow_control_loop_pipe_sequential_init
   (D,
    \c_fu_84_reg[0] ,
    select_ln8_fu_383_p3,
    add_ln17_3_fu_473_p2,
    indvar_flatten_fu_92,
    icmp_ln8_fu_362_p2,
    grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg,
    \ap_CS_fsm_reg[6] ,
    orig_address0,
    \r_fu_88_reg[0] ,
    orig_address1,
    c_fu_8401_out,
    \c_fu_84_reg[2] ,
    \r_fu_88_reg[3] ,
    \ap_CS_fsm_reg[0] ,
    \r_fu_88_reg[4] ,
    \r_fu_88_reg[3]_0 ,
    \r_fu_88_reg[3]_1 ,
    \r_fu_88_reg[2] ,
    \r_fu_88_reg[4]_0 ,
    \r_fu_88_reg[0]_0 ,
    \r_fu_88_reg[3]_2 ,
    \c_fu_84_reg[1] ,
    \c_fu_84_reg[1]_0 ,
    \c_fu_84_reg[1]_1 ,
    add_ln8_fu_368_p2,
    add_ln17_3_reg_7760,
    \r_fu_88_reg[0]_1 ,
    ap_rst,
    ap_clk,
    S,
    \add_ln17_3_reg_776_reg[7] ,
    \empty_6_reg_737_reg[1] ,
    Q,
    ap_done_cache_reg_0,
    \ap_CS_fsm_reg[7] ,
    ap_done_reg1,
    ap_enable_reg_pp0_iter0_reg,
    \orig_address1[9] ,
    add_ln17_3_reg_776,
    add_ln17_reg_756,
    \icmp_ln10_reg_746_reg[0] ,
    orig_address0_2_sp_1,
    \orig_address0[2]_0 ,
    orig_address0_3_sp_1,
    \orig_address0[3]_0 ,
    orig_address0_4_sp_1,
    \orig_address0[4]_0 ,
    \orig_address0[4]_1 ,
    orig_address0_5_sp_1,
    \orig_address0[5]_0 ,
    \orig_address0[5]_1 ,
    orig_address0_6_sp_1,
    \orig_address0[6]_0 ,
    \orig_address0[6]_1 ,
    orig_address0_7_sp_1,
    \orig_address0[7]_0 ,
    \orig_address0[7]_1 ,
    orig_address0_9_sp_1,
    \orig_address0[9]_0 ,
    \orig_address0[9]_1 ,
    orig_address0_8_sp_1,
    \orig_address0[8]_0 ,
    \orig_address0[8]_1 ,
    \empty_6_reg_737_reg[4] ,
    \add_ln17_reg_756_reg[9] ,
    orig_address1_8_sp_1,
    \orig_address1[9]_0 ,
    \orig_address1[9]_1 ,
    orig_address1_7_sp_1,
    orig_address1_6_sp_1,
    orig_address1_4_sp_1,
    \orig_address1[4]_0 ,
    orig_address1_5_sp_1,
    orig_address1_3_sp_1,
    orig_address1_2_sp_1,
    \indvar_flatten_fu_92_reg[9] ,
    \indvar_flatten_fu_92_reg[9]_0 ,
    \indvar_flatten_fu_92_reg[9]_1 ,
    \indvar_flatten_fu_92_reg[9]_2 ,
    \icmp_ln8_reg_742_reg[0] ,
    \icmp_ln8_reg_742_reg[0]_0 ,
    \icmp_ln8_reg_742_reg[0]_1 ,
    \indvar_flatten_fu_92_reg[3] ,
    \indvar_flatten_fu_92_reg[3]_0 ,
    \indvar_flatten_fu_92_reg[4] );
  output [9:0]D;
  output \c_fu_84_reg[0] ;
  output [2:0]select_ln8_fu_383_p3;
  output [9:0]add_ln17_3_fu_473_p2;
  output indvar_flatten_fu_92;
  output icmp_ln8_fu_362_p2;
  output grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg;
  output [1:0]\ap_CS_fsm_reg[6] ;
  output [9:0]orig_address0;
  output \r_fu_88_reg[0] ;
  output [9:0]orig_address1;
  output c_fu_8401_out;
  output \c_fu_84_reg[2] ;
  output \r_fu_88_reg[3] ;
  output \ap_CS_fsm_reg[0] ;
  output [4:0]\r_fu_88_reg[4] ;
  output \r_fu_88_reg[3]_0 ;
  output \r_fu_88_reg[3]_1 ;
  output \r_fu_88_reg[2] ;
  output \r_fu_88_reg[4]_0 ;
  output [3:0]\r_fu_88_reg[0]_0 ;
  output \r_fu_88_reg[3]_2 ;
  output \c_fu_84_reg[1] ;
  output \c_fu_84_reg[1]_0 ;
  output \c_fu_84_reg[1]_1 ;
  output [9:0]add_ln8_fu_368_p2;
  output add_ln17_3_reg_7760;
  output \r_fu_88_reg[0]_1 ;
  input ap_rst;
  input ap_clk;
  input [1:0]S;
  input [1:0]\add_ln17_3_reg_776_reg[7] ;
  input \empty_6_reg_737_reg[1] ;
  input [4:0]Q;
  input ap_done_cache_reg_0;
  input [1:0]\ap_CS_fsm_reg[7] ;
  input ap_done_reg1;
  input ap_enable_reg_pp0_iter0_reg;
  input [9:0]\orig_address1[9] ;
  input [4:0]add_ln17_3_reg_776;
  input [2:0]add_ln17_reg_756;
  input [4:0]\icmp_ln10_reg_746_reg[0] ;
  input orig_address0_2_sp_1;
  input \orig_address0[2]_0 ;
  input orig_address0_3_sp_1;
  input \orig_address0[3]_0 ;
  input orig_address0_4_sp_1;
  input \orig_address0[4]_0 ;
  input \orig_address0[4]_1 ;
  input orig_address0_5_sp_1;
  input \orig_address0[5]_0 ;
  input \orig_address0[5]_1 ;
  input orig_address0_6_sp_1;
  input \orig_address0[6]_0 ;
  input \orig_address0[6]_1 ;
  input orig_address0_7_sp_1;
  input \orig_address0[7]_0 ;
  input \orig_address0[7]_1 ;
  input orig_address0_9_sp_1;
  input \orig_address0[9]_0 ;
  input \orig_address0[9]_1 ;
  input orig_address0_8_sp_1;
  input \orig_address0[8]_0 ;
  input \orig_address0[8]_1 ;
  input [4:0]\empty_6_reg_737_reg[4] ;
  input \add_ln17_reg_756_reg[9] ;
  input orig_address1_8_sp_1;
  input \orig_address1[9]_0 ;
  input \orig_address1[9]_1 ;
  input orig_address1_7_sp_1;
  input orig_address1_6_sp_1;
  input orig_address1_4_sp_1;
  input \orig_address1[4]_0 ;
  input orig_address1_5_sp_1;
  input orig_address1_3_sp_1;
  input orig_address1_2_sp_1;
  input \indvar_flatten_fu_92_reg[9] ;
  input \indvar_flatten_fu_92_reg[9]_0 ;
  input \indvar_flatten_fu_92_reg[9]_1 ;
  input \indvar_flatten_fu_92_reg[9]_2 ;
  input \icmp_ln8_reg_742_reg[0] ;
  input \icmp_ln8_reg_742_reg[0]_0 ;
  input \icmp_ln8_reg_742_reg[0]_1 ;
  input \indvar_flatten_fu_92_reg[3] ;
  input \indvar_flatten_fu_92_reg[3]_0 ;
  input \indvar_flatten_fu_92_reg[4] ;

  wire [9:0]D;
  wire [4:0]Q;
  wire [1:0]S;
  wire [9:0]add_ln17_3_fu_473_p2;
  wire [4:0]add_ln17_3_reg_776;
  wire add_ln17_3_reg_7760;
  wire \add_ln17_3_reg_776[7]_i_7_n_0 ;
  wire \add_ln17_3_reg_776[7]_i_8_n_0 ;
  wire \add_ln17_3_reg_776[7]_i_9_n_0 ;
  wire [1:0]\add_ln17_3_reg_776_reg[7] ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_0 ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_1 ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_2 ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_3 ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_4 ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_5 ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_6 ;
  wire \add_ln17_3_reg_776_reg[7]_i_1_n_7 ;
  wire \add_ln17_3_reg_776_reg[9]_i_1_n_7 ;
  wire \add_ln17_6_reg_783[7]_i_10_n_0 ;
  wire \add_ln17_6_reg_783[7]_i_11_n_0 ;
  wire \add_ln17_6_reg_783[7]_i_12_n_0 ;
  wire \add_ln17_6_reg_783[7]_i_13_n_0 ;
  wire \add_ln17_6_reg_783[7]_i_7_n_0 ;
  wire \add_ln17_6_reg_783[7]_i_8_n_0 ;
  wire \add_ln17_6_reg_783[7]_i_9_n_0 ;
  wire \add_ln17_6_reg_783[9]_i_10_n_0 ;
  wire \add_ln17_6_reg_783[9]_i_4_n_0 ;
  wire \add_ln17_6_reg_783[9]_i_5_n_0 ;
  wire \add_ln17_6_reg_783[9]_i_6_n_0 ;
  wire \add_ln17_6_reg_783[9]_i_8_n_0 ;
  wire \add_ln17_6_reg_783[9]_i_9_n_0 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_0 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_1 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_2 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_3 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_4 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_5 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_6 ;
  wire \add_ln17_6_reg_783_reg[7]_i_1_n_7 ;
  wire \add_ln17_6_reg_783_reg[9]_i_1_n_7 ;
  wire [2:0]add_ln17_reg_756;
  wire \add_ln17_reg_756[2]_i_2_n_0 ;
  wire \add_ln17_reg_756_reg[9] ;
  wire [9:0]add_ln8_fu_368_p2;
  wire \ap_CS_fsm_reg[0] ;
  wire [1:0]\ap_CS_fsm_reg[6] ;
  wire [1:0]\ap_CS_fsm_reg[7] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_done_cache_reg_0;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_rst;
  wire c_fu_8401_out;
  wire \c_fu_84_reg[0] ;
  wire \c_fu_84_reg[1] ;
  wire \c_fu_84_reg[1]_0 ;
  wire \c_fu_84_reg[1]_1 ;
  wire \c_fu_84_reg[2] ;
  wire \empty_6_reg_737_reg[1] ;
  wire [4:0]\empty_6_reg_737_reg[4] ;
  wire grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg;
  wire [4:0]\icmp_ln10_reg_746_reg[0] ;
  wire icmp_ln8_fu_362_p2;
  wire \icmp_ln8_reg_742[0]_i_2_n_0 ;
  wire \icmp_ln8_reg_742[0]_i_3_n_0 ;
  wire \icmp_ln8_reg_742_reg[0] ;
  wire \icmp_ln8_reg_742_reg[0]_0 ;
  wire \icmp_ln8_reg_742_reg[0]_1 ;
  wire indvar_flatten_fu_92;
  wire \indvar_flatten_fu_92[5]_i_2_n_0 ;
  wire \indvar_flatten_fu_92[9]_i_3_n_0 ;
  wire \indvar_flatten_fu_92_reg[3] ;
  wire \indvar_flatten_fu_92_reg[3]_0 ;
  wire \indvar_flatten_fu_92_reg[4] ;
  wire \indvar_flatten_fu_92_reg[9] ;
  wire \indvar_flatten_fu_92_reg[9]_0 ;
  wire \indvar_flatten_fu_92_reg[9]_1 ;
  wire \indvar_flatten_fu_92_reg[9]_2 ;
  wire [9:0]orig_address0;
  wire \orig_address0[1]_INST_0_i_1_n_0 ;
  wire \orig_address0[2]_0 ;
  wire \orig_address0[2]_INST_0_i_1_n_0 ;
  wire \orig_address0[2]_INST_0_i_3_n_0 ;
  wire \orig_address0[2]_INST_0_i_4_n_0 ;
  wire \orig_address0[3]_0 ;
  wire \orig_address0[3]_INST_0_i_3_n_0 ;
  wire \orig_address0[3]_INST_0_i_5_n_0 ;
  wire \orig_address0[3]_INST_0_i_6_n_0 ;
  wire \orig_address0[4]_0 ;
  wire \orig_address0[4]_1 ;
  wire \orig_address0[4]_INST_0_i_1_n_0 ;
  wire \orig_address0[4]_INST_0_i_4_n_0 ;
  wire \orig_address0[5]_0 ;
  wire \orig_address0[5]_1 ;
  wire \orig_address0[5]_INST_0_i_2_n_0 ;
  wire \orig_address0[5]_INST_0_i_3_n_0 ;
  wire \orig_address0[5]_INST_0_i_6_n_0 ;
  wire \orig_address0[6]_0 ;
  wire \orig_address0[6]_1 ;
  wire \orig_address0[6]_INST_0_i_2_n_0 ;
  wire \orig_address0[6]_INST_0_i_3_n_0 ;
  wire \orig_address0[6]_INST_0_i_7_n_0 ;
  wire \orig_address0[6]_INST_0_i_8_n_0 ;
  wire \orig_address0[7]_0 ;
  wire \orig_address0[7]_1 ;
  wire \orig_address0[7]_INST_0_i_2_n_0 ;
  wire \orig_address0[7]_INST_0_i_3_n_0 ;
  wire \orig_address0[7]_INST_0_i_6_n_0 ;
  wire \orig_address0[7]_INST_0_i_7_n_0 ;
  wire \orig_address0[8]_0 ;
  wire \orig_address0[8]_1 ;
  wire \orig_address0[9]_0 ;
  wire \orig_address0[9]_1 ;
  wire \orig_address0[9]_INST_0_i_11_n_0 ;
  wire \orig_address0[9]_INST_0_i_12_n_0 ;
  wire \orig_address0[9]_INST_0_i_13_n_0 ;
  wire \orig_address0[9]_INST_0_i_15_n_0 ;
  wire \orig_address0[9]_INST_0_i_2_n_0 ;
  wire \orig_address0[9]_INST_0_i_3_n_0 ;
  wire \orig_address0[9]_INST_0_i_4_n_0 ;
  wire \orig_address0[9]_INST_0_i_8_n_0 ;
  wire \orig_address0[9]_INST_0_i_9_n_0 ;
  wire orig_address0_2_sn_1;
  wire orig_address0_3_sn_1;
  wire orig_address0_4_sn_1;
  wire orig_address0_5_sn_1;
  wire orig_address0_6_sn_1;
  wire orig_address0_7_sn_1;
  wire orig_address0_8_sn_1;
  wire orig_address0_9_sn_1;
  wire [9:0]orig_address1;
  wire \orig_address1[1]_INST_0_i_1_n_0 ;
  wire \orig_address1[2]_INST_0_i_1_n_0 ;
  wire \orig_address1[3]_INST_0_i_2_n_0 ;
  wire \orig_address1[3]_INST_0_i_3_n_0 ;
  wire \orig_address1[4]_0 ;
  wire \orig_address1[4]_INST_0_i_4_n_0 ;
  wire \orig_address1[4]_INST_0_i_5_n_0 ;
  wire \orig_address1[5]_INST_0_i_5_n_0 ;
  wire \orig_address1[7]_INST_0_i_2_n_0 ;
  wire [9:0]\orig_address1[9] ;
  wire \orig_address1[9]_0 ;
  wire \orig_address1[9]_1 ;
  wire \orig_address1[9]_INST_0_i_6_n_0 ;
  wire orig_address1_2_sn_1;
  wire orig_address1_3_sn_1;
  wire orig_address1_4_sn_1;
  wire orig_address1_5_sn_1;
  wire orig_address1_6_sn_1;
  wire orig_address1_7_sn_1;
  wire orig_address1_8_sn_1;
  wire \r_fu_88_reg[0] ;
  wire [3:0]\r_fu_88_reg[0]_0 ;
  wire \r_fu_88_reg[0]_1 ;
  wire \r_fu_88_reg[2] ;
  wire \r_fu_88_reg[3] ;
  wire \r_fu_88_reg[3]_0 ;
  wire \r_fu_88_reg[3]_1 ;
  wire \r_fu_88_reg[3]_2 ;
  wire [4:0]\r_fu_88_reg[4] ;
  wire \r_fu_88_reg[4]_0 ;
  wire [9:5]select_ln8_2_fu_399_p3;
  wire [9:2]select_ln8_3_fu_439_p3;
  wire [2:0]select_ln8_fu_383_p3;
  wire [0:0]\NLW_add_ln17_3_reg_776_reg[7]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_add_ln17_3_reg_776_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_add_ln17_3_reg_776_reg[9]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_add_ln17_6_reg_783_reg[9]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_add_ln17_6_reg_783_reg[9]_i_1_O_UNCONNECTED ;

  assign orig_address0_2_sn_1 = orig_address0_2_sp_1;
  assign orig_address0_3_sn_1 = orig_address0_3_sp_1;
  assign orig_address0_4_sn_1 = orig_address0_4_sp_1;
  assign orig_address0_5_sn_1 = orig_address0_5_sp_1;
  assign orig_address0_6_sn_1 = orig_address0_6_sp_1;
  assign orig_address0_7_sn_1 = orig_address0_7_sp_1;
  assign orig_address0_8_sn_1 = orig_address0_8_sp_1;
  assign orig_address0_9_sn_1 = orig_address0_9_sp_1;
  assign orig_address1_2_sn_1 = orig_address1_2_sp_1;
  assign orig_address1_3_sn_1 = orig_address1_3_sp_1;
  assign orig_address1_4_sn_1 = orig_address1_4_sp_1;
  assign orig_address1_5_sn_1 = orig_address1_5_sp_1;
  assign orig_address1_6_sn_1 = orig_address1_6_sp_1;
  assign orig_address1_7_sn_1 = orig_address1_7_sp_1;
  assign orig_address1_8_sn_1 = orig_address1_8_sp_1;
  LUT6 #(
    .INIT(64'h009AFFFF009A0000)) 
    \add_ln17_3_reg_776[7]_i_2 
       (.I0(\empty_6_reg_737_reg[4] [2]),
        .I1(\add_ln17_6_reg_783[7]_i_10_n_0 ),
        .I2(\empty_6_reg_737_reg[4] [1]),
        .I3(c_fu_8401_out),
        .I4(\c_fu_84_reg[2] ),
        .I5(\orig_address0[7]_INST_0_i_6_n_0 ),
        .O(select_ln8_2_fu_399_p3[7]));
  LUT6 #(
    .INIT(64'h0A06050A090AC5CA)) 
    \add_ln17_3_reg_776[7]_i_3 
       (.I0(\empty_6_reg_737_reg[4] [1]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [4]),
        .I4(\add_ln17_6_reg_783[9]_i_5_n_0 ),
        .I5(\c_fu_84_reg[2] ),
        .O(select_ln8_2_fu_399_p3[6]));
  LUT5 #(
    .INIT(32'hAF93003C)) 
    \add_ln17_3_reg_776[7]_i_4 
       (.I0(\add_ln17_6_reg_783[9]_i_5_n_0 ),
        .I1(\empty_6_reg_737_reg[4] [4]),
        .I2(\empty_6_reg_737_reg[4] [0]),
        .I3(c_fu_8401_out),
        .I4(\c_fu_84_reg[2] ),
        .O(select_ln8_2_fu_399_p3[5]));
  LUT5 #(
    .INIT(32'hEBBB1444)) 
    \add_ln17_3_reg_776[7]_i_7 
       (.I0(c_fu_8401_out),
        .I1(\empty_6_reg_737_reg[4] [1]),
        .I2(\c_fu_84_reg[2] ),
        .I3(\empty_6_reg_737_reg[4] [0]),
        .I4(\add_ln17_reg_756[2]_i_2_n_0 ),
        .O(\add_ln17_3_reg_776[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h007FFF807F0080FF)) 
    \add_ln17_3_reg_776[7]_i_8 
       (.I0(Q[0]),
        .I1(\empty_6_reg_737_reg[1] ),
        .I2(ap_loop_init_int),
        .I3(\icmp_ln10_reg_746_reg[0] [1]),
        .I4(\c_fu_84_reg[2] ),
        .I5(\empty_6_reg_737_reg[4] [0]),
        .O(\add_ln17_3_reg_776[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln17_3_reg_776[7]_i_9 
       (.I0(\icmp_ln10_reg_746_reg[0] [0]),
        .I1(c_fu_8401_out),
        .O(\add_ln17_3_reg_776[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h2AAA2AAA0000FFFF)) 
    \add_ln17_3_reg_776[9]_i_2 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\r_fu_88_reg[4] [1]),
        .I2(\empty_6_reg_737_reg[4] [2]),
        .I3(\empty_6_reg_737_reg[4] [3]),
        .I4(\orig_address0[9]_INST_0_i_8_n_0 ),
        .I5(\c_fu_84_reg[2] ),
        .O(select_ln8_2_fu_399_p3[9]));
  LUT3 #(
    .INIT(8'hA3)) 
    \add_ln17_3_reg_776[9]_i_3 
       (.I0(\add_ln17_6_reg_783[9]_i_10_n_0 ),
        .I1(\orig_address0[9]_INST_0_i_11_n_0 ),
        .I2(\c_fu_84_reg[2] ),
        .O(select_ln8_2_fu_399_p3[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \add_ln17_3_reg_776_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\add_ln17_3_reg_776_reg[7]_i_1_n_0 ,\add_ln17_3_reg_776_reg[7]_i_1_n_1 ,\add_ln17_3_reg_776_reg[7]_i_1_n_2 ,\add_ln17_3_reg_776_reg[7]_i_1_n_3 ,\add_ln17_3_reg_776_reg[7]_i_1_n_4 ,\add_ln17_3_reg_776_reg[7]_i_1_n_5 ,\add_ln17_3_reg_776_reg[7]_i_1_n_6 ,\add_ln17_3_reg_776_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,\c_fu_84_reg[0] ,select_ln8_fu_383_p3,1'b0}),
        .O({add_ln17_3_fu_473_p2[7:1],\NLW_add_ln17_3_reg_776_reg[7]_i_1_O_UNCONNECTED [0]}),
        .S({select_ln8_2_fu_399_p3[7:5],\add_ln17_3_reg_776_reg[7] ,\add_ln17_3_reg_776[7]_i_7_n_0 ,\add_ln17_3_reg_776[7]_i_8_n_0 ,\add_ln17_3_reg_776[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \add_ln17_3_reg_776_reg[9]_i_1 
       (.CI(\add_ln17_3_reg_776_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_add_ln17_3_reg_776_reg[9]_i_1_CO_UNCONNECTED [7:1],\add_ln17_3_reg_776_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_add_ln17_3_reg_776_reg[9]_i_1_O_UNCONNECTED [7:2],add_ln17_3_fu_473_p2[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,select_ln8_2_fu_399_p3[9:8]}));
  LUT6 #(
    .INIT(64'hF3FDFDFDFDFDFDFD)) 
    \add_ln17_6_reg_783[7]_i_10 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(\empty_6_reg_737_reg[4] [4]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .I5(\empty_6_reg_737_reg[4] [3]),
        .O(\add_ln17_6_reg_783[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF08FF95FF00FF55)) 
    \add_ln17_6_reg_783[7]_i_11 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [2]),
        .I2(\empty_6_reg_737_reg[4] [1]),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [0]),
        .I5(\empty_6_reg_737_reg[4] [3]),
        .O(\add_ln17_6_reg_783[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0095005500AA00AA)) 
    \add_ln17_6_reg_783[7]_i_12 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [3]),
        .I2(\empty_6_reg_737_reg[4] [2]),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .I5(\empty_6_reg_737_reg[4] [0]),
        .O(\add_ln17_6_reg_783[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h0C040C0C)) 
    \add_ln17_6_reg_783[7]_i_13 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .O(\add_ln17_6_reg_783[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h000000002AAA0000)) 
    \add_ln17_6_reg_783[7]_i_14 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(ap_loop_init_int),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(Q[0]),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .I5(\empty_6_reg_737_reg[4] [1]),
        .O(\r_fu_88_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hCF30C03F6F906F90)) 
    \add_ln17_6_reg_783[7]_i_2 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(\add_ln17_6_reg_783[9]_i_9_n_0 ),
        .I2(\c_fu_84_reg[2] ),
        .I3(\r_fu_88_reg[4] [2]),
        .I4(\add_ln17_6_reg_783[7]_i_10_n_0 ),
        .I5(\r_fu_88_reg[4] [1]),
        .O(select_ln8_3_fu_439_p3[7]));
  LUT6 #(
    .INIT(64'hC9C6C9C60F00F0FF)) 
    \add_ln17_6_reg_783[7]_i_3 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(\add_ln17_6_reg_783[7]_i_11_n_0 ),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\add_ln17_6_reg_783[7]_i_10_n_0 ),
        .I5(\c_fu_84_reg[2] ),
        .O(select_ln8_3_fu_439_p3[6]));
  LUT4 #(
    .INIT(16'hC355)) 
    \add_ln17_6_reg_783[7]_i_4 
       (.I0(\add_ln17_6_reg_783[7]_i_12_n_0 ),
        .I1(\add_ln17_6_reg_783[9]_i_6_n_0 ),
        .I2(\add_ln17_6_reg_783[7]_i_13_n_0 ),
        .I3(\c_fu_84_reg[2] ),
        .O(select_ln8_3_fu_439_p3[5]));
  LUT5 #(
    .INIT(32'h3A39C5C6)) 
    \add_ln17_6_reg_783[7]_i_7 
       (.I0(\empty_6_reg_737_reg[4] [1]),
        .I1(\c_fu_84_reg[2] ),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [0]),
        .I4(\add_ln17_reg_756[2]_i_2_n_0 ),
        .O(\add_ln17_6_reg_783[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCC96969696969696)) 
    \add_ln17_6_reg_783[7]_i_8 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(\c_fu_84_reg[2] ),
        .I2(\icmp_ln10_reg_746_reg[0] [1]),
        .I3(ap_loop_init_int),
        .I4(\empty_6_reg_737_reg[1] ),
        .I5(Q[0]),
        .O(\add_ln17_6_reg_783[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln17_6_reg_783[7]_i_9 
       (.I0(\icmp_ln10_reg_746_reg[0] [0]),
        .I1(c_fu_8401_out),
        .O(\add_ln17_6_reg_783[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000032AA0000AAAA)) 
    \add_ln17_6_reg_783[9]_i_10 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [4]),
        .I2(\empty_6_reg_737_reg[4] [0]),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(c_fu_8401_out),
        .I5(\empty_6_reg_737_reg[4] [2]),
        .O(\add_ln17_6_reg_783[9]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8F8888888F888F88)) 
    \add_ln17_6_reg_783[9]_i_2 
       (.I0(\add_ln17_6_reg_783[9]_i_4_n_0 ),
        .I1(\add_ln17_6_reg_783[9]_i_5_n_0 ),
        .I2(\add_ln17_6_reg_783[9]_i_6_n_0 ),
        .I3(\c_fu_84_reg[2] ),
        .I4(\r_fu_88_reg[3] ),
        .I5(\add_ln17_6_reg_783[9]_i_8_n_0 ),
        .O(select_ln8_3_fu_439_p3[9]));
  LUT6 #(
    .INIT(64'hA6AAFFFFA6AA0000)) 
    \add_ln17_6_reg_783[9]_i_3 
       (.I0(\r_fu_88_reg[3] ),
        .I1(\empty_6_reg_737_reg[4] [2]),
        .I2(c_fu_8401_out),
        .I3(\add_ln17_6_reg_783[9]_i_9_n_0 ),
        .I4(\c_fu_84_reg[2] ),
        .I5(\add_ln17_6_reg_783[9]_i_10_n_0 ),
        .O(select_ln8_3_fu_439_p3[8]));
  LUT6 #(
    .INIT(64'hFFFFFF7F00000000)) 
    \add_ln17_6_reg_783[9]_i_4 
       (.I0(\icmp_ln10_reg_746_reg[0] [2]),
        .I1(\icmp_ln10_reg_746_reg[0] [3]),
        .I2(\icmp_ln10_reg_746_reg[0] [4]),
        .I3(\icmp_ln10_reg_746_reg[0] [1]),
        .I4(\icmp_ln10_reg_746_reg[0] [0]),
        .I5(\r_fu_88_reg[4] [4]),
        .O(\add_ln17_6_reg_783[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD555FFFFFFFFFFFF)) 
    \add_ln17_6_reg_783[9]_i_5 
       (.I0(\empty_6_reg_737_reg[4] [1]),
        .I1(Q[0]),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_loop_init_int),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .I5(\empty_6_reg_737_reg[4] [3]),
        .O(\add_ln17_6_reg_783[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF9F5F9F5F9F5F5F5)) 
    \add_ln17_6_reg_783[9]_i_6 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [3]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [2]),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .I5(\empty_6_reg_737_reg[4] [0]),
        .O(\add_ln17_6_reg_783[9]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h05060A0A)) 
    \add_ln17_6_reg_783[9]_i_7 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .O(\r_fu_88_reg[3] ));
  LUT6 #(
    .INIT(64'h0000143800000000)) 
    \add_ln17_6_reg_783[9]_i_8 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [1]),
        .I2(\empty_6_reg_737_reg[4] [0]),
        .I3(\empty_6_reg_737_reg[4] [3]),
        .I4(c_fu_8401_out),
        .I5(\empty_6_reg_737_reg[4] [2]),
        .O(\add_ln17_6_reg_783[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0104030C020C000C)) 
    \add_ln17_6_reg_783[9]_i_9 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .I5(\empty_6_reg_737_reg[4] [4]),
        .O(\add_ln17_6_reg_783[9]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \add_ln17_6_reg_783_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\add_ln17_6_reg_783_reg[7]_i_1_n_0 ,\add_ln17_6_reg_783_reg[7]_i_1_n_1 ,\add_ln17_6_reg_783_reg[7]_i_1_n_2 ,\add_ln17_6_reg_783_reg[7]_i_1_n_3 ,\add_ln17_6_reg_783_reg[7]_i_1_n_4 ,\add_ln17_6_reg_783_reg[7]_i_1_n_5 ,\add_ln17_6_reg_783_reg[7]_i_1_n_6 ,\add_ln17_6_reg_783_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,\c_fu_84_reg[0] ,select_ln8_fu_383_p3,1'b0}),
        .O(D[7:0]),
        .S({select_ln8_3_fu_439_p3[7:5],S,\add_ln17_6_reg_783[7]_i_7_n_0 ,\add_ln17_6_reg_783[7]_i_8_n_0 ,\add_ln17_6_reg_783[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \add_ln17_6_reg_783_reg[9]_i_1 
       (.CI(\add_ln17_6_reg_783_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_add_ln17_6_reg_783_reg[9]_i_1_CO_UNCONNECTED [7:1],\add_ln17_6_reg_783_reg[9]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_add_ln17_6_reg_783_reg[9]_i_1_O_UNCONNECTED [7:2],D[9:8]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,select_ln8_3_fu_439_p3[9:8]}));
  LUT6 #(
    .INIT(64'hCC96969696969696)) 
    \add_ln17_reg_756[1]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(\c_fu_84_reg[2] ),
        .I2(\icmp_ln10_reg_746_reg[0] [1]),
        .I3(ap_loop_init_int),
        .I4(\empty_6_reg_737_reg[1] ),
        .I5(Q[0]),
        .O(\r_fu_88_reg[0] ));
  LUT6 #(
    .INIT(64'hF099F03C0F660FC3)) 
    \add_ln17_reg_756[2]_i_1 
       (.I0(\icmp_ln10_reg_746_reg[0] [1]),
        .I1(\empty_6_reg_737_reg[4] [1]),
        .I2(\c_fu_84_reg[2] ),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [0]),
        .I5(\add_ln17_reg_756[2]_i_2_n_0 ),
        .O(\c_fu_84_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFF1000FFFFFFFF)) 
    \add_ln17_reg_756[2]_i_2 
       (.I0(\icmp_ln10_reg_746_reg[0] [0]),
        .I1(\icmp_ln10_reg_746_reg[0] [1]),
        .I2(\icmp_ln10_reg_746_reg[0] [4]),
        .I3(\icmp_ln10_reg_746_reg[0] [3]),
        .I4(c_fu_8401_out),
        .I5(\icmp_ln10_reg_746_reg[0] [2]),
        .O(\add_ln17_reg_756[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDF1D0DC020E2F23)) 
    \add_ln17_reg_756[3]_i_1 
       (.I0(\icmp_ln10_reg_746_reg[0] [1]),
        .I1(\ap_CS_fsm_reg[0] ),
        .I2(\add_ln17_reg_756[2]_i_2_n_0 ),
        .I3(\c_fu_84_reg[2] ),
        .I4(\r_fu_88_reg[4] [1]),
        .I5(\orig_address1[3]_INST_0_i_3_n_0 ),
        .O(\c_fu_84_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln17_reg_756[7]_i_1 
       (.I0(\orig_address0[7]_INST_0_i_3_n_0 ),
        .I1(\orig_address1[7]_INST_0_i_2_n_0 ),
        .O(\r_fu_88_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \ap_CS_fsm[6]_i_1 
       (.I0(\ap_CS_fsm_reg[7] [0]),
        .I1(ap_done_reg1),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_done_cache),
        .I4(\ap_CS_fsm_reg[7] [1]),
        .O(\ap_CS_fsm_reg[6] [0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hAA08)) 
    \ap_CS_fsm[7]_i_1 
       (.I0(\ap_CS_fsm_reg[7] [1]),
        .I1(ap_done_cache),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_done_reg1),
        .O(\ap_CS_fsm_reg[6] [1]));
  LUT6 #(
    .INIT(64'hFD555555B8000000)) 
    ap_done_cache_i_1
       (.I0(\empty_6_reg_737_reg[1] ),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(Q[1]),
        .I4(ap_done_cache_reg_0),
        .I5(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFCCCCF444)) 
    ap_loop_init_int_i_1
       (.I0(Q[4]),
        .I1(ap_loop_init_int),
        .I2(ap_done_cache_reg_0),
        .I3(Q[1]),
        .I4(grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg),
        .I5(ap_rst),
        .O(ap_loop_init_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h47)) 
    ap_loop_init_int_i_2
       (.I0(\empty_6_reg_737_reg[1] ),
        .I1(Q[0]),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \c_fu_84[4]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\empty_6_reg_737_reg[1] ),
        .I2(Q[0]),
        .O(c_fu_8401_out));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \empty_6_reg_737[0]_i_1 
       (.I0(Q[0]),
        .I1(\empty_6_reg_737_reg[1] ),
        .I2(ap_loop_init_int),
        .I3(\empty_6_reg_737_reg[4] [0]),
        .O(\ap_CS_fsm_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0666)) 
    \empty_6_reg_737[1]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [1]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(ap_loop_init_int),
        .I3(\empty_6_reg_737_reg[1] ),
        .O(\r_fu_88_reg[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h152A2A2A)) 
    \empty_6_reg_737[2]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [2]),
        .I1(\empty_6_reg_737_reg[1] ),
        .I2(ap_loop_init_int),
        .I3(\empty_6_reg_737_reg[4] [0]),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .O(\r_fu_88_reg[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \empty_6_reg_737[3]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [2]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [0]),
        .O(\r_fu_88_reg[0]_0 [2]));
  LUT6 #(
    .INIT(64'h007F00FF00800000)) 
    \empty_6_reg_737[4]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(\empty_6_reg_737_reg[4] [3]),
        .I2(\empty_6_reg_737_reg[4] [2]),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .I5(\empty_6_reg_737_reg[4] [4]),
        .O(\r_fu_88_reg[0]_0 [3]));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \icmp_ln10_reg_746[0]_i_1 
       (.I0(c_fu_8401_out),
        .I1(\icmp_ln10_reg_746_reg[0] [2]),
        .I2(\icmp_ln10_reg_746_reg[0] [3]),
        .I3(\icmp_ln10_reg_746_reg[0] [4]),
        .I4(\icmp_ln10_reg_746_reg[0] [1]),
        .I5(\icmp_ln10_reg_746_reg[0] [0]),
        .O(\c_fu_84_reg[2] ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \icmp_ln8_reg_742[0]_i_1 
       (.I0(\icmp_ln8_reg_742[0]_i_2_n_0 ),
        .I1(\icmp_ln8_reg_742_reg[0] ),
        .I2(c_fu_8401_out),
        .I3(\indvar_flatten_fu_92_reg[9] ),
        .I4(\icmp_ln8_reg_742_reg[0]_0 ),
        .I5(\icmp_ln8_reg_742_reg[0]_1 ),
        .O(icmp_ln8_fu_362_p2));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \icmp_ln8_reg_742[0]_i_2 
       (.I0(\indvar_flatten_fu_92_reg[9]_1 ),
        .I1(\indvar_flatten_fu_92_reg[9]_0 ),
        .I2(\indvar_flatten_fu_92_reg[4] ),
        .I3(\indvar_flatten_fu_92_reg[3] ),
        .I4(\indvar_flatten_fu_92_reg[9]_2 ),
        .I5(\icmp_ln8_reg_742[0]_i_3_n_0 ),
        .O(\icmp_ln8_reg_742[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \icmp_ln8_reg_742[0]_i_3 
       (.I0(\indvar_flatten_fu_92_reg[3]_0 ),
        .I1(Q[0]),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_loop_init_int),
        .O(\icmp_ln8_reg_742[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \indvar_flatten_fu_92[0]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\icmp_ln8_reg_742_reg[0]_1 ),
        .O(add_ln8_fu_368_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \indvar_flatten_fu_92[1]_i_1 
       (.I0(\icmp_ln8_reg_742_reg[0]_0 ),
        .I1(ap_loop_init_int),
        .I2(\icmp_ln8_reg_742_reg[0]_1 ),
        .O(add_ln8_fu_368_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h060A)) 
    \indvar_flatten_fu_92[2]_i_1 
       (.I0(\indvar_flatten_fu_92_reg[3]_0 ),
        .I1(\icmp_ln8_reg_742_reg[0]_1 ),
        .I2(ap_loop_init_int),
        .I3(\icmp_ln8_reg_742_reg[0]_0 ),
        .O(add_ln8_fu_368_p2[2]));
  LUT5 #(
    .INIT(32'h060A0A0A)) 
    \indvar_flatten_fu_92[3]_i_1 
       (.I0(\indvar_flatten_fu_92_reg[3] ),
        .I1(\icmp_ln8_reg_742_reg[0]_0 ),
        .I2(c_fu_8401_out),
        .I3(\icmp_ln8_reg_742_reg[0]_1 ),
        .I4(\indvar_flatten_fu_92_reg[3]_0 ),
        .O(add_ln8_fu_368_p2[3]));
  LUT6 #(
    .INIT(64'h006A00AA00AA00AA)) 
    \indvar_flatten_fu_92[4]_i_1 
       (.I0(\indvar_flatten_fu_92_reg[4] ),
        .I1(\indvar_flatten_fu_92_reg[3]_0 ),
        .I2(\icmp_ln8_reg_742_reg[0]_1 ),
        .I3(c_fu_8401_out),
        .I4(\icmp_ln8_reg_742_reg[0]_0 ),
        .I5(\indvar_flatten_fu_92_reg[3] ),
        .O(add_ln8_fu_368_p2[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \indvar_flatten_fu_92[5]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\icmp_ln8_reg_742_reg[0] ),
        .I2(\indvar_flatten_fu_92[5]_i_2_n_0 ),
        .O(add_ln8_fu_368_p2[5]));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \indvar_flatten_fu_92[5]_i_2 
       (.I0(\indvar_flatten_fu_92_reg[3]_0 ),
        .I1(\icmp_ln8_reg_742_reg[0]_1 ),
        .I2(c_fu_8401_out),
        .I3(\icmp_ln8_reg_742_reg[0]_0 ),
        .I4(\indvar_flatten_fu_92_reg[3] ),
        .I5(\indvar_flatten_fu_92_reg[4] ),
        .O(\indvar_flatten_fu_92[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \indvar_flatten_fu_92[6]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\indvar_flatten_fu_92_reg[9]_1 ),
        .I2(\indvar_flatten_fu_92[9]_i_3_n_0 ),
        .O(add_ln8_fu_368_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hB444)) 
    \indvar_flatten_fu_92[7]_i_1 
       (.I0(ap_loop_init_int),
        .I1(\indvar_flatten_fu_92_reg[9]_0 ),
        .I2(\indvar_flatten_fu_92[9]_i_3_n_0 ),
        .I3(\indvar_flatten_fu_92_reg[9]_1 ),
        .O(add_ln8_fu_368_p2[7]));
  LUT5 #(
    .INIT(32'h12222222)) 
    \indvar_flatten_fu_92[8]_i_1 
       (.I0(\indvar_flatten_fu_92_reg[9]_2 ),
        .I1(c_fu_8401_out),
        .I2(\indvar_flatten_fu_92_reg[9]_1 ),
        .I3(\indvar_flatten_fu_92[9]_i_3_n_0 ),
        .I4(\indvar_flatten_fu_92_reg[9]_0 ),
        .O(add_ln8_fu_368_p2[8]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \indvar_flatten_fu_92[9]_i_1 
       (.I0(\empty_6_reg_737_reg[1] ),
        .I1(Q[0]),
        .I2(icmp_ln8_fu_362_p2),
        .O(indvar_flatten_fu_92));
  LUT6 #(
    .INIT(64'h00006AAA0000AAAA)) 
    \indvar_flatten_fu_92[9]_i_2 
       (.I0(\indvar_flatten_fu_92_reg[9] ),
        .I1(\indvar_flatten_fu_92_reg[9]_0 ),
        .I2(\indvar_flatten_fu_92[9]_i_3_n_0 ),
        .I3(\indvar_flatten_fu_92_reg[9]_1 ),
        .I4(c_fu_8401_out),
        .I5(\indvar_flatten_fu_92_reg[9]_2 ),
        .O(add_ln8_fu_368_p2[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7F000000)) 
    \indvar_flatten_fu_92[9]_i_3 
       (.I0(ap_loop_init_int),
        .I1(\empty_6_reg_737_reg[1] ),
        .I2(Q[0]),
        .I3(\icmp_ln8_reg_742_reg[0] ),
        .I4(\indvar_flatten_fu_92[5]_i_2_n_0 ),
        .O(\indvar_flatten_fu_92[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF4E00FF004E)) 
    \orig_address0[0]_INST_0 
       (.I0(\orig_address0[9]_0 ),
        .I1(add_ln17_3_reg_776[0]),
        .I2(add_ln17_3_fu_473_p2[0]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(\orig_address1[9] [0]),
        .O(orig_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \orig_address0[0]_INST_0_i_1 
       (.I0(\icmp_ln10_reg_746_reg[0] [0]),
        .I1(c_fu_8401_out),
        .O(add_ln17_3_fu_473_p2[0]));
  LUT5 #(
    .INIT(32'h0131FDCD)) 
    \orig_address0[1]_INST_0 
       (.I0(\orig_address0[1]_INST_0_i_1_n_0 ),
        .I1(Q[4]),
        .I2(Q[3]),
        .I3(\orig_address1[9] [0]),
        .I4(\orig_address1[9] [1]),
        .O(orig_address0[1]));
  LUT5 #(
    .INIT(32'hF00FF909)) 
    \orig_address0[1]_INST_0_i_1 
       (.I0(add_ln17_3_fu_473_p2[0]),
        .I1(\r_fu_88_reg[0] ),
        .I2(Q[2]),
        .I3(add_ln17_3_reg_776[1]),
        .I4(Q[1]),
        .O(\orig_address0[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6F000000)) 
    \orig_address0[2]_INST_0 
       (.I0(add_ln17_3_reg_776[1]),
        .I1(add_ln17_3_reg_776[2]),
        .I2(Q[2]),
        .I3(orig_address0_2_sn_1),
        .I4(\orig_address0[2]_INST_0_i_1_n_0 ),
        .I5(\orig_address0[2]_0 ),
        .O(orig_address0[2]));
  LUT5 #(
    .INIT(32'hFFF6FF06)) 
    \orig_address0[2]_INST_0_i_1 
       (.I0(\orig_address0[2]_INST_0_i_3_n_0 ),
        .I1(\orig_address0[2]_INST_0_i_4_n_0 ),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(add_ln17_3_reg_776[2]),
        .O(\orig_address0[2]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00F80080)) 
    \orig_address0[2]_INST_0_i_3 
       (.I0(\icmp_ln10_reg_746_reg[0] [0]),
        .I1(\add_ln17_reg_756_reg[9] ),
        .I2(\empty_6_reg_737_reg[4] [0]),
        .I3(c_fu_8401_out),
        .I4(\icmp_ln10_reg_746_reg[0] [1]),
        .O(\orig_address0[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hA556AA59)) 
    \orig_address0[2]_INST_0_i_4 
       (.I0(\add_ln17_reg_756[2]_i_2_n_0 ),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(c_fu_8401_out),
        .I3(\c_fu_84_reg[2] ),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .O(\orig_address0[2]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7B000000)) 
    \orig_address0[3]_INST_0 
       (.I0(add_ln17_3_reg_776[3]),
        .I1(Q[2]),
        .I2(orig_address0_3_sn_1),
        .I3(orig_address0_2_sn_1),
        .I4(\orig_address0[3]_INST_0_i_3_n_0 ),
        .I5(\orig_address0[3]_0 ),
        .O(orig_address0[3]));
  LUT6 #(
    .INIT(64'hFFFFFF69FFFF0069)) 
    \orig_address0[3]_INST_0_i_3 
       (.I0(\orig_address0[3]_INST_0_i_5_n_0 ),
        .I1(\orig_address0[3]_INST_0_i_6_n_0 ),
        .I2(select_ln8_fu_383_p3[2]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(add_ln17_3_reg_776[3]),
        .O(\orig_address0[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB22222BBBBB22B2)) 
    \orig_address0[3]_INST_0_i_5 
       (.I0(\orig_address0[2]_INST_0_i_3_n_0 ),
        .I1(\add_ln17_reg_756[2]_i_2_n_0 ),
        .I2(\empty_6_reg_737_reg[4] [0]),
        .I3(c_fu_8401_out),
        .I4(\c_fu_84_reg[2] ),
        .I5(\empty_6_reg_737_reg[4] [1]),
        .O(\orig_address0[3]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFAFAFABE)) 
    \orig_address0[3]_INST_0_i_6 
       (.I0(c_fu_8401_out),
        .I1(\add_ln17_reg_756_reg[9] ),
        .I2(\empty_6_reg_737_reg[4] [2]),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [0]),
        .O(\orig_address0[3]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFEBAEEABEFAAEEA)) 
    \orig_address0[4]_INST_0 
       (.I0(\orig_address0[4]_INST_0_i_1_n_0 ),
        .I1(Q[4]),
        .I2(\orig_address1[9] [4]),
        .I3(orig_address0_4_sn_1),
        .I4(Q[3]),
        .I5(\orig_address0[4]_0 ),
        .O(orig_address0[4]));
  LUT6 #(
    .INIT(64'h00000000ECEFEFEC)) 
    \orig_address0[4]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\orig_address0[4]_INST_0_i_4_n_0 ),
        .I4(\orig_address0[9]_INST_0_i_13_n_0 ),
        .I5(\orig_address0[4]_1 ),
        .O(\orig_address0[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA9A55555565)) 
    \orig_address0[4]_INST_0_i_4 
       (.I0(\c_fu_84_reg[0] ),
        .I1(\c_fu_84_reg[2] ),
        .I2(\ap_CS_fsm_reg[0] ),
        .I3(\r_fu_88_reg[4] [1]),
        .I4(\r_fu_88_reg[4] [2]),
        .I5(\r_fu_88_reg[4] [3]),
        .O(\orig_address0[4]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550110)) 
    \orig_address0[5]_INST_0 
       (.I0(orig_address0_5_sn_1),
        .I1(Q[1]),
        .I2(\orig_address0[5]_INST_0_i_2_n_0 ),
        .I3(\orig_address0[5]_INST_0_i_3_n_0 ),
        .I4(\orig_address0[5]_0 ),
        .I5(\orig_address0[5]_1 ),
        .O(orig_address0[5]));
  LUT6 #(
    .INIT(64'h0606F6F90909F9F9)) 
    \orig_address0[5]_INST_0_i_2 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(\empty_6_reg_737_reg[4] [4]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [3]),
        .I4(\orig_address0[5]_INST_0_i_6_n_0 ),
        .I5(\add_ln17_reg_756_reg[9] ),
        .O(\orig_address0[5]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h17)) 
    \orig_address0[5]_INST_0_i_3 
       (.I0(\orig_address0[9]_INST_0_i_13_n_0 ),
        .I1(\c_fu_84_reg[0] ),
        .I2(\orig_address0[9]_INST_0_i_12_n_0 ),
        .O(\orig_address0[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFFFF0EEEEEEE)) 
    \orig_address0[5]_INST_0_i_6 
       (.I0(\empty_6_reg_737_reg[4] [2]),
        .I1(\empty_6_reg_737_reg[4] [1]),
        .I2(Q[0]),
        .I3(\empty_6_reg_737_reg[1] ),
        .I4(ap_loop_init_int),
        .I5(\empty_6_reg_737_reg[4] [0]),
        .O(\orig_address0[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550014)) 
    \orig_address0[6]_INST_0 
       (.I0(orig_address0_6_sn_1),
        .I1(\orig_address0[6]_INST_0_i_2_n_0 ),
        .I2(\orig_address0[6]_INST_0_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\orig_address0[6]_0 ),
        .I5(\orig_address0[6]_1 ),
        .O(orig_address0[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hABBF)) 
    \orig_address0[6]_INST_0_i_2 
       (.I0(\orig_address0[5]_INST_0_i_2_n_0 ),
        .I1(\orig_address0[9]_INST_0_i_12_n_0 ),
        .I2(\c_fu_84_reg[0] ),
        .I3(\orig_address0[9]_INST_0_i_13_n_0 ),
        .O(\orig_address0[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4A00B5FF4AFFB500)) 
    \orig_address0[6]_INST_0_i_3 
       (.I0(\ap_CS_fsm_reg[0] ),
        .I1(\empty_6_reg_737_reg[4] [4]),
        .I2(\orig_address0[6]_INST_0_i_7_n_0 ),
        .I3(\c_fu_84_reg[2] ),
        .I4(\r_fu_88_reg[4] [1]),
        .I5(\orig_address0[6]_INST_0_i_8_n_0 ),
        .O(\orig_address0[6]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF9F5F5F5F5F5F5F5)) 
    \orig_address0[6]_INST_0_i_7 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [1]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [2]),
        .I4(\empty_6_reg_737_reg[4] [3]),
        .I5(\empty_6_reg_737_reg[4] [0]),
        .O(\orig_address0[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF50FF50FF50FF51)) 
    \orig_address0[6]_INST_0_i_8 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [3]),
        .I2(\empty_6_reg_737_reg[4] [0]),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .I5(\empty_6_reg_737_reg[4] [2]),
        .O(\orig_address0[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550041)) 
    \orig_address0[7]_INST_0 
       (.I0(orig_address0_7_sn_1),
        .I1(\orig_address0[7]_INST_0_i_2_n_0 ),
        .I2(\orig_address0[7]_INST_0_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\orig_address0[7]_0 ),
        .I5(\orig_address0[7]_1 ),
        .O(orig_address0[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFFFF17)) 
    \orig_address0[7]_INST_0_i_2 
       (.I0(\orig_address0[9]_INST_0_i_13_n_0 ),
        .I1(\c_fu_84_reg[0] ),
        .I2(\orig_address0[9]_INST_0_i_12_n_0 ),
        .I3(\orig_address0[5]_INST_0_i_2_n_0 ),
        .I4(\orig_address0[6]_INST_0_i_3_n_0 ),
        .O(\orig_address0[7]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8BB8B88)) 
    \orig_address0[7]_INST_0_i_3 
       (.I0(\orig_address0[7]_INST_0_i_6_n_0 ),
        .I1(\c_fu_84_reg[2] ),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [2]),
        .I4(\orig_address0[7]_INST_0_i_7_n_0 ),
        .O(\orig_address0[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00007FF30000000C)) 
    \orig_address0[7]_INST_0_i_6 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [4]),
        .I2(\empty_6_reg_737_reg[4] [1]),
        .I3(\empty_6_reg_737_reg[4] [0]),
        .I4(c_fu_8401_out),
        .I5(\empty_6_reg_737_reg[4] [2]),
        .O(\orig_address0[7]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0303030300030002)) 
    \orig_address0[7]_INST_0_i_7 
       (.I0(\empty_6_reg_737_reg[4] [2]),
        .I1(\empty_6_reg_737_reg[4] [1]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [0]),
        .I4(\empty_6_reg_737_reg[4] [3]),
        .I5(\empty_6_reg_737_reg[4] [4]),
        .O(\orig_address0[7]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55550041)) 
    \orig_address0[8]_INST_0 
       (.I0(orig_address0_8_sn_1),
        .I1(\orig_address0[9]_INST_0_i_4_n_0 ),
        .I2(\orig_address0[9]_INST_0_i_3_n_0 ),
        .I3(Q[1]),
        .I4(\orig_address0[8]_0 ),
        .I5(\orig_address0[8]_1 ),
        .O(orig_address0[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFF45445555)) 
    \orig_address0[9]_INST_0 
       (.I0(orig_address0_9_sn_1),
        .I1(\orig_address0[9]_INST_0_i_2_n_0 ),
        .I2(\orig_address0[9]_INST_0_i_3_n_0 ),
        .I3(\orig_address0[9]_INST_0_i_4_n_0 ),
        .I4(\orig_address0[9]_0 ),
        .I5(\orig_address0[9]_1 ),
        .O(orig_address0[9]));
  LUT6 #(
    .INIT(64'hFF80FF02FFFFFFFD)) 
    \orig_address0[9]_INST_0_i_11 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(\empty_6_reg_737_reg[4] [1]),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .I5(\empty_6_reg_737_reg[4] [3]),
        .O(\orig_address0[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0055005600550055)) 
    \orig_address0[9]_INST_0_i_12 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [2]),
        .I2(\empty_6_reg_737_reg[4] [1]),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [0]),
        .I5(\add_ln17_reg_756_reg[9] ),
        .O(\orig_address0[9]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h080E0FAF000008AE)) 
    \orig_address0[9]_INST_0_i_13 
       (.I0(\orig_address0[2]_INST_0_i_3_n_0 ),
        .I1(\icmp_ln10_reg_746_reg[0] [2]),
        .I2(\orig_address0[9]_INST_0_i_15_n_0 ),
        .I3(select_ln8_3_fu_439_p3[2]),
        .I4(\orig_address0[3]_INST_0_i_6_n_0 ),
        .I5(\icmp_ln10_reg_746_reg[0] [3]),
        .O(\orig_address0[9]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAEAAA)) 
    \orig_address0[9]_INST_0_i_15 
       (.I0(c_fu_8401_out),
        .I1(\icmp_ln10_reg_746_reg[0] [2]),
        .I2(\icmp_ln10_reg_746_reg[0] [3]),
        .I3(\icmp_ln10_reg_746_reg[0] [4]),
        .I4(\icmp_ln10_reg_746_reg[0] [1]),
        .I5(\icmp_ln10_reg_746_reg[0] [0]),
        .O(\orig_address0[9]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAEAAAD555EAAA)) 
    \orig_address0[9]_INST_0_i_16 
       (.I0(\empty_6_reg_737_reg[4] [1]),
        .I1(Q[0]),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_loop_init_int),
        .I4(\add_ln17_reg_756_reg[9] ),
        .I5(\empty_6_reg_737_reg[4] [0]),
        .O(select_ln8_3_fu_439_p3[2]));
  LUT6 #(
    .INIT(64'h3330111100001111)) 
    \orig_address0[9]_INST_0_i_2 
       (.I0(\orig_address0[9]_INST_0_i_8_n_0 ),
        .I1(c_fu_8401_out),
        .I2(\empty_6_reg_737_reg[4] [3]),
        .I3(\orig_address0[9]_INST_0_i_9_n_0 ),
        .I4(\add_ln17_reg_756_reg[9] ),
        .I5(\empty_6_reg_737_reg[4] [4]),
        .O(\orig_address0[9]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBB8B88B8)) 
    \orig_address0[9]_INST_0_i_3 
       (.I0(\orig_address0[9]_INST_0_i_11_n_0 ),
        .I1(\c_fu_84_reg[2] ),
        .I2(\empty_6_reg_737_reg[4] [3]),
        .I3(c_fu_8401_out),
        .I4(\orig_address0[9]_INST_0_i_9_n_0 ),
        .O(\orig_address0[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0202020002000000)) 
    \orig_address0[9]_INST_0_i_4 
       (.I0(\orig_address0[7]_INST_0_i_3_n_0 ),
        .I1(\orig_address0[6]_INST_0_i_3_n_0 ),
        .I2(\orig_address0[5]_INST_0_i_2_n_0 ),
        .I3(\orig_address0[9]_INST_0_i_12_n_0 ),
        .I4(\c_fu_84_reg[0] ),
        .I5(\orig_address0[9]_INST_0_i_13_n_0 ),
        .O(\orig_address0[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8F0F0F1FFFFFFFF)) 
    \orig_address0[9]_INST_0_i_8 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(\empty_6_reg_737_reg[4] [2]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [0]),
        .I5(\empty_6_reg_737_reg[4] [4]),
        .O(\orig_address0[9]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF51)) 
    \orig_address0[9]_INST_0_i_9 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(\empty_6_reg_737_reg[4] [3]),
        .I2(\empty_6_reg_737_reg[4] [0]),
        .I3(c_fu_8401_out),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .I5(\empty_6_reg_737_reg[4] [2]),
        .O(\orig_address0[9]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8BB88BBB8BB888B8)) 
    \orig_address1[0]_INST_0 
       (.I0(\orig_address1[9] [0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(add_ln17_3_reg_776[0]),
        .I4(Q[1]),
        .I5(add_ln17_3_fu_473_p2[0]),
        .O(orig_address1[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \orig_address1[1]_INST_0 
       (.I0(\orig_address1[9] [1]),
        .I1(Q[3]),
        .I2(\orig_address1[1]_INST_0_i_1_n_0 ),
        .O(orig_address1[1]));
  LUT6 #(
    .INIT(64'h606F6F6F60606F60)) 
    \orig_address1[1]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[0]),
        .I1(add_ln17_3_reg_776[1]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(add_ln17_reg_756[0]),
        .I5(\r_fu_88_reg[0] ),
        .O(\orig_address1[1]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88B8B888B8B8B8B8)) 
    \orig_address1[2]_INST_0 
       (.I0(\orig_address1[9] [2]),
        .I1(Q[3]),
        .I2(\orig_address1[2]_INST_0_i_1_n_0 ),
        .I3(add_ln17_3_reg_776[2]),
        .I4(orig_address1_2_sn_1),
        .I5(Q[2]),
        .O(orig_address1[2]));
  LUT5 #(
    .INIT(32'hFFFF2EE2)) 
    \orig_address1[2]_INST_0_i_1 
       (.I0(\c_fu_84_reg[1]_1 ),
        .I1(Q[1]),
        .I2(add_ln17_reg_756[1]),
        .I3(add_ln17_reg_756[0]),
        .I4(Q[2]),
        .O(\orig_address1[2]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB8888B88B8BB8BBB)) 
    \orig_address1[3]_INST_0 
       (.I0(\orig_address1[9] [3]),
        .I1(Q[3]),
        .I2(add_ln17_3_reg_776[3]),
        .I3(Q[2]),
        .I4(orig_address1_3_sn_1),
        .I5(\orig_address1[3]_INST_0_i_2_n_0 ),
        .O(orig_address1[3]));
  LUT6 #(
    .INIT(64'h95FF9500950095FF)) 
    \orig_address1[3]_INST_0_i_2 
       (.I0(add_ln17_reg_756[2]),
        .I1(add_ln17_reg_756[1]),
        .I2(add_ln17_reg_756[0]),
        .I3(Q[1]),
        .I4(\orig_address1[3]_INST_0_i_3_n_0 ),
        .I5(\orig_address1[5]_INST_0_i_5_n_0 ),
        .O(\orig_address1[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA5555AAA9A5A6)) 
    \orig_address1[3]_INST_0_i_3 
       (.I0(select_ln8_fu_383_p3[2]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(c_fu_8401_out),
        .I3(\empty_6_reg_737_reg[4] [1]),
        .I4(\empty_6_reg_737_reg[4] [2]),
        .I5(\c_fu_84_reg[2] ),
        .O(\orig_address1[3]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAFCAAFCAAFC)) 
    \orig_address1[4]_INST_0 
       (.I0(\orig_address1[9] [4]),
        .I1(orig_address1_4_sn_1),
        .I2(\orig_address1[4]_0 ),
        .I3(Q[3]),
        .I4(\orig_address0[9]_0 ),
        .I5(\r_fu_88_reg[3]_2 ),
        .O(orig_address1[4]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \orig_address1[4]_INST_0_i_3 
       (.I0(\orig_address0[9]_INST_0_i_12_n_0 ),
        .I1(\c_fu_84_reg[0] ),
        .I2(\orig_address1[4]_INST_0_i_4_n_0 ),
        .O(\r_fu_88_reg[3]_2 ));
  LUT6 #(
    .INIT(64'hAFAFBBEB0A0A2282)) 
    \orig_address1[4]_INST_0_i_4 
       (.I0(\orig_address1[5]_INST_0_i_5_n_0 ),
        .I1(\orig_address1[4]_INST_0_i_5_n_0 ),
        .I2(\empty_6_reg_737_reg[4] [2]),
        .I3(c_fu_8401_out),
        .I4(\c_fu_84_reg[2] ),
        .I5(select_ln8_fu_383_p3[2]),
        .O(\orig_address1[4]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hC000D555)) 
    \orig_address1[4]_INST_0_i_5 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(ap_loop_init_int),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(Q[0]),
        .I4(\empty_6_reg_737_reg[4] [1]),
        .O(\orig_address1[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0DDD0D0D0D0)) 
    \orig_address1[5]_INST_0 
       (.I0(Q[3]),
        .I1(\orig_address1[9] [5]),
        .I2(orig_address1_5_sn_1),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\c_fu_84_reg[1] ),
        .O(orig_address1[5]));
  LUT6 #(
    .INIT(64'hFFB2B200004D4DFF)) 
    \orig_address1[5]_INST_0_i_2 
       (.I0(\orig_address1[5]_INST_0_i_5_n_0 ),
        .I1(\orig_address0[3]_INST_0_i_6_n_0 ),
        .I2(select_ln8_fu_383_p3[2]),
        .I3(\c_fu_84_reg[0] ),
        .I4(\orig_address0[9]_INST_0_i_12_n_0 ),
        .I5(\orig_address0[5]_INST_0_i_2_n_0 ),
        .O(\c_fu_84_reg[1] ));
  LUT6 #(
    .INIT(64'h0B0000000C080808)) 
    \orig_address1[5]_INST_0_i_5 
       (.I0(\icmp_ln10_reg_746_reg[0] [1]),
        .I1(\empty_6_reg_737_reg[4] [0]),
        .I2(c_fu_8401_out),
        .I3(\icmp_ln10_reg_746_reg[0] [2]),
        .I4(\add_ln17_reg_756_reg[9] ),
        .I5(\empty_6_reg_737_reg[4] [1]),
        .O(\orig_address1[5]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0DDD0D0D0D0)) 
    \orig_address1[6]_INST_0 
       (.I0(Q[3]),
        .I1(\orig_address1[9] [6]),
        .I2(orig_address1_6_sn_1),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\r_fu_88_reg[4]_0 ),
        .O(orig_address1[6]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \orig_address1[6]_INST_0_i_2 
       (.I0(\orig_address0[6]_INST_0_i_3_n_0 ),
        .I1(\orig_address1[9]_INST_0_i_6_n_0 ),
        .O(\r_fu_88_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hD0D0DDD0DDD0D0D0)) 
    \orig_address1[7]_INST_0 
       (.I0(Q[3]),
        .I1(\orig_address1[9] [7]),
        .I2(orig_address1_7_sn_1),
        .I3(\orig_address0[9]_0 ),
        .I4(\orig_address1[7]_INST_0_i_2_n_0 ),
        .I5(\orig_address0[7]_INST_0_i_3_n_0 ),
        .O(orig_address1[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \orig_address1[7]_INST_0_i_2 
       (.I0(\orig_address0[6]_INST_0_i_3_n_0 ),
        .I1(\orig_address1[9]_INST_0_i_6_n_0 ),
        .O(\orig_address1[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0D0D0DDD0D0D0D0)) 
    \orig_address1[8]_INST_0 
       (.I0(Q[3]),
        .I1(\orig_address1[9] [8]),
        .I2(orig_address1_8_sn_1),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(\r_fu_88_reg[3]_0 ),
        .O(orig_address1[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h5655)) 
    \orig_address1[8]_INST_0_i_2 
       (.I0(\orig_address0[9]_INST_0_i_3_n_0 ),
        .I1(\orig_address0[6]_INST_0_i_3_n_0 ),
        .I2(\orig_address1[9]_INST_0_i_6_n_0 ),
        .I3(\orig_address0[7]_INST_0_i_3_n_0 ),
        .O(\r_fu_88_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAFFAAFCAAFCAAFC)) 
    \orig_address1[9]_INST_0 
       (.I0(\orig_address1[9] [9]),
        .I1(\orig_address1[9]_0 ),
        .I2(\orig_address1[9]_1 ),
        .I3(Q[3]),
        .I4(\orig_address0[9]_0 ),
        .I5(\r_fu_88_reg[3]_1 ),
        .O(orig_address1[9]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAABA)) 
    \orig_address1[9]_INST_0_i_3 
       (.I0(\orig_address0[9]_INST_0_i_2_n_0 ),
        .I1(\orig_address0[9]_INST_0_i_3_n_0 ),
        .I2(\orig_address0[7]_INST_0_i_3_n_0 ),
        .I3(\orig_address1[9]_INST_0_i_6_n_0 ),
        .I4(\orig_address0[6]_INST_0_i_3_n_0 ),
        .O(\r_fu_88_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hABBFABABBFBFABBF)) 
    \orig_address1[9]_INST_0_i_6 
       (.I0(\orig_address0[5]_INST_0_i_2_n_0 ),
        .I1(\orig_address0[9]_INST_0_i_12_n_0 ),
        .I2(\c_fu_84_reg[0] ),
        .I3(select_ln8_fu_383_p3[2]),
        .I4(\orig_address0[3]_INST_0_i_6_n_0 ),
        .I5(\orig_address1[5]_INST_0_i_5_n_0 ),
        .O(\orig_address1[9]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    \r_1_reg_732[0]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [0]),
        .I1(ap_loop_init_int),
        .I2(\empty_6_reg_737_reg[1] ),
        .O(\r_fu_88_reg[4] [0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \r_1_reg_732[1]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [1]),
        .I1(Q[0]),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_loop_init_int),
        .O(\r_fu_88_reg[4] [1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \r_1_reg_732[2]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [2]),
        .I1(Q[0]),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_loop_init_int),
        .O(\r_fu_88_reg[4] [2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \r_1_reg_732[3]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [3]),
        .I1(Q[0]),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_loop_init_int),
        .O(\r_fu_88_reg[4] [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h2AAA)) 
    \r_1_reg_732[4]_i_1 
       (.I0(\empty_6_reg_737_reg[4] [4]),
        .I1(Q[0]),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(ap_loop_init_int),
        .O(\r_fu_88_reg[4] [4]));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \select_ln8_reg_751[1]_i_1 
       (.I0(\icmp_ln10_reg_746_reg[0] [1]),
        .I1(ap_loop_init_int),
        .I2(\empty_6_reg_737_reg[1] ),
        .I3(Q[0]),
        .O(select_ln8_fu_383_p3[0]));
  LUT6 #(
    .INIT(64'h2222222222220222)) 
    \select_ln8_reg_751[2]_i_1 
       (.I0(\icmp_ln10_reg_746_reg[0] [2]),
        .I1(c_fu_8401_out),
        .I2(\icmp_ln10_reg_746_reg[0] [3]),
        .I3(\icmp_ln10_reg_746_reg[0] [4]),
        .I4(\icmp_ln10_reg_746_reg[0] [1]),
        .I5(\icmp_ln10_reg_746_reg[0] [0]),
        .O(select_ln8_fu_383_p3[1]));
  LUT6 #(
    .INIT(64'h00000000EF00FF00)) 
    \select_ln8_reg_751[3]_i_1 
       (.I0(\icmp_ln10_reg_746_reg[0] [0]),
        .I1(\icmp_ln10_reg_746_reg[0] [1]),
        .I2(\icmp_ln10_reg_746_reg[0] [4]),
        .I3(\icmp_ln10_reg_746_reg[0] [3]),
        .I4(\icmp_ln10_reg_746_reg[0] [2]),
        .I5(c_fu_8401_out),
        .O(select_ln8_fu_383_p3[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \select_ln8_reg_751[4]_i_1 
       (.I0(Q[0]),
        .I1(icmp_ln8_fu_362_p2),
        .O(add_ln17_3_reg_7760));
  LUT6 #(
    .INIT(64'h00000000E0F0F0F0)) 
    \select_ln8_reg_751[4]_i_2 
       (.I0(\icmp_ln10_reg_746_reg[0] [0]),
        .I1(\icmp_ln10_reg_746_reg[0] [1]),
        .I2(\icmp_ln10_reg_746_reg[0] [4]),
        .I3(\icmp_ln10_reg_746_reg[0] [3]),
        .I4(\icmp_ln10_reg_746_reg[0] [2]),
        .I5(c_fu_8401_out),
        .O(\c_fu_84_reg[0] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1
   (CEP,
    D,
    PCOUT,
    mul_ln17_reg_790_reg__1,
    S,
    \add_ln18_1_reg_865_reg[30] ,
    DI,
    \add_ln18_1_reg_865_reg[22] ,
    Q,
    ap_clk,
    orig_q1,
    filter_q0,
    P,
    add_ln18_7_fu_644_p2__0_carry__1_i_15,
    \mul_ln17_reg_790_reg[0]__0 ,
    \mul_ln17_reg_790_reg[0]__0_0 ,
    add_ln18_7_fu_644_p2__0_carry__1,
    add_ln18_7_fu_644_p2__0_carry__2,
    mul_ln17_2_reg_810_reg__1);
  output CEP;
  output [16:0]D;
  output [47:0]PCOUT;
  output [15:0]mul_ln17_reg_790_reg__1;
  output [0:0]S;
  output [0:0]\add_ln18_1_reg_865_reg[30] ;
  output [6:0]DI;
  output [6:0]\add_ln18_1_reg_865_reg[22] ;
  input [0:0]Q;
  input ap_clk;
  input [31:0]orig_q1;
  input [16:0]filter_q0;
  input [14:0]P;
  input [1:0]add_ln18_7_fu_644_p2__0_carry__1_i_15;
  input [0:0]\mul_ln17_reg_790_reg[0]__0 ;
  input \mul_ln17_reg_790_reg[0]__0_0 ;
  input [0:0]add_ln18_7_fu_644_p2__0_carry__1;
  input [15:0]add_ln18_7_fu_644_p2__0_carry__2;
  input [14:0]mul_ln17_2_reg_810_reg__1;

  wire CEP;
  wire [16:0]D;
  wire [6:0]DI;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [0:0]S;
  wire [6:0]\add_ln18_1_reg_865_reg[22] ;
  wire [0:0]\add_ln18_1_reg_865_reg[30] ;
  wire [0:0]add_ln18_7_fu_644_p2__0_carry__1;
  wire [1:0]add_ln18_7_fu_644_p2__0_carry__1_i_15;
  wire [15:0]add_ln18_7_fu_644_p2__0_carry__2;
  wire ap_clk;
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
  wire dout_carry__0_i_1__3_n_0;
  wire dout_carry__0_i_2__3_n_0;
  wire dout_carry__0_i_3__3_n_0;
  wire dout_carry__0_i_4__3_n_0;
  wire dout_carry__0_i_5__3_n_0;
  wire dout_carry__0_i_6__3_n_0;
  wire dout_carry__0_i_7__3_n_0;
  wire dout_carry__0_i_8__3_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__3_n_0;
  wire dout_carry_i_2__3_n_0;
  wire dout_carry_i_3__3_n_0;
  wire dout_carry_i_4__3_n_0;
  wire dout_carry_i_5__3_n_0;
  wire dout_carry_i_6__3_n_0;
  wire dout_carry_i_7__3_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
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
  wire [16:0]filter_q0;
  wire [14:0]mul_ln17_2_reg_810_reg__1;
  wire [0:0]\mul_ln17_reg_790_reg[0]__0 ;
  wire \mul_ln17_reg_790_reg[0]__0_0 ;
  wire [15:0]mul_ln17_reg_790_reg__1;
  wire [31:0]orig_q1;
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

  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_1
       (.I0(mul_ln17_reg_790_reg__1[6]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[7]),
        .I2(mul_ln17_2_reg_810_reg__1[6]),
        .O(\add_ln18_1_reg_865_reg[22] [6]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_16
       (.I0(add_ln18_7_fu_644_p2__0_carry__1),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[0]),
        .I2(add_ln18_7_fu_644_p2__0_carry__1_i_15[0]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[1]),
        .I4(mul_ln17_reg_790_reg__1[0]),
        .I5(mul_ln17_2_reg_810_reg__1[0]),
        .O(S));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_2
       (.I0(mul_ln17_reg_790_reg__1[5]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[6]),
        .I2(mul_ln17_2_reg_810_reg__1[5]),
        .O(\add_ln18_1_reg_865_reg[22] [5]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_3
       (.I0(mul_ln17_reg_790_reg__1[4]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[5]),
        .I2(mul_ln17_2_reg_810_reg__1[4]),
        .O(\add_ln18_1_reg_865_reg[22] [4]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_4
       (.I0(mul_ln17_reg_790_reg__1[3]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[4]),
        .I2(mul_ln17_2_reg_810_reg__1[3]),
        .O(\add_ln18_1_reg_865_reg[22] [3]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_5
       (.I0(mul_ln17_reg_790_reg__1[2]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[3]),
        .I2(mul_ln17_2_reg_810_reg__1[2]),
        .O(\add_ln18_1_reg_865_reg[22] [2]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_6
       (.I0(mul_ln17_reg_790_reg__1[1]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[2]),
        .I2(mul_ln17_2_reg_810_reg__1[1]),
        .O(\add_ln18_1_reg_865_reg[22] [1]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_7
       (.I0(mul_ln17_reg_790_reg__1[0]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[1]),
        .I2(mul_ln17_2_reg_810_reg__1[0]),
        .O(\add_ln18_1_reg_865_reg[22] [0]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_1
       (.I0(mul_ln17_reg_790_reg__1[13]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[14]),
        .I2(mul_ln17_2_reg_810_reg__1[13]),
        .O(DI[6]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_2
       (.I0(mul_ln17_reg_790_reg__1[12]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[13]),
        .I2(mul_ln17_2_reg_810_reg__1[12]),
        .O(DI[5]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_3
       (.I0(mul_ln17_reg_790_reg__1[11]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[12]),
        .I2(mul_ln17_2_reg_810_reg__1[11]),
        .O(DI[4]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_4
       (.I0(mul_ln17_reg_790_reg__1[10]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[11]),
        .I2(mul_ln17_2_reg_810_reg__1[10]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_5
       (.I0(mul_ln17_reg_790_reg__1[9]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[10]),
        .I2(mul_ln17_2_reg_810_reg__1[9]),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_6
       (.I0(mul_ln17_reg_790_reg__1[8]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[9]),
        .I2(mul_ln17_2_reg_810_reg__1[8]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_7
       (.I0(mul_ln17_reg_790_reg__1[7]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[8]),
        .I2(mul_ln17_2_reg_810_reg__1[7]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_9
       (.I0(DI[6]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[15]),
        .I2(mul_ln17_reg_790_reg__1[14]),
        .I3(mul_ln17_2_reg_810_reg__1[14]),
        .O(\add_ln18_1_reg_865_reg[30] ));
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q1[31],orig_q1[31],orig_q1[31],orig_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(mul_ln17_reg_790_reg__1[7:0]),
        .S({dout_carry_i_1__3_n_0,dout_carry_i_2__3_n_0,dout_carry_i_3__3_n_0,dout_carry_i_4__3_n_0,dout_carry_i_5__3_n_0,dout_carry_i_6__3_n_0,dout_carry_i_7__3_n_0,add_ln18_7_fu_644_p2__0_carry__1_i_15[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln17_reg_790_reg__1[15:8]),
        .S({dout_carry__0_i_1__3_n_0,dout_carry__0_i_2__3_n_0,dout_carry__0_i_3__3_n_0,dout_carry__0_i_4__3_n_0,dout_carry__0_i_5__3_n_0,dout_carry__0_i_6__3_n_0,dout_carry__0_i_7__3_n_0,dout_carry__0_i_8__3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__3
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__3
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__3
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__3
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__3
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__3
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__3
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__3
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__3
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__3
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__3
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__3
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__3
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__3
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__3
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dout_i_1__0
       (.I0(\mul_ln17_reg_790_reg[0]__0 ),
        .I1(\mul_ln17_reg_790_reg[0]__0_0 ),
        .O(CEP));
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_0
   (D,
    PCOUT,
    mul_ln17_1_reg_795_reg__1,
    S,
    \mul_ln17_8_reg_870_reg[30] ,
    DI,
    \mul_ln17_8_reg_870_reg[22] ,
    Q,
    CEP,
    ap_clk,
    orig_q0,
    filter_q1,
    P,
    add_ln18_7_fu_644_p2__94_carry__1_i_15,
    add_ln18_7_fu_644_p2__94_carry__1,
    add_ln18_7_fu_644_p2__94_carry__2,
    mul_ln17_3_reg_815_reg__1);
  output [16:0]D;
  output [47:0]PCOUT;
  output [15:0]mul_ln17_1_reg_795_reg__1;
  output [0:0]S;
  output [0:0]\mul_ln17_8_reg_870_reg[30] ;
  output [6:0]DI;
  output [6:0]\mul_ln17_8_reg_870_reg[22] ;
  input [0:0]Q;
  input CEP;
  input ap_clk;
  input [31:0]orig_q0;
  input [16:0]filter_q1;
  input [14:0]P;
  input [1:0]add_ln18_7_fu_644_p2__94_carry__1_i_15;
  input [0:0]add_ln18_7_fu_644_p2__94_carry__1;
  input [15:0]add_ln18_7_fu_644_p2__94_carry__2;
  input [14:0]mul_ln17_3_reg_815_reg__1;

  wire CEP;
  wire [16:0]D;
  wire [6:0]DI;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [0:0]S;
  wire [0:0]add_ln18_7_fu_644_p2__94_carry__1;
  wire [1:0]add_ln18_7_fu_644_p2__94_carry__1_i_15;
  wire [15:0]add_ln18_7_fu_644_p2__94_carry__2;
  wire ap_clk;
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
  wire [16:0]filter_q1;
  wire [15:0]mul_ln17_1_reg_795_reg__1;
  wire [14:0]mul_ln17_3_reg_815_reg__1;
  wire [6:0]\mul_ln17_8_reg_870_reg[22] ;
  wire [0:0]\mul_ln17_8_reg_870_reg[30] ;
  wire [31:0]orig_q0;
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

  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_1
       (.I0(mul_ln17_1_reg_795_reg__1[6]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[7]),
        .I2(mul_ln17_3_reg_815_reg__1[6]),
        .O(\mul_ln17_8_reg_870_reg[22] [6]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_16
       (.I0(add_ln18_7_fu_644_p2__94_carry__1),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[0]),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_i_15[0]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[1]),
        .I4(mul_ln17_1_reg_795_reg__1[0]),
        .I5(mul_ln17_3_reg_815_reg__1[0]),
        .O(S));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_2
       (.I0(mul_ln17_1_reg_795_reg__1[5]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[6]),
        .I2(mul_ln17_3_reg_815_reg__1[5]),
        .O(\mul_ln17_8_reg_870_reg[22] [5]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_3
       (.I0(mul_ln17_1_reg_795_reg__1[4]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[5]),
        .I2(mul_ln17_3_reg_815_reg__1[4]),
        .O(\mul_ln17_8_reg_870_reg[22] [4]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_4
       (.I0(mul_ln17_1_reg_795_reg__1[3]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[4]),
        .I2(mul_ln17_3_reg_815_reg__1[3]),
        .O(\mul_ln17_8_reg_870_reg[22] [3]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_5
       (.I0(mul_ln17_1_reg_795_reg__1[2]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[3]),
        .I2(mul_ln17_3_reg_815_reg__1[2]),
        .O(\mul_ln17_8_reg_870_reg[22] [2]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_6
       (.I0(mul_ln17_1_reg_795_reg__1[1]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[2]),
        .I2(mul_ln17_3_reg_815_reg__1[1]),
        .O(\mul_ln17_8_reg_870_reg[22] [1]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_7
       (.I0(mul_ln17_1_reg_795_reg__1[0]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[1]),
        .I2(mul_ln17_3_reg_815_reg__1[0]),
        .O(\mul_ln17_8_reg_870_reg[22] [0]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_1
       (.I0(mul_ln17_1_reg_795_reg__1[13]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[14]),
        .I2(mul_ln17_3_reg_815_reg__1[13]),
        .O(DI[6]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_2
       (.I0(mul_ln17_1_reg_795_reg__1[12]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[13]),
        .I2(mul_ln17_3_reg_815_reg__1[12]),
        .O(DI[5]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_3
       (.I0(mul_ln17_1_reg_795_reg__1[11]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[12]),
        .I2(mul_ln17_3_reg_815_reg__1[11]),
        .O(DI[4]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_4
       (.I0(mul_ln17_1_reg_795_reg__1[10]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[11]),
        .I2(mul_ln17_3_reg_815_reg__1[10]),
        .O(DI[3]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_5
       (.I0(mul_ln17_1_reg_795_reg__1[9]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[10]),
        .I2(mul_ln17_3_reg_815_reg__1[9]),
        .O(DI[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_6
       (.I0(mul_ln17_1_reg_795_reg__1[8]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[9]),
        .I2(mul_ln17_3_reg_815_reg__1[8]),
        .O(DI[1]));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_7
       (.I0(mul_ln17_1_reg_795_reg__1[7]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[8]),
        .I2(mul_ln17_3_reg_815_reg__1[7]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_9
       (.I0(DI[6]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[15]),
        .I2(mul_ln17_1_reg_795_reg__1[14]),
        .I3(mul_ln17_3_reg_815_reg__1[14]),
        .O(\mul_ln17_8_reg_870_reg[30] ));
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q0[31],orig_q0[31],orig_q0[31],orig_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(mul_ln17_1_reg_795_reg__1[7:0]),
        .S({dout_carry_i_1__1_n_0,dout_carry_i_2__1_n_0,dout_carry_i_3__1_n_0,dout_carry_i_4__1_n_0,dout_carry_i_5__1_n_0,dout_carry_i_6__1_n_0,dout_carry_i_7__1_n_0,add_ln18_7_fu_644_p2__94_carry__1_i_15[1]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln17_1_reg_795_reg__1[15:8]),
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
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_1
   (CEP,
    D,
    PCOUT,
    \mul_ln17_2_reg_810_reg[16]__0 ,
    S,
    \add_ln18_1_reg_865_reg[30] ,
    Q,
    ap_clk,
    orig_q1,
    filter_q0,
    P,
    add_ln18_7_fu_644_p2__0_carry__1_i_7,
    \mul_ln17_2_reg_810_reg[0]__0 ,
    \mul_ln17_2_reg_810_reg[0]__0_0 ,
    add_ln18_7_fu_644_p2__0_carry__2,
    mul_ln17_reg_790_reg__1);
  output CEP;
  output [16:0]D;
  output [47:0]PCOUT;
  output [14:0]\mul_ln17_2_reg_810_reg[16]__0 ;
  output [6:0]S;
  output [6:0]\add_ln18_1_reg_865_reg[30] ;
  input [0:0]Q;
  input ap_clk;
  input [31:0]orig_q1;
  input [16:0]filter_q0;
  input [14:0]P;
  input [0:0]add_ln18_7_fu_644_p2__0_carry__1_i_7;
  input [0:0]\mul_ln17_2_reg_810_reg[0]__0 ;
  input \mul_ln17_2_reg_810_reg[0]__0_0 ;
  input [15:0]add_ln18_7_fu_644_p2__0_carry__2;
  input [15:0]mul_ln17_reg_790_reg__1;

  wire CEP;
  wire [16:0]D;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [6:0]S;
  wire [6:0]\add_ln18_1_reg_865_reg[30] ;
  wire [0:0]add_ln18_7_fu_644_p2__0_carry__1_i_7;
  wire [15:0]add_ln18_7_fu_644_p2__0_carry__2;
  wire ap_clk;
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
  wire dout_carry__0_i_1__4_n_0;
  wire dout_carry__0_i_2__4_n_0;
  wire dout_carry__0_i_3__4_n_0;
  wire dout_carry__0_i_4__4_n_0;
  wire dout_carry__0_i_5__4_n_0;
  wire dout_carry__0_i_6__4_n_0;
  wire dout_carry__0_i_7__4_n_0;
  wire dout_carry__0_i_8__4_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__4_n_0;
  wire dout_carry_i_2__4_n_0;
  wire dout_carry_i_3__4_n_0;
  wire dout_carry_i_4__4_n_0;
  wire dout_carry_i_5__4_n_0;
  wire dout_carry_i_6__4_n_0;
  wire dout_carry_i_7__4_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
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
  wire [16:0]filter_q0;
  wire [0:0]\mul_ln17_2_reg_810_reg[0]__0 ;
  wire \mul_ln17_2_reg_810_reg[0]__0_0 ;
  wire [14:0]\mul_ln17_2_reg_810_reg[16]__0 ;
  wire [31:31]mul_ln17_2_reg_810_reg__1;
  wire [15:0]mul_ln17_reg_790_reg__1;
  wire [31:0]orig_q1;
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

  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_10
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [5]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[5]),
        .I2(mul_ln17_reg_790_reg__1[5]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[6]),
        .I4(mul_ln17_reg_790_reg__1[6]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [6]),
        .O(S[5]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_11
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [4]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[4]),
        .I2(mul_ln17_reg_790_reg__1[4]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[5]),
        .I4(mul_ln17_reg_790_reg__1[5]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [5]),
        .O(S[4]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_12
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [3]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[3]),
        .I2(mul_ln17_reg_790_reg__1[3]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[4]),
        .I4(mul_ln17_reg_790_reg__1[4]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [4]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_13
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [2]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[2]),
        .I2(mul_ln17_reg_790_reg__1[2]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[3]),
        .I4(mul_ln17_reg_790_reg__1[3]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [3]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_14
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [1]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[1]),
        .I2(mul_ln17_reg_790_reg__1[1]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[2]),
        .I4(mul_ln17_reg_790_reg__1[2]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_15
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [0]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[0]),
        .I2(mul_ln17_reg_790_reg__1[0]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[1]),
        .I4(mul_ln17_reg_790_reg__1[1]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_9
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [6]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[6]),
        .I2(mul_ln17_reg_790_reg__1[6]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[7]),
        .I4(mul_ln17_reg_790_reg__1[7]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [7]),
        .O(S[6]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_10
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [12]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[12]),
        .I2(mul_ln17_reg_790_reg__1[12]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[13]),
        .I4(mul_ln17_reg_790_reg__1[13]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [13]),
        .O(\add_ln18_1_reg_865_reg[30] [5]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_11
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [11]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[11]),
        .I2(mul_ln17_reg_790_reg__1[11]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[12]),
        .I4(mul_ln17_reg_790_reg__1[12]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [12]),
        .O(\add_ln18_1_reg_865_reg[30] [4]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_12
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [10]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[10]),
        .I2(mul_ln17_reg_790_reg__1[10]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[11]),
        .I4(mul_ln17_reg_790_reg__1[11]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [11]),
        .O(\add_ln18_1_reg_865_reg[30] [3]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_13
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [9]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[9]),
        .I2(mul_ln17_reg_790_reg__1[9]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[10]),
        .I4(mul_ln17_reg_790_reg__1[10]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [10]),
        .O(\add_ln18_1_reg_865_reg[30] [2]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_14
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [8]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[8]),
        .I2(mul_ln17_reg_790_reg__1[8]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[9]),
        .I4(mul_ln17_reg_790_reg__1[9]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [9]),
        .O(\add_ln18_1_reg_865_reg[30] [1]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_15
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [7]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[7]),
        .I2(mul_ln17_reg_790_reg__1[7]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[8]),
        .I4(mul_ln17_reg_790_reg__1[8]),
        .I5(\mul_ln17_2_reg_810_reg[16]__0 [8]),
        .O(\add_ln18_1_reg_865_reg[30] [0]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__2_i_8
       (.I0(\mul_ln17_2_reg_810_reg[16]__0 [14]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2[14]),
        .I2(mul_ln17_reg_790_reg__1[14]),
        .I3(add_ln18_7_fu_644_p2__0_carry__2[15]),
        .I4(mul_ln17_reg_790_reg__1[15]),
        .I5(mul_ln17_2_reg_810_reg__1),
        .O(\add_ln18_1_reg_865_reg[30] [6]));
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q1[31],orig_q1[31],orig_q1[31],orig_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(\mul_ln17_2_reg_810_reg[16]__0 [7:0]),
        .S({dout_carry_i_1__4_n_0,dout_carry_i_2__4_n_0,dout_carry_i_3__4_n_0,dout_carry_i_4__4_n_0,dout_carry_i_5__4_n_0,dout_carry_i_6__4_n_0,dout_carry_i_7__4_n_0,add_ln18_7_fu_644_p2__0_carry__1_i_7}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({mul_ln17_2_reg_810_reg__1,\mul_ln17_2_reg_810_reg[16]__0 [14:8]}),
        .S({dout_carry__0_i_1__4_n_0,dout_carry__0_i_2__4_n_0,dout_carry__0_i_3__4_n_0,dout_carry__0_i_4__4_n_0,dout_carry__0_i_5__4_n_0,dout_carry__0_i_6__4_n_0,dout_carry__0_i_7__4_n_0,dout_carry__0_i_8__4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__4
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__4
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__4
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__4
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__4
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__4
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__4
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__4
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__4
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__4
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__4
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__4
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__4
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__4
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__4
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__4_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dout_i_1__1
       (.I0(\mul_ln17_2_reg_810_reg[0]__0 ),
        .I1(\mul_ln17_2_reg_810_reg[0]__0_0 ),
        .O(CEP));
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_2
   (D,
    PCOUT,
    \mul_ln17_3_reg_815_reg[16]__0 ,
    S,
    \mul_ln17_8_reg_870_reg[30] ,
    Q,
    CEP,
    ap_clk,
    orig_q0,
    filter_q0,
    P,
    add_ln18_7_fu_644_p2__94_carry__1_i_7,
    add_ln18_7_fu_644_p2__94_carry__2,
    mul_ln17_1_reg_795_reg__1);
  output [16:0]D;
  output [47:0]PCOUT;
  output [14:0]\mul_ln17_3_reg_815_reg[16]__0 ;
  output [6:0]S;
  output [6:0]\mul_ln17_8_reg_870_reg[30] ;
  input [0:0]Q;
  input CEP;
  input ap_clk;
  input [31:0]orig_q0;
  input [16:0]filter_q0;
  input [14:0]P;
  input [0:0]add_ln18_7_fu_644_p2__94_carry__1_i_7;
  input [15:0]add_ln18_7_fu_644_p2__94_carry__2;
  input [15:0]mul_ln17_1_reg_795_reg__1;

  wire CEP;
  wire [16:0]D;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [6:0]S;
  wire [0:0]add_ln18_7_fu_644_p2__94_carry__1_i_7;
  wire [15:0]add_ln18_7_fu_644_p2__94_carry__2;
  wire ap_clk;
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
  wire dout_carry__0_i_1__2_n_0;
  wire dout_carry__0_i_2__2_n_0;
  wire dout_carry__0_i_3__2_n_0;
  wire dout_carry__0_i_4__2_n_0;
  wire dout_carry__0_i_5__2_n_0;
  wire dout_carry__0_i_6__2_n_0;
  wire dout_carry__0_i_7__2_n_0;
  wire dout_carry__0_i_8__2_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__2_n_0;
  wire dout_carry_i_2__2_n_0;
  wire dout_carry_i_3__2_n_0;
  wire dout_carry_i_4__2_n_0;
  wire dout_carry_i_5__2_n_0;
  wire dout_carry_i_6__2_n_0;
  wire dout_carry_i_7__2_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
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
  wire [16:0]filter_q0;
  wire [15:0]mul_ln17_1_reg_795_reg__1;
  wire [14:0]\mul_ln17_3_reg_815_reg[16]__0 ;
  wire [31:31]mul_ln17_3_reg_815_reg__1;
  wire [6:0]\mul_ln17_8_reg_870_reg[30] ;
  wire [31:0]orig_q0;
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

  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_10
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [5]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[5]),
        .I2(mul_ln17_1_reg_795_reg__1[5]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[6]),
        .I4(mul_ln17_1_reg_795_reg__1[6]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [6]),
        .O(S[5]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_11
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [4]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[4]),
        .I2(mul_ln17_1_reg_795_reg__1[4]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[5]),
        .I4(mul_ln17_1_reg_795_reg__1[5]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [5]),
        .O(S[4]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_12
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [3]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[3]),
        .I2(mul_ln17_1_reg_795_reg__1[3]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[4]),
        .I4(mul_ln17_1_reg_795_reg__1[4]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [4]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_13
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [2]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[2]),
        .I2(mul_ln17_1_reg_795_reg__1[2]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[3]),
        .I4(mul_ln17_1_reg_795_reg__1[3]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [3]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_14
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [1]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[1]),
        .I2(mul_ln17_1_reg_795_reg__1[1]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[2]),
        .I4(mul_ln17_1_reg_795_reg__1[2]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [2]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_15
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [0]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[0]),
        .I2(mul_ln17_1_reg_795_reg__1[0]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[1]),
        .I4(mul_ln17_1_reg_795_reg__1[1]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [1]),
        .O(S[0]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_9
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [6]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[6]),
        .I2(mul_ln17_1_reg_795_reg__1[6]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[7]),
        .I4(mul_ln17_1_reg_795_reg__1[7]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [7]),
        .O(S[6]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_10
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [12]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[12]),
        .I2(mul_ln17_1_reg_795_reg__1[12]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[13]),
        .I4(mul_ln17_1_reg_795_reg__1[13]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [13]),
        .O(\mul_ln17_8_reg_870_reg[30] [5]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_11
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [11]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[11]),
        .I2(mul_ln17_1_reg_795_reg__1[11]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[12]),
        .I4(mul_ln17_1_reg_795_reg__1[12]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [12]),
        .O(\mul_ln17_8_reg_870_reg[30] [4]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_12
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [10]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[10]),
        .I2(mul_ln17_1_reg_795_reg__1[10]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[11]),
        .I4(mul_ln17_1_reg_795_reg__1[11]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [11]),
        .O(\mul_ln17_8_reg_870_reg[30] [3]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_13
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [9]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[9]),
        .I2(mul_ln17_1_reg_795_reg__1[9]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[10]),
        .I4(mul_ln17_1_reg_795_reg__1[10]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [10]),
        .O(\mul_ln17_8_reg_870_reg[30] [2]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_14
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [8]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[8]),
        .I2(mul_ln17_1_reg_795_reg__1[8]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[9]),
        .I4(mul_ln17_1_reg_795_reg__1[9]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [9]),
        .O(\mul_ln17_8_reg_870_reg[30] [1]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_15
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [7]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[7]),
        .I2(mul_ln17_1_reg_795_reg__1[7]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[8]),
        .I4(mul_ln17_1_reg_795_reg__1[8]),
        .I5(\mul_ln17_3_reg_815_reg[16]__0 [8]),
        .O(\mul_ln17_8_reg_870_reg[30] [0]));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__2_i_8
       (.I0(\mul_ln17_3_reg_815_reg[16]__0 [14]),
        .I1(add_ln18_7_fu_644_p2__94_carry__2[14]),
        .I2(mul_ln17_1_reg_795_reg__1[14]),
        .I3(add_ln18_7_fu_644_p2__94_carry__2[15]),
        .I4(mul_ln17_1_reg_795_reg__1[15]),
        .I5(mul_ln17_3_reg_815_reg__1),
        .O(\mul_ln17_8_reg_870_reg[30] [6]));
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q0[31],orig_q0[31],orig_q0[31],orig_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(\mul_ln17_3_reg_815_reg[16]__0 [7:0]),
        .S({dout_carry_i_1__2_n_0,dout_carry_i_2__2_n_0,dout_carry_i_3__2_n_0,dout_carry_i_4__2_n_0,dout_carry_i_5__2_n_0,dout_carry_i_6__2_n_0,dout_carry_i_7__2_n_0,add_ln18_7_fu_644_p2__94_carry__1_i_7}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({mul_ln17_3_reg_815_reg__1,\mul_ln17_3_reg_815_reg[16]__0 [14:8]}),
        .S({dout_carry__0_i_1__2_n_0,dout_carry__0_i_2__2_n_0,dout_carry__0_i_3__2_n_0,dout_carry__0_i_4__2_n_0,dout_carry__0_i_5__2_n_0,dout_carry__0_i_6__2_n_0,dout_carry__0_i_7__2_n_0,dout_carry__0_i_8__2_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__2
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__2
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__2
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__2
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__2
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__2
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__2
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__2
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__2
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__2
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__2
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__2
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__2
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__2
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__2
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__2_n_0));
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_3
   (D,
    PCOUT,
    mul_ln17_4_reg_830_reg__1,
    Q,
    CEP,
    ap_clk,
    orig_q1,
    filter_q1,
    P,
    add_ln18_1_fu_593_p2_carry__1_i_8);
  output [16:0]D;
  output [47:0]PCOUT;
  output [15:0]mul_ln17_4_reg_830_reg__1;
  input [0:0]Q;
  input CEP;
  input ap_clk;
  input [31:0]orig_q1;
  input [16:0]filter_q1;
  input [14:0]P;
  input [0:0]add_ln18_1_fu_593_p2_carry__1_i_8;

  wire CEP;
  wire [16:0]D;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [0:0]add_ln18_1_fu_593_p2_carry__1_i_8;
  wire ap_clk;
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
  wire dout_carry__0_i_1__5_n_0;
  wire dout_carry__0_i_2__5_n_0;
  wire dout_carry__0_i_3__5_n_0;
  wire dout_carry__0_i_4__5_n_0;
  wire dout_carry__0_i_5__5_n_0;
  wire dout_carry__0_i_6__5_n_0;
  wire dout_carry__0_i_7__5_n_0;
  wire dout_carry__0_i_8__5_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__5_n_0;
  wire dout_carry_i_2__5_n_0;
  wire dout_carry_i_3__5_n_0;
  wire dout_carry_i_4__5_n_0;
  wire dout_carry_i_5__5_n_0;
  wire dout_carry_i_6__5_n_0;
  wire dout_carry_i_7__5_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
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
  wire [16:0]filter_q1;
  wire [15:0]mul_ln17_4_reg_830_reg__1;
  wire [31:0]orig_q1;
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q1[31],orig_q1[31],orig_q1[31],orig_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(mul_ln17_4_reg_830_reg__1[7:0]),
        .S({dout_carry_i_1__5_n_0,dout_carry_i_2__5_n_0,dout_carry_i_3__5_n_0,dout_carry_i_4__5_n_0,dout_carry_i_5__5_n_0,dout_carry_i_6__5_n_0,dout_carry_i_7__5_n_0,add_ln18_1_fu_593_p2_carry__1_i_8}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln17_4_reg_830_reg__1[15:8]),
        .S({dout_carry__0_i_1__5_n_0,dout_carry__0_i_2__5_n_0,dout_carry__0_i_3__5_n_0,dout_carry__0_i_4__5_n_0,dout_carry__0_i_5__5_n_0,dout_carry__0_i_6__5_n_0,dout_carry__0_i_7__5_n_0,dout_carry__0_i_8__5_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__5
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__5
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__5
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__5
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__5
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__5
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__5
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__5
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__5
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__5
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__5
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__5
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__5
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__5
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__5
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__5_n_0));
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_4
   (CEP,
    D,
    PCOUT,
    \mul_ln17_5_reg_835_reg[16]__0 ,
    S,
    dout_carry__0_0,
    Q,
    ap_clk,
    orig_q0,
    filter_q0,
    P,
    \add_ln18_1_reg_865_reg[23] ,
    \mul_ln17_5_reg_835_reg[0]__0 ,
    \mul_ln17_5_reg_835_reg[0]__0_0 ,
    mul_ln17_4_reg_830_reg__1);
  output CEP;
  output [16:0]D;
  output [47:0]PCOUT;
  output [14:0]\mul_ln17_5_reg_835_reg[16]__0 ;
  output [7:0]S;
  output [7:0]dout_carry__0_0;
  input [0:0]Q;
  input ap_clk;
  input [31:0]orig_q0;
  input [16:0]filter_q0;
  input [14:0]P;
  input [0:0]\add_ln18_1_reg_865_reg[23] ;
  input [0:0]\mul_ln17_5_reg_835_reg[0]__0 ;
  input \mul_ln17_5_reg_835_reg[0]__0_0 ;
  input [15:0]mul_ln17_4_reg_830_reg__1;

  wire CEP;
  wire [16:0]D;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [7:0]S;
  wire [0:0]\add_ln18_1_reg_865_reg[23] ;
  wire ap_clk;
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
  wire [7:0]dout_carry__0_0;
  wire dout_carry__0_i_1__6_n_0;
  wire dout_carry__0_i_2__6_n_0;
  wire dout_carry__0_i_3__6_n_0;
  wire dout_carry__0_i_4__6_n_0;
  wire dout_carry__0_i_5__6_n_0;
  wire dout_carry__0_i_6__6_n_0;
  wire dout_carry__0_i_7__6_n_0;
  wire dout_carry__0_i_8__6_n_0;
  wire dout_carry__0_n_1;
  wire dout_carry__0_n_2;
  wire dout_carry__0_n_3;
  wire dout_carry__0_n_4;
  wire dout_carry__0_n_5;
  wire dout_carry__0_n_6;
  wire dout_carry__0_n_7;
  wire dout_carry_i_1__6_n_0;
  wire dout_carry_i_2__6_n_0;
  wire dout_carry_i_3__6_n_0;
  wire dout_carry_i_4__6_n_0;
  wire dout_carry_i_5__6_n_0;
  wire dout_carry_i_6__6_n_0;
  wire dout_carry_i_7__6_n_0;
  wire dout_carry_n_0;
  wire dout_carry_n_1;
  wire dout_carry_n_2;
  wire dout_carry_n_3;
  wire dout_carry_n_4;
  wire dout_carry_n_5;
  wire dout_carry_n_6;
  wire dout_carry_n_7;
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
  wire [16:0]filter_q0;
  wire [15:0]mul_ln17_4_reg_830_reg__1;
  wire [0:0]\mul_ln17_5_reg_835_reg[0]__0 ;
  wire \mul_ln17_5_reg_835_reg[0]__0_0 ;
  wire [14:0]\mul_ln17_5_reg_835_reg[16]__0 ;
  wire [31:31]mul_ln17_5_reg_835_reg__1;
  wire [31:0]orig_q0;
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

  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_1
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [7]),
        .I1(mul_ln17_4_reg_830_reg__1[7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_2
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [6]),
        .I1(mul_ln17_4_reg_830_reg__1[6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_3
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [5]),
        .I1(mul_ln17_4_reg_830_reg__1[5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_4
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [4]),
        .I1(mul_ln17_4_reg_830_reg__1[4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_5
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [3]),
        .I1(mul_ln17_4_reg_830_reg__1[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_6
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [2]),
        .I1(mul_ln17_4_reg_830_reg__1[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_7
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [1]),
        .I1(mul_ln17_4_reg_830_reg__1[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__1_i_8
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [0]),
        .I1(mul_ln17_4_reg_830_reg__1[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_1
       (.I0(mul_ln17_5_reg_835_reg__1),
        .I1(mul_ln17_4_reg_830_reg__1[15]),
        .O(dout_carry__0_0[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_2
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [14]),
        .I1(mul_ln17_4_reg_830_reg__1[14]),
        .O(dout_carry__0_0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_3
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [13]),
        .I1(mul_ln17_4_reg_830_reg__1[13]),
        .O(dout_carry__0_0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_4
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [12]),
        .I1(mul_ln17_4_reg_830_reg__1[12]),
        .O(dout_carry__0_0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_5
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [11]),
        .I1(mul_ln17_4_reg_830_reg__1[11]),
        .O(dout_carry__0_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_6
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [10]),
        .I1(mul_ln17_4_reg_830_reg__1[10]),
        .O(dout_carry__0_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_7
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [9]),
        .I1(mul_ln17_4_reg_830_reg__1[9]),
        .O(dout_carry__0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__2_i_8
       (.I0(\mul_ln17_5_reg_835_reg[16]__0 [8]),
        .I1(mul_ln17_4_reg_830_reg__1[8]),
        .O(dout_carry__0_0[0]));
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q0[31],orig_q0[31],orig_q0[31],orig_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(\mul_ln17_5_reg_835_reg[16]__0 [7:0]),
        .S({dout_carry_i_1__6_n_0,dout_carry_i_2__6_n_0,dout_carry_i_3__6_n_0,dout_carry_i_4__6_n_0,dout_carry_i_5__6_n_0,dout_carry_i_6__6_n_0,dout_carry_i_7__6_n_0,\add_ln18_1_reg_865_reg[23] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({mul_ln17_5_reg_835_reg__1,\mul_ln17_5_reg_835_reg[16]__0 [14:8]}),
        .S({dout_carry__0_i_1__6_n_0,dout_carry__0_i_2__6_n_0,dout_carry__0_i_3__6_n_0,dout_carry__0_i_4__6_n_0,dout_carry__0_i_5__6_n_0,dout_carry__0_i_6__6_n_0,dout_carry__0_i_7__6_n_0,dout_carry__0_i_8__6_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1__6
       (.I0(P[14]),
        .I1(dout_n_91),
        .O(dout_carry__0_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_2__6
       (.I0(P[13]),
        .I1(dout_n_92),
        .O(dout_carry__0_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_3__6
       (.I0(P[12]),
        .I1(dout_n_93),
        .O(dout_carry__0_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_4__6
       (.I0(P[11]),
        .I1(dout_n_94),
        .O(dout_carry__0_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_5__6
       (.I0(P[10]),
        .I1(dout_n_95),
        .O(dout_carry__0_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_6__6
       (.I0(P[9]),
        .I1(dout_n_96),
        .O(dout_carry__0_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_7__6
       (.I0(P[8]),
        .I1(dout_n_97),
        .O(dout_carry__0_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_8__6
       (.I0(P[7]),
        .I1(dout_n_98),
        .O(dout_carry__0_i_8__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_1__6
       (.I0(P[6]),
        .I1(dout_n_99),
        .O(dout_carry_i_1__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_2__6
       (.I0(P[5]),
        .I1(dout_n_100),
        .O(dout_carry_i_2__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_3__6
       (.I0(P[4]),
        .I1(dout_n_101),
        .O(dout_carry_i_3__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_4__6
       (.I0(P[3]),
        .I1(dout_n_102),
        .O(dout_carry_i_4__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_5__6
       (.I0(P[2]),
        .I1(dout_n_103),
        .O(dout_carry_i_5__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_6__6
       (.I0(P[1]),
        .I1(dout_n_104),
        .O(dout_carry_i_6__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry_i_7__6
       (.I0(P[0]),
        .I1(dout_n_105),
        .O(dout_carry_i_7__6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    dout_i_1__2
       (.I0(\mul_ln17_5_reg_835_reg[0]__0 ),
        .I1(\mul_ln17_5_reg_835_reg[0]__0_0 ),
        .O(CEP));
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_5
   (CEP,
    D,
    PCOUT,
    \mul_ln17_6_reg_850_reg[16]__0 ,
    S,
    dout_carry__0_0,
    Q,
    ap_clk,
    orig_q1,
    filter_q1,
    P,
    \add_ln18_reg_875_reg[23] ,
    \add_ln18_1_reg_865_reg[0] ,
    \add_ln18_1_reg_865_reg[0]_0 ,
    mul_ln17_7_reg_855_reg__1);
  output CEP;
  output [16:0]D;
  output [47:0]PCOUT;
  output [14:0]\mul_ln17_6_reg_850_reg[16]__0 ;
  output [7:0]S;
  output [7:0]dout_carry__0_0;
  input [0:0]Q;
  input ap_clk;
  input [31:0]orig_q1;
  input [16:0]filter_q1;
  input [14:0]P;
  input [0:0]\add_ln18_reg_875_reg[23] ;
  input [0:0]\add_ln18_1_reg_865_reg[0] ;
  input \add_ln18_1_reg_865_reg[0]_0 ;
  input [15:0]mul_ln17_7_reg_855_reg__1;

  wire CEP;
  wire [16:0]D;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [7:0]S;
  wire [0:0]\add_ln18_1_reg_865_reg[0] ;
  wire \add_ln18_1_reg_865_reg[0]_0 ;
  wire [0:0]\add_ln18_reg_875_reg[23] ;
  wire ap_clk;
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
  wire [7:0]dout_carry__0_0;
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
  wire [16:0]filter_q1;
  wire [14:0]\mul_ln17_6_reg_850_reg[16]__0 ;
  wire [31:31]mul_ln17_6_reg_850_reg__1;
  wire [15:0]mul_ln17_7_reg_855_reg__1;
  wire [31:0]orig_q1;
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

  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_1
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [7]),
        .I1(mul_ln17_7_reg_855_reg__1[7]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_2
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [6]),
        .I1(mul_ln17_7_reg_855_reg__1[6]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_3
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [5]),
        .I1(mul_ln17_7_reg_855_reg__1[5]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_4
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [4]),
        .I1(mul_ln17_7_reg_855_reg__1[4]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_5
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [3]),
        .I1(mul_ln17_7_reg_855_reg__1[3]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_6
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [2]),
        .I1(mul_ln17_7_reg_855_reg__1[2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_7
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [1]),
        .I1(mul_ln17_7_reg_855_reg__1[1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__1_i_8
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [0]),
        .I1(mul_ln17_7_reg_855_reg__1[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_1
       (.I0(mul_ln17_6_reg_850_reg__1),
        .I1(mul_ln17_7_reg_855_reg__1[15]),
        .O(dout_carry__0_0[7]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_2
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [14]),
        .I1(mul_ln17_7_reg_855_reg__1[14]),
        .O(dout_carry__0_0[6]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_3
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [13]),
        .I1(mul_ln17_7_reg_855_reg__1[13]),
        .O(dout_carry__0_0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_4
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [12]),
        .I1(mul_ln17_7_reg_855_reg__1[12]),
        .O(dout_carry__0_0[4]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_5
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [11]),
        .I1(mul_ln17_7_reg_855_reg__1[11]),
        .O(dout_carry__0_0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_6
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [10]),
        .I1(mul_ln17_7_reg_855_reg__1[10]),
        .O(dout_carry__0_0[2]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_7
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [9]),
        .I1(mul_ln17_7_reg_855_reg__1[9]),
        .O(dout_carry__0_0[1]));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__2_i_8
       (.I0(\mul_ln17_6_reg_850_reg[16]__0 [8]),
        .I1(mul_ln17_7_reg_855_reg__1[8]),
        .O(dout_carry__0_0[0]));
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q1}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q1[31],orig_q1[31],orig_q1[31],orig_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q1}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(\mul_ln17_6_reg_850_reg[16]__0 [7:0]),
        .S({dout_carry_i_1__0_n_0,dout_carry_i_2__0_n_0,dout_carry_i_3__0_n_0,dout_carry_i_4__0_n_0,dout_carry_i_5__0_n_0,dout_carry_i_6__0_n_0,dout_carry_i_7__0_n_0,\add_ln18_reg_875_reg[23] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O({mul_ln17_6_reg_850_reg__1,\mul_ln17_6_reg_850_reg[16]__0 [14:8]}),
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
  LUT2 #(
    .INIT(4'h2)) 
    dout_i_1
       (.I0(\add_ln18_1_reg_865_reg[0] ),
        .I1(\add_ln18_1_reg_865_reg[0]_0 ),
        .O(CEP));
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_6
   (D,
    PCOUT,
    mul_ln17_7_reg_855_reg__1,
    Q,
    CEP,
    ap_clk,
    orig_q0,
    filter_q0,
    P,
    add_ln18_fu_617_p2_carry__1_i_8);
  output [16:0]D;
  output [47:0]PCOUT;
  output [15:0]mul_ln17_7_reg_855_reg__1;
  input [0:0]Q;
  input CEP;
  input ap_clk;
  input [31:0]orig_q0;
  input [16:0]filter_q0;
  input [14:0]P;
  input [0:0]add_ln18_fu_617_p2_carry__1_i_8;

  wire CEP;
  wire [16:0]D;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [0:0]add_ln18_fu_617_p2_carry__1_i_8;
  wire ap_clk;
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
  wire [16:0]filter_q0;
  wire [15:0]mul_ln17_7_reg_855_reg__1;
  wire [31:0]orig_q0;
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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q0[31],orig_q0[31],orig_q0[31],orig_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(CEP),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q0}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .O(mul_ln17_7_reg_855_reg__1[7:0]),
        .S({dout_carry_i_1_n_0,dout_carry_i_2_n_0,dout_carry_i_3_n_0,dout_carry_i_4_n_0,dout_carry_i_5_n_0,dout_carry_i_6_n_0,dout_carry_i_7_n_0,add_ln18_fu_617_p2_carry__1_i_8}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln17_7_reg_855_reg__1[15:8]),
        .S({dout_carry__0_i_1_n_0,dout_carry__0_i_2_n_0,dout_carry__0_i_3_n_0,dout_carry__0_i_4_n_0,dout_carry__0_i_5_n_0,dout_carry__0_i_6_n_0,dout_carry__0_i_7_n_0,dout_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    dout_carry__0_i_1
       (.I0(P[14]),
        .I1(dout_n_91),
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
endmodule

(* ORIG_REF_NAME = "stencil_2d_mul_32s_32s_32_1_1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_7
   (D,
    Q,
    ap_clk,
    orig_q0,
    filter_q1);
  output [31:0]D;
  input [0:0]Q;
  input ap_clk;
  input [31:0]orig_q0;
  input [31:0]filter_q1;

  wire [31:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire dout__0_n_106;
  wire dout__0_n_107;
  wire dout__0_n_108;
  wire dout__0_n_109;
  wire dout__0_n_110;
  wire dout__0_n_111;
  wire dout__0_n_112;
  wire dout__0_n_113;
  wire dout__0_n_114;
  wire dout__0_n_115;
  wire dout__0_n_116;
  wire dout__0_n_117;
  wire dout__0_n_118;
  wire dout__0_n_119;
  wire dout__0_n_120;
  wire dout__0_n_121;
  wire dout__0_n_122;
  wire dout__0_n_123;
  wire dout__0_n_124;
  wire dout__0_n_125;
  wire dout__0_n_126;
  wire dout__0_n_127;
  wire dout__0_n_128;
  wire dout__0_n_129;
  wire dout__0_n_130;
  wire dout__0_n_131;
  wire dout__0_n_132;
  wire dout__0_n_133;
  wire dout__0_n_134;
  wire dout__0_n_135;
  wire dout__0_n_136;
  wire dout__0_n_137;
  wire dout__0_n_138;
  wire dout__0_n_139;
  wire dout__0_n_140;
  wire dout__0_n_141;
  wire dout__0_n_142;
  wire dout__0_n_143;
  wire dout__0_n_144;
  wire dout__0_n_145;
  wire dout__0_n_146;
  wire dout__0_n_147;
  wire dout__0_n_148;
  wire dout__0_n_149;
  wire dout__0_n_150;
  wire dout__0_n_151;
  wire dout__0_n_152;
  wire dout__0_n_153;
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
  wire dout__0_n_89;
  wire dout__1_n_100;
  wire dout__1_n_101;
  wire dout__1_n_102;
  wire dout__1_n_103;
  wire dout__1_n_104;
  wire dout__1_n_105;
  wire dout__1_n_58;
  wire dout__1_n_59;
  wire dout__1_n_60;
  wire dout__1_n_61;
  wire dout__1_n_62;
  wire dout__1_n_63;
  wire dout__1_n_64;
  wire dout__1_n_65;
  wire dout__1_n_66;
  wire dout__1_n_67;
  wire dout__1_n_68;
  wire dout__1_n_69;
  wire dout__1_n_70;
  wire dout__1_n_71;
  wire dout__1_n_72;
  wire dout__1_n_73;
  wire dout__1_n_74;
  wire dout__1_n_75;
  wire dout__1_n_76;
  wire dout__1_n_77;
  wire dout__1_n_78;
  wire dout__1_n_79;
  wire dout__1_n_80;
  wire dout__1_n_81;
  wire dout__1_n_82;
  wire dout__1_n_83;
  wire dout__1_n_84;
  wire dout__1_n_85;
  wire dout__1_n_86;
  wire dout__1_n_87;
  wire dout__1_n_88;
  wire dout__1_n_89;
  wire dout__1_n_90;
  wire dout__1_n_91;
  wire dout__1_n_92;
  wire dout__1_n_93;
  wire dout__1_n_94;
  wire dout__1_n_95;
  wire dout__1_n_96;
  wire dout__1_n_97;
  wire dout__1_n_98;
  wire dout__1_n_99;
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
  wire [31:0]filter_q1;
  wire \mul_ln17_8_reg_870[23]_i_2_n_0 ;
  wire \mul_ln17_8_reg_870[23]_i_3_n_0 ;
  wire \mul_ln17_8_reg_870[23]_i_4_n_0 ;
  wire \mul_ln17_8_reg_870[23]_i_5_n_0 ;
  wire \mul_ln17_8_reg_870[23]_i_6_n_0 ;
  wire \mul_ln17_8_reg_870[23]_i_7_n_0 ;
  wire \mul_ln17_8_reg_870[23]_i_8_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_2_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_3_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_4_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_5_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_6_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_7_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_8_n_0 ;
  wire \mul_ln17_8_reg_870[31]_i_9_n_0 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_0 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_1 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_2 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_3 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_4 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_5 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_6 ;
  wire \mul_ln17_8_reg_870_reg[23]_i_1_n_7 ;
  wire \mul_ln17_8_reg_870_reg[31]_i_1_n_1 ;
  wire \mul_ln17_8_reg_870_reg[31]_i_1_n_2 ;
  wire \mul_ln17_8_reg_870_reg[31]_i_1_n_3 ;
  wire \mul_ln17_8_reg_870_reg[31]_i_1_n_4 ;
  wire \mul_ln17_8_reg_870_reg[31]_i_1_n_5 ;
  wire \mul_ln17_8_reg_870_reg[31]_i_1_n_6 ;
  wire \mul_ln17_8_reg_870_reg[31]_i_1_n_7 ;
  wire [31:0]orig_q0;
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
  wire NLW_dout__1_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dout__1_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dout__1_OVERFLOW_UNCONNECTED;
  wire NLW_dout__1_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dout__1_PATTERNDETECT_UNCONNECTED;
  wire NLW_dout__1_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dout__1_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dout__1_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dout__1_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_dout__1_PCOUT_UNCONNECTED;
  wire [7:0]NLW_dout__1_XOROUT_UNCONNECTED;
  wire [7:7]\NLW_mul_ln17_8_reg_870_reg[31]_i_1_CO_UNCONNECTED ;

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
    .BCASCREG(0),
    .BMULTSEL("B"),
    .BREG(0),
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
    dout
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,filter_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({orig_q0[31],orig_q0[31],orig_q0[31],orig_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(Q),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
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
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,filter_q1[16:0]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__0_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .P({dout__0_n_58,dout__0_n_59,dout__0_n_60,dout__0_n_61,dout__0_n_62,dout__0_n_63,dout__0_n_64,dout__0_n_65,dout__0_n_66,dout__0_n_67,dout__0_n_68,dout__0_n_69,dout__0_n_70,dout__0_n_71,dout__0_n_72,dout__0_n_73,dout__0_n_74,dout__0_n_75,dout__0_n_76,dout__0_n_77,dout__0_n_78,dout__0_n_79,dout__0_n_80,dout__0_n_81,dout__0_n_82,dout__0_n_83,dout__0_n_84,dout__0_n_85,dout__0_n_86,dout__0_n_87,dout__0_n_88,dout__0_n_89,D[15:0]}),
        .PATTERNBDETECT(NLW_dout__0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
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
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    dout__1
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__1_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q1[31],filter_q1[31],filter_q1[31],filter_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dout__1_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dout__1_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dout__1_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q),
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
        .MULTSIGNOUT(NLW_dout__1_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dout__1_OVERFLOW_UNCONNECTED),
        .P({dout__1_n_58,dout__1_n_59,dout__1_n_60,dout__1_n_61,dout__1_n_62,dout__1_n_63,dout__1_n_64,dout__1_n_65,dout__1_n_66,dout__1_n_67,dout__1_n_68,dout__1_n_69,dout__1_n_70,dout__1_n_71,dout__1_n_72,dout__1_n_73,dout__1_n_74,dout__1_n_75,dout__1_n_76,dout__1_n_77,dout__1_n_78,dout__1_n_79,dout__1_n_80,dout__1_n_81,dout__1_n_82,dout__1_n_83,dout__1_n_84,dout__1_n_85,dout__1_n_86,dout__1_n_87,dout__1_n_88,dout__1_n_89,dout__1_n_90,dout__1_n_91,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98,dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105}),
        .PATTERNBDETECT(NLW_dout__1_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dout__1_PATTERNDETECT_UNCONNECTED),
        .PCIN({dout__0_n_106,dout__0_n_107,dout__0_n_108,dout__0_n_109,dout__0_n_110,dout__0_n_111,dout__0_n_112,dout__0_n_113,dout__0_n_114,dout__0_n_115,dout__0_n_116,dout__0_n_117,dout__0_n_118,dout__0_n_119,dout__0_n_120,dout__0_n_121,dout__0_n_122,dout__0_n_123,dout__0_n_124,dout__0_n_125,dout__0_n_126,dout__0_n_127,dout__0_n_128,dout__0_n_129,dout__0_n_130,dout__0_n_131,dout__0_n_132,dout__0_n_133,dout__0_n_134,dout__0_n_135,dout__0_n_136,dout__0_n_137,dout__0_n_138,dout__0_n_139,dout__0_n_140,dout__0_n_141,dout__0_n_142,dout__0_n_143,dout__0_n_144,dout__0_n_145,dout__0_n_146,dout__0_n_147,dout__0_n_148,dout__0_n_149,dout__0_n_150,dout__0_n_151,dout__0_n_152,dout__0_n_153}),
        .PCOUT(NLW_dout__1_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_dout__1_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_dout__1_XOROUT_UNCONNECTED[7:0]));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[23]_i_2 
       (.I0(dout__1_n_99),
        .I1(dout_n_99),
        .O(\mul_ln17_8_reg_870[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[23]_i_3 
       (.I0(dout__1_n_100),
        .I1(dout_n_100),
        .O(\mul_ln17_8_reg_870[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[23]_i_4 
       (.I0(dout__1_n_101),
        .I1(dout_n_101),
        .O(\mul_ln17_8_reg_870[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[23]_i_5 
       (.I0(dout__1_n_102),
        .I1(dout_n_102),
        .O(\mul_ln17_8_reg_870[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[23]_i_6 
       (.I0(dout__1_n_103),
        .I1(dout_n_103),
        .O(\mul_ln17_8_reg_870[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[23]_i_7 
       (.I0(dout__1_n_104),
        .I1(dout_n_104),
        .O(\mul_ln17_8_reg_870[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[23]_i_8 
       (.I0(dout__1_n_105),
        .I1(dout_n_105),
        .O(\mul_ln17_8_reg_870[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_2 
       (.I0(dout__1_n_91),
        .I1(dout_n_91),
        .O(\mul_ln17_8_reg_870[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_3 
       (.I0(dout__1_n_92),
        .I1(dout_n_92),
        .O(\mul_ln17_8_reg_870[31]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_4 
       (.I0(dout__1_n_93),
        .I1(dout_n_93),
        .O(\mul_ln17_8_reg_870[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_5 
       (.I0(dout__1_n_94),
        .I1(dout_n_94),
        .O(\mul_ln17_8_reg_870[31]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_6 
       (.I0(dout__1_n_95),
        .I1(dout_n_95),
        .O(\mul_ln17_8_reg_870[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_7 
       (.I0(dout__1_n_96),
        .I1(dout_n_96),
        .O(\mul_ln17_8_reg_870[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_8 
       (.I0(dout__1_n_97),
        .I1(dout_n_97),
        .O(\mul_ln17_8_reg_870[31]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln17_8_reg_870[31]_i_9 
       (.I0(dout__1_n_98),
        .I1(dout_n_98),
        .O(\mul_ln17_8_reg_870[31]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_ln17_8_reg_870_reg[23]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\mul_ln17_8_reg_870_reg[23]_i_1_n_0 ,\mul_ln17_8_reg_870_reg[23]_i_1_n_1 ,\mul_ln17_8_reg_870_reg[23]_i_1_n_2 ,\mul_ln17_8_reg_870_reg[23]_i_1_n_3 ,\mul_ln17_8_reg_870_reg[23]_i_1_n_4 ,\mul_ln17_8_reg_870_reg[23]_i_1_n_5 ,\mul_ln17_8_reg_870_reg[23]_i_1_n_6 ,\mul_ln17_8_reg_870_reg[23]_i_1_n_7 }),
        .DI({dout__1_n_99,dout__1_n_100,dout__1_n_101,dout__1_n_102,dout__1_n_103,dout__1_n_104,dout__1_n_105,1'b0}),
        .O(D[23:16]),
        .S({\mul_ln17_8_reg_870[23]_i_2_n_0 ,\mul_ln17_8_reg_870[23]_i_3_n_0 ,\mul_ln17_8_reg_870[23]_i_4_n_0 ,\mul_ln17_8_reg_870[23]_i_5_n_0 ,\mul_ln17_8_reg_870[23]_i_6_n_0 ,\mul_ln17_8_reg_870[23]_i_7_n_0 ,\mul_ln17_8_reg_870[23]_i_8_n_0 ,dout__0_n_89}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \mul_ln17_8_reg_870_reg[31]_i_1 
       (.CI(\mul_ln17_8_reg_870_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_mul_ln17_8_reg_870_reg[31]_i_1_CO_UNCONNECTED [7],\mul_ln17_8_reg_870_reg[31]_i_1_n_1 ,\mul_ln17_8_reg_870_reg[31]_i_1_n_2 ,\mul_ln17_8_reg_870_reg[31]_i_1_n_3 ,\mul_ln17_8_reg_870_reg[31]_i_1_n_4 ,\mul_ln17_8_reg_870_reg[31]_i_1_n_5 ,\mul_ln17_8_reg_870_reg[31]_i_1_n_6 ,\mul_ln17_8_reg_870_reg[31]_i_1_n_7 }),
        .DI({1'b0,dout__1_n_92,dout__1_n_93,dout__1_n_94,dout__1_n_95,dout__1_n_96,dout__1_n_97,dout__1_n_98}),
        .O(D[31:24]),
        .S({\mul_ln17_8_reg_870[31]_i_2_n_0 ,\mul_ln17_8_reg_870[31]_i_3_n_0 ,\mul_ln17_8_reg_870[31]_i_4_n_0 ,\mul_ln17_8_reg_870[31]_i_5_n_0 ,\mul_ln17_8_reg_870[31]_i_6_n_0 ,\mul_ln17_8_reg_870[31]_i_7_n_0 ,\mul_ln17_8_reg_870[31]_i_8_n_0 ,\mul_ln17_8_reg_870[31]_i_9_n_0 }));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2
   (orig_ce0,
    orig_ce1,
    D,
    orig_address0,
    orig_address1,
    E,
    \ap_CS_fsm_reg[5] ,
    sol_address0,
    ap_return,
    sol_d0,
    ap_clk,
    Q,
    orig_q0,
    filter_q0,
    orig_q1,
    filter_q1,
    ap_rst,
    \empty_6_reg_737_reg[1]_0 );
  output orig_ce0;
  output orig_ce1;
  output [1:0]D;
  output [9:0]orig_address0;
  output [9:0]orig_address1;
  output [0:0]E;
  output \ap_CS_fsm_reg[5] ;
  output [9:0]sol_address0;
  output [31:0]ap_return;
  output [31:0]sol_d0;
  input ap_clk;
  input [5:0]Q;
  input [31:0]orig_q0;
  input [31:0]filter_q0;
  input [31:0]orig_q1;
  input [31:0]filter_q1;
  input ap_rst;
  input \empty_6_reg_737_reg[1]_0 ;

  wire [1:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire [4:0]add_ln10_fu_597_p2;
  wire [9:0]add_ln17_3_fu_473_p2;
  wire [9:0]add_ln17_3_reg_776;
  wire add_ln17_3_reg_7760;
  wire \add_ln17_3_reg_776[7]_i_5_n_0 ;
  wire \add_ln17_3_reg_776[7]_i_6_n_0 ;
  wire [9:0]add_ln17_6_fu_479_p2;
  wire [9:0]add_ln17_6_reg_783;
  wire \add_ln17_6_reg_783[7]_i_5_n_0 ;
  wire \add_ln17_6_reg_783[7]_i_6_n_0 ;
  wire [9:1]add_ln17_reg_756;
  wire [31:0]add_ln18_1_fu_593_p2;
  wire add_ln18_1_fu_593_p2_carry__0_i_1_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_i_2_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_i_3_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_i_4_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_i_5_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_i_6_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_i_7_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_i_8_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_n_0;
  wire add_ln18_1_fu_593_p2_carry__0_n_1;
  wire add_ln18_1_fu_593_p2_carry__0_n_2;
  wire add_ln18_1_fu_593_p2_carry__0_n_3;
  wire add_ln18_1_fu_593_p2_carry__0_n_4;
  wire add_ln18_1_fu_593_p2_carry__0_n_5;
  wire add_ln18_1_fu_593_p2_carry__0_n_6;
  wire add_ln18_1_fu_593_p2_carry__0_n_7;
  wire add_ln18_1_fu_593_p2_carry__1_n_0;
  wire add_ln18_1_fu_593_p2_carry__1_n_1;
  wire add_ln18_1_fu_593_p2_carry__1_n_2;
  wire add_ln18_1_fu_593_p2_carry__1_n_3;
  wire add_ln18_1_fu_593_p2_carry__1_n_4;
  wire add_ln18_1_fu_593_p2_carry__1_n_5;
  wire add_ln18_1_fu_593_p2_carry__1_n_6;
  wire add_ln18_1_fu_593_p2_carry__1_n_7;
  wire add_ln18_1_fu_593_p2_carry__2_n_1;
  wire add_ln18_1_fu_593_p2_carry__2_n_2;
  wire add_ln18_1_fu_593_p2_carry__2_n_3;
  wire add_ln18_1_fu_593_p2_carry__2_n_4;
  wire add_ln18_1_fu_593_p2_carry__2_n_5;
  wire add_ln18_1_fu_593_p2_carry__2_n_6;
  wire add_ln18_1_fu_593_p2_carry__2_n_7;
  wire add_ln18_1_fu_593_p2_carry_i_1_n_0;
  wire add_ln18_1_fu_593_p2_carry_i_2_n_0;
  wire add_ln18_1_fu_593_p2_carry_i_3_n_0;
  wire add_ln18_1_fu_593_p2_carry_i_4_n_0;
  wire add_ln18_1_fu_593_p2_carry_i_5_n_0;
  wire add_ln18_1_fu_593_p2_carry_i_6_n_0;
  wire add_ln18_1_fu_593_p2_carry_i_7_n_0;
  wire add_ln18_1_fu_593_p2_carry_i_8_n_0;
  wire add_ln18_1_fu_593_p2_carry_n_0;
  wire add_ln18_1_fu_593_p2_carry_n_1;
  wire add_ln18_1_fu_593_p2_carry_n_2;
  wire add_ln18_1_fu_593_p2_carry_n_3;
  wire add_ln18_1_fu_593_p2_carry_n_4;
  wire add_ln18_1_fu_593_p2_carry_n_5;
  wire add_ln18_1_fu_593_p2_carry_n_6;
  wire add_ln18_1_fu_593_p2_carry_n_7;
  wire [31:0]add_ln18_1_reg_865;
  wire add_ln18_1_reg_8650;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_10_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_11_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_12_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_13_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_14_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_15_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_16_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_1_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_2_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_3_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_4_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_5_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_6_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_7_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_8_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_i_9_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_1;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_10;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_11;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_12;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_13;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_14;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_15;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_2;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_3;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_4;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_5;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_6;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_7;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_8;
  wire add_ln18_7_fu_644_p2__0_carry__0_n_9;
  wire add_ln18_7_fu_644_p2__0_carry__1_i_8_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_0;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_1;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_10;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_11;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_12;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_13;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_14;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_15;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_2;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_3;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_4;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_5;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_6;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_7;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_8;
  wire add_ln18_7_fu_644_p2__0_carry__1_n_9;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_1;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_10;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_11;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_12;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_13;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_14;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_15;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_2;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_3;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_4;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_5;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_6;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_7;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_8;
  wire add_ln18_7_fu_644_p2__0_carry__2_n_9;
  wire add_ln18_7_fu_644_p2__0_carry_i_10_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_11_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_12_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_13_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_14_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_15_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_1_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_2_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_3_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_4_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_5_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_6_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_7_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_8_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_i_9_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_n_0;
  wire add_ln18_7_fu_644_p2__0_carry_n_1;
  wire add_ln18_7_fu_644_p2__0_carry_n_10;
  wire add_ln18_7_fu_644_p2__0_carry_n_11;
  wire add_ln18_7_fu_644_p2__0_carry_n_12;
  wire add_ln18_7_fu_644_p2__0_carry_n_13;
  wire add_ln18_7_fu_644_p2__0_carry_n_14;
  wire add_ln18_7_fu_644_p2__0_carry_n_15;
  wire add_ln18_7_fu_644_p2__0_carry_n_2;
  wire add_ln18_7_fu_644_p2__0_carry_n_3;
  wire add_ln18_7_fu_644_p2__0_carry_n_4;
  wire add_ln18_7_fu_644_p2__0_carry_n_5;
  wire add_ln18_7_fu_644_p2__0_carry_n_6;
  wire add_ln18_7_fu_644_p2__0_carry_n_7;
  wire add_ln18_7_fu_644_p2__0_carry_n_8;
  wire add_ln18_7_fu_644_p2__0_carry_n_9;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_10_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_11_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_12_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_13_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_14_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_15_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_16_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_1_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_2_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_3_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_4_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_5_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_6_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_7_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_8_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_i_9_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_1;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_2;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_3;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_4;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_5;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_6;
  wire add_ln18_7_fu_644_p2__188_carry__0_n_7;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_10_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_11_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_12_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_13_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_14_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_15_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_16_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_1_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_2_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_3_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_4_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_5_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_6_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_7_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_8_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_i_9_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_1;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_2;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_3;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_4;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_5;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_6;
  wire add_ln18_7_fu_644_p2__188_carry__1_n_7;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_10_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_11_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_12_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_13_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_14_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_15_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_1_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_2_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_3_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_4_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_5_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_6_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_7_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_8_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_i_9_n_0;
  wire add_ln18_7_fu_644_p2__188_carry__2_n_1;
  wire add_ln18_7_fu_644_p2__188_carry__2_n_2;
  wire add_ln18_7_fu_644_p2__188_carry__2_n_3;
  wire add_ln18_7_fu_644_p2__188_carry__2_n_4;
  wire add_ln18_7_fu_644_p2__188_carry__2_n_5;
  wire add_ln18_7_fu_644_p2__188_carry__2_n_6;
  wire add_ln18_7_fu_644_p2__188_carry__2_n_7;
  wire add_ln18_7_fu_644_p2__188_carry_i_10_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_11_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_12_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_13_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_14_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_15_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_1_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_2_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_3_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_4_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_5_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_6_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_7_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_8_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_i_9_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_n_0;
  wire add_ln18_7_fu_644_p2__188_carry_n_1;
  wire add_ln18_7_fu_644_p2__188_carry_n_2;
  wire add_ln18_7_fu_644_p2__188_carry_n_3;
  wire add_ln18_7_fu_644_p2__188_carry_n_4;
  wire add_ln18_7_fu_644_p2__188_carry_n_5;
  wire add_ln18_7_fu_644_p2__188_carry_n_6;
  wire add_ln18_7_fu_644_p2__188_carry_n_7;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_10_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_11_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_12_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_13_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_14_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_15_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_16_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_1_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_2_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_3_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_4_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_5_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_6_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_7_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_8_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_i_9_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_1;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_10;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_11;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_12;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_13;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_14;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_15;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_2;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_3;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_4;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_5;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_6;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_7;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_8;
  wire add_ln18_7_fu_644_p2__94_carry__0_n_9;
  wire add_ln18_7_fu_644_p2__94_carry__1_i_8_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_0;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_1;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_10;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_11;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_12;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_13;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_14;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_15;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_2;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_3;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_4;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_5;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_6;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_7;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_8;
  wire add_ln18_7_fu_644_p2__94_carry__1_n_9;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_1;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_10;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_11;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_12;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_13;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_14;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_15;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_2;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_3;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_4;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_5;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_6;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_7;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_8;
  wire add_ln18_7_fu_644_p2__94_carry__2_n_9;
  wire add_ln18_7_fu_644_p2__94_carry_i_10_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_11_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_12_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_13_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_14_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_15_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_1_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_2_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_3_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_4_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_5_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_6_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_7_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_8_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_i_9_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_n_0;
  wire add_ln18_7_fu_644_p2__94_carry_n_1;
  wire add_ln18_7_fu_644_p2__94_carry_n_10;
  wire add_ln18_7_fu_644_p2__94_carry_n_11;
  wire add_ln18_7_fu_644_p2__94_carry_n_12;
  wire add_ln18_7_fu_644_p2__94_carry_n_13;
  wire add_ln18_7_fu_644_p2__94_carry_n_14;
  wire add_ln18_7_fu_644_p2__94_carry_n_15;
  wire add_ln18_7_fu_644_p2__94_carry_n_2;
  wire add_ln18_7_fu_644_p2__94_carry_n_3;
  wire add_ln18_7_fu_644_p2__94_carry_n_4;
  wire add_ln18_7_fu_644_p2__94_carry_n_5;
  wire add_ln18_7_fu_644_p2__94_carry_n_6;
  wire add_ln18_7_fu_644_p2__94_carry_n_7;
  wire add_ln18_7_fu_644_p2__94_carry_n_8;
  wire add_ln18_7_fu_644_p2__94_carry_n_9;
  wire [31:0]add_ln18_fu_617_p2;
  wire add_ln18_fu_617_p2_carry__0_i_1_n_0;
  wire add_ln18_fu_617_p2_carry__0_i_2_n_0;
  wire add_ln18_fu_617_p2_carry__0_i_3_n_0;
  wire add_ln18_fu_617_p2_carry__0_i_4_n_0;
  wire add_ln18_fu_617_p2_carry__0_i_5_n_0;
  wire add_ln18_fu_617_p2_carry__0_i_6_n_0;
  wire add_ln18_fu_617_p2_carry__0_i_7_n_0;
  wire add_ln18_fu_617_p2_carry__0_i_8_n_0;
  wire add_ln18_fu_617_p2_carry__0_n_0;
  wire add_ln18_fu_617_p2_carry__0_n_1;
  wire add_ln18_fu_617_p2_carry__0_n_2;
  wire add_ln18_fu_617_p2_carry__0_n_3;
  wire add_ln18_fu_617_p2_carry__0_n_4;
  wire add_ln18_fu_617_p2_carry__0_n_5;
  wire add_ln18_fu_617_p2_carry__0_n_6;
  wire add_ln18_fu_617_p2_carry__0_n_7;
  wire add_ln18_fu_617_p2_carry__1_n_0;
  wire add_ln18_fu_617_p2_carry__1_n_1;
  wire add_ln18_fu_617_p2_carry__1_n_2;
  wire add_ln18_fu_617_p2_carry__1_n_3;
  wire add_ln18_fu_617_p2_carry__1_n_4;
  wire add_ln18_fu_617_p2_carry__1_n_5;
  wire add_ln18_fu_617_p2_carry__1_n_6;
  wire add_ln18_fu_617_p2_carry__1_n_7;
  wire add_ln18_fu_617_p2_carry__2_n_1;
  wire add_ln18_fu_617_p2_carry__2_n_2;
  wire add_ln18_fu_617_p2_carry__2_n_3;
  wire add_ln18_fu_617_p2_carry__2_n_4;
  wire add_ln18_fu_617_p2_carry__2_n_5;
  wire add_ln18_fu_617_p2_carry__2_n_6;
  wire add_ln18_fu_617_p2_carry__2_n_7;
  wire add_ln18_fu_617_p2_carry_i_1_n_0;
  wire add_ln18_fu_617_p2_carry_i_2_n_0;
  wire add_ln18_fu_617_p2_carry_i_3_n_0;
  wire add_ln18_fu_617_p2_carry_i_4_n_0;
  wire add_ln18_fu_617_p2_carry_i_5_n_0;
  wire add_ln18_fu_617_p2_carry_i_6_n_0;
  wire add_ln18_fu_617_p2_carry_i_7_n_0;
  wire add_ln18_fu_617_p2_carry_i_8_n_0;
  wire add_ln18_fu_617_p2_carry_n_0;
  wire add_ln18_fu_617_p2_carry_n_1;
  wire add_ln18_fu_617_p2_carry_n_2;
  wire add_ln18_fu_617_p2_carry_n_3;
  wire add_ln18_fu_617_p2_carry_n_4;
  wire add_ln18_fu_617_p2_carry_n_5;
  wire add_ln18_fu_617_p2_carry_n_6;
  wire add_ln18_fu_617_p2_carry_n_7;
  wire [31:0]add_ln18_reg_875;
  wire [9:0]add_ln8_fu_368_p2;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire ap_CS_fsm_pp0_stage3;
  wire ap_CS_fsm_pp0_stage4;
  wire \ap_CS_fsm_reg[5] ;
  wire [2:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_done_reg1;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_i_1_n_0;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire [31:0]ap_return;
  wire ap_rst;
  wire [4:0]ap_sig_allocacmp_r_1;
  wire [4:0]c_fu_84;
  wire c_fu_840;
  wire c_fu_8401_out;
  wire [31:16]dout__3;
  wire [4:2]empty_6_fu_298_p2;
  wire [4:0]empty_6_reg_737;
  wire \empty_6_reg_737_reg[1]_0 ;
  wire [31:0]filter_q0;
  wire [31:0]filter_q1;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_26;
  wire flow_control_loop_pipe_sequential_init_U_n_39;
  wire flow_control_loop_pipe_sequential_init_U_n_51;
  wire flow_control_loop_pipe_sequential_init_U_n_52;
  wire flow_control_loop_pipe_sequential_init_U_n_53;
  wire flow_control_loop_pipe_sequential_init_U_n_59;
  wire flow_control_loop_pipe_sequential_init_U_n_60;
  wire flow_control_loop_pipe_sequential_init_U_n_61;
  wire flow_control_loop_pipe_sequential_init_U_n_62;
  wire flow_control_loop_pipe_sequential_init_U_n_66;
  wire flow_control_loop_pipe_sequential_init_U_n_67;
  wire flow_control_loop_pipe_sequential_init_U_n_68;
  wire flow_control_loop_pipe_sequential_init_U_n_69;
  wire flow_control_loop_pipe_sequential_init_U_n_70;
  wire flow_control_loop_pipe_sequential_init_U_n_82;
  wire icmp_ln10_reg_746;
  wire icmp_ln8_fu_362_p2;
  wire \icmp_ln8_reg_742_reg_n_0_[0] ;
  wire indvar_flatten_fu_92;
  wire \indvar_flatten_fu_92_reg_n_0_[0] ;
  wire \indvar_flatten_fu_92_reg_n_0_[1] ;
  wire \indvar_flatten_fu_92_reg_n_0_[2] ;
  wire \indvar_flatten_fu_92_reg_n_0_[3] ;
  wire \indvar_flatten_fu_92_reg_n_0_[4] ;
  wire \indvar_flatten_fu_92_reg_n_0_[5] ;
  wire \indvar_flatten_fu_92_reg_n_0_[6] ;
  wire \indvar_flatten_fu_92_reg_n_0_[7] ;
  wire \indvar_flatten_fu_92_reg_n_0_[8] ;
  wire \indvar_flatten_fu_92_reg_n_0_[9] ;
  wire mul_32s_32s_32_1_1_U1_n_1;
  wire mul_32s_32s_32_1_1_U1_n_10;
  wire mul_32s_32s_32_1_1_U1_n_11;
  wire mul_32s_32s_32_1_1_U1_n_12;
  wire mul_32s_32s_32_1_1_U1_n_13;
  wire mul_32s_32s_32_1_1_U1_n_14;
  wire mul_32s_32s_32_1_1_U1_n_15;
  wire mul_32s_32s_32_1_1_U1_n_16;
  wire mul_32s_32s_32_1_1_U1_n_17;
  wire mul_32s_32s_32_1_1_U1_n_18;
  wire mul_32s_32s_32_1_1_U1_n_19;
  wire mul_32s_32s_32_1_1_U1_n_2;
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
  wire mul_32s_32s_32_1_1_U1_n_3;
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
  wire mul_32s_32s_32_1_1_U1_n_4;
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
  wire mul_32s_32s_32_1_1_U1_n_5;
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
  wire mul_32s_32s_32_1_1_U1_n_6;
  wire mul_32s_32s_32_1_1_U1_n_60;
  wire mul_32s_32s_32_1_1_U1_n_61;
  wire mul_32s_32s_32_1_1_U1_n_62;
  wire mul_32s_32s_32_1_1_U1_n_63;
  wire mul_32s_32s_32_1_1_U1_n_64;
  wire mul_32s_32s_32_1_1_U1_n_65;
  wire mul_32s_32s_32_1_1_U1_n_7;
  wire mul_32s_32s_32_1_1_U1_n_8;
  wire mul_32s_32s_32_1_1_U1_n_82;
  wire mul_32s_32s_32_1_1_U1_n_83;
  wire mul_32s_32s_32_1_1_U1_n_84;
  wire mul_32s_32s_32_1_1_U1_n_85;
  wire mul_32s_32s_32_1_1_U1_n_86;
  wire mul_32s_32s_32_1_1_U1_n_87;
  wire mul_32s_32s_32_1_1_U1_n_88;
  wire mul_32s_32s_32_1_1_U1_n_89;
  wire mul_32s_32s_32_1_1_U1_n_9;
  wire mul_32s_32s_32_1_1_U1_n_90;
  wire mul_32s_32s_32_1_1_U1_n_91;
  wire mul_32s_32s_32_1_1_U1_n_92;
  wire mul_32s_32s_32_1_1_U1_n_93;
  wire mul_32s_32s_32_1_1_U1_n_94;
  wire mul_32s_32s_32_1_1_U1_n_95;
  wire mul_32s_32s_32_1_1_U1_n_96;
  wire mul_32s_32s_32_1_1_U1_n_97;
  wire mul_32s_32s_32_1_1_U2_n_0;
  wire mul_32s_32s_32_1_1_U2_n_1;
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
  wire mul_32s_32s_32_1_1_U2_n_7;
  wire mul_32s_32s_32_1_1_U2_n_8;
  wire mul_32s_32s_32_1_1_U2_n_81;
  wire mul_32s_32s_32_1_1_U2_n_82;
  wire mul_32s_32s_32_1_1_U2_n_83;
  wire mul_32s_32s_32_1_1_U2_n_84;
  wire mul_32s_32s_32_1_1_U2_n_85;
  wire mul_32s_32s_32_1_1_U2_n_86;
  wire mul_32s_32s_32_1_1_U2_n_87;
  wire mul_32s_32s_32_1_1_U2_n_88;
  wire mul_32s_32s_32_1_1_U2_n_89;
  wire mul_32s_32s_32_1_1_U2_n_9;
  wire mul_32s_32s_32_1_1_U2_n_90;
  wire mul_32s_32s_32_1_1_U2_n_91;
  wire mul_32s_32s_32_1_1_U2_n_92;
  wire mul_32s_32s_32_1_1_U2_n_93;
  wire mul_32s_32s_32_1_1_U2_n_94;
  wire mul_32s_32s_32_1_1_U2_n_95;
  wire mul_32s_32s_32_1_1_U2_n_96;
  wire mul_32s_32s_32_1_1_U3_n_1;
  wire mul_32s_32s_32_1_1_U3_n_10;
  wire mul_32s_32s_32_1_1_U3_n_11;
  wire mul_32s_32s_32_1_1_U3_n_12;
  wire mul_32s_32s_32_1_1_U3_n_13;
  wire mul_32s_32s_32_1_1_U3_n_14;
  wire mul_32s_32s_32_1_1_U3_n_15;
  wire mul_32s_32s_32_1_1_U3_n_16;
  wire mul_32s_32s_32_1_1_U3_n_17;
  wire mul_32s_32s_32_1_1_U3_n_18;
  wire mul_32s_32s_32_1_1_U3_n_19;
  wire mul_32s_32s_32_1_1_U3_n_2;
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
  wire mul_32s_32s_32_1_1_U3_n_3;
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
  wire mul_32s_32s_32_1_1_U3_n_4;
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
  wire mul_32s_32s_32_1_1_U3_n_5;
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
  wire mul_32s_32s_32_1_1_U3_n_6;
  wire mul_32s_32s_32_1_1_U3_n_60;
  wire mul_32s_32s_32_1_1_U3_n_61;
  wire mul_32s_32s_32_1_1_U3_n_62;
  wire mul_32s_32s_32_1_1_U3_n_63;
  wire mul_32s_32s_32_1_1_U3_n_64;
  wire mul_32s_32s_32_1_1_U3_n_65;
  wire mul_32s_32s_32_1_1_U3_n_7;
  wire mul_32s_32s_32_1_1_U3_n_8;
  wire mul_32s_32s_32_1_1_U3_n_81;
  wire mul_32s_32s_32_1_1_U3_n_82;
  wire mul_32s_32s_32_1_1_U3_n_83;
  wire mul_32s_32s_32_1_1_U3_n_84;
  wire mul_32s_32s_32_1_1_U3_n_85;
  wire mul_32s_32s_32_1_1_U3_n_86;
  wire mul_32s_32s_32_1_1_U3_n_87;
  wire mul_32s_32s_32_1_1_U3_n_88;
  wire mul_32s_32s_32_1_1_U3_n_89;
  wire mul_32s_32s_32_1_1_U3_n_9;
  wire mul_32s_32s_32_1_1_U3_n_90;
  wire mul_32s_32s_32_1_1_U3_n_91;
  wire mul_32s_32s_32_1_1_U3_n_92;
  wire mul_32s_32s_32_1_1_U3_n_93;
  wire mul_32s_32s_32_1_1_U3_n_94;
  wire mul_32s_32s_32_1_1_U4_n_0;
  wire mul_32s_32s_32_1_1_U4_n_1;
  wire mul_32s_32s_32_1_1_U4_n_10;
  wire mul_32s_32s_32_1_1_U4_n_11;
  wire mul_32s_32s_32_1_1_U4_n_12;
  wire mul_32s_32s_32_1_1_U4_n_13;
  wire mul_32s_32s_32_1_1_U4_n_14;
  wire mul_32s_32s_32_1_1_U4_n_15;
  wire mul_32s_32s_32_1_1_U4_n_16;
  wire mul_32s_32s_32_1_1_U4_n_17;
  wire mul_32s_32s_32_1_1_U4_n_18;
  wire mul_32s_32s_32_1_1_U4_n_19;
  wire mul_32s_32s_32_1_1_U4_n_2;
  wire mul_32s_32s_32_1_1_U4_n_20;
  wire mul_32s_32s_32_1_1_U4_n_21;
  wire mul_32s_32s_32_1_1_U4_n_22;
  wire mul_32s_32s_32_1_1_U4_n_23;
  wire mul_32s_32s_32_1_1_U4_n_24;
  wire mul_32s_32s_32_1_1_U4_n_25;
  wire mul_32s_32s_32_1_1_U4_n_26;
  wire mul_32s_32s_32_1_1_U4_n_27;
  wire mul_32s_32s_32_1_1_U4_n_28;
  wire mul_32s_32s_32_1_1_U4_n_29;
  wire mul_32s_32s_32_1_1_U4_n_3;
  wire mul_32s_32s_32_1_1_U4_n_30;
  wire mul_32s_32s_32_1_1_U4_n_31;
  wire mul_32s_32s_32_1_1_U4_n_32;
  wire mul_32s_32s_32_1_1_U4_n_33;
  wire mul_32s_32s_32_1_1_U4_n_34;
  wire mul_32s_32s_32_1_1_U4_n_35;
  wire mul_32s_32s_32_1_1_U4_n_36;
  wire mul_32s_32s_32_1_1_U4_n_37;
  wire mul_32s_32s_32_1_1_U4_n_38;
  wire mul_32s_32s_32_1_1_U4_n_39;
  wire mul_32s_32s_32_1_1_U4_n_4;
  wire mul_32s_32s_32_1_1_U4_n_40;
  wire mul_32s_32s_32_1_1_U4_n_41;
  wire mul_32s_32s_32_1_1_U4_n_42;
  wire mul_32s_32s_32_1_1_U4_n_43;
  wire mul_32s_32s_32_1_1_U4_n_44;
  wire mul_32s_32s_32_1_1_U4_n_45;
  wire mul_32s_32s_32_1_1_U4_n_46;
  wire mul_32s_32s_32_1_1_U4_n_47;
  wire mul_32s_32s_32_1_1_U4_n_48;
  wire mul_32s_32s_32_1_1_U4_n_49;
  wire mul_32s_32s_32_1_1_U4_n_5;
  wire mul_32s_32s_32_1_1_U4_n_50;
  wire mul_32s_32s_32_1_1_U4_n_51;
  wire mul_32s_32s_32_1_1_U4_n_52;
  wire mul_32s_32s_32_1_1_U4_n_53;
  wire mul_32s_32s_32_1_1_U4_n_54;
  wire mul_32s_32s_32_1_1_U4_n_55;
  wire mul_32s_32s_32_1_1_U4_n_56;
  wire mul_32s_32s_32_1_1_U4_n_57;
  wire mul_32s_32s_32_1_1_U4_n_58;
  wire mul_32s_32s_32_1_1_U4_n_59;
  wire mul_32s_32s_32_1_1_U4_n_6;
  wire mul_32s_32s_32_1_1_U4_n_60;
  wire mul_32s_32s_32_1_1_U4_n_61;
  wire mul_32s_32s_32_1_1_U4_n_62;
  wire mul_32s_32s_32_1_1_U4_n_63;
  wire mul_32s_32s_32_1_1_U4_n_64;
  wire mul_32s_32s_32_1_1_U4_n_7;
  wire mul_32s_32s_32_1_1_U4_n_8;
  wire mul_32s_32s_32_1_1_U4_n_80;
  wire mul_32s_32s_32_1_1_U4_n_81;
  wire mul_32s_32s_32_1_1_U4_n_82;
  wire mul_32s_32s_32_1_1_U4_n_83;
  wire mul_32s_32s_32_1_1_U4_n_84;
  wire mul_32s_32s_32_1_1_U4_n_85;
  wire mul_32s_32s_32_1_1_U4_n_86;
  wire mul_32s_32s_32_1_1_U4_n_87;
  wire mul_32s_32s_32_1_1_U4_n_88;
  wire mul_32s_32s_32_1_1_U4_n_89;
  wire mul_32s_32s_32_1_1_U4_n_9;
  wire mul_32s_32s_32_1_1_U4_n_90;
  wire mul_32s_32s_32_1_1_U4_n_91;
  wire mul_32s_32s_32_1_1_U4_n_92;
  wire mul_32s_32s_32_1_1_U4_n_93;
  wire mul_32s_32s_32_1_1_U5_n_0;
  wire mul_32s_32s_32_1_1_U5_n_1;
  wire mul_32s_32s_32_1_1_U5_n_10;
  wire mul_32s_32s_32_1_1_U5_n_11;
  wire mul_32s_32s_32_1_1_U5_n_12;
  wire mul_32s_32s_32_1_1_U5_n_13;
  wire mul_32s_32s_32_1_1_U5_n_14;
  wire mul_32s_32s_32_1_1_U5_n_15;
  wire mul_32s_32s_32_1_1_U5_n_16;
  wire mul_32s_32s_32_1_1_U5_n_17;
  wire mul_32s_32s_32_1_1_U5_n_18;
  wire mul_32s_32s_32_1_1_U5_n_19;
  wire mul_32s_32s_32_1_1_U5_n_2;
  wire mul_32s_32s_32_1_1_U5_n_20;
  wire mul_32s_32s_32_1_1_U5_n_21;
  wire mul_32s_32s_32_1_1_U5_n_22;
  wire mul_32s_32s_32_1_1_U5_n_23;
  wire mul_32s_32s_32_1_1_U5_n_24;
  wire mul_32s_32s_32_1_1_U5_n_25;
  wire mul_32s_32s_32_1_1_U5_n_26;
  wire mul_32s_32s_32_1_1_U5_n_27;
  wire mul_32s_32s_32_1_1_U5_n_28;
  wire mul_32s_32s_32_1_1_U5_n_29;
  wire mul_32s_32s_32_1_1_U5_n_3;
  wire mul_32s_32s_32_1_1_U5_n_30;
  wire mul_32s_32s_32_1_1_U5_n_31;
  wire mul_32s_32s_32_1_1_U5_n_32;
  wire mul_32s_32s_32_1_1_U5_n_33;
  wire mul_32s_32s_32_1_1_U5_n_34;
  wire mul_32s_32s_32_1_1_U5_n_35;
  wire mul_32s_32s_32_1_1_U5_n_36;
  wire mul_32s_32s_32_1_1_U5_n_37;
  wire mul_32s_32s_32_1_1_U5_n_38;
  wire mul_32s_32s_32_1_1_U5_n_39;
  wire mul_32s_32s_32_1_1_U5_n_4;
  wire mul_32s_32s_32_1_1_U5_n_40;
  wire mul_32s_32s_32_1_1_U5_n_41;
  wire mul_32s_32s_32_1_1_U5_n_42;
  wire mul_32s_32s_32_1_1_U5_n_43;
  wire mul_32s_32s_32_1_1_U5_n_44;
  wire mul_32s_32s_32_1_1_U5_n_45;
  wire mul_32s_32s_32_1_1_U5_n_46;
  wire mul_32s_32s_32_1_1_U5_n_47;
  wire mul_32s_32s_32_1_1_U5_n_48;
  wire mul_32s_32s_32_1_1_U5_n_49;
  wire mul_32s_32s_32_1_1_U5_n_5;
  wire mul_32s_32s_32_1_1_U5_n_50;
  wire mul_32s_32s_32_1_1_U5_n_51;
  wire mul_32s_32s_32_1_1_U5_n_52;
  wire mul_32s_32s_32_1_1_U5_n_53;
  wire mul_32s_32s_32_1_1_U5_n_54;
  wire mul_32s_32s_32_1_1_U5_n_55;
  wire mul_32s_32s_32_1_1_U5_n_56;
  wire mul_32s_32s_32_1_1_U5_n_57;
  wire mul_32s_32s_32_1_1_U5_n_58;
  wire mul_32s_32s_32_1_1_U5_n_59;
  wire mul_32s_32s_32_1_1_U5_n_6;
  wire mul_32s_32s_32_1_1_U5_n_60;
  wire mul_32s_32s_32_1_1_U5_n_61;
  wire mul_32s_32s_32_1_1_U5_n_62;
  wire mul_32s_32s_32_1_1_U5_n_63;
  wire mul_32s_32s_32_1_1_U5_n_64;
  wire mul_32s_32s_32_1_1_U5_n_7;
  wire mul_32s_32s_32_1_1_U5_n_8;
  wire mul_32s_32s_32_1_1_U5_n_9;
  wire mul_32s_32s_32_1_1_U6_n_1;
  wire mul_32s_32s_32_1_1_U6_n_10;
  wire mul_32s_32s_32_1_1_U6_n_11;
  wire mul_32s_32s_32_1_1_U6_n_12;
  wire mul_32s_32s_32_1_1_U6_n_13;
  wire mul_32s_32s_32_1_1_U6_n_14;
  wire mul_32s_32s_32_1_1_U6_n_15;
  wire mul_32s_32s_32_1_1_U6_n_16;
  wire mul_32s_32s_32_1_1_U6_n_17;
  wire mul_32s_32s_32_1_1_U6_n_18;
  wire mul_32s_32s_32_1_1_U6_n_19;
  wire mul_32s_32s_32_1_1_U6_n_2;
  wire mul_32s_32s_32_1_1_U6_n_20;
  wire mul_32s_32s_32_1_1_U6_n_21;
  wire mul_32s_32s_32_1_1_U6_n_22;
  wire mul_32s_32s_32_1_1_U6_n_23;
  wire mul_32s_32s_32_1_1_U6_n_24;
  wire mul_32s_32s_32_1_1_U6_n_25;
  wire mul_32s_32s_32_1_1_U6_n_26;
  wire mul_32s_32s_32_1_1_U6_n_27;
  wire mul_32s_32s_32_1_1_U6_n_28;
  wire mul_32s_32s_32_1_1_U6_n_29;
  wire mul_32s_32s_32_1_1_U6_n_3;
  wire mul_32s_32s_32_1_1_U6_n_30;
  wire mul_32s_32s_32_1_1_U6_n_31;
  wire mul_32s_32s_32_1_1_U6_n_32;
  wire mul_32s_32s_32_1_1_U6_n_33;
  wire mul_32s_32s_32_1_1_U6_n_34;
  wire mul_32s_32s_32_1_1_U6_n_35;
  wire mul_32s_32s_32_1_1_U6_n_36;
  wire mul_32s_32s_32_1_1_U6_n_37;
  wire mul_32s_32s_32_1_1_U6_n_38;
  wire mul_32s_32s_32_1_1_U6_n_39;
  wire mul_32s_32s_32_1_1_U6_n_4;
  wire mul_32s_32s_32_1_1_U6_n_40;
  wire mul_32s_32s_32_1_1_U6_n_41;
  wire mul_32s_32s_32_1_1_U6_n_42;
  wire mul_32s_32s_32_1_1_U6_n_43;
  wire mul_32s_32s_32_1_1_U6_n_44;
  wire mul_32s_32s_32_1_1_U6_n_45;
  wire mul_32s_32s_32_1_1_U6_n_46;
  wire mul_32s_32s_32_1_1_U6_n_47;
  wire mul_32s_32s_32_1_1_U6_n_48;
  wire mul_32s_32s_32_1_1_U6_n_49;
  wire mul_32s_32s_32_1_1_U6_n_5;
  wire mul_32s_32s_32_1_1_U6_n_50;
  wire mul_32s_32s_32_1_1_U6_n_51;
  wire mul_32s_32s_32_1_1_U6_n_52;
  wire mul_32s_32s_32_1_1_U6_n_53;
  wire mul_32s_32s_32_1_1_U6_n_54;
  wire mul_32s_32s_32_1_1_U6_n_55;
  wire mul_32s_32s_32_1_1_U6_n_56;
  wire mul_32s_32s_32_1_1_U6_n_57;
  wire mul_32s_32s_32_1_1_U6_n_58;
  wire mul_32s_32s_32_1_1_U6_n_59;
  wire mul_32s_32s_32_1_1_U6_n_6;
  wire mul_32s_32s_32_1_1_U6_n_60;
  wire mul_32s_32s_32_1_1_U6_n_61;
  wire mul_32s_32s_32_1_1_U6_n_62;
  wire mul_32s_32s_32_1_1_U6_n_63;
  wire mul_32s_32s_32_1_1_U6_n_64;
  wire mul_32s_32s_32_1_1_U6_n_65;
  wire mul_32s_32s_32_1_1_U6_n_7;
  wire mul_32s_32s_32_1_1_U6_n_8;
  wire mul_32s_32s_32_1_1_U6_n_81;
  wire mul_32s_32s_32_1_1_U6_n_82;
  wire mul_32s_32s_32_1_1_U6_n_83;
  wire mul_32s_32s_32_1_1_U6_n_84;
  wire mul_32s_32s_32_1_1_U6_n_85;
  wire mul_32s_32s_32_1_1_U6_n_86;
  wire mul_32s_32s_32_1_1_U6_n_87;
  wire mul_32s_32s_32_1_1_U6_n_88;
  wire mul_32s_32s_32_1_1_U6_n_89;
  wire mul_32s_32s_32_1_1_U6_n_9;
  wire mul_32s_32s_32_1_1_U6_n_90;
  wire mul_32s_32s_32_1_1_U6_n_91;
  wire mul_32s_32s_32_1_1_U6_n_92;
  wire mul_32s_32s_32_1_1_U6_n_93;
  wire mul_32s_32s_32_1_1_U6_n_94;
  wire mul_32s_32s_32_1_1_U6_n_95;
  wire mul_32s_32s_32_1_1_U6_n_96;
  wire mul_32s_32s_32_1_1_U7_n_1;
  wire mul_32s_32s_32_1_1_U7_n_10;
  wire mul_32s_32s_32_1_1_U7_n_11;
  wire mul_32s_32s_32_1_1_U7_n_12;
  wire mul_32s_32s_32_1_1_U7_n_13;
  wire mul_32s_32s_32_1_1_U7_n_14;
  wire mul_32s_32s_32_1_1_U7_n_15;
  wire mul_32s_32s_32_1_1_U7_n_16;
  wire mul_32s_32s_32_1_1_U7_n_17;
  wire mul_32s_32s_32_1_1_U7_n_18;
  wire mul_32s_32s_32_1_1_U7_n_19;
  wire mul_32s_32s_32_1_1_U7_n_2;
  wire mul_32s_32s_32_1_1_U7_n_20;
  wire mul_32s_32s_32_1_1_U7_n_21;
  wire mul_32s_32s_32_1_1_U7_n_22;
  wire mul_32s_32s_32_1_1_U7_n_23;
  wire mul_32s_32s_32_1_1_U7_n_24;
  wire mul_32s_32s_32_1_1_U7_n_25;
  wire mul_32s_32s_32_1_1_U7_n_26;
  wire mul_32s_32s_32_1_1_U7_n_27;
  wire mul_32s_32s_32_1_1_U7_n_28;
  wire mul_32s_32s_32_1_1_U7_n_29;
  wire mul_32s_32s_32_1_1_U7_n_3;
  wire mul_32s_32s_32_1_1_U7_n_30;
  wire mul_32s_32s_32_1_1_U7_n_31;
  wire mul_32s_32s_32_1_1_U7_n_32;
  wire mul_32s_32s_32_1_1_U7_n_33;
  wire mul_32s_32s_32_1_1_U7_n_34;
  wire mul_32s_32s_32_1_1_U7_n_35;
  wire mul_32s_32s_32_1_1_U7_n_36;
  wire mul_32s_32s_32_1_1_U7_n_37;
  wire mul_32s_32s_32_1_1_U7_n_38;
  wire mul_32s_32s_32_1_1_U7_n_39;
  wire mul_32s_32s_32_1_1_U7_n_4;
  wire mul_32s_32s_32_1_1_U7_n_40;
  wire mul_32s_32s_32_1_1_U7_n_41;
  wire mul_32s_32s_32_1_1_U7_n_42;
  wire mul_32s_32s_32_1_1_U7_n_43;
  wire mul_32s_32s_32_1_1_U7_n_44;
  wire mul_32s_32s_32_1_1_U7_n_45;
  wire mul_32s_32s_32_1_1_U7_n_46;
  wire mul_32s_32s_32_1_1_U7_n_47;
  wire mul_32s_32s_32_1_1_U7_n_48;
  wire mul_32s_32s_32_1_1_U7_n_49;
  wire mul_32s_32s_32_1_1_U7_n_5;
  wire mul_32s_32s_32_1_1_U7_n_50;
  wire mul_32s_32s_32_1_1_U7_n_51;
  wire mul_32s_32s_32_1_1_U7_n_52;
  wire mul_32s_32s_32_1_1_U7_n_53;
  wire mul_32s_32s_32_1_1_U7_n_54;
  wire mul_32s_32s_32_1_1_U7_n_55;
  wire mul_32s_32s_32_1_1_U7_n_56;
  wire mul_32s_32s_32_1_1_U7_n_57;
  wire mul_32s_32s_32_1_1_U7_n_58;
  wire mul_32s_32s_32_1_1_U7_n_59;
  wire mul_32s_32s_32_1_1_U7_n_6;
  wire mul_32s_32s_32_1_1_U7_n_60;
  wire mul_32s_32s_32_1_1_U7_n_61;
  wire mul_32s_32s_32_1_1_U7_n_62;
  wire mul_32s_32s_32_1_1_U7_n_63;
  wire mul_32s_32s_32_1_1_U7_n_64;
  wire mul_32s_32s_32_1_1_U7_n_65;
  wire mul_32s_32s_32_1_1_U7_n_7;
  wire mul_32s_32s_32_1_1_U7_n_8;
  wire mul_32s_32s_32_1_1_U7_n_81;
  wire mul_32s_32s_32_1_1_U7_n_82;
  wire mul_32s_32s_32_1_1_U7_n_83;
  wire mul_32s_32s_32_1_1_U7_n_84;
  wire mul_32s_32s_32_1_1_U7_n_85;
  wire mul_32s_32s_32_1_1_U7_n_86;
  wire mul_32s_32s_32_1_1_U7_n_87;
  wire mul_32s_32s_32_1_1_U7_n_88;
  wire mul_32s_32s_32_1_1_U7_n_89;
  wire mul_32s_32s_32_1_1_U7_n_9;
  wire mul_32s_32s_32_1_1_U7_n_90;
  wire mul_32s_32s_32_1_1_U7_n_91;
  wire mul_32s_32s_32_1_1_U7_n_92;
  wire mul_32s_32s_32_1_1_U7_n_93;
  wire mul_32s_32s_32_1_1_U7_n_94;
  wire mul_32s_32s_32_1_1_U7_n_95;
  wire mul_32s_32s_32_1_1_U7_n_96;
  wire mul_32s_32s_32_1_1_U8_n_0;
  wire mul_32s_32s_32_1_1_U8_n_1;
  wire mul_32s_32s_32_1_1_U8_n_10;
  wire mul_32s_32s_32_1_1_U8_n_11;
  wire mul_32s_32s_32_1_1_U8_n_12;
  wire mul_32s_32s_32_1_1_U8_n_13;
  wire mul_32s_32s_32_1_1_U8_n_14;
  wire mul_32s_32s_32_1_1_U8_n_15;
  wire mul_32s_32s_32_1_1_U8_n_16;
  wire mul_32s_32s_32_1_1_U8_n_17;
  wire mul_32s_32s_32_1_1_U8_n_18;
  wire mul_32s_32s_32_1_1_U8_n_19;
  wire mul_32s_32s_32_1_1_U8_n_2;
  wire mul_32s_32s_32_1_1_U8_n_20;
  wire mul_32s_32s_32_1_1_U8_n_21;
  wire mul_32s_32s_32_1_1_U8_n_22;
  wire mul_32s_32s_32_1_1_U8_n_23;
  wire mul_32s_32s_32_1_1_U8_n_24;
  wire mul_32s_32s_32_1_1_U8_n_25;
  wire mul_32s_32s_32_1_1_U8_n_26;
  wire mul_32s_32s_32_1_1_U8_n_27;
  wire mul_32s_32s_32_1_1_U8_n_28;
  wire mul_32s_32s_32_1_1_U8_n_29;
  wire mul_32s_32s_32_1_1_U8_n_3;
  wire mul_32s_32s_32_1_1_U8_n_30;
  wire mul_32s_32s_32_1_1_U8_n_31;
  wire mul_32s_32s_32_1_1_U8_n_32;
  wire mul_32s_32s_32_1_1_U8_n_33;
  wire mul_32s_32s_32_1_1_U8_n_34;
  wire mul_32s_32s_32_1_1_U8_n_35;
  wire mul_32s_32s_32_1_1_U8_n_36;
  wire mul_32s_32s_32_1_1_U8_n_37;
  wire mul_32s_32s_32_1_1_U8_n_38;
  wire mul_32s_32s_32_1_1_U8_n_39;
  wire mul_32s_32s_32_1_1_U8_n_4;
  wire mul_32s_32s_32_1_1_U8_n_40;
  wire mul_32s_32s_32_1_1_U8_n_41;
  wire mul_32s_32s_32_1_1_U8_n_42;
  wire mul_32s_32s_32_1_1_U8_n_43;
  wire mul_32s_32s_32_1_1_U8_n_44;
  wire mul_32s_32s_32_1_1_U8_n_45;
  wire mul_32s_32s_32_1_1_U8_n_46;
  wire mul_32s_32s_32_1_1_U8_n_47;
  wire mul_32s_32s_32_1_1_U8_n_48;
  wire mul_32s_32s_32_1_1_U8_n_49;
  wire mul_32s_32s_32_1_1_U8_n_5;
  wire mul_32s_32s_32_1_1_U8_n_50;
  wire mul_32s_32s_32_1_1_U8_n_51;
  wire mul_32s_32s_32_1_1_U8_n_52;
  wire mul_32s_32s_32_1_1_U8_n_53;
  wire mul_32s_32s_32_1_1_U8_n_54;
  wire mul_32s_32s_32_1_1_U8_n_55;
  wire mul_32s_32s_32_1_1_U8_n_56;
  wire mul_32s_32s_32_1_1_U8_n_57;
  wire mul_32s_32s_32_1_1_U8_n_58;
  wire mul_32s_32s_32_1_1_U8_n_59;
  wire mul_32s_32s_32_1_1_U8_n_6;
  wire mul_32s_32s_32_1_1_U8_n_60;
  wire mul_32s_32s_32_1_1_U8_n_61;
  wire mul_32s_32s_32_1_1_U8_n_62;
  wire mul_32s_32s_32_1_1_U8_n_63;
  wire mul_32s_32s_32_1_1_U8_n_64;
  wire mul_32s_32s_32_1_1_U8_n_7;
  wire mul_32s_32s_32_1_1_U8_n_8;
  wire mul_32s_32s_32_1_1_U8_n_9;
  wire mul_32s_32s_32_1_1_U9_n_16;
  wire mul_32s_32s_32_1_1_U9_n_17;
  wire mul_32s_32s_32_1_1_U9_n_18;
  wire mul_32s_32s_32_1_1_U9_n_19;
  wire mul_32s_32s_32_1_1_U9_n_20;
  wire mul_32s_32s_32_1_1_U9_n_21;
  wire mul_32s_32s_32_1_1_U9_n_22;
  wire mul_32s_32s_32_1_1_U9_n_23;
  wire mul_32s_32s_32_1_1_U9_n_24;
  wire mul_32s_32s_32_1_1_U9_n_25;
  wire mul_32s_32s_32_1_1_U9_n_26;
  wire mul_32s_32s_32_1_1_U9_n_27;
  wire mul_32s_32s_32_1_1_U9_n_28;
  wire mul_32s_32s_32_1_1_U9_n_29;
  wire mul_32s_32s_32_1_1_U9_n_30;
  wire mul_32s_32s_32_1_1_U9_n_31;
  wire mul_ln17_1_reg_7950;
  wire \mul_ln17_1_reg_795_reg[0]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[10]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[11]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[12]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[13]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[14]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[15]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[16]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[1]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[2]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[3]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[4]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[5]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[6]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[7]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[8]__0_n_0 ;
  wire \mul_ln17_1_reg_795_reg[9]__0_n_0 ;
  wire [31:16]mul_ln17_1_reg_795_reg__1;
  wire mul_ln17_1_reg_795_reg_n_100;
  wire mul_ln17_1_reg_795_reg_n_101;
  wire mul_ln17_1_reg_795_reg_n_102;
  wire mul_ln17_1_reg_795_reg_n_103;
  wire mul_ln17_1_reg_795_reg_n_104;
  wire mul_ln17_1_reg_795_reg_n_105;
  wire mul_ln17_1_reg_795_reg_n_58;
  wire mul_ln17_1_reg_795_reg_n_59;
  wire mul_ln17_1_reg_795_reg_n_60;
  wire mul_ln17_1_reg_795_reg_n_61;
  wire mul_ln17_1_reg_795_reg_n_62;
  wire mul_ln17_1_reg_795_reg_n_63;
  wire mul_ln17_1_reg_795_reg_n_64;
  wire mul_ln17_1_reg_795_reg_n_65;
  wire mul_ln17_1_reg_795_reg_n_66;
  wire mul_ln17_1_reg_795_reg_n_67;
  wire mul_ln17_1_reg_795_reg_n_68;
  wire mul_ln17_1_reg_795_reg_n_69;
  wire mul_ln17_1_reg_795_reg_n_70;
  wire mul_ln17_1_reg_795_reg_n_71;
  wire mul_ln17_1_reg_795_reg_n_72;
  wire mul_ln17_1_reg_795_reg_n_73;
  wire mul_ln17_1_reg_795_reg_n_74;
  wire mul_ln17_1_reg_795_reg_n_75;
  wire mul_ln17_1_reg_795_reg_n_76;
  wire mul_ln17_1_reg_795_reg_n_77;
  wire mul_ln17_1_reg_795_reg_n_78;
  wire mul_ln17_1_reg_795_reg_n_79;
  wire mul_ln17_1_reg_795_reg_n_80;
  wire mul_ln17_1_reg_795_reg_n_81;
  wire mul_ln17_1_reg_795_reg_n_82;
  wire mul_ln17_1_reg_795_reg_n_83;
  wire mul_ln17_1_reg_795_reg_n_84;
  wire mul_ln17_1_reg_795_reg_n_85;
  wire mul_ln17_1_reg_795_reg_n_86;
  wire mul_ln17_1_reg_795_reg_n_87;
  wire mul_ln17_1_reg_795_reg_n_88;
  wire mul_ln17_1_reg_795_reg_n_89;
  wire mul_ln17_1_reg_795_reg_n_90;
  wire mul_ln17_1_reg_795_reg_n_91;
  wire mul_ln17_1_reg_795_reg_n_92;
  wire mul_ln17_1_reg_795_reg_n_93;
  wire mul_ln17_1_reg_795_reg_n_94;
  wire mul_ln17_1_reg_795_reg_n_95;
  wire mul_ln17_1_reg_795_reg_n_96;
  wire mul_ln17_1_reg_795_reg_n_97;
  wire mul_ln17_1_reg_795_reg_n_98;
  wire mul_ln17_1_reg_795_reg_n_99;
  wire mul_ln17_2_reg_8100;
  wire \mul_ln17_2_reg_810_reg[0]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[10]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[11]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[12]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[13]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[14]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[15]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[16]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[1]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[2]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[3]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[4]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[5]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[6]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[7]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[8]__0_n_0 ;
  wire \mul_ln17_2_reg_810_reg[9]__0_n_0 ;
  wire [30:16]mul_ln17_2_reg_810_reg__1;
  wire mul_ln17_2_reg_810_reg_n_100;
  wire mul_ln17_2_reg_810_reg_n_101;
  wire mul_ln17_2_reg_810_reg_n_102;
  wire mul_ln17_2_reg_810_reg_n_103;
  wire mul_ln17_2_reg_810_reg_n_104;
  wire mul_ln17_2_reg_810_reg_n_105;
  wire mul_ln17_2_reg_810_reg_n_58;
  wire mul_ln17_2_reg_810_reg_n_59;
  wire mul_ln17_2_reg_810_reg_n_60;
  wire mul_ln17_2_reg_810_reg_n_61;
  wire mul_ln17_2_reg_810_reg_n_62;
  wire mul_ln17_2_reg_810_reg_n_63;
  wire mul_ln17_2_reg_810_reg_n_64;
  wire mul_ln17_2_reg_810_reg_n_65;
  wire mul_ln17_2_reg_810_reg_n_66;
  wire mul_ln17_2_reg_810_reg_n_67;
  wire mul_ln17_2_reg_810_reg_n_68;
  wire mul_ln17_2_reg_810_reg_n_69;
  wire mul_ln17_2_reg_810_reg_n_70;
  wire mul_ln17_2_reg_810_reg_n_71;
  wire mul_ln17_2_reg_810_reg_n_72;
  wire mul_ln17_2_reg_810_reg_n_73;
  wire mul_ln17_2_reg_810_reg_n_74;
  wire mul_ln17_2_reg_810_reg_n_75;
  wire mul_ln17_2_reg_810_reg_n_76;
  wire mul_ln17_2_reg_810_reg_n_77;
  wire mul_ln17_2_reg_810_reg_n_78;
  wire mul_ln17_2_reg_810_reg_n_79;
  wire mul_ln17_2_reg_810_reg_n_80;
  wire mul_ln17_2_reg_810_reg_n_81;
  wire mul_ln17_2_reg_810_reg_n_82;
  wire mul_ln17_2_reg_810_reg_n_83;
  wire mul_ln17_2_reg_810_reg_n_84;
  wire mul_ln17_2_reg_810_reg_n_85;
  wire mul_ln17_2_reg_810_reg_n_86;
  wire mul_ln17_2_reg_810_reg_n_87;
  wire mul_ln17_2_reg_810_reg_n_88;
  wire mul_ln17_2_reg_810_reg_n_89;
  wire mul_ln17_2_reg_810_reg_n_90;
  wire mul_ln17_2_reg_810_reg_n_91;
  wire mul_ln17_2_reg_810_reg_n_92;
  wire mul_ln17_2_reg_810_reg_n_93;
  wire mul_ln17_2_reg_810_reg_n_94;
  wire mul_ln17_2_reg_810_reg_n_95;
  wire mul_ln17_2_reg_810_reg_n_96;
  wire mul_ln17_2_reg_810_reg_n_97;
  wire mul_ln17_2_reg_810_reg_n_98;
  wire mul_ln17_2_reg_810_reg_n_99;
  wire \mul_ln17_3_reg_815_reg[0]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[10]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[11]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[12]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[13]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[14]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[15]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[16]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[1]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[2]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[3]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[4]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[5]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[6]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[7]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[8]__0_n_0 ;
  wire \mul_ln17_3_reg_815_reg[9]__0_n_0 ;
  wire [30:16]mul_ln17_3_reg_815_reg__1;
  wire mul_ln17_3_reg_815_reg_n_100;
  wire mul_ln17_3_reg_815_reg_n_101;
  wire mul_ln17_3_reg_815_reg_n_102;
  wire mul_ln17_3_reg_815_reg_n_103;
  wire mul_ln17_3_reg_815_reg_n_104;
  wire mul_ln17_3_reg_815_reg_n_105;
  wire mul_ln17_3_reg_815_reg_n_58;
  wire mul_ln17_3_reg_815_reg_n_59;
  wire mul_ln17_3_reg_815_reg_n_60;
  wire mul_ln17_3_reg_815_reg_n_61;
  wire mul_ln17_3_reg_815_reg_n_62;
  wire mul_ln17_3_reg_815_reg_n_63;
  wire mul_ln17_3_reg_815_reg_n_64;
  wire mul_ln17_3_reg_815_reg_n_65;
  wire mul_ln17_3_reg_815_reg_n_66;
  wire mul_ln17_3_reg_815_reg_n_67;
  wire mul_ln17_3_reg_815_reg_n_68;
  wire mul_ln17_3_reg_815_reg_n_69;
  wire mul_ln17_3_reg_815_reg_n_70;
  wire mul_ln17_3_reg_815_reg_n_71;
  wire mul_ln17_3_reg_815_reg_n_72;
  wire mul_ln17_3_reg_815_reg_n_73;
  wire mul_ln17_3_reg_815_reg_n_74;
  wire mul_ln17_3_reg_815_reg_n_75;
  wire mul_ln17_3_reg_815_reg_n_76;
  wire mul_ln17_3_reg_815_reg_n_77;
  wire mul_ln17_3_reg_815_reg_n_78;
  wire mul_ln17_3_reg_815_reg_n_79;
  wire mul_ln17_3_reg_815_reg_n_80;
  wire mul_ln17_3_reg_815_reg_n_81;
  wire mul_ln17_3_reg_815_reg_n_82;
  wire mul_ln17_3_reg_815_reg_n_83;
  wire mul_ln17_3_reg_815_reg_n_84;
  wire mul_ln17_3_reg_815_reg_n_85;
  wire mul_ln17_3_reg_815_reg_n_86;
  wire mul_ln17_3_reg_815_reg_n_87;
  wire mul_ln17_3_reg_815_reg_n_88;
  wire mul_ln17_3_reg_815_reg_n_89;
  wire mul_ln17_3_reg_815_reg_n_90;
  wire mul_ln17_3_reg_815_reg_n_91;
  wire mul_ln17_3_reg_815_reg_n_92;
  wire mul_ln17_3_reg_815_reg_n_93;
  wire mul_ln17_3_reg_815_reg_n_94;
  wire mul_ln17_3_reg_815_reg_n_95;
  wire mul_ln17_3_reg_815_reg_n_96;
  wire mul_ln17_3_reg_815_reg_n_97;
  wire mul_ln17_3_reg_815_reg_n_98;
  wire mul_ln17_3_reg_815_reg_n_99;
  wire mul_ln17_4_reg_8300;
  wire \mul_ln17_4_reg_830_reg[0]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[10]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[11]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[12]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[13]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[14]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[15]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[16]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[1]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[2]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[3]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[4]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[5]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[6]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[7]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[8]__0_n_0 ;
  wire \mul_ln17_4_reg_830_reg[9]__0_n_0 ;
  wire [31:16]mul_ln17_4_reg_830_reg__1;
  wire mul_ln17_4_reg_830_reg_n_100;
  wire mul_ln17_4_reg_830_reg_n_101;
  wire mul_ln17_4_reg_830_reg_n_102;
  wire mul_ln17_4_reg_830_reg_n_103;
  wire mul_ln17_4_reg_830_reg_n_104;
  wire mul_ln17_4_reg_830_reg_n_105;
  wire mul_ln17_4_reg_830_reg_n_58;
  wire mul_ln17_4_reg_830_reg_n_59;
  wire mul_ln17_4_reg_830_reg_n_60;
  wire mul_ln17_4_reg_830_reg_n_61;
  wire mul_ln17_4_reg_830_reg_n_62;
  wire mul_ln17_4_reg_830_reg_n_63;
  wire mul_ln17_4_reg_830_reg_n_64;
  wire mul_ln17_4_reg_830_reg_n_65;
  wire mul_ln17_4_reg_830_reg_n_66;
  wire mul_ln17_4_reg_830_reg_n_67;
  wire mul_ln17_4_reg_830_reg_n_68;
  wire mul_ln17_4_reg_830_reg_n_69;
  wire mul_ln17_4_reg_830_reg_n_70;
  wire mul_ln17_4_reg_830_reg_n_71;
  wire mul_ln17_4_reg_830_reg_n_72;
  wire mul_ln17_4_reg_830_reg_n_73;
  wire mul_ln17_4_reg_830_reg_n_74;
  wire mul_ln17_4_reg_830_reg_n_75;
  wire mul_ln17_4_reg_830_reg_n_76;
  wire mul_ln17_4_reg_830_reg_n_77;
  wire mul_ln17_4_reg_830_reg_n_78;
  wire mul_ln17_4_reg_830_reg_n_79;
  wire mul_ln17_4_reg_830_reg_n_80;
  wire mul_ln17_4_reg_830_reg_n_81;
  wire mul_ln17_4_reg_830_reg_n_82;
  wire mul_ln17_4_reg_830_reg_n_83;
  wire mul_ln17_4_reg_830_reg_n_84;
  wire mul_ln17_4_reg_830_reg_n_85;
  wire mul_ln17_4_reg_830_reg_n_86;
  wire mul_ln17_4_reg_830_reg_n_87;
  wire mul_ln17_4_reg_830_reg_n_88;
  wire mul_ln17_4_reg_830_reg_n_89;
  wire mul_ln17_4_reg_830_reg_n_90;
  wire mul_ln17_4_reg_830_reg_n_91;
  wire mul_ln17_4_reg_830_reg_n_92;
  wire mul_ln17_4_reg_830_reg_n_93;
  wire mul_ln17_4_reg_830_reg_n_94;
  wire mul_ln17_4_reg_830_reg_n_95;
  wire mul_ln17_4_reg_830_reg_n_96;
  wire mul_ln17_4_reg_830_reg_n_97;
  wire mul_ln17_4_reg_830_reg_n_98;
  wire mul_ln17_4_reg_830_reg_n_99;
  wire \mul_ln17_5_reg_835_reg[0]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[10]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[11]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[12]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[13]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[14]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[15]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[16]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[1]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[2]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[3]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[4]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[5]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[6]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[7]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[8]__0_n_0 ;
  wire \mul_ln17_5_reg_835_reg[9]__0_n_0 ;
  wire [30:16]mul_ln17_5_reg_835_reg__1;
  wire mul_ln17_5_reg_835_reg_n_100;
  wire mul_ln17_5_reg_835_reg_n_101;
  wire mul_ln17_5_reg_835_reg_n_102;
  wire mul_ln17_5_reg_835_reg_n_103;
  wire mul_ln17_5_reg_835_reg_n_104;
  wire mul_ln17_5_reg_835_reg_n_105;
  wire mul_ln17_5_reg_835_reg_n_58;
  wire mul_ln17_5_reg_835_reg_n_59;
  wire mul_ln17_5_reg_835_reg_n_60;
  wire mul_ln17_5_reg_835_reg_n_61;
  wire mul_ln17_5_reg_835_reg_n_62;
  wire mul_ln17_5_reg_835_reg_n_63;
  wire mul_ln17_5_reg_835_reg_n_64;
  wire mul_ln17_5_reg_835_reg_n_65;
  wire mul_ln17_5_reg_835_reg_n_66;
  wire mul_ln17_5_reg_835_reg_n_67;
  wire mul_ln17_5_reg_835_reg_n_68;
  wire mul_ln17_5_reg_835_reg_n_69;
  wire mul_ln17_5_reg_835_reg_n_70;
  wire mul_ln17_5_reg_835_reg_n_71;
  wire mul_ln17_5_reg_835_reg_n_72;
  wire mul_ln17_5_reg_835_reg_n_73;
  wire mul_ln17_5_reg_835_reg_n_74;
  wire mul_ln17_5_reg_835_reg_n_75;
  wire mul_ln17_5_reg_835_reg_n_76;
  wire mul_ln17_5_reg_835_reg_n_77;
  wire mul_ln17_5_reg_835_reg_n_78;
  wire mul_ln17_5_reg_835_reg_n_79;
  wire mul_ln17_5_reg_835_reg_n_80;
  wire mul_ln17_5_reg_835_reg_n_81;
  wire mul_ln17_5_reg_835_reg_n_82;
  wire mul_ln17_5_reg_835_reg_n_83;
  wire mul_ln17_5_reg_835_reg_n_84;
  wire mul_ln17_5_reg_835_reg_n_85;
  wire mul_ln17_5_reg_835_reg_n_86;
  wire mul_ln17_5_reg_835_reg_n_87;
  wire mul_ln17_5_reg_835_reg_n_88;
  wire mul_ln17_5_reg_835_reg_n_89;
  wire mul_ln17_5_reg_835_reg_n_90;
  wire mul_ln17_5_reg_835_reg_n_91;
  wire mul_ln17_5_reg_835_reg_n_92;
  wire mul_ln17_5_reg_835_reg_n_93;
  wire mul_ln17_5_reg_835_reg_n_94;
  wire mul_ln17_5_reg_835_reg_n_95;
  wire mul_ln17_5_reg_835_reg_n_96;
  wire mul_ln17_5_reg_835_reg_n_97;
  wire mul_ln17_5_reg_835_reg_n_98;
  wire mul_ln17_5_reg_835_reg_n_99;
  wire \mul_ln17_6_reg_850_reg[0]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[10]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[11]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[12]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[13]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[14]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[15]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[16]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[1]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[2]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[3]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[4]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[5]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[6]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[7]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[8]__0_n_0 ;
  wire \mul_ln17_6_reg_850_reg[9]__0_n_0 ;
  wire [30:16]mul_ln17_6_reg_850_reg__1;
  wire mul_ln17_6_reg_850_reg_n_100;
  wire mul_ln17_6_reg_850_reg_n_101;
  wire mul_ln17_6_reg_850_reg_n_102;
  wire mul_ln17_6_reg_850_reg_n_103;
  wire mul_ln17_6_reg_850_reg_n_104;
  wire mul_ln17_6_reg_850_reg_n_105;
  wire mul_ln17_6_reg_850_reg_n_58;
  wire mul_ln17_6_reg_850_reg_n_59;
  wire mul_ln17_6_reg_850_reg_n_60;
  wire mul_ln17_6_reg_850_reg_n_61;
  wire mul_ln17_6_reg_850_reg_n_62;
  wire mul_ln17_6_reg_850_reg_n_63;
  wire mul_ln17_6_reg_850_reg_n_64;
  wire mul_ln17_6_reg_850_reg_n_65;
  wire mul_ln17_6_reg_850_reg_n_66;
  wire mul_ln17_6_reg_850_reg_n_67;
  wire mul_ln17_6_reg_850_reg_n_68;
  wire mul_ln17_6_reg_850_reg_n_69;
  wire mul_ln17_6_reg_850_reg_n_70;
  wire mul_ln17_6_reg_850_reg_n_71;
  wire mul_ln17_6_reg_850_reg_n_72;
  wire mul_ln17_6_reg_850_reg_n_73;
  wire mul_ln17_6_reg_850_reg_n_74;
  wire mul_ln17_6_reg_850_reg_n_75;
  wire mul_ln17_6_reg_850_reg_n_76;
  wire mul_ln17_6_reg_850_reg_n_77;
  wire mul_ln17_6_reg_850_reg_n_78;
  wire mul_ln17_6_reg_850_reg_n_79;
  wire mul_ln17_6_reg_850_reg_n_80;
  wire mul_ln17_6_reg_850_reg_n_81;
  wire mul_ln17_6_reg_850_reg_n_82;
  wire mul_ln17_6_reg_850_reg_n_83;
  wire mul_ln17_6_reg_850_reg_n_84;
  wire mul_ln17_6_reg_850_reg_n_85;
  wire mul_ln17_6_reg_850_reg_n_86;
  wire mul_ln17_6_reg_850_reg_n_87;
  wire mul_ln17_6_reg_850_reg_n_88;
  wire mul_ln17_6_reg_850_reg_n_89;
  wire mul_ln17_6_reg_850_reg_n_90;
  wire mul_ln17_6_reg_850_reg_n_91;
  wire mul_ln17_6_reg_850_reg_n_92;
  wire mul_ln17_6_reg_850_reg_n_93;
  wire mul_ln17_6_reg_850_reg_n_94;
  wire mul_ln17_6_reg_850_reg_n_95;
  wire mul_ln17_6_reg_850_reg_n_96;
  wire mul_ln17_6_reg_850_reg_n_97;
  wire mul_ln17_6_reg_850_reg_n_98;
  wire mul_ln17_6_reg_850_reg_n_99;
  wire \mul_ln17_7_reg_855_reg[0]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[10]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[11]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[12]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[13]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[14]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[15]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[16]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[1]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[2]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[3]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[4]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[5]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[6]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[7]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[8]__0_n_0 ;
  wire \mul_ln17_7_reg_855_reg[9]__0_n_0 ;
  wire [31:16]mul_ln17_7_reg_855_reg__1;
  wire mul_ln17_7_reg_855_reg_n_100;
  wire mul_ln17_7_reg_855_reg_n_101;
  wire mul_ln17_7_reg_855_reg_n_102;
  wire mul_ln17_7_reg_855_reg_n_103;
  wire mul_ln17_7_reg_855_reg_n_104;
  wire mul_ln17_7_reg_855_reg_n_105;
  wire mul_ln17_7_reg_855_reg_n_58;
  wire mul_ln17_7_reg_855_reg_n_59;
  wire mul_ln17_7_reg_855_reg_n_60;
  wire mul_ln17_7_reg_855_reg_n_61;
  wire mul_ln17_7_reg_855_reg_n_62;
  wire mul_ln17_7_reg_855_reg_n_63;
  wire mul_ln17_7_reg_855_reg_n_64;
  wire mul_ln17_7_reg_855_reg_n_65;
  wire mul_ln17_7_reg_855_reg_n_66;
  wire mul_ln17_7_reg_855_reg_n_67;
  wire mul_ln17_7_reg_855_reg_n_68;
  wire mul_ln17_7_reg_855_reg_n_69;
  wire mul_ln17_7_reg_855_reg_n_70;
  wire mul_ln17_7_reg_855_reg_n_71;
  wire mul_ln17_7_reg_855_reg_n_72;
  wire mul_ln17_7_reg_855_reg_n_73;
  wire mul_ln17_7_reg_855_reg_n_74;
  wire mul_ln17_7_reg_855_reg_n_75;
  wire mul_ln17_7_reg_855_reg_n_76;
  wire mul_ln17_7_reg_855_reg_n_77;
  wire mul_ln17_7_reg_855_reg_n_78;
  wire mul_ln17_7_reg_855_reg_n_79;
  wire mul_ln17_7_reg_855_reg_n_80;
  wire mul_ln17_7_reg_855_reg_n_81;
  wire mul_ln17_7_reg_855_reg_n_82;
  wire mul_ln17_7_reg_855_reg_n_83;
  wire mul_ln17_7_reg_855_reg_n_84;
  wire mul_ln17_7_reg_855_reg_n_85;
  wire mul_ln17_7_reg_855_reg_n_86;
  wire mul_ln17_7_reg_855_reg_n_87;
  wire mul_ln17_7_reg_855_reg_n_88;
  wire mul_ln17_7_reg_855_reg_n_89;
  wire mul_ln17_7_reg_855_reg_n_90;
  wire mul_ln17_7_reg_855_reg_n_91;
  wire mul_ln17_7_reg_855_reg_n_92;
  wire mul_ln17_7_reg_855_reg_n_93;
  wire mul_ln17_7_reg_855_reg_n_94;
  wire mul_ln17_7_reg_855_reg_n_95;
  wire mul_ln17_7_reg_855_reg_n_96;
  wire mul_ln17_7_reg_855_reg_n_97;
  wire mul_ln17_7_reg_855_reg_n_98;
  wire mul_ln17_7_reg_855_reg_n_99;
  wire [31:0]mul_ln17_8_reg_870;
  wire \mul_ln17_reg_790_reg[0]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[10]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[11]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[12]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[13]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[14]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[15]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[16]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[1]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[2]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[3]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[4]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[5]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[6]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[7]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[8]__0_n_0 ;
  wire \mul_ln17_reg_790_reg[9]__0_n_0 ;
  wire [31:16]mul_ln17_reg_790_reg__1;
  wire mul_ln17_reg_790_reg_n_100;
  wire mul_ln17_reg_790_reg_n_101;
  wire mul_ln17_reg_790_reg_n_102;
  wire mul_ln17_reg_790_reg_n_103;
  wire mul_ln17_reg_790_reg_n_104;
  wire mul_ln17_reg_790_reg_n_105;
  wire mul_ln17_reg_790_reg_n_58;
  wire mul_ln17_reg_790_reg_n_59;
  wire mul_ln17_reg_790_reg_n_60;
  wire mul_ln17_reg_790_reg_n_61;
  wire mul_ln17_reg_790_reg_n_62;
  wire mul_ln17_reg_790_reg_n_63;
  wire mul_ln17_reg_790_reg_n_64;
  wire mul_ln17_reg_790_reg_n_65;
  wire mul_ln17_reg_790_reg_n_66;
  wire mul_ln17_reg_790_reg_n_67;
  wire mul_ln17_reg_790_reg_n_68;
  wire mul_ln17_reg_790_reg_n_69;
  wire mul_ln17_reg_790_reg_n_70;
  wire mul_ln17_reg_790_reg_n_71;
  wire mul_ln17_reg_790_reg_n_72;
  wire mul_ln17_reg_790_reg_n_73;
  wire mul_ln17_reg_790_reg_n_74;
  wire mul_ln17_reg_790_reg_n_75;
  wire mul_ln17_reg_790_reg_n_76;
  wire mul_ln17_reg_790_reg_n_77;
  wire mul_ln17_reg_790_reg_n_78;
  wire mul_ln17_reg_790_reg_n_79;
  wire mul_ln17_reg_790_reg_n_80;
  wire mul_ln17_reg_790_reg_n_81;
  wire mul_ln17_reg_790_reg_n_82;
  wire mul_ln17_reg_790_reg_n_83;
  wire mul_ln17_reg_790_reg_n_84;
  wire mul_ln17_reg_790_reg_n_85;
  wire mul_ln17_reg_790_reg_n_86;
  wire mul_ln17_reg_790_reg_n_87;
  wire mul_ln17_reg_790_reg_n_88;
  wire mul_ln17_reg_790_reg_n_89;
  wire mul_ln17_reg_790_reg_n_90;
  wire mul_ln17_reg_790_reg_n_91;
  wire mul_ln17_reg_790_reg_n_92;
  wire mul_ln17_reg_790_reg_n_93;
  wire mul_ln17_reg_790_reg_n_94;
  wire mul_ln17_reg_790_reg_n_95;
  wire mul_ln17_reg_790_reg_n_96;
  wire mul_ln17_reg_790_reg_n_97;
  wire mul_ln17_reg_790_reg_n_98;
  wire mul_ln17_reg_790_reg_n_99;
  wire [9:0]orig_address0;
  wire \orig_address0[2]_INST_0_i_2_n_0 ;
  wire \orig_address0[3]_INST_0_i_1_n_0 ;
  wire \orig_address0[3]_INST_0_i_2_n_0 ;
  wire \orig_address0[3]_INST_0_i_4_n_0 ;
  wire \orig_address0[4]_INST_0_i_2_n_0 ;
  wire \orig_address0[4]_INST_0_i_3_n_0 ;
  wire \orig_address0[4]_INST_0_i_5_n_0 ;
  wire \orig_address0[5]_INST_0_i_1_n_0 ;
  wire \orig_address0[5]_INST_0_i_4_n_0 ;
  wire \orig_address0[5]_INST_0_i_5_n_0 ;
  wire \orig_address0[5]_INST_0_i_7_n_0 ;
  wire \orig_address0[5]_INST_0_i_8_n_0 ;
  wire \orig_address0[6]_INST_0_i_10_n_0 ;
  wire \orig_address0[6]_INST_0_i_1_n_0 ;
  wire \orig_address0[6]_INST_0_i_4_n_0 ;
  wire \orig_address0[6]_INST_0_i_5_n_0 ;
  wire \orig_address0[6]_INST_0_i_6_n_0 ;
  wire \orig_address0[6]_INST_0_i_9_n_0 ;
  wire \orig_address0[7]_INST_0_i_1_n_0 ;
  wire \orig_address0[7]_INST_0_i_4_n_0 ;
  wire \orig_address0[7]_INST_0_i_5_n_0 ;
  wire \orig_address0[7]_INST_0_i_8_n_0 ;
  wire \orig_address0[8]_INST_0_i_1_n_0 ;
  wire \orig_address0[8]_INST_0_i_2_n_0 ;
  wire \orig_address0[8]_INST_0_i_3_n_0 ;
  wire \orig_address0[8]_INST_0_i_4_n_0 ;
  wire \orig_address0[8]_INST_0_i_5_n_0 ;
  wire \orig_address0[9]_INST_0_i_10_n_0 ;
  wire \orig_address0[9]_INST_0_i_14_n_0 ;
  wire \orig_address0[9]_INST_0_i_1_n_0 ;
  wire \orig_address0[9]_INST_0_i_5_n_0 ;
  wire \orig_address0[9]_INST_0_i_6_n_0 ;
  wire \orig_address0[9]_INST_0_i_7_n_0 ;
  wire [9:0]orig_address1;
  wire \orig_address1[2]_INST_0_i_2_n_0 ;
  wire \orig_address1[3]_INST_0_i_1_n_0 ;
  wire \orig_address1[4]_INST_0_i_1_n_0 ;
  wire \orig_address1[4]_INST_0_i_2_n_0 ;
  wire \orig_address1[5]_INST_0_i_1_n_0 ;
  wire \orig_address1[5]_INST_0_i_3_n_0 ;
  wire \orig_address1[5]_INST_0_i_4_n_0 ;
  wire \orig_address1[5]_INST_0_i_6_n_0 ;
  wire \orig_address1[6]_INST_0_i_1_n_0 ;
  wire \orig_address1[6]_INST_0_i_3_n_0 ;
  wire \orig_address1[6]_INST_0_i_4_n_0 ;
  wire \orig_address1[7]_INST_0_i_1_n_0 ;
  wire \orig_address1[7]_INST_0_i_3_n_0 ;
  wire \orig_address1[8]_INST_0_i_1_n_0 ;
  wire \orig_address1[8]_INST_0_i_3_n_0 ;
  wire \orig_address1[9]_INST_0_i_1_n_0 ;
  wire \orig_address1[9]_INST_0_i_2_n_0 ;
  wire \orig_address1[9]_INST_0_i_4_n_0 ;
  wire \orig_address1[9]_INST_0_i_5_n_0 ;
  wire orig_ce0;
  wire orig_ce1;
  wire [31:0]orig_q0;
  wire [31:0]orig_q1;
  wire [4:0]r_1_reg_732;
  wire [4:0]r_fu_88;
  wire [4:0]select_ln8_4_fu_568_p3;
  wire [3:1]select_ln8_fu_383_p3;
  wire [4:1]select_ln8_reg_751;
  wire [9:0]sol_address0;
  wire [31:0]sol_d0;
  wire [7:7]NLW_add_ln18_1_fu_593_p2_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln18_7_fu_644_p2__0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln18_7_fu_644_p2__188_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln18_7_fu_644_p2__94_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln18_fu_617_p2_carry__2_CO_UNCONNECTED;
  wire NLW_mul_ln17_1_reg_795_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_1_reg_795_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_1_reg_795_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_1_reg_795_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_1_reg_795_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_1_reg_795_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_1_reg_795_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_1_reg_795_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_1_reg_795_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_1_reg_795_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_1_reg_795_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln17_2_reg_810_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_2_reg_810_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_2_reg_810_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_2_reg_810_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_2_reg_810_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_2_reg_810_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_2_reg_810_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_2_reg_810_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_2_reg_810_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_2_reg_810_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_2_reg_810_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln17_3_reg_815_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_3_reg_815_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_3_reg_815_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_3_reg_815_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_3_reg_815_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_3_reg_815_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_3_reg_815_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_3_reg_815_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_3_reg_815_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_3_reg_815_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_3_reg_815_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln17_4_reg_830_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_4_reg_830_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_4_reg_830_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_4_reg_830_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_4_reg_830_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_4_reg_830_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_4_reg_830_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_4_reg_830_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_4_reg_830_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_4_reg_830_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_4_reg_830_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln17_5_reg_835_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_5_reg_835_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_5_reg_835_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_5_reg_835_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_5_reg_835_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_5_reg_835_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_5_reg_835_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_5_reg_835_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_5_reg_835_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_5_reg_835_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_5_reg_835_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln17_6_reg_850_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_6_reg_850_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_6_reg_850_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_6_reg_850_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_6_reg_850_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_6_reg_850_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_6_reg_850_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_6_reg_850_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_6_reg_850_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_6_reg_850_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_6_reg_850_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln17_7_reg_855_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_7_reg_855_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_7_reg_855_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_7_reg_855_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_7_reg_855_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_7_reg_855_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_7_reg_855_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_7_reg_855_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_7_reg_855_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_7_reg_855_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_7_reg_855_reg_XOROUT_UNCONNECTED;
  wire NLW_mul_ln17_reg_790_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln17_reg_790_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln17_reg_790_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln17_reg_790_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln17_reg_790_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln17_reg_790_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln17_reg_790_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln17_reg_790_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln17_reg_790_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln17_reg_790_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln17_reg_790_reg_XOROUT_UNCONNECTED;

  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[0] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[0]),
        .Q(ap_return[0]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[10] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[10]),
        .Q(ap_return[10]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[11] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[11]),
        .Q(ap_return[11]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[12] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[12]),
        .Q(ap_return[12]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[13] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[13]),
        .Q(ap_return[13]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[14] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[14]),
        .Q(ap_return[14]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[15] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[15]),
        .Q(ap_return[15]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[16] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[16]),
        .Q(ap_return[16]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[17] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[17]),
        .Q(ap_return[17]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[18] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[18]),
        .Q(ap_return[18]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[19] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[19]),
        .Q(ap_return[19]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[1] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[1]),
        .Q(ap_return[1]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[20] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[20]),
        .Q(ap_return[20]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[21] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[21]),
        .Q(ap_return[21]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[22] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[22]),
        .Q(ap_return[22]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[23] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[23]),
        .Q(ap_return[23]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[24] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[24]),
        .Q(ap_return[24]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[25] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[25]),
        .Q(ap_return[25]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[26] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[26]),
        .Q(ap_return[26]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[27] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[27]),
        .Q(ap_return[27]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[28] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[28]),
        .Q(ap_return[28]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[29] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[29]),
        .Q(ap_return[29]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[2] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[2]),
        .Q(ap_return[2]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[30] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[30]),
        .Q(ap_return[30]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[31] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[31]),
        .Q(ap_return[31]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[3] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[3]),
        .Q(ap_return[3]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[4] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[4]),
        .Q(ap_return[4]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[5] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[5]),
        .Q(ap_return[5]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[6] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[6]),
        .Q(ap_return[6]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[7] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[7]),
        .Q(ap_return[7]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[8] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[8]),
        .Q(ap_return[8]),
        .R(1'b0));
  FDRE \add21_lcssa_lcssa_phi_fu_80_reg[9] 
       (.C(ap_clk),
        .CE(E),
        .D(sol_d0[9]),
        .Q(ap_return[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    \add_ln17_3_reg_776[7]_i_5 
       (.I0(ap_sig_allocacmp_r_1[3]),
        .I1(flow_control_loop_pipe_sequential_init_U_n_51),
        .I2(r_fu_88[0]),
        .I3(ap_sig_allocacmp_r_1[1]),
        .I4(r_fu_88[2]),
        .I5(flow_control_loop_pipe_sequential_init_U_n_10),
        .O(\add_ln17_3_reg_776[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h12222222EDDDDDDD)) 
    \add_ln17_3_reg_776[7]_i_6 
       (.I0(r_fu_88[2]),
        .I1(c_fu_8401_out),
        .I2(flow_control_loop_pipe_sequential_init_U_n_51),
        .I3(r_fu_88[0]),
        .I4(r_fu_88[1]),
        .I5(select_ln8_fu_383_p3[3]),
        .O(\add_ln17_3_reg_776[7]_i_6_n_0 ));
  FDRE \add_ln17_3_reg_776_reg[0] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[0]),
        .Q(add_ln17_3_reg_776[0]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[1] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[1]),
        .Q(add_ln17_3_reg_776[1]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[2] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[2]),
        .Q(add_ln17_3_reg_776[2]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[3] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[3]),
        .Q(add_ln17_3_reg_776[3]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[4] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[4]),
        .Q(add_ln17_3_reg_776[4]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[5] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[5]),
        .Q(add_ln17_3_reg_776[5]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[6] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[6]),
        .Q(add_ln17_3_reg_776[6]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[7] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[7]),
        .Q(add_ln17_3_reg_776[7]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[8] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[8]),
        .Q(add_ln17_3_reg_776[8]),
        .R(1'b0));
  FDRE \add_ln17_3_reg_776_reg[9] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_3_fu_473_p2[9]),
        .Q(add_ln17_3_reg_776[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h7D2882D7)) 
    \add_ln17_6_reg_783[7]_i_5 
       (.I0(flow_control_loop_pipe_sequential_init_U_n_51),
        .I1(flow_control_loop_pipe_sequential_init_U_n_52),
        .I2(flow_control_loop_pipe_sequential_init_U_n_82),
        .I3(empty_6_fu_298_p2[3]),
        .I4(flow_control_loop_pipe_sequential_init_U_n_10),
        .O(\add_ln17_6_reg_783[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h11221222EEDDEDDD)) 
    \add_ln17_6_reg_783[7]_i_6 
       (.I0(r_fu_88[2]),
        .I1(c_fu_8401_out),
        .I2(r_fu_88[0]),
        .I3(r_fu_88[1]),
        .I4(flow_control_loop_pipe_sequential_init_U_n_51),
        .I5(select_ln8_fu_383_p3[3]),
        .O(\add_ln17_6_reg_783[7]_i_6_n_0 ));
  FDRE \add_ln17_6_reg_783_reg[0] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[0]),
        .Q(add_ln17_6_reg_783[0]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[1] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[1]),
        .Q(add_ln17_6_reg_783[1]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[2] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[2]),
        .Q(add_ln17_6_reg_783[2]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[3] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[3]),
        .Q(add_ln17_6_reg_783[3]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[4] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[4]),
        .Q(add_ln17_6_reg_783[4]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[5] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[5]),
        .Q(add_ln17_6_reg_783[5]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[6] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[6]),
        .Q(add_ln17_6_reg_783[6]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[7] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[7]),
        .Q(add_ln17_6_reg_783[7]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[8] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[8]),
        .Q(add_ln17_6_reg_783[8]),
        .R(1'b0));
  FDRE \add_ln17_6_reg_783_reg[9] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(add_ln17_6_fu_479_p2[9]),
        .Q(add_ln17_6_reg_783[9]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[1] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_39),
        .Q(add_ln17_reg_756[1]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[2] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_70),
        .Q(add_ln17_reg_756[2]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[3] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_69),
        .Q(add_ln17_reg_756[3]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[4] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_67),
        .Q(add_ln17_reg_756[4]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[5] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_68),
        .Q(add_ln17_reg_756[5]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[6] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_62),
        .Q(add_ln17_reg_756[6]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[7] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_61),
        .Q(add_ln17_reg_756[7]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[8] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_59),
        .Q(add_ln17_reg_756[8]),
        .R(1'b0));
  FDRE \add_ln17_reg_756_reg[9] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_60),
        .Q(add_ln17_reg_756[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_1_fu_593_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln18_1_fu_593_p2_carry_n_0,add_ln18_1_fu_593_p2_carry_n_1,add_ln18_1_fu_593_p2_carry_n_2,add_ln18_1_fu_593_p2_carry_n_3,add_ln18_1_fu_593_p2_carry_n_4,add_ln18_1_fu_593_p2_carry_n_5,add_ln18_1_fu_593_p2_carry_n_6,add_ln18_1_fu_593_p2_carry_n_7}),
        .DI({\mul_ln17_5_reg_835_reg[7]__0_n_0 ,\mul_ln17_5_reg_835_reg[6]__0_n_0 ,\mul_ln17_5_reg_835_reg[5]__0_n_0 ,\mul_ln17_5_reg_835_reg[4]__0_n_0 ,\mul_ln17_5_reg_835_reg[3]__0_n_0 ,\mul_ln17_5_reg_835_reg[2]__0_n_0 ,\mul_ln17_5_reg_835_reg[1]__0_n_0 ,\mul_ln17_5_reg_835_reg[0]__0_n_0 }),
        .O(add_ln18_1_fu_593_p2[7:0]),
        .S({add_ln18_1_fu_593_p2_carry_i_1_n_0,add_ln18_1_fu_593_p2_carry_i_2_n_0,add_ln18_1_fu_593_p2_carry_i_3_n_0,add_ln18_1_fu_593_p2_carry_i_4_n_0,add_ln18_1_fu_593_p2_carry_i_5_n_0,add_ln18_1_fu_593_p2_carry_i_6_n_0,add_ln18_1_fu_593_p2_carry_i_7_n_0,add_ln18_1_fu_593_p2_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_1_fu_593_p2_carry__0
       (.CI(add_ln18_1_fu_593_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_1_fu_593_p2_carry__0_n_0,add_ln18_1_fu_593_p2_carry__0_n_1,add_ln18_1_fu_593_p2_carry__0_n_2,add_ln18_1_fu_593_p2_carry__0_n_3,add_ln18_1_fu_593_p2_carry__0_n_4,add_ln18_1_fu_593_p2_carry__0_n_5,add_ln18_1_fu_593_p2_carry__0_n_6,add_ln18_1_fu_593_p2_carry__0_n_7}),
        .DI({\mul_ln17_5_reg_835_reg[15]__0_n_0 ,\mul_ln17_5_reg_835_reg[14]__0_n_0 ,\mul_ln17_5_reg_835_reg[13]__0_n_0 ,\mul_ln17_5_reg_835_reg[12]__0_n_0 ,\mul_ln17_5_reg_835_reg[11]__0_n_0 ,\mul_ln17_5_reg_835_reg[10]__0_n_0 ,\mul_ln17_5_reg_835_reg[9]__0_n_0 ,\mul_ln17_5_reg_835_reg[8]__0_n_0 }),
        .O(add_ln18_1_fu_593_p2[15:8]),
        .S({add_ln18_1_fu_593_p2_carry__0_i_1_n_0,add_ln18_1_fu_593_p2_carry__0_i_2_n_0,add_ln18_1_fu_593_p2_carry__0_i_3_n_0,add_ln18_1_fu_593_p2_carry__0_i_4_n_0,add_ln18_1_fu_593_p2_carry__0_i_5_n_0,add_ln18_1_fu_593_p2_carry__0_i_6_n_0,add_ln18_1_fu_593_p2_carry__0_i_7_n_0,add_ln18_1_fu_593_p2_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_1
       (.I0(\mul_ln17_5_reg_835_reg[15]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[15]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_2
       (.I0(\mul_ln17_5_reg_835_reg[14]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[14]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_3
       (.I0(\mul_ln17_5_reg_835_reg[13]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[13]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_4
       (.I0(\mul_ln17_5_reg_835_reg[12]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[12]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_5
       (.I0(\mul_ln17_5_reg_835_reg[11]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[11]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_6
       (.I0(\mul_ln17_5_reg_835_reg[10]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[10]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_7
       (.I0(\mul_ln17_5_reg_835_reg[9]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[9]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry__0_i_8
       (.I0(\mul_ln17_5_reg_835_reg[8]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[8]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_1_fu_593_p2_carry__1
       (.CI(add_ln18_1_fu_593_p2_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_1_fu_593_p2_carry__1_n_0,add_ln18_1_fu_593_p2_carry__1_n_1,add_ln18_1_fu_593_p2_carry__1_n_2,add_ln18_1_fu_593_p2_carry__1_n_3,add_ln18_1_fu_593_p2_carry__1_n_4,add_ln18_1_fu_593_p2_carry__1_n_5,add_ln18_1_fu_593_p2_carry__1_n_6,add_ln18_1_fu_593_p2_carry__1_n_7}),
        .DI(mul_ln17_5_reg_835_reg__1[23:16]),
        .O(add_ln18_1_fu_593_p2[23:16]),
        .S({mul_32s_32s_32_1_1_U6_n_81,mul_32s_32s_32_1_1_U6_n_82,mul_32s_32s_32_1_1_U6_n_83,mul_32s_32s_32_1_1_U6_n_84,mul_32s_32s_32_1_1_U6_n_85,mul_32s_32s_32_1_1_U6_n_86,mul_32s_32s_32_1_1_U6_n_87,mul_32s_32s_32_1_1_U6_n_88}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_1_fu_593_p2_carry__2
       (.CI(add_ln18_1_fu_593_p2_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln18_1_fu_593_p2_carry__2_CO_UNCONNECTED[7],add_ln18_1_fu_593_p2_carry__2_n_1,add_ln18_1_fu_593_p2_carry__2_n_2,add_ln18_1_fu_593_p2_carry__2_n_3,add_ln18_1_fu_593_p2_carry__2_n_4,add_ln18_1_fu_593_p2_carry__2_n_5,add_ln18_1_fu_593_p2_carry__2_n_6,add_ln18_1_fu_593_p2_carry__2_n_7}),
        .DI({1'b0,mul_ln17_5_reg_835_reg__1[30:24]}),
        .O(add_ln18_1_fu_593_p2[31:24]),
        .S({mul_32s_32s_32_1_1_U6_n_89,mul_32s_32s_32_1_1_U6_n_90,mul_32s_32s_32_1_1_U6_n_91,mul_32s_32s_32_1_1_U6_n_92,mul_32s_32s_32_1_1_U6_n_93,mul_32s_32s_32_1_1_U6_n_94,mul_32s_32s_32_1_1_U6_n_95,mul_32s_32s_32_1_1_U6_n_96}));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_1
       (.I0(\mul_ln17_5_reg_835_reg[7]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[7]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_2
       (.I0(\mul_ln17_5_reg_835_reg[6]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[6]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_3
       (.I0(\mul_ln17_5_reg_835_reg[5]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[5]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_4
       (.I0(\mul_ln17_5_reg_835_reg[4]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[4]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_5
       (.I0(\mul_ln17_5_reg_835_reg[3]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[3]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_6
       (.I0(\mul_ln17_5_reg_835_reg[2]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[2]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_7
       (.I0(\mul_ln17_5_reg_835_reg[1]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[1]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_1_fu_593_p2_carry_i_8
       (.I0(\mul_ln17_5_reg_835_reg[0]__0_n_0 ),
        .I1(\mul_ln17_4_reg_830_reg[0]__0_n_0 ),
        .O(add_ln18_1_fu_593_p2_carry_i_8_n_0));
  FDRE \add_ln18_1_reg_865_reg[0] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[0]),
        .Q(add_ln18_1_reg_865[0]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[10] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[10]),
        .Q(add_ln18_1_reg_865[10]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[11] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[11]),
        .Q(add_ln18_1_reg_865[11]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[12] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[12]),
        .Q(add_ln18_1_reg_865[12]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[13] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[13]),
        .Q(add_ln18_1_reg_865[13]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[14] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[14]),
        .Q(add_ln18_1_reg_865[14]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[15] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[15]),
        .Q(add_ln18_1_reg_865[15]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[16] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[16]),
        .Q(add_ln18_1_reg_865[16]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[17] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[17]),
        .Q(add_ln18_1_reg_865[17]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[18] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[18]),
        .Q(add_ln18_1_reg_865[18]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[19] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[19]),
        .Q(add_ln18_1_reg_865[19]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[1] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[1]),
        .Q(add_ln18_1_reg_865[1]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[20] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[20]),
        .Q(add_ln18_1_reg_865[20]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[21] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[21]),
        .Q(add_ln18_1_reg_865[21]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[22] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[22]),
        .Q(add_ln18_1_reg_865[22]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[23] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[23]),
        .Q(add_ln18_1_reg_865[23]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[24] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[24]),
        .Q(add_ln18_1_reg_865[24]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[25] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[25]),
        .Q(add_ln18_1_reg_865[25]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[26] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[26]),
        .Q(add_ln18_1_reg_865[26]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[27] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[27]),
        .Q(add_ln18_1_reg_865[27]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[28] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[28]),
        .Q(add_ln18_1_reg_865[28]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[29] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[29]),
        .Q(add_ln18_1_reg_865[29]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[2] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[2]),
        .Q(add_ln18_1_reg_865[2]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[30] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[30]),
        .Q(add_ln18_1_reg_865[30]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[31] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[31]),
        .Q(add_ln18_1_reg_865[31]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[3] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[3]),
        .Q(add_ln18_1_reg_865[3]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[4] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[4]),
        .Q(add_ln18_1_reg_865[4]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[5] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[5]),
        .Q(add_ln18_1_reg_865[5]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[6] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[6]),
        .Q(add_ln18_1_reg_865[6]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[7] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[7]),
        .Q(add_ln18_1_reg_865[7]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[8] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[8]),
        .Q(add_ln18_1_reg_865[8]),
        .R(1'b0));
  FDRE \add_ln18_1_reg_865_reg[9] 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(add_ln18_1_fu_593_p2[9]),
        .Q(add_ln18_1_reg_865[9]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__0_carry_n_0,add_ln18_7_fu_644_p2__0_carry_n_1,add_ln18_7_fu_644_p2__0_carry_n_2,add_ln18_7_fu_644_p2__0_carry_n_3,add_ln18_7_fu_644_p2__0_carry_n_4,add_ln18_7_fu_644_p2__0_carry_n_5,add_ln18_7_fu_644_p2__0_carry_n_6,add_ln18_7_fu_644_p2__0_carry_n_7}),
        .DI({add_ln18_7_fu_644_p2__0_carry_i_1_n_0,add_ln18_7_fu_644_p2__0_carry_i_2_n_0,add_ln18_7_fu_644_p2__0_carry_i_3_n_0,add_ln18_7_fu_644_p2__0_carry_i_4_n_0,add_ln18_7_fu_644_p2__0_carry_i_5_n_0,add_ln18_7_fu_644_p2__0_carry_i_6_n_0,add_ln18_7_fu_644_p2__0_carry_i_7_n_0,1'b0}),
        .O({add_ln18_7_fu_644_p2__0_carry_n_8,add_ln18_7_fu_644_p2__0_carry_n_9,add_ln18_7_fu_644_p2__0_carry_n_10,add_ln18_7_fu_644_p2__0_carry_n_11,add_ln18_7_fu_644_p2__0_carry_n_12,add_ln18_7_fu_644_p2__0_carry_n_13,add_ln18_7_fu_644_p2__0_carry_n_14,add_ln18_7_fu_644_p2__0_carry_n_15}),
        .S({add_ln18_7_fu_644_p2__0_carry_i_8_n_0,add_ln18_7_fu_644_p2__0_carry_i_9_n_0,add_ln18_7_fu_644_p2__0_carry_i_10_n_0,add_ln18_7_fu_644_p2__0_carry_i_11_n_0,add_ln18_7_fu_644_p2__0_carry_i_12_n_0,add_ln18_7_fu_644_p2__0_carry_i_13_n_0,add_ln18_7_fu_644_p2__0_carry_i_14_n_0,add_ln18_7_fu_644_p2__0_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__0_carry__0
       (.CI(add_ln18_7_fu_644_p2__0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__0_carry__0_n_0,add_ln18_7_fu_644_p2__0_carry__0_n_1,add_ln18_7_fu_644_p2__0_carry__0_n_2,add_ln18_7_fu_644_p2__0_carry__0_n_3,add_ln18_7_fu_644_p2__0_carry__0_n_4,add_ln18_7_fu_644_p2__0_carry__0_n_5,add_ln18_7_fu_644_p2__0_carry__0_n_6,add_ln18_7_fu_644_p2__0_carry__0_n_7}),
        .DI({add_ln18_7_fu_644_p2__0_carry__0_i_1_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_2_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_3_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_4_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_5_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_6_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_7_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_8_n_0}),
        .O({add_ln18_7_fu_644_p2__0_carry__0_n_8,add_ln18_7_fu_644_p2__0_carry__0_n_9,add_ln18_7_fu_644_p2__0_carry__0_n_10,add_ln18_7_fu_644_p2__0_carry__0_n_11,add_ln18_7_fu_644_p2__0_carry__0_n_12,add_ln18_7_fu_644_p2__0_carry__0_n_13,add_ln18_7_fu_644_p2__0_carry__0_n_14,add_ln18_7_fu_644_p2__0_carry__0_n_15}),
        .S({add_ln18_7_fu_644_p2__0_carry__0_i_9_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_10_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_11_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_12_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_13_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_14_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_15_n_0,add_ln18_7_fu_644_p2__0_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_1
       (.I0(\mul_ln17_reg_790_reg[14]__0_n_0 ),
        .I1(add_ln18_1_reg_865[14]),
        .I2(\mul_ln17_2_reg_810_reg[14]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_10
       (.I0(\mul_ln17_2_reg_810_reg[13]__0_n_0 ),
        .I1(add_ln18_1_reg_865[13]),
        .I2(\mul_ln17_reg_790_reg[13]__0_n_0 ),
        .I3(add_ln18_1_reg_865[14]),
        .I4(\mul_ln17_reg_790_reg[14]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[14]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_11
       (.I0(\mul_ln17_2_reg_810_reg[12]__0_n_0 ),
        .I1(add_ln18_1_reg_865[12]),
        .I2(\mul_ln17_reg_790_reg[12]__0_n_0 ),
        .I3(add_ln18_1_reg_865[13]),
        .I4(\mul_ln17_reg_790_reg[13]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[13]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_12
       (.I0(\mul_ln17_2_reg_810_reg[11]__0_n_0 ),
        .I1(add_ln18_1_reg_865[11]),
        .I2(\mul_ln17_reg_790_reg[11]__0_n_0 ),
        .I3(add_ln18_1_reg_865[12]),
        .I4(\mul_ln17_reg_790_reg[12]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[12]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_13
       (.I0(\mul_ln17_2_reg_810_reg[10]__0_n_0 ),
        .I1(add_ln18_1_reg_865[10]),
        .I2(\mul_ln17_reg_790_reg[10]__0_n_0 ),
        .I3(add_ln18_1_reg_865[11]),
        .I4(\mul_ln17_reg_790_reg[11]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[11]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_14
       (.I0(\mul_ln17_2_reg_810_reg[9]__0_n_0 ),
        .I1(add_ln18_1_reg_865[9]),
        .I2(\mul_ln17_reg_790_reg[9]__0_n_0 ),
        .I3(add_ln18_1_reg_865[10]),
        .I4(\mul_ln17_reg_790_reg[10]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[10]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_15
       (.I0(\mul_ln17_2_reg_810_reg[8]__0_n_0 ),
        .I1(add_ln18_1_reg_865[8]),
        .I2(\mul_ln17_reg_790_reg[8]__0_n_0 ),
        .I3(add_ln18_1_reg_865[9]),
        .I4(\mul_ln17_reg_790_reg[9]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[9]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_16
       (.I0(\mul_ln17_2_reg_810_reg[7]__0_n_0 ),
        .I1(add_ln18_1_reg_865[7]),
        .I2(\mul_ln17_reg_790_reg[7]__0_n_0 ),
        .I3(add_ln18_1_reg_865[8]),
        .I4(\mul_ln17_reg_790_reg[8]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[8]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_2
       (.I0(\mul_ln17_reg_790_reg[13]__0_n_0 ),
        .I1(add_ln18_1_reg_865[13]),
        .I2(\mul_ln17_2_reg_810_reg[13]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_3
       (.I0(\mul_ln17_reg_790_reg[12]__0_n_0 ),
        .I1(add_ln18_1_reg_865[12]),
        .I2(\mul_ln17_2_reg_810_reg[12]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_4
       (.I0(\mul_ln17_reg_790_reg[11]__0_n_0 ),
        .I1(add_ln18_1_reg_865[11]),
        .I2(\mul_ln17_2_reg_810_reg[11]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_5
       (.I0(\mul_ln17_reg_790_reg[10]__0_n_0 ),
        .I1(add_ln18_1_reg_865[10]),
        .I2(\mul_ln17_2_reg_810_reg[10]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_6
       (.I0(\mul_ln17_reg_790_reg[9]__0_n_0 ),
        .I1(add_ln18_1_reg_865[9]),
        .I2(\mul_ln17_2_reg_810_reg[9]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_7
       (.I0(\mul_ln17_reg_790_reg[8]__0_n_0 ),
        .I1(add_ln18_1_reg_865[8]),
        .I2(\mul_ln17_2_reg_810_reg[8]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_8
       (.I0(\mul_ln17_reg_790_reg[7]__0_n_0 ),
        .I1(add_ln18_1_reg_865[7]),
        .I2(\mul_ln17_2_reg_810_reg[7]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry__0_i_9
       (.I0(\mul_ln17_2_reg_810_reg[14]__0_n_0 ),
        .I1(add_ln18_1_reg_865[14]),
        .I2(\mul_ln17_reg_790_reg[14]__0_n_0 ),
        .I3(add_ln18_1_reg_865[15]),
        .I4(\mul_ln17_reg_790_reg[15]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[15]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__0_carry__1
       (.CI(add_ln18_7_fu_644_p2__0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__0_carry__1_n_0,add_ln18_7_fu_644_p2__0_carry__1_n_1,add_ln18_7_fu_644_p2__0_carry__1_n_2,add_ln18_7_fu_644_p2__0_carry__1_n_3,add_ln18_7_fu_644_p2__0_carry__1_n_4,add_ln18_7_fu_644_p2__0_carry__1_n_5,add_ln18_7_fu_644_p2__0_carry__1_n_6,add_ln18_7_fu_644_p2__0_carry__1_n_7}),
        .DI({mul_32s_32s_32_1_1_U1_n_91,mul_32s_32s_32_1_1_U1_n_92,mul_32s_32s_32_1_1_U1_n_93,mul_32s_32s_32_1_1_U1_n_94,mul_32s_32s_32_1_1_U1_n_95,mul_32s_32s_32_1_1_U1_n_96,mul_32s_32s_32_1_1_U1_n_97,add_ln18_7_fu_644_p2__0_carry__1_i_8_n_0}),
        .O({add_ln18_7_fu_644_p2__0_carry__1_n_8,add_ln18_7_fu_644_p2__0_carry__1_n_9,add_ln18_7_fu_644_p2__0_carry__1_n_10,add_ln18_7_fu_644_p2__0_carry__1_n_11,add_ln18_7_fu_644_p2__0_carry__1_n_12,add_ln18_7_fu_644_p2__0_carry__1_n_13,add_ln18_7_fu_644_p2__0_carry__1_n_14,add_ln18_7_fu_644_p2__0_carry__1_n_15}),
        .S({mul_32s_32s_32_1_1_U3_n_81,mul_32s_32s_32_1_1_U3_n_82,mul_32s_32s_32_1_1_U3_n_83,mul_32s_32s_32_1_1_U3_n_84,mul_32s_32s_32_1_1_U3_n_85,mul_32s_32s_32_1_1_U3_n_86,mul_32s_32s_32_1_1_U3_n_87,mul_32s_32s_32_1_1_U1_n_82}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry__1_i_8
       (.I0(\mul_ln17_reg_790_reg[15]__0_n_0 ),
        .I1(add_ln18_1_reg_865[15]),
        .I2(\mul_ln17_2_reg_810_reg[15]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__0_carry__2
       (.CI(add_ln18_7_fu_644_p2__0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln18_7_fu_644_p2__0_carry__2_CO_UNCONNECTED[7],add_ln18_7_fu_644_p2__0_carry__2_n_1,add_ln18_7_fu_644_p2__0_carry__2_n_2,add_ln18_7_fu_644_p2__0_carry__2_n_3,add_ln18_7_fu_644_p2__0_carry__2_n_4,add_ln18_7_fu_644_p2__0_carry__2_n_5,add_ln18_7_fu_644_p2__0_carry__2_n_6,add_ln18_7_fu_644_p2__0_carry__2_n_7}),
        .DI({1'b0,mul_32s_32s_32_1_1_U1_n_84,mul_32s_32s_32_1_1_U1_n_85,mul_32s_32s_32_1_1_U1_n_86,mul_32s_32s_32_1_1_U1_n_87,mul_32s_32s_32_1_1_U1_n_88,mul_32s_32s_32_1_1_U1_n_89,mul_32s_32s_32_1_1_U1_n_90}),
        .O({add_ln18_7_fu_644_p2__0_carry__2_n_8,add_ln18_7_fu_644_p2__0_carry__2_n_9,add_ln18_7_fu_644_p2__0_carry__2_n_10,add_ln18_7_fu_644_p2__0_carry__2_n_11,add_ln18_7_fu_644_p2__0_carry__2_n_12,add_ln18_7_fu_644_p2__0_carry__2_n_13,add_ln18_7_fu_644_p2__0_carry__2_n_14,add_ln18_7_fu_644_p2__0_carry__2_n_15}),
        .S({mul_32s_32s_32_1_1_U3_n_88,mul_32s_32s_32_1_1_U1_n_83,mul_32s_32s_32_1_1_U3_n_89,mul_32s_32s_32_1_1_U3_n_90,mul_32s_32s_32_1_1_U3_n_91,mul_32s_32s_32_1_1_U3_n_92,mul_32s_32s_32_1_1_U3_n_93,mul_32s_32s_32_1_1_U3_n_94}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry_i_1
       (.I0(\mul_ln17_reg_790_reg[6]__0_n_0 ),
        .I1(add_ln18_1_reg_865[6]),
        .I2(\mul_ln17_2_reg_810_reg[6]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry_i_10
       (.I0(\mul_ln17_2_reg_810_reg[4]__0_n_0 ),
        .I1(add_ln18_1_reg_865[4]),
        .I2(\mul_ln17_reg_790_reg[4]__0_n_0 ),
        .I3(add_ln18_1_reg_865[5]),
        .I4(\mul_ln17_reg_790_reg[5]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[5]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry_i_11
       (.I0(\mul_ln17_2_reg_810_reg[3]__0_n_0 ),
        .I1(add_ln18_1_reg_865[3]),
        .I2(\mul_ln17_reg_790_reg[3]__0_n_0 ),
        .I3(add_ln18_1_reg_865[4]),
        .I4(\mul_ln17_reg_790_reg[4]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[4]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry_i_12
       (.I0(\mul_ln17_2_reg_810_reg[2]__0_n_0 ),
        .I1(add_ln18_1_reg_865[2]),
        .I2(\mul_ln17_reg_790_reg[2]__0_n_0 ),
        .I3(add_ln18_1_reg_865[3]),
        .I4(\mul_ln17_reg_790_reg[3]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[3]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry_i_13
       (.I0(\mul_ln17_2_reg_810_reg[1]__0_n_0 ),
        .I1(add_ln18_1_reg_865[1]),
        .I2(\mul_ln17_reg_790_reg[1]__0_n_0 ),
        .I3(add_ln18_1_reg_865[2]),
        .I4(\mul_ln17_reg_790_reg[2]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[2]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry_i_14
       (.I0(\mul_ln17_2_reg_810_reg[0]__0_n_0 ),
        .I1(add_ln18_1_reg_865[0]),
        .I2(\mul_ln17_reg_790_reg[0]__0_n_0 ),
        .I3(add_ln18_1_reg_865[1]),
        .I4(\mul_ln17_reg_790_reg[1]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[1]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    add_ln18_7_fu_644_p2__0_carry_i_15
       (.I0(\mul_ln17_2_reg_810_reg[0]__0_n_0 ),
        .I1(\mul_ln17_reg_790_reg[0]__0_n_0 ),
        .I2(add_ln18_1_reg_865[0]),
        .O(add_ln18_7_fu_644_p2__0_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry_i_2
       (.I0(\mul_ln17_reg_790_reg[5]__0_n_0 ),
        .I1(add_ln18_1_reg_865[5]),
        .I2(\mul_ln17_2_reg_810_reg[5]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry_i_3
       (.I0(\mul_ln17_reg_790_reg[4]__0_n_0 ),
        .I1(add_ln18_1_reg_865[4]),
        .I2(\mul_ln17_2_reg_810_reg[4]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry_i_4
       (.I0(\mul_ln17_reg_790_reg[3]__0_n_0 ),
        .I1(add_ln18_1_reg_865[3]),
        .I2(\mul_ln17_2_reg_810_reg[3]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry_i_5
       (.I0(\mul_ln17_reg_790_reg[2]__0_n_0 ),
        .I1(add_ln18_1_reg_865[2]),
        .I2(\mul_ln17_2_reg_810_reg[2]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry_i_6
       (.I0(\mul_ln17_reg_790_reg[1]__0_n_0 ),
        .I1(add_ln18_1_reg_865[1]),
        .I2(\mul_ln17_2_reg_810_reg[1]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__0_carry_i_7
       (.I0(\mul_ln17_reg_790_reg[0]__0_n_0 ),
        .I1(add_ln18_1_reg_865[0]),
        .I2(\mul_ln17_2_reg_810_reg[0]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry_i_8
       (.I0(\mul_ln17_2_reg_810_reg[6]__0_n_0 ),
        .I1(add_ln18_1_reg_865[6]),
        .I2(\mul_ln17_reg_790_reg[6]__0_n_0 ),
        .I3(add_ln18_1_reg_865[7]),
        .I4(\mul_ln17_reg_790_reg[7]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[7]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__0_carry_i_9
       (.I0(\mul_ln17_2_reg_810_reg[5]__0_n_0 ),
        .I1(add_ln18_1_reg_865[5]),
        .I2(\mul_ln17_reg_790_reg[5]__0_n_0 ),
        .I3(add_ln18_1_reg_865[6]),
        .I4(\mul_ln17_reg_790_reg[6]__0_n_0 ),
        .I5(\mul_ln17_2_reg_810_reg[6]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__0_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__188_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__188_carry_n_0,add_ln18_7_fu_644_p2__188_carry_n_1,add_ln18_7_fu_644_p2__188_carry_n_2,add_ln18_7_fu_644_p2__188_carry_n_3,add_ln18_7_fu_644_p2__188_carry_n_4,add_ln18_7_fu_644_p2__188_carry_n_5,add_ln18_7_fu_644_p2__188_carry_n_6,add_ln18_7_fu_644_p2__188_carry_n_7}),
        .DI({add_ln18_7_fu_644_p2__188_carry_i_1_n_0,add_ln18_7_fu_644_p2__188_carry_i_2_n_0,add_ln18_7_fu_644_p2__188_carry_i_3_n_0,add_ln18_7_fu_644_p2__188_carry_i_4_n_0,add_ln18_7_fu_644_p2__188_carry_i_5_n_0,add_ln18_7_fu_644_p2__188_carry_i_6_n_0,add_ln18_7_fu_644_p2__188_carry_i_7_n_0,1'b0}),
        .O(sol_d0[7:0]),
        .S({add_ln18_7_fu_644_p2__188_carry_i_8_n_0,add_ln18_7_fu_644_p2__188_carry_i_9_n_0,add_ln18_7_fu_644_p2__188_carry_i_10_n_0,add_ln18_7_fu_644_p2__188_carry_i_11_n_0,add_ln18_7_fu_644_p2__188_carry_i_12_n_0,add_ln18_7_fu_644_p2__188_carry_i_13_n_0,add_ln18_7_fu_644_p2__188_carry_i_14_n_0,add_ln18_7_fu_644_p2__188_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__188_carry__0
       (.CI(add_ln18_7_fu_644_p2__188_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__188_carry__0_n_0,add_ln18_7_fu_644_p2__188_carry__0_n_1,add_ln18_7_fu_644_p2__188_carry__0_n_2,add_ln18_7_fu_644_p2__188_carry__0_n_3,add_ln18_7_fu_644_p2__188_carry__0_n_4,add_ln18_7_fu_644_p2__188_carry__0_n_5,add_ln18_7_fu_644_p2__188_carry__0_n_6,add_ln18_7_fu_644_p2__188_carry__0_n_7}),
        .DI({add_ln18_7_fu_644_p2__188_carry__0_i_1_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_2_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_3_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_4_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_5_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_6_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_7_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_8_n_0}),
        .O(sol_d0[15:8]),
        .S({add_ln18_7_fu_644_p2__188_carry__0_i_9_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_10_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_11_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_12_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_13_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_14_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_15_n_0,add_ln18_7_fu_644_p2__188_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_1
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_9),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_9),
        .I2(add_ln18_reg_875[14]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_10
       (.I0(add_ln18_reg_875[13]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_10),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_10),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_9),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_9),
        .I5(add_ln18_reg_875[14]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_11
       (.I0(add_ln18_reg_875[12]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_11),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_11),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_10),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_10),
        .I5(add_ln18_reg_875[13]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_12
       (.I0(add_ln18_reg_875[11]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_12),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_12),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_11),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_11),
        .I5(add_ln18_reg_875[12]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_13
       (.I0(add_ln18_reg_875[10]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_13),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_13),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_12),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_12),
        .I5(add_ln18_reg_875[11]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_14
       (.I0(add_ln18_reg_875[9]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_14),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_14),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_13),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_13),
        .I5(add_ln18_reg_875[10]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_15
       (.I0(add_ln18_reg_875[8]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_15),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_15),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_14),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_14),
        .I5(add_ln18_reg_875[9]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_16
       (.I0(add_ln18_reg_875[7]),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_8),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_8),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_15),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_15),
        .I5(add_ln18_reg_875[8]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_2
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_10),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_10),
        .I2(add_ln18_reg_875[13]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_3
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_11),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_11),
        .I2(add_ln18_reg_875[12]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_4
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_12),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_12),
        .I2(add_ln18_reg_875[11]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_5
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_13),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_13),
        .I2(add_ln18_reg_875[10]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_6
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_14),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_14),
        .I2(add_ln18_reg_875[9]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_7
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_15),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_15),
        .I2(add_ln18_reg_875[8]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_8
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_8),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_8),
        .I2(add_ln18_reg_875[7]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__0_i_9
       (.I0(add_ln18_reg_875[14]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_9),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_9),
        .I3(add_ln18_7_fu_644_p2__0_carry__0_n_8),
        .I4(add_ln18_7_fu_644_p2__94_carry__0_n_8),
        .I5(add_ln18_reg_875[15]),
        .O(add_ln18_7_fu_644_p2__188_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__188_carry__1
       (.CI(add_ln18_7_fu_644_p2__188_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__188_carry__1_n_0,add_ln18_7_fu_644_p2__188_carry__1_n_1,add_ln18_7_fu_644_p2__188_carry__1_n_2,add_ln18_7_fu_644_p2__188_carry__1_n_3,add_ln18_7_fu_644_p2__188_carry__1_n_4,add_ln18_7_fu_644_p2__188_carry__1_n_5,add_ln18_7_fu_644_p2__188_carry__1_n_6,add_ln18_7_fu_644_p2__188_carry__1_n_7}),
        .DI({add_ln18_7_fu_644_p2__188_carry__1_i_1_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_2_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_3_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_4_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_5_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_6_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_7_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_8_n_0}),
        .O(sol_d0[23:16]),
        .S({add_ln18_7_fu_644_p2__188_carry__1_i_9_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_10_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_11_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_12_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_13_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_14_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_15_n_0,add_ln18_7_fu_644_p2__188_carry__1_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_1
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_9),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_9),
        .I2(add_ln18_reg_875[22]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_10
       (.I0(add_ln18_reg_875[21]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_10),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_10),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_9),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_9),
        .I5(add_ln18_reg_875[22]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_11
       (.I0(add_ln18_reg_875[20]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_11),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_11),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_10),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_10),
        .I5(add_ln18_reg_875[21]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_12
       (.I0(add_ln18_reg_875[19]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_12),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_12),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_11),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_11),
        .I5(add_ln18_reg_875[20]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_13
       (.I0(add_ln18_reg_875[18]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_13),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_13),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_12),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_12),
        .I5(add_ln18_reg_875[19]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_14
       (.I0(add_ln18_reg_875[17]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_14),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_14),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_13),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_13),
        .I5(add_ln18_reg_875[18]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_15
       (.I0(add_ln18_reg_875[16]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_15),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_15),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_14),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_14),
        .I5(add_ln18_reg_875[17]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_16
       (.I0(add_ln18_reg_875[15]),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_8),
        .I2(add_ln18_7_fu_644_p2__94_carry__0_n_8),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_15),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_15),
        .I5(add_ln18_reg_875[16]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_2
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_10),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_10),
        .I2(add_ln18_reg_875[21]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_3
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_11),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_11),
        .I2(add_ln18_reg_875[20]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_4
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_12),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_12),
        .I2(add_ln18_reg_875[19]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_5
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_13),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_13),
        .I2(add_ln18_reg_875[18]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_6
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_14),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_14),
        .I2(add_ln18_reg_875[17]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_7
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_15),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_15),
        .I2(add_ln18_reg_875[16]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_8
       (.I0(add_ln18_7_fu_644_p2__94_carry__0_n_8),
        .I1(add_ln18_7_fu_644_p2__0_carry__0_n_8),
        .I2(add_ln18_reg_875[15]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__1_i_9
       (.I0(add_ln18_reg_875[22]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_9),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_9),
        .I3(add_ln18_7_fu_644_p2__0_carry__1_n_8),
        .I4(add_ln18_7_fu_644_p2__94_carry__1_n_8),
        .I5(add_ln18_reg_875[23]),
        .O(add_ln18_7_fu_644_p2__188_carry__1_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__188_carry__2
       (.CI(add_ln18_7_fu_644_p2__188_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln18_7_fu_644_p2__188_carry__2_CO_UNCONNECTED[7],add_ln18_7_fu_644_p2__188_carry__2_n_1,add_ln18_7_fu_644_p2__188_carry__2_n_2,add_ln18_7_fu_644_p2__188_carry__2_n_3,add_ln18_7_fu_644_p2__188_carry__2_n_4,add_ln18_7_fu_644_p2__188_carry__2_n_5,add_ln18_7_fu_644_p2__188_carry__2_n_6,add_ln18_7_fu_644_p2__188_carry__2_n_7}),
        .DI({1'b0,add_ln18_7_fu_644_p2__188_carry__2_i_1_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_2_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_3_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_4_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_5_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_6_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_7_n_0}),
        .O(sol_d0[31:24]),
        .S({add_ln18_7_fu_644_p2__188_carry__2_i_8_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_9_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_10_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_11_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_12_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_13_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_14_n_0,add_ln18_7_fu_644_p2__188_carry__2_i_15_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_1
       (.I0(add_ln18_7_fu_644_p2__94_carry__2_n_10),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_10),
        .I2(add_ln18_reg_875[29]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_10
       (.I0(add_ln18_reg_875[28]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_11),
        .I2(add_ln18_7_fu_644_p2__94_carry__2_n_11),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_10),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_10),
        .I5(add_ln18_reg_875[29]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_11
       (.I0(add_ln18_reg_875[27]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_12),
        .I2(add_ln18_7_fu_644_p2__94_carry__2_n_12),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_11),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_11),
        .I5(add_ln18_reg_875[28]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_12
       (.I0(add_ln18_reg_875[26]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_13),
        .I2(add_ln18_7_fu_644_p2__94_carry__2_n_13),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_12),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_12),
        .I5(add_ln18_reg_875[27]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_13
       (.I0(add_ln18_reg_875[25]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_14),
        .I2(add_ln18_7_fu_644_p2__94_carry__2_n_14),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_13),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_13),
        .I5(add_ln18_reg_875[26]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_14
       (.I0(add_ln18_reg_875[24]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_15),
        .I2(add_ln18_7_fu_644_p2__94_carry__2_n_15),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_14),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_14),
        .I5(add_ln18_reg_875[25]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_15
       (.I0(add_ln18_reg_875[23]),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_8),
        .I2(add_ln18_7_fu_644_p2__94_carry__1_n_8),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_15),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_15),
        .I5(add_ln18_reg_875[24]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_15_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_2
       (.I0(add_ln18_7_fu_644_p2__94_carry__2_n_11),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_11),
        .I2(add_ln18_reg_875[28]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_3
       (.I0(add_ln18_7_fu_644_p2__94_carry__2_n_12),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_12),
        .I2(add_ln18_reg_875[27]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_4
       (.I0(add_ln18_7_fu_644_p2__94_carry__2_n_13),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_13),
        .I2(add_ln18_reg_875[26]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_5
       (.I0(add_ln18_7_fu_644_p2__94_carry__2_n_14),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_14),
        .I2(add_ln18_reg_875[25]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_6
       (.I0(add_ln18_7_fu_644_p2__94_carry__2_n_15),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_15),
        .I2(add_ln18_reg_875[24]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_7
       (.I0(add_ln18_7_fu_644_p2__94_carry__1_n_8),
        .I1(add_ln18_7_fu_644_p2__0_carry__1_n_8),
        .I2(add_ln18_reg_875[23]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_8
       (.I0(add_ln18_reg_875[30]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_9),
        .I2(add_ln18_7_fu_644_p2__94_carry__2_n_9),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_8),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_8),
        .I5(add_ln18_reg_875[31]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry__2_i_9
       (.I0(add_ln18_reg_875[29]),
        .I1(add_ln18_7_fu_644_p2__0_carry__2_n_10),
        .I2(add_ln18_7_fu_644_p2__94_carry__2_n_10),
        .I3(add_ln18_7_fu_644_p2__0_carry__2_n_9),
        .I4(add_ln18_7_fu_644_p2__94_carry__2_n_9),
        .I5(add_ln18_reg_875[30]),
        .O(add_ln18_7_fu_644_p2__188_carry__2_i_9_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry_i_1
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_9),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_9),
        .I2(add_ln18_reg_875[6]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry_i_10
       (.I0(add_ln18_reg_875[4]),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_11),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_11),
        .I3(add_ln18_7_fu_644_p2__0_carry_n_10),
        .I4(add_ln18_7_fu_644_p2__94_carry_n_10),
        .I5(add_ln18_reg_875[5]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry_i_11
       (.I0(add_ln18_reg_875[3]),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_12),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_12),
        .I3(add_ln18_7_fu_644_p2__0_carry_n_11),
        .I4(add_ln18_7_fu_644_p2__94_carry_n_11),
        .I5(add_ln18_reg_875[4]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry_i_12
       (.I0(add_ln18_reg_875[2]),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_13),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_13),
        .I3(add_ln18_7_fu_644_p2__0_carry_n_12),
        .I4(add_ln18_7_fu_644_p2__94_carry_n_12),
        .I5(add_ln18_reg_875[3]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry_i_13
       (.I0(add_ln18_reg_875[1]),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_14),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_14),
        .I3(add_ln18_7_fu_644_p2__0_carry_n_13),
        .I4(add_ln18_7_fu_644_p2__94_carry_n_13),
        .I5(add_ln18_reg_875[2]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    add_ln18_7_fu_644_p2__188_carry_i_14
       (.I0(add_ln18_7_fu_644_p2__188_carry_i_7_n_0),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_14),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_14),
        .I3(add_ln18_reg_875[1]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_14_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    add_ln18_7_fu_644_p2__188_carry_i_15
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_15),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_15),
        .I2(add_ln18_reg_875[0]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry_i_2
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_10),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_10),
        .I2(add_ln18_reg_875[5]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry_i_3
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_11),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_11),
        .I2(add_ln18_reg_875[4]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry_i_4
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_12),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_12),
        .I2(add_ln18_reg_875[3]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry_i_5
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_13),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_13),
        .I2(add_ln18_reg_875[2]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry_i_6
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_14),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_14),
        .I2(add_ln18_reg_875[1]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_6_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__188_carry_i_7
       (.I0(add_ln18_7_fu_644_p2__94_carry_n_15),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_15),
        .I2(add_ln18_reg_875[0]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry_i_8
       (.I0(add_ln18_reg_875[6]),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_9),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_9),
        .I3(add_ln18_7_fu_644_p2__0_carry_n_8),
        .I4(add_ln18_7_fu_644_p2__94_carry_n_8),
        .I5(add_ln18_reg_875[7]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__188_carry_i_9
       (.I0(add_ln18_reg_875[5]),
        .I1(add_ln18_7_fu_644_p2__0_carry_n_10),
        .I2(add_ln18_7_fu_644_p2__94_carry_n_10),
        .I3(add_ln18_7_fu_644_p2__0_carry_n_9),
        .I4(add_ln18_7_fu_644_p2__94_carry_n_9),
        .I5(add_ln18_reg_875[6]),
        .O(add_ln18_7_fu_644_p2__188_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__94_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__94_carry_n_0,add_ln18_7_fu_644_p2__94_carry_n_1,add_ln18_7_fu_644_p2__94_carry_n_2,add_ln18_7_fu_644_p2__94_carry_n_3,add_ln18_7_fu_644_p2__94_carry_n_4,add_ln18_7_fu_644_p2__94_carry_n_5,add_ln18_7_fu_644_p2__94_carry_n_6,add_ln18_7_fu_644_p2__94_carry_n_7}),
        .DI({add_ln18_7_fu_644_p2__94_carry_i_1_n_0,add_ln18_7_fu_644_p2__94_carry_i_2_n_0,add_ln18_7_fu_644_p2__94_carry_i_3_n_0,add_ln18_7_fu_644_p2__94_carry_i_4_n_0,add_ln18_7_fu_644_p2__94_carry_i_5_n_0,add_ln18_7_fu_644_p2__94_carry_i_6_n_0,add_ln18_7_fu_644_p2__94_carry_i_7_n_0,1'b0}),
        .O({add_ln18_7_fu_644_p2__94_carry_n_8,add_ln18_7_fu_644_p2__94_carry_n_9,add_ln18_7_fu_644_p2__94_carry_n_10,add_ln18_7_fu_644_p2__94_carry_n_11,add_ln18_7_fu_644_p2__94_carry_n_12,add_ln18_7_fu_644_p2__94_carry_n_13,add_ln18_7_fu_644_p2__94_carry_n_14,add_ln18_7_fu_644_p2__94_carry_n_15}),
        .S({add_ln18_7_fu_644_p2__94_carry_i_8_n_0,add_ln18_7_fu_644_p2__94_carry_i_9_n_0,add_ln18_7_fu_644_p2__94_carry_i_10_n_0,add_ln18_7_fu_644_p2__94_carry_i_11_n_0,add_ln18_7_fu_644_p2__94_carry_i_12_n_0,add_ln18_7_fu_644_p2__94_carry_i_13_n_0,add_ln18_7_fu_644_p2__94_carry_i_14_n_0,add_ln18_7_fu_644_p2__94_carry_i_15_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__94_carry__0
       (.CI(add_ln18_7_fu_644_p2__94_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__94_carry__0_n_0,add_ln18_7_fu_644_p2__94_carry__0_n_1,add_ln18_7_fu_644_p2__94_carry__0_n_2,add_ln18_7_fu_644_p2__94_carry__0_n_3,add_ln18_7_fu_644_p2__94_carry__0_n_4,add_ln18_7_fu_644_p2__94_carry__0_n_5,add_ln18_7_fu_644_p2__94_carry__0_n_6,add_ln18_7_fu_644_p2__94_carry__0_n_7}),
        .DI({add_ln18_7_fu_644_p2__94_carry__0_i_1_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_2_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_3_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_4_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_5_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_6_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_7_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_8_n_0}),
        .O({add_ln18_7_fu_644_p2__94_carry__0_n_8,add_ln18_7_fu_644_p2__94_carry__0_n_9,add_ln18_7_fu_644_p2__94_carry__0_n_10,add_ln18_7_fu_644_p2__94_carry__0_n_11,add_ln18_7_fu_644_p2__94_carry__0_n_12,add_ln18_7_fu_644_p2__94_carry__0_n_13,add_ln18_7_fu_644_p2__94_carry__0_n_14,add_ln18_7_fu_644_p2__94_carry__0_n_15}),
        .S({add_ln18_7_fu_644_p2__94_carry__0_i_9_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_10_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_11_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_12_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_13_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_14_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_15_n_0,add_ln18_7_fu_644_p2__94_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_1
       (.I0(\mul_ln17_1_reg_795_reg[14]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[14]),
        .I2(\mul_ln17_3_reg_815_reg[14]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_10
       (.I0(\mul_ln17_3_reg_815_reg[13]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[13]),
        .I2(\mul_ln17_1_reg_795_reg[13]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[14]),
        .I4(\mul_ln17_1_reg_795_reg[14]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[14]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_11
       (.I0(\mul_ln17_3_reg_815_reg[12]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[12]),
        .I2(\mul_ln17_1_reg_795_reg[12]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[13]),
        .I4(\mul_ln17_1_reg_795_reg[13]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[13]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_12
       (.I0(\mul_ln17_3_reg_815_reg[11]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[11]),
        .I2(\mul_ln17_1_reg_795_reg[11]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[12]),
        .I4(\mul_ln17_1_reg_795_reg[12]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[12]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_13
       (.I0(\mul_ln17_3_reg_815_reg[10]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[10]),
        .I2(\mul_ln17_1_reg_795_reg[10]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[11]),
        .I4(\mul_ln17_1_reg_795_reg[11]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[11]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_14
       (.I0(\mul_ln17_3_reg_815_reg[9]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[9]),
        .I2(\mul_ln17_1_reg_795_reg[9]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[10]),
        .I4(\mul_ln17_1_reg_795_reg[10]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[10]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_15
       (.I0(\mul_ln17_3_reg_815_reg[8]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[8]),
        .I2(\mul_ln17_1_reg_795_reg[8]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[9]),
        .I4(\mul_ln17_1_reg_795_reg[9]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[9]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_15_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_16
       (.I0(\mul_ln17_3_reg_815_reg[7]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[7]),
        .I2(\mul_ln17_1_reg_795_reg[7]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[8]),
        .I4(\mul_ln17_1_reg_795_reg[8]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[8]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_2
       (.I0(\mul_ln17_1_reg_795_reg[13]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[13]),
        .I2(\mul_ln17_3_reg_815_reg[13]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_3
       (.I0(\mul_ln17_1_reg_795_reg[12]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[12]),
        .I2(\mul_ln17_3_reg_815_reg[12]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_4
       (.I0(\mul_ln17_1_reg_795_reg[11]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[11]),
        .I2(\mul_ln17_3_reg_815_reg[11]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_5
       (.I0(\mul_ln17_1_reg_795_reg[10]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[10]),
        .I2(\mul_ln17_3_reg_815_reg[10]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_6
       (.I0(\mul_ln17_1_reg_795_reg[9]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[9]),
        .I2(\mul_ln17_3_reg_815_reg[9]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_7
       (.I0(\mul_ln17_1_reg_795_reg[8]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[8]),
        .I2(\mul_ln17_3_reg_815_reg[8]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_8
       (.I0(\mul_ln17_1_reg_795_reg[7]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[7]),
        .I2(\mul_ln17_3_reg_815_reg[7]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry__0_i_9
       (.I0(\mul_ln17_3_reg_815_reg[14]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[14]),
        .I2(\mul_ln17_1_reg_795_reg[14]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[15]),
        .I4(\mul_ln17_1_reg_795_reg[15]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[15]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__0_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__94_carry__1
       (.CI(add_ln18_7_fu_644_p2__94_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_7_fu_644_p2__94_carry__1_n_0,add_ln18_7_fu_644_p2__94_carry__1_n_1,add_ln18_7_fu_644_p2__94_carry__1_n_2,add_ln18_7_fu_644_p2__94_carry__1_n_3,add_ln18_7_fu_644_p2__94_carry__1_n_4,add_ln18_7_fu_644_p2__94_carry__1_n_5,add_ln18_7_fu_644_p2__94_carry__1_n_6,add_ln18_7_fu_644_p2__94_carry__1_n_7}),
        .DI({mul_32s_32s_32_1_1_U2_n_90,mul_32s_32s_32_1_1_U2_n_91,mul_32s_32s_32_1_1_U2_n_92,mul_32s_32s_32_1_1_U2_n_93,mul_32s_32s_32_1_1_U2_n_94,mul_32s_32s_32_1_1_U2_n_95,mul_32s_32s_32_1_1_U2_n_96,add_ln18_7_fu_644_p2__94_carry__1_i_8_n_0}),
        .O({add_ln18_7_fu_644_p2__94_carry__1_n_8,add_ln18_7_fu_644_p2__94_carry__1_n_9,add_ln18_7_fu_644_p2__94_carry__1_n_10,add_ln18_7_fu_644_p2__94_carry__1_n_11,add_ln18_7_fu_644_p2__94_carry__1_n_12,add_ln18_7_fu_644_p2__94_carry__1_n_13,add_ln18_7_fu_644_p2__94_carry__1_n_14,add_ln18_7_fu_644_p2__94_carry__1_n_15}),
        .S({mul_32s_32s_32_1_1_U4_n_80,mul_32s_32s_32_1_1_U4_n_81,mul_32s_32s_32_1_1_U4_n_82,mul_32s_32s_32_1_1_U4_n_83,mul_32s_32s_32_1_1_U4_n_84,mul_32s_32s_32_1_1_U4_n_85,mul_32s_32s_32_1_1_U4_n_86,mul_32s_32s_32_1_1_U2_n_81}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry__1_i_8
       (.I0(\mul_ln17_1_reg_795_reg[15]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[15]),
        .I2(\mul_ln17_3_reg_815_reg[15]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry__1_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_7_fu_644_p2__94_carry__2
       (.CI(add_ln18_7_fu_644_p2__94_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln18_7_fu_644_p2__94_carry__2_CO_UNCONNECTED[7],add_ln18_7_fu_644_p2__94_carry__2_n_1,add_ln18_7_fu_644_p2__94_carry__2_n_2,add_ln18_7_fu_644_p2__94_carry__2_n_3,add_ln18_7_fu_644_p2__94_carry__2_n_4,add_ln18_7_fu_644_p2__94_carry__2_n_5,add_ln18_7_fu_644_p2__94_carry__2_n_6,add_ln18_7_fu_644_p2__94_carry__2_n_7}),
        .DI({1'b0,mul_32s_32s_32_1_1_U2_n_83,mul_32s_32s_32_1_1_U2_n_84,mul_32s_32s_32_1_1_U2_n_85,mul_32s_32s_32_1_1_U2_n_86,mul_32s_32s_32_1_1_U2_n_87,mul_32s_32s_32_1_1_U2_n_88,mul_32s_32s_32_1_1_U2_n_89}),
        .O({add_ln18_7_fu_644_p2__94_carry__2_n_8,add_ln18_7_fu_644_p2__94_carry__2_n_9,add_ln18_7_fu_644_p2__94_carry__2_n_10,add_ln18_7_fu_644_p2__94_carry__2_n_11,add_ln18_7_fu_644_p2__94_carry__2_n_12,add_ln18_7_fu_644_p2__94_carry__2_n_13,add_ln18_7_fu_644_p2__94_carry__2_n_14,add_ln18_7_fu_644_p2__94_carry__2_n_15}),
        .S({mul_32s_32s_32_1_1_U4_n_87,mul_32s_32s_32_1_1_U2_n_82,mul_32s_32s_32_1_1_U4_n_88,mul_32s_32s_32_1_1_U4_n_89,mul_32s_32s_32_1_1_U4_n_90,mul_32s_32s_32_1_1_U4_n_91,mul_32s_32s_32_1_1_U4_n_92,mul_32s_32s_32_1_1_U4_n_93}));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry_i_1
       (.I0(\mul_ln17_1_reg_795_reg[6]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[6]),
        .I2(\mul_ln17_3_reg_815_reg[6]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry_i_10
       (.I0(\mul_ln17_3_reg_815_reg[4]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[4]),
        .I2(\mul_ln17_1_reg_795_reg[4]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[5]),
        .I4(\mul_ln17_1_reg_795_reg[5]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[5]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry_i_11
       (.I0(\mul_ln17_3_reg_815_reg[3]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[3]),
        .I2(\mul_ln17_1_reg_795_reg[3]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[4]),
        .I4(\mul_ln17_1_reg_795_reg[4]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[4]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry_i_12
       (.I0(\mul_ln17_3_reg_815_reg[2]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[2]),
        .I2(\mul_ln17_1_reg_795_reg[2]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[3]),
        .I4(\mul_ln17_1_reg_795_reg[3]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[3]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_12_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry_i_13
       (.I0(\mul_ln17_3_reg_815_reg[1]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[1]),
        .I2(\mul_ln17_1_reg_795_reg[1]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[2]),
        .I4(\mul_ln17_1_reg_795_reg[2]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[2]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_13_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry_i_14
       (.I0(\mul_ln17_3_reg_815_reg[0]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[0]),
        .I2(\mul_ln17_1_reg_795_reg[0]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[1]),
        .I4(\mul_ln17_1_reg_795_reg[1]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[1]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_14_n_0));
  LUT3 #(
    .INIT(8'h96)) 
    add_ln18_7_fu_644_p2__94_carry_i_15
       (.I0(\mul_ln17_3_reg_815_reg[0]__0_n_0 ),
        .I1(\mul_ln17_1_reg_795_reg[0]__0_n_0 ),
        .I2(mul_ln17_8_reg_870[0]),
        .O(add_ln18_7_fu_644_p2__94_carry_i_15_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry_i_2
       (.I0(\mul_ln17_1_reg_795_reg[5]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[5]),
        .I2(\mul_ln17_3_reg_815_reg[5]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry_i_3
       (.I0(\mul_ln17_1_reg_795_reg[4]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[4]),
        .I2(\mul_ln17_3_reg_815_reg[4]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry_i_4
       (.I0(\mul_ln17_1_reg_795_reg[3]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[3]),
        .I2(\mul_ln17_3_reg_815_reg[3]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry_i_5
       (.I0(\mul_ln17_1_reg_795_reg[2]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[2]),
        .I2(\mul_ln17_3_reg_815_reg[2]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry_i_6
       (.I0(\mul_ln17_1_reg_795_reg[1]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[1]),
        .I2(\mul_ln17_3_reg_815_reg[1]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_6_n_0));
  LUT3 #(
    .INIT(8'hE8)) 
    add_ln18_7_fu_644_p2__94_carry_i_7
       (.I0(\mul_ln17_1_reg_795_reg[0]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[0]),
        .I2(\mul_ln17_3_reg_815_reg[0]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry_i_8
       (.I0(\mul_ln17_3_reg_815_reg[6]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[6]),
        .I2(\mul_ln17_1_reg_795_reg[6]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[7]),
        .I4(\mul_ln17_1_reg_795_reg[7]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[7]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'h17E8E817E81717E8)) 
    add_ln18_7_fu_644_p2__94_carry_i_9
       (.I0(\mul_ln17_3_reg_815_reg[5]__0_n_0 ),
        .I1(mul_ln17_8_reg_870[5]),
        .I2(\mul_ln17_1_reg_795_reg[5]__0_n_0 ),
        .I3(mul_ln17_8_reg_870[6]),
        .I4(\mul_ln17_1_reg_795_reg[6]__0_n_0 ),
        .I5(\mul_ln17_3_reg_815_reg[6]__0_n_0 ),
        .O(add_ln18_7_fu_644_p2__94_carry_i_9_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_fu_617_p2_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({add_ln18_fu_617_p2_carry_n_0,add_ln18_fu_617_p2_carry_n_1,add_ln18_fu_617_p2_carry_n_2,add_ln18_fu_617_p2_carry_n_3,add_ln18_fu_617_p2_carry_n_4,add_ln18_fu_617_p2_carry_n_5,add_ln18_fu_617_p2_carry_n_6,add_ln18_fu_617_p2_carry_n_7}),
        .DI({\mul_ln17_6_reg_850_reg[7]__0_n_0 ,\mul_ln17_6_reg_850_reg[6]__0_n_0 ,\mul_ln17_6_reg_850_reg[5]__0_n_0 ,\mul_ln17_6_reg_850_reg[4]__0_n_0 ,\mul_ln17_6_reg_850_reg[3]__0_n_0 ,\mul_ln17_6_reg_850_reg[2]__0_n_0 ,\mul_ln17_6_reg_850_reg[1]__0_n_0 ,\mul_ln17_6_reg_850_reg[0]__0_n_0 }),
        .O(add_ln18_fu_617_p2[7:0]),
        .S({add_ln18_fu_617_p2_carry_i_1_n_0,add_ln18_fu_617_p2_carry_i_2_n_0,add_ln18_fu_617_p2_carry_i_3_n_0,add_ln18_fu_617_p2_carry_i_4_n_0,add_ln18_fu_617_p2_carry_i_5_n_0,add_ln18_fu_617_p2_carry_i_6_n_0,add_ln18_fu_617_p2_carry_i_7_n_0,add_ln18_fu_617_p2_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_fu_617_p2_carry__0
       (.CI(add_ln18_fu_617_p2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_fu_617_p2_carry__0_n_0,add_ln18_fu_617_p2_carry__0_n_1,add_ln18_fu_617_p2_carry__0_n_2,add_ln18_fu_617_p2_carry__0_n_3,add_ln18_fu_617_p2_carry__0_n_4,add_ln18_fu_617_p2_carry__0_n_5,add_ln18_fu_617_p2_carry__0_n_6,add_ln18_fu_617_p2_carry__0_n_7}),
        .DI({\mul_ln17_6_reg_850_reg[15]__0_n_0 ,\mul_ln17_6_reg_850_reg[14]__0_n_0 ,\mul_ln17_6_reg_850_reg[13]__0_n_0 ,\mul_ln17_6_reg_850_reg[12]__0_n_0 ,\mul_ln17_6_reg_850_reg[11]__0_n_0 ,\mul_ln17_6_reg_850_reg[10]__0_n_0 ,\mul_ln17_6_reg_850_reg[9]__0_n_0 ,\mul_ln17_6_reg_850_reg[8]__0_n_0 }),
        .O(add_ln18_fu_617_p2[15:8]),
        .S({add_ln18_fu_617_p2_carry__0_i_1_n_0,add_ln18_fu_617_p2_carry__0_i_2_n_0,add_ln18_fu_617_p2_carry__0_i_3_n_0,add_ln18_fu_617_p2_carry__0_i_4_n_0,add_ln18_fu_617_p2_carry__0_i_5_n_0,add_ln18_fu_617_p2_carry__0_i_6_n_0,add_ln18_fu_617_p2_carry__0_i_7_n_0,add_ln18_fu_617_p2_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_1
       (.I0(\mul_ln17_6_reg_850_reg[15]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[15]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_2
       (.I0(\mul_ln17_6_reg_850_reg[14]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[14]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_3
       (.I0(\mul_ln17_6_reg_850_reg[13]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[13]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_4
       (.I0(\mul_ln17_6_reg_850_reg[12]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[12]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_5
       (.I0(\mul_ln17_6_reg_850_reg[11]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[11]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_6
       (.I0(\mul_ln17_6_reg_850_reg[10]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[10]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_7
       (.I0(\mul_ln17_6_reg_850_reg[9]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[9]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry__0_i_8
       (.I0(\mul_ln17_6_reg_850_reg[8]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[8]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_fu_617_p2_carry__1
       (.CI(add_ln18_fu_617_p2_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({add_ln18_fu_617_p2_carry__1_n_0,add_ln18_fu_617_p2_carry__1_n_1,add_ln18_fu_617_p2_carry__1_n_2,add_ln18_fu_617_p2_carry__1_n_3,add_ln18_fu_617_p2_carry__1_n_4,add_ln18_fu_617_p2_carry__1_n_5,add_ln18_fu_617_p2_carry__1_n_6,add_ln18_fu_617_p2_carry__1_n_7}),
        .DI(mul_ln17_6_reg_850_reg__1[23:16]),
        .O(add_ln18_fu_617_p2[23:16]),
        .S({mul_32s_32s_32_1_1_U7_n_81,mul_32s_32s_32_1_1_U7_n_82,mul_32s_32s_32_1_1_U7_n_83,mul_32s_32s_32_1_1_U7_n_84,mul_32s_32s_32_1_1_U7_n_85,mul_32s_32s_32_1_1_U7_n_86,mul_32s_32s_32_1_1_U7_n_87,mul_32s_32s_32_1_1_U7_n_88}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln18_fu_617_p2_carry__2
       (.CI(add_ln18_fu_617_p2_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln18_fu_617_p2_carry__2_CO_UNCONNECTED[7],add_ln18_fu_617_p2_carry__2_n_1,add_ln18_fu_617_p2_carry__2_n_2,add_ln18_fu_617_p2_carry__2_n_3,add_ln18_fu_617_p2_carry__2_n_4,add_ln18_fu_617_p2_carry__2_n_5,add_ln18_fu_617_p2_carry__2_n_6,add_ln18_fu_617_p2_carry__2_n_7}),
        .DI({1'b0,mul_ln17_6_reg_850_reg__1[30:24]}),
        .O(add_ln18_fu_617_p2[31:24]),
        .S({mul_32s_32s_32_1_1_U7_n_89,mul_32s_32s_32_1_1_U7_n_90,mul_32s_32s_32_1_1_U7_n_91,mul_32s_32s_32_1_1_U7_n_92,mul_32s_32s_32_1_1_U7_n_93,mul_32s_32s_32_1_1_U7_n_94,mul_32s_32s_32_1_1_U7_n_95,mul_32s_32s_32_1_1_U7_n_96}));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_1
       (.I0(\mul_ln17_6_reg_850_reg[7]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[7]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_2
       (.I0(\mul_ln17_6_reg_850_reg[6]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[6]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_3
       (.I0(\mul_ln17_6_reg_850_reg[5]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[5]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_4
       (.I0(\mul_ln17_6_reg_850_reg[4]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[4]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_5
       (.I0(\mul_ln17_6_reg_850_reg[3]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[3]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_6
       (.I0(\mul_ln17_6_reg_850_reg[2]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[2]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_7
       (.I0(\mul_ln17_6_reg_850_reg[1]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[1]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln18_fu_617_p2_carry_i_8
       (.I0(\mul_ln17_6_reg_850_reg[0]__0_n_0 ),
        .I1(\mul_ln17_7_reg_855_reg[0]__0_n_0 ),
        .O(add_ln18_fu_617_p2_carry_i_8_n_0));
  FDRE \add_ln18_reg_875_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[0]),
        .Q(add_ln18_reg_875[0]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[10]),
        .Q(add_ln18_reg_875[10]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[11]),
        .Q(add_ln18_reg_875[11]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[12]),
        .Q(add_ln18_reg_875[12]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[13]),
        .Q(add_ln18_reg_875[13]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[14]),
        .Q(add_ln18_reg_875[14]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[15]),
        .Q(add_ln18_reg_875[15]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[16]),
        .Q(add_ln18_reg_875[16]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[17]),
        .Q(add_ln18_reg_875[17]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[18]),
        .Q(add_ln18_reg_875[18]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[19]),
        .Q(add_ln18_reg_875[19]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[1]),
        .Q(add_ln18_reg_875[1]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[20]),
        .Q(add_ln18_reg_875[20]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[21]),
        .Q(add_ln18_reg_875[21]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[22]),
        .Q(add_ln18_reg_875[22]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[23]),
        .Q(add_ln18_reg_875[23]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[24]),
        .Q(add_ln18_reg_875[24]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[25]),
        .Q(add_ln18_reg_875[25]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[26]),
        .Q(add_ln18_reg_875[26]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[27]),
        .Q(add_ln18_reg_875[27]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[28]),
        .Q(add_ln18_reg_875[28]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[29]),
        .Q(add_ln18_reg_875[29]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[2]),
        .Q(add_ln18_reg_875[2]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[30]),
        .Q(add_ln18_reg_875[30]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[31]),
        .Q(add_ln18_reg_875[31]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[3]),
        .Q(add_ln18_reg_875[3]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[4]),
        .Q(add_ln18_reg_875[4]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[5]),
        .Q(add_ln18_reg_875[5]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[6]),
        .Q(add_ln18_reg_875[6]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[7]),
        .Q(add_ln18_reg_875[7]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[8]),
        .Q(add_ln18_reg_875[8]),
        .R(1'b0));
  FDRE \add_ln18_reg_875_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln18_fu_617_p2[9]),
        .Q(add_ln18_reg_875[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFAAAE)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_done_reg1),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(\empty_6_reg_737_reg[1]_0 ),
        .I4(ap_CS_fsm_pp0_stage4),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0001000100010000)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(ap_CS_fsm_pp0_stage3),
        .I1(ap_CS_fsm_pp0_stage4),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(\empty_6_reg_737_reg[1]_0 ),
        .I5(ap_enable_reg_pp0_iter1),
        .O(ap_NS_fsm[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h4700FF00)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(\empty_6_reg_737_reg[1]_0 ),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(\icmp_ln8_reg_742_reg_n_0_[0] ),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h88800080)) 
    \ap_CS_fsm[7]_i_2 
       (.I0(\icmp_ln8_reg_742_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\empty_6_reg_737_reg[1]_0 ),
        .O(ap_done_reg1));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(ap_CS_fsm_pp0_stage0),
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
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage2),
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
  LUT6 #(
    .INIT(64'h0707070000000700)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(\icmp_ln8_reg_742_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(ap_rst),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(ap_CS_fsm_pp0_stage0),
        .I5(\empty_6_reg_737_reg[1]_0 ),
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
    .INIT(32'h00101510)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst),
        .I1(flow_control_loop_pipe_sequential_init_U_n_26),
        .I2(ap_CS_fsm_pp0_stage4),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(ap_CS_fsm_pp0_stage1),
        .O(ap_enable_reg_pp0_iter1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter1_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \c_fu_84[0]_i_1 
       (.I0(add_ln17_3_reg_776[0]),
        .O(add_ln10_fu_597_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \c_fu_84[1]_i_1 
       (.I0(add_ln17_3_reg_776[0]),
        .I1(select_ln8_reg_751[1]),
        .O(add_ln10_fu_597_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \c_fu_84[2]_i_1 
       (.I0(select_ln8_reg_751[2]),
        .I1(select_ln8_reg_751[1]),
        .I2(add_ln17_3_reg_776[0]),
        .O(add_ln10_fu_597_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \c_fu_84[3]_i_1 
       (.I0(select_ln8_reg_751[3]),
        .I1(add_ln17_3_reg_776[0]),
        .I2(select_ln8_reg_751[1]),
        .I3(select_ln8_reg_751[2]),
        .O(add_ln10_fu_597_p2[3]));
  LUT5 #(
    .INIT(32'h44400040)) 
    \c_fu_84[4]_i_2 
       (.I0(\icmp_ln8_reg_742_reg_n_0_[0] ),
        .I1(ap_CS_fsm_pp0_stage4),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_CS_fsm_pp0_stage0),
        .I4(\empty_6_reg_737_reg[1]_0 ),
        .O(c_fu_840));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \c_fu_84[4]_i_3 
       (.I0(select_ln8_reg_751[4]),
        .I1(select_ln8_reg_751[2]),
        .I2(select_ln8_reg_751[1]),
        .I3(add_ln17_3_reg_776[0]),
        .I4(select_ln8_reg_751[3]),
        .O(add_ln10_fu_597_p2[4]));
  FDRE \c_fu_84_reg[0] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(add_ln10_fu_597_p2[0]),
        .Q(c_fu_84[0]),
        .R(c_fu_8401_out));
  FDRE \c_fu_84_reg[1] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(add_ln10_fu_597_p2[1]),
        .Q(c_fu_84[1]),
        .R(c_fu_8401_out));
  FDRE \c_fu_84_reg[2] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(add_ln10_fu_597_p2[2]),
        .Q(c_fu_84[2]),
        .R(c_fu_8401_out));
  FDRE \c_fu_84_reg[3] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(add_ln10_fu_597_p2[3]),
        .Q(c_fu_84[3]),
        .R(c_fu_8401_out));
  FDRE \c_fu_84_reg[4] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(add_ln10_fu_597_p2[4]),
        .Q(c_fu_84[4]),
        .R(c_fu_8401_out));
  FDRE \empty_6_reg_737_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(flow_control_loop_pipe_sequential_init_U_n_53),
        .Q(empty_6_reg_737[0]),
        .R(1'b0));
  FDRE \empty_6_reg_737_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(flow_control_loop_pipe_sequential_init_U_n_66),
        .Q(empty_6_reg_737[1]),
        .R(1'b0));
  FDRE \empty_6_reg_737_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(empty_6_fu_298_p2[2]),
        .Q(empty_6_reg_737[2]),
        .R(1'b0));
  FDRE \empty_6_reg_737_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(empty_6_fu_298_p2[3]),
        .Q(empty_6_reg_737[3]),
        .R(1'b0));
  FDRE \empty_6_reg_737_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(empty_6_fu_298_p2[4]),
        .Q(empty_6_reg_737[4]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(add_ln17_6_fu_479_p2),
        .Q({ap_CS_fsm_pp0_stage4,ap_CS_fsm_pp0_stage3,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage1,ap_CS_fsm_pp0_stage0}),
        .S({\add_ln17_6_reg_783[7]_i_5_n_0 ,\add_ln17_6_reg_783[7]_i_6_n_0 }),
        .add_ln17_3_fu_473_p2(add_ln17_3_fu_473_p2),
        .add_ln17_3_reg_776(add_ln17_3_reg_776[4:0]),
        .add_ln17_3_reg_7760(add_ln17_3_reg_7760),
        .\add_ln17_3_reg_776_reg[7] ({\add_ln17_3_reg_776[7]_i_5_n_0 ,\add_ln17_3_reg_776[7]_i_6_n_0 }),
        .add_ln17_reg_756(add_ln17_reg_756[3:1]),
        .\add_ln17_reg_756_reg[9] (\orig_address0[9]_INST_0_i_10_n_0 ),
        .add_ln8_fu_368_p2(add_ln8_fu_368_p2),
        .\ap_CS_fsm_reg[0] (flow_control_loop_pipe_sequential_init_U_n_53),
        .\ap_CS_fsm_reg[6] (D),
        .\ap_CS_fsm_reg[7] (Q[5:4]),
        .ap_clk(ap_clk),
        .ap_done_cache_reg_0(\icmp_ln8_reg_742_reg_n_0_[0] ),
        .ap_done_reg1(ap_done_reg1),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_rst(ap_rst),
        .c_fu_8401_out(c_fu_8401_out),
        .\c_fu_84_reg[0] (flow_control_loop_pipe_sequential_init_U_n_10),
        .\c_fu_84_reg[1] (flow_control_loop_pipe_sequential_init_U_n_68),
        .\c_fu_84_reg[1]_0 (flow_control_loop_pipe_sequential_init_U_n_69),
        .\c_fu_84_reg[1]_1 (flow_control_loop_pipe_sequential_init_U_n_70),
        .\c_fu_84_reg[2] (flow_control_loop_pipe_sequential_init_U_n_51),
        .\empty_6_reg_737_reg[1] (\empty_6_reg_737_reg[1]_0 ),
        .\empty_6_reg_737_reg[4] (r_fu_88),
        .grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_reg(flow_control_loop_pipe_sequential_init_U_n_26),
        .\icmp_ln10_reg_746_reg[0] (c_fu_84),
        .icmp_ln8_fu_362_p2(icmp_ln8_fu_362_p2),
        .\icmp_ln8_reg_742_reg[0] (\indvar_flatten_fu_92_reg_n_0_[5] ),
        .\icmp_ln8_reg_742_reg[0]_0 (\indvar_flatten_fu_92_reg_n_0_[1] ),
        .\icmp_ln8_reg_742_reg[0]_1 (\indvar_flatten_fu_92_reg_n_0_[0] ),
        .indvar_flatten_fu_92(indvar_flatten_fu_92),
        .\indvar_flatten_fu_92_reg[3] (\indvar_flatten_fu_92_reg_n_0_[3] ),
        .\indvar_flatten_fu_92_reg[3]_0 (\indvar_flatten_fu_92_reg_n_0_[2] ),
        .\indvar_flatten_fu_92_reg[4] (\indvar_flatten_fu_92_reg_n_0_[4] ),
        .\indvar_flatten_fu_92_reg[9] (\indvar_flatten_fu_92_reg_n_0_[9] ),
        .\indvar_flatten_fu_92_reg[9]_0 (\indvar_flatten_fu_92_reg_n_0_[7] ),
        .\indvar_flatten_fu_92_reg[9]_1 (\indvar_flatten_fu_92_reg_n_0_[6] ),
        .\indvar_flatten_fu_92_reg[9]_2 (\indvar_flatten_fu_92_reg_n_0_[8] ),
        .orig_address0(orig_address0),
        .\orig_address0[2]_0 (\orig_address0[2]_INST_0_i_2_n_0 ),
        .\orig_address0[3]_0 (\orig_address0[3]_INST_0_i_4_n_0 ),
        .\orig_address0[4]_0 (\orig_address0[4]_INST_0_i_3_n_0 ),
        .\orig_address0[4]_1 (\orig_address0[4]_INST_0_i_5_n_0 ),
        .\orig_address0[5]_0 (\orig_address0[5]_INST_0_i_4_n_0 ),
        .\orig_address0[5]_1 (\orig_address0[5]_INST_0_i_5_n_0 ),
        .\orig_address0[6]_0 (\orig_address0[6]_INST_0_i_4_n_0 ),
        .\orig_address0[6]_1 (\orig_address0[6]_INST_0_i_5_n_0 ),
        .\orig_address0[7]_0 (\orig_address0[7]_INST_0_i_4_n_0 ),
        .\orig_address0[7]_1 (\orig_address0[7]_INST_0_i_5_n_0 ),
        .\orig_address0[8]_0 (\orig_address0[8]_INST_0_i_2_n_0 ),
        .\orig_address0[8]_1 (\orig_address0[8]_INST_0_i_3_n_0 ),
        .\orig_address0[9]_0 (\orig_address0[9]_INST_0_i_5_n_0 ),
        .\orig_address0[9]_1 (\orig_address0[9]_INST_0_i_6_n_0 ),
        .orig_address0_2_sp_1(\orig_address0[3]_INST_0_i_2_n_0 ),
        .orig_address0_3_sp_1(\orig_address0[3]_INST_0_i_1_n_0 ),
        .orig_address0_4_sp_1(\orig_address0[4]_INST_0_i_2_n_0 ),
        .orig_address0_5_sp_1(\orig_address0[5]_INST_0_i_1_n_0 ),
        .orig_address0_6_sp_1(\orig_address0[6]_INST_0_i_1_n_0 ),
        .orig_address0_7_sp_1(\orig_address0[7]_INST_0_i_1_n_0 ),
        .orig_address0_8_sp_1(\orig_address0[8]_INST_0_i_1_n_0 ),
        .orig_address0_9_sp_1(\orig_address0[9]_INST_0_i_1_n_0 ),
        .orig_address1(orig_address1),
        .\orig_address1[4]_0 (\orig_address1[4]_INST_0_i_2_n_0 ),
        .\orig_address1[9] (add_ln17_6_reg_783),
        .\orig_address1[9]_0 (\orig_address1[9]_INST_0_i_1_n_0 ),
        .\orig_address1[9]_1 (\orig_address1[9]_INST_0_i_2_n_0 ),
        .orig_address1_2_sp_1(\orig_address1[2]_INST_0_i_2_n_0 ),
        .orig_address1_3_sp_1(\orig_address1[3]_INST_0_i_1_n_0 ),
        .orig_address1_4_sp_1(\orig_address1[4]_INST_0_i_1_n_0 ),
        .orig_address1_5_sp_1(\orig_address1[5]_INST_0_i_1_n_0 ),
        .orig_address1_6_sp_1(\orig_address1[6]_INST_0_i_1_n_0 ),
        .orig_address1_7_sp_1(\orig_address1[7]_INST_0_i_1_n_0 ),
        .orig_address1_8_sp_1(\orig_address1[8]_INST_0_i_1_n_0 ),
        .\r_fu_88_reg[0] (flow_control_loop_pipe_sequential_init_U_n_39),
        .\r_fu_88_reg[0]_0 ({empty_6_fu_298_p2,flow_control_loop_pipe_sequential_init_U_n_66}),
        .\r_fu_88_reg[0]_1 (flow_control_loop_pipe_sequential_init_U_n_82),
        .\r_fu_88_reg[2] (flow_control_loop_pipe_sequential_init_U_n_61),
        .\r_fu_88_reg[3] (flow_control_loop_pipe_sequential_init_U_n_52),
        .\r_fu_88_reg[3]_0 (flow_control_loop_pipe_sequential_init_U_n_59),
        .\r_fu_88_reg[3]_1 (flow_control_loop_pipe_sequential_init_U_n_60),
        .\r_fu_88_reg[3]_2 (flow_control_loop_pipe_sequential_init_U_n_67),
        .\r_fu_88_reg[4] (ap_sig_allocacmp_r_1),
        .\r_fu_88_reg[4]_0 (flow_control_loop_pipe_sequential_init_U_n_62),
        .select_ln8_fu_383_p3(select_ln8_fu_383_p3));
  LUT6 #(
    .INIT(64'hAAAEEEEEEEEEEEEE)) 
    grp_stencil_2d_Pipeline_VITIS_LOOP_8_1_VITIS_LOOP_10_2_fu_136_ap_start_reg_i_1
       (.I0(Q[4]),
        .I1(\empty_6_reg_737_reg[1]_0 ),
        .I2(ap_CS_fsm_pp0_stage0),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(\icmp_ln8_reg_742_reg_n_0_[0] ),
        .O(\ap_CS_fsm_reg[5] ));
  FDRE \icmp_ln10_reg_746_reg[0] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_51),
        .Q(icmp_ln10_reg_746),
        .R(1'b0));
  FDRE \icmp_ln8_reg_742_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(icmp_ln8_fu_362_p2),
        .Q(\icmp_ln8_reg_742_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[0] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[0]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[1] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[1]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[2] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[2]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[3] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[3]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[4] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[4]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[5] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[5]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[6] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[6]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[7] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[7]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[8] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[8]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \indvar_flatten_fu_92_reg[9] 
       (.C(ap_clk),
        .CE(indvar_flatten_fu_92),
        .D(add_ln8_fu_368_p2[9]),
        .Q(\indvar_flatten_fu_92_reg_n_0_[9] ),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1 mul_32s_32s_32_1_1_U1
       (.CEP(mul_ln17_1_reg_7950),
        .D({mul_32s_32s_32_1_1_U1_n_1,mul_32s_32s_32_1_1_U1_n_2,mul_32s_32s_32_1_1_U1_n_3,mul_32s_32s_32_1_1_U1_n_4,mul_32s_32s_32_1_1_U1_n_5,mul_32s_32s_32_1_1_U1_n_6,mul_32s_32s_32_1_1_U1_n_7,mul_32s_32s_32_1_1_U1_n_8,mul_32s_32s_32_1_1_U1_n_9,mul_32s_32s_32_1_1_U1_n_10,mul_32s_32s_32_1_1_U1_n_11,mul_32s_32s_32_1_1_U1_n_12,mul_32s_32s_32_1_1_U1_n_13,mul_32s_32s_32_1_1_U1_n_14,mul_32s_32s_32_1_1_U1_n_15,mul_32s_32s_32_1_1_U1_n_16,mul_32s_32s_32_1_1_U1_n_17}),
        .DI({mul_32s_32s_32_1_1_U1_n_84,mul_32s_32s_32_1_1_U1_n_85,mul_32s_32s_32_1_1_U1_n_86,mul_32s_32s_32_1_1_U1_n_87,mul_32s_32s_32_1_1_U1_n_88,mul_32s_32s_32_1_1_U1_n_89,mul_32s_32s_32_1_1_U1_n_90}),
        .P({mul_ln17_reg_790_reg_n_91,mul_ln17_reg_790_reg_n_92,mul_ln17_reg_790_reg_n_93,mul_ln17_reg_790_reg_n_94,mul_ln17_reg_790_reg_n_95,mul_ln17_reg_790_reg_n_96,mul_ln17_reg_790_reg_n_97,mul_ln17_reg_790_reg_n_98,mul_ln17_reg_790_reg_n_99,mul_ln17_reg_790_reg_n_100,mul_ln17_reg_790_reg_n_101,mul_ln17_reg_790_reg_n_102,mul_ln17_reg_790_reg_n_103,mul_ln17_reg_790_reg_n_104,mul_ln17_reg_790_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U1_n_18,mul_32s_32s_32_1_1_U1_n_19,mul_32s_32s_32_1_1_U1_n_20,mul_32s_32s_32_1_1_U1_n_21,mul_32s_32s_32_1_1_U1_n_22,mul_32s_32s_32_1_1_U1_n_23,mul_32s_32s_32_1_1_U1_n_24,mul_32s_32s_32_1_1_U1_n_25,mul_32s_32s_32_1_1_U1_n_26,mul_32s_32s_32_1_1_U1_n_27,mul_32s_32s_32_1_1_U1_n_28,mul_32s_32s_32_1_1_U1_n_29,mul_32s_32s_32_1_1_U1_n_30,mul_32s_32s_32_1_1_U1_n_31,mul_32s_32s_32_1_1_U1_n_32,mul_32s_32s_32_1_1_U1_n_33,mul_32s_32s_32_1_1_U1_n_34,mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65}),
        .Q(Q[0]),
        .S(mul_32s_32s_32_1_1_U1_n_82),
        .\add_ln18_1_reg_865_reg[22] ({mul_32s_32s_32_1_1_U1_n_91,mul_32s_32s_32_1_1_U1_n_92,mul_32s_32s_32_1_1_U1_n_93,mul_32s_32s_32_1_1_U1_n_94,mul_32s_32s_32_1_1_U1_n_95,mul_32s_32s_32_1_1_U1_n_96,mul_32s_32s_32_1_1_U1_n_97}),
        .\add_ln18_1_reg_865_reg[30] (mul_32s_32s_32_1_1_U1_n_83),
        .add_ln18_7_fu_644_p2__0_carry__1(\mul_ln17_2_reg_810_reg[15]__0_n_0 ),
        .add_ln18_7_fu_644_p2__0_carry__1_i_15({\mul_ln17_reg_790_reg[16]__0_n_0 ,\mul_ln17_reg_790_reg[15]__0_n_0 }),
        .add_ln18_7_fu_644_p2__0_carry__2(add_ln18_1_reg_865[30:15]),
        .ap_clk(ap_clk),
        .filter_q0(filter_q0[16:0]),
        .mul_ln17_2_reg_810_reg__1(mul_ln17_2_reg_810_reg__1),
        .\mul_ln17_reg_790_reg[0]__0 (ap_CS_fsm_pp0_stage1),
        .\mul_ln17_reg_790_reg[0]__0_0 (\icmp_ln8_reg_742_reg_n_0_[0] ),
        .mul_ln17_reg_790_reg__1(mul_ln17_reg_790_reg__1),
        .orig_q1(orig_q1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_0 mul_32s_32s_32_1_1_U2
       (.CEP(mul_ln17_1_reg_7950),
        .D({mul_32s_32s_32_1_1_U2_n_0,mul_32s_32s_32_1_1_U2_n_1,mul_32s_32s_32_1_1_U2_n_2,mul_32s_32s_32_1_1_U2_n_3,mul_32s_32s_32_1_1_U2_n_4,mul_32s_32s_32_1_1_U2_n_5,mul_32s_32s_32_1_1_U2_n_6,mul_32s_32s_32_1_1_U2_n_7,mul_32s_32s_32_1_1_U2_n_8,mul_32s_32s_32_1_1_U2_n_9,mul_32s_32s_32_1_1_U2_n_10,mul_32s_32s_32_1_1_U2_n_11,mul_32s_32s_32_1_1_U2_n_12,mul_32s_32s_32_1_1_U2_n_13,mul_32s_32s_32_1_1_U2_n_14,mul_32s_32s_32_1_1_U2_n_15,mul_32s_32s_32_1_1_U2_n_16}),
        .DI({mul_32s_32s_32_1_1_U2_n_83,mul_32s_32s_32_1_1_U2_n_84,mul_32s_32s_32_1_1_U2_n_85,mul_32s_32s_32_1_1_U2_n_86,mul_32s_32s_32_1_1_U2_n_87,mul_32s_32s_32_1_1_U2_n_88,mul_32s_32s_32_1_1_U2_n_89}),
        .P({mul_ln17_1_reg_795_reg_n_91,mul_ln17_1_reg_795_reg_n_92,mul_ln17_1_reg_795_reg_n_93,mul_ln17_1_reg_795_reg_n_94,mul_ln17_1_reg_795_reg_n_95,mul_ln17_1_reg_795_reg_n_96,mul_ln17_1_reg_795_reg_n_97,mul_ln17_1_reg_795_reg_n_98,mul_ln17_1_reg_795_reg_n_99,mul_ln17_1_reg_795_reg_n_100,mul_ln17_1_reg_795_reg_n_101,mul_ln17_1_reg_795_reg_n_102,mul_ln17_1_reg_795_reg_n_103,mul_ln17_1_reg_795_reg_n_104,mul_ln17_1_reg_795_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U2_n_17,mul_32s_32s_32_1_1_U2_n_18,mul_32s_32s_32_1_1_U2_n_19,mul_32s_32s_32_1_1_U2_n_20,mul_32s_32s_32_1_1_U2_n_21,mul_32s_32s_32_1_1_U2_n_22,mul_32s_32s_32_1_1_U2_n_23,mul_32s_32s_32_1_1_U2_n_24,mul_32s_32s_32_1_1_U2_n_25,mul_32s_32s_32_1_1_U2_n_26,mul_32s_32s_32_1_1_U2_n_27,mul_32s_32s_32_1_1_U2_n_28,mul_32s_32s_32_1_1_U2_n_29,mul_32s_32s_32_1_1_U2_n_30,mul_32s_32s_32_1_1_U2_n_31,mul_32s_32s_32_1_1_U2_n_32,mul_32s_32s_32_1_1_U2_n_33,mul_32s_32s_32_1_1_U2_n_34,mul_32s_32s_32_1_1_U2_n_35,mul_32s_32s_32_1_1_U2_n_36,mul_32s_32s_32_1_1_U2_n_37,mul_32s_32s_32_1_1_U2_n_38,mul_32s_32s_32_1_1_U2_n_39,mul_32s_32s_32_1_1_U2_n_40,mul_32s_32s_32_1_1_U2_n_41,mul_32s_32s_32_1_1_U2_n_42,mul_32s_32s_32_1_1_U2_n_43,mul_32s_32s_32_1_1_U2_n_44,mul_32s_32s_32_1_1_U2_n_45,mul_32s_32s_32_1_1_U2_n_46,mul_32s_32s_32_1_1_U2_n_47,mul_32s_32s_32_1_1_U2_n_48,mul_32s_32s_32_1_1_U2_n_49,mul_32s_32s_32_1_1_U2_n_50,mul_32s_32s_32_1_1_U2_n_51,mul_32s_32s_32_1_1_U2_n_52,mul_32s_32s_32_1_1_U2_n_53,mul_32s_32s_32_1_1_U2_n_54,mul_32s_32s_32_1_1_U2_n_55,mul_32s_32s_32_1_1_U2_n_56,mul_32s_32s_32_1_1_U2_n_57,mul_32s_32s_32_1_1_U2_n_58,mul_32s_32s_32_1_1_U2_n_59,mul_32s_32s_32_1_1_U2_n_60,mul_32s_32s_32_1_1_U2_n_61,mul_32s_32s_32_1_1_U2_n_62,mul_32s_32s_32_1_1_U2_n_63,mul_32s_32s_32_1_1_U2_n_64}),
        .Q(Q[1]),
        .S(mul_32s_32s_32_1_1_U2_n_81),
        .add_ln18_7_fu_644_p2__94_carry__1(\mul_ln17_3_reg_815_reg[15]__0_n_0 ),
        .add_ln18_7_fu_644_p2__94_carry__1_i_15({\mul_ln17_1_reg_795_reg[16]__0_n_0 ,\mul_ln17_1_reg_795_reg[15]__0_n_0 }),
        .add_ln18_7_fu_644_p2__94_carry__2(mul_ln17_8_reg_870[30:15]),
        .ap_clk(ap_clk),
        .filter_q1(filter_q1[16:0]),
        .mul_ln17_1_reg_795_reg__1(mul_ln17_1_reg_795_reg__1),
        .mul_ln17_3_reg_815_reg__1(mul_ln17_3_reg_815_reg__1),
        .\mul_ln17_8_reg_870_reg[22] ({mul_32s_32s_32_1_1_U2_n_90,mul_32s_32s_32_1_1_U2_n_91,mul_32s_32s_32_1_1_U2_n_92,mul_32s_32s_32_1_1_U2_n_93,mul_32s_32s_32_1_1_U2_n_94,mul_32s_32s_32_1_1_U2_n_95,mul_32s_32s_32_1_1_U2_n_96}),
        .\mul_ln17_8_reg_870_reg[30] (mul_32s_32s_32_1_1_U2_n_82),
        .orig_q0(orig_q0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_1 mul_32s_32s_32_1_1_U3
       (.CEP(mul_ln17_2_reg_8100),
        .D({mul_32s_32s_32_1_1_U3_n_1,mul_32s_32s_32_1_1_U3_n_2,mul_32s_32s_32_1_1_U3_n_3,mul_32s_32s_32_1_1_U3_n_4,mul_32s_32s_32_1_1_U3_n_5,mul_32s_32s_32_1_1_U3_n_6,mul_32s_32s_32_1_1_U3_n_7,mul_32s_32s_32_1_1_U3_n_8,mul_32s_32s_32_1_1_U3_n_9,mul_32s_32s_32_1_1_U3_n_10,mul_32s_32s_32_1_1_U3_n_11,mul_32s_32s_32_1_1_U3_n_12,mul_32s_32s_32_1_1_U3_n_13,mul_32s_32s_32_1_1_U3_n_14,mul_32s_32s_32_1_1_U3_n_15,mul_32s_32s_32_1_1_U3_n_16,mul_32s_32s_32_1_1_U3_n_17}),
        .P({mul_ln17_2_reg_810_reg_n_91,mul_ln17_2_reg_810_reg_n_92,mul_ln17_2_reg_810_reg_n_93,mul_ln17_2_reg_810_reg_n_94,mul_ln17_2_reg_810_reg_n_95,mul_ln17_2_reg_810_reg_n_96,mul_ln17_2_reg_810_reg_n_97,mul_ln17_2_reg_810_reg_n_98,mul_ln17_2_reg_810_reg_n_99,mul_ln17_2_reg_810_reg_n_100,mul_ln17_2_reg_810_reg_n_101,mul_ln17_2_reg_810_reg_n_102,mul_ln17_2_reg_810_reg_n_103,mul_ln17_2_reg_810_reg_n_104,mul_ln17_2_reg_810_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U3_n_18,mul_32s_32s_32_1_1_U3_n_19,mul_32s_32s_32_1_1_U3_n_20,mul_32s_32s_32_1_1_U3_n_21,mul_32s_32s_32_1_1_U3_n_22,mul_32s_32s_32_1_1_U3_n_23,mul_32s_32s_32_1_1_U3_n_24,mul_32s_32s_32_1_1_U3_n_25,mul_32s_32s_32_1_1_U3_n_26,mul_32s_32s_32_1_1_U3_n_27,mul_32s_32s_32_1_1_U3_n_28,mul_32s_32s_32_1_1_U3_n_29,mul_32s_32s_32_1_1_U3_n_30,mul_32s_32s_32_1_1_U3_n_31,mul_32s_32s_32_1_1_U3_n_32,mul_32s_32s_32_1_1_U3_n_33,mul_32s_32s_32_1_1_U3_n_34,mul_32s_32s_32_1_1_U3_n_35,mul_32s_32s_32_1_1_U3_n_36,mul_32s_32s_32_1_1_U3_n_37,mul_32s_32s_32_1_1_U3_n_38,mul_32s_32s_32_1_1_U3_n_39,mul_32s_32s_32_1_1_U3_n_40,mul_32s_32s_32_1_1_U3_n_41,mul_32s_32s_32_1_1_U3_n_42,mul_32s_32s_32_1_1_U3_n_43,mul_32s_32s_32_1_1_U3_n_44,mul_32s_32s_32_1_1_U3_n_45,mul_32s_32s_32_1_1_U3_n_46,mul_32s_32s_32_1_1_U3_n_47,mul_32s_32s_32_1_1_U3_n_48,mul_32s_32s_32_1_1_U3_n_49,mul_32s_32s_32_1_1_U3_n_50,mul_32s_32s_32_1_1_U3_n_51,mul_32s_32s_32_1_1_U3_n_52,mul_32s_32s_32_1_1_U3_n_53,mul_32s_32s_32_1_1_U3_n_54,mul_32s_32s_32_1_1_U3_n_55,mul_32s_32s_32_1_1_U3_n_56,mul_32s_32s_32_1_1_U3_n_57,mul_32s_32s_32_1_1_U3_n_58,mul_32s_32s_32_1_1_U3_n_59,mul_32s_32s_32_1_1_U3_n_60,mul_32s_32s_32_1_1_U3_n_61,mul_32s_32s_32_1_1_U3_n_62,mul_32s_32s_32_1_1_U3_n_63,mul_32s_32s_32_1_1_U3_n_64,mul_32s_32s_32_1_1_U3_n_65}),
        .Q(Q[1]),
        .S({mul_32s_32s_32_1_1_U3_n_81,mul_32s_32s_32_1_1_U3_n_82,mul_32s_32s_32_1_1_U3_n_83,mul_32s_32s_32_1_1_U3_n_84,mul_32s_32s_32_1_1_U3_n_85,mul_32s_32s_32_1_1_U3_n_86,mul_32s_32s_32_1_1_U3_n_87}),
        .\add_ln18_1_reg_865_reg[30] ({mul_32s_32s_32_1_1_U3_n_88,mul_32s_32s_32_1_1_U3_n_89,mul_32s_32s_32_1_1_U3_n_90,mul_32s_32s_32_1_1_U3_n_91,mul_32s_32s_32_1_1_U3_n_92,mul_32s_32s_32_1_1_U3_n_93,mul_32s_32s_32_1_1_U3_n_94}),
        .add_ln18_7_fu_644_p2__0_carry__1_i_7(\mul_ln17_2_reg_810_reg[16]__0_n_0 ),
        .add_ln18_7_fu_644_p2__0_carry__2(add_ln18_1_reg_865[31:16]),
        .ap_clk(ap_clk),
        .filter_q0(filter_q0[16:0]),
        .\mul_ln17_2_reg_810_reg[0]__0 (ap_CS_fsm_pp0_stage2),
        .\mul_ln17_2_reg_810_reg[0]__0_0 (\icmp_ln8_reg_742_reg_n_0_[0] ),
        .\mul_ln17_2_reg_810_reg[16]__0 (mul_ln17_2_reg_810_reg__1),
        .mul_ln17_reg_790_reg__1(mul_ln17_reg_790_reg__1),
        .orig_q1(orig_q1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_2 mul_32s_32s_32_1_1_U4
       (.CEP(mul_ln17_2_reg_8100),
        .D({mul_32s_32s_32_1_1_U4_n_0,mul_32s_32s_32_1_1_U4_n_1,mul_32s_32s_32_1_1_U4_n_2,mul_32s_32s_32_1_1_U4_n_3,mul_32s_32s_32_1_1_U4_n_4,mul_32s_32s_32_1_1_U4_n_5,mul_32s_32s_32_1_1_U4_n_6,mul_32s_32s_32_1_1_U4_n_7,mul_32s_32s_32_1_1_U4_n_8,mul_32s_32s_32_1_1_U4_n_9,mul_32s_32s_32_1_1_U4_n_10,mul_32s_32s_32_1_1_U4_n_11,mul_32s_32s_32_1_1_U4_n_12,mul_32s_32s_32_1_1_U4_n_13,mul_32s_32s_32_1_1_U4_n_14,mul_32s_32s_32_1_1_U4_n_15,mul_32s_32s_32_1_1_U4_n_16}),
        .P({mul_ln17_3_reg_815_reg_n_91,mul_ln17_3_reg_815_reg_n_92,mul_ln17_3_reg_815_reg_n_93,mul_ln17_3_reg_815_reg_n_94,mul_ln17_3_reg_815_reg_n_95,mul_ln17_3_reg_815_reg_n_96,mul_ln17_3_reg_815_reg_n_97,mul_ln17_3_reg_815_reg_n_98,mul_ln17_3_reg_815_reg_n_99,mul_ln17_3_reg_815_reg_n_100,mul_ln17_3_reg_815_reg_n_101,mul_ln17_3_reg_815_reg_n_102,mul_ln17_3_reg_815_reg_n_103,mul_ln17_3_reg_815_reg_n_104,mul_ln17_3_reg_815_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U4_n_17,mul_32s_32s_32_1_1_U4_n_18,mul_32s_32s_32_1_1_U4_n_19,mul_32s_32s_32_1_1_U4_n_20,mul_32s_32s_32_1_1_U4_n_21,mul_32s_32s_32_1_1_U4_n_22,mul_32s_32s_32_1_1_U4_n_23,mul_32s_32s_32_1_1_U4_n_24,mul_32s_32s_32_1_1_U4_n_25,mul_32s_32s_32_1_1_U4_n_26,mul_32s_32s_32_1_1_U4_n_27,mul_32s_32s_32_1_1_U4_n_28,mul_32s_32s_32_1_1_U4_n_29,mul_32s_32s_32_1_1_U4_n_30,mul_32s_32s_32_1_1_U4_n_31,mul_32s_32s_32_1_1_U4_n_32,mul_32s_32s_32_1_1_U4_n_33,mul_32s_32s_32_1_1_U4_n_34,mul_32s_32s_32_1_1_U4_n_35,mul_32s_32s_32_1_1_U4_n_36,mul_32s_32s_32_1_1_U4_n_37,mul_32s_32s_32_1_1_U4_n_38,mul_32s_32s_32_1_1_U4_n_39,mul_32s_32s_32_1_1_U4_n_40,mul_32s_32s_32_1_1_U4_n_41,mul_32s_32s_32_1_1_U4_n_42,mul_32s_32s_32_1_1_U4_n_43,mul_32s_32s_32_1_1_U4_n_44,mul_32s_32s_32_1_1_U4_n_45,mul_32s_32s_32_1_1_U4_n_46,mul_32s_32s_32_1_1_U4_n_47,mul_32s_32s_32_1_1_U4_n_48,mul_32s_32s_32_1_1_U4_n_49,mul_32s_32s_32_1_1_U4_n_50,mul_32s_32s_32_1_1_U4_n_51,mul_32s_32s_32_1_1_U4_n_52,mul_32s_32s_32_1_1_U4_n_53,mul_32s_32s_32_1_1_U4_n_54,mul_32s_32s_32_1_1_U4_n_55,mul_32s_32s_32_1_1_U4_n_56,mul_32s_32s_32_1_1_U4_n_57,mul_32s_32s_32_1_1_U4_n_58,mul_32s_32s_32_1_1_U4_n_59,mul_32s_32s_32_1_1_U4_n_60,mul_32s_32s_32_1_1_U4_n_61,mul_32s_32s_32_1_1_U4_n_62,mul_32s_32s_32_1_1_U4_n_63,mul_32s_32s_32_1_1_U4_n_64}),
        .Q(Q[2]),
        .S({mul_32s_32s_32_1_1_U4_n_80,mul_32s_32s_32_1_1_U4_n_81,mul_32s_32s_32_1_1_U4_n_82,mul_32s_32s_32_1_1_U4_n_83,mul_32s_32s_32_1_1_U4_n_84,mul_32s_32s_32_1_1_U4_n_85,mul_32s_32s_32_1_1_U4_n_86}),
        .add_ln18_7_fu_644_p2__94_carry__1_i_7(\mul_ln17_3_reg_815_reg[16]__0_n_0 ),
        .add_ln18_7_fu_644_p2__94_carry__2(mul_ln17_8_reg_870[31:16]),
        .ap_clk(ap_clk),
        .filter_q0(filter_q0[16:0]),
        .mul_ln17_1_reg_795_reg__1(mul_ln17_1_reg_795_reg__1),
        .\mul_ln17_3_reg_815_reg[16]__0 (mul_ln17_3_reg_815_reg__1),
        .\mul_ln17_8_reg_870_reg[30] ({mul_32s_32s_32_1_1_U4_n_87,mul_32s_32s_32_1_1_U4_n_88,mul_32s_32s_32_1_1_U4_n_89,mul_32s_32s_32_1_1_U4_n_90,mul_32s_32s_32_1_1_U4_n_91,mul_32s_32s_32_1_1_U4_n_92,mul_32s_32s_32_1_1_U4_n_93}),
        .orig_q0(orig_q0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_3 mul_32s_32s_32_1_1_U5
       (.CEP(mul_ln17_4_reg_8300),
        .D({mul_32s_32s_32_1_1_U5_n_0,mul_32s_32s_32_1_1_U5_n_1,mul_32s_32s_32_1_1_U5_n_2,mul_32s_32s_32_1_1_U5_n_3,mul_32s_32s_32_1_1_U5_n_4,mul_32s_32s_32_1_1_U5_n_5,mul_32s_32s_32_1_1_U5_n_6,mul_32s_32s_32_1_1_U5_n_7,mul_32s_32s_32_1_1_U5_n_8,mul_32s_32s_32_1_1_U5_n_9,mul_32s_32s_32_1_1_U5_n_10,mul_32s_32s_32_1_1_U5_n_11,mul_32s_32s_32_1_1_U5_n_12,mul_32s_32s_32_1_1_U5_n_13,mul_32s_32s_32_1_1_U5_n_14,mul_32s_32s_32_1_1_U5_n_15,mul_32s_32s_32_1_1_U5_n_16}),
        .P({mul_ln17_4_reg_830_reg_n_91,mul_ln17_4_reg_830_reg_n_92,mul_ln17_4_reg_830_reg_n_93,mul_ln17_4_reg_830_reg_n_94,mul_ln17_4_reg_830_reg_n_95,mul_ln17_4_reg_830_reg_n_96,mul_ln17_4_reg_830_reg_n_97,mul_ln17_4_reg_830_reg_n_98,mul_ln17_4_reg_830_reg_n_99,mul_ln17_4_reg_830_reg_n_100,mul_ln17_4_reg_830_reg_n_101,mul_ln17_4_reg_830_reg_n_102,mul_ln17_4_reg_830_reg_n_103,mul_ln17_4_reg_830_reg_n_104,mul_ln17_4_reg_830_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U5_n_17,mul_32s_32s_32_1_1_U5_n_18,mul_32s_32s_32_1_1_U5_n_19,mul_32s_32s_32_1_1_U5_n_20,mul_32s_32s_32_1_1_U5_n_21,mul_32s_32s_32_1_1_U5_n_22,mul_32s_32s_32_1_1_U5_n_23,mul_32s_32s_32_1_1_U5_n_24,mul_32s_32s_32_1_1_U5_n_25,mul_32s_32s_32_1_1_U5_n_26,mul_32s_32s_32_1_1_U5_n_27,mul_32s_32s_32_1_1_U5_n_28,mul_32s_32s_32_1_1_U5_n_29,mul_32s_32s_32_1_1_U5_n_30,mul_32s_32s_32_1_1_U5_n_31,mul_32s_32s_32_1_1_U5_n_32,mul_32s_32s_32_1_1_U5_n_33,mul_32s_32s_32_1_1_U5_n_34,mul_32s_32s_32_1_1_U5_n_35,mul_32s_32s_32_1_1_U5_n_36,mul_32s_32s_32_1_1_U5_n_37,mul_32s_32s_32_1_1_U5_n_38,mul_32s_32s_32_1_1_U5_n_39,mul_32s_32s_32_1_1_U5_n_40,mul_32s_32s_32_1_1_U5_n_41,mul_32s_32s_32_1_1_U5_n_42,mul_32s_32s_32_1_1_U5_n_43,mul_32s_32s_32_1_1_U5_n_44,mul_32s_32s_32_1_1_U5_n_45,mul_32s_32s_32_1_1_U5_n_46,mul_32s_32s_32_1_1_U5_n_47,mul_32s_32s_32_1_1_U5_n_48,mul_32s_32s_32_1_1_U5_n_49,mul_32s_32s_32_1_1_U5_n_50,mul_32s_32s_32_1_1_U5_n_51,mul_32s_32s_32_1_1_U5_n_52,mul_32s_32s_32_1_1_U5_n_53,mul_32s_32s_32_1_1_U5_n_54,mul_32s_32s_32_1_1_U5_n_55,mul_32s_32s_32_1_1_U5_n_56,mul_32s_32s_32_1_1_U5_n_57,mul_32s_32s_32_1_1_U5_n_58,mul_32s_32s_32_1_1_U5_n_59,mul_32s_32s_32_1_1_U5_n_60,mul_32s_32s_32_1_1_U5_n_61,mul_32s_32s_32_1_1_U5_n_62,mul_32s_32s_32_1_1_U5_n_63,mul_32s_32s_32_1_1_U5_n_64}),
        .Q(Q[2]),
        .add_ln18_1_fu_593_p2_carry__1_i_8(\mul_ln17_4_reg_830_reg[16]__0_n_0 ),
        .ap_clk(ap_clk),
        .filter_q1(filter_q1[16:0]),
        .mul_ln17_4_reg_830_reg__1(mul_ln17_4_reg_830_reg__1),
        .orig_q1(orig_q1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_4 mul_32s_32s_32_1_1_U6
       (.CEP(mul_ln17_4_reg_8300),
        .D({mul_32s_32s_32_1_1_U6_n_1,mul_32s_32s_32_1_1_U6_n_2,mul_32s_32s_32_1_1_U6_n_3,mul_32s_32s_32_1_1_U6_n_4,mul_32s_32s_32_1_1_U6_n_5,mul_32s_32s_32_1_1_U6_n_6,mul_32s_32s_32_1_1_U6_n_7,mul_32s_32s_32_1_1_U6_n_8,mul_32s_32s_32_1_1_U6_n_9,mul_32s_32s_32_1_1_U6_n_10,mul_32s_32s_32_1_1_U6_n_11,mul_32s_32s_32_1_1_U6_n_12,mul_32s_32s_32_1_1_U6_n_13,mul_32s_32s_32_1_1_U6_n_14,mul_32s_32s_32_1_1_U6_n_15,mul_32s_32s_32_1_1_U6_n_16,mul_32s_32s_32_1_1_U6_n_17}),
        .P({mul_ln17_5_reg_835_reg_n_91,mul_ln17_5_reg_835_reg_n_92,mul_ln17_5_reg_835_reg_n_93,mul_ln17_5_reg_835_reg_n_94,mul_ln17_5_reg_835_reg_n_95,mul_ln17_5_reg_835_reg_n_96,mul_ln17_5_reg_835_reg_n_97,mul_ln17_5_reg_835_reg_n_98,mul_ln17_5_reg_835_reg_n_99,mul_ln17_5_reg_835_reg_n_100,mul_ln17_5_reg_835_reg_n_101,mul_ln17_5_reg_835_reg_n_102,mul_ln17_5_reg_835_reg_n_103,mul_ln17_5_reg_835_reg_n_104,mul_ln17_5_reg_835_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U6_n_18,mul_32s_32s_32_1_1_U6_n_19,mul_32s_32s_32_1_1_U6_n_20,mul_32s_32s_32_1_1_U6_n_21,mul_32s_32s_32_1_1_U6_n_22,mul_32s_32s_32_1_1_U6_n_23,mul_32s_32s_32_1_1_U6_n_24,mul_32s_32s_32_1_1_U6_n_25,mul_32s_32s_32_1_1_U6_n_26,mul_32s_32s_32_1_1_U6_n_27,mul_32s_32s_32_1_1_U6_n_28,mul_32s_32s_32_1_1_U6_n_29,mul_32s_32s_32_1_1_U6_n_30,mul_32s_32s_32_1_1_U6_n_31,mul_32s_32s_32_1_1_U6_n_32,mul_32s_32s_32_1_1_U6_n_33,mul_32s_32s_32_1_1_U6_n_34,mul_32s_32s_32_1_1_U6_n_35,mul_32s_32s_32_1_1_U6_n_36,mul_32s_32s_32_1_1_U6_n_37,mul_32s_32s_32_1_1_U6_n_38,mul_32s_32s_32_1_1_U6_n_39,mul_32s_32s_32_1_1_U6_n_40,mul_32s_32s_32_1_1_U6_n_41,mul_32s_32s_32_1_1_U6_n_42,mul_32s_32s_32_1_1_U6_n_43,mul_32s_32s_32_1_1_U6_n_44,mul_32s_32s_32_1_1_U6_n_45,mul_32s_32s_32_1_1_U6_n_46,mul_32s_32s_32_1_1_U6_n_47,mul_32s_32s_32_1_1_U6_n_48,mul_32s_32s_32_1_1_U6_n_49,mul_32s_32s_32_1_1_U6_n_50,mul_32s_32s_32_1_1_U6_n_51,mul_32s_32s_32_1_1_U6_n_52,mul_32s_32s_32_1_1_U6_n_53,mul_32s_32s_32_1_1_U6_n_54,mul_32s_32s_32_1_1_U6_n_55,mul_32s_32s_32_1_1_U6_n_56,mul_32s_32s_32_1_1_U6_n_57,mul_32s_32s_32_1_1_U6_n_58,mul_32s_32s_32_1_1_U6_n_59,mul_32s_32s_32_1_1_U6_n_60,mul_32s_32s_32_1_1_U6_n_61,mul_32s_32s_32_1_1_U6_n_62,mul_32s_32s_32_1_1_U6_n_63,mul_32s_32s_32_1_1_U6_n_64,mul_32s_32s_32_1_1_U6_n_65}),
        .Q(Q[3]),
        .S({mul_32s_32s_32_1_1_U6_n_81,mul_32s_32s_32_1_1_U6_n_82,mul_32s_32s_32_1_1_U6_n_83,mul_32s_32s_32_1_1_U6_n_84,mul_32s_32s_32_1_1_U6_n_85,mul_32s_32s_32_1_1_U6_n_86,mul_32s_32s_32_1_1_U6_n_87,mul_32s_32s_32_1_1_U6_n_88}),
        .\add_ln18_1_reg_865_reg[23] (\mul_ln17_5_reg_835_reg[16]__0_n_0 ),
        .ap_clk(ap_clk),
        .dout_carry__0_0({mul_32s_32s_32_1_1_U6_n_89,mul_32s_32s_32_1_1_U6_n_90,mul_32s_32s_32_1_1_U6_n_91,mul_32s_32s_32_1_1_U6_n_92,mul_32s_32s_32_1_1_U6_n_93,mul_32s_32s_32_1_1_U6_n_94,mul_32s_32s_32_1_1_U6_n_95,mul_32s_32s_32_1_1_U6_n_96}),
        .filter_q0(filter_q0[16:0]),
        .mul_ln17_4_reg_830_reg__1(mul_ln17_4_reg_830_reg__1),
        .\mul_ln17_5_reg_835_reg[0]__0 (ap_CS_fsm_pp0_stage3),
        .\mul_ln17_5_reg_835_reg[0]__0_0 (\icmp_ln8_reg_742_reg_n_0_[0] ),
        .\mul_ln17_5_reg_835_reg[16]__0 (mul_ln17_5_reg_835_reg__1),
        .orig_q0(orig_q0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_5 mul_32s_32s_32_1_1_U7
       (.CEP(add_ln18_1_reg_8650),
        .D({mul_32s_32s_32_1_1_U7_n_1,mul_32s_32s_32_1_1_U7_n_2,mul_32s_32s_32_1_1_U7_n_3,mul_32s_32s_32_1_1_U7_n_4,mul_32s_32s_32_1_1_U7_n_5,mul_32s_32s_32_1_1_U7_n_6,mul_32s_32s_32_1_1_U7_n_7,mul_32s_32s_32_1_1_U7_n_8,mul_32s_32s_32_1_1_U7_n_9,mul_32s_32s_32_1_1_U7_n_10,mul_32s_32s_32_1_1_U7_n_11,mul_32s_32s_32_1_1_U7_n_12,mul_32s_32s_32_1_1_U7_n_13,mul_32s_32s_32_1_1_U7_n_14,mul_32s_32s_32_1_1_U7_n_15,mul_32s_32s_32_1_1_U7_n_16,mul_32s_32s_32_1_1_U7_n_17}),
        .P({mul_ln17_6_reg_850_reg_n_91,mul_ln17_6_reg_850_reg_n_92,mul_ln17_6_reg_850_reg_n_93,mul_ln17_6_reg_850_reg_n_94,mul_ln17_6_reg_850_reg_n_95,mul_ln17_6_reg_850_reg_n_96,mul_ln17_6_reg_850_reg_n_97,mul_ln17_6_reg_850_reg_n_98,mul_ln17_6_reg_850_reg_n_99,mul_ln17_6_reg_850_reg_n_100,mul_ln17_6_reg_850_reg_n_101,mul_ln17_6_reg_850_reg_n_102,mul_ln17_6_reg_850_reg_n_103,mul_ln17_6_reg_850_reg_n_104,mul_ln17_6_reg_850_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U7_n_18,mul_32s_32s_32_1_1_U7_n_19,mul_32s_32s_32_1_1_U7_n_20,mul_32s_32s_32_1_1_U7_n_21,mul_32s_32s_32_1_1_U7_n_22,mul_32s_32s_32_1_1_U7_n_23,mul_32s_32s_32_1_1_U7_n_24,mul_32s_32s_32_1_1_U7_n_25,mul_32s_32s_32_1_1_U7_n_26,mul_32s_32s_32_1_1_U7_n_27,mul_32s_32s_32_1_1_U7_n_28,mul_32s_32s_32_1_1_U7_n_29,mul_32s_32s_32_1_1_U7_n_30,mul_32s_32s_32_1_1_U7_n_31,mul_32s_32s_32_1_1_U7_n_32,mul_32s_32s_32_1_1_U7_n_33,mul_32s_32s_32_1_1_U7_n_34,mul_32s_32s_32_1_1_U7_n_35,mul_32s_32s_32_1_1_U7_n_36,mul_32s_32s_32_1_1_U7_n_37,mul_32s_32s_32_1_1_U7_n_38,mul_32s_32s_32_1_1_U7_n_39,mul_32s_32s_32_1_1_U7_n_40,mul_32s_32s_32_1_1_U7_n_41,mul_32s_32s_32_1_1_U7_n_42,mul_32s_32s_32_1_1_U7_n_43,mul_32s_32s_32_1_1_U7_n_44,mul_32s_32s_32_1_1_U7_n_45,mul_32s_32s_32_1_1_U7_n_46,mul_32s_32s_32_1_1_U7_n_47,mul_32s_32s_32_1_1_U7_n_48,mul_32s_32s_32_1_1_U7_n_49,mul_32s_32s_32_1_1_U7_n_50,mul_32s_32s_32_1_1_U7_n_51,mul_32s_32s_32_1_1_U7_n_52,mul_32s_32s_32_1_1_U7_n_53,mul_32s_32s_32_1_1_U7_n_54,mul_32s_32s_32_1_1_U7_n_55,mul_32s_32s_32_1_1_U7_n_56,mul_32s_32s_32_1_1_U7_n_57,mul_32s_32s_32_1_1_U7_n_58,mul_32s_32s_32_1_1_U7_n_59,mul_32s_32s_32_1_1_U7_n_60,mul_32s_32s_32_1_1_U7_n_61,mul_32s_32s_32_1_1_U7_n_62,mul_32s_32s_32_1_1_U7_n_63,mul_32s_32s_32_1_1_U7_n_64,mul_32s_32s_32_1_1_U7_n_65}),
        .Q(Q[3]),
        .S({mul_32s_32s_32_1_1_U7_n_81,mul_32s_32s_32_1_1_U7_n_82,mul_32s_32s_32_1_1_U7_n_83,mul_32s_32s_32_1_1_U7_n_84,mul_32s_32s_32_1_1_U7_n_85,mul_32s_32s_32_1_1_U7_n_86,mul_32s_32s_32_1_1_U7_n_87,mul_32s_32s_32_1_1_U7_n_88}),
        .\add_ln18_1_reg_865_reg[0] (ap_CS_fsm_pp0_stage4),
        .\add_ln18_1_reg_865_reg[0]_0 (\icmp_ln8_reg_742_reg_n_0_[0] ),
        .\add_ln18_reg_875_reg[23] (\mul_ln17_6_reg_850_reg[16]__0_n_0 ),
        .ap_clk(ap_clk),
        .dout_carry__0_0({mul_32s_32s_32_1_1_U7_n_89,mul_32s_32s_32_1_1_U7_n_90,mul_32s_32s_32_1_1_U7_n_91,mul_32s_32s_32_1_1_U7_n_92,mul_32s_32s_32_1_1_U7_n_93,mul_32s_32s_32_1_1_U7_n_94,mul_32s_32s_32_1_1_U7_n_95,mul_32s_32s_32_1_1_U7_n_96}),
        .filter_q1(filter_q1[16:0]),
        .\mul_ln17_6_reg_850_reg[16]__0 (mul_ln17_6_reg_850_reg__1),
        .mul_ln17_7_reg_855_reg__1(mul_ln17_7_reg_855_reg__1),
        .orig_q1(orig_q1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_6 mul_32s_32s_32_1_1_U8
       (.CEP(add_ln18_1_reg_8650),
        .D({mul_32s_32s_32_1_1_U8_n_0,mul_32s_32s_32_1_1_U8_n_1,mul_32s_32s_32_1_1_U8_n_2,mul_32s_32s_32_1_1_U8_n_3,mul_32s_32s_32_1_1_U8_n_4,mul_32s_32s_32_1_1_U8_n_5,mul_32s_32s_32_1_1_U8_n_6,mul_32s_32s_32_1_1_U8_n_7,mul_32s_32s_32_1_1_U8_n_8,mul_32s_32s_32_1_1_U8_n_9,mul_32s_32s_32_1_1_U8_n_10,mul_32s_32s_32_1_1_U8_n_11,mul_32s_32s_32_1_1_U8_n_12,mul_32s_32s_32_1_1_U8_n_13,mul_32s_32s_32_1_1_U8_n_14,mul_32s_32s_32_1_1_U8_n_15,mul_32s_32s_32_1_1_U8_n_16}),
        .P({mul_ln17_7_reg_855_reg_n_91,mul_ln17_7_reg_855_reg_n_92,mul_ln17_7_reg_855_reg_n_93,mul_ln17_7_reg_855_reg_n_94,mul_ln17_7_reg_855_reg_n_95,mul_ln17_7_reg_855_reg_n_96,mul_ln17_7_reg_855_reg_n_97,mul_ln17_7_reg_855_reg_n_98,mul_ln17_7_reg_855_reg_n_99,mul_ln17_7_reg_855_reg_n_100,mul_ln17_7_reg_855_reg_n_101,mul_ln17_7_reg_855_reg_n_102,mul_ln17_7_reg_855_reg_n_103,mul_ln17_7_reg_855_reg_n_104,mul_ln17_7_reg_855_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U8_n_17,mul_32s_32s_32_1_1_U8_n_18,mul_32s_32s_32_1_1_U8_n_19,mul_32s_32s_32_1_1_U8_n_20,mul_32s_32s_32_1_1_U8_n_21,mul_32s_32s_32_1_1_U8_n_22,mul_32s_32s_32_1_1_U8_n_23,mul_32s_32s_32_1_1_U8_n_24,mul_32s_32s_32_1_1_U8_n_25,mul_32s_32s_32_1_1_U8_n_26,mul_32s_32s_32_1_1_U8_n_27,mul_32s_32s_32_1_1_U8_n_28,mul_32s_32s_32_1_1_U8_n_29,mul_32s_32s_32_1_1_U8_n_30,mul_32s_32s_32_1_1_U8_n_31,mul_32s_32s_32_1_1_U8_n_32,mul_32s_32s_32_1_1_U8_n_33,mul_32s_32s_32_1_1_U8_n_34,mul_32s_32s_32_1_1_U8_n_35,mul_32s_32s_32_1_1_U8_n_36,mul_32s_32s_32_1_1_U8_n_37,mul_32s_32s_32_1_1_U8_n_38,mul_32s_32s_32_1_1_U8_n_39,mul_32s_32s_32_1_1_U8_n_40,mul_32s_32s_32_1_1_U8_n_41,mul_32s_32s_32_1_1_U8_n_42,mul_32s_32s_32_1_1_U8_n_43,mul_32s_32s_32_1_1_U8_n_44,mul_32s_32s_32_1_1_U8_n_45,mul_32s_32s_32_1_1_U8_n_46,mul_32s_32s_32_1_1_U8_n_47,mul_32s_32s_32_1_1_U8_n_48,mul_32s_32s_32_1_1_U8_n_49,mul_32s_32s_32_1_1_U8_n_50,mul_32s_32s_32_1_1_U8_n_51,mul_32s_32s_32_1_1_U8_n_52,mul_32s_32s_32_1_1_U8_n_53,mul_32s_32s_32_1_1_U8_n_54,mul_32s_32s_32_1_1_U8_n_55,mul_32s_32s_32_1_1_U8_n_56,mul_32s_32s_32_1_1_U8_n_57,mul_32s_32s_32_1_1_U8_n_58,mul_32s_32s_32_1_1_U8_n_59,mul_32s_32s_32_1_1_U8_n_60,mul_32s_32s_32_1_1_U8_n_61,mul_32s_32s_32_1_1_U8_n_62,mul_32s_32s_32_1_1_U8_n_63,mul_32s_32s_32_1_1_U8_n_64}),
        .Q(Q[4]),
        .add_ln18_fu_617_p2_carry__1_i_8(\mul_ln17_7_reg_855_reg[16]__0_n_0 ),
        .ap_clk(ap_clk),
        .filter_q0(filter_q0[16:0]),
        .mul_ln17_7_reg_855_reg__1(mul_ln17_7_reg_855_reg__1),
        .orig_q0(orig_q0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stencil_2d_mul_32s_32s_32_1_1_7 mul_32s_32s_32_1_1_U9
       (.D({dout__3,mul_32s_32s_32_1_1_U9_n_16,mul_32s_32s_32_1_1_U9_n_17,mul_32s_32s_32_1_1_U9_n_18,mul_32s_32s_32_1_1_U9_n_19,mul_32s_32s_32_1_1_U9_n_20,mul_32s_32s_32_1_1_U9_n_21,mul_32s_32s_32_1_1_U9_n_22,mul_32s_32s_32_1_1_U9_n_23,mul_32s_32s_32_1_1_U9_n_24,mul_32s_32s_32_1_1_U9_n_25,mul_32s_32s_32_1_1_U9_n_26,mul_32s_32s_32_1_1_U9_n_27,mul_32s_32s_32_1_1_U9_n_28,mul_32s_32s_32_1_1_U9_n_29,mul_32s_32s_32_1_1_U9_n_30,mul_32s_32s_32_1_1_U9_n_31}),
        .Q(Q[4]),
        .ap_clk(ap_clk),
        .filter_q1(filter_q1),
        .orig_q0(orig_q0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_1_reg_795_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_1_reg_795_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q1[31],filter_q1[31],filter_q1[31],filter_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_1_reg_795_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_1_reg_795_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_1_reg_795_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln17_1_reg_7950),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_1_reg_795_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_1_reg_795_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_1_reg_795_reg_n_58,mul_ln17_1_reg_795_reg_n_59,mul_ln17_1_reg_795_reg_n_60,mul_ln17_1_reg_795_reg_n_61,mul_ln17_1_reg_795_reg_n_62,mul_ln17_1_reg_795_reg_n_63,mul_ln17_1_reg_795_reg_n_64,mul_ln17_1_reg_795_reg_n_65,mul_ln17_1_reg_795_reg_n_66,mul_ln17_1_reg_795_reg_n_67,mul_ln17_1_reg_795_reg_n_68,mul_ln17_1_reg_795_reg_n_69,mul_ln17_1_reg_795_reg_n_70,mul_ln17_1_reg_795_reg_n_71,mul_ln17_1_reg_795_reg_n_72,mul_ln17_1_reg_795_reg_n_73,mul_ln17_1_reg_795_reg_n_74,mul_ln17_1_reg_795_reg_n_75,mul_ln17_1_reg_795_reg_n_76,mul_ln17_1_reg_795_reg_n_77,mul_ln17_1_reg_795_reg_n_78,mul_ln17_1_reg_795_reg_n_79,mul_ln17_1_reg_795_reg_n_80,mul_ln17_1_reg_795_reg_n_81,mul_ln17_1_reg_795_reg_n_82,mul_ln17_1_reg_795_reg_n_83,mul_ln17_1_reg_795_reg_n_84,mul_ln17_1_reg_795_reg_n_85,mul_ln17_1_reg_795_reg_n_86,mul_ln17_1_reg_795_reg_n_87,mul_ln17_1_reg_795_reg_n_88,mul_ln17_1_reg_795_reg_n_89,mul_ln17_1_reg_795_reg_n_90,mul_ln17_1_reg_795_reg_n_91,mul_ln17_1_reg_795_reg_n_92,mul_ln17_1_reg_795_reg_n_93,mul_ln17_1_reg_795_reg_n_94,mul_ln17_1_reg_795_reg_n_95,mul_ln17_1_reg_795_reg_n_96,mul_ln17_1_reg_795_reg_n_97,mul_ln17_1_reg_795_reg_n_98,mul_ln17_1_reg_795_reg_n_99,mul_ln17_1_reg_795_reg_n_100,mul_ln17_1_reg_795_reg_n_101,mul_ln17_1_reg_795_reg_n_102,mul_ln17_1_reg_795_reg_n_103,mul_ln17_1_reg_795_reg_n_104,mul_ln17_1_reg_795_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_1_reg_795_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_1_reg_795_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U2_n_17,mul_32s_32s_32_1_1_U2_n_18,mul_32s_32s_32_1_1_U2_n_19,mul_32s_32s_32_1_1_U2_n_20,mul_32s_32s_32_1_1_U2_n_21,mul_32s_32s_32_1_1_U2_n_22,mul_32s_32s_32_1_1_U2_n_23,mul_32s_32s_32_1_1_U2_n_24,mul_32s_32s_32_1_1_U2_n_25,mul_32s_32s_32_1_1_U2_n_26,mul_32s_32s_32_1_1_U2_n_27,mul_32s_32s_32_1_1_U2_n_28,mul_32s_32s_32_1_1_U2_n_29,mul_32s_32s_32_1_1_U2_n_30,mul_32s_32s_32_1_1_U2_n_31,mul_32s_32s_32_1_1_U2_n_32,mul_32s_32s_32_1_1_U2_n_33,mul_32s_32s_32_1_1_U2_n_34,mul_32s_32s_32_1_1_U2_n_35,mul_32s_32s_32_1_1_U2_n_36,mul_32s_32s_32_1_1_U2_n_37,mul_32s_32s_32_1_1_U2_n_38,mul_32s_32s_32_1_1_U2_n_39,mul_32s_32s_32_1_1_U2_n_40,mul_32s_32s_32_1_1_U2_n_41,mul_32s_32s_32_1_1_U2_n_42,mul_32s_32s_32_1_1_U2_n_43,mul_32s_32s_32_1_1_U2_n_44,mul_32s_32s_32_1_1_U2_n_45,mul_32s_32s_32_1_1_U2_n_46,mul_32s_32s_32_1_1_U2_n_47,mul_32s_32s_32_1_1_U2_n_48,mul_32s_32s_32_1_1_U2_n_49,mul_32s_32s_32_1_1_U2_n_50,mul_32s_32s_32_1_1_U2_n_51,mul_32s_32s_32_1_1_U2_n_52,mul_32s_32s_32_1_1_U2_n_53,mul_32s_32s_32_1_1_U2_n_54,mul_32s_32s_32_1_1_U2_n_55,mul_32s_32s_32_1_1_U2_n_56,mul_32s_32s_32_1_1_U2_n_57,mul_32s_32s_32_1_1_U2_n_58,mul_32s_32s_32_1_1_U2_n_59,mul_32s_32s_32_1_1_U2_n_60,mul_32s_32s_32_1_1_U2_n_61,mul_32s_32s_32_1_1_U2_n_62,mul_32s_32s_32_1_1_U2_n_63,mul_32s_32s_32_1_1_U2_n_64}),
        .PCOUT(NLW_mul_ln17_1_reg_795_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_1_reg_795_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_1_reg_795_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_1_reg_795_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_16),
        .Q(\mul_ln17_1_reg_795_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_6),
        .Q(\mul_ln17_1_reg_795_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_5),
        .Q(\mul_ln17_1_reg_795_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_4),
        .Q(\mul_ln17_1_reg_795_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_3),
        .Q(\mul_ln17_1_reg_795_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_2),
        .Q(\mul_ln17_1_reg_795_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_1),
        .Q(\mul_ln17_1_reg_795_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_0),
        .Q(\mul_ln17_1_reg_795_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_15),
        .Q(\mul_ln17_1_reg_795_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_14),
        .Q(\mul_ln17_1_reg_795_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_13),
        .Q(\mul_ln17_1_reg_795_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_12),
        .Q(\mul_ln17_1_reg_795_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_11),
        .Q(\mul_ln17_1_reg_795_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_10),
        .Q(\mul_ln17_1_reg_795_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_9),
        .Q(\mul_ln17_1_reg_795_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_8),
        .Q(\mul_ln17_1_reg_795_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_1_reg_795_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U2_n_7),
        .Q(\mul_ln17_1_reg_795_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_2_reg_810_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_2_reg_810_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q0[31],filter_q0[31],filter_q0[31],filter_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_2_reg_810_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_2_reg_810_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_2_reg_810_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[1]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln17_2_reg_8100),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_2_reg_810_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_2_reg_810_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_2_reg_810_reg_n_58,mul_ln17_2_reg_810_reg_n_59,mul_ln17_2_reg_810_reg_n_60,mul_ln17_2_reg_810_reg_n_61,mul_ln17_2_reg_810_reg_n_62,mul_ln17_2_reg_810_reg_n_63,mul_ln17_2_reg_810_reg_n_64,mul_ln17_2_reg_810_reg_n_65,mul_ln17_2_reg_810_reg_n_66,mul_ln17_2_reg_810_reg_n_67,mul_ln17_2_reg_810_reg_n_68,mul_ln17_2_reg_810_reg_n_69,mul_ln17_2_reg_810_reg_n_70,mul_ln17_2_reg_810_reg_n_71,mul_ln17_2_reg_810_reg_n_72,mul_ln17_2_reg_810_reg_n_73,mul_ln17_2_reg_810_reg_n_74,mul_ln17_2_reg_810_reg_n_75,mul_ln17_2_reg_810_reg_n_76,mul_ln17_2_reg_810_reg_n_77,mul_ln17_2_reg_810_reg_n_78,mul_ln17_2_reg_810_reg_n_79,mul_ln17_2_reg_810_reg_n_80,mul_ln17_2_reg_810_reg_n_81,mul_ln17_2_reg_810_reg_n_82,mul_ln17_2_reg_810_reg_n_83,mul_ln17_2_reg_810_reg_n_84,mul_ln17_2_reg_810_reg_n_85,mul_ln17_2_reg_810_reg_n_86,mul_ln17_2_reg_810_reg_n_87,mul_ln17_2_reg_810_reg_n_88,mul_ln17_2_reg_810_reg_n_89,mul_ln17_2_reg_810_reg_n_90,mul_ln17_2_reg_810_reg_n_91,mul_ln17_2_reg_810_reg_n_92,mul_ln17_2_reg_810_reg_n_93,mul_ln17_2_reg_810_reg_n_94,mul_ln17_2_reg_810_reg_n_95,mul_ln17_2_reg_810_reg_n_96,mul_ln17_2_reg_810_reg_n_97,mul_ln17_2_reg_810_reg_n_98,mul_ln17_2_reg_810_reg_n_99,mul_ln17_2_reg_810_reg_n_100,mul_ln17_2_reg_810_reg_n_101,mul_ln17_2_reg_810_reg_n_102,mul_ln17_2_reg_810_reg_n_103,mul_ln17_2_reg_810_reg_n_104,mul_ln17_2_reg_810_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_2_reg_810_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_2_reg_810_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U3_n_18,mul_32s_32s_32_1_1_U3_n_19,mul_32s_32s_32_1_1_U3_n_20,mul_32s_32s_32_1_1_U3_n_21,mul_32s_32s_32_1_1_U3_n_22,mul_32s_32s_32_1_1_U3_n_23,mul_32s_32s_32_1_1_U3_n_24,mul_32s_32s_32_1_1_U3_n_25,mul_32s_32s_32_1_1_U3_n_26,mul_32s_32s_32_1_1_U3_n_27,mul_32s_32s_32_1_1_U3_n_28,mul_32s_32s_32_1_1_U3_n_29,mul_32s_32s_32_1_1_U3_n_30,mul_32s_32s_32_1_1_U3_n_31,mul_32s_32s_32_1_1_U3_n_32,mul_32s_32s_32_1_1_U3_n_33,mul_32s_32s_32_1_1_U3_n_34,mul_32s_32s_32_1_1_U3_n_35,mul_32s_32s_32_1_1_U3_n_36,mul_32s_32s_32_1_1_U3_n_37,mul_32s_32s_32_1_1_U3_n_38,mul_32s_32s_32_1_1_U3_n_39,mul_32s_32s_32_1_1_U3_n_40,mul_32s_32s_32_1_1_U3_n_41,mul_32s_32s_32_1_1_U3_n_42,mul_32s_32s_32_1_1_U3_n_43,mul_32s_32s_32_1_1_U3_n_44,mul_32s_32s_32_1_1_U3_n_45,mul_32s_32s_32_1_1_U3_n_46,mul_32s_32s_32_1_1_U3_n_47,mul_32s_32s_32_1_1_U3_n_48,mul_32s_32s_32_1_1_U3_n_49,mul_32s_32s_32_1_1_U3_n_50,mul_32s_32s_32_1_1_U3_n_51,mul_32s_32s_32_1_1_U3_n_52,mul_32s_32s_32_1_1_U3_n_53,mul_32s_32s_32_1_1_U3_n_54,mul_32s_32s_32_1_1_U3_n_55,mul_32s_32s_32_1_1_U3_n_56,mul_32s_32s_32_1_1_U3_n_57,mul_32s_32s_32_1_1_U3_n_58,mul_32s_32s_32_1_1_U3_n_59,mul_32s_32s_32_1_1_U3_n_60,mul_32s_32s_32_1_1_U3_n_61,mul_32s_32s_32_1_1_U3_n_62,mul_32s_32s_32_1_1_U3_n_63,mul_32s_32s_32_1_1_U3_n_64,mul_32s_32s_32_1_1_U3_n_65}),
        .PCOUT(NLW_mul_ln17_2_reg_810_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_2_reg_810_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_2_reg_810_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_2_reg_810_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_17),
        .Q(\mul_ln17_2_reg_810_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_7),
        .Q(\mul_ln17_2_reg_810_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_6),
        .Q(\mul_ln17_2_reg_810_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_5),
        .Q(\mul_ln17_2_reg_810_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_4),
        .Q(\mul_ln17_2_reg_810_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_3),
        .Q(\mul_ln17_2_reg_810_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_2),
        .Q(\mul_ln17_2_reg_810_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_1),
        .Q(\mul_ln17_2_reg_810_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_16),
        .Q(\mul_ln17_2_reg_810_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_15),
        .Q(\mul_ln17_2_reg_810_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_14),
        .Q(\mul_ln17_2_reg_810_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_13),
        .Q(\mul_ln17_2_reg_810_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_12),
        .Q(\mul_ln17_2_reg_810_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_11),
        .Q(\mul_ln17_2_reg_810_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_10),
        .Q(\mul_ln17_2_reg_810_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_9),
        .Q(\mul_ln17_2_reg_810_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_2_reg_810_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U3_n_8),
        .Q(\mul_ln17_2_reg_810_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_3_reg_815_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_3_reg_815_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q0[31],filter_q0[31],filter_q0[31],filter_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_3_reg_815_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_3_reg_815_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_3_reg_815_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[2]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln17_2_reg_8100),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_3_reg_815_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_3_reg_815_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_3_reg_815_reg_n_58,mul_ln17_3_reg_815_reg_n_59,mul_ln17_3_reg_815_reg_n_60,mul_ln17_3_reg_815_reg_n_61,mul_ln17_3_reg_815_reg_n_62,mul_ln17_3_reg_815_reg_n_63,mul_ln17_3_reg_815_reg_n_64,mul_ln17_3_reg_815_reg_n_65,mul_ln17_3_reg_815_reg_n_66,mul_ln17_3_reg_815_reg_n_67,mul_ln17_3_reg_815_reg_n_68,mul_ln17_3_reg_815_reg_n_69,mul_ln17_3_reg_815_reg_n_70,mul_ln17_3_reg_815_reg_n_71,mul_ln17_3_reg_815_reg_n_72,mul_ln17_3_reg_815_reg_n_73,mul_ln17_3_reg_815_reg_n_74,mul_ln17_3_reg_815_reg_n_75,mul_ln17_3_reg_815_reg_n_76,mul_ln17_3_reg_815_reg_n_77,mul_ln17_3_reg_815_reg_n_78,mul_ln17_3_reg_815_reg_n_79,mul_ln17_3_reg_815_reg_n_80,mul_ln17_3_reg_815_reg_n_81,mul_ln17_3_reg_815_reg_n_82,mul_ln17_3_reg_815_reg_n_83,mul_ln17_3_reg_815_reg_n_84,mul_ln17_3_reg_815_reg_n_85,mul_ln17_3_reg_815_reg_n_86,mul_ln17_3_reg_815_reg_n_87,mul_ln17_3_reg_815_reg_n_88,mul_ln17_3_reg_815_reg_n_89,mul_ln17_3_reg_815_reg_n_90,mul_ln17_3_reg_815_reg_n_91,mul_ln17_3_reg_815_reg_n_92,mul_ln17_3_reg_815_reg_n_93,mul_ln17_3_reg_815_reg_n_94,mul_ln17_3_reg_815_reg_n_95,mul_ln17_3_reg_815_reg_n_96,mul_ln17_3_reg_815_reg_n_97,mul_ln17_3_reg_815_reg_n_98,mul_ln17_3_reg_815_reg_n_99,mul_ln17_3_reg_815_reg_n_100,mul_ln17_3_reg_815_reg_n_101,mul_ln17_3_reg_815_reg_n_102,mul_ln17_3_reg_815_reg_n_103,mul_ln17_3_reg_815_reg_n_104,mul_ln17_3_reg_815_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_3_reg_815_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_3_reg_815_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U4_n_17,mul_32s_32s_32_1_1_U4_n_18,mul_32s_32s_32_1_1_U4_n_19,mul_32s_32s_32_1_1_U4_n_20,mul_32s_32s_32_1_1_U4_n_21,mul_32s_32s_32_1_1_U4_n_22,mul_32s_32s_32_1_1_U4_n_23,mul_32s_32s_32_1_1_U4_n_24,mul_32s_32s_32_1_1_U4_n_25,mul_32s_32s_32_1_1_U4_n_26,mul_32s_32s_32_1_1_U4_n_27,mul_32s_32s_32_1_1_U4_n_28,mul_32s_32s_32_1_1_U4_n_29,mul_32s_32s_32_1_1_U4_n_30,mul_32s_32s_32_1_1_U4_n_31,mul_32s_32s_32_1_1_U4_n_32,mul_32s_32s_32_1_1_U4_n_33,mul_32s_32s_32_1_1_U4_n_34,mul_32s_32s_32_1_1_U4_n_35,mul_32s_32s_32_1_1_U4_n_36,mul_32s_32s_32_1_1_U4_n_37,mul_32s_32s_32_1_1_U4_n_38,mul_32s_32s_32_1_1_U4_n_39,mul_32s_32s_32_1_1_U4_n_40,mul_32s_32s_32_1_1_U4_n_41,mul_32s_32s_32_1_1_U4_n_42,mul_32s_32s_32_1_1_U4_n_43,mul_32s_32s_32_1_1_U4_n_44,mul_32s_32s_32_1_1_U4_n_45,mul_32s_32s_32_1_1_U4_n_46,mul_32s_32s_32_1_1_U4_n_47,mul_32s_32s_32_1_1_U4_n_48,mul_32s_32s_32_1_1_U4_n_49,mul_32s_32s_32_1_1_U4_n_50,mul_32s_32s_32_1_1_U4_n_51,mul_32s_32s_32_1_1_U4_n_52,mul_32s_32s_32_1_1_U4_n_53,mul_32s_32s_32_1_1_U4_n_54,mul_32s_32s_32_1_1_U4_n_55,mul_32s_32s_32_1_1_U4_n_56,mul_32s_32s_32_1_1_U4_n_57,mul_32s_32s_32_1_1_U4_n_58,mul_32s_32s_32_1_1_U4_n_59,mul_32s_32s_32_1_1_U4_n_60,mul_32s_32s_32_1_1_U4_n_61,mul_32s_32s_32_1_1_U4_n_62,mul_32s_32s_32_1_1_U4_n_63,mul_32s_32s_32_1_1_U4_n_64}),
        .PCOUT(NLW_mul_ln17_3_reg_815_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_3_reg_815_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_3_reg_815_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_3_reg_815_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_16),
        .Q(\mul_ln17_3_reg_815_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_6),
        .Q(\mul_ln17_3_reg_815_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_5),
        .Q(\mul_ln17_3_reg_815_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_4),
        .Q(\mul_ln17_3_reg_815_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_3),
        .Q(\mul_ln17_3_reg_815_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_2),
        .Q(\mul_ln17_3_reg_815_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_1),
        .Q(\mul_ln17_3_reg_815_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_0),
        .Q(\mul_ln17_3_reg_815_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_15),
        .Q(\mul_ln17_3_reg_815_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_14),
        .Q(\mul_ln17_3_reg_815_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_13),
        .Q(\mul_ln17_3_reg_815_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_12),
        .Q(\mul_ln17_3_reg_815_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_11),
        .Q(\mul_ln17_3_reg_815_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_10),
        .Q(\mul_ln17_3_reg_815_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_9),
        .Q(\mul_ln17_3_reg_815_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_8),
        .Q(\mul_ln17_3_reg_815_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_3_reg_815_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln17_2_reg_8100),
        .D(mul_32s_32s_32_1_1_U4_n_7),
        .Q(\mul_ln17_3_reg_815_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_4_reg_830_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_4_reg_830_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q1[31],filter_q1[31],filter_q1[31],filter_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_4_reg_830_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_4_reg_830_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_4_reg_830_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[2]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln17_4_reg_8300),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_4_reg_830_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_4_reg_830_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_4_reg_830_reg_n_58,mul_ln17_4_reg_830_reg_n_59,mul_ln17_4_reg_830_reg_n_60,mul_ln17_4_reg_830_reg_n_61,mul_ln17_4_reg_830_reg_n_62,mul_ln17_4_reg_830_reg_n_63,mul_ln17_4_reg_830_reg_n_64,mul_ln17_4_reg_830_reg_n_65,mul_ln17_4_reg_830_reg_n_66,mul_ln17_4_reg_830_reg_n_67,mul_ln17_4_reg_830_reg_n_68,mul_ln17_4_reg_830_reg_n_69,mul_ln17_4_reg_830_reg_n_70,mul_ln17_4_reg_830_reg_n_71,mul_ln17_4_reg_830_reg_n_72,mul_ln17_4_reg_830_reg_n_73,mul_ln17_4_reg_830_reg_n_74,mul_ln17_4_reg_830_reg_n_75,mul_ln17_4_reg_830_reg_n_76,mul_ln17_4_reg_830_reg_n_77,mul_ln17_4_reg_830_reg_n_78,mul_ln17_4_reg_830_reg_n_79,mul_ln17_4_reg_830_reg_n_80,mul_ln17_4_reg_830_reg_n_81,mul_ln17_4_reg_830_reg_n_82,mul_ln17_4_reg_830_reg_n_83,mul_ln17_4_reg_830_reg_n_84,mul_ln17_4_reg_830_reg_n_85,mul_ln17_4_reg_830_reg_n_86,mul_ln17_4_reg_830_reg_n_87,mul_ln17_4_reg_830_reg_n_88,mul_ln17_4_reg_830_reg_n_89,mul_ln17_4_reg_830_reg_n_90,mul_ln17_4_reg_830_reg_n_91,mul_ln17_4_reg_830_reg_n_92,mul_ln17_4_reg_830_reg_n_93,mul_ln17_4_reg_830_reg_n_94,mul_ln17_4_reg_830_reg_n_95,mul_ln17_4_reg_830_reg_n_96,mul_ln17_4_reg_830_reg_n_97,mul_ln17_4_reg_830_reg_n_98,mul_ln17_4_reg_830_reg_n_99,mul_ln17_4_reg_830_reg_n_100,mul_ln17_4_reg_830_reg_n_101,mul_ln17_4_reg_830_reg_n_102,mul_ln17_4_reg_830_reg_n_103,mul_ln17_4_reg_830_reg_n_104,mul_ln17_4_reg_830_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_4_reg_830_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_4_reg_830_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U5_n_17,mul_32s_32s_32_1_1_U5_n_18,mul_32s_32s_32_1_1_U5_n_19,mul_32s_32s_32_1_1_U5_n_20,mul_32s_32s_32_1_1_U5_n_21,mul_32s_32s_32_1_1_U5_n_22,mul_32s_32s_32_1_1_U5_n_23,mul_32s_32s_32_1_1_U5_n_24,mul_32s_32s_32_1_1_U5_n_25,mul_32s_32s_32_1_1_U5_n_26,mul_32s_32s_32_1_1_U5_n_27,mul_32s_32s_32_1_1_U5_n_28,mul_32s_32s_32_1_1_U5_n_29,mul_32s_32s_32_1_1_U5_n_30,mul_32s_32s_32_1_1_U5_n_31,mul_32s_32s_32_1_1_U5_n_32,mul_32s_32s_32_1_1_U5_n_33,mul_32s_32s_32_1_1_U5_n_34,mul_32s_32s_32_1_1_U5_n_35,mul_32s_32s_32_1_1_U5_n_36,mul_32s_32s_32_1_1_U5_n_37,mul_32s_32s_32_1_1_U5_n_38,mul_32s_32s_32_1_1_U5_n_39,mul_32s_32s_32_1_1_U5_n_40,mul_32s_32s_32_1_1_U5_n_41,mul_32s_32s_32_1_1_U5_n_42,mul_32s_32s_32_1_1_U5_n_43,mul_32s_32s_32_1_1_U5_n_44,mul_32s_32s_32_1_1_U5_n_45,mul_32s_32s_32_1_1_U5_n_46,mul_32s_32s_32_1_1_U5_n_47,mul_32s_32s_32_1_1_U5_n_48,mul_32s_32s_32_1_1_U5_n_49,mul_32s_32s_32_1_1_U5_n_50,mul_32s_32s_32_1_1_U5_n_51,mul_32s_32s_32_1_1_U5_n_52,mul_32s_32s_32_1_1_U5_n_53,mul_32s_32s_32_1_1_U5_n_54,mul_32s_32s_32_1_1_U5_n_55,mul_32s_32s_32_1_1_U5_n_56,mul_32s_32s_32_1_1_U5_n_57,mul_32s_32s_32_1_1_U5_n_58,mul_32s_32s_32_1_1_U5_n_59,mul_32s_32s_32_1_1_U5_n_60,mul_32s_32s_32_1_1_U5_n_61,mul_32s_32s_32_1_1_U5_n_62,mul_32s_32s_32_1_1_U5_n_63,mul_32s_32s_32_1_1_U5_n_64}),
        .PCOUT(NLW_mul_ln17_4_reg_830_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_4_reg_830_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_4_reg_830_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_4_reg_830_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_16),
        .Q(\mul_ln17_4_reg_830_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_6),
        .Q(\mul_ln17_4_reg_830_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_5),
        .Q(\mul_ln17_4_reg_830_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_4),
        .Q(\mul_ln17_4_reg_830_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_3),
        .Q(\mul_ln17_4_reg_830_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_2),
        .Q(\mul_ln17_4_reg_830_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_1),
        .Q(\mul_ln17_4_reg_830_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_0),
        .Q(\mul_ln17_4_reg_830_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_15),
        .Q(\mul_ln17_4_reg_830_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_14),
        .Q(\mul_ln17_4_reg_830_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_13),
        .Q(\mul_ln17_4_reg_830_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_12),
        .Q(\mul_ln17_4_reg_830_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_11),
        .Q(\mul_ln17_4_reg_830_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_10),
        .Q(\mul_ln17_4_reg_830_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_9),
        .Q(\mul_ln17_4_reg_830_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_8),
        .Q(\mul_ln17_4_reg_830_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_4_reg_830_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U5_n_7),
        .Q(\mul_ln17_4_reg_830_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_5_reg_835_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_5_reg_835_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q0[31],filter_q0[31],filter_q0[31],filter_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_5_reg_835_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_5_reg_835_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_5_reg_835_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[3]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln17_4_reg_8300),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_5_reg_835_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_5_reg_835_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_5_reg_835_reg_n_58,mul_ln17_5_reg_835_reg_n_59,mul_ln17_5_reg_835_reg_n_60,mul_ln17_5_reg_835_reg_n_61,mul_ln17_5_reg_835_reg_n_62,mul_ln17_5_reg_835_reg_n_63,mul_ln17_5_reg_835_reg_n_64,mul_ln17_5_reg_835_reg_n_65,mul_ln17_5_reg_835_reg_n_66,mul_ln17_5_reg_835_reg_n_67,mul_ln17_5_reg_835_reg_n_68,mul_ln17_5_reg_835_reg_n_69,mul_ln17_5_reg_835_reg_n_70,mul_ln17_5_reg_835_reg_n_71,mul_ln17_5_reg_835_reg_n_72,mul_ln17_5_reg_835_reg_n_73,mul_ln17_5_reg_835_reg_n_74,mul_ln17_5_reg_835_reg_n_75,mul_ln17_5_reg_835_reg_n_76,mul_ln17_5_reg_835_reg_n_77,mul_ln17_5_reg_835_reg_n_78,mul_ln17_5_reg_835_reg_n_79,mul_ln17_5_reg_835_reg_n_80,mul_ln17_5_reg_835_reg_n_81,mul_ln17_5_reg_835_reg_n_82,mul_ln17_5_reg_835_reg_n_83,mul_ln17_5_reg_835_reg_n_84,mul_ln17_5_reg_835_reg_n_85,mul_ln17_5_reg_835_reg_n_86,mul_ln17_5_reg_835_reg_n_87,mul_ln17_5_reg_835_reg_n_88,mul_ln17_5_reg_835_reg_n_89,mul_ln17_5_reg_835_reg_n_90,mul_ln17_5_reg_835_reg_n_91,mul_ln17_5_reg_835_reg_n_92,mul_ln17_5_reg_835_reg_n_93,mul_ln17_5_reg_835_reg_n_94,mul_ln17_5_reg_835_reg_n_95,mul_ln17_5_reg_835_reg_n_96,mul_ln17_5_reg_835_reg_n_97,mul_ln17_5_reg_835_reg_n_98,mul_ln17_5_reg_835_reg_n_99,mul_ln17_5_reg_835_reg_n_100,mul_ln17_5_reg_835_reg_n_101,mul_ln17_5_reg_835_reg_n_102,mul_ln17_5_reg_835_reg_n_103,mul_ln17_5_reg_835_reg_n_104,mul_ln17_5_reg_835_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_5_reg_835_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_5_reg_835_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U6_n_18,mul_32s_32s_32_1_1_U6_n_19,mul_32s_32s_32_1_1_U6_n_20,mul_32s_32s_32_1_1_U6_n_21,mul_32s_32s_32_1_1_U6_n_22,mul_32s_32s_32_1_1_U6_n_23,mul_32s_32s_32_1_1_U6_n_24,mul_32s_32s_32_1_1_U6_n_25,mul_32s_32s_32_1_1_U6_n_26,mul_32s_32s_32_1_1_U6_n_27,mul_32s_32s_32_1_1_U6_n_28,mul_32s_32s_32_1_1_U6_n_29,mul_32s_32s_32_1_1_U6_n_30,mul_32s_32s_32_1_1_U6_n_31,mul_32s_32s_32_1_1_U6_n_32,mul_32s_32s_32_1_1_U6_n_33,mul_32s_32s_32_1_1_U6_n_34,mul_32s_32s_32_1_1_U6_n_35,mul_32s_32s_32_1_1_U6_n_36,mul_32s_32s_32_1_1_U6_n_37,mul_32s_32s_32_1_1_U6_n_38,mul_32s_32s_32_1_1_U6_n_39,mul_32s_32s_32_1_1_U6_n_40,mul_32s_32s_32_1_1_U6_n_41,mul_32s_32s_32_1_1_U6_n_42,mul_32s_32s_32_1_1_U6_n_43,mul_32s_32s_32_1_1_U6_n_44,mul_32s_32s_32_1_1_U6_n_45,mul_32s_32s_32_1_1_U6_n_46,mul_32s_32s_32_1_1_U6_n_47,mul_32s_32s_32_1_1_U6_n_48,mul_32s_32s_32_1_1_U6_n_49,mul_32s_32s_32_1_1_U6_n_50,mul_32s_32s_32_1_1_U6_n_51,mul_32s_32s_32_1_1_U6_n_52,mul_32s_32s_32_1_1_U6_n_53,mul_32s_32s_32_1_1_U6_n_54,mul_32s_32s_32_1_1_U6_n_55,mul_32s_32s_32_1_1_U6_n_56,mul_32s_32s_32_1_1_U6_n_57,mul_32s_32s_32_1_1_U6_n_58,mul_32s_32s_32_1_1_U6_n_59,mul_32s_32s_32_1_1_U6_n_60,mul_32s_32s_32_1_1_U6_n_61,mul_32s_32s_32_1_1_U6_n_62,mul_32s_32s_32_1_1_U6_n_63,mul_32s_32s_32_1_1_U6_n_64,mul_32s_32s_32_1_1_U6_n_65}),
        .PCOUT(NLW_mul_ln17_5_reg_835_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_5_reg_835_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_5_reg_835_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_5_reg_835_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_17),
        .Q(\mul_ln17_5_reg_835_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_7),
        .Q(\mul_ln17_5_reg_835_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_6),
        .Q(\mul_ln17_5_reg_835_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_5),
        .Q(\mul_ln17_5_reg_835_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_4),
        .Q(\mul_ln17_5_reg_835_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_3),
        .Q(\mul_ln17_5_reg_835_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_2),
        .Q(\mul_ln17_5_reg_835_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_1),
        .Q(\mul_ln17_5_reg_835_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_16),
        .Q(\mul_ln17_5_reg_835_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_15),
        .Q(\mul_ln17_5_reg_835_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_14),
        .Q(\mul_ln17_5_reg_835_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_13),
        .Q(\mul_ln17_5_reg_835_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_12),
        .Q(\mul_ln17_5_reg_835_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_11),
        .Q(\mul_ln17_5_reg_835_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_10),
        .Q(\mul_ln17_5_reg_835_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_9),
        .Q(\mul_ln17_5_reg_835_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_5_reg_835_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln17_4_reg_8300),
        .D(mul_32s_32s_32_1_1_U6_n_8),
        .Q(\mul_ln17_5_reg_835_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_6_reg_850_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_6_reg_850_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q1[31],filter_q1[31],filter_q1[31],filter_q1[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_6_reg_850_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_6_reg_850_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_6_reg_850_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[3]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(add_ln18_1_reg_8650),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_6_reg_850_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_6_reg_850_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_6_reg_850_reg_n_58,mul_ln17_6_reg_850_reg_n_59,mul_ln17_6_reg_850_reg_n_60,mul_ln17_6_reg_850_reg_n_61,mul_ln17_6_reg_850_reg_n_62,mul_ln17_6_reg_850_reg_n_63,mul_ln17_6_reg_850_reg_n_64,mul_ln17_6_reg_850_reg_n_65,mul_ln17_6_reg_850_reg_n_66,mul_ln17_6_reg_850_reg_n_67,mul_ln17_6_reg_850_reg_n_68,mul_ln17_6_reg_850_reg_n_69,mul_ln17_6_reg_850_reg_n_70,mul_ln17_6_reg_850_reg_n_71,mul_ln17_6_reg_850_reg_n_72,mul_ln17_6_reg_850_reg_n_73,mul_ln17_6_reg_850_reg_n_74,mul_ln17_6_reg_850_reg_n_75,mul_ln17_6_reg_850_reg_n_76,mul_ln17_6_reg_850_reg_n_77,mul_ln17_6_reg_850_reg_n_78,mul_ln17_6_reg_850_reg_n_79,mul_ln17_6_reg_850_reg_n_80,mul_ln17_6_reg_850_reg_n_81,mul_ln17_6_reg_850_reg_n_82,mul_ln17_6_reg_850_reg_n_83,mul_ln17_6_reg_850_reg_n_84,mul_ln17_6_reg_850_reg_n_85,mul_ln17_6_reg_850_reg_n_86,mul_ln17_6_reg_850_reg_n_87,mul_ln17_6_reg_850_reg_n_88,mul_ln17_6_reg_850_reg_n_89,mul_ln17_6_reg_850_reg_n_90,mul_ln17_6_reg_850_reg_n_91,mul_ln17_6_reg_850_reg_n_92,mul_ln17_6_reg_850_reg_n_93,mul_ln17_6_reg_850_reg_n_94,mul_ln17_6_reg_850_reg_n_95,mul_ln17_6_reg_850_reg_n_96,mul_ln17_6_reg_850_reg_n_97,mul_ln17_6_reg_850_reg_n_98,mul_ln17_6_reg_850_reg_n_99,mul_ln17_6_reg_850_reg_n_100,mul_ln17_6_reg_850_reg_n_101,mul_ln17_6_reg_850_reg_n_102,mul_ln17_6_reg_850_reg_n_103,mul_ln17_6_reg_850_reg_n_104,mul_ln17_6_reg_850_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_6_reg_850_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_6_reg_850_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U7_n_18,mul_32s_32s_32_1_1_U7_n_19,mul_32s_32s_32_1_1_U7_n_20,mul_32s_32s_32_1_1_U7_n_21,mul_32s_32s_32_1_1_U7_n_22,mul_32s_32s_32_1_1_U7_n_23,mul_32s_32s_32_1_1_U7_n_24,mul_32s_32s_32_1_1_U7_n_25,mul_32s_32s_32_1_1_U7_n_26,mul_32s_32s_32_1_1_U7_n_27,mul_32s_32s_32_1_1_U7_n_28,mul_32s_32s_32_1_1_U7_n_29,mul_32s_32s_32_1_1_U7_n_30,mul_32s_32s_32_1_1_U7_n_31,mul_32s_32s_32_1_1_U7_n_32,mul_32s_32s_32_1_1_U7_n_33,mul_32s_32s_32_1_1_U7_n_34,mul_32s_32s_32_1_1_U7_n_35,mul_32s_32s_32_1_1_U7_n_36,mul_32s_32s_32_1_1_U7_n_37,mul_32s_32s_32_1_1_U7_n_38,mul_32s_32s_32_1_1_U7_n_39,mul_32s_32s_32_1_1_U7_n_40,mul_32s_32s_32_1_1_U7_n_41,mul_32s_32s_32_1_1_U7_n_42,mul_32s_32s_32_1_1_U7_n_43,mul_32s_32s_32_1_1_U7_n_44,mul_32s_32s_32_1_1_U7_n_45,mul_32s_32s_32_1_1_U7_n_46,mul_32s_32s_32_1_1_U7_n_47,mul_32s_32s_32_1_1_U7_n_48,mul_32s_32s_32_1_1_U7_n_49,mul_32s_32s_32_1_1_U7_n_50,mul_32s_32s_32_1_1_U7_n_51,mul_32s_32s_32_1_1_U7_n_52,mul_32s_32s_32_1_1_U7_n_53,mul_32s_32s_32_1_1_U7_n_54,mul_32s_32s_32_1_1_U7_n_55,mul_32s_32s_32_1_1_U7_n_56,mul_32s_32s_32_1_1_U7_n_57,mul_32s_32s_32_1_1_U7_n_58,mul_32s_32s_32_1_1_U7_n_59,mul_32s_32s_32_1_1_U7_n_60,mul_32s_32s_32_1_1_U7_n_61,mul_32s_32s_32_1_1_U7_n_62,mul_32s_32s_32_1_1_U7_n_63,mul_32s_32s_32_1_1_U7_n_64,mul_32s_32s_32_1_1_U7_n_65}),
        .PCOUT(NLW_mul_ln17_6_reg_850_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_6_reg_850_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_6_reg_850_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_6_reg_850_reg[0]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_17),
        .Q(\mul_ln17_6_reg_850_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[10]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_7),
        .Q(\mul_ln17_6_reg_850_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[11]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_6),
        .Q(\mul_ln17_6_reg_850_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[12]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_5),
        .Q(\mul_ln17_6_reg_850_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[13]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_4),
        .Q(\mul_ln17_6_reg_850_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[14]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_3),
        .Q(\mul_ln17_6_reg_850_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[15]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_2),
        .Q(\mul_ln17_6_reg_850_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[16]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_1),
        .Q(\mul_ln17_6_reg_850_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[1]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_16),
        .Q(\mul_ln17_6_reg_850_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[2]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_15),
        .Q(\mul_ln17_6_reg_850_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[3]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_14),
        .Q(\mul_ln17_6_reg_850_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[4]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_13),
        .Q(\mul_ln17_6_reg_850_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[5]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_12),
        .Q(\mul_ln17_6_reg_850_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[6]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_11),
        .Q(\mul_ln17_6_reg_850_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[7]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_10),
        .Q(\mul_ln17_6_reg_850_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[8]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_9),
        .Q(\mul_ln17_6_reg_850_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_6_reg_850_reg[9]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U7_n_8),
        .Q(\mul_ln17_6_reg_850_reg[9]__0_n_0 ),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_7_reg_855_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q0[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_7_reg_855_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q0[31],filter_q0[31],filter_q0[31],filter_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_7_reg_855_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_7_reg_855_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_7_reg_855_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[4]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(add_ln18_1_reg_8650),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_7_reg_855_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_7_reg_855_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_7_reg_855_reg_n_58,mul_ln17_7_reg_855_reg_n_59,mul_ln17_7_reg_855_reg_n_60,mul_ln17_7_reg_855_reg_n_61,mul_ln17_7_reg_855_reg_n_62,mul_ln17_7_reg_855_reg_n_63,mul_ln17_7_reg_855_reg_n_64,mul_ln17_7_reg_855_reg_n_65,mul_ln17_7_reg_855_reg_n_66,mul_ln17_7_reg_855_reg_n_67,mul_ln17_7_reg_855_reg_n_68,mul_ln17_7_reg_855_reg_n_69,mul_ln17_7_reg_855_reg_n_70,mul_ln17_7_reg_855_reg_n_71,mul_ln17_7_reg_855_reg_n_72,mul_ln17_7_reg_855_reg_n_73,mul_ln17_7_reg_855_reg_n_74,mul_ln17_7_reg_855_reg_n_75,mul_ln17_7_reg_855_reg_n_76,mul_ln17_7_reg_855_reg_n_77,mul_ln17_7_reg_855_reg_n_78,mul_ln17_7_reg_855_reg_n_79,mul_ln17_7_reg_855_reg_n_80,mul_ln17_7_reg_855_reg_n_81,mul_ln17_7_reg_855_reg_n_82,mul_ln17_7_reg_855_reg_n_83,mul_ln17_7_reg_855_reg_n_84,mul_ln17_7_reg_855_reg_n_85,mul_ln17_7_reg_855_reg_n_86,mul_ln17_7_reg_855_reg_n_87,mul_ln17_7_reg_855_reg_n_88,mul_ln17_7_reg_855_reg_n_89,mul_ln17_7_reg_855_reg_n_90,mul_ln17_7_reg_855_reg_n_91,mul_ln17_7_reg_855_reg_n_92,mul_ln17_7_reg_855_reg_n_93,mul_ln17_7_reg_855_reg_n_94,mul_ln17_7_reg_855_reg_n_95,mul_ln17_7_reg_855_reg_n_96,mul_ln17_7_reg_855_reg_n_97,mul_ln17_7_reg_855_reg_n_98,mul_ln17_7_reg_855_reg_n_99,mul_ln17_7_reg_855_reg_n_100,mul_ln17_7_reg_855_reg_n_101,mul_ln17_7_reg_855_reg_n_102,mul_ln17_7_reg_855_reg_n_103,mul_ln17_7_reg_855_reg_n_104,mul_ln17_7_reg_855_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_7_reg_855_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_7_reg_855_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U8_n_17,mul_32s_32s_32_1_1_U8_n_18,mul_32s_32s_32_1_1_U8_n_19,mul_32s_32s_32_1_1_U8_n_20,mul_32s_32s_32_1_1_U8_n_21,mul_32s_32s_32_1_1_U8_n_22,mul_32s_32s_32_1_1_U8_n_23,mul_32s_32s_32_1_1_U8_n_24,mul_32s_32s_32_1_1_U8_n_25,mul_32s_32s_32_1_1_U8_n_26,mul_32s_32s_32_1_1_U8_n_27,mul_32s_32s_32_1_1_U8_n_28,mul_32s_32s_32_1_1_U8_n_29,mul_32s_32s_32_1_1_U8_n_30,mul_32s_32s_32_1_1_U8_n_31,mul_32s_32s_32_1_1_U8_n_32,mul_32s_32s_32_1_1_U8_n_33,mul_32s_32s_32_1_1_U8_n_34,mul_32s_32s_32_1_1_U8_n_35,mul_32s_32s_32_1_1_U8_n_36,mul_32s_32s_32_1_1_U8_n_37,mul_32s_32s_32_1_1_U8_n_38,mul_32s_32s_32_1_1_U8_n_39,mul_32s_32s_32_1_1_U8_n_40,mul_32s_32s_32_1_1_U8_n_41,mul_32s_32s_32_1_1_U8_n_42,mul_32s_32s_32_1_1_U8_n_43,mul_32s_32s_32_1_1_U8_n_44,mul_32s_32s_32_1_1_U8_n_45,mul_32s_32s_32_1_1_U8_n_46,mul_32s_32s_32_1_1_U8_n_47,mul_32s_32s_32_1_1_U8_n_48,mul_32s_32s_32_1_1_U8_n_49,mul_32s_32s_32_1_1_U8_n_50,mul_32s_32s_32_1_1_U8_n_51,mul_32s_32s_32_1_1_U8_n_52,mul_32s_32s_32_1_1_U8_n_53,mul_32s_32s_32_1_1_U8_n_54,mul_32s_32s_32_1_1_U8_n_55,mul_32s_32s_32_1_1_U8_n_56,mul_32s_32s_32_1_1_U8_n_57,mul_32s_32s_32_1_1_U8_n_58,mul_32s_32s_32_1_1_U8_n_59,mul_32s_32s_32_1_1_U8_n_60,mul_32s_32s_32_1_1_U8_n_61,mul_32s_32s_32_1_1_U8_n_62,mul_32s_32s_32_1_1_U8_n_63,mul_32s_32s_32_1_1_U8_n_64}),
        .PCOUT(NLW_mul_ln17_7_reg_855_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_7_reg_855_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_7_reg_855_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_7_reg_855_reg[0]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_16),
        .Q(\mul_ln17_7_reg_855_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[10]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_6),
        .Q(\mul_ln17_7_reg_855_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[11]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_5),
        .Q(\mul_ln17_7_reg_855_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[12]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_4),
        .Q(\mul_ln17_7_reg_855_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[13]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_3),
        .Q(\mul_ln17_7_reg_855_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[14]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_2),
        .Q(\mul_ln17_7_reg_855_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[15]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_1),
        .Q(\mul_ln17_7_reg_855_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[16]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_0),
        .Q(\mul_ln17_7_reg_855_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[1]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_15),
        .Q(\mul_ln17_7_reg_855_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[2]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_14),
        .Q(\mul_ln17_7_reg_855_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[3]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_13),
        .Q(\mul_ln17_7_reg_855_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[4]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_12),
        .Q(\mul_ln17_7_reg_855_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[5]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_11),
        .Q(\mul_ln17_7_reg_855_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[6]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_10),
        .Q(\mul_ln17_7_reg_855_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[7]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_9),
        .Q(\mul_ln17_7_reg_855_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[8]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_8),
        .Q(\mul_ln17_7_reg_855_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_7_reg_855_reg[9]__0 
       (.C(ap_clk),
        .CE(add_ln18_1_reg_8650),
        .D(mul_32s_32s_32_1_1_U8_n_7),
        .Q(\mul_ln17_7_reg_855_reg[9]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_31),
        .Q(mul_ln17_8_reg_870[0]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_21),
        .Q(mul_ln17_8_reg_870[10]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_20),
        .Q(mul_ln17_8_reg_870[11]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_19),
        .Q(mul_ln17_8_reg_870[12]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_18),
        .Q(mul_ln17_8_reg_870[13]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_17),
        .Q(mul_ln17_8_reg_870[14]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_16),
        .Q(mul_ln17_8_reg_870[15]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[16]),
        .Q(mul_ln17_8_reg_870[16]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[17] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[17]),
        .Q(mul_ln17_8_reg_870[17]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[18] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[18]),
        .Q(mul_ln17_8_reg_870[18]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[19] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[19]),
        .Q(mul_ln17_8_reg_870[19]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_30),
        .Q(mul_ln17_8_reg_870[1]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[20] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[20]),
        .Q(mul_ln17_8_reg_870[20]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[21] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[21]),
        .Q(mul_ln17_8_reg_870[21]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[22] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[22]),
        .Q(mul_ln17_8_reg_870[22]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[23] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[23]),
        .Q(mul_ln17_8_reg_870[23]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[24] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[24]),
        .Q(mul_ln17_8_reg_870[24]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[25] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[25]),
        .Q(mul_ln17_8_reg_870[25]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[26] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[26]),
        .Q(mul_ln17_8_reg_870[26]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[27] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[27]),
        .Q(mul_ln17_8_reg_870[27]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[28] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[28]),
        .Q(mul_ln17_8_reg_870[28]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[29] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[29]),
        .Q(mul_ln17_8_reg_870[29]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_29),
        .Q(mul_ln17_8_reg_870[2]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[30] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[30]),
        .Q(mul_ln17_8_reg_870[30]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[31] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(dout__3[31]),
        .Q(mul_ln17_8_reg_870[31]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_28),
        .Q(mul_ln17_8_reg_870[3]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_27),
        .Q(mul_ln17_8_reg_870[4]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_26),
        .Q(mul_ln17_8_reg_870[5]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_25),
        .Q(mul_ln17_8_reg_870[6]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_24),
        .Q(mul_ln17_8_reg_870[7]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_23),
        .Q(mul_ln17_8_reg_870[8]),
        .R(1'b0));
  FDRE \mul_ln17_8_reg_870_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(mul_32s_32s_32_1_1_U9_n_22),
        .Q(mul_ln17_8_reg_870[9]),
        .R(1'b0));
  (* KEEP_HIERARCHY = "yes" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-10 {cell *THIS*} {string 18x15 4}}" *) 
  DSP48E2 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AMULTSEL("A"),
    .AREG(0),
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
    mul_ln17_reg_790_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,orig_q1[16:0]}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln17_reg_790_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({filter_q0[31],filter_q0[31],filter_q0[31],filter_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln17_reg_790_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln17_reg_790_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln17_reg_790_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(Q[0]),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(mul_ln17_1_reg_7950),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln17_reg_790_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln17_reg_790_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln17_reg_790_reg_n_58,mul_ln17_reg_790_reg_n_59,mul_ln17_reg_790_reg_n_60,mul_ln17_reg_790_reg_n_61,mul_ln17_reg_790_reg_n_62,mul_ln17_reg_790_reg_n_63,mul_ln17_reg_790_reg_n_64,mul_ln17_reg_790_reg_n_65,mul_ln17_reg_790_reg_n_66,mul_ln17_reg_790_reg_n_67,mul_ln17_reg_790_reg_n_68,mul_ln17_reg_790_reg_n_69,mul_ln17_reg_790_reg_n_70,mul_ln17_reg_790_reg_n_71,mul_ln17_reg_790_reg_n_72,mul_ln17_reg_790_reg_n_73,mul_ln17_reg_790_reg_n_74,mul_ln17_reg_790_reg_n_75,mul_ln17_reg_790_reg_n_76,mul_ln17_reg_790_reg_n_77,mul_ln17_reg_790_reg_n_78,mul_ln17_reg_790_reg_n_79,mul_ln17_reg_790_reg_n_80,mul_ln17_reg_790_reg_n_81,mul_ln17_reg_790_reg_n_82,mul_ln17_reg_790_reg_n_83,mul_ln17_reg_790_reg_n_84,mul_ln17_reg_790_reg_n_85,mul_ln17_reg_790_reg_n_86,mul_ln17_reg_790_reg_n_87,mul_ln17_reg_790_reg_n_88,mul_ln17_reg_790_reg_n_89,mul_ln17_reg_790_reg_n_90,mul_ln17_reg_790_reg_n_91,mul_ln17_reg_790_reg_n_92,mul_ln17_reg_790_reg_n_93,mul_ln17_reg_790_reg_n_94,mul_ln17_reg_790_reg_n_95,mul_ln17_reg_790_reg_n_96,mul_ln17_reg_790_reg_n_97,mul_ln17_reg_790_reg_n_98,mul_ln17_reg_790_reg_n_99,mul_ln17_reg_790_reg_n_100,mul_ln17_reg_790_reg_n_101,mul_ln17_reg_790_reg_n_102,mul_ln17_reg_790_reg_n_103,mul_ln17_reg_790_reg_n_104,mul_ln17_reg_790_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln17_reg_790_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln17_reg_790_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U1_n_18,mul_32s_32s_32_1_1_U1_n_19,mul_32s_32s_32_1_1_U1_n_20,mul_32s_32s_32_1_1_U1_n_21,mul_32s_32s_32_1_1_U1_n_22,mul_32s_32s_32_1_1_U1_n_23,mul_32s_32s_32_1_1_U1_n_24,mul_32s_32s_32_1_1_U1_n_25,mul_32s_32s_32_1_1_U1_n_26,mul_32s_32s_32_1_1_U1_n_27,mul_32s_32s_32_1_1_U1_n_28,mul_32s_32s_32_1_1_U1_n_29,mul_32s_32s_32_1_1_U1_n_30,mul_32s_32s_32_1_1_U1_n_31,mul_32s_32s_32_1_1_U1_n_32,mul_32s_32s_32_1_1_U1_n_33,mul_32s_32s_32_1_1_U1_n_34,mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65}),
        .PCOUT(NLW_mul_ln17_reg_790_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln17_reg_790_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln17_reg_790_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln17_reg_790_reg[0]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_17),
        .Q(\mul_ln17_reg_790_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[10]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_7),
        .Q(\mul_ln17_reg_790_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[11]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_6),
        .Q(\mul_ln17_reg_790_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[12]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_5),
        .Q(\mul_ln17_reg_790_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[13]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_4),
        .Q(\mul_ln17_reg_790_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[14]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_3),
        .Q(\mul_ln17_reg_790_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[15]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_2),
        .Q(\mul_ln17_reg_790_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[16]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_1),
        .Q(\mul_ln17_reg_790_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[1]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_16),
        .Q(\mul_ln17_reg_790_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[2]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_15),
        .Q(\mul_ln17_reg_790_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[3]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_14),
        .Q(\mul_ln17_reg_790_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[4]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_13),
        .Q(\mul_ln17_reg_790_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[5]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_12),
        .Q(\mul_ln17_reg_790_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[6]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_11),
        .Q(\mul_ln17_reg_790_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[7]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_10),
        .Q(\mul_ln17_reg_790_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[8]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_9),
        .Q(\mul_ln17_reg_790_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln17_reg_790_reg[9]__0 
       (.C(ap_clk),
        .CE(mul_ln17_1_reg_7950),
        .D(mul_32s_32s_32_1_1_U1_n_8),
        .Q(\mul_ln17_reg_790_reg[9]__0_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0FF04C80)) 
    \orig_address0[2]_INST_0_i_2 
       (.I0(add_ln17_6_reg_783[0]),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(add_ln17_6_reg_783[1]),
        .I3(add_ln17_6_reg_783[2]),
        .I4(ap_CS_fsm_pp0_stage4),
        .O(\orig_address0[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \orig_address0[3]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[1]),
        .I1(add_ln17_3_reg_776[2]),
        .O(\orig_address0[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \orig_address0[3]_INST_0_i_2 
       (.I0(ap_CS_fsm_pp0_stage4),
        .I1(ap_CS_fsm_pp0_stage3),
        .O(\orig_address0[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0EE04AE0E0E0E0E0)) 
    \orig_address0[3]_INST_0_i_4 
       (.I0(ap_CS_fsm_pp0_stage4),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(add_ln17_6_reg_783[3]),
        .I3(add_ln17_6_reg_783[2]),
        .I4(add_ln17_6_reg_783[0]),
        .I5(add_ln17_6_reg_783[1]),
        .O(\orig_address0[3]_INST_0_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \orig_address0[4]_INST_0_i_2 
       (.I0(add_ln17_6_reg_783[2]),
        .I1(add_ln17_6_reg_783[1]),
        .I2(add_ln17_6_reg_783[3]),
        .O(\orig_address0[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \orig_address0[4]_INST_0_i_3 
       (.I0(add_ln17_6_reg_783[1]),
        .I1(add_ln17_6_reg_783[0]),
        .I2(add_ln17_6_reg_783[2]),
        .I3(add_ln17_6_reg_783[3]),
        .O(\orig_address0[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h95550000FFFFFFFF)) 
    \orig_address0[4]_INST_0_i_5 
       (.I0(add_ln17_3_reg_776[4]),
        .I1(add_ln17_3_reg_776[1]),
        .I2(add_ln17_3_reg_776[2]),
        .I3(add_ln17_3_reg_776[3]),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(\orig_address0[3]_INST_0_i_2_n_0 ),
        .O(\orig_address0[4]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h95550000FFFFFFFF)) 
    \orig_address0[5]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[5]),
        .I1(add_ln17_3_reg_776[4]),
        .I2(add_ln17_3_reg_776[3]),
        .I3(\orig_address0[3]_INST_0_i_1_n_0 ),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(\orig_address0[3]_INST_0_i_2_n_0 ),
        .O(\orig_address0[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \orig_address0[5]_INST_0_i_4 
       (.I0(add_ln17_3_reg_776[5]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage1),
        .O(\orig_address0[5]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h663C6600)) 
    \orig_address0[5]_INST_0_i_5 
       (.I0(\orig_address0[5]_INST_0_i_7_n_0 ),
        .I1(add_ln17_6_reg_783[5]),
        .I2(\orig_address0[5]_INST_0_i_8_n_0 ),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(ap_CS_fsm_pp0_stage3),
        .O(\orig_address0[5]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \orig_address0[5]_INST_0_i_7 
       (.I0(add_ln17_6_reg_783[3]),
        .I1(add_ln17_6_reg_783[1]),
        .I2(add_ln17_6_reg_783[2]),
        .I3(add_ln17_6_reg_783[4]),
        .O(\orig_address0[5]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \orig_address0[5]_INST_0_i_8 
       (.I0(add_ln17_6_reg_783[3]),
        .I1(add_ln17_6_reg_783[2]),
        .I2(add_ln17_6_reg_783[0]),
        .I3(add_ln17_6_reg_783[1]),
        .I4(add_ln17_6_reg_783[4]),
        .O(\orig_address0[5]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF90)) 
    \orig_address0[6]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[6]),
        .I1(\orig_address0[6]_INST_0_i_6_n_0 ),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_CS_fsm_pp0_stage3),
        .I4(ap_CS_fsm_pp0_stage4),
        .O(\orig_address0[6]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \orig_address0[6]_INST_0_i_10 
       (.I0(add_ln17_6_reg_783[4]),
        .I1(add_ln17_6_reg_783[1]),
        .I2(add_ln17_6_reg_783[0]),
        .I3(add_ln17_6_reg_783[2]),
        .I4(add_ln17_6_reg_783[3]),
        .I5(add_ln17_6_reg_783[5]),
        .O(\orig_address0[6]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \orig_address0[6]_INST_0_i_4 
       (.I0(add_ln17_3_reg_776[6]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage1),
        .O(\orig_address0[6]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00D87288)) 
    \orig_address0[6]_INST_0_i_5 
       (.I0(ap_CS_fsm_pp0_stage4),
        .I1(\orig_address0[6]_INST_0_i_9_n_0 ),
        .I2(ap_CS_fsm_pp0_stage3),
        .I3(add_ln17_6_reg_783[6]),
        .I4(\orig_address0[6]_INST_0_i_10_n_0 ),
        .O(\orig_address0[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \orig_address0[6]_INST_0_i_6 
       (.I0(add_ln17_3_reg_776[5]),
        .I1(add_ln17_3_reg_776[4]),
        .I2(add_ln17_3_reg_776[3]),
        .I3(add_ln17_3_reg_776[2]),
        .I4(add_ln17_3_reg_776[1]),
        .O(\orig_address0[6]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \orig_address0[6]_INST_0_i_9 
       (.I0(add_ln17_6_reg_783[4]),
        .I1(add_ln17_6_reg_783[2]),
        .I2(add_ln17_6_reg_783[1]),
        .I3(add_ln17_6_reg_783[3]),
        .I4(add_ln17_6_reg_783[5]),
        .O(\orig_address0[6]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hEFEEFEEE)) 
    \orig_address0[7]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage4),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(\orig_address0[8]_INST_0_i_4_n_0 ),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(add_ln17_3_reg_776[7]),
        .O(\orig_address0[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \orig_address0[7]_INST_0_i_4 
       (.I0(add_ln17_3_reg_776[7]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage1),
        .O(\orig_address0[7]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3C7F3C003C703C00)) 
    \orig_address0[7]_INST_0_i_5 
       (.I0(add_ln17_6_reg_783[0]),
        .I1(\orig_address0[8]_INST_0_i_5_n_0 ),
        .I2(add_ln17_6_reg_783[7]),
        .I3(ap_CS_fsm_pp0_stage4),
        .I4(ap_CS_fsm_pp0_stage3),
        .I5(\orig_address0[7]_INST_0_i_8_n_0 ),
        .O(\orig_address0[7]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \orig_address0[7]_INST_0_i_8 
       (.I0(\orig_address0[6]_INST_0_i_10_n_0 ),
        .I1(add_ln17_6_reg_783[6]),
        .O(\orig_address0[7]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6500)) 
    \orig_address0[8]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[8]),
        .I1(\orig_address0[8]_INST_0_i_4_n_0 ),
        .I2(add_ln17_3_reg_776[7]),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(ap_CS_fsm_pp0_stage3),
        .I5(ap_CS_fsm_pp0_stage4),
        .O(\orig_address0[8]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEC)) 
    \orig_address0[8]_INST_0_i_2 
       (.I0(add_ln17_3_reg_776[8]),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(ap_CS_fsm_pp0_stage1),
        .O(\orig_address0[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5AAA6AAA5AAA0000)) 
    \orig_address0[8]_INST_0_i_3 
       (.I0(add_ln17_6_reg_783[8]),
        .I1(add_ln17_6_reg_783[0]),
        .I2(\orig_address0[8]_INST_0_i_5_n_0 ),
        .I3(add_ln17_6_reg_783[7]),
        .I4(ap_CS_fsm_pp0_stage4),
        .I5(ap_CS_fsm_pp0_stage3),
        .O(\orig_address0[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \orig_address0[8]_INST_0_i_4 
       (.I0(add_ln17_3_reg_776[6]),
        .I1(add_ln17_3_reg_776[1]),
        .I2(add_ln17_3_reg_776[2]),
        .I3(add_ln17_3_reg_776[3]),
        .I4(add_ln17_3_reg_776[4]),
        .I5(add_ln17_3_reg_776[5]),
        .O(\orig_address0[8]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \orig_address0[8]_INST_0_i_5 
       (.I0(add_ln17_6_reg_783[5]),
        .I1(add_ln17_6_reg_783[3]),
        .I2(add_ln17_6_reg_783[1]),
        .I3(add_ln17_6_reg_783[2]),
        .I4(add_ln17_6_reg_783[4]),
        .I5(add_ln17_6_reg_783[6]),
        .O(\orig_address0[8]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hC3332222FFFFFFFF)) 
    \orig_address0[9]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(add_ln17_3_reg_776[9]),
        .I2(add_ln17_3_reg_776[8]),
        .I3(\orig_address0[9]_INST_0_i_7_n_0 ),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(\orig_address0[3]_INST_0_i_2_n_0 ),
        .O(\orig_address0[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \orig_address0[9]_INST_0_i_10 
       (.I0(c_fu_84[0]),
        .I1(c_fu_84[1]),
        .I2(c_fu_84[4]),
        .I3(c_fu_84[3]),
        .I4(c_fu_84[2]),
        .O(\orig_address0[9]_INST_0_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \orig_address0[9]_INST_0_i_14 
       (.I0(\orig_address0[8]_INST_0_i_5_n_0 ),
        .I1(add_ln17_6_reg_783[7]),
        .O(\orig_address0[9]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \orig_address0[9]_INST_0_i_5 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_CS_fsm_pp0_stage2),
        .O(\orig_address0[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h777770F088888000)) 
    \orig_address0[9]_INST_0_i_6 
       (.I0(add_ln17_6_reg_783[8]),
        .I1(\orig_address0[9]_INST_0_i_14_n_0 ),
        .I2(ap_CS_fsm_pp0_stage3),
        .I3(add_ln17_6_reg_783[0]),
        .I4(ap_CS_fsm_pp0_stage4),
        .I5(add_ln17_6_reg_783[9]),
        .O(\orig_address0[9]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \orig_address0[9]_INST_0_i_7 
       (.I0(add_ln17_3_reg_776[7]),
        .I1(add_ln17_3_reg_776[5]),
        .I2(add_ln17_3_reg_776[4]),
        .I3(add_ln17_3_reg_776[3]),
        .I4(\orig_address0[3]_INST_0_i_1_n_0 ),
        .I5(add_ln17_3_reg_776[6]),
        .O(\orig_address0[9]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \orig_address1[2]_INST_0_i_2 
       (.I0(add_ln17_3_reg_776[0]),
        .I1(add_ln17_3_reg_776[1]),
        .O(\orig_address1[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \orig_address1[3]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[0]),
        .I1(add_ln17_3_reg_776[2]),
        .I2(add_ln17_3_reg_776[1]),
        .O(\orig_address1[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \orig_address1[4]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(add_ln17_3_reg_776[4]),
        .I2(add_ln17_3_reg_776[3]),
        .I3(add_ln17_3_reg_776[1]),
        .I4(add_ln17_3_reg_776[2]),
        .I5(add_ln17_3_reg_776[0]),
        .O(\orig_address1[4]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0222222220000000)) 
    \orig_address1[4]_INST_0_i_2 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_CS_fsm_pp0_stage2),
        .I2(add_ln17_reg_756[2]),
        .I3(add_ln17_reg_756[1]),
        .I4(add_ln17_reg_756[3]),
        .I5(add_ln17_reg_756[4]),
        .O(\orig_address1[4]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFF60)) 
    \orig_address1[5]_INST_0_i_1 
       (.I0(\orig_address1[5]_INST_0_i_3_n_0 ),
        .I1(add_ln17_3_reg_776[5]),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(\orig_address1[5]_INST_0_i_4_n_0 ),
        .I4(ap_CS_fsm_pp0_stage3),
        .O(\orig_address1[5]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \orig_address1[5]_INST_0_i_3 
       (.I0(add_ln17_3_reg_776[0]),
        .I1(add_ln17_3_reg_776[2]),
        .I2(add_ln17_3_reg_776[1]),
        .I3(add_ln17_3_reg_776[3]),
        .I4(add_ln17_3_reg_776[4]),
        .O(\orig_address1[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2AAAAAAA80000000)) 
    \orig_address1[5]_INST_0_i_4 
       (.I0(\orig_address1[5]_INST_0_i_6_n_0 ),
        .I1(add_ln17_reg_756[4]),
        .I2(add_ln17_reg_756[3]),
        .I3(add_ln17_reg_756[1]),
        .I4(add_ln17_reg_756[2]),
        .I5(add_ln17_reg_756[5]),
        .O(\orig_address1[5]_INST_0_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \orig_address1[5]_INST_0_i_6 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_CS_fsm_pp0_stage2),
        .O(\orig_address1[5]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hFF60)) 
    \orig_address1[6]_INST_0_i_1 
       (.I0(\orig_address1[9]_INST_0_i_4_n_0 ),
        .I1(add_ln17_3_reg_776[6]),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(\orig_address1[6]_INST_0_i_3_n_0 ),
        .O(\orig_address1[6]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hAABEAAAA)) 
    \orig_address1[6]_INST_0_i_3 
       (.I0(ap_CS_fsm_pp0_stage3),
        .I1(add_ln17_reg_756[6]),
        .I2(\orig_address1[6]_INST_0_i_4_n_0 ),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(ap_CS_fsm_pp0_stage1),
        .O(\orig_address1[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \orig_address1[6]_INST_0_i_4 
       (.I0(add_ln17_reg_756[5]),
        .I1(add_ln17_reg_756[2]),
        .I2(add_ln17_reg_756[1]),
        .I3(add_ln17_reg_756[3]),
        .I4(add_ln17_reg_756[4]),
        .O(\orig_address1[6]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7800)) 
    \orig_address1[7]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[6]),
        .I1(\orig_address1[9]_INST_0_i_4_n_0 ),
        .I2(add_ln17_3_reg_776[7]),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(\orig_address1[7]_INST_0_i_3_n_0 ),
        .O(\orig_address1[7]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAABEAAAA)) 
    \orig_address1[7]_INST_0_i_3 
       (.I0(ap_CS_fsm_pp0_stage3),
        .I1(add_ln17_reg_756[7]),
        .I2(\orig_address1[9]_INST_0_i_5_n_0 ),
        .I3(ap_CS_fsm_pp0_stage2),
        .I4(ap_CS_fsm_pp0_stage1),
        .O(\orig_address1[7]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6AAA0000)) 
    \orig_address1[8]_INST_0_i_1 
       (.I0(add_ln17_3_reg_776[8]),
        .I1(add_ln17_3_reg_776[7]),
        .I2(\orig_address1[9]_INST_0_i_4_n_0 ),
        .I3(add_ln17_3_reg_776[6]),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(\orig_address1[8]_INST_0_i_3_n_0 ),
        .O(\orig_address1[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABEEEAAAAAAAA)) 
    \orig_address1[8]_INST_0_i_3 
       (.I0(ap_CS_fsm_pp0_stage3),
        .I1(add_ln17_reg_756[8]),
        .I2(\orig_address1[9]_INST_0_i_5_n_0 ),
        .I3(add_ln17_reg_756[7]),
        .I4(ap_CS_fsm_pp0_stage2),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(\orig_address1[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \orig_address1[9]_INST_0_i_1 
       (.I0(ap_CS_fsm_pp0_stage2),
        .I1(add_ln17_3_reg_776[9]),
        .I2(add_ln17_3_reg_776[8]),
        .I3(add_ln17_3_reg_776[7]),
        .I4(\orig_address1[9]_INST_0_i_4_n_0 ),
        .I5(add_ln17_3_reg_776[6]),
        .O(\orig_address1[9]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAA0000)) 
    \orig_address1[9]_INST_0_i_2 
       (.I0(add_ln17_reg_756[9]),
        .I1(add_ln17_reg_756[7]),
        .I2(\orig_address1[9]_INST_0_i_5_n_0 ),
        .I3(add_ln17_reg_756[8]),
        .I4(ap_CS_fsm_pp0_stage1),
        .I5(ap_CS_fsm_pp0_stage2),
        .O(\orig_address1[9]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \orig_address1[9]_INST_0_i_4 
       (.I0(add_ln17_3_reg_776[5]),
        .I1(add_ln17_3_reg_776[4]),
        .I2(add_ln17_3_reg_776[3]),
        .I3(add_ln17_3_reg_776[1]),
        .I4(add_ln17_3_reg_776[2]),
        .I5(add_ln17_3_reg_776[0]),
        .O(\orig_address1[9]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \orig_address1[9]_INST_0_i_5 
       (.I0(add_ln17_reg_756[6]),
        .I1(add_ln17_reg_756[4]),
        .I2(add_ln17_reg_756[3]),
        .I3(add_ln17_reg_756[1]),
        .I4(add_ln17_reg_756[2]),
        .I5(add_ln17_reg_756[5]),
        .O(\orig_address1[9]_INST_0_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCECFC30302030)) 
    orig_ce0_INST_0
       (.I0(ap_CS_fsm_pp0_stage4),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(\orig_address0[9]_INST_0_i_5_n_0 ),
        .I4(ap_CS_fsm_pp0_stage3),
        .I5(\empty_6_reg_737_reg[1]_0 ),
        .O(orig_ce0));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFC0000)) 
    orig_ce1_INST_0
       (.I0(\empty_6_reg_737_reg[1]_0 ),
        .I1(ap_CS_fsm_pp0_stage3),
        .I2(ap_CS_fsm_pp0_stage2),
        .I3(ap_CS_fsm_pp0_stage1),
        .I4(ap_enable_reg_pp0_iter0_reg),
        .I5(ap_CS_fsm_pp0_stage0),
        .O(orig_ce1));
  FDRE \r_1_reg_732_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(ap_sig_allocacmp_r_1[0]),
        .Q(r_1_reg_732[0]),
        .R(1'b0));
  FDRE \r_1_reg_732_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(ap_sig_allocacmp_r_1[1]),
        .Q(r_1_reg_732[1]),
        .R(1'b0));
  FDRE \r_1_reg_732_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(ap_sig_allocacmp_r_1[2]),
        .Q(r_1_reg_732[2]),
        .R(1'b0));
  FDRE \r_1_reg_732_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(ap_sig_allocacmp_r_1[3]),
        .Q(r_1_reg_732[3]),
        .R(1'b0));
  FDRE \r_1_reg_732_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(ap_sig_allocacmp_r_1[4]),
        .Q(r_1_reg_732[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_fu_88[0]_i_1 
       (.I0(empty_6_reg_737[0]),
        .I1(icmp_ln10_reg_746),
        .I2(r_1_reg_732[0]),
        .O(select_ln8_4_fu_568_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_fu_88[1]_i_1 
       (.I0(empty_6_reg_737[1]),
        .I1(icmp_ln10_reg_746),
        .I2(r_1_reg_732[1]),
        .O(select_ln8_4_fu_568_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_fu_88[2]_i_1 
       (.I0(empty_6_reg_737[2]),
        .I1(icmp_ln10_reg_746),
        .I2(r_1_reg_732[2]),
        .O(select_ln8_4_fu_568_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_fu_88[3]_i_1 
       (.I0(empty_6_reg_737[3]),
        .I1(icmp_ln10_reg_746),
        .I2(r_1_reg_732[3]),
        .O(select_ln8_4_fu_568_p3[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \r_fu_88[4]_i_1 
       (.I0(empty_6_reg_737[4]),
        .I1(icmp_ln10_reg_746),
        .I2(r_1_reg_732[4]),
        .O(select_ln8_4_fu_568_p3[4]));
  FDRE \r_fu_88_reg[0] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(select_ln8_4_fu_568_p3[0]),
        .Q(r_fu_88[0]),
        .R(c_fu_8401_out));
  FDRE \r_fu_88_reg[1] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(select_ln8_4_fu_568_p3[1]),
        .Q(r_fu_88[1]),
        .R(c_fu_8401_out));
  FDRE \r_fu_88_reg[2] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(select_ln8_4_fu_568_p3[2]),
        .Q(r_fu_88[2]),
        .R(c_fu_8401_out));
  FDRE \r_fu_88_reg[3] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(select_ln8_4_fu_568_p3[3]),
        .Q(r_fu_88[3]),
        .R(c_fu_8401_out));
  FDRE \r_fu_88_reg[4] 
       (.C(ap_clk),
        .CE(c_fu_840),
        .D(select_ln8_4_fu_568_p3[4]),
        .Q(r_fu_88[4]),
        .R(c_fu_8401_out));
  FDRE \select_ln8_reg_751_reg[1] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(select_ln8_fu_383_p3[1]),
        .Q(select_ln8_reg_751[1]),
        .R(1'b0));
  FDRE \select_ln8_reg_751_reg[2] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(select_ln8_fu_383_p3[2]),
        .Q(select_ln8_reg_751[2]),
        .R(1'b0));
  FDRE \select_ln8_reg_751_reg[3] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(select_ln8_fu_383_p3[3]),
        .Q(select_ln8_reg_751[3]),
        .R(1'b0));
  FDRE \select_ln8_reg_751_reg[4] 
       (.C(ap_clk),
        .CE(add_ln17_3_reg_7760),
        .D(flow_control_loop_pipe_sequential_init_U_n_10),
        .Q(select_ln8_reg_751[4]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    sol_we0_INST_0
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(ap_enable_reg_pp0_iter1),
        .O(E));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_3_reg_776[0]),
        .Q(sol_address0[0]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[1]),
        .Q(sol_address0[1]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[2]),
        .Q(sol_address0[2]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[3]),
        .Q(sol_address0[3]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[4]),
        .Q(sol_address0[4]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[5]),
        .Q(sol_address0[5]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[6]),
        .Q(sol_address0[6]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[7]),
        .Q(sol_address0[7]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[8]),
        .Q(sol_address0[8]),
        .R(1'b0));
  FDRE \zext_ln17_4_reg_761_pp0_iter1_reg_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage0),
        .D(add_ln17_reg_756[9]),
        .Q(sol_address0[9]),
        .R(1'b0));
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
