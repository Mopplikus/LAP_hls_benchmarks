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

// SystemVerilog created from bb_atax_B3
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B3 (
    input wire [63:0] in_c0_exe105_0,
    input wire [0:0] in_c0_exe116_0,
    input wire [0:0] in_c0_exe127_0,
    input wire [63:0] in_c0_exe3991_0,
    input wire [31:0] in_c0_exe42_0,
    input wire [0:0] in_c0_exe63_0,
    input wire [0:0] in_c0_exe74_0,
    input wire [31:0] in_c1_exe11078_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe105,
    output wire [0:0] out_c0_exe116,
    output wire [0:0] out_c0_exe127,
    output wire [63:0] out_c0_exe3991,
    output wire [31:0] out_c0_exe42,
    output wire [0:0] out_c0_exe63,
    output wire [0:0] out_c0_exe74,
    output wire [31:0] out_c1_exe11078,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [63:0] atax_B3_branch_out_c0_exe105;
    wire [0:0] atax_B3_branch_out_c0_exe116;
    wire [0:0] atax_B3_branch_out_c0_exe127;
    wire [63:0] atax_B3_branch_out_c0_exe3991;
    wire [31:0] atax_B3_branch_out_c0_exe42;
    wire [0:0] atax_B3_branch_out_c0_exe63;
    wire [0:0] atax_B3_branch_out_c0_exe74;
    wire [31:0] atax_B3_branch_out_c1_exe11078;
    wire [0:0] atax_B3_branch_out_stall_out;
    wire [0:0] atax_B3_branch_out_valid_out_0;
    wire [63:0] atax_B3_merge_out_c0_exe105;
    wire [0:0] atax_B3_merge_out_c0_exe116;
    wire [0:0] atax_B3_merge_out_c0_exe127;
    wire [63:0] atax_B3_merge_out_c0_exe3991;
    wire [31:0] atax_B3_merge_out_c0_exe42;
    wire [0:0] atax_B3_merge_out_c0_exe63;
    wire [0:0] atax_B3_merge_out_c0_exe74;
    wire [31:0] atax_B3_merge_out_c1_exe11078;
    wire [0:0] atax_B3_merge_out_stall_out_0;
    wire [0:0] atax_B3_merge_out_valid_out;
    wire [63:0] bb_atax_B3_stall_region_out_c0_exe105;
    wire [0:0] bb_atax_B3_stall_region_out_c0_exe116;
    wire [0:0] bb_atax_B3_stall_region_out_c0_exe127;
    wire [63:0] bb_atax_B3_stall_region_out_c0_exe3991;
    wire [31:0] bb_atax_B3_stall_region_out_c0_exe42;
    wire [0:0] bb_atax_B3_stall_region_out_c0_exe63;
    wire [0:0] bb_atax_B3_stall_region_out_c0_exe74;
    wire [31:0] bb_atax_B3_stall_region_out_c1_exe11078;
    wire [0:0] bb_atax_B3_stall_region_out_stall_out;
    wire [0:0] bb_atax_B3_stall_region_out_valid_out;


    // atax_B3_merge(BLACKBOX,3)
    atax_B3_merge theatax_B3_merge (
        .in_c0_exe105_0(in_c0_exe105_0),
        .in_c0_exe116_0(in_c0_exe116_0),
        .in_c0_exe127_0(in_c0_exe127_0),
        .in_c0_exe3991_0(in_c0_exe3991_0),
        .in_c0_exe42_0(in_c0_exe42_0),
        .in_c0_exe63_0(in_c0_exe63_0),
        .in_c0_exe74_0(in_c0_exe74_0),
        .in_c1_exe11078_0(in_c1_exe11078_0),
        .in_stall_in(bb_atax_B3_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe105(atax_B3_merge_out_c0_exe105),
        .out_c0_exe116(atax_B3_merge_out_c0_exe116),
        .out_c0_exe127(atax_B3_merge_out_c0_exe127),
        .out_c0_exe3991(atax_B3_merge_out_c0_exe3991),
        .out_c0_exe42(atax_B3_merge_out_c0_exe42),
        .out_c0_exe63(atax_B3_merge_out_c0_exe63),
        .out_c0_exe74(atax_B3_merge_out_c0_exe74),
        .out_c1_exe11078(atax_B3_merge_out_c1_exe11078),
        .out_stall_out_0(atax_B3_merge_out_stall_out_0),
        .out_valid_out(atax_B3_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_stall_region(BLACKBOX,4)
    atax_bb_B3_stall_region thebb_atax_B3_stall_region (
        .in_c0_exe105(atax_B3_merge_out_c0_exe105),
        .in_c0_exe116(atax_B3_merge_out_c0_exe116),
        .in_c0_exe127(atax_B3_merge_out_c0_exe127),
        .in_c0_exe3991(atax_B3_merge_out_c0_exe3991),
        .in_c0_exe42(atax_B3_merge_out_c0_exe42),
        .in_c0_exe63(atax_B3_merge_out_c0_exe63),
        .in_c0_exe74(atax_B3_merge_out_c0_exe74),
        .in_c1_exe11078(atax_B3_merge_out_c1_exe11078),
        .in_stall_in(atax_B3_branch_out_stall_out),
        .in_valid_in(atax_B3_merge_out_valid_out),
        .out_c0_exe105(bb_atax_B3_stall_region_out_c0_exe105),
        .out_c0_exe116(bb_atax_B3_stall_region_out_c0_exe116),
        .out_c0_exe127(bb_atax_B3_stall_region_out_c0_exe127),
        .out_c0_exe3991(bb_atax_B3_stall_region_out_c0_exe3991),
        .out_c0_exe42(bb_atax_B3_stall_region_out_c0_exe42),
        .out_c0_exe63(bb_atax_B3_stall_region_out_c0_exe63),
        .out_c0_exe74(bb_atax_B3_stall_region_out_c0_exe74),
        .out_c1_exe11078(bb_atax_B3_stall_region_out_c1_exe11078),
        .out_stall_out(bb_atax_B3_stall_region_out_stall_out),
        .out_valid_out(bb_atax_B3_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B3_branch(BLACKBOX,2)
    atax_B3_branch theatax_B3_branch (
        .in_c0_exe105(bb_atax_B3_stall_region_out_c0_exe105),
        .in_c0_exe116(bb_atax_B3_stall_region_out_c0_exe116),
        .in_c0_exe127(bb_atax_B3_stall_region_out_c0_exe127),
        .in_c0_exe3991(bb_atax_B3_stall_region_out_c0_exe3991),
        .in_c0_exe42(bb_atax_B3_stall_region_out_c0_exe42),
        .in_c0_exe63(bb_atax_B3_stall_region_out_c0_exe63),
        .in_c0_exe74(bb_atax_B3_stall_region_out_c0_exe74),
        .in_c1_exe11078(bb_atax_B3_stall_region_out_c1_exe11078),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_atax_B3_stall_region_out_valid_out),
        .out_c0_exe105(atax_B3_branch_out_c0_exe105),
        .out_c0_exe116(atax_B3_branch_out_c0_exe116),
        .out_c0_exe127(atax_B3_branch_out_c0_exe127),
        .out_c0_exe3991(atax_B3_branch_out_c0_exe3991),
        .out_c0_exe42(atax_B3_branch_out_c0_exe42),
        .out_c0_exe63(atax_B3_branch_out_c0_exe63),
        .out_c0_exe74(atax_B3_branch_out_c0_exe74),
        .out_c1_exe11078(atax_B3_branch_out_c1_exe11078),
        .out_stall_out(atax_B3_branch_out_stall_out),
        .out_valid_out_0(atax_B3_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe105(GPOUT,15)
    assign out_c0_exe105 = atax_B3_branch_out_c0_exe105;

    // out_c0_exe116(GPOUT,16)
    assign out_c0_exe116 = atax_B3_branch_out_c0_exe116;

    // out_c0_exe127(GPOUT,17)
    assign out_c0_exe127 = atax_B3_branch_out_c0_exe127;

    // out_c0_exe3991(GPOUT,18)
    assign out_c0_exe3991 = atax_B3_branch_out_c0_exe3991;

    // out_c0_exe42(GPOUT,19)
    assign out_c0_exe42 = atax_B3_branch_out_c0_exe42;

    // out_c0_exe63(GPOUT,20)
    assign out_c0_exe63 = atax_B3_branch_out_c0_exe63;

    // out_c0_exe74(GPOUT,21)
    assign out_c0_exe74 = atax_B3_branch_out_c0_exe74;

    // out_c1_exe11078(GPOUT,22)
    assign out_c1_exe11078 = atax_B3_branch_out_c1_exe11078;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = atax_B3_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,24)
    assign out_valid_out_0 = atax_B3_branch_out_valid_out_0;

endmodule
