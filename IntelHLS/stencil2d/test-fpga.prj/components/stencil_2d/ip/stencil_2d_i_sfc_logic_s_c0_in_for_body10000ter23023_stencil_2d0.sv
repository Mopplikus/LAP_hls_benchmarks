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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body12_stencil_2ds_c0_enter23023_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_body10000ter23023_stencil_2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
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
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
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
    wire [63:0] i_idxprom18_stencil_2d33_vt_join_q;
    wire [31:0] i_idxprom18_stencil_2d33_vt_select_31_b;
    wire [63:0] i_idxprom_stencil_2d22_vt_join_q;
    wire [31:0] i_idxprom_stencil_2d22_vt_select_31_b;
    wire [32:0] i_inc_stencil_2d36_a;
    wire [32:0] i_inc_stencil_2d36_b;
    logic [32:0] i_inc_stencil_2d36_o;
    wire [32:0] i_inc_stencil_2d36_q;
    wire [0:0] i_keep_going_or_stencil_2d12_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_filter2916_stencil_2d23_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_orig2714_stencil_2d34_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_feedback_stall_out_41;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_feedback_stall_out_51;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_feedback_stall_out_44;
    wire [0:0] i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25_out_feedback_stall_out_43;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_feedback_stall_out_52;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_feedback_stall_out_45;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_feedback_stall_out_42;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_feedback_stall_out_38;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_feedback_stall_out_37;
    wire [31:0] i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30_out_feedback_stall_out_50;
    wire [31:0] i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_feedback_stall_out_35;
    wire [31:0] i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19_out_feedback_stall_out_49;
    wire [31:0] i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_feedback_stall_out_40;
    wire [31:0] i_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49_out_feedback_stall_out_39;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_feedback_stall_out_34;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54_out_feedback_valid_out_41;
    wire [0:0] i_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11_out_feedback_valid_out_51;
    wire [0:0] i_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58_out_feedback_valid_out_44;
    wire [0:0] i_llvm_fpga_push_i1_forked3764_push48_stencil_2d9_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i1_forked3764_push48_stencil_2d9_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_stencil_2d17_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26_out_feedback_valid_out_43;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28_out_feedback_valid_out_47;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64_out_feedback_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64_out_feedback_valid_out_52;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56_out_feedback_valid_out_42;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_stencil_2d42_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_out_38;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_valid_out_38;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_out_37;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push37_stencil_2d15_out_feedback_valid_out_37;
    wire [31:0] i_llvm_fpga_push_i32_add1666_push50_stencil_2d31_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i32_add1666_push50_stencil_2d31_out_feedback_valid_out_50;
    wire [31:0] i_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_k2_022_push35_stencil_2d37_out_feedback_out_35;
    wire [0:0] i_llvm_fpga_push_i32_k2_022_push35_stencil_2d37_out_feedback_valid_out_35;
    wire [31:0] i_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20_out_feedback_valid_out_49;
    wire [31:0] i_llvm_fpga_push_i32_mul2546_push40_stencil_2d52_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i32_mul2546_push40_stencil_2d52_out_feedback_valid_out_40;
    wire [31:0] i_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50_out_feedback_out_39;
    wire [0:0] i_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50_out_feedback_valid_out_39;
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
    wire [31:0] bgTrunc_i_add17_stencil_2d32_sel_x_b;
    wire [31:0] bgTrunc_i_add_stencil_2d21_sel_x_b;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x_b;
    wire [31:0] bgTrunc_i_inc_stencil_2d36_sel_x_b;
    wire [64:0] i_arrayidx19_stencil_2d0_add_x_a;
    wire [64:0] i_arrayidx19_stencil_2d0_add_x_b;
    logic [64:0] i_arrayidx19_stencil_2d0_add_x_o;
    wire [64:0] i_arrayidx19_stencil_2d0_add_x_q;
    wire [1:0] i_arrayidx19_stencil_2d0_c_i2_01_x_q;
    wire [61:0] i_arrayidx19_stencil_2d0_narrow_x_b;
    wire [63:0] i_arrayidx19_stencil_2d0_shift_join_x_q;
    wire [63:0] i_arrayidx19_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_stencil_2d0_add_x_a;
    wire [64:0] i_arrayidx_stencil_2d0_add_x_b;
    logic [64:0] i_arrayidx_stencil_2d0_add_x_o;
    wire [64:0] i_arrayidx_stencil_2d0_add_x_q;
    wire [61:0] i_arrayidx_stencil_2d0_narrow_x_b;
    wire [63:0] i_arrayidx_stencil_2d0_shift_join_x_q;
    wire [63:0] i_arrayidx_stencil_2d0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_stencil_2d5_sel_x_b;
    wire [63:0] i_idxprom18_stencil_2d33_sel_x_b;
    wire [63:0] i_idxprom_stencil_2d22_sel_x_b;
    wire [0:0] i_last_initeration_stencil_2d16_sel_x_b;
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
    wire [0:0] i_exitcond_stencil_2d39_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid213_i_cleanups_shl_stencil_2d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid213_i_cleanups_shl_stencil_2d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid214_i_cleanups_shl_stencil_2d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid220_i_next_initerations_stencil_2d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid222_i_next_initerations_stencil_2d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_q;
    reg [0:0] redist0_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q;
    reg [0:0] redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q;
    reg [0:0] redist2_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q;
    reg [31:0] redist3_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q;
    reg [0:0] redist4_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q;
    reg [0:0] redist5_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q;
    reg [31:0] redist6_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q;
    reg [31:0] redist7_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q;
    reg [31:0] redist8_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q;
    reg [0:0] redist9_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q;
    reg [0:0] redist10_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q;
    reg [0:0] redist11_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q;
    reg [0:0] redist12_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q;
    reg [31:0] redist13_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q;
    reg [0:0] redist14_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q;
    reg [31:0] redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_q;
    reg [31:0] redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_delay_0;
    reg [31:0] redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_q;
    reg [31:0] redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_delay_0;
    reg [0:0] redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_q;
    reg [0:0] redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_delay_0;
    reg [0:0] redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_q;
    reg [0:0] redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_delay_0;
    reg [0:0] redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_q;
    reg [0:0] redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_delay_0;
    reg [0:0] redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_q;
    reg [0:0] redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_delay_0;
    reg [0:0] redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_q;
    reg [0:0] redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_delay_0;
    reg [31:0] redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_q;
    reg [31:0] redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_delay_0;
    reg [0:0] redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_q;
    reg [0:0] redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_delay_0;
    reg [31:0] redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_q;
    reg [31:0] redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_delay_0;
    reg [31:0] redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_q;
    reg [31:0] redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_delay_0;
    reg [0:0] redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_q;
    reg [0:0] redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_delay_0;
    reg [0:0] redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_q;
    reg [0:0] redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_delay_0;
    reg [0:0] redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_q;
    reg [0:0] redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_delay_0;
    reg [0:0] redist29_sync_together157_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist30_i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out_1_q;
    reg [31:0] redist31_i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out_1_q;
    reg [0:0] redist32_i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out_1_q;
    reg [0:0] redist33_i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out_1_q;
    reg [0:0] redist34_i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out_1_q;
    reg [0:0] redist35_i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out_1_q;
    reg [0:0] redist36_i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out_1_q;
    reg [0:0] redist37_i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out_1_q;
    reg [0:0] redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q;
    reg [0:0] redist39_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q;
    reg [31:0] redist40_i_idxprom_stencil_2d22_vt_select_31_b_1_q;
    reg [31:0] redist41_i_idxprom18_stencil_2d33_vt_select_31_b_1_q;
    reg [0:0] redist42_i_first_cleanup_xor_stencil_2d6_q_1_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist29_sync_together157_aunroll_x_in_i_valid_1(DELAY,254)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_sync_together157_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist29_sync_together157_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1(DELAY,263)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q <= '0;
        end
        else
        begin
            redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid213_i_cleanups_shl_stencil_2d0_shift_x(BITSELECT,212)@2
    assign leftShiftStage0Idx1Rng1_uid213_i_cleanups_shl_stencil_2d0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid213_i_cleanups_shl_stencil_2d0_shift_x_b = leftShiftStage0Idx1Rng1_uid213_i_cleanups_shl_stencil_2d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid214_i_cleanups_shl_stencil_2d0_shift_x(BITJOIN,213)@2
    assign leftShiftStage0Idx1_uid214_i_cleanups_shl_stencil_2d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid213_i_cleanups_shl_stencil_2d0_shift_x_b, GND_q};

    // leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x(MUX,215)@2
    assign leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out or leftShiftStage0Idx1_uid214_i_cleanups_shl_stencil_2d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_s)
            1'b0 : leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out;
            1'b1 : leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_q = leftShiftStage0Idx1_uid214_i_cleanups_shl_stencil_2d0_shift_x_q;
            default : leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_stencil_2d7_vt_select_1(BITSELECT,58)@2
    assign i_cleanups_shl_stencil_2d7_vt_select_1_b = leftShiftStage0_uid216_i_cleanups_shl_stencil_2d0_shift_x_q[1:1];

    // i_cleanups_shl_stencil_2d7_vt_join(BITJOIN,57)@2
    assign i_cleanups_shl_stencil_2d7_vt_join_q = {i_cleanups_shl_stencil_2d7_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_stencil_2d6(LOGICAL,61)@2
    assign i_first_cleanup_xor_stencil_2d6_q = i_first_cleanup_stencil_2d5_sel_x_b ^ VCC_q;

    // i_notcmp_stencil_2d41(LOGICAL,122)@2
    assign i_notcmp_stencil_2d41_q = i_exitcond_stencil_2d39_cmp_nsign_q ^ VCC_q;

    // i_or_stencil_2d43(LOGICAL,123)@2
    assign i_or_stencil_2d43_q = i_notcmp_stencil_2d41_q | i_first_cleanup_xor_stencil_2d6_q;

    // i_next_cleanups_stencil_2d44(MUX,118)@2
    assign i_next_cleanups_stencil_2d44_s = i_or_stencil_2d43_q;
    always @(i_next_cleanups_stencil_2d44_s or i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out or i_cleanups_shl_stencil_2d7_vt_join_q)
    begin
        unique case (i_next_cleanups_stencil_2d44_s)
            1'b0 : i_next_cleanups_stencil_2d44_q = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out;
            1'b1 : i_next_cleanups_stencil_2d44_q = i_cleanups_shl_stencil_2d7_vt_join_q;
            default : i_next_cleanups_stencil_2d44_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45(BLACKBOX,107)@2
    // out out_feedback_out_38@20000000
    // out out_feedback_valid_out_38@20000000
    stencil_2d_i_llvm_fpga_push_i2_cleanups_push38_0 thei_llvm_fpga_push_i2_cleanups_push38_stencil_2d45 (
        .in_data_in(i_next_cleanups_stencil_2d44_q),
        .in_feedback_stall_in_38(i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_feedback_stall_out_38),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist29_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_out_38),
        .out_feedback_valid_out_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_valid_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q <= $unsigned(in_c0_eni29_2_tpl);
        end
    end

    // c_i2_1107(CONSTANT,48)
    assign c_i2_1107_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4(BLACKBOX,87)@2
    // out out_feedback_stall_out_38@20000000
    stencil_2d_i_llvm_fpga_pop_i2_cleanups_pop38_0 thei_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4 (
        .in_data_in(c_i2_1107_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_out_38),
        .in_feedback_valid_in_38(i_llvm_fpga_push_i2_cleanups_push38_stencil_2d45_out_feedback_valid_out_38),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist29_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out),
        .out_feedback_stall_out_38(i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_feedback_stall_out_38),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_stencil_2d5_sel_x(BITSELECT,151)@2
    assign i_first_cleanup_stencil_2d5_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop38_stencil_2d4_out_data_out[0:0];

    // c_i3_1113(CONSTANT,52)
    assign c_i3_1113_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next_stencil_2d46(ADD,63)@2
    assign i_fpga_indvars_iv_next_stencil_2d46_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out};
    assign i_fpga_indvars_iv_next_stencil_2d46_b = {1'b0, c_i3_1113_q};
    assign i_fpga_indvars_iv_next_stencil_2d46_o = $unsigned(i_fpga_indvars_iv_next_stencil_2d46_a) + $unsigned(i_fpga_indvars_iv_next_stencil_2d46_b);
    assign i_fpga_indvars_iv_next_stencil_2d46_q = i_fpga_indvars_iv_next_stencil_2d46_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x(BITSELECT,132)@2
    assign bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x_b = i_fpga_indvars_iv_next_stencil_2d46_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47(BLACKBOX,115)@2
    // out out_feedback_out_34@20000000
    // out out_feedback_valid_out_34@20000000
    stencil_2d_i_llvm_fpga_push_i3_fpga_indvars_iv_push34_0 thei_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_stencil_2d46_sel_x_b),
        .in_feedback_stall_in_34(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_feedback_stall_out_34),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist29_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_out_34),
        .out_feedback_valid_out_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_valid_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_1111(CONSTANT,51)
    assign c_i3_1111_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38(BLACKBOX,95)@2
    // out out_feedback_stall_out_34@20000000
    stencil_2d_i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38 (
        .in_data_in(c_i3_1111_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_out_34),
        .in_feedback_valid_in_34(i_llvm_fpga_push_i3_fpga_indvars_iv_push34_stencil_2d47_out_feedback_valid_out_34),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist29_sync_together157_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out),
        .out_feedback_stall_out_34(i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_feedback_stall_out_34),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_stencil_2d39_cmp_nsign(LOGICAL,208)@2
    assign i_exitcond_stencil_2d39_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv_pop34_stencil_2d38_out_data_out[2:2]));

    // i_llvm_fpga_push_i1_notexitcond_stencil_2d42(BLACKBOX,106)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_stencil_2d42 (
        .in_data_in(i_exitcond_stencil_2d39_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_stencil_2d5_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist29_sync_together157_aunroll_x_in_i_valid_1_q),
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

    // rightShiftStage0Idx1Rng1_uid220_i_next_initerations_stencil_2d0_shift_x(BITSELECT,219)@2
    assign rightShiftStage0Idx1Rng1_uid220_i_next_initerations_stencil_2d0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out[1:1];

    // rightShiftStage0Idx1_uid222_i_next_initerations_stencil_2d0_shift_x(BITJOIN,221)@2
    assign rightShiftStage0Idx1_uid222_i_next_initerations_stencil_2d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid220_i_next_initerations_stencil_2d0_shift_x_b};

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

    // i_llvm_fpga_push_i2_initerations_push37_stencil_2d15(BLACKBOX,108)@2
    // out out_feedback_out_37@20000000
    // out out_feedback_valid_out_37@20000000
    stencil_2d_i_llvm_fpga_push_i2_initerations_push37_0 thei_llvm_fpga_push_i2_initerations_push37_stencil_2d15 (
        .in_data_in(i_next_initerations_stencil_2d14_vt_join_q),
        .in_feedback_stall_in_37(i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_feedback_stall_out_37),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
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

    // i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13(BLACKBOX,88)@2
    // out out_feedback_stall_out_37@20000000
    stencil_2d_i_llvm_fpga_pop_i2_initerations_pop37_0 thei_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13 (
        .in_data_in(c_i2_1107_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
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

    // rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x(MUX,223)@2
    assign rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out or rightShiftStage0Idx1_uid222_i_next_initerations_stencil_2d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_s)
            1'b0 : rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop37_stencil_2d13_out_data_out;
            1'b1 : rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_q = rightShiftStage0Idx1_uid222_i_next_initerations_stencil_2d0_shift_x_q;
            default : rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_stencil_2d14_vt_select_0(BITSELECT,121)@2
    assign i_next_initerations_stencil_2d14_vt_select_0_b = rightShiftStage0_uid224_i_next_initerations_stencil_2d0_shift_x_q[0:0];

    // i_next_initerations_stencil_2d14_vt_join(BITJOIN,120)@2
    assign i_next_initerations_stencil_2d14_vt_join_q = {GND_q, i_next_initerations_stencil_2d14_vt_select_0_b};

    // i_last_initeration_stencil_2d16_sel_x(BITSELECT,154)@2
    assign i_last_initeration_stencil_2d16_sel_x_b = i_next_initerations_stencil_2d14_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_stencil_2d17(BLACKBOX,100)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    stencil_2d_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_stencil_2d17 (
        .in_data_in(i_last_initeration_stencil_2d16_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_initeration_stall_out),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
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

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8(BLACKBOX,77)@1
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

    // ext_sig_sync_out(GPOUT,53)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_stencil_2d8_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,126)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,161)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist29_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2(DELAY,253)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_delay_0 <= '0;
            redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_q <= '0;
        end
        else
        begin
            redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_delay_0 <= $unsigned(in_c0_eni29_29_tpl);
            redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_q <= redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_delay_0;
        end
    end

    // redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2(DELAY,252)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_delay_0 <= '0;
            redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_q <= '0;
        end
        else
        begin
            redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_delay_0 <= $unsigned(in_c0_eni29_28_tpl);
            redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_q <= redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_delay_0;
        end
    end

    // redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2(DELAY,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_delay_0 <= '0;
            redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_q <= '0;
        end
        else
        begin
            redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_delay_0 <= $unsigned(in_c0_eni29_27_tpl);
            redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_q <= redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_delay_0;
        end
    end

    // redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2(DELAY,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_delay_0 <= '0;
            redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_q <= '0;
        end
        else
        begin
            redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_delay_0 <= $unsigned(in_c0_eni29_26_tpl);
            redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_q <= redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_delay_0;
        end
    end

    // redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2(DELAY,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_delay_0 <= '0;
            redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_q <= '0;
        end
        else
        begin
            redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_delay_0 <= $unsigned(in_c0_eni29_25_tpl);
            redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_q <= redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_delay_0;
        end
    end

    // redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2(DELAY,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_delay_0 <= '0;
            redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_q <= '0;
        end
        else
        begin
            redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_delay_0 <= $unsigned(in_c0_eni29_24_tpl);
            redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_q <= redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_delay_0;
        end
    end

    // redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2(DELAY,247)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_delay_0 <= '0;
            redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_q <= '0;
        end
        else
        begin
            redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_delay_0 <= $unsigned(in_c0_eni29_23_tpl);
            redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_q <= redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_delay_0;
        end
    end

    // redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2(DELAY,246)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_delay_0 <= '0;
            redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_q <= '0;
        end
        else
        begin
            redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_delay_0 <= $unsigned(in_c0_eni29_22_tpl);
            redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_q <= redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_delay_0;
        end
    end

    // redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2(DELAY,245)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_delay_0 <= '0;
            redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_q <= '0;
        end
        else
        begin
            redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_delay_0 <= $unsigned(in_c0_eni29_21_tpl);
            redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_q <= redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_delay_0;
        end
    end

    // redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2(DELAY,244)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_delay_0 <= '0;
            redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_q <= '0;
        end
        else
        begin
            redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_delay_0 <= $unsigned(in_c0_eni29_20_tpl);
            redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_q <= redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_delay_0;
        end
    end

    // redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2(DELAY,243)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_delay_0 <= '0;
            redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_q <= '0;
        end
        else
        begin
            redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_delay_0 <= $unsigned(in_c0_eni29_19_tpl);
            redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_q <= redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_delay_0;
        end
    end

    // redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2(DELAY,242)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_delay_0 <= '0;
            redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_q <= '0;
        end
        else
        begin
            redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_delay_0 <= $unsigned(in_c0_eni29_18_tpl);
            redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_q <= redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_delay_0;
        end
    end

    // redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2(DELAY,241)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_delay_0 <= '0;
            redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_q <= '0;
        end
        else
        begin
            redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_delay_0 <= $unsigned(in_c0_eni29_17_tpl);
            redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_q <= redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_delay_0;
        end
    end

    // redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2(DELAY,240)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_delay_0 <= '0;
            redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_q <= '0;
        end
        else
        begin
            redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_delay_0 <= $unsigned(in_c0_eni29_16_tpl);
            redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_q <= redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_delay_0;
        end
    end

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

    // i_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64(BLACKBOX,103)@2
    // out out_feedback_out_52@20000000
    // out out_feedback_valid_out_52@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp1968_push52_0 thei_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out),
        .in_feedback_stall_in_52(i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_feedback_stall_out_52),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg35_q),
        .out_data_out(),
        .out_feedback_out_52(i_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64_out_feedback_out_52),
        .out_feedback_valid_out_52(i_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64_out_feedback_valid_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist14_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1(DELAY,239)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q <= '0;
        end
        else
        begin
            redist14_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q <= $unsigned(in_c0_eni29_15_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63(BLACKBOX,84)@2
    // out out_feedback_stall_out_52@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp1968_pop52_0 thei_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63 (
        .in_data_in(redist14_sync_together157_aunroll_x_in_c0_eni29_15_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_52(i_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64_out_feedback_out_52),
        .in_feedback_valid_in_52(i_llvm_fpga_push_i1_notcmp1968_push52_stencil_2d64_out_feedback_valid_out_52),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg34_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out),
        .out_feedback_stall_out_52(i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_feedback_stall_out_52),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist34_i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out_1(DELAY,259)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out_1_q <= '0;
        end
        else
        begin
            redist34_i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out);
        end
    end

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

    // valid_fanout_reg33(REG,194)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg33_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg33_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62(BLACKBOX,110)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    stencil_2d_i_llvm_fpga_push_i32_c_025_pop1661_push46_0 thei_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62 (
        .in_data_in(i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_feedback_stall_out_46),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg33_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1(DELAY,238)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q <= '0;
        end
        else
        begin
            redist13_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q <= $unsigned(in_c0_eni29_14_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61(BLACKBOX,90)@2
    // out out_feedback_stall_out_46@20000000
    stencil_2d_i_llvm_fpga_pop_i32_c_025_pop1661_pop46_0 thei_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61 (
        .in_data_in(redist13_sync_together157_aunroll_x_in_c0_eni29_14_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_c_025_pop1661_push46_stencil_2d62_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg32_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist31_i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out_1(DELAY,256)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out_1_q <= '0;
        end
        else
        begin
            redist31_i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out);
        end
    end

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

    // i_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60(BLACKBOX,104)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2459_push45_0 thei_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_feedback_stall_out_45),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg31_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1(DELAY,237)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q <= '0;
        end
        else
        begin
            redist12_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q <= $unsigned(in_c0_eni29_13_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59(BLACKBOX,85)@2
    // out out_feedback_stall_out_45@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2459_pop45_0 thei_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59 (
        .in_data_in(redist12_sync_together157_aunroll_x_in_c0_eni29_13_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_notcmp2459_push45_stencil_2d60_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg30_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist33_i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out_1(DELAY,258)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out_1_q <= '0;
        end
        else
        begin
            redist33_i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out);
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

    // i_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58(BLACKBOX,98)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond857_push44_0 thei_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_feedback_stall_out_44),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg29_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1(DELAY,236)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q <= '0;
        end
        else
        begin
            redist11_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q <= $unsigned(in_c0_eni29_12_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57(BLACKBOX,80)@2
    // out out_feedback_stall_out_44@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond857_pop44_0 thei_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57 (
        .in_data_in(redist11_sync_together157_aunroll_x_in_c0_eni29_12_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i1_exitcond857_push44_stencil_2d58_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg28_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist35_i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out_1(DELAY,260)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out_1_q <= '0;
        end
        else
        begin
            redist35_i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out);
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

    // i_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56(BLACKBOX,105)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2952_push42_0 thei_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_feedback_stall_out_42),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg27_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1(DELAY,235)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q <= $unsigned(in_c0_eni29_11_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55(BLACKBOX,86)@2
    // out out_feedback_stall_out_42@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2952_pop42_0 thei_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55 (
        .in_data_in(redist10_sync_together157_aunroll_x_in_c0_eni29_11_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i1_notcmp2952_push42_stencil_2d56_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg26_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist32_i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out_1(DELAY,257)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist32_i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out_1_q <= '0;
        end
        else
        begin
            redist32_i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out);
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
            valid_fanout_reg25_q <= $unsigned(redist29_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54(BLACKBOX,96)@3
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond1149_push41_0 thei_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54 (
        .in_data_in(redist37_i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out_1_q),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_feedback_stall_out_41),
        .in_keep_going(redist39_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg25_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1(DELAY,234)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q <= '0;
        end
        else
        begin
            redist9_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q <= $unsigned(in_c0_eni29_10_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53(BLACKBOX,78)@2
    // out out_feedback_stall_out_41@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond1149_pop41_0 thei_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53 (
        .in_data_in(redist9_sync_together157_aunroll_x_in_c0_eni29_10_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_41(i_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i1_exitcond1149_push41_stencil_2d54_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg24_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out_1(DELAY,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out_1_q <= '0;
        end
        else
        begin
            redist37_i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out);
        end
    end

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

    // valid_fanout_reg23(REG,184)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_mul2546_push40_stencil_2d52(BLACKBOX,113)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul2546_push40_0 thei_llvm_fpga_push_i32_mul2546_push40_stencil_2d52 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_feedback_stall_out_40),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i32_mul2546_push40_stencil_2d52_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i32_mul2546_push40_stencil_2d52_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1(DELAY,233)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q <= $unsigned(in_c0_eni29_9_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51(BLACKBOX,93)@2
    // out out_feedback_stall_out_40@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul2546_pop40_0 thei_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51 (
        .in_data_in(redist8_sync_together157_aunroll_x_in_c0_eni29_9_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i32_mul2546_push40_stencil_2d52_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i32_mul2546_push40_stencil_2d52_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out_1(DELAY,255)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out_1_q <= '0;
        end
        else
        begin
            redist30_i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out);
        end
    end

    // i_masked_stencil_2d48(LOGICAL,116)@2 + 1
    assign i_masked_stencil_2d48_qi = i_notcmp_stencil_2d41_q & i_first_cleanup_stencil_2d5_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_stencil_2d48_delay ( .xin(i_masked_stencil_2d48_qi), .xout(i_masked_stencil_2d48_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_i32_0109(CONSTANT,49)
    assign c_i32_0109_q = $unsigned(32'b00000000000000000000000000000000);

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

    // c_i32_1110(CONSTANT,50)
    assign c_i32_1110_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_stencil_2d36(ADD,72)@2
    assign i_inc_stencil_2d36_a = {1'b0, i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_data_out};
    assign i_inc_stencil_2d36_b = {1'b0, c_i32_1110_q};
    assign i_inc_stencil_2d36_o = $unsigned(i_inc_stencil_2d36_a) + $unsigned(i_inc_stencil_2d36_b);
    assign i_inc_stencil_2d36_q = i_inc_stencil_2d36_o[32:0];

    // bgTrunc_i_inc_stencil_2d36_sel_x(BITSELECT,133)@2
    assign bgTrunc_i_inc_stencil_2d36_sel_x_b = i_inc_stencil_2d36_q[31:0];

    // i_llvm_fpga_push_i32_k2_022_push35_stencil_2d37(BLACKBOX,111)@2
    // out out_feedback_out_35@20000000
    // out out_feedback_valid_out_35@20000000
    stencil_2d_i_llvm_fpga_push_i32_k2_022_push35_0 thei_llvm_fpga_push_i32_k2_022_push35_stencil_2d37 (
        .in_data_in(bgTrunc_i_inc_stencil_2d36_sel_x_b),
        .in_feedback_stall_in_35(i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_feedback_stall_out_35),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_35(i_llvm_fpga_push_i32_k2_022_push35_stencil_2d37_out_feedback_out_35),
        .out_feedback_valid_out_35(i_llvm_fpga_push_i32_k2_022_push35_stencil_2d37_out_feedback_valid_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18(BLACKBOX,91)@2
    // out out_feedback_stall_out_35@20000000
    stencil_2d_i_llvm_fpga_pop_i32_k2_022_pop35_0 thei_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18 (
        .in_data_in(c_i32_0109_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_35(i_llvm_fpga_push_i32_k2_022_push35_stencil_2d37_out_feedback_out_35),
        .in_feedback_valid_in_35(i_llvm_fpga_push_i32_k2_022_push35_stencil_2d37_out_feedback_valid_out_35),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_data_out),
        .out_feedback_stall_out_35(i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_feedback_stall_out_35),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

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

    // i_llvm_fpga_push_i32_add1666_push50_stencil_2d31(BLACKBOX,109)@2
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    stencil_2d_i_llvm_fpga_push_i32_add1666_push50_0 thei_llvm_fpga_push_i32_add1666_push50_stencil_2d31 (
        .in_data_in(i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30_out_data_out),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30_out_feedback_stall_out_50),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i32_add1666_push50_stencil_2d31_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i32_add1666_push50_stencil_2d31_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q <= $unsigned(in_c0_eni29_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30(BLACKBOX,89)@2
    // out out_feedback_stall_out_50@20000000
    stencil_2d_i_llvm_fpga_pop_i32_add1666_pop50_0 thei_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30 (
        .in_data_in(redist6_sync_together157_aunroll_x_in_c0_eni29_7_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i32_add1666_push50_stencil_2d31_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i32_add1666_push50_stencil_2d31_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add17_stencil_2d32(ADD,54)@2
    assign i_add17_stencil_2d32_a = {1'b0, i_llvm_fpga_pop_i32_add1666_pop50_stencil_2d30_out_data_out};
    assign i_add17_stencil_2d32_b = {1'b0, i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_data_out};
    assign i_add17_stencil_2d32_o = $unsigned(i_add17_stencil_2d32_a) + $unsigned(i_add17_stencil_2d32_b);
    assign i_add17_stencil_2d32_q = i_add17_stencil_2d32_o[32:0];

    // bgTrunc_i_add17_stencil_2d32_sel_x(BITSELECT,130)@2
    assign bgTrunc_i_add17_stencil_2d32_sel_x_b = i_add17_stencil_2d32_q[31:0];

    // i_idxprom18_stencil_2d33_sel_x(BITSELECT,152)@2
    assign i_idxprom18_stencil_2d33_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add17_stencil_2d32_sel_x_b[31:0]};

    // i_idxprom18_stencil_2d33_vt_select_31(BITSELECT,67)@2
    assign i_idxprom18_stencil_2d33_vt_select_31_b = i_idxprom18_stencil_2d33_sel_x_b[31:0];

    // redist41_i_idxprom18_stencil_2d33_vt_select_31_b_1(DELAY,266)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist41_i_idxprom18_stencil_2d33_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist41_i_idxprom18_stencil_2d33_vt_select_31_b_1_q <= $unsigned(i_idxprom18_stencil_2d33_vt_select_31_b);
        end
    end

    // i_idxprom18_stencil_2d33_vt_join(BITJOIN,66)@3
    assign i_idxprom18_stencil_2d33_vt_join_q = {c_i32_0109_q, redist41_i_idxprom18_stencil_2d33_vt_select_31_b_1_q};

    // i_arrayidx19_stencil_2d0_narrow_x(BITSELECT,137)@3
    assign i_arrayidx19_stencil_2d0_narrow_x_b = i_idxprom18_stencil_2d33_vt_join_q[61:0];

    // i_arrayidx19_stencil_2d0_c_i2_01_x(CONSTANT,136)
    assign i_arrayidx19_stencil_2d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx19_stencil_2d0_shift_join_x(BITJOIN,138)@3
    assign i_arrayidx19_stencil_2d0_shift_join_x_q = {i_arrayidx19_stencil_2d0_narrow_x_b, i_arrayidx19_stencil_2d0_c_i2_01_x_q};

    // valid_fanout_reg18(REG,179)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist29_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_orig2714_stencil_2d34(BLACKBOX,76)@3
    stencil_2d_i_llvm_fpga_ffwd_dest_p1024i32_orig2714_0 thei_llvm_fpga_ffwd_dest_p1024i32_orig2714_stencil_2d34 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_orig2714_stencil_2d34_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx19_stencil_2d0_add_x(ADD,135)@3
    assign i_arrayidx19_stencil_2d0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_orig2714_stencil_2d34_out_dest_data_out_0_0};
    assign i_arrayidx19_stencil_2d0_add_x_b = {1'b0, i_arrayidx19_stencil_2d0_shift_join_x_q};
    assign i_arrayidx19_stencil_2d0_add_x_o = $unsigned(i_arrayidx19_stencil_2d0_add_x_a) + $unsigned(i_arrayidx19_stencil_2d0_add_x_b);
    assign i_arrayidx19_stencil_2d0_add_x_q = i_arrayidx19_stencil_2d0_add_x_o[64:0];

    // i_arrayidx19_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,140)@3
    assign i_arrayidx19_stencil_2d0_dupName_0_trunc_sel_x_b = i_arrayidx19_stencil_2d0_add_x_q[63:0];

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

    // i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26(BLACKBOX,101)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    stencil_2d_i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25_out_data_out),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25_out_feedback_stall_out_43),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q <= $unsigned(in_c0_eni29_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25(BLACKBOX,82)@2
    // out out_feedback_stall_out_43@20000000
    stencil_2d_i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25 (
        .in_data_in(redist4_sync_together157_aunroll_x_in_c0_eni29_5_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i1_memdep_phi1_pop1455_push43_stencil_2d26_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25_out_feedback_stall_out_43),
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

    // i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28(BLACKBOX,102)@2
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    stencil_2d_i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_0 thei_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27_out_data_out),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27_out_feedback_stall_out_47),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q <= $unsigned(in_c0_eni29_6_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27(BLACKBOX,83)@2
    // out out_feedback_stall_out_47@20000000
    stencil_2d_i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_0 thei_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27 (
        .in_data_in(redist5_sync_together157_aunroll_x_in_c0_eni29_6_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_47(i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_i1_memdep_phi_pop1763_push47_stencil_2d28_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_memdep_phi1_or_stencil_2d29(LOGICAL,117)@2 + 1
    assign i_memdep_phi1_or_stencil_2d29_qi = i_llvm_fpga_pop_i1_memdep_phi_pop1763_pop47_stencil_2d27_out_data_out | i_llvm_fpga_pop_i1_memdep_phi1_pop1455_pop43_stencil_2d25_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi1_or_stencil_2d29_delay ( .xin(i_memdep_phi1_or_stencil_2d29_qi), .xout(i_memdep_phi1_or_stencil_2d29_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

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

    // i_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20(BLACKBOX,112)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul13_add1365_push49_0 thei_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20 (
        .in_data_in(i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19_out_feedback_stall_out_49),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q <= $unsigned(in_c0_eni29_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19(BLACKBOX,92)@2
    // out out_feedback_stall_out_49@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul13_add1365_pop49_0 thei_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19 (
        .in_data_in(redist3_sync_together157_aunroll_x_in_c0_eni29_4_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i32_mul13_add1365_push49_stencil_2d20_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add_stencil_2d21(ADD,55)@2
    assign i_add_stencil_2d21_a = {1'b0, i_llvm_fpga_pop_i32_k2_022_pop35_stencil_2d18_out_data_out};
    assign i_add_stencil_2d21_b = {1'b0, i_llvm_fpga_pop_i32_mul13_add1365_pop49_stencil_2d19_out_data_out};
    assign i_add_stencil_2d21_o = $unsigned(i_add_stencil_2d21_a) + $unsigned(i_add_stencil_2d21_b);
    assign i_add_stencil_2d21_q = i_add_stencil_2d21_o[32:0];

    // bgTrunc_i_add_stencil_2d21_sel_x(BITSELECT,131)@2
    assign bgTrunc_i_add_stencil_2d21_sel_x_b = i_add_stencil_2d21_q[31:0];

    // i_idxprom_stencil_2d22_sel_x(BITSELECT,153)@2
    assign i_idxprom_stencil_2d22_sel_x_b = {32'b00000000000000000000000000000000, bgTrunc_i_add_stencil_2d21_sel_x_b[31:0]};

    // i_idxprom_stencil_2d22_vt_select_31(BITSELECT,71)@2
    assign i_idxprom_stencil_2d22_vt_select_31_b = i_idxprom_stencil_2d22_sel_x_b[31:0];

    // redist40_i_idxprom_stencil_2d22_vt_select_31_b_1(DELAY,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist40_i_idxprom_stencil_2d22_vt_select_31_b_1_q <= '0;
        end
        else
        begin
            redist40_i_idxprom_stencil_2d22_vt_select_31_b_1_q <= $unsigned(i_idxprom_stencil_2d22_vt_select_31_b);
        end
    end

    // i_idxprom_stencil_2d22_vt_join(BITJOIN,70)@3
    assign i_idxprom_stencil_2d22_vt_join_q = {c_i32_0109_q, redist40_i_idxprom_stencil_2d22_vt_select_31_b_1_q};

    // i_arrayidx_stencil_2d0_narrow_x(BITSELECT,143)@3
    assign i_arrayidx_stencil_2d0_narrow_x_b = i_idxprom_stencil_2d22_vt_join_q[61:0];

    // i_arrayidx_stencil_2d0_shift_join_x(BITJOIN,144)@3
    assign i_arrayidx_stencil_2d0_shift_join_x_q = {i_arrayidx_stencil_2d0_narrow_x_b, i_arrayidx19_stencil_2d0_c_i2_01_x_q};

    // valid_fanout_reg11(REG,172)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist29_sync_together157_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_filter2916_stencil_2d23(BLACKBOX,75)@3
    stencil_2d_i_llvm_fpga_ffwd_dest_p1024i32_filter2916_0 thei_llvm_fpga_ffwd_dest_p1024i32_filter2916_stencil_2d23 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1024i32_filter2916_stencil_2d23_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_stencil_2d0_add_x(ADD,141)@3
    assign i_arrayidx_stencil_2d0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_filter2916_stencil_2d23_out_dest_data_out_2_0};
    assign i_arrayidx_stencil_2d0_add_x_b = {1'b0, i_arrayidx_stencil_2d0_shift_join_x_q};
    assign i_arrayidx_stencil_2d0_add_x_o = $unsigned(i_arrayidx_stencil_2d0_add_x_a) + $unsigned(i_arrayidx_stencil_2d0_add_x_b);
    assign i_arrayidx_stencil_2d0_add_x_q = i_arrayidx_stencil_2d0_add_x_o[64:0];

    // i_arrayidx_stencil_2d0_dupName_0_trunc_sel_x(BITSELECT,146)@3
    assign i_arrayidx_stencil_2d0_dupName_0_trunc_sel_x_b = i_arrayidx_stencil_2d0_add_x_q[63:0];

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

    // i_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11(BLACKBOX,97)@2
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    stencil_2d_i_llvm_fpga_push_i1_exitcond567_push51_0 thei_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11 (
        .in_data_in(i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_feedback_stall_out_51),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q <= $unsigned(in_c0_eni29_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10(BLACKBOX,79)@2
    // out out_feedback_stall_out_51@20000000
    stencil_2d_i_llvm_fpga_pop_i1_exitcond567_pop51_0 thei_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10 (
        .in_data_in(redist2_sync_together157_aunroll_x_in_c0_eni29_3_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i1_exitcond567_push51_stencil_2d11_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist36_i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out_1(DELAY,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist36_i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out_1_q <= '0;
        end
        else
        begin
            redist36_i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out);
        end
    end

    // i_keep_going_or_stencil_2d12(LOGICAL,73)@3
    assign i_keep_going_or_stencil_2d12_q = redist39_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q | redist36_i_llvm_fpga_pop_i1_exitcond567_pop51_stencil_2d10_out_data_out_1_q;

    // redist39_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2(DELAY,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist39_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q <= '0;
        end
        else
        begin
            redist39_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q <= $unsigned(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q);
        end
    end

    // redist42_i_first_cleanup_xor_stencil_2d6_q_1(DELAY,267)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist42_i_first_cleanup_xor_stencil_2d6_q_1_q <= '0;
        end
        else
        begin
            redist42_i_first_cleanup_xor_stencil_2d6_q_1_q <= $unsigned(i_first_cleanup_xor_stencil_2d6_q);
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

    // i_llvm_fpga_push_i1_forked3764_push48_stencil_2d9(BLACKBOX,99)@2
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    stencil_2d_i_llvm_fpga_push_i1_forked3764_push48_0 thei_llvm_fpga_push_i1_forked3764_push48_stencil_2d9 (
        .in_data_in(i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2_out_data_out),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2_out_feedback_stall_out_48),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i1_forked3764_push48_stencil_2d9_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i1_forked3764_push48_stencil_2d9_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q <= $unsigned(in_c0_eni29_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2(BLACKBOX,81)@2
    // out out_feedback_stall_out_48@20000000
    stencil_2d_i_llvm_fpga_pop_i1_forked3764_pop48_0 thei_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2 (
        .in_data_in(redist0_sync_together157_aunroll_x_in_c0_eni29_1_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_48(i_llvm_fpga_push_i1_forked3764_push48_stencil_2d9_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i1_forked3764_push48_stencil_2d9_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_forked_and_stencil_2d3(LOGICAL,62)@2 + 1
    assign i_forked_and_stencil_2d3_qi = redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q & i_llvm_fpga_pop_i1_forked3764_pop48_stencil_2d2_out_data_out;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_forked_and_stencil_2d3_delay ( .xin(i_forked_and_stencil_2d3_qi), .xout(i_forked_and_stencil_2d3_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,159)@3
    assign out_c0_exi29_0_tpl = GND_q;
    assign out_c0_exi29_1_tpl = i_forked_and_stencil_2d3_q;
    assign out_c0_exi29_2_tpl = redist42_i_first_cleanup_xor_stencil_2d6_q_1_q;
    assign out_c0_exi29_3_tpl = redist39_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_2_q;
    assign out_c0_exi29_4_tpl = i_keep_going_or_stencil_2d12_q;
    assign out_c0_exi29_5_tpl = i_arrayidx_stencil_2d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi29_6_tpl = i_memdep_phi1_or_stencil_2d29_q;
    assign out_c0_exi29_7_tpl = i_arrayidx19_stencil_2d0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi29_8_tpl = i_masked_stencil_2d48_q;
    assign out_c0_exi29_9_tpl = redist30_i_llvm_fpga_pop_i32_mul2546_pop40_stencil_2d51_out_data_out_1_q;
    assign out_c0_exi29_10_tpl = redist37_i_llvm_fpga_pop_i1_exitcond1149_pop41_stencil_2d53_out_data_out_1_q;
    assign out_c0_exi29_11_tpl = redist32_i_llvm_fpga_pop_i1_notcmp2952_pop42_stencil_2d55_out_data_out_1_q;
    assign out_c0_exi29_12_tpl = redist35_i_llvm_fpga_pop_i1_exitcond857_pop44_stencil_2d57_out_data_out_1_q;
    assign out_c0_exi29_13_tpl = redist33_i_llvm_fpga_pop_i1_notcmp2459_pop45_stencil_2d59_out_data_out_1_q;
    assign out_c0_exi29_14_tpl = redist31_i_llvm_fpga_pop_i32_c_025_pop1661_pop46_stencil_2d61_out_data_out_1_q;
    assign out_c0_exi29_15_tpl = redist34_i_llvm_fpga_pop_i1_notcmp1968_pop52_stencil_2d63_out_data_out_1_q;
    assign out_c0_exi29_16_tpl = redist15_sync_together157_aunroll_x_in_c0_eni29_16_tpl_2_q;
    assign out_c0_exi29_17_tpl = redist16_sync_together157_aunroll_x_in_c0_eni29_17_tpl_2_q;
    assign out_c0_exi29_18_tpl = redist17_sync_together157_aunroll_x_in_c0_eni29_18_tpl_2_q;
    assign out_c0_exi29_19_tpl = redist18_sync_together157_aunroll_x_in_c0_eni29_19_tpl_2_q;
    assign out_c0_exi29_20_tpl = redist19_sync_together157_aunroll_x_in_c0_eni29_20_tpl_2_q;
    assign out_c0_exi29_21_tpl = redist20_sync_together157_aunroll_x_in_c0_eni29_21_tpl_2_q;
    assign out_c0_exi29_22_tpl = redist21_sync_together157_aunroll_x_in_c0_eni29_22_tpl_2_q;
    assign out_c0_exi29_23_tpl = redist22_sync_together157_aunroll_x_in_c0_eni29_23_tpl_2_q;
    assign out_c0_exi29_24_tpl = redist23_sync_together157_aunroll_x_in_c0_eni29_24_tpl_2_q;
    assign out_c0_exi29_25_tpl = redist24_sync_together157_aunroll_x_in_c0_eni29_25_tpl_2_q;
    assign out_c0_exi29_26_tpl = redist25_sync_together157_aunroll_x_in_c0_eni29_26_tpl_2_q;
    assign out_c0_exi29_27_tpl = redist26_sync_together157_aunroll_x_in_c0_eni29_27_tpl_2_q;
    assign out_c0_exi29_28_tpl = redist27_sync_together157_aunroll_x_in_c0_eni29_28_tpl_2_q;
    assign out_c0_exi29_29_tpl = redist28_sync_together157_aunroll_x_in_c0_eni29_29_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

    // i_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49(BLACKBOX,94)@2
    // out out_feedback_stall_out_39@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_026_pop1343_pop39_0 thei_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49 (
        .in_data_in(redist7_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q),
        .in_dir(redist1_sync_together157_aunroll_x_in_c0_eni29_2_tpl_1_q),
        .in_feedback_in_39(i_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50_out_feedback_out_39),
        .in_feedback_valid_in_39(i_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50_out_feedback_valid_out_39),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49_out_data_out),
        .out_feedback_stall_out_39(i_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49_out_feedback_stall_out_39),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50(BLACKBOX,114)@2
    // out out_feedback_out_39@20000000
    // out out_feedback_valid_out_39@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_026_pop1343_push39_0 thei_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50 (
        .in_data_in(i_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49_out_data_out),
        .in_feedback_stall_in_39(i_llvm_fpga_pop_i32_r_026_pop1343_pop39_stencil_2d49_out_feedback_stall_out_39),
        .in_keep_going(redist38_i_llvm_fpga_pipeline_keep_going_stencil_2d8_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_39(i_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50_out_feedback_out_39),
        .out_feedback_valid_out_39(i_llvm_fpga_push_i32_r_026_pop1343_push39_stencil_2d50_out_feedback_valid_out_39),
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

    // redist7_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together157_aunroll_x_in_c0_eni29_8_tpl_1_q <= $unsigned(in_c0_eni29_8_tpl);
        end
    end

endmodule
