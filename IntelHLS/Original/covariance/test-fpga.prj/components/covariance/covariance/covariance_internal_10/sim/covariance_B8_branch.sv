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

// SystemVerilog created from covariance_B8_branch
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B8_branch (
    input wire [32:0] in_c0_exe1302,
    input wire [0:0] in_c0_exe3304,
    input wire [31:0] in_c0_exe4305,
    input wire [31:0] in_c0_exe5306,
    input wire [31:0] in_c0_exe6307,
    input wire [31:0] in_c0_exe7308,
    input wire [31:0] in_c0_exe8309,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_c0_exe1302,
    output wire [0:0] out_c0_exe3304,
    output wire [31:0] out_c0_exe4305,
    output wire [31:0] out_c0_exe5306,
    output wire [31:0] out_c0_exe6307,
    output wire [31:0] out_c0_exe7308,
    output wire [31:0] out_c0_exe8309,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe1302(GPOUT,11)
    assign out_c0_exe1302 = in_c0_exe1302;

    // out_c0_exe3304(GPOUT,12)
    assign out_c0_exe3304 = in_c0_exe3304;

    // out_c0_exe4305(GPOUT,13)
    assign out_c0_exe4305 = in_c0_exe4305;

    // out_c0_exe5306(GPOUT,14)
    assign out_c0_exe5306 = in_c0_exe5306;

    // out_c0_exe6307(GPOUT,15)
    assign out_c0_exe6307 = in_c0_exe6307;

    // out_c0_exe7308(GPOUT,16)
    assign out_c0_exe7308 = in_c0_exe7308;

    // out_c0_exe8309(GPOUT,17)
    assign out_c0_exe8309 = in_c0_exe8309;

    // stall_out(LOGICAL,20)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,18)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,21)
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
