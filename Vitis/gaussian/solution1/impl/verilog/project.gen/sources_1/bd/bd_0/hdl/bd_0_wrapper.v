//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Mar 30 01:36:19 2023
//Host        : Frostspark running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (A_address0,
    A_address1,
    A_ce0,
    A_ce1,
    A_d0,
    A_q0,
    A_q1,
    A_we0,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    c_address0,
    c_ce0,
    c_q0);
  output [8:0]A_address0;
  output [8:0]A_address1;
  output A_ce0;
  output A_ce1;
  output [31:0]A_d0;
  input [31:0]A_q0;
  input [31:0]A_q1;
  output A_we0;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [4:0]c_address0;
  output c_ce0;
  input [31:0]c_q0;

  wire [8:0]A_address0;
  wire [8:0]A_address1;
  wire A_ce0;
  wire A_ce1;
  wire [31:0]A_d0;
  wire [31:0]A_q0;
  wire [31:0]A_q1;
  wire A_we0;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [4:0]c_address0;
  wire c_ce0;
  wire [31:0]c_q0;

  bd_0 bd_0_i
       (.A_address0(A_address0),
        .A_address1(A_address1),
        .A_ce0(A_ce0),
        .A_ce1(A_ce1),
        .A_d0(A_d0),
        .A_q0(A_q0),
        .A_q1(A_q1),
        .A_we0(A_we0),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .c_address0(c_address0),
        .c_ce0(c_ce0),
        .c_q0(c_q0));
endmodule
