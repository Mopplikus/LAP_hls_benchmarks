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

// SystemVerilog created from bb_triangular_B9_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B9_stall_region (
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked44,
    input wire [31:0] in_i20_039123,
    input wire [31:0] in_lim_ext94_pop33119,
    input wire [31:0] in_lim_ext95_pop25127,
    input wire [0:0] in_memdep_phi6_pop24126,
    input wire [0:0] in_notcmp62125,
    input wire [31:0] in_reorder_limiter_enter112,
    input wire [31:0] in_reorder_limiter_enter97_pop26128,
    input wire [31:0] in_sub25124,
    input wire [32:0] in_unnamed_triangular13,
    input wire [0:0] in_unnamed_triangular14,
    input wire [0:0] in_unnamed_triangular15,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_lm122_triangular_avm_readdata,
    input wire [0:0] in_lm122_triangular_avm_writeack,
    input wire [0:0] in_lm122_triangular_avm_waitrequest,
    input wire [0:0] in_lm122_triangular_avm_readdatavalid,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [0:0] out_c0_exe2208,
    output wire [0:0] out_c0_exe3209,
    output wire [0:0] out_c0_exe4210,
    output wire [31:0] out_c0_exe5211,
    output wire [0:0] out_c0_exe6212,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_lm143_triangular_avm_readdata,
    input wire [0:0] in_lm143_triangular_avm_writeack,
    input wire [0:0] in_lm143_triangular_avm_waitrequest,
    input wire [0:0] in_lm143_triangular_avm_readdatavalid,
    output wire [31:0] out_lm122_triangular_avm_address,
    output wire [0:0] out_lm122_triangular_avm_enable,
    output wire [0:0] out_lm122_triangular_avm_read,
    output wire [0:0] out_lm122_triangular_avm_write,
    output wire [31:0] out_lm122_triangular_avm_writedata,
    output wire [3:0] out_lm122_triangular_avm_byteenable,
    output wire [0:0] out_lm122_triangular_avm_burstcount,
    input wire [31:0] in_memdep_5_triangular_avm_readdata,
    input wire [0:0] in_memdep_5_triangular_avm_writeack,
    input wire [0:0] in_memdep_5_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_5_triangular_avm_readdatavalid,
    output wire [31:0] out_lm143_triangular_avm_address,
    output wire [0:0] out_lm143_triangular_avm_enable,
    output wire [0:0] out_lm143_triangular_avm_read,
    output wire [0:0] out_lm143_triangular_avm_write,
    output wire [31:0] out_lm143_triangular_avm_writedata,
    output wire [3:0] out_lm143_triangular_avm_byteenable,
    output wire [0:0] out_lm143_triangular_avm_burstcount,
    output wire [31:0] out_memdep_5_triangular_avm_address,
    output wire [0:0] out_memdep_5_triangular_avm_enable,
    output wire [0:0] out_memdep_5_triangular_avm_read,
    output wire [0:0] out_memdep_5_triangular_avm_write,
    output wire [31:0] out_memdep_5_triangular_avm_writedata,
    output wire [3:0] out_memdep_5_triangular_avm_byteenable,
    output wire [0:0] out_memdep_5_triangular_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_6_tpl;
    wire [0:0] triangular_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] triangular_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] triangular_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] triangular_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] triangular_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [32:0] triangular_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] triangular_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] triangular_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] triangular_B9_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] triangular_B9_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] triangular_B9_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] triangular_B9_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] triangular_B9_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [31:0] triangular_B9_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [229:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [32:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [35:0] bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_f;
    wire [229:0] bubble_join_triangular_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_triangular_B9_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_triangular_B9_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_triangular_B9_merge_reg_aunroll_x_d;
    wire [32:0] bubble_select_triangular_B9_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_triangular_B9_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_triangular_B9_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_triangular_B9_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_triangular_B9_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_triangular_B9_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_triangular_B9_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_triangular_B9_merge_reg_aunroll_x_l;
    wire [31:0] bubble_select_triangular_B9_merge_reg_aunroll_x_m;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_V0;
    wire [0:0] SE_out_triangular_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_triangular_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_triangular_B9_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,31)
    assign bubble_join_stall_entry_q = {in_unnamed_triangular15, in_unnamed_triangular14, in_unnamed_triangular13, in_sub25124, in_reorder_limiter_enter97_pop26128, in_reorder_limiter_enter112, in_notcmp62125, in_memdep_phi6_pop24126, in_lim_ext95_pop25127, in_lim_ext94_pop33119, in_i20_039123, in_forked44};

    // bubble_select_stall_entry(BITSELECT,32)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[162:131]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[194:163]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[227:195]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[228:228]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[229:229]);

    // SE_stall_entry(STALLENABLE,41)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = triangular_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // triangular_B9_merge_reg_aunroll_x(BLACKBOX,29)@0
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
    // out out_data_out_9_tpl@1
    // out out_data_out_10_tpl@1
    // out out_data_out_11_tpl@1
    triangular_B9_merge_reg thetriangular_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_triangular_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_h),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_k),
        .in_data_in_4_tpl(bubble_select_stall_entry_c),
        .in_data_in_5_tpl(bubble_select_stall_entry_j),
        .in_data_in_6_tpl(bubble_select_stall_entry_l),
        .in_data_in_7_tpl(bubble_select_stall_entry_m),
        .in_data_in_8_tpl(bubble_select_stall_entry_g),
        .in_data_in_9_tpl(bubble_select_stall_entry_f),
        .in_data_in_10_tpl(bubble_select_stall_entry_e),
        .in_data_in_11_tpl(bubble_select_stall_entry_i),
        .out_stall_out(triangular_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(triangular_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(triangular_B9_merge_reg_aunroll_x_out_data_out_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_triangular_B9_merge_reg_aunroll_x(BITJOIN,38)
    assign bubble_join_triangular_B9_merge_reg_aunroll_x_q = {triangular_B9_merge_reg_aunroll_x_out_data_out_11_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_10_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_9_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_8_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_7_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_6_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_5_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_4_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_3_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_2_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_1_tpl, triangular_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_triangular_B9_merge_reg_aunroll_x(BITSELECT,39)
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[97:65]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[129:98]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[161:130]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_h = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[162:162]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_i = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[163:163]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_j = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[164:164]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_k = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[165:165]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_l = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[197:166]);
    assign bubble_select_triangular_B9_merge_reg_aunroll_x_m = $unsigned(bubble_join_triangular_B9_merge_reg_aunroll_x_q[229:198]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_triangular_B9_merge_reg_aunroll_x(STALLENABLE,46)
    // Valid signal propagation
    assign SE_out_triangular_B9_merge_reg_aunroll_x_V0 = SE_out_triangular_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_triangular_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_o_stall | ~ (SE_out_triangular_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_triangular_B9_merge_reg_aunroll_x_wireValid = triangular_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x(STALLENABLE,44)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x(BLACKBOX,28)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out@20000000
    // out out_lm122_triangular_avm_address@20000000
    // out out_lm122_triangular_avm_burstcount@20000000
    // out out_lm122_triangular_avm_byteenable@20000000
    // out out_lm122_triangular_avm_enable@20000000
    // out out_lm122_triangular_avm_read@20000000
    // out out_lm122_triangular_avm_write@20000000
    // out out_lm122_triangular_avm_writedata@20000000
    // out out_lm143_triangular_avm_address@20000000
    // out out_lm143_triangular_avm_burstcount@20000000
    // out out_lm143_triangular_avm_byteenable@20000000
    // out out_lm143_triangular_avm_enable@20000000
    // out out_lm143_triangular_avm_read@20000000
    // out out_lm143_triangular_avm_write@20000000
    // out out_lm143_triangular_avm_writedata@20000000
    // out out_lm1_triangular_avm_address@20000000
    // out out_lm1_triangular_avm_burstcount@20000000
    // out out_lm1_triangular_avm_byteenable@20000000
    // out out_lm1_triangular_avm_enable@20000000
    // out out_lm1_triangular_avm_read@20000000
    // out out_lm1_triangular_avm_write@20000000
    // out out_lm1_triangular_avm_writedata@20000000
    // out out_memdep_5_triangular_avm_address@20000000
    // out out_memdep_5_triangular_avm_burstcount@20000000
    // out out_memdep_5_triangular_avm_byteenable@20000000
    // out out_memdep_5_triangular_avm_enable@20000000
    // out out_memdep_5_triangular_avm_read@20000000
    // out out_memdep_5_triangular_avm_write@20000000
    // out out_memdep_5_triangular_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@13
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit206_0_tpl@13
    // out out_c0_exit206_1_tpl@13
    // out out_c0_exit206_2_tpl@13
    // out out_c0_exit206_3_tpl@13
    // out out_c0_exit206_4_tpl@13
    // out out_c0_exit206_5_tpl@13
    // out out_c0_exit206_6_tpl@13
    // out out_c0_exit206_7_tpl@13
    // out out_c0_exit206_8_tpl@13
    triangular_i_sfc_s_c0_in_for_body29_s_c0_enter19216_triangular1 thei_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_backStall),
        .in_i_valid(SE_out_triangular_B9_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_lm122_triangular_avm_readdata(in_lm122_triangular_avm_readdata),
        .in_lm122_triangular_avm_readdatavalid(in_lm122_triangular_avm_readdatavalid),
        .in_lm122_triangular_avm_waitrequest(in_lm122_triangular_avm_waitrequest),
        .in_lm122_triangular_avm_writeack(in_lm122_triangular_avm_writeack),
        .in_lm143_triangular_avm_readdata(in_lm143_triangular_avm_readdata),
        .in_lm143_triangular_avm_readdatavalid(in_lm143_triangular_avm_readdatavalid),
        .in_lm143_triangular_avm_waitrequest(in_lm143_triangular_avm_waitrequest),
        .in_lm143_triangular_avm_writeack(in_lm143_triangular_avm_writeack),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_memdep_5_triangular_avm_readdata(in_memdep_5_triangular_avm_readdata),
        .in_memdep_5_triangular_avm_readdatavalid(in_memdep_5_triangular_avm_readdatavalid),
        .in_memdep_5_triangular_avm_waitrequest(in_memdep_5_triangular_avm_waitrequest),
        .in_memdep_5_triangular_avm_writeack(in_memdep_5_triangular_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni12_0_tpl(GND_q),
        .in_c0_eni12_1_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_b),
        .in_c0_eni12_2_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_h),
        .in_c0_eni12_3_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_f),
        .in_c0_eni12_4_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_g),
        .in_c0_eni12_5_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_k),
        .in_c0_eni12_6_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_e),
        .in_c0_eni12_7_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_m),
        .in_c0_eni12_8_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_j),
        .in_c0_eni12_9_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_l),
        .in_c0_eni12_10_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_i),
        .in_c0_eni12_11_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_c),
        .in_c0_eni12_12_tpl(bubble_select_triangular_B9_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out),
        .out_lm122_triangular_avm_address(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_address),
        .out_lm122_triangular_avm_burstcount(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_burstcount),
        .out_lm122_triangular_avm_byteenable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_byteenable),
        .out_lm122_triangular_avm_enable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_enable),
        .out_lm122_triangular_avm_read(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_read),
        .out_lm122_triangular_avm_write(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_write),
        .out_lm122_triangular_avm_writedata(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_writedata),
        .out_lm143_triangular_avm_address(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_address),
        .out_lm143_triangular_avm_burstcount(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_burstcount),
        .out_lm143_triangular_avm_byteenable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_byteenable),
        .out_lm143_triangular_avm_enable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_enable),
        .out_lm143_triangular_avm_read(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_read),
        .out_lm143_triangular_avm_write(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_write),
        .out_lm143_triangular_avm_writedata(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_writedata),
        .out_memdep_5_triangular_avm_address(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_address),
        .out_memdep_5_triangular_avm_burstcount(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_burstcount),
        .out_memdep_5_triangular_avm_byteenable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_byteenable),
        .out_memdep_5_triangular_avm_enable(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_enable),
        .out_memdep_5_triangular_avm_read(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_read),
        .out_memdep_5_triangular_avm_write(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_write),
        .out_memdep_5_triangular_avm_writedata(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit206_0_tpl(),
        .out_c0_exit206_1_tpl(),
        .out_c0_exit206_2_tpl(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_2_tpl),
        .out_c0_exit206_3_tpl(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_3_tpl),
        .out_c0_exit206_4_tpl(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_4_tpl),
        .out_c0_exit206_5_tpl(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_5_tpl),
        .out_c0_exit206_6_tpl(i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_6_tpl),
        .out_c0_exit206_7_tpl(),
        .out_c0_exit206_8_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going47_triangular6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,18)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_lm1_triangular_avm_address = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_address;
    assign out_lm1_triangular_avm_enable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_enable;
    assign out_lm1_triangular_avm_read = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_read;
    assign out_lm1_triangular_avm_write = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_write;
    assign out_lm1_triangular_avm_writedata = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_writedata;
    assign out_lm1_triangular_avm_byteenable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_byteenable;
    assign out_lm1_triangular_avm_burstcount = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm1_triangular_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x(BITJOIN,35)
    assign bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_q = {i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_6_tpl, i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_5_tpl, i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_4_tpl, i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_3_tpl, i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_c0_exit206_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x(BITSELECT,36)
    assign bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_q[2:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_q[34:3]);
    assign bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_q[35:35]);

    // dupName_0_sync_out_x(GPOUT,22)@13
    assign out_c0_exe2208 = bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_b;
    assign out_c0_exe3209 = bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_c;
    assign out_c0_exe4210 = bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_d;
    assign out_c0_exe5211 = bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_e;
    assign out_c0_exe6212 = bubble_select_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_f;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,24)
    assign out_lm122_triangular_avm_address = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_address;
    assign out_lm122_triangular_avm_enable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_enable;
    assign out_lm122_triangular_avm_read = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_read;
    assign out_lm122_triangular_avm_write = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_write;
    assign out_lm122_triangular_avm_writedata = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_writedata;
    assign out_lm122_triangular_avm_byteenable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_byteenable;
    assign out_lm122_triangular_avm_burstcount = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm122_triangular_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,26)
    assign out_lm143_triangular_avm_address = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_address;
    assign out_lm143_triangular_avm_enable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_enable;
    assign out_lm143_triangular_avm_read = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_read;
    assign out_lm143_triangular_avm_write = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_write;
    assign out_lm143_triangular_avm_writedata = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_writedata;
    assign out_lm143_triangular_avm_byteenable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_byteenable;
    assign out_lm143_triangular_avm_burstcount = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_lm143_triangular_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,27)
    assign out_memdep_5_triangular_avm_address = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_address;
    assign out_memdep_5_triangular_avm_enable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_enable;
    assign out_memdep_5_triangular_avm_read = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_read;
    assign out_memdep_5_triangular_avm_write = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_write;
    assign out_memdep_5_triangular_avm_writedata = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_writedata;
    assign out_memdep_5_triangular_avm_byteenable = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_byteenable;
    assign out_memdep_5_triangular_avm_burstcount = i_sfc_s_c0_in_for_body29_triangulars_c0_enter19216_triangular1_aunroll_x_out_memdep_5_triangular_avm_burstcount;

endmodule
