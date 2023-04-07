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

// SystemVerilog created from bb_stencil_2d_B8
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B8 (
    input wire [31:0] in_c0_exe21892_0,
    input wire [31:0] in_c0_exe41914_0,
    input wire [0:0] in_c0_exe51927_0,
    input wire [0:0] in_c0_exe61939_0,
    input wire [31:0] in_c0_exe719411_0,
    input wire [0:0] in_c0_exe819512_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe21892,
    output wire [31:0] out_c0_exe41914,
    output wire [0:0] out_c0_exe51927,
    output wire [0:0] out_c0_exe61939,
    output wire [31:0] out_c0_exe719411,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_stencil_2d_B8_stall_region_out_c0_exe21892;
    wire [31:0] bb_stencil_2d_B8_stall_region_out_c0_exe41914;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe51927;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe61939;
    wire [31:0] bb_stencil_2d_B8_stall_region_out_c0_exe719411;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe819512;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_valid_out;
    wire [31:0] stencil_2d_B8_branch_out_c0_exe21892;
    wire [31:0] stencil_2d_B8_branch_out_c0_exe41914;
    wire [0:0] stencil_2d_B8_branch_out_c0_exe51927;
    wire [0:0] stencil_2d_B8_branch_out_c0_exe61939;
    wire [31:0] stencil_2d_B8_branch_out_c0_exe719411;
    wire [0:0] stencil_2d_B8_branch_out_stall_out;
    wire [0:0] stencil_2d_B8_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B8_branch_out_valid_out_1;
    wire [31:0] stencil_2d_B8_merge_out_c0_exe21892;
    wire [31:0] stencil_2d_B8_merge_out_c0_exe41914;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe51927;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe61939;
    wire [31:0] stencil_2d_B8_merge_out_c0_exe719411;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe819512;
    wire [0:0] stencil_2d_B8_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B8_merge_out_valid_out;


    // stencil_2d_B8_merge(BLACKBOX,22)
    stencil_2d_B8_merge thestencil_2d_B8_merge (
        .in_c0_exe21892_0(in_c0_exe21892_0),
        .in_c0_exe41914_0(in_c0_exe41914_0),
        .in_c0_exe51927_0(in_c0_exe51927_0),
        .in_c0_exe61939_0(in_c0_exe61939_0),
        .in_c0_exe719411_0(in_c0_exe719411_0),
        .in_c0_exe819512_0(in_c0_exe819512_0),
        .in_stall_in(bb_stencil_2d_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe21892(stencil_2d_B8_merge_out_c0_exe21892),
        .out_c0_exe41914(stencil_2d_B8_merge_out_c0_exe41914),
        .out_c0_exe51927(stencil_2d_B8_merge_out_c0_exe51927),
        .out_c0_exe61939(stencil_2d_B8_merge_out_c0_exe61939),
        .out_c0_exe719411(stencil_2d_B8_merge_out_c0_exe719411),
        .out_c0_exe819512(stencil_2d_B8_merge_out_c0_exe819512),
        .out_stall_out_0(stencil_2d_B8_merge_out_stall_out_0),
        .out_valid_out(stencil_2d_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B8_stall_region(BLACKBOX,2)
    stencil_2d_bb_B8_stall_region thebb_stencil_2d_B8_stall_region (
        .in_c0_exe21892(stencil_2d_B8_merge_out_c0_exe21892),
        .in_c0_exe41914(stencil_2d_B8_merge_out_c0_exe41914),
        .in_c0_exe51927(stencil_2d_B8_merge_out_c0_exe51927),
        .in_c0_exe61939(stencil_2d_B8_merge_out_c0_exe61939),
        .in_c0_exe719411(stencil_2d_B8_merge_out_c0_exe719411),
        .in_c0_exe819512(stencil_2d_B8_merge_out_c0_exe819512),
        .in_stall_in(stencil_2d_B8_branch_out_stall_out),
        .in_valid_in(stencil_2d_B8_merge_out_valid_out),
        .out_c0_exe21892(bb_stencil_2d_B8_stall_region_out_c0_exe21892),
        .out_c0_exe41914(bb_stencil_2d_B8_stall_region_out_c0_exe41914),
        .out_c0_exe51927(bb_stencil_2d_B8_stall_region_out_c0_exe51927),
        .out_c0_exe61939(bb_stencil_2d_B8_stall_region_out_c0_exe61939),
        .out_c0_exe719411(bb_stencil_2d_B8_stall_region_out_c0_exe719411),
        .out_c0_exe819512(bb_stencil_2d_B8_stall_region_out_c0_exe819512),
        .out_stall_out(bb_stencil_2d_B8_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B8_branch(BLACKBOX,21)
    stencil_2d_B8_branch thestencil_2d_B8_branch (
        .in_c0_exe21892(bb_stencil_2d_B8_stall_region_out_c0_exe21892),
        .in_c0_exe41914(bb_stencil_2d_B8_stall_region_out_c0_exe41914),
        .in_c0_exe51927(bb_stencil_2d_B8_stall_region_out_c0_exe51927),
        .in_c0_exe61939(bb_stencil_2d_B8_stall_region_out_c0_exe61939),
        .in_c0_exe719411(bb_stencil_2d_B8_stall_region_out_c0_exe719411),
        .in_c0_exe819512(bb_stencil_2d_B8_stall_region_out_c0_exe819512),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B8_stall_region_out_valid_out),
        .out_c0_exe21892(stencil_2d_B8_branch_out_c0_exe21892),
        .out_c0_exe41914(stencil_2d_B8_branch_out_c0_exe41914),
        .out_c0_exe51927(stencil_2d_B8_branch_out_c0_exe51927),
        .out_c0_exe61939(stencil_2d_B8_branch_out_c0_exe61939),
        .out_c0_exe719411(stencil_2d_B8_branch_out_c0_exe719411),
        .out_stall_out(stencil_2d_B8_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B8_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe21892(GPOUT,12)
    assign out_c0_exe21892 = stencil_2d_B8_branch_out_c0_exe21892;

    // out_c0_exe41914(GPOUT,13)
    assign out_c0_exe41914 = stencil_2d_B8_branch_out_c0_exe41914;

    // out_c0_exe51927(GPOUT,14)
    assign out_c0_exe51927 = stencil_2d_B8_branch_out_c0_exe51927;

    // out_c0_exe61939(GPOUT,15)
    assign out_c0_exe61939 = stencil_2d_B8_branch_out_c0_exe61939;

    // out_c0_exe719411(GPOUT,16)
    assign out_c0_exe719411 = stencil_2d_B8_branch_out_c0_exe719411;

    // out_stall_in_0(GPOUT,17)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,18)
    assign out_stall_out_0 = stencil_2d_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = stencil_2d_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,20)
    assign out_valid_out_1 = stencil_2d_B8_branch_out_valid_out_1;

endmodule
