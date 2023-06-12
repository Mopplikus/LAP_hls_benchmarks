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

// SystemVerilog created from bb_gaussian_B5
// Created for function/kernel gaussian
// SystemVerilog created on Thu Apr 27 14:24:40 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B5 (
    input wire [0:0] in_feedback_in_10,
    output wire [0:0] out_feedback_stall_out_10,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [31:0] in_add52_0,
    input wire [31:0] in_add52_1,
    input wire [0:0] in_cmp41655_0,
    input wire [0:0] in_cmp41655_1,
    input wire [31:0] in_fpga_indvars_iv743_0,
    input wire [31:0] in_fpga_indvars_iv743_1,
    input wire [31:0] in_fpga_indvars_iv940_0,
    input wire [31:0] in_fpga_indvars_iv940_1,
    input wire [31:0] in_j_01846_0,
    input wire [31:0] in_j_01846_1,
    input wire [0:0] in_memdep_phi4_pop72549_0,
    input wire [0:0] in_memdep_phi4_pop72549_1,
    input wire [0:0] in_stall_in_0,
    input wire [32:0] in_unnamed_gaussian3_0,
    input wire [32:0] in_unnamed_gaussian3_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe11,
    output wire [0:0] out_c0_exe1108,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [32:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe2109,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi_pop10,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe11;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe1108;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe12;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe13;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe14;
    wire [32:0] bb_gaussian_B5_stall_region_out_c0_exe15;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe16;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe17;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe2109;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe3;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe4;
    wire [0:0] bb_gaussian_B5_stall_region_out_c0_exe5;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe6;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe7;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe8;
    wire [31:0] bb_gaussian_B5_stall_region_out_c0_exe9;
    wire [0:0] bb_gaussian_B5_stall_region_out_feedback_stall_out_10;
    wire [0:0] bb_gaussian_B5_stall_region_out_memdep_phi_pop10;
    wire [0:0] bb_gaussian_B5_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_gaussian_B5_stall_region_out_stall_out;
    wire [0:0] bb_gaussian_B5_stall_region_out_valid_out;
    wire [31:0] gaussian_B5_branch_out_c0_exe11;
    wire [0:0] gaussian_B5_branch_out_c0_exe1108;
    wire [31:0] gaussian_B5_branch_out_c0_exe12;
    wire [31:0] gaussian_B5_branch_out_c0_exe13;
    wire [0:0] gaussian_B5_branch_out_c0_exe14;
    wire [32:0] gaussian_B5_branch_out_c0_exe15;
    wire [31:0] gaussian_B5_branch_out_c0_exe16;
    wire [0:0] gaussian_B5_branch_out_c0_exe17;
    wire [0:0] gaussian_B5_branch_out_c0_exe2109;
    wire [0:0] gaussian_B5_branch_out_c0_exe3;
    wire [31:0] gaussian_B5_branch_out_c0_exe4;
    wire [0:0] gaussian_B5_branch_out_c0_exe5;
    wire [31:0] gaussian_B5_branch_out_c0_exe6;
    wire [31:0] gaussian_B5_branch_out_c0_exe7;
    wire [31:0] gaussian_B5_branch_out_c0_exe8;
    wire [31:0] gaussian_B5_branch_out_c0_exe9;
    wire [0:0] gaussian_B5_branch_out_memdep_phi_pop10;
    wire [0:0] gaussian_B5_branch_out_stall_out;
    wire [0:0] gaussian_B5_branch_out_valid_out_0;
    wire [31:0] gaussian_B5_merge_out_add52;
    wire [0:0] gaussian_B5_merge_out_cmp41655;
    wire [31:0] gaussian_B5_merge_out_fpga_indvars_iv743;
    wire [31:0] gaussian_B5_merge_out_fpga_indvars_iv940;
    wire [31:0] gaussian_B5_merge_out_j_01846;
    wire [0:0] gaussian_B5_merge_out_memdep_phi4_pop72549;
    wire [0:0] gaussian_B5_merge_out_stall_out_0;
    wire [0:0] gaussian_B5_merge_out_stall_out_1;
    wire [32:0] gaussian_B5_merge_out_unnamed_gaussian3;
    wire [0:0] gaussian_B5_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // gaussian_B5_branch(BLACKBOX,6)
    gaussian_B5_branch thegaussian_B5_branch (
        .in_c0_exe11(bb_gaussian_B5_stall_region_out_c0_exe11),
        .in_c0_exe1108(bb_gaussian_B5_stall_region_out_c0_exe1108),
        .in_c0_exe12(bb_gaussian_B5_stall_region_out_c0_exe12),
        .in_c0_exe13(bb_gaussian_B5_stall_region_out_c0_exe13),
        .in_c0_exe14(bb_gaussian_B5_stall_region_out_c0_exe14),
        .in_c0_exe15(bb_gaussian_B5_stall_region_out_c0_exe15),
        .in_c0_exe16(bb_gaussian_B5_stall_region_out_c0_exe16),
        .in_c0_exe17(bb_gaussian_B5_stall_region_out_c0_exe17),
        .in_c0_exe2109(bb_gaussian_B5_stall_region_out_c0_exe2109),
        .in_c0_exe3(bb_gaussian_B5_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_gaussian_B5_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_gaussian_B5_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_gaussian_B5_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_gaussian_B5_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_gaussian_B5_stall_region_out_c0_exe8),
        .in_c0_exe9(bb_gaussian_B5_stall_region_out_c0_exe9),
        .in_memdep_phi_pop10(bb_gaussian_B5_stall_region_out_memdep_phi_pop10),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_gaussian_B5_stall_region_out_valid_out),
        .out_c0_exe11(gaussian_B5_branch_out_c0_exe11),
        .out_c0_exe1108(gaussian_B5_branch_out_c0_exe1108),
        .out_c0_exe12(gaussian_B5_branch_out_c0_exe12),
        .out_c0_exe13(gaussian_B5_branch_out_c0_exe13),
        .out_c0_exe14(gaussian_B5_branch_out_c0_exe14),
        .out_c0_exe15(gaussian_B5_branch_out_c0_exe15),
        .out_c0_exe16(gaussian_B5_branch_out_c0_exe16),
        .out_c0_exe17(gaussian_B5_branch_out_c0_exe17),
        .out_c0_exe2109(gaussian_B5_branch_out_c0_exe2109),
        .out_c0_exe3(gaussian_B5_branch_out_c0_exe3),
        .out_c0_exe4(gaussian_B5_branch_out_c0_exe4),
        .out_c0_exe5(gaussian_B5_branch_out_c0_exe5),
        .out_c0_exe6(gaussian_B5_branch_out_c0_exe6),
        .out_c0_exe7(gaussian_B5_branch_out_c0_exe7),
        .out_c0_exe8(gaussian_B5_branch_out_c0_exe8),
        .out_c0_exe9(gaussian_B5_branch_out_c0_exe9),
        .out_memdep_phi_pop10(gaussian_B5_branch_out_memdep_phi_pop10),
        .out_stall_out(gaussian_B5_branch_out_stall_out),
        .out_valid_out_0(gaussian_B5_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B5_merge(BLACKBOX,7)
    gaussian_B5_merge thegaussian_B5_merge (
        .in_add52_0(in_add52_0),
        .in_add52_1(in_add52_1),
        .in_cmp41655_0(in_cmp41655_0),
        .in_cmp41655_1(in_cmp41655_1),
        .in_fpga_indvars_iv743_0(in_fpga_indvars_iv743_0),
        .in_fpga_indvars_iv743_1(in_fpga_indvars_iv743_1),
        .in_fpga_indvars_iv940_0(in_fpga_indvars_iv940_0),
        .in_fpga_indvars_iv940_1(in_fpga_indvars_iv940_1),
        .in_j_01846_0(in_j_01846_0),
        .in_j_01846_1(in_j_01846_1),
        .in_memdep_phi4_pop72549_0(in_memdep_phi4_pop72549_0),
        .in_memdep_phi4_pop72549_1(in_memdep_phi4_pop72549_1),
        .in_stall_in(bb_gaussian_B5_stall_region_out_stall_out),
        .in_unnamed_gaussian3_0(in_unnamed_gaussian3_0),
        .in_unnamed_gaussian3_1(in_unnamed_gaussian3_1),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_add52(gaussian_B5_merge_out_add52),
        .out_cmp41655(gaussian_B5_merge_out_cmp41655),
        .out_fpga_indvars_iv743(gaussian_B5_merge_out_fpga_indvars_iv743),
        .out_fpga_indvars_iv940(gaussian_B5_merge_out_fpga_indvars_iv940),
        .out_j_01846(gaussian_B5_merge_out_j_01846),
        .out_memdep_phi4_pop72549(gaussian_B5_merge_out_memdep_phi4_pop72549),
        .out_stall_out_0(gaussian_B5_merge_out_stall_out_0),
        .out_stall_out_1(gaussian_B5_merge_out_stall_out_1),
        .out_unnamed_gaussian3(gaussian_B5_merge_out_unnamed_gaussian3),
        .out_valid_out(gaussian_B5_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B5_stall_region(BLACKBOX,2)
    gaussian_bb_B5_stall_region thebb_gaussian_B5_stall_region (
        .in_add52(gaussian_B5_merge_out_add52),
        .in_cmp41655(gaussian_B5_merge_out_cmp41655),
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_fpga_indvars_iv743(gaussian_B5_merge_out_fpga_indvars_iv743),
        .in_fpga_indvars_iv940(gaussian_B5_merge_out_fpga_indvars_iv940),
        .in_j_01846(gaussian_B5_merge_out_j_01846),
        .in_memdep_phi4_pop72549(gaussian_B5_merge_out_memdep_phi4_pop72549),
        .in_stall_in(gaussian_B5_branch_out_stall_out),
        .in_unnamed_gaussian3(gaussian_B5_merge_out_unnamed_gaussian3),
        .in_valid_in(gaussian_B5_merge_out_valid_out),
        .out_c0_exe11(bb_gaussian_B5_stall_region_out_c0_exe11),
        .out_c0_exe1108(bb_gaussian_B5_stall_region_out_c0_exe1108),
        .out_c0_exe12(bb_gaussian_B5_stall_region_out_c0_exe12),
        .out_c0_exe13(bb_gaussian_B5_stall_region_out_c0_exe13),
        .out_c0_exe14(bb_gaussian_B5_stall_region_out_c0_exe14),
        .out_c0_exe15(bb_gaussian_B5_stall_region_out_c0_exe15),
        .out_c0_exe16(bb_gaussian_B5_stall_region_out_c0_exe16),
        .out_c0_exe17(bb_gaussian_B5_stall_region_out_c0_exe17),
        .out_c0_exe2109(bb_gaussian_B5_stall_region_out_c0_exe2109),
        .out_c0_exe3(bb_gaussian_B5_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_gaussian_B5_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_gaussian_B5_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_gaussian_B5_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_gaussian_B5_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_gaussian_B5_stall_region_out_c0_exe8),
        .out_c0_exe9(bb_gaussian_B5_stall_region_out_c0_exe9),
        .out_feedback_stall_out_10(bb_gaussian_B5_stall_region_out_feedback_stall_out_10),
        .out_memdep_phi_pop10(bb_gaussian_B5_stall_region_out_memdep_phi_pop10),
        .out_profile_loop_o_valid(bb_gaussian_B5_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_gaussian_B5_stall_region_out_stall_out),
        .out_valid_out(bb_gaussian_B5_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_10_sync(GPOUT,4)
    assign out_feedback_stall_out_10 = bb_gaussian_B5_stall_region_out_feedback_stall_out_10;

    // out_c0_exe11(GPOUT,25)
    assign out_c0_exe11 = gaussian_B5_branch_out_c0_exe11;

    // out_c0_exe1108(GPOUT,26)
    assign out_c0_exe1108 = gaussian_B5_branch_out_c0_exe1108;

    // out_c0_exe12(GPOUT,27)
    assign out_c0_exe12 = gaussian_B5_branch_out_c0_exe12;

    // out_c0_exe13(GPOUT,28)
    assign out_c0_exe13 = gaussian_B5_branch_out_c0_exe13;

    // out_c0_exe14(GPOUT,29)
    assign out_c0_exe14 = gaussian_B5_branch_out_c0_exe14;

    // out_c0_exe15(GPOUT,30)
    assign out_c0_exe15 = gaussian_B5_branch_out_c0_exe15;

    // out_c0_exe16(GPOUT,31)
    assign out_c0_exe16 = gaussian_B5_branch_out_c0_exe16;

    // out_c0_exe17(GPOUT,32)
    assign out_c0_exe17 = gaussian_B5_branch_out_c0_exe17;

    // out_c0_exe2109(GPOUT,33)
    assign out_c0_exe2109 = gaussian_B5_branch_out_c0_exe2109;

    // out_c0_exe3(GPOUT,34)
    assign out_c0_exe3 = gaussian_B5_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,35)
    assign out_c0_exe4 = gaussian_B5_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,36)
    assign out_c0_exe5 = gaussian_B5_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,37)
    assign out_c0_exe6 = gaussian_B5_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,38)
    assign out_c0_exe7 = gaussian_B5_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,39)
    assign out_c0_exe8 = gaussian_B5_branch_out_c0_exe8;

    // out_c0_exe9(GPOUT,40)
    assign out_c0_exe9 = gaussian_B5_branch_out_c0_exe9;

    // out_memdep_phi_pop10(GPOUT,41)
    assign out_memdep_phi_pop10 = gaussian_B5_branch_out_memdep_phi_pop10;

    // out_profile_loop_o_valid(GPOUT,42)
    assign out_profile_loop_o_valid = bb_gaussian_B5_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = gaussian_B5_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = gaussian_B5_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,45)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,46)
    assign out_valid_out_0 = gaussian_B5_branch_out_valid_out_0;

    // rst_sync(RESETSYNC,47)
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
