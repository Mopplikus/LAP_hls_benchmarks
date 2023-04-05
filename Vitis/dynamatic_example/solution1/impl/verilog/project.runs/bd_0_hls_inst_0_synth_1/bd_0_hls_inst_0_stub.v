// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Mar 30 00:36:28 2023
// Host        : Frostspark running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck24-ubva530-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "example,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(A_ce0, B_ce0, ap_clk, ap_rst, ap_start, ap_done, 
  ap_idle, ap_ready, ap_return, A_address0, A_q0, B_address0, B_q0, n)
/* synthesis syn_black_box black_box_pad_pin="A_ce0,B_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],A_address0[6:0],A_q0[31:0],B_address0[6:0],B_q0[31:0],n[31:0]" */;
  output A_ce0;
  output B_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  output [6:0]A_address0;
  input [31:0]A_q0;
  output [6:0]B_address0;
  input [31:0]B_q0;
  input [31:0]n;
endmodule
