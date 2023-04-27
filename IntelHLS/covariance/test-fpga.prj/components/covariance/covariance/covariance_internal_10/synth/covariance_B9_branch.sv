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

// SystemVerilog created from covariance_B9_branch
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B9_branch (
    input wire [31:0] in_c0_exe10351,
    input wire [32:0] in_c0_exe11352,
    input wire [0:0] in_c0_exe12353,
    input wire [31:0] in_c0_exe13354,
    input wire [31:0] in_c0_exe14355,
    input wire [31:0] in_c0_exe15,
    input wire [0:0] in_c0_exe2343,
    input wire [31:0] in_c0_exe3344,
    input wire [31:0] in_c0_exe4345,
    input wire [31:0] in_c0_exe5346,
    input wire [0:0] in_c0_exe6347,
    input wire [31:0] in_c0_exe7348,
    input wire [0:0] in_c0_exe8349,
    input wire [31:0] in_c0_exe9350,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10351,
    output wire [32:0] out_c0_exe11352,
    output wire [0:0] out_c0_exe12353,
    output wire [31:0] out_c0_exe13354,
    output wire [31:0] out_c0_exe14355,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2343,
    output wire [31:0] out_c0_exe3344,
    output wire [31:0] out_c0_exe4345,
    output wire [31:0] out_c0_exe5346,
    output wire [0:0] out_c0_exe6347,
    output wire [31:0] out_c0_exe7348,
    output wire [0:0] out_c0_exe8349,
    output wire [31:0] out_c0_exe9350,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;
    reg [0:0] rst_sync_rst_sclrn;


    // out_c0_exe10351(GPOUT,18)
    assign out_c0_exe10351 = in_c0_exe10351;

    // out_c0_exe11352(GPOUT,19)
    assign out_c0_exe11352 = in_c0_exe11352;

    // out_c0_exe12353(GPOUT,20)
    assign out_c0_exe12353 = in_c0_exe12353;

    // out_c0_exe13354(GPOUT,21)
    assign out_c0_exe13354 = in_c0_exe13354;

    // out_c0_exe14355(GPOUT,22)
    assign out_c0_exe14355 = in_c0_exe14355;

    // out_c0_exe15(GPOUT,23)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe2343(GPOUT,24)
    assign out_c0_exe2343 = in_c0_exe2343;

    // out_c0_exe3344(GPOUT,25)
    assign out_c0_exe3344 = in_c0_exe3344;

    // out_c0_exe4345(GPOUT,26)
    assign out_c0_exe4345 = in_c0_exe4345;

    // out_c0_exe5346(GPOUT,27)
    assign out_c0_exe5346 = in_c0_exe5346;

    // out_c0_exe6347(GPOUT,28)
    assign out_c0_exe6347 = in_c0_exe6347;

    // out_c0_exe7348(GPOUT,29)
    assign out_c0_exe7348 = in_c0_exe7348;

    // out_c0_exe8349(GPOUT,30)
    assign out_c0_exe8349 = in_c0_exe8349;

    // out_c0_exe9350(GPOUT,31)
    assign out_c0_exe9350 = in_c0_exe9350;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,32)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

    // rst_sync(RESETSYNC,35)
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
