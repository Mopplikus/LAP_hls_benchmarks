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

// SystemVerilog created from bb_covariance_B9_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B9_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [32:0] in_fpga_indvars_iv14_pop28149,
    input wire [31:0] in_i24_034_pop29155,
    input wire [31:0] in_lim_ext54_pop45144,
    input wire [31:0] in_lim_ext55_pop30158,
    input wire [0:0] in_notcmp27152,
    input wire [31:0] in_reorder_limiter_enter113,
    input wire [31:0] in_reorder_limiter_enter68_pop31161,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10351,
    output wire [32:0] out_c0_exe11352,
    output wire [0:0] out_c0_exe12353,
    output wire [31:0] out_c0_exe13354,
    output wire [31:0] out_c0_exe14355,
    output wire [31:0] out_c0_exe15,
    output wire [0:0] out_c0_exe2343,
    output wire [31:0] out_c0_exe3344,
    output wire [31:0] out_c0_exe4345,
    output wire [31:0] out_c0_exe5346,
    output wire [0:0] out_c0_exe6347,
    output wire [31:0] out_c0_exe7348,
    output wire [0:0] out_c0_exe8349,
    output wire [31:0] out_c0_exe9350,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_profile_loop_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_10_tpl;
    wire [32:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_12_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_15_tpl;
    wire [193:0] bubble_join_stall_entry_q;
    wire [32:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [325:0] bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_k;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_o;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_p;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,16)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter68_pop31161, in_reorder_limiter_enter113, in_notcmp27152, in_lim_ext55_pop30158, in_lim_ext54_pop45144, in_i24_034_pop29155, in_fpga_indvars_iv14_pop28149};

    // bubble_select_stall_entry(BITSELECT,17)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[32:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[129:129]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[161:130]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[193:162]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x(STALLENABLE,25)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_profile_loop_o_valid@8
    // out out_c0_exit341_0_tpl@8
    // out out_c0_exit341_1_tpl@8
    // out out_c0_exit341_2_tpl@8
    // out out_c0_exit341_3_tpl@8
    // out out_c0_exit341_4_tpl@8
    // out out_c0_exit341_5_tpl@8
    // out out_c0_exit341_6_tpl@8
    // out out_c0_exit341_7_tpl@8
    // out out_c0_exit341_8_tpl@8
    // out out_c0_exit341_9_tpl@8
    // out out_c0_exit341_10_tpl@8
    // out out_c0_exit341_11_tpl@8
    // out out_c0_exit341_12_tpl@8
    // out out_c0_exit341_13_tpl@8
    // out out_c0_exit341_14_tpl@8
    // out out_c0_exit341_15_tpl@8
    covariance_i_sfc_s_c0_in_for_cond33_preh0000ter31838_covariance8 thei_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni8317_0_tpl(GND_q),
        .in_c0_eni8317_1_tpl(bubble_select_stall_entry_b),
        .in_c0_eni8317_2_tpl(GND_q),
        .in_c0_eni8317_3_tpl(bubble_select_stall_entry_c),
        .in_c0_eni8317_4_tpl(bubble_select_stall_entry_e),
        .in_c0_eni8317_5_tpl(bubble_select_stall_entry_h),
        .in_c0_eni8317_6_tpl(bubble_select_stall_entry_f),
        .in_c0_eni8317_7_tpl(bubble_select_stall_entry_g),
        .in_c0_eni8317_8_tpl(bubble_select_stall_entry_d),
        .out_o_stall(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit341_0_tpl(),
        .out_c0_exit341_1_tpl(),
        .out_c0_exit341_2_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_2_tpl),
        .out_c0_exit341_3_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_3_tpl),
        .out_c0_exit341_4_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_4_tpl),
        .out_c0_exit341_5_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_5_tpl),
        .out_c0_exit341_6_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_6_tpl),
        .out_c0_exit341_7_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_7_tpl),
        .out_c0_exit341_8_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_8_tpl),
        .out_c0_exit341_9_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_9_tpl),
        .out_c0_exit341_10_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_10_tpl),
        .out_c0_exit341_11_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_11_tpl),
        .out_c0_exit341_12_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_12_tpl),
        .out_c0_exit341_13_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_13_tpl),
        .out_c0_exit341_14_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_14_tpl),
        .out_c0_exit341_15_tpl(i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_15_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,22)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x(BITJOIN,20)
    assign bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q = {i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_15_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_14_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_13_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_12_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_11_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_10_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_9_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_8_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_7_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_6_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_5_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_4_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_3_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_c0_exit341_2_tpl, i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x(BITSELECT,21)
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[65:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[130:99]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[163:132]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[195:164]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[228:196]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[229:229]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[261:230]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[293:262]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_q[325:294]);

    // dupName_0_sync_out_x(GPOUT,13)@8
    assign out_c0_exe10351 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_k;
    assign out_c0_exe11352 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_l;
    assign out_c0_exe12353 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_m;
    assign out_c0_exe13354 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_n;
    assign out_c0_exe14355 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_o;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_p;
    assign out_c0_exe2343 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_c;
    assign out_c0_exe3344 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_d;
    assign out_c0_exe4345 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_e;
    assign out_c0_exe5346 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_f;
    assign out_c0_exe6347 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_g;
    assign out_c0_exe7348 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_h;
    assign out_c0_exe8349 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_i;
    assign out_c0_exe9350 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_j;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond33_preheader_covariances_c0_enter31838_covariance8_aunroll_x_V0;

    // rst_sync(RESETSYNC,36)
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
