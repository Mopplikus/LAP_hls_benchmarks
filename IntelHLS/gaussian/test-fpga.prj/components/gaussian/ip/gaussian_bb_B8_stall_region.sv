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

// SystemVerilog created from bb_gaussian_B8_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B8_stall_region (
    input wire [31:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [31:0] in_j_035,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_add,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [32:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_121_q;
    wire [31:0] c_i32_1919_q;
    wire [31:0] c_i32_317_q;
    wire [31:0] c_i32_318_q;
    wire [32:0] c_i33_120_q;
    wire [32:0] i_add_gaussian9_a;
    wire [32:0] i_add_gaussian9_b;
    logic [32:0] i_add_gaussian9_o;
    wire [32:0] i_add_gaussian9_q;
    wire [33:0] i_cmp1933_gaussian10_a;
    wire [33:0] i_cmp1933_gaussian10_b;
    logic [33:0] i_cmp1933_gaussian10_o;
    wire [0:0] i_cmp1933_gaussian10_c;
    wire [0:0] i_fpga_indvars_iv13_replace_phi_gaussian3_s;
    reg [31:0] i_fpga_indvars_iv13_replace_phi_gaussian3_q;
    wire [0:0] i_fpga_indvars_iv15_replace_phi_gaussian1_s;
    reg [31:0] i_fpga_indvars_iv15_replace_phi_gaussian1_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_intel_reserved_ffwd_3_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_valid_out;
    wire [0:0] i_umax_gaussian5_s;
    reg [31:0] i_umax_gaussian5_q;
    wire [33:0] i_unnamed_gaussian4_a;
    wire [33:0] i_unnamed_gaussian4_b;
    logic [33:0] i_unnamed_gaussian4_o;
    wire [0:0] i_unnamed_gaussian4_c;
    wire [32:0] i_unnamed_gaussian6_a;
    wire [32:0] i_unnamed_gaussian6_b;
    logic [32:0] i_unnamed_gaussian6_o;
    wire [32:0] i_unnamed_gaussian6_q;
    wire [32:0] i_unnamed_gaussian7_vt_join_q;
    wire [31:0] i_unnamed_gaussian7_vt_select_31_b;
    wire [33:0] i_unnamed_gaussian8_a;
    wire [33:0] i_unnamed_gaussian8_b;
    logic [33:0] i_unnamed_gaussian8_o;
    wire [33:0] i_unnamed_gaussian8_q;
    wire [31:0] bgTrunc_i_add_gaussian9_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_gaussian6_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_gaussian8_sel_x_b;
    wire [0:0] gaussian_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] gaussian_B8_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [32:0] i_unnamed_gaussian7_sel_x_b;
    reg [31:0] redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_q;
    reg [31:0] redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_q;
    reg [0:0] redist1_gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [32:0] bubble_join_gaussian_B8_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_gaussian_B8_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_gaussian_B8_merge_reg_aunroll_x_c;
    reg [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_0;
    reg [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_1;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_v_s_0;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_0;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_1;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backEN;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_and0;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_or0;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backStall;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_V0;
    wire [0:0] SE_i_fpga_indvars_iv15_replace_phi_gaussian1_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and3;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and5;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_V0;
    reg [0:0] SE_i_umax_gaussian5_R_v_0;
    wire [0:0] SE_i_umax_gaussian5_v_s_0;
    wire [0:0] SE_i_umax_gaussian5_s_tv_0;
    wire [0:0] SE_i_umax_gaussian5_backEN;
    wire [0:0] SE_i_umax_gaussian5_backStall;
    wire [0:0] SE_i_umax_gaussian5_V0;
    wire [0:0] SE_i_unnamed_gaussian6_wireValid;
    wire [0:0] SE_i_unnamed_gaussian6_and0;
    wire [0:0] SE_i_unnamed_gaussian6_backStall;
    wire [0:0] SE_i_unnamed_gaussian6_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_gaussian_B8_merge_reg_aunroll_x_V2;
    reg [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_0;
    reg [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_1;
    reg [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_2;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_v_s_0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_1;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_2;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_or0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_or1;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backStall;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V1;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V2;
    reg [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_0;
    reg [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_1;
    reg [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_2;
    reg [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_3;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_v_s_0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_1;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_2;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_3;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or1;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or2;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backStall;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V0;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V1;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V2;
    wire [0:0] SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V3;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_V0;


    // c_i32_1919(CONSTANT,7)
    assign c_i32_1919_q = $unsigned(32'b00000000000000000000000000010011);

    // c_i32_121(CONSTANT,6)
    assign c_i32_121_q = $unsigned(32'b00000000000000000000000000000001);

    // i_add_gaussian9(ADD,13)@3
    assign i_add_gaussian9_a = {1'b0, redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_q};
    assign i_add_gaussian9_b = {1'b0, c_i32_121_q};
    assign i_add_gaussian9_o = $unsigned(i_add_gaussian9_a) + $unsigned(i_add_gaussian9_b);
    assign i_add_gaussian9_q = i_add_gaussian9_o[32:0];

    // bgTrunc_i_add_gaussian9_sel_x(BITSELECT,59)@3
    assign bgTrunc_i_add_gaussian9_sel_x_b = i_add_gaussian9_q[31:0];

    // i_cmp1933_gaussian10(COMPARE,14)@3
    assign i_cmp1933_gaussian10_a = {2'b00, bgTrunc_i_add_gaussian9_sel_x_b};
    assign i_cmp1933_gaussian10_b = {2'b00, c_i32_1919_q};
    assign i_cmp1933_gaussian10_o = $unsigned(i_cmp1933_gaussian10_a) - $unsigned(i_cmp1933_gaussian10_b);
    assign i_cmp1933_gaussian10_c[0] = i_cmp1933_gaussian10_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16(BLACKBOX,19)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i1_unnamed_11_gaussian0 thei_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_cmp1933_gaussian10_c),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall),
        .in_valid_in(SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V3),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15(BLACKBOX,20)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_10_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(bgTrunc_i_add_gaussian9_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall),
        .in_valid_in(SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V2),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_317(CONSTANT,8)
    assign c_i32_317_q = $unsigned(32'b11111111111111111111111111111101);

    // i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0(BLACKBOX,18)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_0 thei_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_backStall),
        .in_valid_in(SE_out_gaussian_B8_merge_reg_aunroll_x_V1),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0(BITJOIN,83)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_q = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0(BITSELECT,84)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_q[31:0]);

    // bubble_join_stall_entry(BITJOIN,92)
    assign bubble_join_stall_entry_q = {in_j_035, in_forked};

    // bubble_select_stall_entry(BITSELECT,93)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // SE_stall_entry(STALLENABLE,126)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = gaussian_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // gaussian_B8_merge_reg_aunroll_x(BLACKBOX,68)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    gaussian_B8_merge_reg thegaussian_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_gaussian_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .out_stall_out(gaussian_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(gaussian_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_gaussian_B8_merge_reg_aunroll_x(BITJOIN,96)
    assign bubble_join_gaussian_B8_merge_reg_aunroll_x_q = {gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl, gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_gaussian_B8_merge_reg_aunroll_x(BITSELECT,97)
    assign bubble_select_gaussian_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_gaussian_B8_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_gaussian_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_gaussian_B8_merge_reg_aunroll_x_q[32:32]);

    // redist1_gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl_1_0(REG,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN == 1'b1)
        begin
            redist1_gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q <= $unsigned(bubble_select_gaussian_B8_merge_reg_aunroll_x_c);
        end
    end

    // i_fpga_indvars_iv15_replace_phi_gaussian1(MUX,16)@2 + 1
    assign i_fpga_indvars_iv15_replace_phi_gaussian1_s = redist1_gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_fpga_indvars_iv15_replace_phi_gaussian1_q <= 32'b0;
        end
        else if (SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backEN == 1'b1)
        begin
            unique case (i_fpga_indvars_iv15_replace_phi_gaussian1_s)
                1'b0 : i_fpga_indvars_iv15_replace_phi_gaussian1_q <= bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_b;
                1'b1 : i_fpga_indvars_iv15_replace_phi_gaussian1_q <= c_i32_317_q;
                default : i_fpga_indvars_iv15_replace_phi_gaussian1_q <= 32'b0;
            endcase
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12(BLACKBOX,22)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_7_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_fpga_indvars_iv15_replace_phi_gaussian1_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall),
        .in_valid_in(SE_i_fpga_indvars_iv15_replace_phi_gaussian1_V1),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_120(CONSTANT,10)
    assign c_i33_120_q = $unsigned(33'b111111111111111111111111111111111);

    // c_i32_318(CONSTANT,9)
    assign c_i32_318_q = $unsigned(32'b00000000000000000000000000000011);

    // i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2(BLACKBOX,17)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_0 thei_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_backStall),
        .in_valid_in(SE_out_gaussian_B8_merge_reg_aunroll_x_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2(BITJOIN,80)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_q = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2(BITSELECT,81)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_q[31:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_fpga_indvars_iv13_replace_phi_gaussian3(MUX,15)@2
    assign i_fpga_indvars_iv13_replace_phi_gaussian3_s = redist1_gaussian_B8_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q;
    always @(i_fpga_indvars_iv13_replace_phi_gaussian3_s or bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_b or c_i32_318_q)
    begin
        unique case (i_fpga_indvars_iv13_replace_phi_gaussian3_s)
            1'b0 : i_fpga_indvars_iv13_replace_phi_gaussian3_q = bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_b;
            1'b1 : i_fpga_indvars_iv13_replace_phi_gaussian3_q = c_i32_318_q;
            default : i_fpga_indvars_iv13_replace_phi_gaussian3_q = 32'b0;
        endcase
    end

    // i_unnamed_gaussian4(COMPARE,26)@2
    assign i_unnamed_gaussian4_a = {2'b00, c_i32_1919_q};
    assign i_unnamed_gaussian4_b = {2'b00, i_fpga_indvars_iv13_replace_phi_gaussian3_q};
    assign i_unnamed_gaussian4_o = $unsigned(i_unnamed_gaussian4_a) - $unsigned(i_unnamed_gaussian4_b);
    assign i_unnamed_gaussian4_c[0] = i_unnamed_gaussian4_o[33];

    // i_umax_gaussian5(MUX,25)@2 + 1
    assign i_umax_gaussian5_s = i_unnamed_gaussian4_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_umax_gaussian5_q <= 32'b0;
        end
        else if (SE_i_umax_gaussian5_backEN == 1'b1)
        begin
            unique case (i_umax_gaussian5_s)
                1'b0 : i_umax_gaussian5_q <= c_i32_1919_q;
                1'b1 : i_umax_gaussian5_q <= i_fpga_indvars_iv13_replace_phi_gaussian3_q;
                default : i_umax_gaussian5_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_gaussian6(ADD,27)@3
    assign i_unnamed_gaussian6_a = {1'b0, i_umax_gaussian5_q};
    assign i_unnamed_gaussian6_b = {1'b0, i_fpga_indvars_iv15_replace_phi_gaussian1_q};
    assign i_unnamed_gaussian6_o = $unsigned(i_unnamed_gaussian6_a) + $unsigned(i_unnamed_gaussian6_b);
    assign i_unnamed_gaussian6_q = i_unnamed_gaussian6_o[32:0];

    // bgTrunc_i_unnamed_gaussian6_sel_x(BITSELECT,60)@3
    assign bgTrunc_i_unnamed_gaussian6_sel_x_b = i_unnamed_gaussian6_q[31:0];

    // i_unnamed_gaussian7_sel_x(BITSELECT,69)@3
    assign i_unnamed_gaussian7_sel_x_b = {1'b0, bgTrunc_i_unnamed_gaussian6_sel_x_b[31:0]};

    // i_unnamed_gaussian7_vt_select_31(BITSELECT,31)@3
    assign i_unnamed_gaussian7_vt_select_31_b = i_unnamed_gaussian7_sel_x_b[31:0];

    // i_unnamed_gaussian7_vt_join(BITJOIN,30)@3
    assign i_unnamed_gaussian7_vt_join_q = {GND_q, i_unnamed_gaussian7_vt_select_31_b};

    // i_unnamed_gaussian8(ADD,32)@3
    assign i_unnamed_gaussian8_a = {1'b0, i_unnamed_gaussian7_vt_join_q};
    assign i_unnamed_gaussian8_b = {1'b0, c_i33_120_q};
    assign i_unnamed_gaussian8_o = $unsigned(i_unnamed_gaussian8_a) + $unsigned(i_unnamed_gaussian8_b);
    assign i_unnamed_gaussian8_q = i_unnamed_gaussian8_o[33:0];

    // bgTrunc_i_unnamed_gaussian8_sel_x(BITSELECT,61)@3
    assign bgTrunc_i_unnamed_gaussian8_sel_x_b = i_unnamed_gaussian8_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14(BLACKBOX,24)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i33_unnamed_9_gaussian0 thei_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bgTrunc_i_unnamed_gaussian8_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall),
        .in_valid_in(SE_i_unnamed_gaussian6_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_umax_gaussian5(STALLENABLE,120)
    // Valid signal propagation
    assign SE_i_umax_gaussian5_V0 = SE_i_umax_gaussian5_R_v_0;
    // Stall signal propagation
    assign SE_i_umax_gaussian5_s_tv_0 = SE_i_unnamed_gaussian6_backStall & SE_i_umax_gaussian5_R_v_0;
    // Backward Enable generation
    assign SE_i_umax_gaussian5_backEN = ~ (SE_i_umax_gaussian5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_umax_gaussian5_v_s_0 = SE_i_umax_gaussian5_backEN & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_V0;
    // Backward Stall generation
    assign SE_i_umax_gaussian5_backStall = ~ (SE_i_umax_gaussian5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_umax_gaussian5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_umax_gaussian5_backEN == 1'b0)
            begin
                SE_i_umax_gaussian5_R_v_0 <= SE_i_umax_gaussian5_R_v_0 & SE_i_umax_gaussian5_s_tv_0;
            end
            else
            begin
                SE_i_umax_gaussian5_R_v_0 <= SE_i_umax_gaussian5_v_s_0;
            end

        end
    end

    // SE_i_unnamed_gaussian6(STALLENABLE,122)
    // Valid signal propagation
    assign SE_i_unnamed_gaussian6_V0 = SE_i_unnamed_gaussian6_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_gaussian6_backStall = i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_stall_out | ~ (SE_i_unnamed_gaussian6_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_gaussian6_and0 = SE_i_fpga_indvars_iv15_replace_phi_gaussian1_V0;
    assign SE_i_unnamed_gaussian6_wireValid = SE_i_umax_gaussian5_V0 & SE_i_unnamed_gaussian6_and0;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0(STALLENABLE,107)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_backStall = SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_wireValid = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_valid_out;

    // SE_i_fpga_indvars_iv15_replace_phi_gaussian1(STALLENABLE,103)
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_V0 = SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_0;
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_V1 = SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_1;
    // Stall signal propagation
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_0 = SE_i_unnamed_gaussian6_backStall & SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_0;
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_1 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_stall_out & SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_1;
    // Backward Enable generation
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_or0 = SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_0;
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backEN = ~ (SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_1 | SE_i_fpga_indvars_iv15_replace_phi_gaussian1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_and0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V2 & SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backEN;
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_V0 & SE_i_fpga_indvars_iv15_replace_phi_gaussian1_and0;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backStall = ~ (SE_i_fpga_indvars_iv15_replace_phi_gaussian1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_0 <= 1'b0;
            SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backEN == 1'b0)
            begin
                SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_0 <= SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_0 & SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_0;
            end
            else
            begin
                SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_0 <= SE_i_fpga_indvars_iv15_replace_phi_gaussian1_v_s_0;
            end

            if (SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backEN == 1'b0)
            begin
                SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_1 <= SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_1 & SE_i_fpga_indvars_iv15_replace_phi_gaussian1_s_tv_1;
            end
            else
            begin
                SE_i_fpga_indvars_iv15_replace_phi_gaussian1_R_v_1 <= SE_i_fpga_indvars_iv15_replace_phi_gaussian1_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg(STALLENABLE,171)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_s_tv_0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13(STALLENABLE,117)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_valid_out;

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13(BLACKBOX,23)@2
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_8_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(i_fpga_indvars_iv13_replace_phi_gaussian3_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_backStall),
        .in_valid_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_V1),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2(STALLENABLE,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed0 = (~ (SE_i_umax_gaussian5_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed1 = (~ (i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_backStall & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_or0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_backStall = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_V1 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_and0 = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_wireValid = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V1 & SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_and0;

    // SE_out_gaussian_B8_merge_reg_aunroll_x(STALLENABLE,132)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg0 <= SE_out_gaussian_B8_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg1 <= SE_out_gaussian_B8_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg2 <= SE_out_gaussian_B8_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_out_stall_out) & SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg0;
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1628_gaussian0_out_stall_out) & SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg1;
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_consumed2 = (~ (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backStall) & SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_StallValid = SE_out_gaussian_B8_merge_reg_aunroll_x_backStall & SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid;
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_toReg0 = SE_out_gaussian_B8_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B8_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_toReg1 = SE_out_gaussian_B8_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B8_merge_reg_aunroll_x_consumed1;
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_toReg2 = SE_out_gaussian_B8_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B8_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_or0 = SE_out_gaussian_B8_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_or1 = SE_out_gaussian_B8_merge_reg_aunroll_x_consumed1 & SE_out_gaussian_B8_merge_reg_aunroll_x_or0;
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_wireStall = ~ (SE_out_gaussian_B8_merge_reg_aunroll_x_consumed2 & SE_out_gaussian_B8_merge_reg_aunroll_x_or1);
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_backStall = SE_out_gaussian_B8_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_V0 = SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg0);
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_V1 = SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg1);
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_V2 = SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B8_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_gaussian_B8_merge_reg_aunroll_x_wireValid = gaussian_B8_merge_reg_aunroll_x_out_valid_out;

    // SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0(STALLENABLE,134)
    // Valid signal propagation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V1 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_1;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V2 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_2;
    // Stall signal propagation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backStall & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_1 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next1427_gaussian2_backStall & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_1;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_2 = SE_i_fpga_indvars_iv15_replace_phi_gaussian1_backStall & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_2;
    // Backward Enable generation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_or0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_or1 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_1 | SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_or0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN = ~ (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_2 | SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_v_s_0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN & SE_out_gaussian_B8_merge_reg_aunroll_x_V2;
    // Backward Stall generation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backStall = ~ (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_0 <= 1'b0;
            SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_1 <= 1'b0;
            SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_0 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_0 & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_0;
            end
            else
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_0 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_v_s_0;
            end

            if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_1 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_1 & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_1;
            end
            else
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_1 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_v_s_0;
            end

            if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN == 1'b0)
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_2 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_2 & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_s_tv_2;
            end
            else
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_R_v_2 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_v_s_0;
            end

        end
    end

    // SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1(STALLENABLE,135)
    // Valid signal propagation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V1 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_1;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V2 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_2;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V3 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_3;
    // Stall signal propagation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_stall_out & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_1 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_1;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_2 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_stall_out & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_2;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_3 = i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_stall_out & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_3;
    // Backward Enable generation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or1 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_1 | SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or0;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or2 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_2 | SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or1;
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN = ~ (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_3 | SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_v_s_0 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_V0;
    // Backward Stall generation
    assign SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backStall = ~ (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_0 <= 1'b0;
            SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_1 <= 1'b0;
            SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_2 <= 1'b0;
            SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_0 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_0 & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_0;
            end
            else
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_0 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_v_s_0;
            end

            if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_1 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_1 & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_1;
            end
            else
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_1 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_v_s_0;
            end

            if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_2 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_2 & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_2;
            end
            else
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_2 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_v_s_0;
            end

            if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN == 1'b0)
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_3 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_3 & SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_s_tv_3;
            end
            else
            begin
                SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_R_v_3 <= SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14(STALLENABLE,119)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_V0 = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall = in_stall_in | ~ (SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and0 = i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and1 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and0;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and2 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and1;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and2;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and4 = i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_valid_out & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and3;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and5 = SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V1 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and4;
    assign SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_1_reg_V0 & SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_and5;

    // redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0(REG,76)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_backEN == 1'b1)
        begin
            redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_q <= $unsigned(bubble_select_gaussian_B8_merge_reg_aunroll_x_b);
        end
    end

    // redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1(REG,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_backEN == 1'b1)
        begin
            redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_q <= $unsigned(redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_0_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11(BLACKBOX,21)@3
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_3_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_6_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11 (
        .in_predicate_in(GND_q),
        .in_src_data_in_3_0(redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_backStall),
        .in_valid_in(SE_redist0_gaussian_B8_merge_reg_aunroll_x_out_data_out_0_tpl_2_1_V0),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_intel_reserved_ffwd_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,53)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian6_gaussian11_out_intel_reserved_ffwd_3_0;

    // sync_out(GPOUT,57)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_regfree_osync_x(GPOUT,62)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian7_gaussian12_out_intel_reserved_ffwd_4_0;

    // dupName_0_sync_out_x(GPOUT,63)@3
    assign out_add = bgTrunc_i_add_gaussian9_sel_x_b;
    assign out_valid_out = SE_out_i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_V0;

    // dupName_1_regfree_osync_x(GPOUT,64)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian8_gaussian13_out_intel_reserved_ffwd_5_0;

    // dupName_2_regfree_osync_x(GPOUT,65)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i33_unnamed_gaussian9_gaussian14_out_intel_reserved_ffwd_6_0;

    // dupName_3_regfree_osync_x(GPOUT,66)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian15_out_intel_reserved_ffwd_7_0;

    // dupName_4_regfree_osync_x(GPOUT,67)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_gaussian11_gaussian16_out_intel_reserved_ffwd_8_0;

endmodule
