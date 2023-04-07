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

// SystemVerilog created from bb_stencil_2d_B2_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:43 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B2_stall_region (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked34,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1111,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_4_tpl;
    wire [0:0] stencil_2d_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] stencil_2d_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] stencil_2d_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [64:0] bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_d;
    wire [0:0] bubble_join_stencil_2d_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_stencil_2d_B2_merge_reg_aunroll_x_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_V0;
    wire [0:0] SE_out_stencil_2d_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_stencil_2d_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_stencil_2d_B2_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = in_forked34;

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,31)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = stencil_2d_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // stencil_2d_B2_merge_reg_aunroll_x(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    stencil_2d_B2_merge_reg thestencil_2d_B2_merge_reg_aunroll_x (
        .in_stall_in(SE_out_stencil_2d_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(stencil_2d_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(stencil_2d_B2_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(stencil_2d_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_stencil_2d_B2_merge_reg_aunroll_x(BITJOIN,28)
    assign bubble_join_stencil_2d_B2_merge_reg_aunroll_x_q = stencil_2d_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_stencil_2d_B2_merge_reg_aunroll_x(BITSELECT,29)
    assign bubble_select_stencil_2d_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_stencil_2d_B2_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_stencil_2d_B2_merge_reg_aunroll_x(STALLENABLE,36)
    // Valid signal propagation
    assign SE_out_stencil_2d_B2_merge_reg_aunroll_x_V0 = SE_out_stencil_2d_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_stencil_2d_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_o_stall | ~ (SE_out_stencil_2d_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_stencil_2d_B2_merge_reg_aunroll_x_wireValid = stencil_2d_B2_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x(STALLENABLE,34)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x(BLACKBOX,18)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit110_0_tpl@6
    // out out_c0_exit110_1_tpl@6
    // out out_c0_exit110_2_tpl@6
    // out out_c0_exit110_3_tpl@6
    // out out_c0_exit110_4_tpl@6
    stencil_2d_i_sfc_s_c0_in_for_cond4_prehe0000ter10814_stencil_2d1 thei_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_backStall),
        .in_i_valid(SE_out_stencil_2d_B2_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_stencil_2d_B2_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit110_0_tpl(),
        .out_c0_exit110_1_tpl(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_1_tpl),
        .out_c0_exit110_2_tpl(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_2_tpl),
        .out_c0_exit110_3_tpl(),
        .out_c0_exit110_4_tpl(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,5)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out = i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out = i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going26_stencil_2d2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,11)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,15)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x(BITJOIN,25)
    assign bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_4_tpl, i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_2_tpl, i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_out_c0_exit110_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x(BITSELECT,26)
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_q[64:64]);

    // dupName_0_sync_out_x(GPOUT,17)@6
    assign out_c0_exe1111 = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_b;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_c;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_d;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10814_stencil_2d1_aunroll_x_V0;

endmodule
