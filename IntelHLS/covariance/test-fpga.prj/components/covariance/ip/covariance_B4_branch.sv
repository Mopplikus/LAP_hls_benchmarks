// ------------------------------------------------------------------------- 
// High Level Design Compiler for Intel(R) FPGAs Version 21.4 (Release Build #53.1)
// 
// Legal Notice: Copyright 2021 Intel Corporation.  All rights reserved.
// Your use of  Intel Corporation's design tools,  logic functions and other
// software and  tools, and its AMPP partner logic functions, and any output
// files any  of the foregoing (including  device programming  or simulation
// files), and  any associated  documentation  or information  are expressly
// subject  to the terms and  conditions of the  Intel FPGA Software License
// Agreement, Intel MegaCore Function License Agreement, or other applicable
// license agreement,  including,  without limitation,  that your use is for
// the  sole  purpose of  programming  logic devices  manufactured by  Intel
// and  sold by Intel  or its authorized  distributors. Please refer  to the
// applicable agreement for further details.
// ---------------------------------------------------------------------------

// SystemVerilog created from covariance_B4_branch
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B4_branch (
    input wire [0:0] in_c0_exe102358,
    input wire [31:0] in_c0_exe112369,
    input wire [31:0] in_c0_exe1201,
    input wire [0:0] in_c0_exe1223710,
    input wire [63:0] in_c0_exe12261,
    input wire [0:0] in_c0_exe1311,
    input wire [0:0] in_c0_exe1412,
    input wire [0:0] in_c0_exe22272,
    input wire [31:0] in_c0_exe62314,
    input wire [0:0] in_c0_exe72325,
    input wire [0:0] in_c0_exe82336,
    input wire [0:0] in_c0_exe92347,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe102358,
    output wire [31:0] out_c0_exe112369,
    output wire [31:0] out_c0_exe1201,
    output wire [0:0] out_c0_exe1223710,
    output wire [63:0] out_c0_exe12261,
    output wire [0:0] out_c0_exe1311,
    output wire [0:0] out_c0_exe1412,
    output wire [0:0] out_c0_exe22272,
    output wire [31:0] out_c0_exe62314,
    output wire [0:0] out_c0_exe72325,
    output wire [0:0] out_c0_exe82336,
    output wire [0:0] out_c0_exe92347,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe102358(GPOUT,16)
    assign out_c0_exe102358 = in_c0_exe102358;

    // out_c0_exe112369(GPOUT,17)
    assign out_c0_exe112369 = in_c0_exe112369;

    // out_c0_exe1201(GPOUT,18)
    assign out_c0_exe1201 = in_c0_exe1201;

    // out_c0_exe1223710(GPOUT,19)
    assign out_c0_exe1223710 = in_c0_exe1223710;

    // out_c0_exe12261(GPOUT,20)
    assign out_c0_exe12261 = in_c0_exe12261;

    // out_c0_exe1311(GPOUT,21)
    assign out_c0_exe1311 = in_c0_exe1311;

    // out_c0_exe1412(GPOUT,22)
    assign out_c0_exe1412 = in_c0_exe1412;

    // out_c0_exe22272(GPOUT,23)
    assign out_c0_exe22272 = in_c0_exe22272;

    // out_c0_exe62314(GPOUT,24)
    assign out_c0_exe62314 = in_c0_exe62314;

    // out_c0_exe72325(GPOUT,25)
    assign out_c0_exe72325 = in_c0_exe72325;

    // out_c0_exe82336(GPOUT,26)
    assign out_c0_exe82336 = in_c0_exe82336;

    // out_c0_exe92347(GPOUT,27)
    assign out_c0_exe92347 = in_c0_exe92347;

    // stall_out(LOGICAL,30)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,28)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,31)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
