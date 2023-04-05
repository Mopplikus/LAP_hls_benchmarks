// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Mar 30 01:37:18 2023
// Host        : Frostspark running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Elija/AppData/Roaming/Xilinx/Vitis/gaussian/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_sim_netlist.v
// Design      : bd_0_hls_inst_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xck24-ubva530-2LV-c
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,gaussian,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "gaussian,Vivado 2022.2" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module bd_0_hls_inst_0
   (c_ce0,
    A_ce0,
    A_we0,
    A_ce1,
    ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    c_address0,
    c_q0,
    A_address0,
    A_d0,
    A_q0,
    A_address1,
    A_q1);
  output c_ce0;
  output A_ce0;
  output A_we0;
  output A_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 200000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *) input ap_start;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *) output ap_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *) output ap_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *) output ap_ready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_address0, LAYERED_METADATA undef" *) output [4:0]c_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 c_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME c_q0, LAYERED_METADATA undef" *) input [31:0]c_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_address0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_address0, LAYERED_METADATA undef" *) output [8:0]A_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_d0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_d0, LAYERED_METADATA undef" *) output [31:0]A_d0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_q0, LAYERED_METADATA undef" *) input [31:0]A_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_address1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_address1, LAYERED_METADATA undef" *) output [8:0]A_address1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 A_q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME A_q1, LAYERED_METADATA undef" *) input [31:0]A_q1;

  wire [8:0]A_address0;
  wire [8:0]A_address1;
  wire A_ce0;
  wire A_ce1;
  wire [31:0]A_d0;
  wire [31:0]A_q0;
  wire [31:0]A_q1;
  wire A_we0;
  wire ap_clk;
  wire ap_done;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [31:0]c_q0;

  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_state1 = "4'b0001" *) 
  (* ap_ST_fsm_state2 = "4'b0010" *) 
  (* ap_ST_fsm_state3 = "4'b0100" *) 
  (* ap_ST_fsm_state4 = "4'b1000" *) 
  bd_0_hls_inst_0_gaussian inst
       (.A_address0(A_address0),
        .A_address1(A_address1),
        .A_ce0(A_ce0),
        .A_ce1(A_ce1),
        .A_d0(A_d0),
        .A_q0(A_q0),
        .A_q1(A_q1),
        .A_we0(A_we0),
        .ap_clk(ap_clk),
        .ap_done(ap_done),
        .ap_idle(ap_idle),
        .ap_ready(ap_ready),
        .ap_rst(ap_rst),
        .ap_start(ap_start),
        .c_address0(c_address0),
        .c_ce0(c_ce0),
        .c_q0(c_q0));
endmodule

(* ORIG_REF_NAME = "gaussian" *) (* ap_ST_fsm_state1 = "4'b0001" *) (* ap_ST_fsm_state2 = "4'b0010" *) 
(* ap_ST_fsm_state3 = "4'b0100" *) (* ap_ST_fsm_state4 = "4'b1000" *) (* hls_module = "yes" *) 
module bd_0_hls_inst_0_gaussian
   (ap_clk,
    ap_rst,
    ap_start,
    ap_done,
    ap_idle,
    ap_ready,
    c_address0,
    c_ce0,
    c_q0,
    A_address0,
    A_ce0,
    A_we0,
    A_d0,
    A_q0,
    A_address1,
    A_ce1,
    A_q1);
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [4:0]c_address0;
  output c_ce0;
  input [31:0]c_q0;
  output [8:0]A_address0;
  output A_ce0;
  output A_we0;
  output [31:0]A_d0;
  input [31:0]A_q0;
  output [8:0]A_address1;
  output A_ce1;
  input [31:0]A_q1;

  wire [8:0]A_address0;
  wire [8:0]A_address1;
  wire A_ce0;
  wire A_ce1;
  wire [31:0]A_d0;
  wire [31:0]A_q0;
  wire [31:0]A_q1;
  wire A_we0;
  wire [8:2]add_ln16;
  wire [4:0]add_ln8_1_fu_141_p2;
  wire [4:1]add_ln8_2_fu_147_p2;
  wire [4:0]add_ln8_fu_135_p2;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state3;
  wire ap_CS_fsm_state4;
  wire [3:0]ap_NS_fsm;
  wire ap_NS_fsm1;
  wire ap_clk;
  wire ap_idle;
  wire ap_ready;
  wire ap_rst;
  wire ap_start;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [31:0]c_q0;
  wire [8:1]dout;
  wire grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg;
  wire grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_n_15;
  wire \idx_fu_54[4]_i_2_n_0 ;
  wire \indvars_iv1_fu_62[0]_i_1_n_0 ;
  wire [0:0]indvars_iv1_fu_62_reg;
  wire [4:1]indvars_iv1_fu_62_reg__0;
  wire [4:0]j_1_reg_214;
  wire [4:0]j_fu_58_reg;
  wire [8:0]mul_ln8_reg_233;
  wire [6:2]p_0_in;
  wire [8:4]tmp_fu_168_p3;

  assign ap_done = ap_ready;
  LUT2 #(
    .INIT(4'h6)) 
    \add_ln16_reg_238[4]_i_1 
       (.I0(tmp_fu_168_p3[4]),
        .I1(tmp_fu_168_p3[6]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \add_ln16_reg_238[5]_i_1 
       (.I0(tmp_fu_168_p3[4]),
        .I1(tmp_fu_168_p3[6]),
        .I2(tmp_fu_168_p3[7]),
        .I3(tmp_fu_168_p3[5]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hE8173FC0)) 
    \add_ln16_reg_238[6]_i_1 
       (.I0(tmp_fu_168_p3[4]),
        .I1(tmp_fu_168_p3[5]),
        .I2(tmp_fu_168_p3[7]),
        .I3(tmp_fu_168_p3[8]),
        .I4(tmp_fu_168_p3[6]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h051FF080)) 
    \add_ln16_reg_238[7]_i_1 
       (.I0(tmp_fu_168_p3[5]),
        .I1(tmp_fu_168_p3[4]),
        .I2(tmp_fu_168_p3[6]),
        .I3(tmp_fu_168_p3[8]),
        .I4(tmp_fu_168_p3[7]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h05FFA800)) 
    \add_ln16_reg_238[8]_i_1 
       (.I0(tmp_fu_168_p3[6]),
        .I1(tmp_fu_168_p3[4]),
        .I2(tmp_fu_168_p3[5]),
        .I3(tmp_fu_168_p3[7]),
        .I4(tmp_fu_168_p3[8]),
        .O(p_0_in[6]));
  FDRE \add_ln16_reg_238_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_fu_168_p3[4]),
        .Q(add_ln16[2]),
        .R(1'b0));
  FDRE \add_ln16_reg_238_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(tmp_fu_168_p3[5]),
        .Q(add_ln16[3]),
        .R(1'b0));
  FDRE \add_ln16_reg_238_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(p_0_in[2]),
        .Q(add_ln16[4]),
        .R(1'b0));
  FDRE \add_ln16_reg_238_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(p_0_in[3]),
        .Q(add_ln16[5]),
        .R(1'b0));
  FDRE \add_ln16_reg_238_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(p_0_in[4]),
        .Q(add_ln16[6]),
        .R(1'b0));
  FDRE \add_ln16_reg_238_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(p_0_in[5]),
        .Q(add_ln16[7]),
        .R(1'b0));
  FDRE \add_ln16_reg_238_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_state3),
        .D(p_0_in[6]),
        .Q(add_ln16[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_ready),
        .I1(ap_start),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
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
        .Q(c_ce0),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\idx_fu_54[4]_i_2_n_0 ),
        .Q(ap_CS_fsm_state3),
        .R(ap_rst));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[3]),
        .Q(ap_CS_fsm_state4),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ap_idle_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_idle));
  LUT6 #(
    .INIT(64'h0020000000000000)) 
    ap_ready_INST_0
       (.I0(c_ce0),
        .I1(j_fu_58_reg[3]),
        .I2(j_fu_58_reg[4]),
        .I3(j_fu_58_reg[2]),
        .I4(j_fu_58_reg[1]),
        .I5(j_fu_58_reg[0]),
        .O(ap_ready));
  bd_0_hls_inst_0_gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3 grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79
       (.A_address0(A_address0),
        .\A_address0[8] (add_ln16),
        .A_address1(A_address1[8:1]),
        .A_ce0(A_ce0),
        .A_ce1(A_ce1),
        .A_d0(A_d0),
        .A_q0(A_q0),
        .A_q1(A_q1),
        .D({ap_NS_fsm[3],ap_NS_fsm[1]}),
        .Q({ap_CS_fsm_state4,ap_CS_fsm_state3}),
        .SR(ap_NS_fsm1),
        .\add_ln16_2_reg_327_reg[0]_0 (A_address1[0]),
        .\ap_CS_fsm_reg[0]_0 (A_we0),
        .\ap_CS_fsm_reg[2] (grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_n_15),
        .ap_clk(ap_clk),
        .ap_rst(ap_rst),
        .c_q0(c_q0),
        .grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .\i_fu_68_reg[6]_0 (j_1_reg_214),
        .\icmp_ln8_reg_318_reg[0]_0 (mul_ln8_reg_233));
  FDRE #(
    .INIT(1'b0)) 
    grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_n_15),
        .Q(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .R(ap_rst));
  LUT1 #(
    .INIT(2'h1)) 
    \idx_fu_54[0]_i_1 
       (.I0(c_address0[0]),
        .O(add_ln8_1_fu_141_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \idx_fu_54[1]_i_1 
       (.I0(c_address0[0]),
        .I1(c_address0[1]),
        .O(add_ln8_1_fu_141_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \idx_fu_54[2]_i_1 
       (.I0(c_address0[2]),
        .I1(c_address0[1]),
        .I2(c_address0[0]),
        .O(add_ln8_1_fu_141_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \idx_fu_54[3]_i_1 
       (.I0(c_address0[3]),
        .I1(c_address0[0]),
        .I2(c_address0[1]),
        .I3(c_address0[2]),
        .O(add_ln8_1_fu_141_p2[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \idx_fu_54[4]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_start),
        .O(ap_NS_fsm1));
  LUT6 #(
    .INIT(64'hAA8AAAAAAAAAAAAA)) 
    \idx_fu_54[4]_i_2 
       (.I0(c_ce0),
        .I1(j_fu_58_reg[3]),
        .I2(j_fu_58_reg[4]),
        .I3(j_fu_58_reg[2]),
        .I4(j_fu_58_reg[1]),
        .I5(j_fu_58_reg[0]),
        .O(\idx_fu_54[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \idx_fu_54[4]_i_3 
       (.I0(c_address0[4]),
        .I1(c_address0[2]),
        .I2(c_address0[1]),
        .I3(c_address0[0]),
        .I4(c_address0[3]),
        .O(add_ln8_1_fu_141_p2[4]));
  FDSE \idx_fu_54_reg[0] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_1_fu_141_p2[0]),
        .Q(c_address0[0]),
        .S(ap_NS_fsm1));
  FDRE \idx_fu_54_reg[1] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_1_fu_141_p2[1]),
        .Q(c_address0[1]),
        .R(ap_NS_fsm1));
  FDRE \idx_fu_54_reg[2] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_1_fu_141_p2[2]),
        .Q(c_address0[2]),
        .R(ap_NS_fsm1));
  FDRE \idx_fu_54_reg[3] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_1_fu_141_p2[3]),
        .Q(c_address0[3]),
        .R(ap_NS_fsm1));
  FDRE \idx_fu_54_reg[4] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_1_fu_141_p2[4]),
        .Q(c_address0[4]),
        .R(ap_NS_fsm1));
  FDRE \idx_load_reg_222_reg[0] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(c_address0[0]),
        .Q(tmp_fu_168_p3[4]),
        .R(1'b0));
  FDRE \idx_load_reg_222_reg[1] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(c_address0[1]),
        .Q(tmp_fu_168_p3[5]),
        .R(1'b0));
  FDRE \idx_load_reg_222_reg[2] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(c_address0[2]),
        .Q(tmp_fu_168_p3[6]),
        .R(1'b0));
  FDRE \idx_load_reg_222_reg[3] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(c_address0[3]),
        .Q(tmp_fu_168_p3[7]),
        .R(1'b0));
  FDRE \idx_load_reg_222_reg[4] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(c_address0[4]),
        .Q(tmp_fu_168_p3[8]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \indvars_iv1_fu_62[0]_i_1 
       (.I0(indvars_iv1_fu_62_reg),
        .O(\indvars_iv1_fu_62[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \indvars_iv1_fu_62[1]_i_1 
       (.I0(indvars_iv1_fu_62_reg),
        .I1(indvars_iv1_fu_62_reg__0[1]),
        .O(add_ln8_2_fu_147_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \indvars_iv1_fu_62[2]_i_1 
       (.I0(indvars_iv1_fu_62_reg__0[2]),
        .I1(indvars_iv1_fu_62_reg),
        .I2(indvars_iv1_fu_62_reg__0[1]),
        .O(add_ln8_2_fu_147_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \indvars_iv1_fu_62[3]_i_1 
       (.I0(indvars_iv1_fu_62_reg__0[3]),
        .I1(indvars_iv1_fu_62_reg__0[2]),
        .I2(indvars_iv1_fu_62_reg__0[1]),
        .I3(indvars_iv1_fu_62_reg),
        .O(add_ln8_2_fu_147_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \indvars_iv1_fu_62[4]_i_1 
       (.I0(indvars_iv1_fu_62_reg__0[4]),
        .I1(indvars_iv1_fu_62_reg),
        .I2(indvars_iv1_fu_62_reg__0[2]),
        .I3(indvars_iv1_fu_62_reg__0[1]),
        .I4(indvars_iv1_fu_62_reg__0[3]),
        .O(add_ln8_2_fu_147_p2[4]));
  FDSE \indvars_iv1_fu_62_reg[0] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(\indvars_iv1_fu_62[0]_i_1_n_0 ),
        .Q(indvars_iv1_fu_62_reg),
        .S(ap_NS_fsm1));
  FDRE \indvars_iv1_fu_62_reg[1] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_2_fu_147_p2[1]),
        .Q(indvars_iv1_fu_62_reg__0[1]),
        .R(ap_NS_fsm1));
  FDRE \indvars_iv1_fu_62_reg[2] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_2_fu_147_p2[2]),
        .Q(indvars_iv1_fu_62_reg__0[2]),
        .R(ap_NS_fsm1));
  FDRE \indvars_iv1_fu_62_reg[3] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_2_fu_147_p2[3]),
        .Q(indvars_iv1_fu_62_reg__0[3]),
        .R(ap_NS_fsm1));
  FDSE \indvars_iv1_fu_62_reg[4] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_2_fu_147_p2[4]),
        .Q(indvars_iv1_fu_62_reg__0[4]),
        .S(ap_NS_fsm1));
  FDRE \j_1_reg_214_reg[0] 
       (.C(ap_clk),
        .CE(c_ce0),
        .D(j_fu_58_reg[0]),
        .Q(j_1_reg_214[0]),
        .R(1'b0));
  FDRE \j_1_reg_214_reg[1] 
       (.C(ap_clk),
        .CE(c_ce0),
        .D(j_fu_58_reg[1]),
        .Q(j_1_reg_214[1]),
        .R(1'b0));
  FDRE \j_1_reg_214_reg[2] 
       (.C(ap_clk),
        .CE(c_ce0),
        .D(j_fu_58_reg[2]),
        .Q(j_1_reg_214[2]),
        .R(1'b0));
  FDRE \j_1_reg_214_reg[3] 
       (.C(ap_clk),
        .CE(c_ce0),
        .D(j_fu_58_reg[3]),
        .Q(j_1_reg_214[3]),
        .R(1'b0));
  FDRE \j_1_reg_214_reg[4] 
       (.C(ap_clk),
        .CE(c_ce0),
        .D(j_fu_58_reg[4]),
        .Q(j_1_reg_214[4]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \j_fu_58[0]_i_1 
       (.I0(j_fu_58_reg[0]),
        .O(add_ln8_fu_135_p2[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \j_fu_58[1]_i_1 
       (.I0(j_fu_58_reg[0]),
        .I1(j_fu_58_reg[1]),
        .O(add_ln8_fu_135_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \j_fu_58[2]_i_1 
       (.I0(j_fu_58_reg[2]),
        .I1(j_fu_58_reg[1]),
        .I2(j_fu_58_reg[0]),
        .O(add_ln8_fu_135_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \j_fu_58[3]_i_1 
       (.I0(j_fu_58_reg[3]),
        .I1(j_fu_58_reg[2]),
        .I2(j_fu_58_reg[0]),
        .I3(j_fu_58_reg[1]),
        .O(add_ln8_fu_135_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \j_fu_58[4]_i_1 
       (.I0(j_fu_58_reg[4]),
        .I1(j_fu_58_reg[1]),
        .I2(j_fu_58_reg[0]),
        .I3(j_fu_58_reg[2]),
        .I4(j_fu_58_reg[3]),
        .O(add_ln8_fu_135_p2[4]));
  FDRE \j_fu_58_reg[0] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_fu_135_p2[0]),
        .Q(j_fu_58_reg[0]),
        .R(ap_NS_fsm1));
  FDSE \j_fu_58_reg[1] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_fu_135_p2[1]),
        .Q(j_fu_58_reg[1]),
        .S(ap_NS_fsm1));
  FDRE \j_fu_58_reg[2] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_fu_135_p2[2]),
        .Q(j_fu_58_reg[2]),
        .R(ap_NS_fsm1));
  FDRE \j_fu_58_reg[3] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_fu_135_p2[3]),
        .Q(j_fu_58_reg[3]),
        .R(ap_NS_fsm1));
  FDRE \j_fu_58_reg[4] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(add_ln8_fu_135_p2[4]),
        .Q(j_fu_58_reg[4]),
        .R(ap_NS_fsm1));
  bd_0_hls_inst_0_gaussian_mul_5ns_6ns_9_1_1 mul_5ns_6ns_9_1_1_U8
       (.D(dout[8:3]),
        .Q({indvars_iv1_fu_62_reg__0,indvars_iv1_fu_62_reg}));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mul_ln8_reg_233[1]_i_1 
       (.I0(indvars_iv1_fu_62_reg__0[1]),
        .I1(indvars_iv1_fu_62_reg),
        .O(dout[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hC6)) 
    \mul_ln8_reg_233[2]_i_1 
       (.I0(indvars_iv1_fu_62_reg__0[1]),
        .I1(indvars_iv1_fu_62_reg__0[2]),
        .I2(indvars_iv1_fu_62_reg),
        .O(dout[2]));
  FDRE \mul_ln8_reg_233_reg[0] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(indvars_iv1_fu_62_reg),
        .Q(mul_ln8_reg_233[0]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[1] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[1]),
        .Q(mul_ln8_reg_233[1]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[2] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[2]),
        .Q(mul_ln8_reg_233[2]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[3] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[3]),
        .Q(mul_ln8_reg_233[3]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[4] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[4]),
        .Q(mul_ln8_reg_233[4]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[5] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[5]),
        .Q(mul_ln8_reg_233[5]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[6] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[6]),
        .Q(mul_ln8_reg_233[6]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[7] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[7]),
        .Q(mul_ln8_reg_233[7]),
        .R(1'b0));
  FDRE \mul_ln8_reg_233_reg[8] 
       (.C(ap_clk),
        .CE(\idx_fu_54[4]_i_2_n_0 ),
        .D(dout[8]),
        .Q(mul_ln8_reg_233[8]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gaussian_flow_control_loop_pipe_sequential_init" *) 
module bd_0_hls_inst_0_gaussian_flow_control_loop_pipe_sequential_init
   (O,
    D,
    ap_loop_init_int_reg_0,
    ap_enable_reg_pp0_iter0_reg_reg,
    ap_rst,
    ap_clk,
    ap_loop_exit_ready_pp0_iter1_reg,
    Q,
    SR,
    grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
    \ap_CS_fsm_reg[3] ,
    \i_fu_68_reg[6] ,
    i_fu_68_reg,
    \i_fu_68_reg[6]_0 ,
    icmp_ln8_fu_152_p2,
    ap_enable_reg_pp0_iter0_reg,
    \i_fu_68_reg[6]_1 );
  output [6:0]O;
  output [1:0]D;
  output [0:0]ap_loop_init_int_reg_0;
  output ap_enable_reg_pp0_iter0_reg_reg;
  input ap_rst;
  input ap_clk;
  input ap_loop_exit_ready_pp0_iter1_reg;
  input [1:0]Q;
  input [0:0]SR;
  input grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg;
  input [1:0]\ap_CS_fsm_reg[3] ;
  input [4:0]\i_fu_68_reg[6] ;
  input [6:0]i_fu_68_reg;
  input \i_fu_68_reg[6]_0 ;
  input icmp_ln8_fu_152_p2;
  input ap_enable_reg_pp0_iter0_reg;
  input [4:0]\i_fu_68_reg[6]_1 ;

  wire [1:0]D;
  wire [6:0]O;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [1:0]\ap_CS_fsm_reg[3] ;
  wire ap_clk;
  wire ap_done_cache;
  wire ap_done_cache_i_1_n_0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter0_reg_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_init_int;
  wire ap_loop_init_int_i_1_n_0;
  wire ap_loop_init_int_i_2_n_0;
  wire [0:0]ap_loop_init_int_reg_0;
  wire ap_rst;
  wire grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg;
  wire \i_fu_68[0]_i_10_n_0 ;
  wire \i_fu_68[0]_i_3_n_0 ;
  wire \i_fu_68[0]_i_4_n_0 ;
  wire \i_fu_68[0]_i_5_n_0 ;
  wire \i_fu_68[0]_i_6_n_0 ;
  wire \i_fu_68[0]_i_7_n_0 ;
  wire \i_fu_68[0]_i_8_n_0 ;
  wire \i_fu_68[0]_i_9_n_0 ;
  wire [6:0]i_fu_68_reg;
  wire \i_fu_68_reg[0]_i_2_n_2 ;
  wire \i_fu_68_reg[0]_i_2_n_3 ;
  wire \i_fu_68_reg[0]_i_2_n_4 ;
  wire \i_fu_68_reg[0]_i_2_n_5 ;
  wire \i_fu_68_reg[0]_i_2_n_6 ;
  wire \i_fu_68_reg[0]_i_2_n_7 ;
  wire [4:0]\i_fu_68_reg[6] ;
  wire \i_fu_68_reg[6]_0 ;
  wire [4:0]\i_fu_68_reg[6]_1 ;
  wire icmp_ln8_fu_152_p2;
  wire [7:6]\NLW_i_fu_68_reg[0]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_i_fu_68_reg[0]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEAFFEAEAAAAAAAAA)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(SR),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(Q[0]),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[3] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hBFAABFBFAAAAAAAA)) 
    \ap_CS_fsm[3]_i_1 
       (.I0(\ap_CS_fsm_reg[3] [0]),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(Q[0]),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I4(ap_done_cache),
        .I5(\ap_CS_fsm_reg[3] [1]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hD5C0)) 
    ap_done_cache_i_1
       (.I0(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I1(ap_loop_exit_ready_pp0_iter1_reg),
        .I2(Q[0]),
        .I3(ap_done_cache),
        .O(ap_done_cache_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_done_cache_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_done_cache_i_1_n_0),
        .Q(ap_done_cache),
        .R(ap_rst));
  LUT5 #(
    .INIT(32'hFFFF88F8)) 
    ap_loop_init_int_i_1
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(Q[0]),
        .I2(ap_loop_init_int),
        .I3(ap_loop_init_int_i_2_n_0),
        .I4(ap_rst),
        .O(ap_loop_init_int_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    ap_loop_init_int_i_2
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(Q[0]),
        .I2(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I3(Q[1]),
        .O(ap_loop_init_int_i_2_n_0));
  FDRE #(
    .INIT(1'b1)) 
    ap_loop_init_int_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_init_int_i_1_n_0),
        .Q(ap_loop_init_int),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00404050004040)) 
    \i_fu_68[0]_i_1 
       (.I0(icmp_ln8_fu_152_p2),
        .I1(ap_enable_reg_pp0_iter0_reg),
        .I2(Q[1]),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I4(Q[0]),
        .I5(ap_loop_init_int),
        .O(ap_enable_reg_pp0_iter0_reg_reg));
  LUT6 #(
    .INIT(64'hF666666606666666)) 
    \i_fu_68[0]_i_10 
       (.I0(\i_fu_68_reg[6]_0 ),
        .I1(i_fu_68_reg[0]),
        .I2(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I3(Q[0]),
        .I4(ap_loop_init_int),
        .I5(\i_fu_68_reg[6] [0]),
        .O(\i_fu_68[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000200)) 
    \i_fu_68[0]_i_3 
       (.I0(\i_fu_68_reg[6]_1 [2]),
        .I1(\i_fu_68_reg[6]_1 [0]),
        .I2(\i_fu_68_reg[6]_1 [1]),
        .I3(\i_fu_68_reg[6]_1 [4]),
        .I4(\i_fu_68_reg[6]_1 [3]),
        .I5(ap_loop_init_int_reg_0),
        .O(\i_fu_68[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \i_fu_68[0]_i_4 
       (.I0(i_fu_68_reg[6]),
        .I1(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_68[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    \i_fu_68[0]_i_5 
       (.I0(i_fu_68_reg[5]),
        .I1(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I2(Q[0]),
        .I3(ap_loop_init_int),
        .O(\i_fu_68[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \i_fu_68[0]_i_6 
       (.I0(\i_fu_68_reg[6] [4]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I4(i_fu_68_reg[4]),
        .O(\i_fu_68[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \i_fu_68[0]_i_7 
       (.I0(\i_fu_68_reg[6] [3]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I4(i_fu_68_reg[3]),
        .O(\i_fu_68[0]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \i_fu_68[0]_i_8 
       (.I0(\i_fu_68_reg[6] [2]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I4(i_fu_68_reg[2]),
        .O(\i_fu_68[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \i_fu_68[0]_i_9 
       (.I0(\i_fu_68_reg[6] [1]),
        .I1(ap_loop_init_int),
        .I2(Q[0]),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I4(i_fu_68_reg[1]),
        .O(\i_fu_68[0]_i_9_n_0 ));
  CARRY8 \i_fu_68_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\NLW_i_fu_68_reg[0]_i_2_CO_UNCONNECTED [7:6],\i_fu_68_reg[0]_i_2_n_2 ,\i_fu_68_reg[0]_i_2_n_3 ,\i_fu_68_reg[0]_i_2_n_4 ,\i_fu_68_reg[0]_i_2_n_5 ,\i_fu_68_reg[0]_i_2_n_6 ,\i_fu_68_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\i_fu_68[0]_i_3_n_0 }),
        .O({\NLW_i_fu_68_reg[0]_i_2_O_UNCONNECTED [7],O}),
        .S({1'b0,\i_fu_68[0]_i_4_n_0 ,\i_fu_68[0]_i_5_n_0 ,\i_fu_68[0]_i_6_n_0 ,\i_fu_68[0]_i_7_n_0 ,\i_fu_68[0]_i_8_n_0 ,\i_fu_68[0]_i_9_n_0 ,\i_fu_68[0]_i_10_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \k_fu_64[4]_i_1 
       (.I0(ap_loop_init_int),
        .I1(Q[0]),
        .I2(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .O(ap_loop_init_int_reg_0));
endmodule

(* ORIG_REF_NAME = "gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3" *) 
module bd_0_hls_inst_0_gaussian_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3
   (\add_ln16_2_reg_327_reg[0]_0 ,
    A_ce1,
    D,
    A_ce0,
    A_address0,
    \ap_CS_fsm_reg[0]_0 ,
    \ap_CS_fsm_reg[2] ,
    A_address1,
    A_d0,
    ap_clk,
    ap_rst,
    Q,
    c_q0,
    SR,
    grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg,
    \icmp_ln8_reg_318_reg[0]_0 ,
    \A_address0[8] ,
    \i_fu_68_reg[6]_0 ,
    A_q1,
    A_q0);
  output \add_ln16_2_reg_327_reg[0]_0 ;
  output A_ce1;
  output [1:0]D;
  output A_ce0;
  output [8:0]A_address0;
  output \ap_CS_fsm_reg[0]_0 ;
  output \ap_CS_fsm_reg[2] ;
  output [7:0]A_address1;
  output [31:0]A_d0;
  input ap_clk;
  input ap_rst;
  input [1:0]Q;
  input [31:0]c_q0;
  input [0:0]SR;
  input grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg;
  input [8:0]\icmp_ln8_reg_318_reg[0]_0 ;
  input [6:0]\A_address0[8] ;
  input [4:0]\i_fu_68_reg[6]_0 ;
  input [31:0]A_q1;
  input [31:0]A_q0;

  wire [8:0]A_addr_reg_337;
  wire [8:0]A_address0;
  wire \A_address0[0]_INST_0_i_1_n_0 ;
  wire \A_address0[3]_INST_0_i_1_n_0 ;
  wire \A_address0[5]_INST_0_i_1_n_0 ;
  wire \A_address0[5]_INST_0_i_2_n_0 ;
  wire \A_address0[7]_INST_0_i_1_n_0 ;
  wire [6:0]\A_address0[8] ;
  wire \A_address0[8]_INST_0_i_1_n_0 ;
  wire \A_address0[8]_INST_0_i_2_n_0 ;
  wire [7:0]A_address1;
  wire A_ce0;
  wire A_ce1;
  wire [31:0]A_d0;
  wire A_d0_carry__0_i_1_n_0;
  wire A_d0_carry__0_i_2_n_0;
  wire A_d0_carry__0_i_3_n_0;
  wire A_d0_carry__0_i_4_n_0;
  wire A_d0_carry__0_i_5_n_0;
  wire A_d0_carry__0_i_6_n_0;
  wire A_d0_carry__0_i_7_n_0;
  wire A_d0_carry__0_i_8_n_0;
  wire A_d0_carry__0_n_0;
  wire A_d0_carry__0_n_1;
  wire A_d0_carry__0_n_2;
  wire A_d0_carry__0_n_3;
  wire A_d0_carry__0_n_4;
  wire A_d0_carry__0_n_5;
  wire A_d0_carry__0_n_6;
  wire A_d0_carry__0_n_7;
  wire A_d0_carry__1_n_0;
  wire A_d0_carry__1_n_1;
  wire A_d0_carry__1_n_2;
  wire A_d0_carry__1_n_3;
  wire A_d0_carry__1_n_4;
  wire A_d0_carry__1_n_5;
  wire A_d0_carry__1_n_6;
  wire A_d0_carry__1_n_7;
  wire A_d0_carry__2_n_1;
  wire A_d0_carry__2_n_2;
  wire A_d0_carry__2_n_3;
  wire A_d0_carry__2_n_4;
  wire A_d0_carry__2_n_5;
  wire A_d0_carry__2_n_6;
  wire A_d0_carry__2_n_7;
  wire A_d0_carry_i_1_n_0;
  wire A_d0_carry_i_2_n_0;
  wire A_d0_carry_i_3_n_0;
  wire A_d0_carry_i_4_n_0;
  wire A_d0_carry_i_5_n_0;
  wire A_d0_carry_i_6_n_0;
  wire A_d0_carry_i_7_n_0;
  wire A_d0_carry_i_8_n_0;
  wire A_d0_carry_n_0;
  wire A_d0_carry_n_1;
  wire A_d0_carry_n_2;
  wire A_d0_carry_n_3;
  wire A_d0_carry_n_4;
  wire A_d0_carry_n_5;
  wire A_d0_carry_n_6;
  wire A_d0_carry_n_7;
  wire [31:0]A_q0;
  wire [31:0]A_q1;
  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [4:0]add_ln12_fu_261_p2;
  wire [8:1]add_ln16_2_fu_231_p2;
  wire add_ln16_2_fu_231_p2__0_carry_i_10_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_11_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_12_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_1_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_2_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_3_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_4_n_2;
  wire add_ln16_2_fu_231_p2__0_carry_i_4_n_3;
  wire add_ln16_2_fu_231_p2__0_carry_i_4_n_4;
  wire add_ln16_2_fu_231_p2__0_carry_i_4_n_5;
  wire add_ln16_2_fu_231_p2__0_carry_i_4_n_6;
  wire add_ln16_2_fu_231_p2__0_carry_i_4_n_7;
  wire add_ln16_2_fu_231_p2__0_carry_i_5_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_6_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_7_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_8_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_i_9_n_0;
  wire add_ln16_2_fu_231_p2__0_carry_n_1;
  wire add_ln16_2_fu_231_p2__0_carry_n_2;
  wire add_ln16_2_fu_231_p2__0_carry_n_3;
  wire add_ln16_2_fu_231_p2__0_carry_n_4;
  wire add_ln16_2_fu_231_p2__0_carry_n_5;
  wire add_ln16_2_fu_231_p2__0_carry_n_6;
  wire add_ln16_2_fu_231_p2__0_carry_n_7;
  wire add_ln16_2_reg_3270;
  wire \add_ln16_2_reg_327_reg[0]_0 ;
  wire [8:0]add_ln8_fu_157_p2;
  wire \ap_CS_fsm[1]_i_2_n_0 ;
  wire ap_CS_fsm_pp0_stage1;
  wire \ap_CS_fsm_reg[0]_0 ;
  wire \ap_CS_fsm_reg[2] ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_condition_108;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_enable_reg_pp0_iter1;
  wire ap_enable_reg_pp0_iter1_i_1_n_0;
  wire ap_enable_reg_pp0_iter2;
  wire ap_enable_reg_pp0_iter2_i_1_n_0;
  wire ap_loop_exit_ready_pp0_iter1_reg;
  wire ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0;
  wire ap_rst;
  wire [31:0]c_q0;
  wire flow_control_loop_pipe_sequential_init_U_n_0;
  wire flow_control_loop_pipe_sequential_init_U_n_1;
  wire flow_control_loop_pipe_sequential_init_U_n_10;
  wire flow_control_loop_pipe_sequential_init_U_n_2;
  wire flow_control_loop_pipe_sequential_init_U_n_3;
  wire flow_control_loop_pipe_sequential_init_U_n_4;
  wire flow_control_loop_pipe_sequential_init_U_n_5;
  wire flow_control_loop_pipe_sequential_init_U_n_6;
  wire flow_control_loop_pipe_sequential_init_U_n_9;
  wire grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg;
  wire i_fu_680;
  wire [6:0]i_fu_68_reg;
  wire [4:0]\i_fu_68_reg[6]_0 ;
  wire icmp_ln8_fu_152_p2;
  wire icmp_ln8_reg_318;
  wire \icmp_ln8_reg_318[0]_i_2_n_0 ;
  wire \icmp_ln8_reg_318[0]_i_3_n_0 ;
  wire \icmp_ln8_reg_318[0]_i_4_n_0 ;
  wire [8:0]\icmp_ln8_reg_318_reg[0]_0 ;
  wire \indvar_flatten_fu_72[8]_i_3_n_0 ;
  wire [8:0]indvar_flatten_fu_72_reg;
  wire [4:0]k_fu_64;
  wire k_fu_64_0;
  wire mul_32s_32s_32_1_1_U1_n_1;
  wire mul_32s_32s_32_1_1_U1_n_10;
  wire mul_32s_32s_32_1_1_U1_n_100;
  wire mul_32s_32s_32_1_1_U1_n_101;
  wire mul_32s_32s_32_1_1_U1_n_102;
  wire mul_32s_32s_32_1_1_U1_n_103;
  wire mul_32s_32s_32_1_1_U1_n_104;
  wire mul_32s_32s_32_1_1_U1_n_105;
  wire mul_32s_32s_32_1_1_U1_n_106;
  wire mul_32s_32s_32_1_1_U1_n_107;
  wire mul_32s_32s_32_1_1_U1_n_108;
  wire mul_32s_32s_32_1_1_U1_n_109;
  wire mul_32s_32s_32_1_1_U1_n_11;
  wire mul_32s_32s_32_1_1_U1_n_110;
  wire mul_32s_32s_32_1_1_U1_n_111;
  wire mul_32s_32s_32_1_1_U1_n_112;
  wire mul_32s_32s_32_1_1_U1_n_113;
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
  wire mul_32s_32s_32_1_1_U1_n_66;
  wire mul_32s_32s_32_1_1_U1_n_67;
  wire mul_32s_32s_32_1_1_U1_n_68;
  wire mul_32s_32s_32_1_1_U1_n_69;
  wire mul_32s_32s_32_1_1_U1_n_7;
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
  wire mul_32s_32s_32_1_1_U1_n_8;
  wire mul_32s_32s_32_1_1_U1_n_80;
  wire mul_32s_32s_32_1_1_U1_n_81;
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
  wire mul_32s_32s_32_1_1_U1_n_98;
  wire mul_32s_32s_32_1_1_U1_n_99;
  wire \mul_ln16_reg_343_reg[0]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[10]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[11]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[12]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[13]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[14]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[15]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[16]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[1]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[2]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[3]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[4]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[5]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[6]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[7]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[8]__0_n_0 ;
  wire \mul_ln16_reg_343_reg[9]__0_n_0 ;
  wire mul_ln16_reg_343_reg_n_100;
  wire mul_ln16_reg_343_reg_n_101;
  wire mul_ln16_reg_343_reg_n_102;
  wire mul_ln16_reg_343_reg_n_103;
  wire mul_ln16_reg_343_reg_n_104;
  wire mul_ln16_reg_343_reg_n_105;
  wire mul_ln16_reg_343_reg_n_58;
  wire mul_ln16_reg_343_reg_n_59;
  wire mul_ln16_reg_343_reg_n_60;
  wire mul_ln16_reg_343_reg_n_61;
  wire mul_ln16_reg_343_reg_n_62;
  wire mul_ln16_reg_343_reg_n_63;
  wire mul_ln16_reg_343_reg_n_64;
  wire mul_ln16_reg_343_reg_n_65;
  wire mul_ln16_reg_343_reg_n_66;
  wire mul_ln16_reg_343_reg_n_67;
  wire mul_ln16_reg_343_reg_n_68;
  wire mul_ln16_reg_343_reg_n_69;
  wire mul_ln16_reg_343_reg_n_70;
  wire mul_ln16_reg_343_reg_n_71;
  wire mul_ln16_reg_343_reg_n_72;
  wire mul_ln16_reg_343_reg_n_73;
  wire mul_ln16_reg_343_reg_n_74;
  wire mul_ln16_reg_343_reg_n_75;
  wire mul_ln16_reg_343_reg_n_76;
  wire mul_ln16_reg_343_reg_n_77;
  wire mul_ln16_reg_343_reg_n_78;
  wire mul_ln16_reg_343_reg_n_79;
  wire mul_ln16_reg_343_reg_n_80;
  wire mul_ln16_reg_343_reg_n_81;
  wire mul_ln16_reg_343_reg_n_82;
  wire mul_ln16_reg_343_reg_n_83;
  wire mul_ln16_reg_343_reg_n_84;
  wire mul_ln16_reg_343_reg_n_85;
  wire mul_ln16_reg_343_reg_n_86;
  wire mul_ln16_reg_343_reg_n_87;
  wire mul_ln16_reg_343_reg_n_88;
  wire mul_ln16_reg_343_reg_n_89;
  wire mul_ln16_reg_343_reg_n_90;
  wire mul_ln16_reg_343_reg_n_91;
  wire mul_ln16_reg_343_reg_n_92;
  wire mul_ln16_reg_343_reg_n_93;
  wire mul_ln16_reg_343_reg_n_94;
  wire mul_ln16_reg_343_reg_n_95;
  wire mul_ln16_reg_343_reg_n_96;
  wire mul_ln16_reg_343_reg_n_97;
  wire mul_ln16_reg_343_reg_n_98;
  wire mul_ln16_reg_343_reg_n_99;
  wire [31:0]reg_125;
  wire reg_125_1;
  wire [6:0]select_ln8_1_fu_189_p3;
  wire [4:1]select_ln8_reg_322;
  wire [4:0]zext_ln16_fu_227_p1;
  wire [7:7]NLW_A_d0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln16_2_fu_231_p2__0_carry_CO_UNCONNECTED;
  wire [7:6]NLW_add_ln16_2_fu_231_p2__0_carry_i_4_CO_UNCONNECTED;
  wire [7:7]NLW_add_ln16_2_fu_231_p2__0_carry_i_4_O_UNCONNECTED;
  wire NLW_mul_ln16_reg_343_reg_CARRYCASCOUT_UNCONNECTED;
  wire NLW_mul_ln16_reg_343_reg_MULTSIGNOUT_UNCONNECTED;
  wire NLW_mul_ln16_reg_343_reg_OVERFLOW_UNCONNECTED;
  wire NLW_mul_ln16_reg_343_reg_PATTERNBDETECT_UNCONNECTED;
  wire NLW_mul_ln16_reg_343_reg_PATTERNDETECT_UNCONNECTED;
  wire NLW_mul_ln16_reg_343_reg_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_mul_ln16_reg_343_reg_ACOUT_UNCONNECTED;
  wire [17:0]NLW_mul_ln16_reg_343_reg_BCOUT_UNCONNECTED;
  wire [3:0]NLW_mul_ln16_reg_343_reg_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_mul_ln16_reg_343_reg_PCOUT_UNCONNECTED;
  wire [7:0]NLW_mul_ln16_reg_343_reg_XOROUT_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \A_addr_reg_337[8]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(icmp_ln8_reg_318),
        .O(ap_condition_108));
  FDRE \A_addr_reg_337_reg[0] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(\add_ln16_2_reg_327_reg[0]_0 ),
        .Q(A_addr_reg_337[0]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[1] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[0]),
        .Q(A_addr_reg_337[1]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[2] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[1]),
        .Q(A_addr_reg_337[2]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[3] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[2]),
        .Q(A_addr_reg_337[3]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[4] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[3]),
        .Q(A_addr_reg_337[4]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[5] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[4]),
        .Q(A_addr_reg_337[5]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[6] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[5]),
        .Q(A_addr_reg_337[6]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[7] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[6]),
        .Q(A_addr_reg_337[7]),
        .R(1'b0));
  FDRE \A_addr_reg_337_reg[8] 
       (.C(ap_clk),
        .CE(ap_condition_108),
        .D(A_address1[7]),
        .Q(A_addr_reg_337[8]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hBFBFBF80)) 
    \A_address0[0]_INST_0 
       (.I0(A_addr_reg_337[0]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(k_fu_64[0]),
        .I4(\A_address0[0]_INST_0_i_1_n_0 ),
        .O(A_address0[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \A_address0[0]_INST_0_i_1 
       (.I0(k_fu_64[3]),
        .I1(k_fu_64[4]),
        .I2(k_fu_64[1]),
        .I3(k_fu_64[0]),
        .I4(k_fu_64[2]),
        .O(\A_address0[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hBF80)) 
    \A_address0[1]_INST_0 
       (.I0(A_addr_reg_337[1]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(k_fu_64[1]),
        .O(A_address0[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hBF8080BF)) 
    \A_address0[2]_INST_0 
       (.I0(A_addr_reg_337[2]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(\A_address0[8] [0]),
        .I4(\A_address0[3]_INST_0_i_1_n_0 ),
        .O(A_address0[2]));
  LUT6 #(
    .INIT(64'h8B88B8BBB8BB8B88)) 
    \A_address0[3]_INST_0 
       (.I0(A_addr_reg_337[3]),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(\A_address0[3]_INST_0_i_1_n_0 ),
        .I3(\A_address0[8] [0]),
        .I4(\A_address0[8] [1]),
        .I5(k_fu_64[3]),
        .O(A_address0[3]));
  LUT5 #(
    .INIT(32'h0004FFFF)) 
    \A_address0[3]_INST_0_i_1 
       (.I0(k_fu_64[3]),
        .I1(k_fu_64[4]),
        .I2(k_fu_64[1]),
        .I3(k_fu_64[0]),
        .I4(k_fu_64[2]),
        .O(\A_address0[3]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBF8080BF80BFBF80)) 
    \A_address0[4]_INST_0 
       (.I0(A_addr_reg_337[4]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(\A_address0[5]_INST_0_i_2_n_0 ),
        .I4(\A_address0[5]_INST_0_i_1_n_0 ),
        .I5(\A_address0[8] [2]),
        .O(A_address0[4]));
  LUT6 #(
    .INIT(64'hB88B8B8BB8B8B88B)) 
    \A_address0[5]_INST_0 
       (.I0(A_addr_reg_337[5]),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(\A_address0[8] [3]),
        .I3(\A_address0[5]_INST_0_i_1_n_0 ),
        .I4(\A_address0[5]_INST_0_i_2_n_0 ),
        .I5(\A_address0[8] [2]),
        .O(A_address0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h0002FFFF)) 
    \A_address0[5]_INST_0_i_1 
       (.I0(k_fu_64[2]),
        .I1(k_fu_64[0]),
        .I2(k_fu_64[1]),
        .I3(k_fu_64[3]),
        .I4(k_fu_64[4]),
        .O(\A_address0[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0DDF)) 
    \A_address0[5]_INST_0_i_2 
       (.I0(\A_address0[8] [0]),
        .I1(\A_address0[3]_INST_0_i_1_n_0 ),
        .I2(k_fu_64[3]),
        .I3(\A_address0[8] [1]),
        .O(\A_address0[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80BFBF80BF80BF80)) 
    \A_address0[6]_INST_0 
       (.I0(A_addr_reg_337[6]),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter2),
        .I3(\A_address0[8] [4]),
        .I4(\A_address0[7]_INST_0_i_1_n_0 ),
        .I5(\A_address0[8] [3]),
        .O(A_address0[6]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \A_address0[7]_INST_0 
       (.I0(A_addr_reg_337[7]),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(\A_address0[8] [5]),
        .I3(\A_address0[8] [3]),
        .I4(\A_address0[7]_INST_0_i_1_n_0 ),
        .I5(\A_address0[8] [4]),
        .O(A_address0[7]));
  LUT6 #(
    .INIT(64'h80A88080EAFEEAEA)) 
    \A_address0[7]_INST_0_i_1 
       (.I0(\A_address0[8] [2]),
        .I1(\A_address0[8] [1]),
        .I2(k_fu_64[3]),
        .I3(\A_address0[3]_INST_0_i_1_n_0 ),
        .I4(\A_address0[8] [0]),
        .I5(\A_address0[5]_INST_0_i_1_n_0 ),
        .O(\A_address0[7]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \A_address0[8]_INST_0 
       (.I0(A_addr_reg_337[8]),
        .I1(\ap_CS_fsm_reg[0]_0 ),
        .I2(\A_address0[8] [6]),
        .I3(\A_address0[8] [4]),
        .I4(\A_address0[8]_INST_0_i_1_n_0 ),
        .I5(\A_address0[8] [5]),
        .O(A_address0[8]));
  LUT6 #(
    .INIT(64'hAAA2A22222202000)) 
    \A_address0[8]_INST_0_i_1 
       (.I0(\A_address0[8] [3]),
        .I1(\A_address0[5]_INST_0_i_1_n_0 ),
        .I2(\A_address0[8]_INST_0_i_2_n_0 ),
        .I3(k_fu_64[3]),
        .I4(\A_address0[8] [1]),
        .I5(\A_address0[8] [2]),
        .O(\A_address0[8]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888808888)) 
    \A_address0[8]_INST_0_i_2 
       (.I0(\A_address0[8] [0]),
        .I1(k_fu_64[2]),
        .I2(k_fu_64[0]),
        .I3(k_fu_64[1]),
        .I4(k_fu_64[4]),
        .I5(k_fu_64[3]),
        .O(\A_address0[8]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hFF88A0A0)) 
    A_ce0_INST_0
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(A_ce0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    A_ce1_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter1),
        .O(A_ce1));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 A_d0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({A_d0_carry_n_0,A_d0_carry_n_1,A_d0_carry_n_2,A_d0_carry_n_3,A_d0_carry_n_4,A_d0_carry_n_5,A_d0_carry_n_6,A_d0_carry_n_7}),
        .DI(reg_125[7:0]),
        .O(A_d0[7:0]),
        .S({A_d0_carry_i_1_n_0,A_d0_carry_i_2_n_0,A_d0_carry_i_3_n_0,A_d0_carry_i_4_n_0,A_d0_carry_i_5_n_0,A_d0_carry_i_6_n_0,A_d0_carry_i_7_n_0,A_d0_carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 A_d0_carry__0
       (.CI(A_d0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({A_d0_carry__0_n_0,A_d0_carry__0_n_1,A_d0_carry__0_n_2,A_d0_carry__0_n_3,A_d0_carry__0_n_4,A_d0_carry__0_n_5,A_d0_carry__0_n_6,A_d0_carry__0_n_7}),
        .DI(reg_125[15:8]),
        .O(A_d0[15:8]),
        .S({A_d0_carry__0_i_1_n_0,A_d0_carry__0_i_2_n_0,A_d0_carry__0_i_3_n_0,A_d0_carry__0_i_4_n_0,A_d0_carry__0_i_5_n_0,A_d0_carry__0_i_6_n_0,A_d0_carry__0_i_7_n_0,A_d0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_1
       (.I0(reg_125[15]),
        .I1(\mul_ln16_reg_343_reg[15]__0_n_0 ),
        .O(A_d0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_2
       (.I0(reg_125[14]),
        .I1(\mul_ln16_reg_343_reg[14]__0_n_0 ),
        .O(A_d0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_3
       (.I0(reg_125[13]),
        .I1(\mul_ln16_reg_343_reg[13]__0_n_0 ),
        .O(A_d0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_4
       (.I0(reg_125[12]),
        .I1(\mul_ln16_reg_343_reg[12]__0_n_0 ),
        .O(A_d0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_5
       (.I0(reg_125[11]),
        .I1(\mul_ln16_reg_343_reg[11]__0_n_0 ),
        .O(A_d0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_6
       (.I0(reg_125[10]),
        .I1(\mul_ln16_reg_343_reg[10]__0_n_0 ),
        .O(A_d0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_7
       (.I0(reg_125[9]),
        .I1(\mul_ln16_reg_343_reg[9]__0_n_0 ),
        .O(A_d0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__0_i_8
       (.I0(reg_125[8]),
        .I1(\mul_ln16_reg_343_reg[8]__0_n_0 ),
        .O(A_d0_carry__0_i_8_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 A_d0_carry__1
       (.CI(A_d0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({A_d0_carry__1_n_0,A_d0_carry__1_n_1,A_d0_carry__1_n_2,A_d0_carry__1_n_3,A_d0_carry__1_n_4,A_d0_carry__1_n_5,A_d0_carry__1_n_6,A_d0_carry__1_n_7}),
        .DI(reg_125[23:16]),
        .O(A_d0[23:16]),
        .S({mul_32s_32s_32_1_1_U1_n_98,mul_32s_32s_32_1_1_U1_n_99,mul_32s_32s_32_1_1_U1_n_100,mul_32s_32s_32_1_1_U1_n_101,mul_32s_32s_32_1_1_U1_n_102,mul_32s_32s_32_1_1_U1_n_103,mul_32s_32s_32_1_1_U1_n_104,mul_32s_32s_32_1_1_U1_n_105}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 A_d0_carry__2
       (.CI(A_d0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_A_d0_carry__2_CO_UNCONNECTED[7],A_d0_carry__2_n_1,A_d0_carry__2_n_2,A_d0_carry__2_n_3,A_d0_carry__2_n_4,A_d0_carry__2_n_5,A_d0_carry__2_n_6,A_d0_carry__2_n_7}),
        .DI({1'b0,reg_125[30:24]}),
        .O(A_d0[31:24]),
        .S({mul_32s_32s_32_1_1_U1_n_106,mul_32s_32s_32_1_1_U1_n_107,mul_32s_32s_32_1_1_U1_n_108,mul_32s_32s_32_1_1_U1_n_109,mul_32s_32s_32_1_1_U1_n_110,mul_32s_32s_32_1_1_U1_n_111,mul_32s_32s_32_1_1_U1_n_112,mul_32s_32s_32_1_1_U1_n_113}));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_1
       (.I0(reg_125[7]),
        .I1(\mul_ln16_reg_343_reg[7]__0_n_0 ),
        .O(A_d0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_2
       (.I0(reg_125[6]),
        .I1(\mul_ln16_reg_343_reg[6]__0_n_0 ),
        .O(A_d0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_3
       (.I0(reg_125[5]),
        .I1(\mul_ln16_reg_343_reg[5]__0_n_0 ),
        .O(A_d0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_4
       (.I0(reg_125[4]),
        .I1(\mul_ln16_reg_343_reg[4]__0_n_0 ),
        .O(A_d0_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_5
       (.I0(reg_125[3]),
        .I1(\mul_ln16_reg_343_reg[3]__0_n_0 ),
        .O(A_d0_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_6
       (.I0(reg_125[2]),
        .I1(\mul_ln16_reg_343_reg[2]__0_n_0 ),
        .O(A_d0_carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_7
       (.I0(reg_125[1]),
        .I1(\mul_ln16_reg_343_reg[1]__0_n_0 ),
        .O(A_d0_carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry_i_8
       (.I0(reg_125[0]),
        .I1(\mul_ln16_reg_343_reg[0]__0_n_0 ),
        .O(A_d0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    A_we0_INST_0
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(ap_enable_reg_pp0_iter2),
        .O(\ap_CS_fsm_reg[0]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 add_ln16_2_fu_231_p2__0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln16_2_fu_231_p2__0_carry_CO_UNCONNECTED[7],add_ln16_2_fu_231_p2__0_carry_n_1,add_ln16_2_fu_231_p2__0_carry_n_2,add_ln16_2_fu_231_p2__0_carry_n_3,add_ln16_2_fu_231_p2__0_carry_n_4,add_ln16_2_fu_231_p2__0_carry_n_5,add_ln16_2_fu_231_p2__0_carry_n_6,add_ln16_2_fu_231_p2__0_carry_n_7}),
        .DI({1'b0,add_ln16_2_fu_231_p2__0_carry_i_1_n_0,add_ln16_2_fu_231_p2__0_carry_i_2_n_0,add_ln16_2_fu_231_p2__0_carry_i_3_n_0,select_ln8_1_fu_189_p3[0],k_fu_64[3],zext_ln16_fu_227_p1[2],1'b0}),
        .O(add_ln16_2_fu_231_p2),
        .S({add_ln16_2_fu_231_p2__0_carry_i_5_n_0,add_ln16_2_fu_231_p2__0_carry_i_6_n_0,add_ln16_2_fu_231_p2__0_carry_i_7_n_0,add_ln16_2_fu_231_p2__0_carry_i_8_n_0,add_ln16_2_fu_231_p2__0_carry_i_9_n_0,add_ln16_2_fu_231_p2__0_carry_i_10_n_0,add_ln16_2_fu_231_p2__0_carry_i_11_n_0,k_fu_64[1]}));
  LUT2 #(
    .INIT(4'h8)) 
    add_ln16_2_fu_231_p2__0_carry_i_1
       (.I0(select_ln8_1_fu_189_p3[2]),
        .I1(select_ln8_1_fu_189_p3[4]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    add_ln16_2_fu_231_p2__0_carry_i_10
       (.I0(k_fu_64[3]),
        .I1(select_ln8_1_fu_189_p3[1]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_10_n_0));
  LUT6 #(
    .INIT(64'h55555755AAAAA8AA)) 
    add_ln16_2_fu_231_p2__0_carry_i_11
       (.I0(k_fu_64[2]),
        .I1(k_fu_64[0]),
        .I2(k_fu_64[1]),
        .I3(k_fu_64[4]),
        .I4(k_fu_64[3]),
        .I5(select_ln8_1_fu_189_p3[0]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_11_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAA6AAAA)) 
    add_ln16_2_fu_231_p2__0_carry_i_12
       (.I0(i_fu_68_reg[0]),
        .I1(k_fu_64[2]),
        .I2(k_fu_64[0]),
        .I3(k_fu_64[1]),
        .I4(k_fu_64[4]),
        .I5(k_fu_64[3]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_12_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    add_ln16_2_fu_231_p2__0_carry_i_2
       (.I0(select_ln8_1_fu_189_p3[3]),
        .I1(select_ln8_1_fu_189_p3[1]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h8888888088888888)) 
    add_ln16_2_fu_231_p2__0_carry_i_3
       (.I0(select_ln8_1_fu_189_p3[2]),
        .I1(k_fu_64[4]),
        .I2(k_fu_64[3]),
        .I3(k_fu_64[1]),
        .I4(k_fu_64[0]),
        .I5(k_fu_64[2]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_3_n_0));
  CARRY8 add_ln16_2_fu_231_p2__0_carry_i_4
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_add_ln16_2_fu_231_p2__0_carry_i_4_CO_UNCONNECTED[7:6],add_ln16_2_fu_231_p2__0_carry_i_4_n_2,add_ln16_2_fu_231_p2__0_carry_i_4_n_3,add_ln16_2_fu_231_p2__0_carry_i_4_n_4,add_ln16_2_fu_231_p2__0_carry_i_4_n_5,add_ln16_2_fu_231_p2__0_carry_i_4_n_6,add_ln16_2_fu_231_p2__0_carry_i_4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,i_fu_68_reg[0]}),
        .O({NLW_add_ln16_2_fu_231_p2__0_carry_i_4_O_UNCONNECTED[7],select_ln8_1_fu_189_p3}),
        .S({1'b0,i_fu_68_reg[6:1],add_ln16_2_fu_231_p2__0_carry_i_12_n_0}));
  LUT4 #(
    .INIT(16'h8778)) 
    add_ln16_2_fu_231_p2__0_carry_i_5
       (.I0(select_ln8_1_fu_189_p3[5]),
        .I1(select_ln8_1_fu_189_p3[3]),
        .I2(select_ln8_1_fu_189_p3[6]),
        .I3(select_ln8_1_fu_189_p3[4]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    add_ln16_2_fu_231_p2__0_carry_i_6
       (.I0(select_ln8_1_fu_189_p3[4]),
        .I1(select_ln8_1_fu_189_p3[2]),
        .I2(select_ln8_1_fu_189_p3[5]),
        .I3(select_ln8_1_fu_189_p3[3]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h8778)) 
    add_ln16_2_fu_231_p2__0_carry_i_7
       (.I0(select_ln8_1_fu_189_p3[1]),
        .I1(select_ln8_1_fu_189_p3[3]),
        .I2(select_ln8_1_fu_189_p3[4]),
        .I3(select_ln8_1_fu_189_p3[2]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    add_ln16_2_fu_231_p2__0_carry_i_8
       (.I0(\A_address0[5]_INST_0_i_1_n_0 ),
        .I1(select_ln8_1_fu_189_p3[2]),
        .I2(select_ln8_1_fu_189_p3[1]),
        .I3(select_ln8_1_fu_189_p3[3]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_8_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    add_ln16_2_fu_231_p2__0_carry_i_9
       (.I0(select_ln8_1_fu_189_p3[2]),
        .I1(\A_address0[5]_INST_0_i_1_n_0 ),
        .I2(select_ln8_1_fu_189_p3[0]),
        .O(add_ln16_2_fu_231_p2__0_carry_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hCCCCCECC)) 
    \add_ln16_2_reg_327[0]_i_1 
       (.I0(k_fu_64[2]),
        .I1(k_fu_64[0]),
        .I2(k_fu_64[1]),
        .I3(k_fu_64[4]),
        .I4(k_fu_64[3]),
        .O(zext_ln16_fu_227_p1[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \add_ln16_2_reg_327[8]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(icmp_ln8_fu_152_p2),
        .O(add_ln16_2_reg_3270));
  FDRE \add_ln16_2_reg_327_reg[0] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(zext_ln16_fu_227_p1[0]),
        .Q(\add_ln16_2_reg_327_reg[0]_0 ),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[1] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[1]),
        .Q(A_address1[0]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[2] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[2]),
        .Q(A_address1[1]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[3] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[3]),
        .Q(A_address1[2]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[4] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[4]),
        .Q(A_address1[3]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[5] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[5]),
        .Q(A_address1[4]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[6] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[6]),
        .Q(A_address1[5]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[7] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[7]),
        .Q(A_address1[6]),
        .R(1'b0));
  FDRE \add_ln16_2_reg_327_reg[8] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(add_ln16_2_fu_231_p2[8]),
        .Q(A_address1[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I2(ap_enable_reg_pp0_iter1),
        .I3(ap_loop_exit_ready_pp0_iter1_reg),
        .I4(ap_enable_reg_pp0_iter2),
        .I5(\ap_CS_fsm[1]_i_2_n_0 ),
        .O(ap_NS_fsm[0]));
  LUT6 #(
    .INIT(64'h0000000055555554)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(\ap_CS_fsm[1]_i_2_n_0 ),
        .I1(ap_enable_reg_pp0_iter2),
        .I2(ap_loop_exit_ready_pp0_iter1_reg),
        .I3(ap_enable_reg_pp0_iter1),
        .I4(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(ap_NS_fsm[1]));
  LUT4 #(
    .INIT(16'h0080)) 
    \ap_CS_fsm[1]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(icmp_ln8_reg_318),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
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
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ap_enable_reg_pp0_iter0_reg_i_1
       (.I0(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .O(ap_enable_reg_pp0_iter0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter0),
        .Q(ap_enable_reg_pp0_iter0_reg),
        .R(ap_rst));
  LUT5 #(
    .INIT(32'h05004444)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(icmp_ln8_fu_152_p2),
        .I3(ap_enable_reg_pp0_iter0),
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00404540)) 
    ap_enable_reg_pp0_iter2_i_1
       (.I0(ap_rst),
        .I1(ap_enable_reg_pp0_iter1),
        .I2(ap_CS_fsm_pp0_stage1),
        .I3(ap_enable_reg_pp0_iter2),
        .I4(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_enable_reg_pp0_iter2_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter2_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_enable_reg_pp0_iter2_i_1_n_0),
        .Q(ap_enable_reg_pp0_iter2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hE200E222E222E222)) 
    ap_loop_exit_ready_pp0_iter1_reg_i_1
       (.I0(ap_loop_exit_ready_pp0_iter1_reg),
        .I1(ap_CS_fsm_pp0_stage1),
        .I2(icmp_ln8_fu_152_p2),
        .I3(ap_enable_reg_pp0_iter0),
        .I4(icmp_ln8_reg_318),
        .I5(A_ce1),
        .O(ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0));
  FDRE ap_loop_exit_ready_pp0_iter1_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_loop_exit_ready_pp0_iter1_reg_i_1_n_0),
        .Q(ap_loop_exit_ready_pp0_iter1_reg),
        .R(1'b0));
  bd_0_hls_inst_0_gaussian_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U
       (.D(D),
        .O({flow_control_loop_pipe_sequential_init_U_n_0,flow_control_loop_pipe_sequential_init_U_n_1,flow_control_loop_pipe_sequential_init_U_n_2,flow_control_loop_pipe_sequential_init_U_n_3,flow_control_loop_pipe_sequential_init_U_n_4,flow_control_loop_pipe_sequential_init_U_n_5,flow_control_loop_pipe_sequential_init_U_n_6}),
        .Q({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .SR(SR),
        .\ap_CS_fsm_reg[3] (Q),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_reg),
        .ap_enable_reg_pp0_iter0_reg_reg(flow_control_loop_pipe_sequential_init_U_n_10),
        .ap_loop_exit_ready_pp0_iter1_reg(ap_loop_exit_ready_pp0_iter1_reg),
        .ap_loop_init_int_reg_0(flow_control_loop_pipe_sequential_init_U_n_9),
        .ap_rst(ap_rst),
        .grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .i_fu_68_reg(i_fu_68_reg),
        .\i_fu_68_reg[6] (\i_fu_68_reg[6]_0 ),
        .\i_fu_68_reg[6]_0 (\A_address0[0]_INST_0_i_1_n_0 ),
        .\i_fu_68_reg[6]_1 (k_fu_64),
        .icmp_ln8_fu_152_p2(icmp_ln8_fu_152_p2));
  LUT6 #(
    .INIT(64'hBBBFAAAAFFFFAAAA)) 
    grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg_i_1
       (.I0(Q[0]),
        .I1(icmp_ln8_fu_152_p2),
        .I2(ap_enable_reg_pp0_iter0_reg),
        .I3(\ap_CS_fsm_reg_n_0_[0] ),
        .I4(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I5(ap_CS_fsm_pp0_stage1),
        .O(\ap_CS_fsm_reg[2] ));
  FDRE \i_fu_68_reg[0] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_10),
        .D(flow_control_loop_pipe_sequential_init_U_n_6),
        .Q(i_fu_68_reg[0]),
        .R(1'b0));
  FDRE \i_fu_68_reg[1] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_10),
        .D(flow_control_loop_pipe_sequential_init_U_n_5),
        .Q(i_fu_68_reg[1]),
        .R(1'b0));
  FDRE \i_fu_68_reg[2] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_10),
        .D(flow_control_loop_pipe_sequential_init_U_n_4),
        .Q(i_fu_68_reg[2]),
        .R(1'b0));
  FDRE \i_fu_68_reg[3] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_10),
        .D(flow_control_loop_pipe_sequential_init_U_n_3),
        .Q(i_fu_68_reg[3]),
        .R(1'b0));
  FDRE \i_fu_68_reg[4] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_10),
        .D(flow_control_loop_pipe_sequential_init_U_n_2),
        .Q(i_fu_68_reg[4]),
        .R(1'b0));
  FDRE \i_fu_68_reg[5] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_10),
        .D(flow_control_loop_pipe_sequential_init_U_n_1),
        .Q(i_fu_68_reg[5]),
        .R(1'b0));
  FDRE \i_fu_68_reg[6] 
       (.C(ap_clk),
        .CE(flow_control_loop_pipe_sequential_init_U_n_10),
        .D(flow_control_loop_pipe_sequential_init_U_n_0),
        .Q(i_fu_68_reg[6]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \icmp_ln8_reg_318[0]_i_1 
       (.I0(\icmp_ln8_reg_318[0]_i_2_n_0 ),
        .I1(\icmp_ln8_reg_318[0]_i_3_n_0 ),
        .I2(\icmp_ln8_reg_318[0]_i_4_n_0 ),
        .O(icmp_ln8_fu_152_p2));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \icmp_ln8_reg_318[0]_i_2 
       (.I0(\icmp_ln8_reg_318_reg[0]_0 [3]),
        .I1(indvar_flatten_fu_72_reg[3]),
        .I2(indvar_flatten_fu_72_reg[4]),
        .I3(\icmp_ln8_reg_318_reg[0]_0 [4]),
        .I4(indvar_flatten_fu_72_reg[5]),
        .I5(\icmp_ln8_reg_318_reg[0]_0 [5]),
        .O(\icmp_ln8_reg_318[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \icmp_ln8_reg_318[0]_i_3 
       (.I0(indvar_flatten_fu_72_reg[8]),
        .I1(\icmp_ln8_reg_318_reg[0]_0 [8]),
        .I2(indvar_flatten_fu_72_reg[6]),
        .I3(\icmp_ln8_reg_318_reg[0]_0 [6]),
        .I4(\icmp_ln8_reg_318_reg[0]_0 [7]),
        .I5(indvar_flatten_fu_72_reg[7]),
        .O(\icmp_ln8_reg_318[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6)) 
    \icmp_ln8_reg_318[0]_i_4 
       (.I0(\icmp_ln8_reg_318_reg[0]_0 [0]),
        .I1(indvar_flatten_fu_72_reg[0]),
        .I2(indvar_flatten_fu_72_reg[1]),
        .I3(\icmp_ln8_reg_318_reg[0]_0 [1]),
        .I4(indvar_flatten_fu_72_reg[2]),
        .I5(\icmp_ln8_reg_318_reg[0]_0 [2]),
        .O(\icmp_ln8_reg_318[0]_i_4_n_0 ));
  FDRE \icmp_ln8_reg_318_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(icmp_ln8_fu_152_p2),
        .Q(icmp_ln8_reg_318),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \indvar_flatten_fu_72[0]_i_1 
       (.I0(indvar_flatten_fu_72_reg[0]),
        .O(add_ln8_fu_157_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten_fu_72[1]_i_1 
       (.I0(indvar_flatten_fu_72_reg[0]),
        .I1(indvar_flatten_fu_72_reg[1]),
        .O(add_ln8_fu_157_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten_fu_72[2]_i_1 
       (.I0(indvar_flatten_fu_72_reg[2]),
        .I1(indvar_flatten_fu_72_reg[1]),
        .I2(indvar_flatten_fu_72_reg[0]),
        .O(add_ln8_fu_157_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \indvar_flatten_fu_72[3]_i_1 
       (.I0(indvar_flatten_fu_72_reg[3]),
        .I1(indvar_flatten_fu_72_reg[0]),
        .I2(indvar_flatten_fu_72_reg[1]),
        .I3(indvar_flatten_fu_72_reg[2]),
        .O(add_ln8_fu_157_p2[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \indvar_flatten_fu_72[4]_i_1 
       (.I0(indvar_flatten_fu_72_reg[4]),
        .I1(indvar_flatten_fu_72_reg[2]),
        .I2(indvar_flatten_fu_72_reg[1]),
        .I3(indvar_flatten_fu_72_reg[0]),
        .I4(indvar_flatten_fu_72_reg[3]),
        .O(add_ln8_fu_157_p2[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \indvar_flatten_fu_72[5]_i_1 
       (.I0(indvar_flatten_fu_72_reg[5]),
        .I1(indvar_flatten_fu_72_reg[3]),
        .I2(indvar_flatten_fu_72_reg[0]),
        .I3(indvar_flatten_fu_72_reg[1]),
        .I4(indvar_flatten_fu_72_reg[2]),
        .I5(indvar_flatten_fu_72_reg[4]),
        .O(add_ln8_fu_157_p2[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \indvar_flatten_fu_72[6]_i_1 
       (.I0(indvar_flatten_fu_72_reg[6]),
        .I1(\indvar_flatten_fu_72[8]_i_3_n_0 ),
        .O(add_ln8_fu_157_p2[6]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \indvar_flatten_fu_72[7]_i_1 
       (.I0(indvar_flatten_fu_72_reg[7]),
        .I1(\indvar_flatten_fu_72[8]_i_3_n_0 ),
        .I2(indvar_flatten_fu_72_reg[6]),
        .O(add_ln8_fu_157_p2[7]));
  LUT5 #(
    .INIT(32'h00008A80)) 
    \indvar_flatten_fu_72[8]_i_1 
       (.I0(ap_CS_fsm_pp0_stage1),
        .I1(grp_gaussian_Pipeline_VITIS_LOOP_8_2_VITIS_LOOP_12_3_fu_79_ap_start_reg),
        .I2(\ap_CS_fsm_reg_n_0_[0] ),
        .I3(ap_enable_reg_pp0_iter0_reg),
        .I4(icmp_ln8_fu_152_p2),
        .O(i_fu_680));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \indvar_flatten_fu_72[8]_i_2 
       (.I0(indvar_flatten_fu_72_reg[8]),
        .I1(indvar_flatten_fu_72_reg[6]),
        .I2(\indvar_flatten_fu_72[8]_i_3_n_0 ),
        .I3(indvar_flatten_fu_72_reg[7]),
        .O(add_ln8_fu_157_p2[8]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \indvar_flatten_fu_72[8]_i_3 
       (.I0(indvar_flatten_fu_72_reg[5]),
        .I1(indvar_flatten_fu_72_reg[3]),
        .I2(indvar_flatten_fu_72_reg[0]),
        .I3(indvar_flatten_fu_72_reg[1]),
        .I4(indvar_flatten_fu_72_reg[2]),
        .I5(indvar_flatten_fu_72_reg[4]),
        .O(\indvar_flatten_fu_72[8]_i_3_n_0 ));
  FDRE \indvar_flatten_fu_72_reg[0] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[0]),
        .Q(indvar_flatten_fu_72_reg[0]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[1] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[1]),
        .Q(indvar_flatten_fu_72_reg[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[2] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[2]),
        .Q(indvar_flatten_fu_72_reg[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[3] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[3]),
        .Q(indvar_flatten_fu_72_reg[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[4] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[4]),
        .Q(indvar_flatten_fu_72_reg[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[5] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[5]),
        .Q(indvar_flatten_fu_72_reg[5]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[6] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[6]),
        .Q(indvar_flatten_fu_72_reg[6]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[7] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[7]),
        .Q(indvar_flatten_fu_72_reg[7]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \indvar_flatten_fu_72_reg[8] 
       (.C(ap_clk),
        .CE(i_fu_680),
        .D(add_ln8_fu_157_p2[8]),
        .Q(indvar_flatten_fu_72_reg[8]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  LUT1 #(
    .INIT(2'h1)) 
    \k_fu_64[0]_i_1 
       (.I0(\add_ln16_2_reg_327_reg[0]_0 ),
        .O(add_ln12_fu_261_p2[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \k_fu_64[1]_i_1 
       (.I0(\add_ln16_2_reg_327_reg[0]_0 ),
        .I1(select_ln8_reg_322[1]),
        .O(add_ln12_fu_261_p2[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \k_fu_64[2]_i_1 
       (.I0(\add_ln16_2_reg_327_reg[0]_0 ),
        .I1(select_ln8_reg_322[1]),
        .I2(select_ln8_reg_322[2]),
        .O(add_ln12_fu_261_p2[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \k_fu_64[3]_i_1 
       (.I0(select_ln8_reg_322[1]),
        .I1(\add_ln16_2_reg_327_reg[0]_0 ),
        .I2(select_ln8_reg_322[2]),
        .I3(select_ln8_reg_322[3]),
        .O(add_ln12_fu_261_p2[3]));
  LUT3 #(
    .INIT(8'h08)) 
    \k_fu_64[4]_i_2 
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .I2(icmp_ln8_reg_318),
        .O(k_fu_64_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \k_fu_64[4]_i_3 
       (.I0(select_ln8_reg_322[2]),
        .I1(\add_ln16_2_reg_327_reg[0]_0 ),
        .I2(select_ln8_reg_322[1]),
        .I3(select_ln8_reg_322[3]),
        .I4(select_ln8_reg_322[4]),
        .O(add_ln12_fu_261_p2[4]));
  FDSE \k_fu_64_reg[0] 
       (.C(ap_clk),
        .CE(k_fu_64_0),
        .D(add_ln12_fu_261_p2[0]),
        .Q(k_fu_64[0]),
        .S(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \k_fu_64_reg[1] 
       (.C(ap_clk),
        .CE(k_fu_64_0),
        .D(add_ln12_fu_261_p2[1]),
        .Q(k_fu_64[1]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \k_fu_64_reg[2] 
       (.C(ap_clk),
        .CE(k_fu_64_0),
        .D(add_ln12_fu_261_p2[2]),
        .Q(k_fu_64[2]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \k_fu_64_reg[3] 
       (.C(ap_clk),
        .CE(k_fu_64_0),
        .D(add_ln12_fu_261_p2[3]),
        .Q(k_fu_64[3]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  FDRE \k_fu_64_reg[4] 
       (.C(ap_clk),
        .CE(k_fu_64_0),
        .D(add_ln12_fu_261_p2[4]),
        .Q(k_fu_64[4]),
        .R(flow_control_loop_pipe_sequential_init_U_n_9));
  bd_0_hls_inst_0_gaussian_mul_32s_32s_32_1_1 mul_32s_32s_32_1_1_U1
       (.\A_d0[31] (reg_125[31:16]),
        .A_d0_carry__1_i_8_0(\mul_ln16_reg_343_reg[16]__0_n_0 ),
        .A_q0(A_q0),
        .A_q1(A_q1),
        .\A_q1[16] ({mul_32s_32s_32_1_1_U1_n_81,mul_32s_32s_32_1_1_U1_n_82,mul_32s_32s_32_1_1_U1_n_83,mul_32s_32s_32_1_1_U1_n_84,mul_32s_32s_32_1_1_U1_n_85,mul_32s_32s_32_1_1_U1_n_86,mul_32s_32s_32_1_1_U1_n_87,mul_32s_32s_32_1_1_U1_n_88,mul_32s_32s_32_1_1_U1_n_89,mul_32s_32s_32_1_1_U1_n_90,mul_32s_32s_32_1_1_U1_n_91,mul_32s_32s_32_1_1_U1_n_92,mul_32s_32s_32_1_1_U1_n_93,mul_32s_32s_32_1_1_U1_n_94,mul_32s_32s_32_1_1_U1_n_95,mul_32s_32s_32_1_1_U1_n_96,mul_32s_32s_32_1_1_U1_n_97}),
        .B({mul_32s_32s_32_1_1_U1_n_1,mul_32s_32s_32_1_1_U1_n_2,mul_32s_32s_32_1_1_U1_n_3,mul_32s_32s_32_1_1_U1_n_4,mul_32s_32s_32_1_1_U1_n_5,mul_32s_32s_32_1_1_U1_n_6,mul_32s_32s_32_1_1_U1_n_7,mul_32s_32s_32_1_1_U1_n_8,mul_32s_32s_32_1_1_U1_n_9,mul_32s_32s_32_1_1_U1_n_10,mul_32s_32s_32_1_1_U1_n_11,mul_32s_32s_32_1_1_U1_n_12,mul_32s_32s_32_1_1_U1_n_13,mul_32s_32s_32_1_1_U1_n_14,mul_32s_32s_32_1_1_U1_n_15}),
        .CEA2(reg_125_1),
        .D({mul_32s_32s_32_1_1_U1_n_16,mul_32s_32s_32_1_1_U1_n_17,mul_32s_32s_32_1_1_U1_n_18,mul_32s_32s_32_1_1_U1_n_19,mul_32s_32s_32_1_1_U1_n_20,mul_32s_32s_32_1_1_U1_n_21,mul_32s_32s_32_1_1_U1_n_22,mul_32s_32s_32_1_1_U1_n_23,mul_32s_32s_32_1_1_U1_n_24,mul_32s_32s_32_1_1_U1_n_25,mul_32s_32s_32_1_1_U1_n_26,mul_32s_32s_32_1_1_U1_n_27,mul_32s_32s_32_1_1_U1_n_28,mul_32s_32s_32_1_1_U1_n_29,mul_32s_32s_32_1_1_U1_n_30,mul_32s_32s_32_1_1_U1_n_31,mul_32s_32s_32_1_1_U1_n_32}),
        .P({mul_ln16_reg_343_reg_n_91,mul_ln16_reg_343_reg_n_92,mul_ln16_reg_343_reg_n_93,mul_ln16_reg_343_reg_n_94,mul_ln16_reg_343_reg_n_95,mul_ln16_reg_343_reg_n_96,mul_ln16_reg_343_reg_n_97,mul_ln16_reg_343_reg_n_98,mul_ln16_reg_343_reg_n_99,mul_ln16_reg_343_reg_n_100,mul_ln16_reg_343_reg_n_101,mul_ln16_reg_343_reg_n_102,mul_ln16_reg_343_reg_n_103,mul_ln16_reg_343_reg_n_104,mul_ln16_reg_343_reg_n_105}),
        .PCOUT({mul_32s_32s_32_1_1_U1_n_33,mul_32s_32s_32_1_1_U1_n_34,mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65,mul_32s_32s_32_1_1_U1_n_66,mul_32s_32s_32_1_1_U1_n_67,mul_32s_32s_32_1_1_U1_n_68,mul_32s_32s_32_1_1_U1_n_69,mul_32s_32s_32_1_1_U1_n_70,mul_32s_32s_32_1_1_U1_n_71,mul_32s_32s_32_1_1_U1_n_72,mul_32s_32s_32_1_1_U1_n_73,mul_32s_32s_32_1_1_U1_n_74,mul_32s_32s_32_1_1_U1_n_75,mul_32s_32s_32_1_1_U1_n_76,mul_32s_32s_32_1_1_U1_n_77,mul_32s_32s_32_1_1_U1_n_78,mul_32s_32s_32_1_1_U1_n_79,mul_32s_32s_32_1_1_U1_n_80}),
        .Q(Q[0]),
        .S({mul_32s_32s_32_1_1_U1_n_98,mul_32s_32s_32_1_1_U1_n_99,mul_32s_32s_32_1_1_U1_n_100,mul_32s_32s_32_1_1_U1_n_101,mul_32s_32s_32_1_1_U1_n_102,mul_32s_32s_32_1_1_U1_n_103,mul_32s_32s_32_1_1_U1_n_104,mul_32s_32s_32_1_1_U1_n_105}),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter1(ap_enable_reg_pp0_iter1),
        .c_q0(c_q0[16:0]),
        .icmp_ln8_reg_318(icmp_ln8_reg_318),
        .\reg_125_reg[0] ({ap_CS_fsm_pp0_stage1,\ap_CS_fsm_reg_n_0_[0] }),
        .\reg_125_reg[31] ({mul_32s_32s_32_1_1_U1_n_106,mul_32s_32s_32_1_1_U1_n_107,mul_32s_32s_32_1_1_U1_n_108,mul_32s_32s_32_1_1_U1_n_109,mul_32s_32s_32_1_1_U1_n_110,mul_32s_32s_32_1_1_U1_n_111,mul_32s_32s_32_1_1_U1_n_112,mul_32s_32s_32_1_1_U1_n_113}));
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
    mul_ln16_reg_343_reg
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mul_32s_32s_32_1_1_U1_n_81,mul_32s_32s_32_1_1_U1_n_82,mul_32s_32s_32_1_1_U1_n_83,mul_32s_32s_32_1_1_U1_n_84,mul_32s_32s_32_1_1_U1_n_85,mul_32s_32s_32_1_1_U1_n_86,mul_32s_32s_32_1_1_U1_n_87,mul_32s_32s_32_1_1_U1_n_88,mul_32s_32s_32_1_1_U1_n_89,mul_32s_32s_32_1_1_U1_n_90,mul_32s_32s_32_1_1_U1_n_91,mul_32s_32s_32_1_1_U1_n_92,mul_32s_32s_32_1_1_U1_n_93,mul_32s_32s_32_1_1_U1_n_94,mul_32s_32s_32_1_1_U1_n_95,mul_32s_32s_32_1_1_U1_n_96,mul_32s_32s_32_1_1_U1_n_97}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_mul_ln16_reg_343_reg_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({c_q0[31],c_q0[31],c_q0[31],c_q0[31:17]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_mul_ln16_reg_343_reg_BCOUT_UNCONNECTED[17:0]),
        .C({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_mul_ln16_reg_343_reg_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_mul_ln16_reg_343_reg_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(reg_125_1),
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
        .CEP(ap_CS_fsm_pp0_stage1),
        .CLK(ap_clk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_mul_ln16_reg_343_reg_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_mul_ln16_reg_343_reg_OVERFLOW_UNCONNECTED),
        .P({mul_ln16_reg_343_reg_n_58,mul_ln16_reg_343_reg_n_59,mul_ln16_reg_343_reg_n_60,mul_ln16_reg_343_reg_n_61,mul_ln16_reg_343_reg_n_62,mul_ln16_reg_343_reg_n_63,mul_ln16_reg_343_reg_n_64,mul_ln16_reg_343_reg_n_65,mul_ln16_reg_343_reg_n_66,mul_ln16_reg_343_reg_n_67,mul_ln16_reg_343_reg_n_68,mul_ln16_reg_343_reg_n_69,mul_ln16_reg_343_reg_n_70,mul_ln16_reg_343_reg_n_71,mul_ln16_reg_343_reg_n_72,mul_ln16_reg_343_reg_n_73,mul_ln16_reg_343_reg_n_74,mul_ln16_reg_343_reg_n_75,mul_ln16_reg_343_reg_n_76,mul_ln16_reg_343_reg_n_77,mul_ln16_reg_343_reg_n_78,mul_ln16_reg_343_reg_n_79,mul_ln16_reg_343_reg_n_80,mul_ln16_reg_343_reg_n_81,mul_ln16_reg_343_reg_n_82,mul_ln16_reg_343_reg_n_83,mul_ln16_reg_343_reg_n_84,mul_ln16_reg_343_reg_n_85,mul_ln16_reg_343_reg_n_86,mul_ln16_reg_343_reg_n_87,mul_ln16_reg_343_reg_n_88,mul_ln16_reg_343_reg_n_89,mul_ln16_reg_343_reg_n_90,mul_ln16_reg_343_reg_n_91,mul_ln16_reg_343_reg_n_92,mul_ln16_reg_343_reg_n_93,mul_ln16_reg_343_reg_n_94,mul_ln16_reg_343_reg_n_95,mul_ln16_reg_343_reg_n_96,mul_ln16_reg_343_reg_n_97,mul_ln16_reg_343_reg_n_98,mul_ln16_reg_343_reg_n_99,mul_ln16_reg_343_reg_n_100,mul_ln16_reg_343_reg_n_101,mul_ln16_reg_343_reg_n_102,mul_ln16_reg_343_reg_n_103,mul_ln16_reg_343_reg_n_104,mul_ln16_reg_343_reg_n_105}),
        .PATTERNBDETECT(NLW_mul_ln16_reg_343_reg_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_mul_ln16_reg_343_reg_PATTERNDETECT_UNCONNECTED),
        .PCIN({mul_32s_32s_32_1_1_U1_n_33,mul_32s_32s_32_1_1_U1_n_34,mul_32s_32s_32_1_1_U1_n_35,mul_32s_32s_32_1_1_U1_n_36,mul_32s_32s_32_1_1_U1_n_37,mul_32s_32s_32_1_1_U1_n_38,mul_32s_32s_32_1_1_U1_n_39,mul_32s_32s_32_1_1_U1_n_40,mul_32s_32s_32_1_1_U1_n_41,mul_32s_32s_32_1_1_U1_n_42,mul_32s_32s_32_1_1_U1_n_43,mul_32s_32s_32_1_1_U1_n_44,mul_32s_32s_32_1_1_U1_n_45,mul_32s_32s_32_1_1_U1_n_46,mul_32s_32s_32_1_1_U1_n_47,mul_32s_32s_32_1_1_U1_n_48,mul_32s_32s_32_1_1_U1_n_49,mul_32s_32s_32_1_1_U1_n_50,mul_32s_32s_32_1_1_U1_n_51,mul_32s_32s_32_1_1_U1_n_52,mul_32s_32s_32_1_1_U1_n_53,mul_32s_32s_32_1_1_U1_n_54,mul_32s_32s_32_1_1_U1_n_55,mul_32s_32s_32_1_1_U1_n_56,mul_32s_32s_32_1_1_U1_n_57,mul_32s_32s_32_1_1_U1_n_58,mul_32s_32s_32_1_1_U1_n_59,mul_32s_32s_32_1_1_U1_n_60,mul_32s_32s_32_1_1_U1_n_61,mul_32s_32s_32_1_1_U1_n_62,mul_32s_32s_32_1_1_U1_n_63,mul_32s_32s_32_1_1_U1_n_64,mul_32s_32s_32_1_1_U1_n_65,mul_32s_32s_32_1_1_U1_n_66,mul_32s_32s_32_1_1_U1_n_67,mul_32s_32s_32_1_1_U1_n_68,mul_32s_32s_32_1_1_U1_n_69,mul_32s_32s_32_1_1_U1_n_70,mul_32s_32s_32_1_1_U1_n_71,mul_32s_32s_32_1_1_U1_n_72,mul_32s_32s_32_1_1_U1_n_73,mul_32s_32s_32_1_1_U1_n_74,mul_32s_32s_32_1_1_U1_n_75,mul_32s_32s_32_1_1_U1_n_76,mul_32s_32s_32_1_1_U1_n_77,mul_32s_32s_32_1_1_U1_n_78,mul_32s_32s_32_1_1_U1_n_79,mul_32s_32s_32_1_1_U1_n_80}),
        .PCOUT(NLW_mul_ln16_reg_343_reg_PCOUT_UNCONNECTED[47:0]),
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
        .UNDERFLOW(NLW_mul_ln16_reg_343_reg_UNDERFLOW_UNCONNECTED),
        .XOROUT(NLW_mul_ln16_reg_343_reg_XOROUT_UNCONNECTED[7:0]));
  FDRE \mul_ln16_reg_343_reg[0]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_32),
        .Q(\mul_ln16_reg_343_reg[0]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[10]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_22),
        .Q(\mul_ln16_reg_343_reg[10]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[11]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_21),
        .Q(\mul_ln16_reg_343_reg[11]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[12]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_20),
        .Q(\mul_ln16_reg_343_reg[12]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[13]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_19),
        .Q(\mul_ln16_reg_343_reg[13]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[14]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_18),
        .Q(\mul_ln16_reg_343_reg[14]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[15]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_17),
        .Q(\mul_ln16_reg_343_reg[15]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[16]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_16),
        .Q(\mul_ln16_reg_343_reg[16]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[1]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_31),
        .Q(\mul_ln16_reg_343_reg[1]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[2]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_30),
        .Q(\mul_ln16_reg_343_reg[2]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[3]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_29),
        .Q(\mul_ln16_reg_343_reg[3]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[4]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_28),
        .Q(\mul_ln16_reg_343_reg[4]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[5]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_27),
        .Q(\mul_ln16_reg_343_reg[5]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[6]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_26),
        .Q(\mul_ln16_reg_343_reg[6]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[7]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_25),
        .Q(\mul_ln16_reg_343_reg[7]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[8]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_24),
        .Q(\mul_ln16_reg_343_reg[8]__0_n_0 ),
        .R(1'b0));
  FDRE \mul_ln16_reg_343_reg[9]__0 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(mul_32s_32s_32_1_1_U1_n_23),
        .Q(\mul_ln16_reg_343_reg[9]__0_n_0 ),
        .R(1'b0));
  FDRE \reg_125_reg[0] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_97),
        .Q(reg_125[0]),
        .R(1'b0));
  FDRE \reg_125_reg[10] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_87),
        .Q(reg_125[10]),
        .R(1'b0));
  FDRE \reg_125_reg[11] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_86),
        .Q(reg_125[11]),
        .R(1'b0));
  FDRE \reg_125_reg[12] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_85),
        .Q(reg_125[12]),
        .R(1'b0));
  FDRE \reg_125_reg[13] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_84),
        .Q(reg_125[13]),
        .R(1'b0));
  FDRE \reg_125_reg[14] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_83),
        .Q(reg_125[14]),
        .R(1'b0));
  FDRE \reg_125_reg[15] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_82),
        .Q(reg_125[15]),
        .R(1'b0));
  FDRE \reg_125_reg[16] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_81),
        .Q(reg_125[16]),
        .R(1'b0));
  FDRE \reg_125_reg[17] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_15),
        .Q(reg_125[17]),
        .R(1'b0));
  FDRE \reg_125_reg[18] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_14),
        .Q(reg_125[18]),
        .R(1'b0));
  FDRE \reg_125_reg[19] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_13),
        .Q(reg_125[19]),
        .R(1'b0));
  FDRE \reg_125_reg[1] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_96),
        .Q(reg_125[1]),
        .R(1'b0));
  FDRE \reg_125_reg[20] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_12),
        .Q(reg_125[20]),
        .R(1'b0));
  FDRE \reg_125_reg[21] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_11),
        .Q(reg_125[21]),
        .R(1'b0));
  FDRE \reg_125_reg[22] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_10),
        .Q(reg_125[22]),
        .R(1'b0));
  FDRE \reg_125_reg[23] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_9),
        .Q(reg_125[23]),
        .R(1'b0));
  FDRE \reg_125_reg[24] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_8),
        .Q(reg_125[24]),
        .R(1'b0));
  FDRE \reg_125_reg[25] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_7),
        .Q(reg_125[25]),
        .R(1'b0));
  FDRE \reg_125_reg[26] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_6),
        .Q(reg_125[26]),
        .R(1'b0));
  FDRE \reg_125_reg[27] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_5),
        .Q(reg_125[27]),
        .R(1'b0));
  FDRE \reg_125_reg[28] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_4),
        .Q(reg_125[28]),
        .R(1'b0));
  FDRE \reg_125_reg[29] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_3),
        .Q(reg_125[29]),
        .R(1'b0));
  FDRE \reg_125_reg[2] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_95),
        .Q(reg_125[2]),
        .R(1'b0));
  FDRE \reg_125_reg[30] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_2),
        .Q(reg_125[30]),
        .R(1'b0));
  FDRE \reg_125_reg[31] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_1),
        .Q(reg_125[31]),
        .R(1'b0));
  FDRE \reg_125_reg[3] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_94),
        .Q(reg_125[3]),
        .R(1'b0));
  FDRE \reg_125_reg[4] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_93),
        .Q(reg_125[4]),
        .R(1'b0));
  FDRE \reg_125_reg[5] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_92),
        .Q(reg_125[5]),
        .R(1'b0));
  FDRE \reg_125_reg[6] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_91),
        .Q(reg_125[6]),
        .R(1'b0));
  FDRE \reg_125_reg[7] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_90),
        .Q(reg_125[7]),
        .R(1'b0));
  FDRE \reg_125_reg[8] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_89),
        .Q(reg_125[8]),
        .R(1'b0));
  FDRE \reg_125_reg[9] 
       (.C(ap_clk),
        .CE(reg_125_1),
        .D(mul_32s_32s_32_1_1_U1_n_88),
        .Q(reg_125[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \select_ln8_reg_322[2]_i_1 
       (.I0(k_fu_64[2]),
        .I1(k_fu_64[0]),
        .I2(k_fu_64[1]),
        .I3(k_fu_64[4]),
        .I4(k_fu_64[3]),
        .O(zext_ln16_fu_227_p1[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \select_ln8_reg_322[4]_i_1 
       (.I0(k_fu_64[4]),
        .I1(k_fu_64[3]),
        .I2(k_fu_64[1]),
        .I3(k_fu_64[0]),
        .I4(k_fu_64[2]),
        .O(zext_ln16_fu_227_p1[4]));
  FDRE \select_ln8_reg_322_reg[1] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(k_fu_64[1]),
        .Q(select_ln8_reg_322[1]),
        .R(1'b0));
  FDRE \select_ln8_reg_322_reg[2] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(zext_ln16_fu_227_p1[2]),
        .Q(select_ln8_reg_322[2]),
        .R(1'b0));
  FDRE \select_ln8_reg_322_reg[3] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(k_fu_64[3]),
        .Q(select_ln8_reg_322[3]),
        .R(1'b0));
  FDRE \select_ln8_reg_322_reg[4] 
       (.C(ap_clk),
        .CE(add_ln16_2_reg_3270),
        .D(zext_ln16_fu_227_p1[4]),
        .Q(select_ln8_reg_322[4]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gaussian_mul_32s_32s_32_1_1" *) 
module bd_0_hls_inst_0_gaussian_mul_32s_32s_32_1_1
   (CEA2,
    B,
    D,
    PCOUT,
    \A_q1[16] ,
    S,
    \reg_125_reg[31] ,
    Q,
    \reg_125_reg[0] ,
    ap_clk,
    c_q0,
    P,
    A_d0_carry__1_i_8_0,
    ap_enable_reg_pp0_iter1,
    icmp_ln8_reg_318,
    A_q1,
    A_q0,
    \A_d0[31] );
  output CEA2;
  output [14:0]B;
  output [16:0]D;
  output [47:0]PCOUT;
  output [16:0]\A_q1[16] ;
  output [7:0]S;
  output [7:0]\reg_125_reg[31] ;
  input [0:0]Q;
  input [1:0]\reg_125_reg[0] ;
  input ap_clk;
  input [16:0]c_q0;
  input [14:0]P;
  input [0:0]A_d0_carry__1_i_8_0;
  input ap_enable_reg_pp0_iter1;
  input icmp_ln8_reg_318;
  input [31:0]A_q1;
  input [31:0]A_q0;
  input [15:0]\A_d0[31] ;

  wire [15:0]\A_d0[31] ;
  wire [0:0]A_d0_carry__1_i_8_0;
  wire [31:0]A_q0;
  wire [31:0]A_q1;
  wire [16:0]\A_q1[16] ;
  wire [14:0]B;
  wire CEA2;
  wire [16:0]D;
  wire [14:0]P;
  wire [47:0]PCOUT;
  wire [0:0]Q;
  wire [7:0]S;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter1;
  wire [16:0]c_q0;
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
  wire icmp_ln8_reg_318;
  wire [31:16]mul_ln16_reg_343_reg__1;
  wire [1:0]\reg_125_reg[0] ;
  wire [7:0]\reg_125_reg[31] ;
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
    .INIT(4'h9)) 
    A_d0_carry__1_i_1
       (.I0(\A_d0[31] [7]),
        .I1(mul_ln16_reg_343_reg__1[23]),
        .O(S[7]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__1_i_2
       (.I0(\A_d0[31] [6]),
        .I1(mul_ln16_reg_343_reg__1[22]),
        .O(S[6]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__1_i_3
       (.I0(\A_d0[31] [5]),
        .I1(mul_ln16_reg_343_reg__1[21]),
        .O(S[5]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__1_i_4
       (.I0(\A_d0[31] [4]),
        .I1(mul_ln16_reg_343_reg__1[20]),
        .O(S[4]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__1_i_5
       (.I0(\A_d0[31] [3]),
        .I1(mul_ln16_reg_343_reg__1[19]),
        .O(S[3]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__1_i_6
       (.I0(\A_d0[31] [2]),
        .I1(mul_ln16_reg_343_reg__1[18]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__1_i_7
       (.I0(\A_d0[31] [1]),
        .I1(mul_ln16_reg_343_reg__1[17]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__1_i_8
       (.I0(\A_d0[31] [0]),
        .I1(mul_ln16_reg_343_reg__1[16]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_1
       (.I0(\A_d0[31] [15]),
        .I1(mul_ln16_reg_343_reg__1[31]),
        .O(\reg_125_reg[31] [7]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_2
       (.I0(\A_d0[31] [14]),
        .I1(mul_ln16_reg_343_reg__1[30]),
        .O(\reg_125_reg[31] [6]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_3
       (.I0(\A_d0[31] [13]),
        .I1(mul_ln16_reg_343_reg__1[29]),
        .O(\reg_125_reg[31] [5]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_4
       (.I0(\A_d0[31] [12]),
        .I1(mul_ln16_reg_343_reg__1[28]),
        .O(\reg_125_reg[31] [4]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_5
       (.I0(\A_d0[31] [11]),
        .I1(mul_ln16_reg_343_reg__1[27]),
        .O(\reg_125_reg[31] [3]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_6
       (.I0(\A_d0[31] [10]),
        .I1(mul_ln16_reg_343_reg__1[26]),
        .O(\reg_125_reg[31] [2]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_7
       (.I0(\A_d0[31] [9]),
        .I1(mul_ln16_reg_343_reg__1[25]),
        .O(\reg_125_reg[31] [1]));
  LUT2 #(
    .INIT(4'h9)) 
    A_d0_carry__2_i_8
       (.I0(\A_d0[31] [8]),
        .I1(mul_ln16_reg_343_reg__1[24]),
        .O(\reg_125_reg[31] [0]));
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,c_q0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({B[14],B[14],B[14],B}),
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
        .CEB2(CEA2),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(\reg_125_reg[0] [1]),
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
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\A_q1[16] }),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dout__0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,c_q0}),
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
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_1
       (.I0(A_q1[16]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[16]),
        .O(\A_q1[16] [16]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_10
       (.I0(A_q1[7]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[7]),
        .O(\A_q1[16] [7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_11
       (.I0(A_q1[6]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[6]),
        .O(\A_q1[16] [6]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_12
       (.I0(A_q1[5]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[5]),
        .O(\A_q1[16] [5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_13
       (.I0(A_q1[4]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[4]),
        .O(\A_q1[16] [4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_14
       (.I0(A_q1[3]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[3]),
        .O(\A_q1[16] [3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_15
       (.I0(A_q1[2]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[2]),
        .O(\A_q1[16] [2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_16
       (.I0(A_q1[1]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[1]),
        .O(\A_q1[16] [1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_17
       (.I0(A_q1[0]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[0]),
        .O(\A_q1[16] [0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_2
       (.I0(A_q1[15]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[15]),
        .O(\A_q1[16] [15]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_3
       (.I0(A_q1[14]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[14]),
        .O(\A_q1[16] [14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_4
       (.I0(A_q1[13]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[13]),
        .O(\A_q1[16] [13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_5
       (.I0(A_q1[12]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[12]),
        .O(\A_q1[16] [12]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_6
       (.I0(A_q1[11]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[11]),
        .O(\A_q1[16] [11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_7
       (.I0(A_q1[10]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[10]),
        .O(\A_q1[16] [10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_8
       (.I0(A_q1[9]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[9]),
        .O(\A_q1[16] [9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout__0_i_9
       (.I0(A_q1[8]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[8]),
        .O(\A_q1[16] [8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({dout_carry_n_0,dout_carry_n_1,dout_carry_n_2,dout_carry_n_3,dout_carry_n_4,dout_carry_n_5,dout_carry_n_6,dout_carry_n_7}),
        .DI({P[6:0],1'b0}),
        .O(mul_ln16_reg_343_reg__1[23:16]),
        .S({dout_carry_i_1_n_0,dout_carry_i_2_n_0,dout_carry_i_3_n_0,dout_carry_i_4_n_0,dout_carry_i_5_n_0,dout_carry_i_6_n_0,dout_carry_i_7_n_0,A_d0_carry__1_i_8_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 dout_carry__0
       (.CI(dout_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_dout_carry__0_CO_UNCONNECTED[7],dout_carry__0_n_1,dout_carry__0_n_2,dout_carry__0_n_3,dout_carry__0_n_4,dout_carry__0_n_5,dout_carry__0_n_6,dout_carry__0_n_7}),
        .DI({1'b0,P[13:7]}),
        .O(mul_ln16_reg_343_reg__1[31:24]),
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
  LUT4 #(
    .INIT(16'hAA08)) 
    dout_i_1
       (.I0(ap_enable_reg_pp0_iter1),
        .I1(\reg_125_reg[0] [0]),
        .I2(icmp_ln8_reg_318),
        .I3(\reg_125_reg[0] [1]),
        .O(CEA2));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_10
       (.I0(A_q1[23]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[23]),
        .O(B[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_11
       (.I0(A_q1[22]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[22]),
        .O(B[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_12
       (.I0(A_q1[21]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[21]),
        .O(B[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_13
       (.I0(A_q1[20]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[20]),
        .O(B[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_14
       (.I0(A_q1[19]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[19]),
        .O(B[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_15
       (.I0(A_q1[18]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[18]),
        .O(B[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_16
       (.I0(A_q1[17]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[17]),
        .O(B[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_2
       (.I0(A_q1[31]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[31]),
        .O(B[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_3
       (.I0(A_q1[30]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[30]),
        .O(B[13]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_4
       (.I0(A_q1[29]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[29]),
        .O(B[12]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_5
       (.I0(A_q1[28]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[28]),
        .O(B[11]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_6
       (.I0(A_q1[27]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[27]),
        .O(B[10]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_7
       (.I0(A_q1[26]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[26]),
        .O(B[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_8
       (.I0(A_q1[25]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[25]),
        .O(B[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    dout_i_9
       (.I0(A_q1[24]),
        .I1(\reg_125_reg[0] [1]),
        .I2(A_q0[24]),
        .O(B[7]));
endmodule

(* ORIG_REF_NAME = "gaussian_mul_5ns_6ns_9_1_1" *) 
module bd_0_hls_inst_0_gaussian_mul_5ns_6ns_9_1_1
   (D,
    Q);
  output [5:0]D;
  input [4:0]Q;

  wire [5:0]D;
  wire [4:0]Q;
  wire dout__1_carry_i_1_n_0;
  wire dout__1_carry_i_2_n_0;
  wire dout__1_carry_i_3_n_0;
  wire dout__1_carry_i_4_n_0;
  wire dout__1_carry_i_5_n_0;
  wire dout__1_carry_i_6_n_0;
  wire dout__1_carry_i_7_n_0;
  wire dout__1_carry_i_8_n_0;
  wire dout__1_carry_i_9_n_0;
  wire dout__1_carry_n_3;
  wire dout__1_carry_n_4;
  wire dout__1_carry_n_5;
  wire dout__1_carry_n_6;
  wire dout__1_carry_n_7;
  wire [7:5]NLW_dout__1_carry_CO_UNCONNECTED;
  wire [7:6]NLW_dout__1_carry_O_UNCONNECTED;

  CARRY8 dout__1_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({NLW_dout__1_carry_CO_UNCONNECTED[7:5],dout__1_carry_n_3,dout__1_carry_n_4,dout__1_carry_n_5,dout__1_carry_n_6,dout__1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,dout__1_carry_i_1_n_0,dout__1_carry_i_2_n_0,dout__1_carry_i_3_n_0,Q[0],1'b0}),
        .O({NLW_dout__1_carry_O_UNCONNECTED[7:6],D}),
        .S({1'b0,1'b0,dout__1_carry_i_4_n_0,dout__1_carry_i_5_n_0,dout__1_carry_i_6_n_0,dout__1_carry_i_7_n_0,dout__1_carry_i_8_n_0,dout__1_carry_i_9_n_0}));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h9)) 
    dout__1_carry_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .O(dout__1_carry_i_1_n_0));
  LUT5 #(
    .INIT(32'h0000575F)) 
    dout__1_carry_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[4]),
        .O(dout__1_carry_i_2_n_0));
  LUT5 #(
    .INIT(32'hABAFF555)) 
    dout__1_carry_i_3
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(dout__1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hFE57)) 
    dout__1_carry_i_4
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .O(dout__1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h6669666955565956)) 
    dout__1_carry_i_5
       (.I0(dout__1_carry_i_1_n_0),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[4]),
        .O(dout__1_carry_i_5_n_0));
  (* HLUTNM = "lutpair0" *) 
  LUT5 #(
    .INIT(32'h67636969)) 
    dout__1_carry_i_6
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[4]),
        .I3(Q[0]),
        .I4(Q[3]),
        .O(dout__1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'hEE575588)) 
    dout__1_carry_i_7
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[1]),
        .O(dout__1_carry_i_7_n_0));
  LUT5 #(
    .INIT(32'h24DBD32C)) 
    dout__1_carry_i_8
       (.I0(Q[1]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[0]),
        .O(dout__1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'hA65A)) 
    dout__1_carry_i_9
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(dout__1_carry_i_9_n_0));
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
