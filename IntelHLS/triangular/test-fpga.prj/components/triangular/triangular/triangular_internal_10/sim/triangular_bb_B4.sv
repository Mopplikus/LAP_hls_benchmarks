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

// SystemVerilog created from bb_triangular_B4
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B4 (
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_lim_ext32_0,
    input wire [31:0] in_lim_ext32_1,
    input wire [31:0] in_reorder_limiter_enter35_0,
    input wire [31:0] in_reorder_limiter_enter35_1,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [32:0] out_c0_exe159,
    output wire [31:0] out_c0_exe260,
    output wire [31:0] out_c0_exe3,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [0:0] out_memdep_phi4_pop13,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_in_1,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe10;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe11;
    wire [32:0] bb_triangular_B4_stall_region_out_c0_exe159;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe260;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe3;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe4;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe5;
    wire [0:0] bb_triangular_B4_stall_region_out_c0_exe6;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe7;
    wire [31:0] bb_triangular_B4_stall_region_out_c0_exe8;
    wire [0:0] bb_triangular_B4_stall_region_out_feedback_stall_out_13;
    wire [0:0] bb_triangular_B4_stall_region_out_memdep_phi4_pop13;
    wire [0:0] bb_triangular_B4_stall_region_out_profile_loop_o_valid;
    wire [0:0] bb_triangular_B4_stall_region_out_stall_out;
    wire [0:0] bb_triangular_B4_stall_region_out_valid_out;
    wire [31:0] triangular_B4_branch_out_c0_exe10;
    wire [31:0] triangular_B4_branch_out_c0_exe11;
    wire [32:0] triangular_B4_branch_out_c0_exe159;
    wire [31:0] triangular_B4_branch_out_c0_exe260;
    wire [31:0] triangular_B4_branch_out_c0_exe3;
    wire [0:0] triangular_B4_branch_out_c0_exe4;
    wire [0:0] triangular_B4_branch_out_c0_exe5;
    wire [0:0] triangular_B4_branch_out_c0_exe6;
    wire [31:0] triangular_B4_branch_out_c0_exe7;
    wire [31:0] triangular_B4_branch_out_c0_exe8;
    wire [0:0] triangular_B4_branch_out_memdep_phi4_pop13;
    wire [0:0] triangular_B4_branch_out_stall_out;
    wire [0:0] triangular_B4_branch_out_valid_out_0;
    wire [31:0] triangular_B4_merge_out_lim_ext32;
    wire [31:0] triangular_B4_merge_out_reorder_limiter_enter35;
    wire [0:0] triangular_B4_merge_out_stall_out_0;
    wire [0:0] triangular_B4_merge_out_stall_out_1;
    wire [0:0] triangular_B4_merge_out_valid_out;
    reg [0:0] rst_sync_rst_sclrn;


    // triangular_B4_branch(BLACKBOX,33)
    triangular_B4_branch thetriangular_B4_branch (
        .in_c0_exe10(bb_triangular_B4_stall_region_out_c0_exe10),
        .in_c0_exe11(bb_triangular_B4_stall_region_out_c0_exe11),
        .in_c0_exe159(bb_triangular_B4_stall_region_out_c0_exe159),
        .in_c0_exe260(bb_triangular_B4_stall_region_out_c0_exe260),
        .in_c0_exe3(bb_triangular_B4_stall_region_out_c0_exe3),
        .in_c0_exe4(bb_triangular_B4_stall_region_out_c0_exe4),
        .in_c0_exe5(bb_triangular_B4_stall_region_out_c0_exe5),
        .in_c0_exe6(bb_triangular_B4_stall_region_out_c0_exe6),
        .in_c0_exe7(bb_triangular_B4_stall_region_out_c0_exe7),
        .in_c0_exe8(bb_triangular_B4_stall_region_out_c0_exe8),
        .in_memdep_phi4_pop13(bb_triangular_B4_stall_region_out_memdep_phi4_pop13),
        .in_stall_in_0(in_stall_in_0),
        .in_valid_in(bb_triangular_B4_stall_region_out_valid_out),
        .out_c0_exe10(triangular_B4_branch_out_c0_exe10),
        .out_c0_exe11(triangular_B4_branch_out_c0_exe11),
        .out_c0_exe159(triangular_B4_branch_out_c0_exe159),
        .out_c0_exe260(triangular_B4_branch_out_c0_exe260),
        .out_c0_exe3(triangular_B4_branch_out_c0_exe3),
        .out_c0_exe4(triangular_B4_branch_out_c0_exe4),
        .out_c0_exe5(triangular_B4_branch_out_c0_exe5),
        .out_c0_exe6(triangular_B4_branch_out_c0_exe6),
        .out_c0_exe7(triangular_B4_branch_out_c0_exe7),
        .out_c0_exe8(triangular_B4_branch_out_c0_exe8),
        .out_memdep_phi4_pop13(triangular_B4_branch_out_memdep_phi4_pop13),
        .out_stall_out(triangular_B4_branch_out_stall_out),
        .out_valid_out_0(triangular_B4_branch_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B4_merge(BLACKBOX,34)
    triangular_B4_merge thetriangular_B4_merge (
        .in_lim_ext32_0(in_lim_ext32_0),
        .in_lim_ext32_1(in_lim_ext32_1),
        .in_reorder_limiter_enter35_0(in_reorder_limiter_enter35_0),
        .in_reorder_limiter_enter35_1(in_reorder_limiter_enter35_1),
        .in_stall_in(bb_triangular_B4_stall_region_out_stall_out),
        .in_valid_in_0(in_valid_in_0),
        .in_valid_in_1(in_valid_in_1),
        .out_lim_ext32(triangular_B4_merge_out_lim_ext32),
        .out_reorder_limiter_enter35(triangular_B4_merge_out_reorder_limiter_enter35),
        .out_stall_out_0(triangular_B4_merge_out_stall_out_0),
        .out_stall_out_1(triangular_B4_merge_out_stall_out_1),
        .out_valid_out(triangular_B4_merge_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4_stall_region(BLACKBOX,2)
    triangular_bb_B4_stall_region thebb_triangular_B4_stall_region (
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_lim_ext32(triangular_B4_merge_out_lim_ext32),
        .in_reorder_limiter_enter35(triangular_B4_merge_out_reorder_limiter_enter35),
        .in_stall_in(triangular_B4_branch_out_stall_out),
        .in_valid_in(triangular_B4_merge_out_valid_out),
        .out_c0_exe10(bb_triangular_B4_stall_region_out_c0_exe10),
        .out_c0_exe11(bb_triangular_B4_stall_region_out_c0_exe11),
        .out_c0_exe159(bb_triangular_B4_stall_region_out_c0_exe159),
        .out_c0_exe260(bb_triangular_B4_stall_region_out_c0_exe260),
        .out_c0_exe3(bb_triangular_B4_stall_region_out_c0_exe3),
        .out_c0_exe4(bb_triangular_B4_stall_region_out_c0_exe4),
        .out_c0_exe5(bb_triangular_B4_stall_region_out_c0_exe5),
        .out_c0_exe6(bb_triangular_B4_stall_region_out_c0_exe6),
        .out_c0_exe7(bb_triangular_B4_stall_region_out_c0_exe7),
        .out_c0_exe8(bb_triangular_B4_stall_region_out_c0_exe8),
        .out_feedback_stall_out_13(bb_triangular_B4_stall_region_out_feedback_stall_out_13),
        .out_memdep_phi4_pop13(bb_triangular_B4_stall_region_out_memdep_phi4_pop13),
        .out_profile_loop_o_valid(bb_triangular_B4_stall_region_out_profile_loop_o_valid),
        .out_stall_out(bb_triangular_B4_stall_region_out_stall_out),
        .out_valid_out(bb_triangular_B4_stall_region_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // feedback_stall_out_13_sync(GPOUT,4)
    assign out_feedback_stall_out_13 = bb_triangular_B4_stall_region_out_feedback_stall_out_13;

    // out_c0_exe10(GPOUT,17)
    assign out_c0_exe10 = triangular_B4_branch_out_c0_exe10;

    // out_c0_exe11(GPOUT,18)
    assign out_c0_exe11 = triangular_B4_branch_out_c0_exe11;

    // out_c0_exe159(GPOUT,19)
    assign out_c0_exe159 = triangular_B4_branch_out_c0_exe159;

    // out_c0_exe260(GPOUT,20)
    assign out_c0_exe260 = triangular_B4_branch_out_c0_exe260;

    // out_c0_exe3(GPOUT,21)
    assign out_c0_exe3 = triangular_B4_branch_out_c0_exe3;

    // out_c0_exe4(GPOUT,22)
    assign out_c0_exe4 = triangular_B4_branch_out_c0_exe4;

    // out_c0_exe5(GPOUT,23)
    assign out_c0_exe5 = triangular_B4_branch_out_c0_exe5;

    // out_c0_exe6(GPOUT,24)
    assign out_c0_exe6 = triangular_B4_branch_out_c0_exe6;

    // out_c0_exe7(GPOUT,25)
    assign out_c0_exe7 = triangular_B4_branch_out_c0_exe7;

    // out_c0_exe8(GPOUT,26)
    assign out_c0_exe8 = triangular_B4_branch_out_c0_exe8;

    // out_memdep_phi4_pop13(GPOUT,27)
    assign out_memdep_phi4_pop13 = triangular_B4_branch_out_memdep_phi4_pop13;

    // out_profile_loop_o_valid(GPOUT,28)
    assign out_profile_loop_o_valid = bb_triangular_B4_stall_region_out_profile_loop_o_valid;

    // out_stall_out_0(GPOUT,29)
    assign out_stall_out_0 = triangular_B4_merge_out_stall_out_0;

    // out_stall_out_1(GPOUT,30)
    assign out_stall_out_1 = triangular_B4_merge_out_stall_out_1;

    // out_valid_in_1(GPOUT,31)
    assign out_valid_in_1 = in_valid_in_1;

    // out_valid_out_0(GPOUT,32)
    assign out_valid_out_0 = triangular_B4_branch_out_valid_out_0;

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
