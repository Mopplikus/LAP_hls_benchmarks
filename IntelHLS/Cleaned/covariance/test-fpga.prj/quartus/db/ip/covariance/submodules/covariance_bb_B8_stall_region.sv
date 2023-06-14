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

// SystemVerilog created from bb_covariance_B8_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B8_stall_region (
    output wire [31:0] out_c0_exe10306,
    output wire [31:0] out_c0_exe1297,
    output wire [31:0] out_c0_exe2298,
    output wire [32:0] out_c0_exe3299,
    output wire [0:0] out_c0_exe4300,
    output wire [0:0] out_c0_exe5301,
    output wire [31:0] out_c0_exe6302,
    output wire [31:0] out_c0_exe7303,
    output wire [31:0] out_c0_exe9305,
    output wire [0:0] out_memdep_phi3_pop25,
    output wire [0:0] out_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out,
    input wire [0:0] in_feedback_in_25,
    output wire [0:0] out_feedback_stall_out_25,
    input wire [0:0] in_feedback_valid_in_25,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked85,
    input wire [31:0] in_lim_ext81_pop42141,
    input wire [31:0] in_reorder_limiter_enter118,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] covariance_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] covariance_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B8_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_2_tpl;
    wire [32:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_valid_out;
    wire [226:0] join_for_coalesced_delay_0_q;
    wire [32:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [31:0] sel_for_coalesced_delay_0_d;
    wire [31:0] sel_for_coalesced_delay_0_e;
    wire [31:0] sel_for_coalesced_delay_0_f;
    wire [31:0] sel_for_coalesced_delay_0_g;
    wire [31:0] sel_for_coalesced_delay_0_h;
    wire [0:0] sel_for_coalesced_delay_0_i;
    wire [0:0] sel_for_coalesced_delay_0_j;
    reg [226:0] coalesced_delay_0_0_q;
    wire [64:0] bubble_join_covariance_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B8_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B8_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_covariance_B8_merge_reg_aunroll_x_d;
    wire [227:0] bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_c;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_k;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_b;
    wire [64:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_covariance_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_coalesced_delay_0_0_R_v_0;
    wire [0:0] SE_coalesced_delay_0_0_v_s_0;
    wire [0:0] SE_coalesced_delay_0_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_0_0_backEN;
    wire [0:0] SE_coalesced_delay_0_0_backStall;
    wire [0:0] SE_coalesced_delay_0_0_V0;


    // SE_stall_entry(STALLENABLE,60)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,51)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter118, in_lim_ext81_pop42141, in_forked85};

    // bubble_select_stall_entry(BITSELECT,52)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);

    // covariance_B8_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    covariance_B8_merge_reg thecovariance_B8_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_stall_in(SE_out_covariance_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(covariance_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_stall_out(covariance_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B8_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_covariance_B8_merge_reg_aunroll_x(STALLENABLE,55)
    // Valid signal propagation
    assign SE_out_covariance_B8_merge_reg_aunroll_x_V0 = SE_out_covariance_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B8_merge_reg_aunroll_x_wireValid = covariance_B8_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_covariance_B8_merge_reg_aunroll_x(BITJOIN,40)
    assign bubble_join_covariance_B8_merge_reg_aunroll_x_q = {covariance_B8_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B8_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B8_merge_reg_aunroll_x(BITSELECT,41)
    assign bubble_select_covariance_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B8_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B8_merge_reg_aunroll_x_q[64:33]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit296_0_tpl@5
    // out out_c0_exit296_1_tpl@5
    // out out_c0_exit296_2_tpl@5
    // out out_c0_exit296_3_tpl@5
    // out out_c0_exit296_4_tpl@5
    // out out_c0_exit296_5_tpl@5
    // out out_c0_exit296_6_tpl@5
    // out out_c0_exit296_7_tpl@5
    // out out_c0_exit296_8_tpl@5
    // out out_c0_exit296_9_tpl@5
    // out out_c0_exit296_10_tpl@5
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@5
    // out out_pipeline_valid_out@20000000
    covariance_i_sfc_s_c0_in_for_cond31_preh0000ter28230_covariance1 thei_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x (
        .in_c0_eni3281_0_tpl(GND_q),
        .in_c0_eni3281_1_tpl(bubble_select_covariance_B8_merge_reg_aunroll_x_b),
        .in_c0_eni3281_2_tpl(bubble_select_covariance_B8_merge_reg_aunroll_x_d),
        .in_c0_eni3281_3_tpl(bubble_select_covariance_B8_merge_reg_aunroll_x_c),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B8_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit296_0_tpl(),
        .out_c0_exit296_1_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_1_tpl),
        .out_c0_exit296_2_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_2_tpl),
        .out_c0_exit296_3_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_3_tpl),
        .out_c0_exit296_4_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_4_tpl),
        .out_c0_exit296_5_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_5_tpl),
        .out_c0_exit296_6_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_6_tpl),
        .out_c0_exit296_7_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_7_tpl),
        .out_c0_exit296_8_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_8_tpl),
        .out_c0_exit296_9_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_9_tpl),
        .out_c0_exit296_10_tpl(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_10_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x(STALLENABLE,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_stall_out) & SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed1 = (~ (SE_coalesced_delay_0_0_backStall) & SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_or0);
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_o_valid;

    // SE_coalesced_delay_0_0(STALLENABLE,64)
    // Valid signal propagation
    assign SE_coalesced_delay_0_0_V0 = SE_coalesced_delay_0_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_0_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_backStall & SE_coalesced_delay_0_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_0_0_backEN = ~ (SE_coalesced_delay_0_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_0_0_v_s_0 = SE_coalesced_delay_0_0_backEN & SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_V1;
    // Backward Stall generation
    assign SE_coalesced_delay_0_0_backStall = ~ (SE_coalesced_delay_0_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_0_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_0_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_R_v_0 & SE_coalesced_delay_0_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_0_0_R_v_0 <= SE_coalesced_delay_0_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x(BITJOIN,44)
    assign bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_10_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_9_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_8_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_7_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_6_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_5_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_4_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_3_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_2_tpl, i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_c0_exit296_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x(BITSELECT,45)
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[96:64]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[97:97]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[130:99]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[162:131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[195:164]);
    assign bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_q[227:196]);

    // i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3(BLACKBOX,12)@5
    // in in_stall_in@20000000
    // out out_data_out@6
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@6
    covariance_i_llvm_fpga_pop_i1_memdep_phi3_pop25_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_i),
        .in_feedback_in_25(in_feedback_in_25),
        .in_feedback_valid_in_25(in_feedback_valid_in_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3(STALLENABLE,59)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_and0 = i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_wireValid = SE_coalesced_delay_0_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3(BITJOIN,47)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_q = i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3(BITSELECT,48)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_q[0:0]);

    // join_for_coalesced_delay_0(BITJOIN,36)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_d};

    // coalesced_delay_0_0(REG,38)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_0_0_q <= $unsigned(227'b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_0_0_backEN == 1'b1)
        begin
            coalesced_delay_0_0_q <= $unsigned(join_for_coalesced_delay_0_q);
        end
    end

    // sel_for_coalesced_delay_0(BITSELECT,37)
    assign sel_for_coalesced_delay_0_b = $unsigned(coalesced_delay_0_0_q[32:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(coalesced_delay_0_0_q[64:33]);
    assign sel_for_coalesced_delay_0_d = $unsigned(coalesced_delay_0_0_q[96:65]);
    assign sel_for_coalesced_delay_0_e = $unsigned(coalesced_delay_0_0_q[128:97]);
    assign sel_for_coalesced_delay_0_f = $unsigned(coalesced_delay_0_0_q[160:129]);
    assign sel_for_coalesced_delay_0_g = $unsigned(coalesced_delay_0_0_q[192:161]);
    assign sel_for_coalesced_delay_0_h = $unsigned(coalesced_delay_0_0_q[224:193]);
    assign sel_for_coalesced_delay_0_i = $unsigned(coalesced_delay_0_0_q[225:225]);
    assign sel_for_coalesced_delay_0_j = $unsigned(coalesced_delay_0_0_q[226:226]);

    // dupName_0_sync_out_x(GPOUT,3)@6
    assign out_c0_exe10306 = sel_for_coalesced_delay_0_h;
    assign out_c0_exe1297 = sel_for_coalesced_delay_0_c;
    assign out_c0_exe2298 = sel_for_coalesced_delay_0_d;
    assign out_c0_exe3299 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe4300 = sel_for_coalesced_delay_0_i;
    assign out_c0_exe5301 = sel_for_coalesced_delay_0_j;
    assign out_c0_exe6302 = sel_for_coalesced_delay_0_e;
    assign out_c0_exe7303 = sel_for_coalesced_delay_0_f;
    assign out_c0_exe9305 = sel_for_coalesced_delay_0_g;
    assign out_memdep_phi3_pop25 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_b;
    assign out_valid_out = SE_out_i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_V0;

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out = i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out = i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out;

    // feedback_stall_out_25_sync(GPOUT,10)
    assign out_feedback_stall_out_25 = i_llvm_fpga_pop_i1_memdep_phi3_pop25_covariance3_out_feedback_stall_out_25;

    // pipeline_valid_out_sync(GPOUT,20)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
