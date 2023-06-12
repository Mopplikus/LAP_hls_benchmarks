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

// SystemVerilog created from bb_stencil_2d_B6_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B6_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_c_025_pop1571,
    input wire [31:0] in_mul2838_pop1777,
    input wire [31:0] in_mul2862,
    input wire [0:0] in_notcmp1868,
    input wire [0:0] in_notcmp2341_pop1880,
    input wire [0:0] in_notcmp2367,
    input wire [31:0] in_r_026_pop1335_pop1674,
    input wire [31:0] in_r_026_pop1357,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe1144,
    output wire [31:0] out_c0_exe12,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [31:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [31:0] out_c0_exe2145,
    output wire [31:0] out_c0_exe3146,
    output wire [31:0] out_c0_exe4147,
    output wire [0:0] out_c0_exe5148,
    output wire [0:0] out_c0_exe6149,
    output wire [31:0] out_c0_exe7150,
    output wire [0:0] out_c0_exe8151,
    output wire [0:0] out_c0_exe9152,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_11_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_14_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_15_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_16_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_17_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_18_tpl;
    wire [162:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [328:0] bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_l;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_m;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_p;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_r;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_s;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_t;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,16)
    assign bubble_join_stall_entry_q = {in_r_026_pop1357, in_r_026_pop1335_pop1674, in_notcmp2367, in_notcmp2341_pop1880, in_notcmp1868, in_mul2862, in_mul2838_pop1777, in_c_025_pop1571};

    // bubble_select_stall_entry(BITSELECT,17)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[95:64]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:96]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[130:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[162:131]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x(STALLENABLE,25)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_profile_loop_o_valid@12
    // out out_c0_exit143_0_tpl@12
    // out out_c0_exit143_1_tpl@12
    // out out_c0_exit143_2_tpl@12
    // out out_c0_exit143_3_tpl@12
    // out out_c0_exit143_4_tpl@12
    // out out_c0_exit143_5_tpl@12
    // out out_c0_exit143_6_tpl@12
    // out out_c0_exit143_7_tpl@12
    // out out_c0_exit143_8_tpl@12
    // out out_c0_exit143_9_tpl@12
    // out out_c0_exit143_10_tpl@12
    // out out_c0_exit143_11_tpl@12
    // out out_c0_exit143_12_tpl@12
    // out out_c0_exit143_13_tpl@12
    // out out_c0_exit143_14_tpl@12
    // out out_c0_exit143_15_tpl@12
    // out out_c0_exit143_16_tpl@12
    // out out_c0_exit143_17_tpl@12
    // out out_c0_exit143_18_tpl@12
    stencil_2d_i_sfc_s_c0_in_for_cond12_preh0000ter12916_stencil_2d9 thei_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni9_0_tpl(GND_q),
        .in_c0_eni9_1_tpl(GND_q),
        .in_c0_eni9_2_tpl(bubble_select_stall_entry_h),
        .in_c0_eni9_3_tpl(bubble_select_stall_entry_b),
        .in_c0_eni9_4_tpl(bubble_select_stall_entry_c),
        .in_c0_eni9_5_tpl(bubble_select_stall_entry_f),
        .in_c0_eni9_6_tpl(bubble_select_stall_entry_e),
        .in_c0_eni9_7_tpl(bubble_select_stall_entry_i),
        .in_c0_eni9_8_tpl(bubble_select_stall_entry_d),
        .in_c0_eni9_9_tpl(bubble_select_stall_entry_g),
        .out_o_stall(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit143_0_tpl(),
        .out_c0_exit143_1_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_1_tpl),
        .out_c0_exit143_2_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_2_tpl),
        .out_c0_exit143_3_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_3_tpl),
        .out_c0_exit143_4_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_4_tpl),
        .out_c0_exit143_5_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_5_tpl),
        .out_c0_exit143_6_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_6_tpl),
        .out_c0_exit143_7_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_7_tpl),
        .out_c0_exit143_8_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_8_tpl),
        .out_c0_exit143_9_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_9_tpl),
        .out_c0_exit143_10_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_10_tpl),
        .out_c0_exit143_11_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_11_tpl),
        .out_c0_exit143_12_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_12_tpl),
        .out_c0_exit143_13_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_13_tpl),
        .out_c0_exit143_14_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_14_tpl),
        .out_c0_exit143_15_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_15_tpl),
        .out_c0_exit143_16_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_16_tpl),
        .out_c0_exit143_17_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_17_tpl),
        .out_c0_exit143_18_tpl(i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,22)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x(BITJOIN,20)
    assign bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q = {i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_18_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_17_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_16_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_15_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_14_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_13_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_12_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_11_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_10_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_9_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_8_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_7_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_6_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_5_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_4_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_3_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_2_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_c0_exit143_1_tpl, i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x(BITSELECT,21)
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[96:65]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[128:97]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[129:129]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[162:131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[164:164]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[165:165]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[197:166]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[229:198]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[230:230]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[231:231]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[263:232]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_r = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[295:264]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_s = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[327:296]);
    assign bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_t = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q[328:328]);

    // dupName_0_sync_out_x(GPOUT,13)@12
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_l;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_m;
    assign out_c0_exe1144 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_c;
    assign out_c0_exe12 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_n;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_o;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_p;
    assign out_c0_exe15 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_q;
    assign out_c0_exe16 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_r;
    assign out_c0_exe17 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_s;
    assign out_c0_exe18 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_t;
    assign out_c0_exe2145 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_d;
    assign out_c0_exe3146 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_e;
    assign out_c0_exe4147 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_f;
    assign out_c0_exe5148 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_g;
    assign out_c0_exe6149 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_h;
    assign out_c0_exe7150 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_i;
    assign out_c0_exe8151 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_j;
    assign out_c0_exe9152 = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_k;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond12_preheader_stencil_2ds_c0_enter12916_stencil_2d9_aunroll_x_V0;

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
