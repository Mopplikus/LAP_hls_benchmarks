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

// SystemVerilog created from bb_gaussian_B4_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Tue Jun 13 02:18:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B4_stall_region (
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    output wire [31:0] out_add,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_intel_reserved_ffwd_5_0,
    output wire [32:0] out_intel_reserved_ffwd_6_0,
    output wire [31:0] out_intel_reserved_ffwd_7_0,
    output wire [0:0] out_intel_reserved_ffwd_8_0,
    output wire [31:0] out_intel_reserved_ffwd_9_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [31:0] in_intel_reserved_ffwd_2_0,
    input wire [31:0] in_intel_reserved_ffwd_3_0,
    output wire [63:0] out_intel_reserved_ffwd_10_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [31:0] in_j_047,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add_gaussian9_sel_x_b;
    wire [31:0] bgTrunc_i_mul11_add14_gaussian13_sel_x_b;
    wire [31:0] bgTrunc_i_unnamed_gaussian6_sel_x_b;
    wire [32:0] bgTrunc_i_unnamed_gaussian8_sel_x_b;
    wire [31:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] gaussian_B4_merge_reg_aunroll_x_out_valid_out;
    wire [63:0] i_mptr_bitcast_index_gaussian0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index_gaussian0_c_i2_01_x_q;
    wire [32:0] i_unnamed_gaussian7_sel_x_b;
    wire [31:0] c_i32_128_q;
    wire [31:0] c_i32_1926_q;
    wire [31:0] c_i32_324_q;
    wire [31:0] c_i32_325_q;
    wire [32:0] c_i33_127_q;
    wire [32:0] i_add_gaussian9_a;
    wire [32:0] i_add_gaussian9_b;
    logic [32:0] i_add_gaussian9_o;
    wire [32:0] i_add_gaussian9_q;
    wire [33:0] i_cmp245_gaussian10_a;
    wire [33:0] i_cmp245_gaussian10_b;
    logic [33:0] i_cmp245_gaussian10_o;
    wire [0:0] i_cmp245_gaussian10_c;
    wire [0:0] i_fpga_indvars_iv6_replace_phi_gaussian3_s;
    reg [31:0] i_fpga_indvars_iv6_replace_phi_gaussian3_q;
    wire [0:0] i_fpga_indvars_iv8_replace_phi_gaussian1_s;
    reg [31:0] i_fpga_indvars_iv8_replace_phi_gaussian1_q;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_intel_reserved_ffwd_8_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_intel_reserved_ffwd_5_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_intel_reserved_ffwd_7_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_intel_reserved_ffwd_9_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_intel_reserved_ffwd_6_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_intel_reserved_ffwd_10_0;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_valid_out;
    wire [32:0] i_mul11_add14_gaussian13_a;
    wire [32:0] i_mul11_add14_gaussian13_b;
    logic [32:0] i_mul11_add14_gaussian13_o;
    wire [32:0] i_mul11_add14_gaussian13_q;
    wire [31:0] i_mul11_add14_gaussian13_vt_join_q;
    wire [29:0] i_mul11_add14_gaussian13_vt_select_31_b;
    wire [0:0] i_umax_gaussian5_s;
    reg [31:0] i_umax_gaussian5_q;
    wire [31:0] i_unnamed_gaussian11_vt_join_q;
    wire [29:0] i_unnamed_gaussian11_vt_select_31_b;
    wire [3:0] i_unnamed_gaussian12_vt_const_3_q;
    wire [31:0] i_unnamed_gaussian12_vt_join_q;
    wire [27:0] i_unnamed_gaussian12_vt_select_31_b;
    wire [31:0] i_unnamed_gaussian14_vt_const_63_q;
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
    wire [27:0] leftShiftStage0Idx1Rng4_uid123_dupName_0_i_unnamed_gaussian0_shift_x_in;
    wire [27:0] leftShiftStage0Idx1Rng4_uid123_dupName_0_i_unnamed_gaussian0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid124_dupName_0_i_unnamed_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_s;
    reg [31:0] leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid131_i_unnamed_gaussian0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid131_i_unnamed_gaussian0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid132_i_unnamed_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_s;
    reg [31:0] leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_q;
    wire [60:0] i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [29:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [59:0] redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_q;
    reg [31:0] redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_q;
    reg [31:0] redist3_i_fpga_indvars_iv6_replace_phi_gaussian3_q_2_0_q;
    reg [31:0] redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q;
    reg [31:0] redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q;
    reg [31:0] redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q;
    reg [31:0] redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q;
    reg [0:0] redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q;
    reg [0:0] redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_0_q;
    reg [0:0] redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_1_q;
    reg [31:0] redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_q;
    wire [32:0] bubble_join_gaussian_B4_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_gaussian_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_gaussian_B4_merge_reg_aunroll_x_c;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_b;
    wire [31:0] bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_q;
    wire [31:0] bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_b;
    wire [32:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_gaussian_B4_merge_reg_aunroll_x_V3;
    reg [0:0] SE_i_fpga_indvars_iv6_replace_phi_gaussian3_R_v_0;
    wire [0:0] SE_i_fpga_indvars_iv6_replace_phi_gaussian3_v_s_0;
    wire [0:0] SE_i_fpga_indvars_iv6_replace_phi_gaussian3_s_tv_0;
    wire [0:0] SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backEN;
    wire [0:0] SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backStall;
    wire [0:0] SE_i_fpga_indvars_iv6_replace_phi_gaussian3_V0;
    reg [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_0;
    reg [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_1;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_v_s_0;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_0;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_1;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backEN;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_or0;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backStall;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V0;
    wire [0:0] SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_V0;
    reg [0:0] SE_i_umax_gaussian5_R_v_0;
    wire [0:0] SE_i_umax_gaussian5_v_s_0;
    wire [0:0] SE_i_umax_gaussian5_s_tv_0;
    wire [0:0] SE_i_umax_gaussian5_backEN;
    wire [0:0] SE_i_umax_gaussian5_backStall;
    wire [0:0] SE_i_umax_gaussian5_V0;
    reg [0:0] SE_i_unnamed_gaussian4_R_v_0;
    reg [0:0] SE_i_unnamed_gaussian4_R_v_1;
    wire [0:0] SE_i_unnamed_gaussian4_v_s_0;
    wire [0:0] SE_i_unnamed_gaussian4_s_tv_0;
    wire [0:0] SE_i_unnamed_gaussian4_s_tv_1;
    wire [0:0] SE_i_unnamed_gaussian4_backEN;
    wire [0:0] SE_i_unnamed_gaussian4_or0;
    wire [0:0] SE_i_unnamed_gaussian4_backStall;
    wire [0:0] SE_i_unnamed_gaussian4_V0;
    wire [0:0] SE_i_unnamed_gaussian4_V1;
    wire [0:0] SE_i_unnamed_gaussian6_wireValid;
    wire [0:0] SE_i_unnamed_gaussian6_and0;
    wire [0:0] SE_i_unnamed_gaussian6_backStall;
    wire [0:0] SE_i_unnamed_gaussian6_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    wire [0:0] SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1;
    reg [0:0] SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_R_v_0;
    wire [0:0] SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_v_s_0;
    wire [0:0] SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backEN;
    wire [0:0] SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backStall;
    wire [0:0] SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_V0;
    reg [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    reg [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_or0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V1;
    reg [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0;
    reg [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    reg [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    reg [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1;
    wire [0:0] SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2;
    reg [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0;
    reg [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or0;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V0;
    wire [0:0] SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V1;
    reg [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_0;
    reg [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_1;
    reg [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_2;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_1;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_2;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_or0;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_or1;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V0;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V1;
    wire [0:0] SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V2;
    wire [0:0] SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_V0;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_out_bitsignaltemp;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_V0;
    reg [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_R_v_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_v_s_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_s_tv_0;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_backEN;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_backStall;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_V0;
    wire [0:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_i_valid;
    reg [0:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid;
    wire [0:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_and0;
    reg [0:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data0;
    reg [31:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data1;
    wire [0:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backStall;
    wire [0:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_V;
    wire [0:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_D0;
    wire [31:0] SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_D1;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid;
    reg [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid;
    reg [31:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0;
    reg [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data1;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V;
    wire [31:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D0;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D1;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid;
    reg [31:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0;
    reg [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data1;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V;
    wire [31:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0;
    wire [0:0] SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_and0;
    reg [59:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data0;
    reg [59:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V;
    wire [59:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_D0;
    wire [59:0] SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_i_valid;
    reg [0:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid;
    wire [0:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_and0;
    reg [0:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data0;
    reg [31:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data1;
    wire [0:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backStall;
    wire [0:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V;
    wire [0:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_D0;
    wire [31:0] SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_D1;
    wire [0:0] SR_SE_i_umax_gaussian5_i_valid;
    reg [0:0] SR_SE_i_umax_gaussian5_r_valid;
    reg [0:0] SR_SE_i_umax_gaussian5_r_data0;
    reg [31:0] SR_SE_i_umax_gaussian5_r_data1;
    wire [0:0] SR_SE_i_umax_gaussian5_backStall;
    wire [0:0] SR_SE_i_umax_gaussian5_V;
    wire [0:0] SR_SE_i_umax_gaussian5_D0;
    wire [31:0] SR_SE_i_umax_gaussian5_D1;
    wire [0:0] SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_i_valid;
    reg [0:0] SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid;
    reg [31:0] SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_data0;
    wire [0:0] SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall;
    wire [0:0] SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V;
    wire [31:0] SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_D0;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_i_valid;
    reg [0:0] SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid;
    reg [31:0] SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_data0;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backStall;
    wire [0:0] SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V;
    wire [31:0] SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_D0;


    // c_i32_128(CONSTANT,35)
    assign c_i32_128_q = $unsigned(32'b00000000000000000000000000000001);

    // redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0(REG,174)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b1)
        begin
            redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q <= $unsigned(SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_D0);
        end
    end

    // i_add_gaussian9(ADD,44)@5
    assign i_add_gaussian9_a = {1'b0, redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q};
    assign i_add_gaussian9_b = {1'b0, c_i32_128_q};
    assign i_add_gaussian9_o = $unsigned(i_add_gaussian9_a) + $unsigned(i_add_gaussian9_b);
    assign i_add_gaussian9_q = i_add_gaussian9_o[32:0];

    // bgTrunc_i_add_gaussian9_sel_x(BITSELECT,6)@5
    assign bgTrunc_i_add_gaussian9_sel_x_b = i_add_gaussian9_q[31:0];

    // SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0(STALLREG,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid <= 1'b0;
            SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid <= SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backStall & (SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid | SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_i_valid);

            if (SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_data0 <= bgTrunc_i_add_gaussian9_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_i_valid = SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V0;
    // Stall signal propagation
    assign SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backStall = SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid | ~ (SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V = SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid : SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_i_valid;

    assign SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_D0 = SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_valid == 1'b1 ? SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_r_data0 : bgTrunc_i_add_gaussian9_sel_x_b;

    // SE_stall_entry(STALLENABLE,250)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = gaussian_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0(STALLENABLE,267)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_V0 = SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_backStall & SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q(STALLENABLE,260)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_stall_out | ~ (SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_wireValid = SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_and0;

    // SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,262)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0 & SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(STALLENABLE,265)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 = 1'b1;

    // SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2(STALLENABLE,258)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_1 = SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backEN & SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2(STALLENABLE,259)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_and1 = SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 & SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,266)
    // Valid signal propagation
    assign SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backStall & SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_V1;
    // Backward Stall generation
    assign SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // i_unnamed_gaussian14_vt_const_63(CONSTANT,70)
    assign i_unnamed_gaussian14_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,157)
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = i_unnamed_gaussian14_vt_const_63_q[29:0];
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // i_mptr_bitcast_index_gaussian0_c_i2_01_x(CONSTANT,21)
    assign i_mptr_bitcast_index_gaussian0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,152)@4
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q, i_mptr_bitcast_index_gaussian0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15(BITJOIN,192)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15(BITSELECT,193)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_q[63:0]);

    // i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,156)@4
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_b[59:0]);
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_b[63:60]);

    // SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2(STALLREG,328)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid <= SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backStall & (SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid | SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_V0 & SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backStall = SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_V = SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid : SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_D0 = SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data0 : i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_D1 = SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_r_data1 : i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15(STALLENABLE,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed0 = (~ (SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed1 = (~ (SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15(BLACKBOX,50)@3
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@4
    // out out_stall_out@20000000
    // out out_valid_out@4
    gaussian_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_backStall),
        .in_valid_in(SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3(STALLENABLE,287)
    // Valid signal propagation
    assign SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast5418_gaussian15_out_stall_out | ~ (SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_wireValid = bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_out;

    // bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg(STALLFIFO,321)
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_in = SE_out_gaussian_B4_merge_reg_aunroll_x_V2;
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0(STALLENABLE,220)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_backStall = SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_wireValid = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0(BLACKBOX,49)@3
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@4
    // out out_stall_out@20000000
    // out out_valid_out@4
    gaussian_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_0 thei_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_backStall),
        .in_valid_in(SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1(STALLENABLE,283)
    // Valid signal propagation
    assign SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_stall_out | ~ (SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,320)
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_gaussian_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_gaussian_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2(BITJOIN,186)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_q = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2(BITSELECT,187)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_q[31:0]);

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18(STALLENABLE,226)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_valid_out;

    // c_i32_325(CONSTANT,39)
    assign c_i32_325_q = $unsigned(32'b00000000000000000000000000000011);

    // i_fpga_indvars_iv6_replace_phi_gaussian3(MUX,46)@2 + 1
    assign i_fpga_indvars_iv6_replace_phi_gaussian3_s = SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_D0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_fpga_indvars_iv6_replace_phi_gaussian3_q <= 32'b0;
        end
        else if (SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backEN == 1'b1)
        begin
            unique case (i_fpga_indvars_iv6_replace_phi_gaussian3_s)
                1'b0 : i_fpga_indvars_iv6_replace_phi_gaussian3_q <= SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_D1;
                1'b1 : i_fpga_indvars_iv6_replace_phi_gaussian3_q <= c_i32_325_q;
                default : i_fpga_indvars_iv6_replace_phi_gaussian3_q <= 32'b0;
            endcase
        end
    end

    // redist3_i_fpga_indvars_iv6_replace_phi_gaussian3_q_2_0(REG,170)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_fpga_indvars_iv6_replace_phi_gaussian3_q_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_unnamed_gaussian4_backEN == 1'b1)
        begin
            redist3_i_fpga_indvars_iv6_replace_phi_gaussian3_q_2_0_q <= $unsigned(i_fpga_indvars_iv6_replace_phi_gaussian3_q);
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18(BLACKBOX,52)@4
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_5_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_10_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18 (
        .in_predicate_in(GND_q),
        .in_src_data_in_5_0(redist3_i_fpga_indvars_iv6_replace_phi_gaussian3_q_2_0_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_backStall),
        .in_valid_in(SE_i_unnamed_gaussian4_V1),
        .out_intel_reserved_ffwd_5_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_intel_reserved_ffwd_5_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_1926(CONSTANT,36)
    assign c_i32_1926_q = $unsigned(32'b00000000000000000000000000010011);

    // i_unnamed_gaussian4(COMPARE,73)@3 + 1
    assign i_unnamed_gaussian4_a = {2'b00, c_i32_1926_q};
    assign i_unnamed_gaussian4_b = {2'b00, i_fpga_indvars_iv6_replace_phi_gaussian3_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_unnamed_gaussian4_o <= 34'b0;
        end
        else if (SE_i_unnamed_gaussian4_backEN == 1'b1)
        begin
            i_unnamed_gaussian4_o <= $unsigned(i_unnamed_gaussian4_a) - $unsigned(i_unnamed_gaussian4_b);
        end
    end
    assign i_unnamed_gaussian4_c[0] = i_unnamed_gaussian4_o[33];

    // SR_SE_i_umax_gaussian5(STALLREG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_umax_gaussian5_r_valid <= 1'b0;
            SR_SE_i_umax_gaussian5_r_data0 <= 1'bx;
            SR_SE_i_umax_gaussian5_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_umax_gaussian5_r_valid <= SE_i_umax_gaussian5_backStall & (SR_SE_i_umax_gaussian5_r_valid | SR_SE_i_umax_gaussian5_i_valid);

            if (SR_SE_i_umax_gaussian5_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_umax_gaussian5_r_data0 <= i_unnamed_gaussian4_c;
                SR_SE_i_umax_gaussian5_r_data1 <= $unsigned(redist3_i_fpga_indvars_iv6_replace_phi_gaussian3_q_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_umax_gaussian5_i_valid = SE_i_unnamed_gaussian4_V0;
    // Stall signal propagation
    assign SR_SE_i_umax_gaussian5_backStall = SR_SE_i_umax_gaussian5_r_valid | ~ (SR_SE_i_umax_gaussian5_i_valid);

    // Valid
    assign SR_SE_i_umax_gaussian5_V = SR_SE_i_umax_gaussian5_r_valid == 1'b1 ? SR_SE_i_umax_gaussian5_r_valid : SR_SE_i_umax_gaussian5_i_valid;

    // Data0
    assign SR_SE_i_umax_gaussian5_D0 = SR_SE_i_umax_gaussian5_r_valid == 1'b1 ? SR_SE_i_umax_gaussian5_r_data0 : i_unnamed_gaussian4_c;
    // Data1
    assign SR_SE_i_umax_gaussian5_D1 = SR_SE_i_umax_gaussian5_r_valid == 1'b1 ? SR_SE_i_umax_gaussian5_r_data1 : redist3_i_fpga_indvars_iv6_replace_phi_gaussian3_q_2_0_q;

    // SE_i_unnamed_gaussian4(STALLENABLE,245)
    // Valid signal propagation
    assign SE_i_unnamed_gaussian4_V0 = SE_i_unnamed_gaussian4_R_v_0;
    assign SE_i_unnamed_gaussian4_V1 = SE_i_unnamed_gaussian4_R_v_1;
    // Stall signal propagation
    assign SE_i_unnamed_gaussian4_s_tv_0 = SR_SE_i_umax_gaussian5_backStall & SE_i_unnamed_gaussian4_R_v_0;
    assign SE_i_unnamed_gaussian4_s_tv_1 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_stall_out & SE_i_unnamed_gaussian4_R_v_1;
    // Backward Enable generation
    assign SE_i_unnamed_gaussian4_or0 = SE_i_unnamed_gaussian4_s_tv_0;
    assign SE_i_unnamed_gaussian4_backEN = ~ (SE_i_unnamed_gaussian4_s_tv_1 | SE_i_unnamed_gaussian4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_unnamed_gaussian4_v_s_0 = SE_i_unnamed_gaussian4_backEN & SE_i_fpga_indvars_iv6_replace_phi_gaussian3_V0;
    // Backward Stall generation
    assign SE_i_unnamed_gaussian4_backStall = ~ (SE_i_unnamed_gaussian4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_gaussian4_R_v_0 <= 1'b0;
            SE_i_unnamed_gaussian4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_unnamed_gaussian4_backEN == 1'b0)
            begin
                SE_i_unnamed_gaussian4_R_v_0 <= SE_i_unnamed_gaussian4_R_v_0 & SE_i_unnamed_gaussian4_s_tv_0;
            end
            else
            begin
                SE_i_unnamed_gaussian4_R_v_0 <= SE_i_unnamed_gaussian4_v_s_0;
            end

            if (SE_i_unnamed_gaussian4_backEN == 1'b0)
            begin
                SE_i_unnamed_gaussian4_R_v_1 <= SE_i_unnamed_gaussian4_R_v_1 & SE_i_unnamed_gaussian4_s_tv_1;
            end
            else
            begin
                SE_i_unnamed_gaussian4_R_v_1 <= SE_i_unnamed_gaussian4_v_s_0;
            end

        end
    end

    // SE_i_fpga_indvars_iv6_replace_phi_gaussian3(STALLENABLE,215)
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv6_replace_phi_gaussian3_V0 = SE_i_fpga_indvars_iv6_replace_phi_gaussian3_R_v_0;
    // Stall signal propagation
    assign SE_i_fpga_indvars_iv6_replace_phi_gaussian3_s_tv_0 = SE_i_unnamed_gaussian4_backStall & SE_i_fpga_indvars_iv6_replace_phi_gaussian3_R_v_0;
    // Backward Enable generation
    assign SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backEN = ~ (SE_i_fpga_indvars_iv6_replace_phi_gaussian3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_fpga_indvars_iv6_replace_phi_gaussian3_v_s_0 = SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backEN & SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_V;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backStall = ~ (SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv6_replace_phi_gaussian3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backEN == 1'b0)
            begin
                SE_i_fpga_indvars_iv6_replace_phi_gaussian3_R_v_0 <= SE_i_fpga_indvars_iv6_replace_phi_gaussian3_R_v_0 & SE_i_fpga_indvars_iv6_replace_phi_gaussian3_s_tv_0;
            end
            else
            begin
                SE_i_fpga_indvars_iv6_replace_phi_gaussian3_R_v_0 <= SE_i_fpga_indvars_iv6_replace_phi_gaussian3_v_s_0;
            end

        end
    end

    // SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3(STALLREG,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid <= 1'b0;
            SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data0 <= 1'bx;
            SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid <= SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backStall & (SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid | SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_i_valid);

            if (SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data0 <= $unsigned(redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q);
                SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_and0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V1;
    assign SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_i_valid = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_V0 & SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_and0;
    // Stall signal propagation
    assign SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backStall = SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid | ~ (SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_i_valid);

    // Valid
    assign SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_V = SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid : SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_i_valid;

    // Data0
    assign SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_D0 = SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data0 : redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q;
    // Data1
    assign SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_D1 = SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_r_data1 : bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_b;

    // SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2(STALLENABLE,218)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_V0 = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_backStall = SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backStall | ~ (SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_wireValid = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_valid_out;

    // i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2(BLACKBOX,48)@1
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@2
    // out out_stall_out@20000000
    // out out_valid_out@2
    gaussian_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_0 thei_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_backStall),
        .in_valid_in(SE_out_gaussian_B4_merge_reg_aunroll_x_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_gaussian_B4_merge_reg_aunroll_x(STALLENABLE,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_gaussian_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_gaussian_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_gaussian_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_gaussian_B4_merge_reg_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0 = (~ (i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next719_gaussian2_out_stall_out) & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_gaussian_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_gaussian_B4_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_consumed3 = (~ (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall) & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid) | SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid = SE_out_gaussian_B4_merge_reg_aunroll_x_backStall & SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_toReg0 = SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_toReg1 = SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_toReg2 = SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_toReg3 = SE_out_gaussian_B4_merge_reg_aunroll_x_StallValid & SE_out_gaussian_B4_merge_reg_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_or0 = SE_out_gaussian_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_or1 = SE_out_gaussian_B4_merge_reg_aunroll_x_consumed1 & SE_out_gaussian_B4_merge_reg_aunroll_x_or0;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_or2 = SE_out_gaussian_B4_merge_reg_aunroll_x_consumed2 & SE_out_gaussian_B4_merge_reg_aunroll_x_or1;
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_consumed3 & SE_out_gaussian_B4_merge_reg_aunroll_x_or2);
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_backStall = SE_out_gaussian_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_V0 = SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_V1 = SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_V2 = SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_V3 = SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_gaussian_B4_merge_reg_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_gaussian_B4_merge_reg_aunroll_x_wireValid = gaussian_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_stall_entry(BITJOIN,202)
    assign bubble_join_stall_entry_q = {in_j_047, in_forked};

    // bubble_select_stall_entry(BITSELECT,203)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);

    // gaussian_B4_merge_reg_aunroll_x(BLACKBOX,17)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    gaussian_B4_merge_reg thegaussian_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_gaussian_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_stall_out(gaussian_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(gaussian_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_gaussian_B4_merge_reg_aunroll_x(BITJOIN,180)
    assign bubble_join_gaussian_B4_merge_reg_aunroll_x_q = {gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl, gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_gaussian_B4_merge_reg_aunroll_x(BITSELECT,181)
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[31:0]);
    assign bubble_select_gaussian_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_gaussian_B4_merge_reg_aunroll_x_q[32:32]);

    // redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0(REG,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b1)
        begin
            redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q <= $unsigned(bubble_select_gaussian_B4_merge_reg_aunroll_x_c);
        end
    end

    // redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0(REG,171)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b1)
        begin
            redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q <= $unsigned(bubble_select_gaussian_B4_merge_reg_aunroll_x_b);
        end
    end

    // SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0(STALLENABLE,270)
    // Valid signal propagation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V1 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1;
    // Stall signal propagation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0 = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1 = SR_SE_i_fpga_indvars_iv6_replace_phi_gaussian3_backStall & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1;
    // Backward Enable generation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_or0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN = ~ (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1 | SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN & SE_out_gaussian_B4_merge_reg_aunroll_x_V3;
    // Backward Stall generation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backStall = ~ (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= 1'b0;
            SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_0 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
            end

            if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_s_tv_1;
            end
            else
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_R_v_1 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_v_s_0;
            end

        end
    end

    // SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(STALLREG,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid <= 1'b0;
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall & (SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid | SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid);

            if (SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0 <= $unsigned(redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q);
                SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data1 <= $unsigned(redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_V0;
    // Stall signal propagation
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid | ~ (SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid);

    // Valid
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid : SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_i_valid;

    // Data0
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D0 = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data0 : redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_0_q;
    // Data1
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D1 = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_valid == 1'b1 ? SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_r_data1 : redist6_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_1_0_q;

    // redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_0(REG,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN == 1'b1)
        begin
            redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_0_q <= $unsigned(SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D1);
        end
    end

    // redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(REG,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN == 1'b1)
        begin
            redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q <= $unsigned(SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_D0);
        end
    end

    // SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1(STALLENABLE,271)
    // Valid signal propagation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0 = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN = ~ (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN & SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V;
    // Backward Stall generation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backStall = ~ (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_R_v_0 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(STALLREG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall & (SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid | SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid);

            if (SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 <= $unsigned(redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q);
                SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data1 <= $unsigned(redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid | ~ (SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid : SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_i_valid;

    // Data0
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0 = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data0 : redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_1_q;
    // Data1
    assign SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D1 = SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_r_data1 : redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_0_q;

    // redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(REG,173)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b1)
        begin
            redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q <= $unsigned(SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D0);
        end
    end

    // SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2(STALLENABLE,272)
    // Valid signal propagation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    // Stall signal propagation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0 = SE_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1 = SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2 = SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backStall & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2;
    // Backward Enable generation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1 | SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or0;
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN = ~ (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2 | SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN & SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backStall = ~ (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= 1'b0;
            SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_0 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

            if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_1 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

            if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 & SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_s_tv_2;
            end
            else
            begin
                SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_R_v_2 <= SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_v_s_0;
            end

        end
    end

    // SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0(STALLREG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid <= 1'b0;
            SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_data0 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid <= SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall & (SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid | SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_i_valid);

            if (SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_data0 <= $unsigned(redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_i_valid = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V1;
    // Stall signal propagation
    assign SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall = SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid | ~ (SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_i_valid);

    // Valid
    assign SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V = SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid : SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_i_valid;

    assign SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_D0 = SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_valid == 1'b1 ? SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_r_data0 : redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_q;

    // SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0(STALLENABLE,273)
    // Valid signal propagation
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V0 = SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0;
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V1 = SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0 = SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backStall & SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0;
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_stall_out & SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or0 = SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0;
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN = ~ (SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1 | SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0 = SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN & SR_SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V;
    // Backward Stall generation
    assign SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backStall = ~ (SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 <= 1'b0;
            SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 <= SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 & SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_0;
            end
            else
            begin
                SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_0 <= SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
            end

            if (SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_backEN == 1'b0)
            begin
                SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 <= SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 & SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_s_tv_1;
            end
            else
            begin
                SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_R_v_1 <= SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_v_s_0;
            end

        end
    end

    // leftShiftStage0Idx1Rng4_uid123_dupName_0_i_unnamed_gaussian0_shift_x(BITSELECT,122)@5
    assign leftShiftStage0Idx1Rng4_uid123_dupName_0_i_unnamed_gaussian0_shift_x_in = redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q[27:0];
    assign leftShiftStage0Idx1Rng4_uid123_dupName_0_i_unnamed_gaussian0_shift_x_b = leftShiftStage0Idx1Rng4_uid123_dupName_0_i_unnamed_gaussian0_shift_x_in[27:0];

    // leftShiftStage0Idx1_uid124_dupName_0_i_unnamed_gaussian0_shift_x(BITJOIN,123)@5
    assign leftShiftStage0Idx1_uid124_dupName_0_i_unnamed_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng4_uid123_dupName_0_i_unnamed_gaussian0_shift_x_b, i_unnamed_gaussian12_vt_const_3_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x(MUX,125)@5
    assign leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_s or redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q or leftShiftStage0Idx1_uid124_dupName_0_i_unnamed_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_q = redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q;
            1'b1 : leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_q = leftShiftStage0Idx1_uid124_dupName_0_i_unnamed_gaussian0_shift_x_q;
            default : leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_gaussian12_vt_select_31(BITSELECT,68)@5
    assign i_unnamed_gaussian12_vt_select_31_b = leftShiftStage0_uid126_dupName_0_i_unnamed_gaussian0_shift_x_q[31:4];

    // i_unnamed_gaussian12_vt_const_3(CONSTANT,66)
    assign i_unnamed_gaussian12_vt_const_3_q = $unsigned(4'b0000);

    // i_unnamed_gaussian12_vt_join(BITJOIN,67)@5
    assign i_unnamed_gaussian12_vt_join_q = {i_unnamed_gaussian12_vt_select_31_b, i_unnamed_gaussian12_vt_const_3_q};

    // leftShiftStage0Idx1Rng2_uid131_i_unnamed_gaussian0_shift_x(BITSELECT,130)@5
    assign leftShiftStage0Idx1Rng2_uid131_i_unnamed_gaussian0_shift_x_in = redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q[29:0];
    assign leftShiftStage0Idx1Rng2_uid131_i_unnamed_gaussian0_shift_x_b = leftShiftStage0Idx1Rng2_uid131_i_unnamed_gaussian0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid132_i_unnamed_gaussian0_shift_x(BITJOIN,131)@5
    assign leftShiftStage0Idx1_uid132_i_unnamed_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng2_uid131_i_unnamed_gaussian0_shift_x_b, i_mptr_bitcast_index_gaussian0_c_i2_01_x_q};

    // leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x(MUX,133)@5
    assign leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_s or redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q or leftShiftStage0Idx1_uid132_i_unnamed_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_q = redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_q;
            1'b1 : leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_q = leftShiftStage0Idx1_uid132_i_unnamed_gaussian0_shift_x_q;
            default : leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_gaussian11_vt_select_31(BITSELECT,65)@5
    assign i_unnamed_gaussian11_vt_select_31_b = leftShiftStage0_uid134_i_unnamed_gaussian0_shift_x_q[31:2];

    // i_unnamed_gaussian11_vt_join(BITJOIN,64)@5
    assign i_unnamed_gaussian11_vt_join_q = {i_unnamed_gaussian11_vt_select_31_b, i_mptr_bitcast_index_gaussian0_c_i2_01_x_q};

    // i_mul11_add14_gaussian13(ADD,58)@5
    assign i_mul11_add14_gaussian13_a = {1'b0, i_unnamed_gaussian11_vt_join_q};
    assign i_mul11_add14_gaussian13_b = {1'b0, i_unnamed_gaussian12_vt_join_q};
    assign i_mul11_add14_gaussian13_o = $unsigned(i_mul11_add14_gaussian13_a) + $unsigned(i_mul11_add14_gaussian13_b);
    assign i_mul11_add14_gaussian13_q = i_mul11_add14_gaussian13_o[32:0];

    // bgTrunc_i_mul11_add14_gaussian13_sel_x(BITSELECT,7)@5
    assign bgTrunc_i_mul11_add14_gaussian13_sel_x_b = i_mul11_add14_gaussian13_q[31:0];

    // i_mul11_add14_gaussian13_vt_select_31(BITSELECT,61)@5
    assign i_mul11_add14_gaussian13_vt_select_31_b = bgTrunc_i_mul11_add14_gaussian13_sel_x_b[31:2];

    // i_mul11_add14_gaussian13_vt_join(BITJOIN,60)@5
    assign i_mul11_add14_gaussian13_vt_join_q = {i_mul11_add14_gaussian13_vt_select_31_b, i_mptr_bitcast_index_gaussian0_c_i2_01_x_q};

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22(BLACKBOX,54)@5
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_9_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_14_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22 (
        .in_predicate_in(GND_q),
        .in_src_data_in_9_0(i_mul11_add14_gaussian13_vt_join_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_backStall),
        .in_valid_in(SE_redist5_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_4_0_V1),
        .out_intel_reserved_ffwd_9_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_intel_reserved_ffwd_9_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22(STALLENABLE,230)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg(STALLENABLE,323)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg(STALLENABLE,324)
    // Valid signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_V0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_R_v_0;
    // Stall signal propagation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_R_v_0;
    // Backward Enable generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_backEN = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_v_s_0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_backEN & SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_V0;
    // Backward Stall generation
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_backStall = ~ (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_R_v_0 <= 1'b0;
        end
        else
        begin
            if (bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_backEN == 1'b0)
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_R_v_0 & bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_s_tv_0;
            end
            else
            begin
                bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_R_v_0 <= bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_v_s_0;
            end

        end
    end

    // SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0(STALLENABLE,277)
    // Valid signal propagation
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V0 = SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_0;
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V1 = SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_1;
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V2 = SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_2;
    // Stall signal propagation
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall & SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_0;
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_1 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_stall_out & SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_1;
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_2 = i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_stall_out & SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_2;
    // Backward Enable generation
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_or0 = SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_0;
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_or1 = SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_1 | SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_or0;
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN = ~ (SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_2 | SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_v_s_0 = SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN & SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V;
    // Backward Stall generation
    assign SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backStall = ~ (SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_0 <= 1'b0;
            SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_1 <= 1'b0;
            SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_0 & SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_0 <= SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_1 <= SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_1 & SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_1;
            end
            else
            begin
                SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_1 <= SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_v_s_0;
            end

            if (SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_2 <= SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_2 & SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_s_tv_2;
            end
            else
            begin
                SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_R_v_2 <= SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0(REG,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_q <= $unsigned(SR_SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_D0);
        end
    end

    // i_cmp245_gaussian10(COMPARE,45)@6
    assign i_cmp245_gaussian10_a = {2'b00, redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_q};
    assign i_cmp245_gaussian10_b = {2'b00, c_i32_1926_q};
    assign i_cmp245_gaussian10_o = $unsigned(i_cmp245_gaussian10_a) - $unsigned(i_cmp245_gaussian10_b);
    assign i_cmp245_gaussian10_c[0] = i_cmp245_gaussian10_o[33];

    // i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21(BLACKBOX,51)@6
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_8_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i1_unnamed_13_gaussian0 thei_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21 (
        .in_predicate_in(GND_q),
        .in_src_data_in_8_0(i_cmp245_gaussian10_c),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall),
        .in_valid_in(SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V2),
        .out_intel_reserved_ffwd_8_0(i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_intel_reserved_ffwd_8_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20(BLACKBOX,53)@6
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_7_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_12_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20 (
        .in_predicate_in(GND_q),
        .in_src_data_in_7_0(redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_q),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall),
        .in_valid_in(SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V1),
        .out_intel_reserved_ffwd_7_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_intel_reserved_ffwd_7_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_gaussian0_add_x_p1_of_2(ADD,141)@4 + 1
    assign i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_a = {1'b0, SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_D0};
    assign i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_b = {1'b0, SR_SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q = i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,155)@5
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,167)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,148)@5
    assign i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index_gaussian0_add_x_p2_of_2(ADD,142)@5 + 1
    assign i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_cin = i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index_gaussian0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_q = i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_o[5:1];

    // redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0(REG,168)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q(BITJOIN,143)@6
    assign i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_gaussian0_add_x_p2_of_2_q, redist1_i_mptr_bitcast_index_gaussian0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index_gaussian0_dupName_0_trunc_sel_x(BITSELECT,18)@6
    assign i_mptr_bitcast_index_gaussian0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23(BLACKBOX,57)@6
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_10_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_p1025i32_unnamed_15_gaussian0 thei_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23 (
        .in_predicate_in(GND_q),
        .in_src_data_in_10_0(i_mptr_bitcast_index_gaussian0_dupName_0_trunc_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall),
        .in_valid_in(SE_i_mptr_bitcast_index_gaussian0_add_x_BitJoin_for_q_V0),
        .out_intel_reserved_ffwd_10_0(i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_intel_reserved_ffwd_10_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg(STALLFIFO,322)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1(STALLENABLE,303)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_V0 = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and0 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and1 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and2 = i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and3 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and4 = i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_valid_out & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and5 = SE_redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and6 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_wireValid = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_1_reg_V0 & SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_and6;

    // c_i33_127(CONSTANT,41)
    assign c_i33_127_q = $unsigned(33'b111111111111111111111111111111111);

    // i_umax_gaussian5(MUX,62)@4 + 1
    assign i_umax_gaussian5_s = SR_SE_i_umax_gaussian5_D0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_umax_gaussian5_q <= 32'b0;
        end
        else if (SE_i_umax_gaussian5_backEN == 1'b1)
        begin
            unique case (i_umax_gaussian5_s)
                1'b0 : i_umax_gaussian5_q <= c_i32_1926_q;
                1'b1 : i_umax_gaussian5_q <= SR_SE_i_umax_gaussian5_D1;
                default : i_umax_gaussian5_q <= 32'b0;
            endcase
        end
    end

    // i_unnamed_gaussian6(ADD,74)@5
    assign i_unnamed_gaussian6_a = {1'b0, i_umax_gaussian5_q};
    assign i_unnamed_gaussian6_b = {1'b0, i_fpga_indvars_iv8_replace_phi_gaussian1_q};
    assign i_unnamed_gaussian6_o = $unsigned(i_unnamed_gaussian6_a) + $unsigned(i_unnamed_gaussian6_b);
    assign i_unnamed_gaussian6_q = i_unnamed_gaussian6_o[32:0];

    // bgTrunc_i_unnamed_gaussian6_sel_x(BITSELECT,8)@5
    assign bgTrunc_i_unnamed_gaussian6_sel_x_b = i_unnamed_gaussian6_q[31:0];

    // i_unnamed_gaussian7_sel_x(BITSELECT,29)@5
    assign i_unnamed_gaussian7_sel_x_b = {1'b0, bgTrunc_i_unnamed_gaussian6_sel_x_b[31:0]};

    // i_unnamed_gaussian7_vt_select_31(BITSELECT,78)@5
    assign i_unnamed_gaussian7_vt_select_31_b = i_unnamed_gaussian7_sel_x_b[31:0];

    // redist2_i_unnamed_gaussian7_vt_select_31_b_1_0(REG,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backEN == 1'b1)
        begin
            redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_q <= $unsigned(i_unnamed_gaussian7_vt_select_31_b);
        end
    end

    // i_unnamed_gaussian7_vt_join(BITJOIN,77)@6
    assign i_unnamed_gaussian7_vt_join_q = {GND_q, redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_q};

    // i_unnamed_gaussian8(ADD,79)@6
    assign i_unnamed_gaussian8_a = {1'b0, i_unnamed_gaussian7_vt_join_q};
    assign i_unnamed_gaussian8_b = {1'b0, c_i33_127_q};
    assign i_unnamed_gaussian8_o = $unsigned(i_unnamed_gaussian8_a) + $unsigned(i_unnamed_gaussian8_b);
    assign i_unnamed_gaussian8_q = i_unnamed_gaussian8_o[33:0];

    // bgTrunc_i_unnamed_gaussian8_sel_x(BITSELECT,9)@6
    assign bgTrunc_i_unnamed_gaussian8_sel_x_b = i_unnamed_gaussian8_q[32:0];

    // i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19(BLACKBOX,56)@6
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_6_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i33_unnamed_11_gaussian0 thei_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19 (
        .in_predicate_in(GND_q),
        .in_src_data_in_6_0(bgTrunc_i_unnamed_gaussian8_sel_x_b),
        .in_stall_in(SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_backStall),
        .in_valid_in(SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_V0),
        .out_intel_reserved_ffwd_6_0(i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_intel_reserved_ffwd_6_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0(STALLENABLE,268)
    // Valid signal propagation
    assign SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_V0 = SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_s_tv_0 = i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_stall_out & SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backEN = ~ (SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_v_s_0 = SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backEN & SE_i_unnamed_gaussian6_V0;
    // Backward Stall generation
    assign SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backStall = ~ (SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_R_v_0 <= SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_R_v_0 & SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_R_v_0 <= SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_umax_gaussian5(STALLENABLE,240)
    // Valid signal propagation
    assign SE_i_umax_gaussian5_V0 = SE_i_umax_gaussian5_R_v_0;
    // Stall signal propagation
    assign SE_i_umax_gaussian5_s_tv_0 = SE_i_unnamed_gaussian6_backStall & SE_i_umax_gaussian5_R_v_0;
    // Backward Enable generation
    assign SE_i_umax_gaussian5_backEN = ~ (SE_i_umax_gaussian5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_umax_gaussian5_v_s_0 = SE_i_umax_gaussian5_backEN & SR_SE_i_umax_gaussian5_V;
    // Backward Stall generation
    assign SE_i_umax_gaussian5_backStall = ~ (SE_i_umax_gaussian5_backEN);
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

    // SE_i_unnamed_gaussian6(STALLENABLE,246)
    // Valid signal propagation
    assign SE_i_unnamed_gaussian6_V0 = SE_i_unnamed_gaussian6_wireValid;
    // Backward Stall generation
    assign SE_i_unnamed_gaussian6_backStall = SE_redist2_i_unnamed_gaussian7_vt_select_31_b_1_0_backStall | ~ (SE_i_unnamed_gaussian6_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_gaussian6_and0 = SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V0;
    assign SE_i_unnamed_gaussian6_wireValid = SE_i_umax_gaussian5_V0 & SE_i_unnamed_gaussian6_and0;

    // bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0(BITJOIN,189)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_q = i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0(BITSELECT,190)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_q[31:0]);

    // redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_1(REG,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_backEN == 1'b1)
        begin
            redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_1_q <= $unsigned(SR_SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_D1);
        end
    end

    // SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1(STALLREG,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid <= 1'b0;
            SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data0 <= 1'bx;
            SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid <= SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backStall & (SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid | SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_i_valid);

            if (SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data0 <= $unsigned(redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_1_q);
                SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_and0 = SE_redist4_gaussian_B4_merge_reg_aunroll_x_out_data_out_0_tpl_3_2_V2;
    assign SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_i_valid = SE_out_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_V0 & SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_and0;
    // Stall signal propagation
    assign SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backStall = SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid | ~ (SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_i_valid);

    // Valid
    assign SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V = SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid : SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_i_valid;

    // Data0
    assign SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_D0 = SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data0 : redist7_gaussian_B4_merge_reg_aunroll_x_out_data_out_1_tpl_3_1_q;
    // Data1
    assign SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_D1 = SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_r_data1 : bubble_select_i_llvm_fpga_ffwd_dest_i32_fpga_indvars_iv_next920_gaussian0_b;

    // SE_i_fpga_indvars_iv8_replace_phi_gaussian1(STALLENABLE,216)
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V0 = SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_0;
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V1 = SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_1;
    // Stall signal propagation
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_0 = SE_i_unnamed_gaussian6_backStall & SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_0;
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_1 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_stall_out & SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_1;
    // Backward Enable generation
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_or0 = SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_0;
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backEN = ~ (SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_1 | SE_i_fpga_indvars_iv8_replace_phi_gaussian1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_v_s_0 = SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backEN & SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backStall = ~ (SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_0 <= 1'b0;
            SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backEN == 1'b0)
            begin
                SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_0 <= SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_0 & SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_0;
            end
            else
            begin
                SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_0 <= SE_i_fpga_indvars_iv8_replace_phi_gaussian1_v_s_0;
            end

            if (SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backEN == 1'b0)
            begin
                SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_1 <= SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_1 & SE_i_fpga_indvars_iv8_replace_phi_gaussian1_s_tv_1;
            end
            else
            begin
                SE_i_fpga_indvars_iv8_replace_phi_gaussian1_R_v_1 <= SE_i_fpga_indvars_iv8_replace_phi_gaussian1_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17(STALLENABLE,232)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_1_reg_backStall | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_valid_out;

    // c_i32_324(CONSTANT,38)
    assign c_i32_324_q = $unsigned(32'b11111111111111111111111111111101);

    // i_fpga_indvars_iv8_replace_phi_gaussian1(MUX,47)@4 + 1
    assign i_fpga_indvars_iv8_replace_phi_gaussian1_s = SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_D0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_fpga_indvars_iv8_replace_phi_gaussian1_q <= 32'b0;
        end
        else if (SE_i_fpga_indvars_iv8_replace_phi_gaussian1_backEN == 1'b1)
        begin
            unique case (i_fpga_indvars_iv8_replace_phi_gaussian1_s)
                1'b0 : i_fpga_indvars_iv8_replace_phi_gaussian1_q <= SR_SE_i_fpga_indvars_iv8_replace_phi_gaussian1_D1;
                1'b1 : i_fpga_indvars_iv8_replace_phi_gaussian1_q <= c_i32_324_q;
                default : i_fpga_indvars_iv8_replace_phi_gaussian1_q <= 32'b0;
            endcase
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17(BLACKBOX,55)@5
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_stall_out@20000000
    gaussian_i_llvm_fpga_ffwd_source_i32_unnamed_9_gaussian0 thei_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17 (
        .in_predicate_in(GND_q),
        .in_src_data_in_4_0(i_fpga_indvars_iv8_replace_phi_gaussian1_q),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_backStall),
        .in_valid_in(SE_i_fpga_indvars_iv8_replace_phi_gaussian1_V1),
        .out_intel_reserved_ffwd_4_0(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_intel_reserved_ffwd_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_regfree_osync_x(GPOUT,10)
    assign out_intel_reserved_ffwd_4_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian9_gaussian17_out_intel_reserved_ffwd_4_0;

    // dupName_0_sync_out_x(GPOUT,11)@6
    assign out_add = redist8_bgTrunc_i_add_gaussian9_sel_x_b_1_0_q;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_1_V0;

    // dupName_1_regfree_osync_x(GPOUT,12)
    assign out_intel_reserved_ffwd_5_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian10_gaussian18_out_intel_reserved_ffwd_5_0;

    // dupName_2_regfree_osync_x(GPOUT,13)
    assign out_intel_reserved_ffwd_6_0 = i_llvm_fpga_ffwd_source_i33_unnamed_gaussian11_gaussian19_out_intel_reserved_ffwd_6_0;

    // dupName_3_regfree_osync_x(GPOUT,14)
    assign out_intel_reserved_ffwd_7_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian12_gaussian20_out_intel_reserved_ffwd_7_0;

    // dupName_4_regfree_osync_x(GPOUT,15)
    assign out_intel_reserved_ffwd_8_0 = i_llvm_fpga_ffwd_source_i1_unnamed_gaussian13_gaussian21_out_intel_reserved_ffwd_8_0;

    // dupName_5_regfree_osync_x(GPOUT,16)
    assign out_intel_reserved_ffwd_9_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gaussian14_gaussian22_out_intel_reserved_ffwd_9_0;

    // regfree_osync(GPOUT,105)
    assign out_intel_reserved_ffwd_10_0 = i_llvm_fpga_ffwd_source_p1025i32_unnamed_gaussian15_gaussian23_out_intel_reserved_ffwd_10_0;

    // sync_out(GPOUT,109)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
