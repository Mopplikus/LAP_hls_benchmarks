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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body12_stencil_2ds_c0_enter22823_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_body10000ter22823_stencil_2d0 (
    output wire [0:0] out_c0_exi29_0_tpl,
    output wire [0:0] out_c0_exi29_1_tpl,
    output wire [0:0] out_c0_exi29_2_tpl,
    output wire [0:0] out_c0_exi29_3_tpl,
    output wire [0:0] out_c0_exi29_4_tpl,
    output wire [63:0] out_c0_exi29_5_tpl,
    output wire [0:0] out_c0_exi29_6_tpl,
    output wire [63:0] out_c0_exi29_7_tpl,
    output wire [0:0] out_c0_exi29_8_tpl,
    output wire [31:0] out_c0_exi29_9_tpl,
    output wire [0:0] out_c0_exi29_10_tpl,
    output wire [0:0] out_c0_exi29_11_tpl,
    output wire [0:0] out_c0_exi29_12_tpl,
    output wire [0:0] out_c0_exi29_13_tpl,
    output wire [31:0] out_c0_exi29_14_tpl,
    output wire [0:0] out_c0_exi29_15_tpl,
    output wire [31:0] out_c0_exi29_16_tpl,
    output wire [31:0] out_c0_exi29_17_tpl,
    output wire [0:0] out_c0_exi29_18_tpl,
    output wire [0:0] out_c0_exi29_19_tpl,
    output wire [0:0] out_c0_exi29_20_tpl,
    output wire [0:0] out_c0_exi29_21_tpl,
    output wire [0:0] out_c0_exi29_22_tpl,
    output wire [31:0] out_c0_exi29_23_tpl,
    output wire [0:0] out_c0_exi29_24_tpl,
    output wire [31:0] out_c0_exi29_25_tpl,
    output wire [31:0] out_c0_exi29_26_tpl,
    output wire [0:0] out_c0_exi29_27_tpl,
    output wire [0:0] out_c0_exi29_28_tpl,
    output wire [0:0] out_c0_exi29_29_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni29_0_tpl,
    input wire [0:0] in_c0_eni29_1_tpl,
    input wire [0:0] in_c0_eni29_2_tpl,
    input wire [0:0] in_c0_eni29_3_tpl,
    input wire [31:0] in_c0_eni29_4_tpl,
    input wire [0:0] in_c0_eni29_5_tpl,
    input wire [0:0] in_c0_eni29_6_tpl,
    input wire [31:0] in_c0_eni29_7_tpl,
    input wire [31:0] in_c0_eni29_8_tpl,
    input wire [31:0] in_c0_eni29_9_tpl,
    input wire [0:0] in_c0_eni29_10_tpl,
    input wire [0:0] in_c0_eni29_11_tpl,
    input wire [0:0] in_c0_eni29_12_tpl,
    input wire [0:0] in_c0_eni29_13_tpl,
    input wire [31:0] in_c0_eni29_14_tpl,
    input wire [0:0] in_c0_eni29_15_tpl,
    input wire [31:0] in_c0_eni29_16_tpl,
    input wire [31:0] in_c0_eni29_17_tpl,
    input wire [0:0] in_c0_eni29_18_tpl,
    input wire [0:0] in_c0_eni29_19_tpl,
    input wire [0:0] in_c0_eni29_20_tpl,
    input wire [0:0] in_c0_eni29_21_tpl,
    input wire [0:0] in_c0_eni29_22_tpl,
    input wire [31:0] in_c0_eni29_23_tpl,
    input wire [0:0] in_c0_eni29_24_tpl,
    input wire [31:0] in_c0_eni29_25_tpl,
    input wire [31:0] in_c0_eni29_26_tpl,
    input wire [0:0] in_c0_eni29_27_tpl,
    input wire [0:0] in_c0_eni29_28_tpl,
    input wire [0:0] in_c0_eni29_29_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x_b;
    wire [31:0] bgTrunc_i_inc_stencil_2d36_sel_x_b;
    wire [0:0] i_first_cleanup_stencil_2d5_sel_x_b;
    wire [0:0] i_last_initeration_stencil_2d16_sel_x_b;
    wire [63:0] i_mptr_bitcast_index48_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index48_stencil_2d0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [1:0] c_i2_1107_q;
    wire [31:0] c_i32_0109_q;
    wire [31:0] c_i32_1110_q;
    wire [2:0] c_i3_1111_q;
    wire [2:0] c_i3_1113_q;
    wire [32:0] i_add17_stencil_2d32_a;
    wire [32:0] i_add17_stencil_2d32_b;
    logic [32:0] i_add17_stencil_2d32_o;
    wire [32:0] i_add17_stencil_2d32_q;
    wire [32:0] i_add_stencil_2d21_a;
    wire [32:0] i_add_stencil_2d21_b;
    logic [32:0] i_add_stencil_2d21_o;
    wire [32:0] i_add_stencil_2d21_q;
    wire [1:0] i_cleanups_shl_stencil_2d7_vt_join_q;
    wire [0:0] i_cleanups_shl_stencil_2d7_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_stencil_2d6_q;
    wire [0:0] i_forked_and_stencil_2d3_qi;
    reg [0:0] i_forked_and_stencil_2d3_q;
    wire [3:0] i_fpga_indvars_iv_next_stencil_2d46_a;
    wire [3:0] i_fpga_indvars_iv_next_stencil_2d46_b;
    logic [3:0] i_fpga_indvars_iv_next_stencil_2d46_o;
    wire [3:0] i_fpga_indvars_iv_next_stencil_2d46_q;
    wire [32:0] i_inc_stencil_2d36_a;
    wire [32:0] i_inc_stencil_2d36_b;
    logic [32:0] i_inc_stencil_2d36_o;
    wire [32:0] i_inc_stencil_2d36_q;
    wire [0:0] i_keep_going_or_stencil_2d12_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast475114_stencil_2d23_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4915_stencil_2d34_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_feedback_stall_out_42;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_feedback_stall_out_38;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49_out_feedback_stall_out_39;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_forked3562_push48_stencil_2d9_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i1_forked3562_push48_stencil_2d9_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28_out_feedback_valid_out_47;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56_out_feedback_valid_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_valid_out_38;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_add1664_push50_stencil_2d31_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_add1664_push50_stencil_2d31_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_k2_040_push35_stencil_2d37_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_k2_040_push35_stencil_2d37_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_mul2444_push40_stencil_2d52_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_mul2444_push40_stencil_2d52_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50_out_feedback_valid_out_39;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_out_34;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_valid_out_34;
    wire [0:0] i_masked_stencil_2d48_qi;
    reg [0:0] i_masked_stencil_2d48_q;
    wire [0:0] i_memdep_phi1_or_stencil_2d29_qi;
    reg [0:0] i_memdep_phi1_or_stencil_2d29_q;
    wire [0:0] i_next_cleanups_stencil_2d44_s;
    reg [1:0] i_next_cleanups_stencil_2d44_q;
    wire [1:0] i_next_initerations_stencil_2d14_vt_join_q;
    wire [0:0] i_next_initerations_stencil_2d14_vt_select_0_b;
    wire [0:0] i_notcmp_stencil_2d41_q;
    wire [0:0] i_or_stencil_2d43_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg9_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg10_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg12_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg13_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg14_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg15_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg17_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg18_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg19_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg20_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg21_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg22_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg23_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg24_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg25_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg26_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg27_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg28_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg29_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg30_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg31_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg32_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg33_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg34_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg35_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid211_i_cleanups_shl_stencil_2d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid211_i_cleanups_shl_stencil_2d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid212_i_cleanups_shl_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid218_i_next_initerations_stencil_2d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid220_i_next_initerations_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_q;
    wire [0:0] i_exitcond_stencil_2d39_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_stencil_2d0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [25:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [31:0] redist2_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [31:0] redist3_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q;
    reg [59:0] redist4_i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist5_i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist6_i_memdep_phi1_or_stencil_2d29_q_4_q;
    reg [0:0] redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_0;
    reg [0:0] redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_1;
    reg [0:0] redist7_i_masked_stencil_2d48_q_4_q;
    reg [0:0] redist7_i_masked_stencil_2d48_q_4_delay_0;
    reg [0:0] redist7_i_masked_stencil_2d48_q_4_delay_1;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_1_q;
    reg [31:0] redist10_i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out_1_q;
    reg [31:0] redist12_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_1_q;
    reg [31:0] redist14_i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out_1_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_q;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_0;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_1;
    reg [0:0] redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_2;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_q;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_0;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_1;
    reg [0:0] redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_2;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_q;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_0;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_1;
    reg [0:0] redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_2;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_0;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_1;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_2;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_q;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_0;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_1;
    reg [0:0] redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_2;
    reg [0:0] redist20_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_1_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_q;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_0;
    reg [0:0] redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_1;
    reg [0:0] redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q;
    reg [0:0] redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_q;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_0;
    reg [0:0] redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_1;
    reg [0:0] redist25_i_forked_and_stencil_2d3_q_4_q;
    reg [0:0] redist25_i_forked_and_stencil_2d3_q_4_delay_0;
    reg [0:0] redist25_i_forked_and_stencil_2d3_q_4_delay_1;
    reg [0:0] redist26_i_first_cleanup_xor_stencil_2d6_q_4_q;
    reg [0:0] redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_0;
    reg [0:0] redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_1;
    reg [0:0] redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_2;
    reg [0:0] redist27_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q;
    reg [0:0] redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q;
    reg [0:0] redist29_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q;
    reg [31:0] redist30_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q;
    reg [0:0] redist31_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q;
    reg [0:0] redist32_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q;
    reg [31:0] redist33_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q;
    reg [31:0] redist34_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q;
    reg [31:0] redist35_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q;
    reg [0:0] redist36_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q;
    reg [0:0] redist37_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q;
    reg [0:0] redist38_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q;
    reg [0:0] redist39_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q;
    reg [31:0] redist40_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q;
    reg [0:0] redist41_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q;
    reg [0:0] redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_q;
    reg [0:0] redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_0;
    reg [0:0] redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_1;
    reg [0:0] redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_2;
    reg [0:0] redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_3;
    reg [0:0] redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_q;
    reg [0:0] redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_0;
    reg [0:0] redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_1;
    reg [0:0] redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_2;
    reg [0:0] redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_3;
    reg [0:0] redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_q;
    reg [0:0] redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_0;
    reg [0:0] redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_1;
    reg [0:0] redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_2;
    reg [0:0] redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_3;
    reg [0:0] redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_q;
    reg [0:0] redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_0;
    reg [0:0] redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_1;
    reg [0:0] redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_2;
    reg [0:0] redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_3;
    reg [0:0] redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_q;
    reg [0:0] redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_0;
    reg [0:0] redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_1;
    reg [0:0] redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_2;
    reg [0:0] redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_3;
    reg [0:0] redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_q;
    reg [0:0] redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_0;
    reg [0:0] redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_1;
    reg [0:0] redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_2;
    reg [0:0] redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_3;
    reg [0:0] redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_q;
    reg [0:0] redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_0;
    reg [0:0] redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_1;
    reg [0:0] redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_2;
    reg [0:0] redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_3;
    reg [0:0] redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_q;
    reg [0:0] redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_0;
    reg [0:0] redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_1;
    reg [0:0] redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_2;
    reg [0:0] redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_3;
    reg [0:0] redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_q;
    reg [0:0] redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_0;
    reg [0:0] redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_1;
    reg [0:0] redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_2;
    reg [0:0] redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_3;
    reg [0:0] redist56_sync_together157_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist57_sync_together157_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist58_sync_together157_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist58_sync_together157_aunroll_x_in_i_valid_4_delay_0;
    wire redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_reset0;
    wire [31:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_ia;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_aa;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_ab;
    wire [31:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_iq;
    wire [31:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_i;
    reg [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_cmpReg_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_notEnable_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_sticky_ena_q;
    wire [0:0] redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_enaAnd_q;
    wire redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_reset0;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_ia;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_aa;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_ab;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_iq;
    wire [31:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_q;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_q;
    (* preserve *) reg [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_i;
    reg [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_cmpReg_q;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_notEnable_q;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_nor_q;
    (* dont_merge *) reg [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_sticky_ena_q;
    wire [0:0] redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_enaAnd_q;
    wire redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_reset0;
    wire [31:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_ia;
    wire [1:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_aa;
    wire [1:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_ab;
    wire [31:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_iq;
    wire [31:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_q;
    wire [1:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_i;
    reg [1:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_wraddr_q;
    wire [2:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_last_q;
    wire [2:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmp_b;
    wire [0:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmpReg_q;
    wire [0:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_notEnable_q;
    wire [0:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_sticky_ena_q;
    wire [0:0] redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_enaAnd_q;
    wire redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_reset0;
    wire [31:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_ia;
    wire [1:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_aa;
    wire [1:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_ab;
    wire [31:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_iq;
    wire [31:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_q;
    wire [1:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_i;
    reg [1:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_wraddr_q;
    wire [2:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_last_q;
    wire [2:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmp_b;
    wire [0:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmpReg_q;
    wire [0:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_notEnable_q;
    wire [0:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_sticky_ena_q;
    wire [0:0] redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_enaAnd_q;
    wire redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_reset0;
    wire [31:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_ia;
    wire [1:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_aa;
    wire [1:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_ab;
    wire [31:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_iq;
    wire [31:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_q;
    wire [1:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_i;
    reg [1:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_wraddr_q;
    wire [2:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_last_q;
    wire [2:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmp_b;
    wire [0:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmpReg_q;
    wire [0:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_notEnable_q;
    wire [0:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_sticky_ena_q;
    wire [0:0] redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_enaAnd_q;
    wire redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_reset0;
    wire [31:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_ia;
    wire [1:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_aa;
    wire [1:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_ab;
    wire [31:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_iq;
    wire [31:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_q;
    wire [1:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_i;
    reg [1:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_wraddr_q;
    wire [2:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_last_q;
    wire [2:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmp_b;
    wire [0:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmpReg_q;
    wire [0:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_notEnable_q;
    wire [0:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_sticky_ena_q;
    wire [0:0] redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_enaAnd_q;
    wire redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_reset0;
    wire [31:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_ia;
    wire [1:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_aa;
    wire [1:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_ab;
    wire [31:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_iq;
    wire [31:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_q;
    wire [1:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_q;
    (* preserve *) reg [1:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_i;
    reg [1:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_wraddr_q;
    wire [2:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_last_q;
    wire [2:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmp_b;
    wire [0:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmp_q;
    (* dont_merge *) reg [0:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmpReg_q;
    wire [0:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_notEnable_q;
    wire [0:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_nor_q;
    (* dont_merge *) reg [0:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_sticky_ena_q;
    wire [0:0] redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist56_sync_together157_aunroll_x_in_i_valid_1(DELAY,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist56_sync_together157_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist56_sync_together157_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist57_sync_together157_aunroll_x_in_i_valid_2(DELAY,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist57_sync_together157_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist57_sync_together157_aunroll_x_in_i_valid_2_q <= $unsigned(redist56_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist58_sync_together157_aunroll_x_in_i_valid_4(DELAY,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist58_sync_together157_aunroll_x_in_i_valid_4_delay_0 <= '0;
            redist58_sync_together157_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist58_sync_together157_aunroll_x_in_i_valid_4_delay_0 <= $unsigned(redist57_sync_together157_aunroll_x_in_i_valid_2_q);
            redist58_sync_together157_aunroll_x_in_i_valid_4_q <= redist58_sync_together157_aunroll_x_in_i_valid_4_delay_0;
        end
    end

    // valid_fanout_reg0(REG,161)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist58_sync_together157_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5(DELAY,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_0 <= '0;
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_1 <= '0;
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_2 <= '0;
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_3 <= '0;
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_q <= '0;
        end
        else
        begin
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_0 <= $unsigned(in_c0_eni29_29_tpl);
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_1 <= redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_0;
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_2 <= redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_1;
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_3 <= redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_2;
            redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_q <= redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_delay_3;
        end
    end

    // redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5(DELAY,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_0 <= '0;
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_1 <= '0;
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_2 <= '0;
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_3 <= '0;
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_q <= '0;
        end
        else
        begin
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_0 <= $unsigned(in_c0_eni29_28_tpl);
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_1 <= redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_0;
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_2 <= redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_1;
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_3 <= redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_2;
            redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_q <= redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_delay_3;
        end
    end

    // redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5(DELAY,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_0 <= '0;
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_1 <= '0;
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_2 <= '0;
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_3 <= '0;
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_q <= '0;
        end
        else
        begin
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_0 <= $unsigned(in_c0_eni29_27_tpl);
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_1 <= redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_0;
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_2 <= redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_1;
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_3 <= redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_2;
            redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_q <= redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_delay_3;
        end
    end

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_notEnable(LOGICAL,390)
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_nor(LOGICAL,391)
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_nor_q = ~ (redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_notEnable_q | redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_sticky_ena_q);

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_last(CONSTANT,387)
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmp(LOGICAL,388)
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmp_b = {1'b0, redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_q};
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmp_q = $unsigned(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_last_q == redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmpReg(REG,389)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmpReg_q <= $unsigned(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmp_q);
        end
    end

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_sticky_ena(REG,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_nor_q == 1'b1)
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_sticky_ena_q <= $unsigned(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_cmpReg_q);
        end
    end

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_enaAnd(LOGICAL,393)
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_enaAnd_q = redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_sticky_ena_q & VCC_q;

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt(COUNTER,385)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_i <= $unsigned(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_q = redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_i[1:0];

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_wraddr(REG,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_wraddr_q <= $unsigned(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_q);
        end
    end

    // redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem(DUALMEM,384)
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_ia = $unsigned(in_c0_eni29_26_tpl);
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_aa = redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_wraddr_q;
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_ab = redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_rdcnt_q;
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_dmem (
        .clocken1(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_aa),
        .data_a(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_ab),
        .q_b(redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_q = redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_iq[31:0];

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_notEnable(LOGICAL,380)
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_nor(LOGICAL,381)
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_nor_q = ~ (redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_notEnable_q | redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_sticky_ena_q);

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_last(CONSTANT,377)
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmp(LOGICAL,378)
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmp_b = {1'b0, redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_q};
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmp_q = $unsigned(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_last_q == redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmpReg(REG,379)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmpReg_q <= $unsigned(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmp_q);
        end
    end

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_sticky_ena(REG,382)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_nor_q == 1'b1)
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_sticky_ena_q <= $unsigned(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_cmpReg_q);
        end
    end

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_enaAnd(LOGICAL,383)
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_enaAnd_q = redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_sticky_ena_q & VCC_q;

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt(COUNTER,375)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_i <= $unsigned(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_q = redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_i[1:0];

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_wraddr(REG,376)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_wraddr_q <= $unsigned(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_q);
        end
    end

    // redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem(DUALMEM,374)
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_ia = $unsigned(in_c0_eni29_25_tpl);
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_aa = redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_wraddr_q;
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_ab = redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_rdcnt_q;
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_dmem (
        .clocken1(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_aa),
        .data_a(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_ab),
        .q_b(redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_q = redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_iq[31:0];

    // redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5(DELAY,319)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_0 <= '0;
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_1 <= '0;
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_2 <= '0;
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_3 <= '0;
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_q <= '0;
        end
        else
        begin
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_0 <= $unsigned(in_c0_eni29_24_tpl);
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_1 <= redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_0;
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_2 <= redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_1;
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_3 <= redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_2;
            redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_q <= redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_delay_3;
        end
    end

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_notEnable(LOGICAL,370)
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_nor(LOGICAL,371)
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_nor_q = ~ (redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_notEnable_q | redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_sticky_ena_q);

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_last(CONSTANT,367)
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmp(LOGICAL,368)
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmp_b = {1'b0, redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_q};
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmp_q = $unsigned(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_last_q == redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmpReg(REG,369)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmpReg_q <= $unsigned(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmp_q);
        end
    end

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_sticky_ena(REG,372)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_nor_q == 1'b1)
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_sticky_ena_q <= $unsigned(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_cmpReg_q);
        end
    end

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_enaAnd(LOGICAL,373)
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_enaAnd_q = redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_sticky_ena_q & VCC_q;

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt(COUNTER,365)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_i <= $unsigned(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_q = redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_i[1:0];

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_wraddr(REG,366)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_wraddr_q <= $unsigned(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_q);
        end
    end

    // redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem(DUALMEM,364)
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_ia = $unsigned(in_c0_eni29_23_tpl);
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_aa = redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_wraddr_q;
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_ab = redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_rdcnt_q;
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_dmem (
        .clocken1(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_aa),
        .data_a(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_ab),
        .q_b(redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_q = redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_iq[31:0];

    // redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5(DELAY,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_0 <= '0;
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_1 <= '0;
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_2 <= '0;
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_3 <= '0;
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_q <= '0;
        end
        else
        begin
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_0 <= $unsigned(in_c0_eni29_22_tpl);
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_1 <= redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_0;
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_2 <= redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_1;
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_3 <= redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_2;
            redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_q <= redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_delay_3;
        end
    end

    // redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5(DELAY,316)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_0 <= '0;
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_1 <= '0;
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_2 <= '0;
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_3 <= '0;
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_q <= '0;
        end
        else
        begin
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_0 <= $unsigned(in_c0_eni29_21_tpl);
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_1 <= redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_0;
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_2 <= redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_1;
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_3 <= redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_2;
            redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_q <= redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_delay_3;
        end
    end

    // redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5(DELAY,315)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_0 <= '0;
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_1 <= '0;
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_2 <= '0;
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_3 <= '0;
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_q <= '0;
        end
        else
        begin
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_0 <= $unsigned(in_c0_eni29_20_tpl);
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_1 <= redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_0;
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_2 <= redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_1;
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_3 <= redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_2;
            redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_q <= redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_delay_3;
        end
    end

    // redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_0 <= '0;
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_1 <= '0;
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_2 <= '0;
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_3 <= '0;
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_q <= '0;
        end
        else
        begin
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_0 <= $unsigned(in_c0_eni29_19_tpl);
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_1 <= redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_0;
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_2 <= redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_1;
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_3 <= redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_2;
            redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_q <= redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_delay_3;
        end
    end

    // redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5(DELAY,313)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_0 <= '0;
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_1 <= '0;
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_2 <= '0;
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_3 <= '0;
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_q <= '0;
        end
        else
        begin
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_0 <= $unsigned(in_c0_eni29_18_tpl);
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_1 <= redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_0;
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_2 <= redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_1;
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_3 <= redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_2;
            redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_q <= redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_delay_3;
        end
    end

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_notEnable(LOGICAL,360)
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_nor(LOGICAL,361)
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_nor_q = ~ (redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_notEnable_q | redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_sticky_ena_q);

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_last(CONSTANT,357)
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmp(LOGICAL,358)
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmp_b = {1'b0, redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_q};
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmp_q = $unsigned(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_last_q == redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmpReg(REG,359)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmpReg_q <= $unsigned(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmp_q);
        end
    end

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_sticky_ena(REG,362)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_nor_q == 1'b1)
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_sticky_ena_q <= $unsigned(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_cmpReg_q);
        end
    end

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_enaAnd(LOGICAL,363)
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_enaAnd_q = redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_sticky_ena_q & VCC_q;

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt(COUNTER,355)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_i <= $unsigned(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_q = redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_i[1:0];

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_wraddr(REG,356)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_wraddr_q <= $unsigned(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_q);
        end
    end

    // redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem(DUALMEM,354)
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_ia = $unsigned(in_c0_eni29_17_tpl);
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_aa = redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_wraddr_q;
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_ab = redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_rdcnt_q;
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_dmem (
        .clocken1(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_aa),
        .data_a(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_ab),
        .q_b(redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_q = redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_iq[31:0];

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_notEnable(LOGICAL,350)
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_nor(LOGICAL,351)
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_nor_q = ~ (redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_notEnable_q | redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_sticky_ena_q);

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_last(CONSTANT,347)
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_last_q = $unsigned(3'b010);

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmp(LOGICAL,348)
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmp_b = {1'b0, redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_q};
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmp_q = $unsigned(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_last_q == redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmp_b ? 1'b1 : 1'b0);

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmpReg(REG,349)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmpReg_q <= $unsigned(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmp_q);
        end
    end

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_sticky_ena(REG,352)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_nor_q == 1'b1)
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_sticky_ena_q <= $unsigned(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_cmpReg_q);
        end
    end

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_enaAnd(LOGICAL,353)
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_enaAnd_q = redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_sticky_ena_q & VCC_q;

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt(COUNTER,345)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_i <= $unsigned(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_q = redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_i[1:0];

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_wraddr(REG,346)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_wraddr_q <= $unsigned(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_q);
        end
    end

    // redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem(DUALMEM,344)
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_ia = $unsigned(in_c0_eni29_16_tpl);
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_aa = redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_wraddr_q;
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_ab = redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_rdcnt_q;
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(4),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(4),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_dmem (
        .clocken1(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_reset0),
        .clock1(clock),
        .address_a(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_aa),
        .data_a(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_ab),
        .q_b(redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_q = redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_iq[31:0];

    // valid_fanout_reg34(REG,195)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg34_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg34_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg35(REG,196)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg35_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg35_q <= $unsigned(in_i_valid);
        end
    end

    // leftShiftStage0Idx1Rng1_uid211_i_cleanups_shl_stencil_2d0_shift_x(BITSELECT,210)@2
    assign leftShiftStage0Idx1Rng1_uid211_i_cleanups_shl_stencil_2d0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid211_i_cleanups_shl_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid211_i_cleanups_shl_stencil_2d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid212_i_cleanups_shl_stencil_2d0_shift_x(BITJOIN,211)@2
    assign leftShiftStage0Idx1_uid212_i_cleanups_shl_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid211_i_cleanups_shl_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x(MUX,213)@2
    assign leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out or leftShiftStage0Idx1_uid212_i_cleanups_shl_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out;
            1'b1 : leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid212_i_cleanups_shl_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_stencil_2d7_vt_select_1(BITSELECT,89)@2
    assign i_cleanups_shl_stencil_2d7_vt_select_1_b = leftShiftStage0_uid214_i_cleanups_shl_stencil_2d0_shift_x_q[1:1];

    // i_cleanups_shl_stencil_2d7_vt_join(BITJOIN,88)@2
    assign i_cleanups_shl_stencil_2d7_vt_join_q = {i_cleanups_shl_stencil_2d7_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_stencil_2d6(LOGICAL,92)@2
    assign i_first_cleanup_xor_stencil_2d6_q = i_first_cleanup_stencil_2d5_sel_x_b ^ VCC_q;

    // i_notcmp_stencil_2d41(LOGICAL,145)@2
    assign i_notcmp_stencil_2d41_q = i_exitcond_stencil_2d39_cmp_nsign_q ^ VCC_q;

    // i_or_stencil_2d43(LOGICAL,146)@2
    assign i_or_stencil_2d43_q = i_notcmp_stencil_2d41_q | i_first_cleanup_xor_stencil_2d6_q;

    // i_next_cleanups_stencil_2d44(MUX,141)@2
    assign i_next_cleanups_stencil_2d44_s = i_or_stencil_2d43_q;
    always @(i_next_cleanups_stencil_2d44_s or i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out or i_cleanups_shl_stencil_2d7_vt_join_q)
    begin
        unique case (i_next_cleanups_stencil_2d44_s)
            1'b0 : i_next_cleanups_stencil_2d44_q = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out;
            1'b1 : i_next_cleanups_stencil_2d44_q = i_cleanups_shl_stencil_2d7_vt_join_q;
            default : i_next_cleanups_stencil_2d44_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45(BLACKBOX,130)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    stencil_2d_i_llvm_fpga_push_i2_cleanups_push38_0 thei_llvm_fpga_push_i2_cleanups_push38_stencil_2d45 (
        .in_data_in(i_next_cleanups_stencil_2d44_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_feedback_stall_out_38),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist56_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_1107(CONSTANT,79)
    assign c_i2_1107_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4(BLACKBOX,110)@2
    // out out_feedback_stall_out_38@20000000
    stencil_2d_i_llvm_fpga_pop_i2_cleanups_pop38_0 thei_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4 (
        .in_data_in(c_i2_1107_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist56_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_stencil_2d5_sel_x(BITSELECT,11)@2
    assign i_first_cleanup_stencil_2d5_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out[0:0];

    // c_i3_1113(CONSTANT,83)
    assign c_i3_1113_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_stencil_2d46(ADD,94)@2
    assign i_fpga_indvars_iv_next_stencil_2d46_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out};
    assign i_fpga_indvars_iv_next_stencil_2d46_b = {1'b0, c_i3_1113_q};
    assign i_fpga_indvars_iv_next_stencil_2d46_o = $unsigned(i_fpga_indvars_iv_next_stencil_2d46_a) + $unsigned(i_fpga_indvars_iv_next_stencil_2d46_b);
    assign i_fpga_indvars_iv_next_stencil_2d46_q = i_fpga_indvars_iv_next_stencil_2d46_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x_b = i_fpga_indvars_iv_next_stencil_2d46_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47(BLACKBOX,138)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    stencil_2d_i_llvm_fpga_push_i3_fpga_indvars_iv_push34_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x_b),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_feedback_stall_out_34),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist56_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_1111(CONSTANT,82)
    assign c_i3_1111_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38(BLACKBOX,118)@2
    // out out_feedback_stall_out_34@20000000
    stencil_2d_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38 (
        .in_data_in(c_i3_1111_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist56_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_stencil_2d39_cmp_nsign(LOGICAL,224)@2
    assign i_exitcond_stencil_2d39_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_stencil_2d42(BLACKBOX,129)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_stencil_2d42 (
        .in_data_in(i_exitcond_stencil_2d39_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_stencil_2d5_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist56_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,168)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid218_i_next_initerations_stencil_2d0_shift_x(BITSELECT,217)@2
    assign rightShiftStage0Idx1Rng1_uid218_i_next_initerations_stencil_2d0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out[1:1];

    // rightShiftStage0Idx1_uid220_i_next_initerations_stencil_2d0_shift_x(BITJOIN,219)@2
    assign rightShiftStage0Idx1_uid220_i_next_initerations_stencil_2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid218_i_next_initerations_stencil_2d0_shift_x_b};

    // valid_fanout_reg5(REG,166)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg6(REG,167)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations_push37_stencil_2d15(BLACKBOX,131)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    stencil_2d_i_llvm_fpga_push_i2_initerations_push37_0 thei_llvm_fpga_push_i2_initerations_push37_stencil_2d15 (
        .in_data_in(i_next_initerations_stencil_2d14_vt_join_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_feedback_stall_out_37),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_37(i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_out_37),
        .out_feedback_valid_out_37(i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_valid_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13(BLACKBOX,111)@2
    // out out_feedback_stall_out_37@20000000
    stencil_2d_i_llvm_fpga_pop_i2_initerations_pop37_0 thei_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13 (
        .in_data_in(c_i2_1107_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_37(i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_out_37),
        .in_feedback_valid_in_37(i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_valid_out_37),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out),
        .out_feedback_stall_out_37(i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_feedback_stall_out_37),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x(MUX,221)@2
    assign rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out or rightShiftStage0Idx1_uid220_i_next_initerations_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out;
            1'b1 : rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_q = rightShiftStage0Idx1_uid220_i_next_initerations_stencil_2d0_shift_x_q;
            default : rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_stencil_2d14_vt_select_0(BITSELECT,144)@2
    assign i_next_initerations_stencil_2d14_vt_select_0_b = rightShiftStage0_uid222_i_next_initerations_stencil_2d0_shift_x_q[0:0];

    // i_next_initerations_stencil_2d14_vt_join(BITJOIN,143)@2
    assign i_next_initerations_stencil_2d14_vt_join_q = {GND_q, i_next_initerations_stencil_2d14_vt_select_0_b};

    // i_last_initeration_stencil_2d16_sel_x(BITSELECT,12)@2
    assign i_last_initeration_stencil_2d16_sel_x_b = i_next_initerations_stencil_2d14_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_stencil_2d17(BLACKBOX,123)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    stencil_2d_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_stencil_2d17 (
        .in_data_in(i_last_initeration_stencil_2d16_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8(BLACKBOX,100)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_stencil_2d8 (
        .in_data_in(in_c0_eni29_2_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1(DELAY,291)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out);
        end
    end

    // i_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64(BLACKBOX,126)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp1766_push52_0 thei_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_feedback_stall_out_52),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q <= '0;
        end
        else
        begin
            redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q <= $unsigned(in_c0_eni29_2_tpl);
        end
    end

    // redist41_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q <= '0;
        end
        else
        begin
            redist41_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q <= $unsigned(in_c0_eni29_15_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63(BLACKBOX,107)@2
    // out out_feedback_stall_out_52@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp1766_pop52_0 thei_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63 (
        .in_data_in(redist41_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_notcmp1766_push52_stencil_2d64_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_0 <= '0;
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_1 <= '0;
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_2 <= '0;
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out);
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_1 <= redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_0;
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_2 <= redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_1;
            redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_q <= redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_delay_2;
        end
    end

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_notEnable(LOGICAL,340)
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_nor(LOGICAL,341)
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_nor_q = ~ (redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_notEnable_q | redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_sticky_ena_q);

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_cmpReg(REG,339)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_sticky_ena(REG,342)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_nor_q == 1'b1)
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_sticky_ena_q <= $unsigned(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_cmpReg_q);
        end
    end

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_enaAnd(LOGICAL,343)
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_enaAnd_q = redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_sticky_ena_q & VCC_q;

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt(COUNTER,337)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_i <= $unsigned(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_q = redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg32(REG,193)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg32_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg32_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg33(REG,194)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(redist56_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q <= $unsigned(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62(BLACKBOX,133)@3
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    stencil_2d_i_llvm_fpga_push_i32_c_043_pop1659_push46_0 thei_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62 (
        .in_data_in(redist12_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_1_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_feedback_stall_out_46),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist40_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q <= '0;
        end
        else
        begin
            redist40_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q <= $unsigned(in_c0_eni29_14_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61(BLACKBOX,113)@2
    // out out_feedback_stall_out_46@20000000
    stencil_2d_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_0 thei_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61 (
        .in_data_in(redist40_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_c_043_pop1659_push46_stencil_2d62_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_1_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out);
        end
    end

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_wraddr(REG,338)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_wraddr_q <= $unsigned(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_q);
        end
    end

    // redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem(DUALMEM,336)
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_ia = $unsigned(redist12_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_1_q);
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_aa = redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_wraddr_q;
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_ab = redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_rdcnt_q;
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_dmem (
        .clocken1(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_aa),
        .data_a(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_ab),
        .q_b(redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_q = redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_iq[31:0];

    // valid_fanout_reg30(REG,191)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg30_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg30_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg31(REG,192)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg31_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg31_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60(BLACKBOX,127)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2257_push45_0 thei_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_feedback_stall_out_45),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist39_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q <= '0;
        end
        else
        begin
            redist39_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q <= $unsigned(in_c0_eni29_13_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59(BLACKBOX,108)@2
    // out out_feedback_stall_out_45@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2257_pop45_0 thei_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59 (
        .in_data_in(redist39_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_notcmp2257_push45_stencil_2d60_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_0 <= '0;
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_1 <= '0;
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_2 <= '0;
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_q <= '0;
        end
        else
        begin
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out);
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_1 <= redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_0;
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_2 <= redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_1;
            redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_q <= redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg28(REG,189)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg28_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg28_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg29(REG,190)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg29_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg29_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58(BLACKBOX,121)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond855_push44_0 thei_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_feedback_stall_out_44),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist38_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1(DELAY,307)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q <= '0;
        end
        else
        begin
            redist38_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q <= $unsigned(in_c0_eni29_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57(BLACKBOX,103)@2
    // out out_feedback_stall_out_44@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond855_pop44_0 thei_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57 (
        .in_data_in(redist38_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_exitcond855_push44_stencil_2d58_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_0 <= '0;
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_1 <= '0;
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_2 <= '0;
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_q <= '0;
        end
        else
        begin
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out);
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_1 <= redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_0;
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_2 <= redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_1;
            redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_q <= redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg26(REG,187)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg26_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg26_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg27(REG,188)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg27_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg27_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56(BLACKBOX,128)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2750_push42_0 thei_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_feedback_stall_out_42),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q <= '0;
        end
        else
        begin
            redist37_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q <= $unsigned(in_c0_eni29_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55(BLACKBOX,109)@2
    // out out_feedback_stall_out_42@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2750_pop42_0 thei_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55 (
        .in_data_in(redist37_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i1_notcmp2750_push42_stencil_2d56_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_0 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_1 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_2 <= '0;
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out);
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_1 <= redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_0;
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_2 <= redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_1;
            redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_q <= redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_delay_2;
        end
    end

    // valid_fanout_reg24(REG,185)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg24_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg24_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg25(REG,186)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg25_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg25_q <= $unsigned(redist56_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54(BLACKBOX,119)@3
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond1147_push41_0 thei_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54 (
        .in_data_in(redist20_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_1_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_feedback_stall_out_41),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q <= '0;
        end
        else
        begin
            redist36_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q <= $unsigned(in_c0_eni29_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53(BLACKBOX,101)@2
    // out out_feedback_stall_out_41@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond1147_pop41_0 thei_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53 (
        .in_data_in(redist36_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_exitcond1147_push41_stencil_2d54_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist20_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_1_q <= '0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out);
        end
    end

    // redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_0 <= '0;
            redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_1 <= '0;
            redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_0 <= $unsigned(redist20_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_1_q);
            redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_1 <= redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_0;
            redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_q <= redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_delay_1;
        end
    end

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_notEnable(LOGICAL,332)
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_nor(LOGICAL,333)
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_nor_q = ~ (redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_notEnable_q | redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_sticky_ena_q);

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_cmpReg(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_sticky_ena(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_nor_q == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_sticky_ena_q <= $unsigned(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_cmpReg_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_enaAnd(LOGICAL,335)
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_enaAnd_q = redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_sticky_ena_q & VCC_q;

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt(COUNTER,329)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_i <= $unsigned(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_q = redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_i[0:0];

    // valid_fanout_reg22(REG,183)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg23(REG,184)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist56_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_mul2444_push40_stencil_2d52(BLACKBOX,136)@3
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul2444_push40_0 thei_llvm_fpga_push_i32_mul2444_push40_stencil_2d52 (
        .in_data_in(redist8_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_1_q),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_feedback_stall_out_40),
        .in_keep_going(redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_mul2444_push40_stencil_2d52_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_mul2444_push40_stencil_2d52_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q <= '0;
        end
        else
        begin
            redist35_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q <= $unsigned(in_c0_eni29_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51(BLACKBOX,116)@2
    // out out_feedback_stall_out_40@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul2444_pop40_0 thei_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51 (
        .in_data_in(redist35_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_mul2444_push40_stencil_2d52_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_mul2444_push40_stencil_2d52_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_1_q <= '0;
        end
        else
        begin
            redist8_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out);
        end
    end

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_wraddr(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_wraddr_q <= $unsigned(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem(DUALMEM,328)
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_ia = $unsigned(redist8_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_1_q);
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_aa = redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_wraddr_q;
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_ab = redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_rdcnt_q;
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(32),
        .widthad_b(1),
        .numwords_b(2),
        .lpm_type("altera_syncram"),
        .width_byteena_a(1),
        .address_reg_b("CLOCK0"),
        .indata_reg_b("CLOCK0"),
        .rdcontrol_reg_b("CLOCK0"),
        .byteena_reg_b("CLOCK0"),
        .outdata_reg_b("CLOCK1"),
        .outdata_aclr_b("CLEAR1"),
        .clock_enable_input_a("NORMAL"),
        .clock_enable_input_b("NORMAL"),
        .clock_enable_output_b("NORMAL"),
        .read_during_write_mode_mixed_ports("DONT_CARE"),
        .power_up_uninitialized("TRUE"),
        .intended_device_family("Cyclone V")
    ) redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_dmem (
        .clocken1(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_reset0),
        .clock1(clock),
        .address_a(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_aa),
        .data_a(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_ab),
        .q_b(redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_iq),
        .wren_b(),
        .rden_a(),
        .rden_b(),
        .data_b(),
        .clocken2(),
        .clocken3(),
        .aclr0(),
        .addressstall_a(),
        .addressstall_b(),
        .byteena_a(),
        .byteena_b(),
        .eccencbypass(),
        .eccencparity(),
        .sclr(),
        .address2_a(),
        .address2_b(),
        .q_a(),
        .eccstatus()
    );
    assign redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_q = redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_iq[31:0];

    // i_masked_stencil_2d48(LOGICAL,139)@2 + 1
    assign i_masked_stencil_2d48_qi = i_notcmp_stencil_2d41_q & i_first_cleanup_stencil_2d5_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_stencil_2d48_delay ( .xin(i_masked_stencil_2d48_qi), .xout(i_masked_stencil_2d48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_masked_stencil_2d48_q_4(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_masked_stencil_2d48_q_4_delay_0 <= '0;
            redist7_i_masked_stencil_2d48_q_4_delay_1 <= '0;
            redist7_i_masked_stencil_2d48_q_4_q <= '0;
        end
        else
        begin
            redist7_i_masked_stencil_2d48_q_4_delay_0 <= $unsigned(i_masked_stencil_2d48_q);
            redist7_i_masked_stencil_2d48_q_4_delay_1 <= redist7_i_masked_stencil_2d48_q_4_delay_0;
            redist7_i_masked_stencil_2d48_q_4_q <= redist7_i_masked_stencil_2d48_q_4_delay_1;
        end
    end

    // c_i32_0109(CONSTANT,80)
    assign c_i32_0109_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,250)
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_0109_q[25:0];

    // valid_fanout_reg8(REG,169)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,180)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg19_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg19_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_1110(CONSTANT,81)
    assign c_i32_1110_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_stencil_2d36(ADD,95)@2
    assign i_inc_stencil_2d36_a = {1'b0, i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out};
    assign i_inc_stencil_2d36_b = {1'b0, c_i32_1110_q};
    assign i_inc_stencil_2d36_o = $unsigned(i_inc_stencil_2d36_a) + $unsigned(i_inc_stencil_2d36_b);
    assign i_inc_stencil_2d36_q = i_inc_stencil_2d36_o[32:0];

    // bgTrunc_i_inc_stencil_2d36_sel_x(BITSELECT,5)@2
    assign bgTrunc_i_inc_stencil_2d36_sel_x_b = i_inc_stencil_2d36_q[31:0];

    // i_llvm_fpga_push_i32_k2_040_push35_stencil_2d37(BLACKBOX,134)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    stencil_2d_i_llvm_fpga_push_i32_k2_040_push35_0 thei_llvm_fpga_push_i32_k2_040_push35_stencil_2d37 (
        .in_data_in(bgTrunc_i_inc_stencil_2d36_sel_x_b),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_feedback_stall_out_35),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_k2_040_push35_stencil_2d37_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_k2_040_push35_stencil_2d37_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18(BLACKBOX,114)@2
    // out out_feedback_stall_out_35@20000000
    stencil_2d_i_llvm_fpga_pop_i32_k2_040_pop35_0 thei_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18 (
        .in_data_in(c_i32_0109_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_k2_040_push35_stencil_2d37_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_k2_040_push35_stencil_2d37_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out);
        end
    end

    // valid_fanout_reg16(REG,177)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg17(REG,178)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_add1664_push50_stencil_2d31(BLACKBOX,132)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    stencil_2d_i_llvm_fpga_push_i32_add1664_push50_0 thei_llvm_fpga_push_i32_add1664_push50_stencil_2d31 (
        .in_data_in(i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_feedback_stall_out_50),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i32_add1664_push50_stencil_2d31_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_add1664_push50_stencil_2d31_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q <= '0;
        end
        else
        begin
            redist33_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q <= $unsigned(in_c0_eni29_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30(BLACKBOX,112)@2
    // out out_feedback_stall_out_50@20000000
    stencil_2d_i_llvm_fpga_pop_i32_add1664_pop50_0 thei_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30 (
        .in_data_in(redist33_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_add1664_push50_stencil_2d31_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_add1664_push50_stencil_2d31_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out_1(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out_1_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out);
        end
    end

    // i_add17_stencil_2d32(ADD,85)@3
    assign i_add17_stencil_2d32_a = {1'b0, redist14_i_llvm_fpga_pop_i32_add1664_pop50_stencil_2d30_out_data_out_1_q};
    assign i_add17_stencil_2d32_b = {1'b0, redist11_i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out_1_q};
    assign i_add17_stencil_2d32_o = $unsigned(i_add17_stencil_2d32_a) + $unsigned(i_add17_stencil_2d32_b);
    assign i_add17_stencil_2d32_q = i_add17_stencil_2d32_o[32:0];

    // i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,261)@3
    assign i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add17_stencil_2d32_q[31:0]);

    // redist2_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,271)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index48_stencil_2d0_c_i2_01_x(CONSTANT,16)
    assign i_mptr_bitcast_index48_stencil_2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,263)@4
    assign i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_2_b, redist2_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index48_stencil_2d0_c_i2_01_x_q};

    // valid_fanout_reg18(REG,179)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist57_sync_together157_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4915_stencil_2d34(BLACKBOX,99)@4
    stencil_2d_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4915_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4915_stencil_2d34 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4915_stencil_2d34_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,268)@4
    assign i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4915_stencil_2d34_out_dest_data_out_1_0[59:0]);
    assign i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast4915_stencil_2d34_out_dest_data_out_1_0[63:60]);

    // i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2(ADD,240)@4 + 1
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q = i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,252)
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_0109_q[29:26];

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,254)@5
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist0_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,259)@5
    assign i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2(ADD,241)@5 + 1
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_cin = i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_q = i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_o[5:1];

    // redist4_i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist4_i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_stencil_2d0_add_x_BitJoin_for_q(BITJOIN,242)@6
    assign i_mptr_bitcast_index_stencil_2d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_stencil_2d0_add_x_p2_of_2_q, redist4_i_mptr_bitcast_index_stencil_2d0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,19)@6
    assign i_mptr_bitcast_index_stencil_2d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_stencil_2d0_add_x_BitJoin_for_q_q[63:0];

    // valid_fanout_reg12(REG,173)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,174)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26(BLACKBOX,124)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    stencil_2d_i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25_out_feedback_stall_out_43),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q <= '0;
        end
        else
        begin
            redist31_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q <= $unsigned(in_c0_eni29_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25(BLACKBOX,105)@2
    // out out_feedback_stall_out_43@20000000
    stencil_2d_i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25 (
        .in_data_in(redist31_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_memdep_phi1_pop1453_push43_stencil_2d26_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg14(REG,175)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg15(REG,176)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28(BLACKBOX,125)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    stencil_2d_i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_0 thei_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27_out_feedback_stall_out_47),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q <= '0;
        end
        else
        begin
            redist32_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q <= $unsigned(in_c0_eni29_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27(BLACKBOX,106)@2
    // out out_feedback_stall_out_47@20000000
    stencil_2d_i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27 (
        .in_data_in(redist32_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i1_memdep_phi_pop1761_push47_stencil_2d28_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi1_or_stencil_2d29(LOGICAL,140)@2 + 1
    assign i_memdep_phi1_or_stencil_2d29_qi = i_llvm_fpga_pop_i1_memdep_phi_pop1761_pop47_stencil_2d27_out_data_out | i_llvm_fpga_pop_i1_memdep_phi1_pop1453_pop43_stencil_2d25_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi1_or_stencil_2d29_delay ( .xin(i_memdep_phi1_or_stencil_2d29_qi), .xout(i_memdep_phi1_or_stencil_2d29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist6_i_memdep_phi1_or_stencil_2d29_q_4(DELAY,275)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_0 <= '0;
            redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_1 <= '0;
            redist6_i_memdep_phi1_or_stencil_2d29_q_4_q <= '0;
        end
        else
        begin
            redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_0 <= $unsigned(i_memdep_phi1_or_stencil_2d29_q);
            redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_1 <= redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_0;
            redist6_i_memdep_phi1_or_stencil_2d29_q_4_q <= redist6_i_memdep_phi1_or_stencil_2d29_q_4_delay_1;
        end
    end

    // valid_fanout_reg9(REG,170)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,171)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20(BLACKBOX,135)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul13_add1363_push49_0 thei_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20 (
        .in_data_in(i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_feedback_stall_out_49),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q <= '0;
        end
        else
        begin
            redist30_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q <= $unsigned(in_c0_eni29_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19(BLACKBOX,115)@2
    // out out_feedback_stall_out_49@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul13_add1363_pop49_0 thei_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19 (
        .in_data_in(redist30_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_mul13_add1363_push49_stencil_2d20_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out);
        end
    end

    // i_add_stencil_2d21(ADD,86)@3
    assign i_add_stencil_2d21_a = {1'b0, redist11_i_llvm_fpga_pop_i32_k2_040_pop35_stencil_2d18_out_data_out_1_q};
    assign i_add_stencil_2d21_b = {1'b0, redist10_i_llvm_fpga_pop_i32_mul13_add1363_pop49_stencil_2d19_out_data_out_1_q};
    assign i_add_stencil_2d21_o = $unsigned(i_add_stencil_2d21_a) + $unsigned(i_add_stencil_2d21_b);
    assign i_add_stencil_2d21_q = i_add_stencil_2d21_o[32:0];

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,249)@3
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add_stencil_2d21_q[31:0]);

    // redist3_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= '0;
        end
        else
        begin
            redist3_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q <= $unsigned(i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b);
        end
    end

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,251)@4
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_2_b, redist3_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_tessel0_1_b_1_q, i_mptr_bitcast_index48_stencil_2d0_c_i2_01_x_q};

    // valid_fanout_reg11(REG,172)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist57_sync_together157_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast475114_stencil_2d23(BLACKBOX,98)@4
    stencil_2d_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast475114_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast475114_stencil_2d23 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast475114_stencil_2d23_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,267)@4
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast475114_stencil_2d23_out_dest_data_out_0_0[59:0]);
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast475114_stencil_2d23_out_dest_data_out_0_0[63:60]);

    // i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2(ADD,231)@4 + 1
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q = i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_o[59:0];

    // redist1_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,247)@5
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2(ADD,232)@5 + 1
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_cin = i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index48_stencil_2d0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_q = i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_o[5:1];

    // redist5_i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist5_i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index48_stencil_2d0_add_x_BitJoin_for_q(BITJOIN,233)@6
    assign i_mptr_bitcast_index48_stencil_2d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index48_stencil_2d0_add_x_p2_of_2_q, redist5_i_mptr_bitcast_index48_stencil_2d0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index48_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,13)@6
    assign i_mptr_bitcast_index48_stencil_2d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index48_stencil_2d0_add_x_BitJoin_for_q_q[63:0];

    // valid_fanout_reg3(REG,164)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,165)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11(BLACKBOX,120)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond565_push51_0 thei_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_feedback_stall_out_51),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist29_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1(DELAY,298)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q <= '0;
        end
        else
        begin
            redist29_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q <= $unsigned(in_c0_eni29_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10(BLACKBOX,102)@2
    // out out_feedback_stall_out_51@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond565_pop51_0 thei_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10 (
        .in_data_in(redist29_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_exitcond565_push51_stencil_2d11_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_0 <= '0;
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_1 <= '0;
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_2 <= '0;
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out);
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_1 <= redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_0;
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_2 <= redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_1;
            redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_q <= redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_delay_2;
        end
    end

    // i_keep_going_or_stencil_2d12(LOGICAL,96)@6
    assign i_keep_going_or_stencil_2d12_q = redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_q | redist19_i_llvm_fpga_pop_i1_exitcond565_pop51_stencil_2d10_out_data_out_4_q;

    // redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5(DELAY,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_0 <= '0;
            redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_1 <= '0;
            redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_q <= '0;
        end
        else
        begin
            redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_0 <= $unsigned(redist23_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q);
            redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_1 <= redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_0;
            redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_q <= redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_delay_1;
        end
    end

    // redist26_i_first_cleanup_xor_stencil_2d6_q_4(DELAY,295)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_0 <= '0;
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_1 <= '0;
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_2 <= '0;
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_q <= '0;
        end
        else
        begin
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_0 <= $unsigned(i_first_cleanup_xor_stencil_2d6_q);
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_1 <= redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_0;
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_2 <= redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_1;
            redist26_i_first_cleanup_xor_stencil_2d6_q_4_q <= redist26_i_first_cleanup_xor_stencil_2d6_q_4_delay_2;
        end
    end

    // valid_fanout_reg1(REG,162)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg2(REG,163)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_forked3562_push48_stencil_2d9(BLACKBOX,122)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    stencil_2d_i_llvm_fpga_push_i1_forked3562_push48_0 thei_llvm_fpga_push_i1_forked3562_push48_stencil_2d9 (
        .in_data_in(i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2_out_feedback_stall_out_48),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i1_forked3562_push48_stencil_2d9_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i1_forked3562_push48_stencil_2d9_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q <= '0;
        end
        else
        begin
            redist27_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q <= $unsigned(in_c0_eni29_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2(BLACKBOX,104)@2
    // out out_feedback_stall_out_48@20000000
    stencil_2d_i_llvm_fpga_pop_i1_forked3562_pop48_0 thei_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2 (
        .in_data_in(redist27_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i1_forked3562_push48_stencil_2d9_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i1_forked3562_push48_stencil_2d9_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked_and_stencil_2d3(LOGICAL,93)@2 + 1
    assign i_forked_and_stencil_2d3_qi = redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q & i_llvm_fpga_pop_i1_forked3562_pop48_stencil_2d2_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked_and_stencil_2d3_delay ( .xin(i_forked_and_stencil_2d3_qi), .xout(i_forked_and_stencil_2d3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist25_i_forked_and_stencil_2d3_q_4(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_forked_and_stencil_2d3_q_4_delay_0 <= '0;
            redist25_i_forked_and_stencil_2d3_q_4_delay_1 <= '0;
            redist25_i_forked_and_stencil_2d3_q_4_q <= '0;
        end
        else
        begin
            redist25_i_forked_and_stencil_2d3_q_4_delay_0 <= $unsigned(i_forked_and_stencil_2d3_q);
            redist25_i_forked_and_stencil_2d3_q_4_delay_1 <= redist25_i_forked_and_stencil_2d3_q_4_delay_0;
            redist25_i_forked_and_stencil_2d3_q_4_q <= redist25_i_forked_and_stencil_2d3_q_4_delay_1;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,31)@6
    assign out_c0_exi29_0_tpl = GND_q;
    assign out_c0_exi29_1_tpl = redist25_i_forked_and_stencil_2d3_q_4_q;
    assign out_c0_exi29_2_tpl = redist26_i_first_cleanup_xor_stencil_2d6_q_4_q;
    assign out_c0_exi29_3_tpl = redist24_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_5_q;
    assign out_c0_exi29_4_tpl = i_keep_going_or_stencil_2d12_q;
    assign out_c0_exi29_5_tpl = i_mptr_bitcast_index48_stencil_2d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi29_6_tpl = redist6_i_memdep_phi1_or_stencil_2d29_q_4_q;
    assign out_c0_exi29_7_tpl = i_mptr_bitcast_index_stencil_2d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi29_8_tpl = redist7_i_masked_stencil_2d48_q_4_q;
    assign out_c0_exi29_9_tpl = redist9_i_llvm_fpga_pop_i32_mul2444_pop40_stencil_2d51_out_data_out_4_mem_q;
    assign out_c0_exi29_10_tpl = redist21_i_llvm_fpga_pop_i1_exitcond1147_pop41_stencil_2d53_out_data_out_4_q;
    assign out_c0_exi29_11_tpl = redist15_i_llvm_fpga_pop_i1_notcmp2750_pop42_stencil_2d55_out_data_out_4_q;
    assign out_c0_exi29_12_tpl = redist18_i_llvm_fpga_pop_i1_exitcond855_pop44_stencil_2d57_out_data_out_4_q;
    assign out_c0_exi29_13_tpl = redist16_i_llvm_fpga_pop_i1_notcmp2257_pop45_stencil_2d59_out_data_out_4_q;
    assign out_c0_exi29_14_tpl = redist13_i_llvm_fpga_pop_i32_c_043_pop1659_pop46_stencil_2d61_out_data_out_4_mem_q;
    assign out_c0_exi29_15_tpl = redist17_i_llvm_fpga_pop_i1_notcmp1766_pop52_stencil_2d63_out_data_out_4_q;
    assign out_c0_exi29_16_tpl = redist42_sync_together157_aunroll_x_in_c0_eni29_16_tpl_5_mem_q;
    assign out_c0_exi29_17_tpl = redist43_sync_together157_aunroll_x_in_c0_eni29_17_tpl_5_mem_q;
    assign out_c0_exi29_18_tpl = redist44_sync_together157_aunroll_x_in_c0_eni29_18_tpl_5_q;
    assign out_c0_exi29_19_tpl = redist45_sync_together157_aunroll_x_in_c0_eni29_19_tpl_5_q;
    assign out_c0_exi29_20_tpl = redist46_sync_together157_aunroll_x_in_c0_eni29_20_tpl_5_q;
    assign out_c0_exi29_21_tpl = redist47_sync_together157_aunroll_x_in_c0_eni29_21_tpl_5_q;
    assign out_c0_exi29_22_tpl = redist48_sync_together157_aunroll_x_in_c0_eni29_22_tpl_5_q;
    assign out_c0_exi29_23_tpl = redist49_sync_together157_aunroll_x_in_c0_eni29_23_tpl_5_mem_q;
    assign out_c0_exi29_24_tpl = redist50_sync_together157_aunroll_x_in_c0_eni29_24_tpl_5_q;
    assign out_c0_exi29_25_tpl = redist51_sync_together157_aunroll_x_in_c0_eni29_25_tpl_5_mem_q;
    assign out_c0_exi29_26_tpl = redist52_sync_together157_aunroll_x_in_c0_eni29_26_tpl_5_mem_q;
    assign out_c0_exi29_27_tpl = redist53_sync_together157_aunroll_x_in_c0_eni29_27_tpl_5_q;
    assign out_c0_exi29_28_tpl = redist54_sync_together157_aunroll_x_in_c0_eni29_28_tpl_5_q;
    assign out_c0_exi29_29_tpl = redist55_sync_together157_aunroll_x_in_c0_eni29_29_tpl_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

    // ext_sig_sync_out(GPOUT,84)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,157)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out;

    // i_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49(BLACKBOX,117)@2
    // out out_feedback_stall_out_39@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_044_pop1341_pop39_0 thei_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49 (
        .in_data_in(redist34_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q),
        .in_dir(redist28_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50(BLACKBOX,137)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_044_pop1341_push39_0 thei_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50 (
        .in_data_in(i_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49_out_data_out),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_r_044_pop1341_pop39_stencil_2d49_out_feedback_stall_out_39),
        .in_keep_going(redist22_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_r_044_pop1341_push39_stencil_2d50_out_feedback_valid_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg20(REG,181)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg21(REG,182)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(in_i_valid);
        end
    end

    // redist34_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1(DELAY,303)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q <= '0;
        end
        else
        begin
            redist34_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q <= $unsigned(in_c0_eni29_8_tpl);
        end
    end

endmodule
