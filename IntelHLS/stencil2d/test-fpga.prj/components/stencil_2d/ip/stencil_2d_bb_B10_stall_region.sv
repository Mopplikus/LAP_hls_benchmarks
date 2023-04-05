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

// SystemVerilog created from bb_stencil_2d_B10_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B10_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c_035_pop27127,
    input wire [0:0] in_forked79,
    input wire [31:0] in_mul50118,
    input wire [31:0] in_mul5086_pop29133,
    input wire [0:0] in_notcmp34124,
    input wire [0:0] in_notcmp39123,
    input wire [0:0] in_notcmp3989_pop30136,
    input wire [31:0] in_r_036_pop25113,
    input wire [31:0] in_r_036_pop2583_pop28130,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1212,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe2213,
    output wire [31:0] out_c0_exe3214,
    output wire [31:0] out_c0_exe4215,
    output wire [0:0] out_c0_exe5216,
    output wire [0:0] out_c0_exe6217,
    output wire [31:0] out_c0_exe7218,
    output wire [0:0] out_c0_exe8219,
    output wire [0:0] out_c0_exe9220,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_18_tpl;
    wire [0:0] stencil_2d_B10_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] stencil_2d_B10_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] stencil_2d_B10_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [163:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [327:0] bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_r;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_s;
    wire [163:0] bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_stencil_2d_B10_merge_reg_aunroll_x_j;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_V0;
    wire [0:0] SE_out_stencil_2d_B10_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_stencil_2d_B10_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_stencil_2d_B10_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {in_r_036_pop2583_pop28130, in_r_036_pop25113, in_notcmp3989_pop30136, in_notcmp39123, in_notcmp34124, in_mul5086_pop29133, in_mul50118, in_forked79, in_c_035_pop27127};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[131:100]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[163:132]);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = stencil_2d_B10_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // stencil_2d_B10_merge_reg_aunroll_x(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    stencil_2d_B10_merge_reg thestencil_2d_B10_merge_reg_aunroll_x (
        .in_stall_in(SE_out_stencil_2d_B10_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_i),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_g),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_j),
        .in_data_in_7_tpl(bubble_select_stall_entry_e),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .out_stall_out(stencil_2d_B10_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(stencil_2d_B10_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(stencil_2d_B10_merge_reg_aunroll_x_out_data_out_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stencil_2d_B10_merge_reg_aunroll_x(BITJOIN,28)
    assign bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q = {stencil_2d_B10_merge_reg_aunroll_x_out_data_out_8_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_7_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_6_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_5_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_4_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_3_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_2_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_1_tpl, stencil_2d_B10_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_stencil_2d_B10_merge_reg_aunroll_x(BITSELECT,29)
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_b = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_c = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_d = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_e = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_f = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_g = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[98:67]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_h = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[130:99]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_i = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[162:131]);
    assign bubble_select_stencil_2d_B10_merge_reg_aunroll_x_j = $unsigned(bubble_join_stencil_2d_B10_merge_reg_aunroll_x_q[163:163]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_stencil_2d_B10_merge_reg_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_stencil_2d_B10_merge_reg_aunroll_x_V0 = SE_out_stencil_2d_B10_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_stencil_2d_B10_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_o_stall | ~ (SE_out_stencil_2d_B10_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_stencil_2d_B10_merge_reg_aunroll_x_wireValid = stencil_2d_B10_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@7
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit211_0_tpl@7
    // out out_c0_exit211_1_tpl@7
    // out out_c0_exit211_2_tpl@7
    // out out_c0_exit211_3_tpl@7
    // out out_c0_exit211_4_tpl@7
    // out out_c0_exit211_5_tpl@7
    // out out_c0_exit211_6_tpl@7
    // out out_c0_exit211_7_tpl@7
    // out out_c0_exit211_8_tpl@7
    // out out_c0_exit211_9_tpl@7
    // out out_c0_exit211_10_tpl@7
    // out out_c0_exit211_11_tpl@7
    // out out_c0_exit211_12_tpl@7
    // out out_c0_exit211_13_tpl@7
    // out out_c0_exit211_14_tpl@7
    // out out_c0_exit211_15_tpl@7
    // out out_c0_exit211_16_tpl@7
    // out out_c0_exit211_17_tpl@7
    // out out_c0_exit211_18_tpl@7
    stencil_2d_i_sfc_s_c0_in_for_cond29_preh0000ter19718_stencil_2d1 thei_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_stencil_2d_B10_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni9_0_tpl(GND_q),
        .in_c0_eni9_1_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_b),
        .in_c0_eni9_2_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_h),
        .in_c0_eni9_3_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_g),
        .in_c0_eni9_4_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_i),
        .in_c0_eni9_5_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_j),
        .in_c0_eni9_6_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_f),
        .in_c0_eni9_7_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_c),
        .in_c0_eni9_8_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_d),
        .in_c0_eni9_9_tpl(bubble_select_stencil_2d_B10_merge_reg_aunroll_x_e),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit211_0_tpl(),
        .out_c0_exit211_1_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_1_tpl),
        .out_c0_exit211_2_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_2_tpl),
        .out_c0_exit211_3_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_3_tpl),
        .out_c0_exit211_4_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_4_tpl),
        .out_c0_exit211_5_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_5_tpl),
        .out_c0_exit211_6_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_6_tpl),
        .out_c0_exit211_7_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_7_tpl),
        .out_c0_exit211_8_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_8_tpl),
        .out_c0_exit211_9_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_9_tpl),
        .out_c0_exit211_10_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_10_tpl),
        .out_c0_exit211_11_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_11_tpl),
        .out_c0_exit211_12_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_12_tpl),
        .out_c0_exit211_13_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_13_tpl),
        .out_c0_exit211_14_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_14_tpl),
        .out_c0_exit211_15_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_15_tpl),
        .out_c0_exit211_16_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_16_tpl),
        .out_c0_exit211_17_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_17_tpl),
        .out_c0_exit211_18_tpl(i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out = i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out = i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going31_stencil_2d2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_18_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_17_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_16_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_15_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_14_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_13_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_12_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_11_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_10_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_9_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_8_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_7_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_6_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_5_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_4_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_3_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_2_tpl, i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_out_c0_exit211_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[127:96]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[128:128]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[129:129]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[161:130]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[196:165]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[228:197]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[229:229]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[230:230]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[262:231]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[294:263]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[326:295]);
    assign bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q[327:327]);

    // dupName_0_sync_out_x(GPOUT,17)@7
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_k;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_l;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_m;
    assign out_c0_exe1212 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_b;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_n;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_o;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_p;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_q;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_r;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_s;
    assign out_c0_exe2213 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_c;
    assign out_c0_exe3214 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_d;
    assign out_c0_exe4215 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_e;
    assign out_c0_exe5216 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_f;
    assign out_c0_exe6217 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_g;
    assign out_c0_exe7218 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_h;
    assign out_c0_exe8219 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_i;
    assign out_c0_exe9220 = bubble_select_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_j;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond29_preheader_stencil_2ds_c0_enter19718_stencil_2d1_aunroll_x_V0;

endmodule
