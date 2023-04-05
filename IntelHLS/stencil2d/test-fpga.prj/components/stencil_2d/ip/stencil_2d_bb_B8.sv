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
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B8 (
    input wire [0:0] in_c0_exe102846_0,
    input wire [0:0] in_c0_exe112859_0,
    input wire [0:0] in_c0_exe1228611_0,
    input wire [0:0] in_c0_exe1328713_0,
    input wire [31:0] in_c0_exe1428815_0,
    input wire [0:0] in_c0_exe1528916_0,
    input wire [31:0] in_c0_exe92833_0,
    input wire [31:0] in_c1_exe118_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe102846,
    output wire [0:0] out_c0_exe112859,
    output wire [0:0] out_c0_exe1228611,
    output wire [0:0] out_c0_exe1328713,
    output wire [31:0] out_c0_exe1428815,
    output wire [31:0] out_c0_exe92833,
    output wire [31:0] out_c1_exe118,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe102846;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe112859;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe1228611;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe1328713;
    wire [31:0] bb_stencil_2d_B8_stall_region_out_c0_exe1428815;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_c0_exe1528916;
    wire [31:0] bb_stencil_2d_B8_stall_region_out_c0_exe92833;
    wire [31:0] bb_stencil_2d_B8_stall_region_out_c1_exe118;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_stall_out;
    wire [0:0] bb_stencil_2d_B8_stall_region_out_valid_out;
    wire [0:0] stencil_2d_B8_branch_out_c0_exe102846;
    wire [0:0] stencil_2d_B8_branch_out_c0_exe112859;
    wire [0:0] stencil_2d_B8_branch_out_c0_exe1228611;
    wire [0:0] stencil_2d_B8_branch_out_c0_exe1328713;
    wire [31:0] stencil_2d_B8_branch_out_c0_exe1428815;
    wire [31:0] stencil_2d_B8_branch_out_c0_exe92833;
    wire [31:0] stencil_2d_B8_branch_out_c1_exe118;
    wire [0:0] stencil_2d_B8_branch_out_stall_out;
    wire [0:0] stencil_2d_B8_branch_out_valid_out_0;
    wire [0:0] stencil_2d_B8_branch_out_valid_out_1;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe102846;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe112859;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe1228611;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe1328713;
    wire [31:0] stencil_2d_B8_merge_out_c0_exe1428815;
    wire [0:0] stencil_2d_B8_merge_out_c0_exe1528916;
    wire [31:0] stencil_2d_B8_merge_out_c0_exe92833;
    wire [31:0] stencil_2d_B8_merge_out_c1_exe118;
    wire [0:0] stencil_2d_B8_merge_out_stall_out_0;
    wire [0:0] stencil_2d_B8_merge_out_valid_out;


    // stencil_2d_B8_merge(BLACKBOX,26)
    stencil_2d_B8_merge thestencil_2d_B8_merge (
        .in_c0_exe102846_0(in_c0_exe102846_0),
        .in_c0_exe112859_0(in_c0_exe112859_0),
        .in_c0_exe1228611_0(in_c0_exe1228611_0),
        .in_c0_exe1328713_0(in_c0_exe1328713_0),
        .in_c0_exe1428815_0(in_c0_exe1428815_0),
        .in_c0_exe1528916_0(in_c0_exe1528916_0),
        .in_c0_exe92833_0(in_c0_exe92833_0),
        .in_c1_exe118_0(in_c1_exe118_0),
        .in_stall_in(bb_stencil_2d_B8_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe102846(stencil_2d_B8_merge_out_c0_exe102846),
        .out_c0_exe112859(stencil_2d_B8_merge_out_c0_exe112859),
        .out_c0_exe1228611(stencil_2d_B8_merge_out_c0_exe1228611),
        .out_c0_exe1328713(stencil_2d_B8_merge_out_c0_exe1328713),
        .out_c0_exe1428815(stencil_2d_B8_merge_out_c0_exe1428815),
        .out_c0_exe1528916(stencil_2d_B8_merge_out_c0_exe1528916),
        .out_c0_exe92833(stencil_2d_B8_merge_out_c0_exe92833),
        .out_c1_exe118(stencil_2d_B8_merge_out_c1_exe118),
        .out_stall_out_0(stencil_2d_B8_merge_out_stall_out_0),
        .out_valid_out(stencil_2d_B8_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B8_stall_region(BLACKBOX,2)
    stencil_2d_bb_B8_stall_region thebb_stencil_2d_B8_stall_region (
        .in_c0_exe102846(stencil_2d_B8_merge_out_c0_exe102846),
        .in_c0_exe112859(stencil_2d_B8_merge_out_c0_exe112859),
        .in_c0_exe1228611(stencil_2d_B8_merge_out_c0_exe1228611),
        .in_c0_exe1328713(stencil_2d_B8_merge_out_c0_exe1328713),
        .in_c0_exe1428815(stencil_2d_B8_merge_out_c0_exe1428815),
        .in_c0_exe1528916(stencil_2d_B8_merge_out_c0_exe1528916),
        .in_c0_exe92833(stencil_2d_B8_merge_out_c0_exe92833),
        .in_c1_exe118(stencil_2d_B8_merge_out_c1_exe118),
        .in_stall_in(stencil_2d_B8_branch_out_stall_out),
        .in_valid_in(stencil_2d_B8_merge_out_valid_out),
        .out_c0_exe102846(bb_stencil_2d_B8_stall_region_out_c0_exe102846),
        .out_c0_exe112859(bb_stencil_2d_B8_stall_region_out_c0_exe112859),
        .out_c0_exe1228611(bb_stencil_2d_B8_stall_region_out_c0_exe1228611),
        .out_c0_exe1328713(bb_stencil_2d_B8_stall_region_out_c0_exe1328713),
        .out_c0_exe1428815(bb_stencil_2d_B8_stall_region_out_c0_exe1428815),
        .out_c0_exe1528916(bb_stencil_2d_B8_stall_region_out_c0_exe1528916),
        .out_c0_exe92833(bb_stencil_2d_B8_stall_region_out_c0_exe92833),
        .out_c1_exe118(bb_stencil_2d_B8_stall_region_out_c1_exe118),
        .out_stall_out(bb_stencil_2d_B8_stall_region_out_stall_out),
        .out_valid_out(bb_stencil_2d_B8_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B8_branch(BLACKBOX,25)
    stencil_2d_B8_branch thestencil_2d_B8_branch (
        .in_c0_exe102846(bb_stencil_2d_B8_stall_region_out_c0_exe102846),
        .in_c0_exe112859(bb_stencil_2d_B8_stall_region_out_c0_exe112859),
        .in_c0_exe1228611(bb_stencil_2d_B8_stall_region_out_c0_exe1228611),
        .in_c0_exe1328713(bb_stencil_2d_B8_stall_region_out_c0_exe1328713),
        .in_c0_exe1428815(bb_stencil_2d_B8_stall_region_out_c0_exe1428815),
        .in_c0_exe1528916(bb_stencil_2d_B8_stall_region_out_c0_exe1528916),
        .in_c0_exe92833(bb_stencil_2d_B8_stall_region_out_c0_exe92833),
        .in_c1_exe118(bb_stencil_2d_B8_stall_region_out_c1_exe118),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_stencil_2d_B8_stall_region_out_valid_out),
        .out_c0_exe102846(stencil_2d_B8_branch_out_c0_exe102846),
        .out_c0_exe112859(stencil_2d_B8_branch_out_c0_exe112859),
        .out_c0_exe1228611(stencil_2d_B8_branch_out_c0_exe1228611),
        .out_c0_exe1328713(stencil_2d_B8_branch_out_c0_exe1328713),
        .out_c0_exe1428815(stencil_2d_B8_branch_out_c0_exe1428815),
        .out_c0_exe92833(stencil_2d_B8_branch_out_c0_exe92833),
        .out_c1_exe118(stencil_2d_B8_branch_out_c1_exe118),
        .out_stall_out(stencil_2d_B8_branch_out_stall_out),
        .out_valid_out_0(stencil_2d_B8_branch_out_valid_out_0),
        .out_valid_out_1(stencil_2d_B8_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe102846(GPOUT,14)
    assign out_c0_exe102846 = stencil_2d_B8_branch_out_c0_exe102846;

    // out_c0_exe112859(GPOUT,15)
    assign out_c0_exe112859 = stencil_2d_B8_branch_out_c0_exe112859;

    // out_c0_exe1228611(GPOUT,16)
    assign out_c0_exe1228611 = stencil_2d_B8_branch_out_c0_exe1228611;

    // out_c0_exe1328713(GPOUT,17)
    assign out_c0_exe1328713 = stencil_2d_B8_branch_out_c0_exe1328713;

    // out_c0_exe1428815(GPOUT,18)
    assign out_c0_exe1428815 = stencil_2d_B8_branch_out_c0_exe1428815;

    // out_c0_exe92833(GPOUT,19)
    assign out_c0_exe92833 = stencil_2d_B8_branch_out_c0_exe92833;

    // out_c1_exe118(GPOUT,20)
    assign out_c1_exe118 = stencil_2d_B8_branch_out_c1_exe118;

    // out_stall_in_0(GPOUT,21)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,22)
    assign out_stall_out_0 = stencil_2d_B8_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,23)
    assign out_valid_out_0 = stencil_2d_B8_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,24)
    assign out_valid_out_1 = stencil_2d_B8_branch_out_valid_out_1;

endmodule
