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
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B2 (
    input wire [0:0] in_c0_exe21291_0,
    input wire [0:0] in_c0_exe31303_0,
    input wire [0:0] in_c0_exe41317_0,
    input wire [31:0] in_c0_exe61338_0,
    input wire [31:0] in_c0_exe713410_0,
    input wire [31:0] in_c0_exe813512_0,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_stall_in_1,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe31303,
    output wire [0:0] out_c0_exe41317,
    output wire [31:0] out_c0_exe813512,
    output wire [31:0] out_fpga_indvars_iv_next10,
    output wire [31:0] out_fpga_indvars_iv_next8,
    output wire [0:0] out_stall_in_0,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out_0,
    output wire [0:0] out_valid_out_1,
    input wire clock,
    input wire resetn
    );

    wire [0:0] bb_gaussian_B2_stall_region_out_c0_exe21291;
    wire [0:0] bb_gaussian_B2_stall_region_out_c0_exe31303;
    wire [0:0] bb_gaussian_B2_stall_region_out_c0_exe41317;
    wire [31:0] bb_gaussian_B2_stall_region_out_c0_exe813512;
    wire [31:0] bb_gaussian_B2_stall_region_out_fpga_indvars_iv_next10;
    wire [31:0] bb_gaussian_B2_stall_region_out_fpga_indvars_iv_next8;
    wire [0:0] bb_gaussian_B2_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B2_stall_region_out_valid_out;
    wire [0:0] gaussian_B2_branch_out_c0_exe31303;
    wire [0:0] gaussian_B2_branch_out_c0_exe41317;
    wire [31:0] gaussian_B2_branch_out_c0_exe813512;
    wire [31:0] gaussian_B2_branch_out_fpga_indvars_iv_next10;
    wire [31:0] gaussian_B2_branch_out_fpga_indvars_iv_next8;
    wire [0:0] gaussian_B2_branch_out_stall_out;
    wire [0:0] gaussian_B2_branch_out_valid_out_0;
    wire [0:0] gaussian_B2_branch_out_valid_out_1;
    wire [0:0] gaussian_B2_merge_out_c0_exe21291;
    wire [0:0] gaussian_B2_merge_out_c0_exe31303;
    wire [0:0] gaussian_B2_merge_out_c0_exe41317;
    wire [31:0] gaussian_B2_merge_out_c0_exe61338;
    wire [31:0] gaussian_B2_merge_out_c0_exe713410;
    wire [31:0] gaussian_B2_merge_out_c0_exe813512;
    wire [0:0] gaussian_B2_merge_out_stall_out_0;
    wire [0:0] gaussian_B2_merge_out_valid_out;


    // gaussian_B2_merge(BLACKBOX,4)
    gaussian_B2_merge thegaussian_B2_merge (
        .in_c0_exe21291_0(in_c0_exe21291_0),
        .in_c0_exe31303_0(in_c0_exe31303_0),
        .in_c0_exe41317_0(in_c0_exe41317_0),
        .in_c0_exe61338_0(in_c0_exe61338_0),
        .in_c0_exe713410_0(in_c0_exe713410_0),
        .in_c0_exe813512_0(in_c0_exe813512_0),
        .in_stall_in(bb_gaussian_B2_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .out_c0_exe21291(gaussian_B2_merge_out_c0_exe21291),
        .out_c0_exe31303(gaussian_B2_merge_out_c0_exe31303),
        .out_c0_exe41317(gaussian_B2_merge_out_c0_exe41317),
        .out_c0_exe61338(gaussian_B2_merge_out_c0_exe61338),
        .out_c0_exe713410(gaussian_B2_merge_out_c0_exe713410),
        .out_c0_exe813512(gaussian_B2_merge_out_c0_exe813512),
        .out_stall_out_0(gaussian_B2_merge_out_stall_out_0),
        .out_valid_out(gaussian_B2_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2_stall_region(BLACKBOX,2)
    gaussian_bb_B2_stall_region thebb_gaussian_B2_stall_region (
        .in_c0_exe21291(gaussian_B2_merge_out_c0_exe21291),
        .in_c0_exe31303(gaussian_B2_merge_out_c0_exe31303),
        .in_c0_exe41317(gaussian_B2_merge_out_c0_exe41317),
        .in_c0_exe61338(gaussian_B2_merge_out_c0_exe61338),
        .in_c0_exe713410(gaussian_B2_merge_out_c0_exe713410),
        .in_c0_exe813512(gaussian_B2_merge_out_c0_exe813512),
        .in_stall_in(gaussian_B2_branch_out_stall_out),
        .in_valid_in(gaussian_B2_merge_out_valid_out),
        .out_c0_exe21291(bb_gaussian_B2_stall_region_out_c0_exe21291),
        .out_c0_exe31303(bb_gaussian_B2_stall_region_out_c0_exe31303),
        .out_c0_exe41317(bb_gaussian_B2_stall_region_out_c0_exe41317),
        .out_c0_exe813512(bb_gaussian_B2_stall_region_out_c0_exe813512),
        .out_fpga_indvars_iv_next10(bb_gaussian_B2_stall_region_out_fpga_indvars_iv_next10),
        .out_fpga_indvars_iv_next8(bb_gaussian_B2_stall_region_out_fpga_indvars_iv_next8),
        .out_stall_out(bb_gaussian_B2_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B2_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B2_branch(BLACKBOX,3)
    gaussian_B2_branch thegaussian_B2_branch (
        .in_c0_exe21291(bb_gaussian_B2_stall_region_out_c0_exe21291),
        .in_c0_exe31303(bb_gaussian_B2_stall_region_out_c0_exe31303),
        .in_c0_exe41317(bb_gaussian_B2_stall_region_out_c0_exe41317),
        .in_c0_exe813512(bb_gaussian_B2_stall_region_out_c0_exe813512),
        .in_fpga_indvars_iv_next10(bb_gaussian_B2_stall_region_out_fpga_indvars_iv_next10),
        .in_fpga_indvars_iv_next8(bb_gaussian_B2_stall_region_out_fpga_indvars_iv_next8),
        .in_stall_in_0(in_stall_in_0),
        .in_stall_in_1(in_stall_in_1),
        .in_valid_in(bb_gaussian_B2_stall_region_out_valid_out),
        .out_c0_exe31303(gaussian_B2_branch_out_c0_exe31303),
        .out_c0_exe41317(gaussian_B2_branch_out_c0_exe41317),
        .out_c0_exe813512(gaussian_B2_branch_out_c0_exe813512),
        .out_fpga_indvars_iv_next10(gaussian_B2_branch_out_fpga_indvars_iv_next10),
        .out_fpga_indvars_iv_next8(gaussian_B2_branch_out_fpga_indvars_iv_next8),
        .out_stall_out(gaussian_B2_branch_out_stall_out),
        .out_valid_out_0(gaussian_B2_branch_out_valid_out_0),
        .out_valid_out_1(gaussian_B2_branch_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe31303(GPOUT,14)
    assign out_c0_exe31303 = gaussian_B2_branch_out_c0_exe31303;

    // out_c0_exe41317(GPOUT,15)
    assign out_c0_exe41317 = gaussian_B2_branch_out_c0_exe41317;

    // out_c0_exe813512(GPOUT,16)
    assign out_c0_exe813512 = gaussian_B2_branch_out_c0_exe813512;

    // out_fpga_indvars_iv_next10(GPOUT,17)
    assign out_fpga_indvars_iv_next10 = gaussian_B2_branch_out_fpga_indvars_iv_next10;

    // out_fpga_indvars_iv_next8(GPOUT,18)
    assign out_fpga_indvars_iv_next8 = gaussian_B2_branch_out_fpga_indvars_iv_next8;

    // out_stall_in_0(GPOUT,19)
    assign out_stall_in_0 = in_stall_in_0;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = gaussian_B2_merge_out_stall_out_0;

    // out_valid_out_0(GPOUT,21)
    assign out_valid_out_0 = gaussian_B2_branch_out_valid_out_0;

    // out_valid_out_1(GPOUT,22)
    assign out_valid_out_1 = gaussian_B2_branch_out_valid_out_1;

endmodule
