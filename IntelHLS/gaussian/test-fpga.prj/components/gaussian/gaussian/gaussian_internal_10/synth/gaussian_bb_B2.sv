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

// SystemVerilog created from bb_gaussian_B2
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B2 (
    input wire [0:0] in_c0_exe11451_0,
    input wire [0:0] in_c0_exe21465_0,
    input wire [0:0] in_c0_exe41486_0,
    input wire [31:0] in_c0_exe61508_0,
    input wire [31:0] in_c0_exe715110_0,
    input wire [31:0] in_c0_exe815212_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe187,
    output wire [0:0] out_c0_exe21465,
    output wire [0:0] out_c0_exe41486,
    output wire [31:0] out_c0_exe815212,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B2_stall_region_out_c0_exe11451;
    wire [31:0] bb_gaussian_B2_stall_region_out_c0_exe187;
    wire [0:0] bb_gaussian_B2_stall_region_out_c0_exe21465;
    wire [0:0] bb_gaussian_B2_stall_region_out_c0_exe41486;
    wire [31:0] bb_gaussian_B2_stall_region_out_c0_exe815212;
    wire [31:0] bb_gaussian_B2_stall_region_out_c1_exe1;
    wire [0:0] bb_gaussian_B2_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B2_stall_region_out_valid_out;
    wire [31:0] gaussian_B2_branch_out_c0_exe187;
    wire [0:0] gaussian_B2_branch_out_c0_exe21465;
    wire [0:0] gaussian_B2_branch_out_c0_exe41486;
    wire [31:0] gaussian_B2_branch_out_c0_exe815212;
    wire [31:0] gaussian_B2_branch_out_c1_exe1;
    wire [0:0] gaussian_B2_branch_out_stall_out;
    wire [0:0] gaussian_B2_branch_out_valid_out_0;
    wire [0:0] gaussian_B2_branch_out_valid_out_1;
    wire [0:0] gaussian_B2_merge_out_c0_exe11451;
    wire [0:0] gaussian_B2_merge_out_c0_exe21465;
    wire [0:0] gaussian_B2_merge_out_c0_exe41486;
    wire [31:0] gaussian_B2_merge_out_c0_exe61508;
    wire [31:0] gaussian_B2_merge_out_c0_exe715110;
    wire [31:0] gaussian_B2_merge_out_c0_exe815212;
    wire [0:0] gaussian_B2_merge_out_stall_out_0;
    wire [0:0] gaussian_B2_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // gaussian_B2_merge(BLACKBOX,4)
    gaussian_B2_merge thegaussian_B2_merge (
        .in_c0_exe11451_0(in_c0_exe11451_0),
        .in_c0_exe21465_0(in_c0_exe21465_0),
        .in_c0_exe41486_0(in_c0_exe41486_0),
        .in_c0_exe61508_0(in_c0_exe61508_0),
        .in_c0_exe715110_0(in_c0_exe715110_0),
        .in_c0_exe815212_0(in_c0_exe815212_0),
        .in_stall_in(bb_gaussian_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe11451(gaussian_B2_merge_out_c0_exe11451),
        .out_c0_exe21465(gaussian_B2_merge_out_c0_exe21465),
        .out_c0_exe41486(gaussian_B2_merge_out_c0_exe41486),
        .out_c0_exe61508(gaussian_B2_merge_out_c0_exe61508),
        .out_c0_exe715110(gaussian_B2_merge_out_c0_exe715110),
        .out_c0_exe815212(gaussian_B2_merge_out_c0_exe815212),
        .out_stall_out_0(gaussian_B2_merge_out_stall_out_0),
        .out_valid_out(gaussian_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2_stall_region(BLACKBOX,2)
    gaussian_bb_B2_stall_region thebb_gaussian_B2_stall_region (
        .in_c0_exe11451(gaussian_B2_merge_out_c0_exe11451),
        .in_c0_exe21465(gaussian_B2_merge_out_c0_exe21465),
        .in_c0_exe41486(gaussian_B2_merge_out_c0_exe41486),
        .in_c0_exe61508(gaussian_B2_merge_out_c0_exe61508),
        .in_c0_exe715110(gaussian_B2_merge_out_c0_exe715110),
        .in_c0_exe815212(gaussian_B2_merge_out_c0_exe815212),
        .in_stall_in(gaussian_B2_branch_out_stall_out),
        .in_valid_in(gaussian_B2_merge_out_valid_out),
        .out_c0_exe11451(bb_gaussian_B2_stall_region_out_c0_exe11451),
        .out_c0_exe187(bb_gaussian_B2_stall_region_out_c0_exe187),
        .out_c0_exe21465(bb_gaussian_B2_stall_region_out_c0_exe21465),
        .out_c0_exe41486(bb_gaussian_B2_stall_region_out_c0_exe41486),
        .out_c0_exe815212(bb_gaussian_B2_stall_region_out_c0_exe815212),
        .out_c1_exe1(bb_gaussian_B2_stall_region_out_c1_exe1),
        .out_stall_out(bb_gaussian_B2_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B2_branch(BLACKBOX,3)
    gaussian_B2_branch thegaussian_B2_branch (
        .in_c0_exe11451(bb_gaussian_B2_stall_region_out_c0_exe11451),
        .in_c0_exe187(bb_gaussian_B2_stall_region_out_c0_exe187),
        .in_c0_exe21465(bb_gaussian_B2_stall_region_out_c0_exe21465),
        .in_c0_exe41486(bb_gaussian_B2_stall_region_out_c0_exe41486),
        .in_c0_exe815212(bb_gaussian_B2_stall_region_out_c0_exe815212),
        .in_c1_exe1(bb_gaussian_B2_stall_region_out_c1_exe1),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B2_stall_region_out_valid_out),
        .out_c0_exe187(gaussian_B2_branch_out_c0_exe187),
        .out_c0_exe21465(gaussian_B2_branch_out_c0_exe21465),
        .out_c0_exe41486(gaussian_B2_branch_out_c0_exe41486),
        .out_c0_exe815212(gaussian_B2_branch_out_c0_exe815212),
        .out_c1_exe1(gaussian_B2_branch_out_c1_exe1),
        .out_stall_out(gaussian_B2_branch_out_stall_out),
        .out_valid_out_0(gaussian_B2_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe187(GPOUT,14)
    assign out_c0_exe187 = gaussian_B2_branch_out_c0_exe187;

    // out_c0_exe21465(GPOUT,15)
    assign out_c0_exe21465 = gaussian_B2_branch_out_c0_exe21465;

    // out_c0_exe41486(GPOUT,16)
    assign out_c0_exe41486 = gaussian_B2_branch_out_c0_exe41486;

    // out_c0_exe815212(GPOUT,17)
    assign out_c0_exe815212 = gaussian_B2_branch_out_c0_exe815212;

    // out_c1_exe1(GPOUT,18)
    assign out_c1_exe1 = gaussian_B2_branch_out_c1_exe1;

    // out_stall_in_0(GPOUT,19)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = gaussian_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = gaussian_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,22)
    assign out_valid_out_1 = gaussian_B2_branch_out_valid_out_1;

    // rst_sync(RESETSYNC,23)
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
