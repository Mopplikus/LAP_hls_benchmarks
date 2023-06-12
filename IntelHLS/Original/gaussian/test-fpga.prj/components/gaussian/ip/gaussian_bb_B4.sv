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

// SystemVerilog created from bb_gaussian_B4
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B4 (
    input wire [31:0] in_fpga_indvars_iv7_0,
    input wire [31:0] in_fpga_indvars_iv7_1,
    input wire [31:0] in_fpga_indvars_iv9_0,
    input wire [31:0] in_fpga_indvars_iv9_1,
    input wire [31:0] in_j_018_0,
    input wire [31:0] in_j_018_1,
    input wire [0:0] in_memdep_phi4_pop725_0,
    input wire [0:0] in_memdep_phi4_pop725_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [32:0] out_c0_exe193,
    output wire [31:0] out_c1_exe199,
    output wire [0:0] out_c1_exe2,
    output wire [31:0] out_fpga_indvars_iv7,
    output wire [31:0] out_fpga_indvars_iv9,
    output wire [31:0] out_j_018,
    output wire [0:0] out_memdep_phi4_pop725,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_0,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [32:0] bb_gaussian_B4_stall_region_out_c0_exe193;
    wire [31:0] bb_gaussian_B4_stall_region_out_c1_exe199;
    wire [0:0] bb_gaussian_B4_stall_region_out_c1_exe2;
    wire [31:0] bb_gaussian_B4_stall_region_out_fpga_indvars_iv7;
    wire [31:0] bb_gaussian_B4_stall_region_out_fpga_indvars_iv9;
    wire [31:0] bb_gaussian_B4_stall_region_out_j_018;
    wire [0:0] bb_gaussian_B4_stall_region_out_memdep_phi4_pop725;
    wire [0:0] bb_gaussian_B4_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B4_stall_region_out_valid_out;
    wire [32:0] gaussian_B4_branch_out_c0_exe193;
    wire [31:0] gaussian_B4_branch_out_c1_exe199;
    wire [0:0] gaussian_B4_branch_out_c1_exe2;
    wire [31:0] gaussian_B4_branch_out_fpga_indvars_iv7;
    wire [31:0] gaussian_B4_branch_out_fpga_indvars_iv9;
    wire [31:0] gaussian_B4_branch_out_j_018;
    wire [0:0] gaussian_B4_branch_out_memdep_phi4_pop725;
    wire [0:0] gaussian_B4_branch_out_stall_out;
    wire [0:0] gaussian_B4_branch_out_valid_out_0;
    wire [31:0] gaussian_B4_merge_out_fpga_indvars_iv7;
    wire [31:0] gaussian_B4_merge_out_fpga_indvars_iv9;
    wire [31:0] gaussian_B4_merge_out_j_018;
    wire [0:0] gaussian_B4_merge_out_memdep_phi4_pop725;
    wire [0:0] gaussian_B4_merge_out_stall_out_0;
    wire [0:0] gaussian_B4_merge_out_stall_out_1;
    wire [0:0] gaussian_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // gaussian_B4_merge(BLACKBOX,4)
    gaussian_B4_merge thegaussian_B4_merge (
        .in_fpga_indvars_iv7_0(in_fpga_indvars_iv7_0),
        .in_fpga_indvars_iv7_1(in_fpga_indvars_iv7_1),
        .in_fpga_indvars_iv9_0(in_fpga_indvars_iv9_0),
        .in_fpga_indvars_iv9_1(in_fpga_indvars_iv9_1),
        .in_j_018_0(in_j_018_0),
        .in_j_018_1(in_j_018_1),
        .in_memdep_phi4_pop725_0(in_memdep_phi4_pop725_0),
        .in_memdep_phi4_pop725_1(in_memdep_phi4_pop725_1),
        .in_stall_in(bb_gaussian_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_fpga_indvars_iv7(gaussian_B4_merge_out_fpga_indvars_iv7),
        .out_fpga_indvars_iv9(gaussian_B4_merge_out_fpga_indvars_iv9),
        .out_j_018(gaussian_B4_merge_out_j_018),
        .out_memdep_phi4_pop725(gaussian_B4_merge_out_memdep_phi4_pop725),
        .out_stall_out_0(gaussian_B4_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B4_merge_out_stall_out_1),
        .out_valid_out(gaussian_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4_stall_region(BLACKBOX,2)
    gaussian_bb_B4_stall_region thebb_gaussian_B4_stall_region (
        .in_fpga_indvars_iv7(gaussian_B4_merge_out_fpga_indvars_iv7),
        .in_fpga_indvars_iv9(gaussian_B4_merge_out_fpga_indvars_iv9),
        .in_j_018(gaussian_B4_merge_out_j_018),
        .in_memdep_phi4_pop725(gaussian_B4_merge_out_memdep_phi4_pop725),
        .in_stall_in(gaussian_B4_branch_out_stall_out),
        .in_valid_in(gaussian_B4_merge_out_valid_out),
        .out_c0_exe193(bb_gaussian_B4_stall_region_out_c0_exe193),
        .out_c1_exe199(bb_gaussian_B4_stall_region_out_c1_exe199),
        .out_c1_exe2(bb_gaussian_B4_stall_region_out_c1_exe2),
        .out_fpga_indvars_iv7(bb_gaussian_B4_stall_region_out_fpga_indvars_iv7),
        .out_fpga_indvars_iv9(bb_gaussian_B4_stall_region_out_fpga_indvars_iv9),
        .out_j_018(bb_gaussian_B4_stall_region_out_j_018),
        .out_memdep_phi4_pop725(bb_gaussian_B4_stall_region_out_memdep_phi4_pop725),
        .out_stall_out(bb_gaussian_B4_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B4_branch(BLACKBOX,3)
    gaussian_B4_branch thegaussian_B4_branch (
        .in_c0_exe193(bb_gaussian_B4_stall_region_out_c0_exe193),
        .in_c1_exe199(bb_gaussian_B4_stall_region_out_c1_exe199),
        .in_c1_exe2(bb_gaussian_B4_stall_region_out_c1_exe2),
        .in_fpga_indvars_iv7(bb_gaussian_B4_stall_region_out_fpga_indvars_iv7),
        .in_fpga_indvars_iv9(bb_gaussian_B4_stall_region_out_fpga_indvars_iv9),
        .in_j_018(bb_gaussian_B4_stall_region_out_j_018),
        .in_memdep_phi4_pop725(bb_gaussian_B4_stall_region_out_memdep_phi4_pop725),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_gaussian_B4_stall_region_out_valid_out),
        .out_c0_exe193(gaussian_B4_branch_out_c0_exe193),
        .out_c1_exe199(gaussian_B4_branch_out_c1_exe199),
        .out_c1_exe2(gaussian_B4_branch_out_c1_exe2),
        .out_fpga_indvars_iv7(gaussian_B4_branch_out_fpga_indvars_iv7),
        .out_fpga_indvars_iv9(gaussian_B4_branch_out_fpga_indvars_iv9),
        .out_j_018(gaussian_B4_branch_out_j_018),
        .out_memdep_phi4_pop725(gaussian_B4_branch_out_memdep_phi4_pop725),
        .out_stall_out(gaussian_B4_branch_out_stall_out),
        .out_valid_out_0(gaussian_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_c0_exe193(GPOUT,16)
    assign out_c0_exe193 = gaussian_B4_branch_out_c0_exe193;

    // out_c1_exe199(GPOUT,17)
    assign out_c1_exe199 = gaussian_B4_branch_out_c1_exe199;

    // out_c1_exe2(GPOUT,18)
    assign out_c1_exe2 = gaussian_B4_branch_out_c1_exe2;

    // out_fpga_indvars_iv7(GPOUT,19)
    assign out_fpga_indvars_iv7 = gaussian_B4_branch_out_fpga_indvars_iv7;

    // out_fpga_indvars_iv9(GPOUT,20)
    assign out_fpga_indvars_iv9 = gaussian_B4_branch_out_fpga_indvars_iv9;

    // out_j_018(GPOUT,21)
    assign out_j_018 = gaussian_B4_branch_out_j_018;

    // out_memdep_phi4_pop725(GPOUT,22)
    assign out_memdep_phi4_pop725 = gaussian_B4_branch_out_memdep_phi4_pop725;

    // out_stall_out_0(GPOUT,23)
    assign out_stall_out_0 = gaussian_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,24)
    assign out_stall_out_1 = gaussian_B4_merge_out_stall_out_1;

    // out_valid_in_0(GPOUT,25)
    assign out_valid_in_0 = in_valid_in_0;

    // out_valid_in_1(GPOUT,26)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = gaussian_B4_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,28)
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
