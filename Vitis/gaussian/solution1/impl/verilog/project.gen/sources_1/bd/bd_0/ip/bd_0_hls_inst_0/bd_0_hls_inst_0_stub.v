// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Mar 30 01:37:18 2023
// Host        : Frostspark running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/Elija/AppData/Roaming/Xilinx/Vitis/gaussian/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xck24-ubva530-2LV-c
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gaussian,Vivado 2022.2" *)
module bd_0_hls_inst_0(c_ce0, A_ce0, A_we0, A_ce1, ap_clk, ap_rst, ap_start, 
  ap_done, ap_idle, ap_ready, c_address0, c_q0, A_address0, A_d0, A_q0, A_address1, A_q1)
/* synthesis syn_black_box black_box_pad_pin="c_ce0,A_ce0,A_we0,A_ce1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,c_address0[4:0],c_q0[31:0],A_address0[8:0],A_d0[31:0],A_q0[31:0],A_address1[8:0],A_q1[31:0]" */;
  output c_ce0;
  output A_ce0;
  output A_we0;
  output A_ce1;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [4:0]c_address0;
  input [31:0]c_q0;
  output [8:0]A_address0;
  output [31:0]A_d0;
  input [31:0]A_q0;
  output [8:0]A_address1;
  input [31:0]A_q1;
endmodule
