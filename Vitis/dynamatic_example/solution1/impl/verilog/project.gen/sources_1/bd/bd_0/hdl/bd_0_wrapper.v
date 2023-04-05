//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Mar 30 00:34:57 2023
//Host        : Frostspark running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (A_address0,
    A_ce0,
    A_q0,
    B_address0,
    B_ce0,
    B_q0,
    ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_return,
    ap_rst,
    n);
  output [6:0]A_address0;
  output A_ce0;
  input [31:0]A_q0;
  output [6:0]B_address0;
  output B_ce0;
  input [31:0]B_q0;
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  output [31:0]ap_return;
  input ap_rst;
  input [31:0]n;

  wire [6:0]A_address0;
  wire A_ce0;
  wire [31:0]A_q0;
  wire [6:0]B_address0;
  wire B_ce0;
  wire [31:0]B_q0;
  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire [31:0]ap_return;
  wire ap_rst;
  wire [31:0]n;

  bd_0 bd_0_i
       (.A_address0(A_address0),
        .A_ce0(A_ce0),
        .A_q0(A_q0),
        .B_address0(B_address0),
        .B_ce0(B_ce0),
        .B_q0(B_q0),
        .ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_return(ap_return),
        .ap_rst(ap_rst),
        .n(n));
endmodule
