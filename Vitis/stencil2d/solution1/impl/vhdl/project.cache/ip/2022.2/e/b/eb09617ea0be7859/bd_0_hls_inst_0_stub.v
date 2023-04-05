// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Mar 30 00:13:08 2023
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
(* x_core_info = "stencil_2d,Vivado 2022.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(orig_ce0, orig_ce1, sol_ce0, sol_we0, filter_ce0, 
  filter_ce1, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, ap_return, orig_address0, 
  orig_q0, orig_address1, orig_q1, sol_address0, sol_d0, filter_address0, filter_q0, 
  filter_address1, filter_q1)
/* synthesis syn_black_box black_box_pad_pin="orig_ce0,orig_ce1,sol_ce0,sol_we0,filter_ce0,filter_ce1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],orig_address0[9:0],orig_q0[31:0],orig_address1[9:0],orig_q1[31:0],sol_address0[9:0],sol_d0[31:0],filter_address0[3:0],filter_q0[31:0],filter_address1[3:0],filter_q1[31:0]" */;
  output orig_ce0;
  output orig_ce1;
  output sol_ce0;
  output sol_we0;
  output filter_ce0;
  output filter_ce1;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  output [9:0]orig_address0;
  input [31:0]orig_q0;
  output [9:0]orig_address1;
  input [31:0]orig_q1;
  output [9:0]sol_address0;
  output [31:0]sol_d0;
  output [3:0]filter_address0;
  input [31:0]filter_q0;
  output [3:0]filter_address1;
  input [31:0]filter_q1;
endmodule
