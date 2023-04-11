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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body8_ataxs_c0_enter10419_atax0
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body8_s_c0_enter10419_atax0 (
    input wire [31:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [31:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [31:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [31:0] out_unnamed_atax6_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    output wire [0:0] out_c0_exi12_0_tpl,
    output wire [0:0] out_c0_exi12_1_tpl,
    output wire [63:0] out_c0_exi12_2_tpl,
    output wire [31:0] out_c0_exi12_3_tpl,
    output wire [0:0] out_c0_exi12_4_tpl,
    output wire [0:0] out_c0_exi12_5_tpl,
    output wire [0:0] out_c0_exi12_6_tpl,
    output wire [0:0] out_c0_exi12_7_tpl,
    output wire [63:0] out_c0_exi12_8_tpl,
    output wire [0:0] out_c0_exi12_9_tpl,
    output wire [0:0] out_c0_exi12_10_tpl,
    output wire [0:0] out_c0_exi12_11_tpl,
    output wire [0:0] out_c0_exi12_12_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax0,
    input wire [0:0] in_c0_eni11_0_tpl,
    input wire [0:0] in_c0_eni11_1_tpl,
    input wire [63:0] in_c0_eni11_2_tpl,
    input wire [31:0] in_c0_eni11_3_tpl,
    input wire [0:0] in_c0_eni11_4_tpl,
    input wire [0:0] in_c0_eni11_5_tpl,
    input wire [0:0] in_c0_eni11_6_tpl,
    input wire [63:0] in_c0_eni11_7_tpl,
    input wire [0:0] in_c0_eni11_8_tpl,
    input wire [0:0] in_c0_eni11_9_tpl,
    input wire [0:0] in_c0_eni11_10_tpl,
    input wire [0:0] in_c0_eni11_11_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_A_local_pmem_q;
    wire [63:0] c_atax_x_local_pmem_q;
    wire [1:0] c_i2_179_q;
    wire [31:0] c_i32_081_q;
    wire [31:0] c_i32_182_q;
    wire [5:0] c_i6_185_q;
    wire [5:0] c_i6_1883_q;
    wire [32:0] i_add_atax22_a;
    wire [32:0] i_add_atax22_b;
    logic [32:0] i_add_atax22_o;
    wire [32:0] i_add_atax22_q;
    wire [1:0] i_arrayidx122_atax16_vt_const_1_q;
    wire [63:0] i_arrayidx122_atax16_vt_join_q;
    wire [61:0] i_arrayidx122_atax16_vt_select_63_b;
    wire [63:0] i_arrayidx143_atax18_vt_join_q;
    wire [61:0] i_arrayidx143_atax18_vt_select_63_b;
    wire [1:0] i_cleanups_shl18_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl18_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor20_atax4_q;
    wire [6:0] i_fpga_indvars_iv_next_atax34_a;
    wire [6:0] i_fpga_indvars_iv_next_atax34_b;
    logic [6:0] i_fpga_indvars_iv_next_atax34_o;
    wire [6:0] i_fpga_indvars_iv_next_atax34_q;
    wire [63:0] i_idxprom11_atax13_vt_join_q;
    wire [31:0] i_idxprom11_atax13_vt_select_31_b;
    wire [32:0] i_inc_atax24_a;
    wire [32:0] i_inc_atax24_b;
    logic [32:0] i_inc_atax24_o;
    wire [32:0] i_inc_atax24_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_feedback_stall_out_27;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_feedback_stall_out_20;
    wire [1:0] i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_j_020_pop17_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_020_pop17_atax12_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_feedback_stall_out_18;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_feedback_stall_out_24;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26_out_feedback_stall_out_16;
    wire [63:0] i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_push_i1_exitcond947_push26_atax46_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_exitcond947_push26_atax46_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_forked3542_push23_atax42_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_forked3542_push23_atax42_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration16_atax11_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration16_atax11_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2649_push27_atax48_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2649_push27_atax48_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_atax30_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond24_atax30_out_feedback_valid_out_4;
    wire [7:0] i_llvm_fpga_push_i2_cleanups17_push20_atax33_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i2_cleanups17_push20_atax33_out_feedback_valid_out_20;
    wire [7:0] i_llvm_fpga_push_i2_initerations12_push19_atax9_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i2_initerations12_push19_atax9_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_j_020_push17_atax25_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_j_020_push17_atax25_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_t_019_push18_atax23_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i32_t_019_push18_atax23_out_feedback_valid_out_18;
    wire [63:0] i_llvm_fpga_push_i64_idxprom43_push24_atax15_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i64_idxprom43_push24_atax15_out_feedback_valid_out_24;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35_out_feedback_valid_out_16;
    wire [63:0] i_llvm_fpga_push_p67i32_arrayidx145_push25_atax44_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_p67i32_arrayidx145_push25_atax44_out_feedback_valid_out_25;
    wire [0:0] i_masked23_atax36_qi;
    reg [0:0] i_masked23_atax36_q;
    wire [0:0] i_next_cleanups22_atax32_s;
    reg [1:0] i_next_cleanups22_atax32_q;
    wire [1:0] i_next_initerations13_atax8_vt_join_q;
    wire [0:0] i_next_initerations13_atax8_vt_select_0_b;
    wire [0:0] i_notcmp10_atax29_q;
    wire [0:0] i_or21_atax31_q;
    wire [31:0] bgTrunc_i_add_atax22_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_atax34_sel_x_b;
    wire [31:0] bgTrunc_i_inc_atax24_sel_x_b;
    wire [63:0] bgTrunc_i_mul_atax20_sel_x_in;
    wire [31:0] bgTrunc_i_mul_atax20_sel_x_b;
    wire [11:0] i_arrayidx122_atax0_add_x_a;
    wire [11:0] i_arrayidx122_atax0_add_x_b;
    logic [11:0] i_arrayidx122_atax0_add_x_o;
    wire [11:0] i_arrayidx122_atax0_add_x_q;
    wire [63:0] i_arrayidx122_atax0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx122_atax0_narrow_x_b;
    wire [10:0] i_arrayidx122_atax0_shift_join_x_q;
    wire [11:0] i_arrayidx122_atax0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx122_atax0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx122_atax0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx122_atax0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx122_atax0_mult_extender_x_q;
    wire [3:0] i_arrayidx122_atax0_mult_multconst_x_q;
    wire [10:0] i_arrayidx122_atax0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx122_atax0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx143_atax0_add_x_a;
    wire [7:0] i_arrayidx143_atax0_add_x_b;
    logic [7:0] i_arrayidx143_atax0_add_x_o;
    wire [7:0] i_arrayidx143_atax0_add_x_q;
    wire [63:0] i_arrayidx143_atax0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx143_atax0_narrow_x_b;
    wire [6:0] i_arrayidx143_atax0_shift_join_x_q;
    wire [6:0] i_arrayidx143_atax0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx143_atax0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup19_atax3_sel_x_b;
    wire [63:0] i_idxprom11_atax13_sel_x_b;
    wire [0:0] i_last_initeration15_atax10_sel_x_b;
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
    wire [0:0] i_exitcond_atax27_cmp_nsign_q;
    wire [63:0] i_mul_atax20_sums_join_0_q;
    wire [50:0] i_mul_atax20_sums_align_1_q;
    wire [50:0] i_mul_atax20_sums_align_1_qint;
    wire [64:0] i_mul_atax20_sums_result_add_0_0_a;
    wire [64:0] i_mul_atax20_sums_result_add_0_0_b;
    logic [64:0] i_mul_atax20_sums_result_add_0_0_o;
    wire [64:0] i_mul_atax20_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_a;
    wire [11:0] addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_b;
    logic [11:0] addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_o;
    wire [11:0] addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_q;
    wire [13:0] add_uid225_i_arrayidx122_atax0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid230_i_arrayidx122_atax0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl18_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl18_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid265_i_cleanups_shl18_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid271_i_next_initerations13_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid273_i_next_initerations13_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_q;
    wire i_mul_atax20_im0_cma_reset;
    wire [13:0] i_mul_atax20_im0_cma_a0;
    wire [13:0] i_mul_atax20_im0_cma_c0;
    wire [27:0] i_mul_atax20_im0_cma_s0;
    wire [27:0] i_mul_atax20_im0_cma_qq;
    wire [27:0] i_mul_atax20_im0_cma_q;
    wire i_mul_atax20_im0_cma_ena0;
    wire i_mul_atax20_im0_cma_ena1;
    wire i_mul_atax20_im0_cma_ena2;
    wire i_mul_atax20_im8_cma_reset;
    wire [17:0] i_mul_atax20_im8_cma_a0;
    wire [17:0] i_mul_atax20_im8_cma_c0;
    wire [35:0] i_mul_atax20_im8_cma_s0;
    wire [35:0] i_mul_atax20_im8_cma_qq;
    wire [35:0] i_mul_atax20_im8_cma_q;
    wire i_mul_atax20_im8_cma_ena0;
    wire i_mul_atax20_im8_cma_ena1;
    wire i_mul_atax20_im8_cma_ena2;
    wire i_mul_atax20_ma3_cma_reset;
    wire [13:0] i_mul_atax20_ma3_cma_a0;
    wire [17:0] i_mul_atax20_ma3_cma_c0;
    wire [13:0] i_mul_atax20_ma3_cma_a1;
    wire [17:0] i_mul_atax20_ma3_cma_c1;
    wire [32:0] i_mul_atax20_ma3_cma_s0;
    wire [32:0] i_mul_atax20_ma3_cma_qq;
    wire [32:0] i_mul_atax20_ma3_cma_q;
    wire i_mul_atax20_ma3_cma_ena0;
    wire i_mul_atax20_ma3_cma_ena1;
    wire i_mul_atax20_ma3_cma_ena2;
    wire [52:0] i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx122_atax0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx143_atax0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx143_atax0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_atax20_bs2_merged_bit_select_b;
    wire [17:0] i_mul_atax20_bs2_merged_bit_select_c;
    wire [13:0] i_mul_atax20_bs1_merged_bit_select_b;
    wire [17:0] i_mul_atax20_bs1_merged_bit_select_c;
    wire [1:0] lowRangeB_uid222_i_arrayidx122_atax0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid222_i_arrayidx122_atax0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q;
    reg [0:0] redist1_sync_together117_aunroll_x_in_c0_eni11_1_tpl_2_q;
    reg [0:0] redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9_q;
    reg [63:0] redist3_sync_together117_aunroll_x_in_c0_eni11_2_tpl_1_q;
    reg [0:0] redist5_sync_together117_aunroll_x_in_c0_eni11_4_tpl_1_q;
    reg [0:0] redist6_sync_together117_aunroll_x_in_c0_eni11_5_tpl_1_q;
    reg [0:0] redist7_sync_together117_aunroll_x_in_c0_eni11_6_tpl_9_q;
    reg [63:0] redist8_sync_together117_aunroll_x_in_c0_eni11_7_tpl_1_q;
    reg [0:0] redist9_sync_together117_aunroll_x_in_c0_eni11_8_tpl_9_q;
    reg [0:0] redist10_sync_together117_aunroll_x_in_c0_eni11_9_tpl_9_q;
    reg [0:0] redist11_sync_together117_aunroll_x_in_c0_eni11_10_tpl_10_q;
    reg [0:0] redist12_sync_together117_aunroll_x_in_c0_eni11_11_tpl_10_q;
    reg [0:0] redist13_sync_together117_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist14_sync_together117_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist15_sync_together117_aunroll_x_in_i_valid_9_q;
    reg [10:0] redist16_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist17_bgTrunc_i_mul_atax20_sel_x_b_1_q;
    reg [0:0] redist18_i_masked23_atax36_q_9_q;
    reg [31:0] redist21_i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out_1_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out_9_q;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out_9_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out_1_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out_1_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_2_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10_q;
    reg [0:0] redist30_i_first_cleanup_xor20_atax4_q_1_q;
    wire redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_reset0;
    wire [31:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_ia;
    wire [2:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_aa;
    wire [2:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_ab;
    wire [31:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_iq;
    wire [31:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_q;
    wire [2:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_q;
    (* preserve *) reg [2:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_i;
    reg [2:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_wraddr_q;
    wire [3:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_last_q;
    wire [3:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmp_b;
    wire [0:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmp_q;
    (* dont_merge *) reg [0:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmpReg_q;
    wire [0:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_notEnable_q;
    wire [0:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_nor_q;
    (* dont_merge *) reg [0:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_sticky_ena_q;
    wire [0:0] redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_enaAnd_q;
    wire redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_reset0;
    wire [63:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_ia;
    wire [2:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_aa;
    wire [2:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_ab;
    wire [63:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_iq;
    wire [63:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_q;
    wire [2:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_i;
    reg [2:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_wraddr_q;
    wire [3:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_last_q;
    wire [3:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmp_b;
    wire [0:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmpReg_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_notEnable_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_sticky_ena_q;
    wire [0:0] redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_enaAnd_q;
    wire redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_reset0;
    wire [63:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_ia;
    wire [2:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_aa;
    wire [2:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_ab;
    wire [63:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_iq;
    wire [63:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_q;
    wire [2:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_i;
    reg [2:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_wraddr_q;
    wire [3:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_last_q;
    wire [3:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmp_b;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist13_sync_together117_aunroll_x_in_i_valid_1(DELAY,297)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together117_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist13_sync_together117_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl18_atax0_shift_x(BITSELECT,263)@2
    assign leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl18_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl18_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl18_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid265_i_cleanups_shl18_atax0_shift_x(BITJOIN,264)@2
    assign leftShiftStage0Idx1_uid265_i_cleanups_shl18_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid264_i_cleanups_shl18_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x(MUX,266)@2
    assign leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out or leftShiftStage0Idx1_uid265_i_cleanups_shl18_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_q = leftShiftStage0Idx1_uid265_i_cleanups_shl18_atax0_shift_x_q;
            default : leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl18_atax5_vt_select_1(BITSELECT,54)@2
    assign i_cleanups_shl18_atax5_vt_select_1_b = leftShiftStage0_uid267_i_cleanups_shl18_atax0_shift_x_q[1:1];

    // i_cleanups_shl18_atax5_vt_join(BITJOIN,53)@2
    assign i_cleanups_shl18_atax5_vt_join_q = {i_cleanups_shl18_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor20_atax4(LOGICAL,57)@2
    assign i_first_cleanup_xor20_atax4_q = i_first_cleanup19_atax3_sel_x_b ^ VCC_q;

    // i_notcmp10_atax29(LOGICAL,100)@2
    assign i_notcmp10_atax29_q = i_exitcond_atax27_cmp_nsign_q ^ VCC_q;

    // i_or21_atax31(LOGICAL,101)@2
    assign i_or21_atax31_q = i_notcmp10_atax29_q | i_first_cleanup_xor20_atax4_q;

    // i_next_cleanups22_atax32(MUX,96)@2
    assign i_next_cleanups22_atax32_s = i_or21_atax31_q;
    always @(i_next_cleanups22_atax32_s or i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out or i_cleanups_shl18_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups22_atax32_s)
            1'b0 : i_next_cleanups22_atax32_q = i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out;
            1'b1 : i_next_cleanups22_atax32_q = i_cleanups_shl18_atax5_vt_join_q;
            default : i_next_cleanups22_atax32_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups17_push20_atax33(BLACKBOX,87)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    atax_i_llvm_fpga_push_i2_cleanups17_push20_0 thei_llvm_fpga_push_i2_cleanups17_push20_atax33 (
        .in_data_in(i_next_cleanups22_atax32_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_feedback_stall_out_20),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together117_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i2_cleanups17_push20_atax33_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i2_cleanups17_push20_atax33_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q <= $unsigned(in_c0_eni11_1_tpl);
        end
    end

    // c_i2_179(CONSTANT,38)
    assign c_i2_179_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups17_pop20_atax2(BLACKBOX,73)@2
    // out out_feedback_stall_out_20@20000000
    atax_i_llvm_fpga_pop_i2_cleanups17_pop20_0 thei_llvm_fpga_pop_i2_cleanups17_pop20_atax2 (
        .in_data_in(c_i2_179_q),
        .in_dir(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i2_cleanups17_push20_atax33_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i2_cleanups17_push20_atax33_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together117_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_feedback_stall_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup19_atax3_sel_x(BITSELECT,155)@2
    assign i_first_cleanup19_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups17_pop20_atax2_out_data_out[0:0];

    // c_i6_185(CONSTANT,41)
    assign c_i6_185_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_atax34(ADD,58)@2
    assign i_fpga_indvars_iv_next_atax34_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26_out_data_out};
    assign i_fpga_indvars_iv_next_atax34_b = {1'b0, c_i6_185_q};
    assign i_fpga_indvars_iv_next_atax34_o = $unsigned(i_fpga_indvars_iv_next_atax34_a) + $unsigned(i_fpga_indvars_iv_next_atax34_b);
    assign i_fpga_indvars_iv_next_atax34_q = i_fpga_indvars_iv_next_atax34_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax34_sel_x(BITSELECT,108)@2
    assign bgTrunc_i_fpga_indvars_iv_next_atax34_sel_x_b = i_fpga_indvars_iv_next_atax34_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35(BLACKBOX,92)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv_push16_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_atax34_sel_x_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26_out_feedback_stall_out_16),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together117_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1883(CONSTANT,42)
    assign c_i6_1883_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26(BLACKBOX,78)@2
    // out out_feedback_stall_out_16@20000000
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26 (
        .in_data_in(c_i6_1883_q),
        .in_dir(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv_push16_atax35_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together117_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_atax27_cmp_nsign(LOGICAL,198)@2
    assign i_exitcond_atax27_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop16_atax26_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond24_atax30(BLACKBOX,86)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    atax_i_llvm_fpga_push_i1_notexitcond24_0 thei_llvm_fpga_push_i1_notexitcond24_atax30 (
        .in_data_in(i_exitcond_atax27_cmp_nsign_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going14_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup19(i_first_cleanup19_atax3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together117_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond24_atax30_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond24_atax30_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,167)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid271_i_next_initerations13_atax0_shift_x(BITSELECT,270)@2
    assign rightShiftStage0Idx1Rng1_uid271_i_next_initerations13_atax0_shift_x_b = i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid273_i_next_initerations13_atax0_shift_x(BITJOIN,272)@2
    assign rightShiftStage0Idx1_uid273_i_next_initerations13_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid271_i_next_initerations13_atax0_shift_x_b};

    // valid_fanout_reg1(REG,165)@1 + 1
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

    // valid_fanout_reg2(REG,166)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations12_push19_atax9(BLACKBOX,88)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    atax_i_llvm_fpga_push_i2_initerations12_push19_0 thei_llvm_fpga_push_i2_initerations12_push19_atax9 (
        .in_data_in(i_next_initerations13_atax8_vt_join_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_feedback_stall_out_19),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i2_initerations12_push19_atax9_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i2_initerations12_push19_atax9_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations12_pop19_atax7(BLACKBOX,74)@2
    // out out_feedback_stall_out_19@20000000
    atax_i_llvm_fpga_pop_i2_initerations12_pop19_0 thei_llvm_fpga_pop_i2_initerations12_pop19_atax7 (
        .in_data_in(c_i2_179_q),
        .in_dir(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i2_initerations12_push19_atax9_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i2_initerations12_push19_atax9_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x(MUX,274)@2
    assign rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_s or i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_data_out or rightShiftStage0Idx1_uid273_i_next_initerations13_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_q = i_llvm_fpga_pop_i2_initerations12_pop19_atax7_out_data_out;
            1'b1 : rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_q = rightShiftStage0Idx1_uid273_i_next_initerations13_atax0_shift_x_q;
            default : rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations13_atax8_vt_select_0(BITSELECT,99)@2
    assign i_next_initerations13_atax8_vt_select_0_b = rightShiftStage0_uid275_i_next_initerations13_atax0_shift_x_q[0:0];

    // i_next_initerations13_atax8_vt_join(BITJOIN,98)@2
    assign i_next_initerations13_atax8_vt_join_q = {GND_q, i_next_initerations13_atax8_vt_select_0_b};

    // i_last_initeration15_atax10_sel_x(BITSELECT,157)@2
    assign i_last_initeration15_atax10_sel_x_b = i_next_initerations13_atax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration16_atax11(BLACKBOX,82)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration16_0 thei_llvm_fpga_push_i1_lastiniteration16_atax11 (
        .in_data_in(i_last_initeration15_atax10_sel_x_b),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going14_atax6_out_initeration_stall_out),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_lastiniteration16_atax11_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_lastiniteration16_atax11_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going14_atax6(BLACKBOX,67)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going14_0 thei_llvm_fpga_pipeline_keep_going14_atax6 (
        .in_data_in(in_c0_eni11_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration16_atax11_out_feedback_out_3),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration16_atax11_out_feedback_valid_out_3),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond24_atax30_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond24_atax30_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going14_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going14_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going14_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going14_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going14_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,44)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going14_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going14_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going14_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,104)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going14_atax6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,171)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist13_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist30_i_first_cleanup_xor20_atax4_q_1(DELAY,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_i_first_cleanup_xor20_atax4_q_1_q <= '0;
        end
        else
        begin
            redist30_i_first_cleanup_xor20_atax4_q_1_q <= $unsigned(i_first_cleanup_xor20_atax4_q);
        end
    end

    // c_atax_A_local_pmem(CONSTANT,6)
    assign c_atax_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx122_atax0_upper_bits_x_merged_bit_select(BITSELECT,279)@3
    assign i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b = c_atax_A_local_pmem_q[63:11];
    assign i_arrayidx122_atax0_upper_bits_x_merged_bit_select_c = c_atax_A_local_pmem_q[10:0];

    // c_i32_081(CONSTANT,39)
    assign c_i32_081_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,168)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist13_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,175)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist13_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist28_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_2(DELAY,312)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_2_q <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q);
        end
    end

    // c_i32_182(CONSTANT,40)
    assign c_i32_182_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax24(ADD,63)@3
    assign i_inc_atax24_a = {1'b0, i_llvm_fpga_pop_i32_j_020_pop17_atax12_out_data_out};
    assign i_inc_atax24_b = {1'b0, c_i32_182_q};
    assign i_inc_atax24_o = $unsigned(i_inc_atax24_a) + $unsigned(i_inc_atax24_b);
    assign i_inc_atax24_q = i_inc_atax24_o[32:0];

    // bgTrunc_i_inc_atax24_sel_x(BITSELECT,109)@3
    assign bgTrunc_i_inc_atax24_sel_x_b = i_inc_atax24_q[31:0];

    // i_llvm_fpga_push_i32_j_020_push17_atax25(BLACKBOX,89)@3
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    atax_i_llvm_fpga_push_i32_j_020_push17_0 thei_llvm_fpga_push_i32_j_020_push17_atax25 (
        .in_data_in(bgTrunc_i_inc_atax24_sel_x_b),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_j_020_pop17_atax12_out_feedback_stall_out_17),
        .in_keep_going14(redist28_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_j_020_push17_atax25_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_j_020_push17_atax25_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together117_aunroll_x_in_c0_eni11_1_tpl_2(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together117_aunroll_x_in_c0_eni11_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together117_aunroll_x_in_c0_eni11_1_tpl_2_q <= $unsigned(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j_020_pop17_atax12(BLACKBOX,75)@3
    // out out_feedback_stall_out_17@20000000
    atax_i_llvm_fpga_pop_i32_j_020_pop17_0 thei_llvm_fpga_pop_i32_j_020_pop17_atax12 (
        .in_data_in(c_i32_081_q),
        .in_dir(redist1_sync_together117_aunroll_x_in_c0_eni11_1_tpl_2_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_j_020_push17_atax25_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_j_020_push17_atax25_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_020_pop17_atax12_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_j_020_pop17_atax12_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom11_atax13_sel_x(BITSELECT,156)@3
    assign i_idxprom11_atax13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_020_pop17_atax12_out_data_out[31:0]};

    // i_idxprom11_atax13_vt_select_31(BITSELECT,62)@3
    assign i_idxprom11_atax13_vt_select_31_b = i_idxprom11_atax13_sel_x_b[31:0];

    // i_idxprom11_atax13_vt_join(BITJOIN,61)@3
    assign i_idxprom11_atax13_vt_join_q = {c_i32_081_q, i_idxprom11_atax13_vt_select_31_b};

    // i_arrayidx122_atax0_dupName_3_trunc_sel_x(BITSELECT,137)@3
    assign i_arrayidx122_atax0_dupName_3_trunc_sel_x_b = i_idxprom11_atax13_vt_join_q[10:0];

    // i_arrayidx122_atax0_narrow_x(BITSELECT,120)@3
    assign i_arrayidx122_atax0_narrow_x_b = i_arrayidx122_atax0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx122_atax0_shift_join_x(BITJOIN,121)@3
    assign i_arrayidx122_atax0_shift_join_x_q = {i_arrayidx122_atax0_narrow_x_b, i_arrayidx122_atax16_vt_const_1_q};

    // i_arrayidx122_atax0_mult_multconst_x(CONSTANT,132)
    assign i_arrayidx122_atax0_mult_multconst_x_q = $unsigned(4'b0000);

    // valid_fanout_reg5(REG,169)@1 + 1
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

    // valid_fanout_reg6(REG,170)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom43_push24_atax15(BLACKBOX,91)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    atax_i_llvm_fpga_push_i64_idxprom43_push24_0 thei_llvm_fpga_push_i64_idxprom43_push24_atax15 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_feedback_stall_out_24),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i64_idxprom43_push24_atax15_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i64_idxprom43_push24_atax15_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together117_aunroll_x_in_c0_eni11_2_tpl_1(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together117_aunroll_x_in_c0_eni11_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together117_aunroll_x_in_c0_eni11_2_tpl_1_q <= $unsigned(in_c0_eni11_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom43_pop24_atax14(BLACKBOX,77)@2
    // out out_feedback_stall_out_24@20000000
    atax_i_llvm_fpga_pop_i64_idxprom43_pop24_0 thei_llvm_fpga_pop_i64_idxprom43_pop24_atax14 (
        .in_data_in(redist3_sync_together117_aunroll_x_in_c0_eni11_2_tpl_1_q),
        .in_dir(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i64_idxprom43_push24_atax15_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i64_idxprom43_push24_atax15_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx122_atax0_dupName_0_trunc_sel_x(BITSELECT,134)@2
    assign i_arrayidx122_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out[10:0];

    // addsumAHighB_uid224_i_arrayidx122_atax0_mult_x(ADD,223)@2
    assign addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_a = {1'b0, i_arrayidx122_atax0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_b = {3'b000, lowRangeB_uid222_i_arrayidx122_atax0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_o = $unsigned(addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_a) + $unsigned(addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_b);
    assign addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_q = addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_o[11:0];

    // lowRangeB_uid222_i_arrayidx122_atax0_mult_x_merged_bit_select(BITSELECT,283)@2
    assign lowRangeB_uid222_i_arrayidx122_atax0_mult_x_merged_bit_select_b = i_arrayidx122_atax0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid222_i_arrayidx122_atax0_mult_x_merged_bit_select_c = i_arrayidx122_atax0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid225_i_arrayidx122_atax0_mult_x(BITJOIN,224)@2
    assign add_uid225_i_arrayidx122_atax0_mult_x_q = {addsumAHighB_uid224_i_arrayidx122_atax0_mult_x_q, lowRangeB_uid222_i_arrayidx122_atax0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid230_i_arrayidx122_atax0_mult_x(BITJOIN,229)@2
    assign sR_mergedSignalTM_uid230_i_arrayidx122_atax0_mult_x_q = {add_uid225_i_arrayidx122_atax0_mult_x_q, i_arrayidx122_atax0_mult_multconst_x_q};

    // i_arrayidx122_atax0_mult_extender_x(BITJOIN,131)@2
    assign i_arrayidx122_atax0_mult_extender_x_q = {i_arrayidx122_atax0_mult_multconst_x_q, sR_mergedSignalTM_uid230_i_arrayidx122_atax0_mult_x_q};

    // i_arrayidx122_atax0_dupName_1_trunc_sel_x(BITSELECT,135)@2
    assign i_arrayidx122_atax0_dupName_1_trunc_sel_x_b = i_arrayidx122_atax0_mult_extender_x_q[10:0];

    // redist16_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist16_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx122_atax0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx122_atax0_add_x(ADD,115)@3
    assign i_arrayidx122_atax0_add_x_a = {1'b0, i_arrayidx122_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx122_atax0_add_x_b = {1'b0, redist16_i_arrayidx122_atax0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx122_atax0_add_x_o = $unsigned(i_arrayidx122_atax0_add_x_a) + $unsigned(i_arrayidx122_atax0_add_x_b);
    assign i_arrayidx122_atax0_add_x_q = i_arrayidx122_atax0_add_x_o[11:0];

    // i_arrayidx122_atax0_dupName_2_trunc_sel_x(BITSELECT,136)@3
    assign i_arrayidx122_atax0_dupName_2_trunc_sel_x_b = i_arrayidx122_atax0_add_x_q[10:0];

    // i_arrayidx122_atax0_dupName_0_add_x(ADD,125)@3
    assign i_arrayidx122_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx122_atax0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx122_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx122_atax0_shift_join_x_q};
    assign i_arrayidx122_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx122_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx122_atax0_dupName_0_add_x_b);
    assign i_arrayidx122_atax0_dupName_0_add_x_q = i_arrayidx122_atax0_dupName_0_add_x_o[11:0];

    // i_arrayidx122_atax0_dupName_5_trunc_sel_x(BITSELECT,138)@3
    assign i_arrayidx122_atax0_dupName_5_trunc_sel_x_b = i_arrayidx122_atax0_dupName_0_add_x_q[10:0];

    // i_arrayidx122_atax0_append_upper_bits_x(BITJOIN,116)@3
    assign i_arrayidx122_atax0_append_upper_bits_x_q = {i_arrayidx122_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx122_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx122_atax16_vt_select_63(BITSELECT,48)@3
    assign i_arrayidx122_atax16_vt_select_63_b = i_arrayidx122_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx122_atax16_vt_const_1(CONSTANT,46)
    assign i_arrayidx122_atax16_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx122_atax16_vt_join(BITJOIN,47)@3
    assign i_arrayidx122_atax16_vt_join_q = {i_arrayidx122_atax16_vt_select_63_b, i_arrayidx122_atax16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax5_atax17(BLACKBOX,65)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax5_atax_avm_address@20000000
    // out out_unnamed_atax5_atax_avm_burstcount@20000000
    // out out_unnamed_atax5_atax_avm_byteenable@20000000
    // out out_unnamed_atax5_atax_avm_enable@20000000
    // out out_unnamed_atax5_atax_avm_read@20000000
    // out out_unnamed_atax5_atax_avm_write@20000000
    // out out_unnamed_atax5_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_5_atax0 thei_llvm_fpga_mem_unnamed_atax5_atax17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx122_atax16_vt_join_q),
        .in_i_predicate(redist30_i_first_cleanup_xor20_atax4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax5_atax17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax5_atax_avm_address(i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,113)
    assign out_unnamed_atax5_atax_avm_address = i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_address;
    assign out_unnamed_atax5_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_enable;
    assign out_unnamed_atax5_atax_avm_read = i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_read;
    assign out_unnamed_atax5_atax_avm_write = i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_write;
    assign out_unnamed_atax5_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_writedata;
    assign out_unnamed_atax5_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_byteenable;
    assign out_unnamed_atax5_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax5_atax17_out_unnamed_atax5_atax_avm_burstcount;

    // valid_fanout_reg8(REG,172)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist13_sync_together117_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_atax_x_local_pmem(CONSTANT,7)
    assign c_atax_x_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx143_atax0_upper_bits_x_merged_bit_select(BITSELECT,280)@3
    assign i_arrayidx143_atax0_upper_bits_x_merged_bit_select_b = c_atax_x_local_pmem_q[63:7];
    assign i_arrayidx143_atax0_upper_bits_x_merged_bit_select_c = c_atax_x_local_pmem_q[6:0];

    // i_arrayidx143_atax0_dupName_0_trunc_sel_x(BITSELECT,149)@3
    assign i_arrayidx143_atax0_dupName_0_trunc_sel_x_b = i_idxprom11_atax13_vt_join_q[6:0];

    // i_arrayidx143_atax0_narrow_x(BITSELECT,142)@3
    assign i_arrayidx143_atax0_narrow_x_b = i_arrayidx143_atax0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx143_atax0_shift_join_x(BITJOIN,143)@3
    assign i_arrayidx143_atax0_shift_join_x_q = {i_arrayidx143_atax0_narrow_x_b, i_arrayidx122_atax16_vt_const_1_q};

    // i_arrayidx143_atax0_add_x(ADD,139)@3
    assign i_arrayidx143_atax0_add_x_a = {1'b0, i_arrayidx143_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx143_atax0_add_x_b = {1'b0, i_arrayidx143_atax0_shift_join_x_q};
    assign i_arrayidx143_atax0_add_x_o = $unsigned(i_arrayidx143_atax0_add_x_a) + $unsigned(i_arrayidx143_atax0_add_x_b);
    assign i_arrayidx143_atax0_add_x_q = i_arrayidx143_atax0_add_x_o[7:0];

    // i_arrayidx143_atax0_dupName_2_trunc_sel_x(BITSELECT,150)@3
    assign i_arrayidx143_atax0_dupName_2_trunc_sel_x_b = i_arrayidx143_atax0_add_x_q[6:0];

    // i_arrayidx143_atax0_append_upper_bits_x(BITJOIN,140)@3
    assign i_arrayidx143_atax0_append_upper_bits_x_q = {i_arrayidx143_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx143_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx143_atax18_vt_select_63(BITSELECT,51)@3
    assign i_arrayidx143_atax18_vt_select_63_b = i_arrayidx143_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx143_atax18_vt_join(BITJOIN,50)@3
    assign i_arrayidx143_atax18_vt_join_q = {i_arrayidx143_atax18_vt_select_63_b, i_arrayidx122_atax16_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax6_atax19(BLACKBOX,66)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax6_atax_avm_address@20000000
    // out out_unnamed_atax6_atax_avm_burstcount@20000000
    // out out_unnamed_atax6_atax_avm_byteenable@20000000
    // out out_unnamed_atax6_atax_avm_enable@20000000
    // out out_unnamed_atax6_atax_avm_read@20000000
    // out out_unnamed_atax6_atax_avm_write@20000000
    // out out_unnamed_atax6_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_6_atax0 thei_llvm_fpga_mem_unnamed_atax6_atax19 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx143_atax18_vt_join_q),
        .in_i_predicate(redist30_i_first_cleanup_xor20_atax4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax6_atax19_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax6_atax_avm_address(i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,114)
    assign out_unnamed_atax6_atax_avm_address = i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_address;
    assign out_unnamed_atax6_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_enable;
    assign out_unnamed_atax6_atax_avm_read = i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_read;
    assign out_unnamed_atax6_atax_avm_write = i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_write;
    assign out_unnamed_atax6_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_writedata;
    assign out_unnamed_atax6_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_byteenable;
    assign out_unnamed_atax6_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax6_atax19_out_unnamed_atax6_atax_avm_burstcount;

    // redist14_sync_together117_aunroll_x_in_i_valid_8(DELAY,298)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_sync_together117_aunroll_x_in_i_valid_8 ( .xin(redist13_sync_together117_aunroll_x_in_i_valid_1_q), .xout(redist14_sync_together117_aunroll_x_in_i_valid_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist15_sync_together117_aunroll_x_in_i_valid_9(DELAY,299)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together117_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist15_sync_together117_aunroll_x_in_i_valid_9_q <= $unsigned(redist14_sync_together117_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg0(REG,164)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist15_sync_together117_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist12_sync_together117_aunroll_x_in_c0_eni11_11_tpl_10(DELAY,296)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_sync_together117_aunroll_x_in_c0_eni11_11_tpl_10 ( .xin(in_c0_eni11_11_tpl), .xout(redist12_sync_together117_aunroll_x_in_c0_eni11_11_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together117_aunroll_x_in_c0_eni11_10_tpl_10(DELAY,295)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist11_sync_together117_aunroll_x_in_c0_eni11_10_tpl_10 ( .xin(in_c0_eni11_10_tpl), .xout(redist11_sync_together117_aunroll_x_in_c0_eni11_10_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg22(REG,186)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg22_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg22_q <= $unsigned(redist14_sync_together117_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg23(REG,187)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg23_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg23_q <= $unsigned(redist15_sync_together117_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp2649_push27_atax48(BLACKBOX,85)@11
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    atax_i_llvm_fpga_push_i1_notcmp2649_push27_0 thei_llvm_fpga_push_i1_notcmp2649_push27_atax48 (
        .in_data_in(redist22_i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out_1_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_feedback_stall_out_27),
        .in_keep_going14(redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg23_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i1_notcmp2649_push27_atax48_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i1_notcmp2649_push27_atax48_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9(DELAY,286)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9 ( .xin(redist1_sync_together117_aunroll_x_in_c0_eni11_1_tpl_2_q), .xout(redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist10_sync_together117_aunroll_x_in_c0_eni11_9_tpl_9(DELAY,294)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together117_aunroll_x_in_c0_eni11_9_tpl_9 ( .xin(in_c0_eni11_9_tpl), .xout(redist10_sync_together117_aunroll_x_in_c0_eni11_9_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47(BLACKBOX,72)@10
    // out out_feedback_stall_out_27@20000000
    atax_i_llvm_fpga_pop_i1_notcmp2649_pop27_0 thei_llvm_fpga_pop_i1_notcmp2649_pop27_atax47 (
        .in_data_in(redist10_sync_together117_aunroll_x_in_c0_eni11_9_tpl_9_q),
        .in_dir(redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9_q),
        .in_feedback_in_27(i_llvm_fpga_push_i1_notcmp2649_push27_atax48_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i1_notcmp2649_push27_atax48_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg22_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out_1(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out_1_q <= '0;
        end
        else
        begin
            redist22_i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out);
        end
    end

    // valid_fanout_reg20(REG,184)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg20_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg20_q <= $unsigned(redist14_sync_together117_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg21(REG,185)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg21_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg21_q <= $unsigned(redist15_sync_together117_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond947_push26_atax46(BLACKBOX,80)@11
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    atax_i_llvm_fpga_push_i1_exitcond947_push26_0 thei_llvm_fpga_push_i1_exitcond947_push26_atax46 (
        .in_data_in(redist26_i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out_1_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_feedback_stall_out_26),
        .in_keep_going14(redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg21_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_exitcond947_push26_atax46_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_exitcond947_push26_atax46_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_sync_together117_aunroll_x_in_c0_eni11_8_tpl_9(DELAY,293)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_sync_together117_aunroll_x_in_c0_eni11_8_tpl_9 ( .xin(in_c0_eni11_8_tpl), .xout(redist9_sync_together117_aunroll_x_in_c0_eni11_8_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_exitcond947_pop26_atax45(BLACKBOX,68)@10
    // out out_feedback_stall_out_26@20000000
    atax_i_llvm_fpga_pop_i1_exitcond947_pop26_0 thei_llvm_fpga_pop_i1_exitcond947_pop26_atax45 (
        .in_data_in(redist9_sync_together117_aunroll_x_in_c0_eni11_8_tpl_9_q),
        .in_dir(redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_exitcond947_push26_atax46_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_exitcond947_push26_atax46_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist26_i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out_1(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out_1_q <= '0;
        end
        else
        begin
            redist26_i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out);
        end
    end

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_notEnable(LOGICAL,331)
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_nor(LOGICAL,332)
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_nor_q = ~ (redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_notEnable_q | redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_sticky_ena_q);

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_last(CONSTANT,328)
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmp(LOGICAL,329)
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmp_b = {1'b0, redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_q};
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmp_q = $unsigned(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_last_q == redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmpReg(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmpReg_q <= $unsigned(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmp_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_sticky_ena(REG,333)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_nor_q == 1'b1)
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_sticky_ena_q <= $unsigned(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_cmpReg_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_enaAnd(LOGICAL,334)
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_enaAnd_q = redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_sticky_ena_q & VCC_q;

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt(COUNTER,326)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_i <= $unsigned(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_q = redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg18(REG,182)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg19(REG,183)@1 + 1
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

    // i_llvm_fpga_push_p67i32_arrayidx145_push25_atax44(BLACKBOX,93)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    atax_i_llvm_fpga_push_p67i32_arrayidx145_push25_0 thei_llvm_fpga_push_p67i32_arrayidx145_push25_atax44 (
        .in_data_in(i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_feedback_stall_out_25),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_p67i32_arrayidx145_push25_atax44_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_p67i32_arrayidx145_push25_atax44_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_sync_together117_aunroll_x_in_c0_eni11_7_tpl_1(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together117_aunroll_x_in_c0_eni11_7_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together117_aunroll_x_in_c0_eni11_7_tpl_1_q <= $unsigned(in_c0_eni11_7_tpl);
        end
    end

    // i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43(BLACKBOX,79)@2
    // out out_feedback_stall_out_25@20000000
    atax_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_0 thei_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43 (
        .in_data_in(redist8_sync_together117_aunroll_x_in_c0_eni11_7_tpl_1_q),
        .in_dir(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_p67i32_arrayidx145_push25_atax44_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_p67i32_arrayidx145_push25_atax44_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_wraddr(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_wraddr_q <= $unsigned(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_q);
        end
    end

    // redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem(DUALMEM,325)
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out);
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_aa = redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_wraddr_q;
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_ab = redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_rdcnt_q;
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(8),
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
        .intended_device_family("Arria 10")
    ) redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_dmem (
        .clocken1(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_aa),
        .data_a(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_ab),
        .q_b(redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_iq),
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
    assign redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_q = redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_iq[63:0];

    // valid_fanout_reg16(REG,180)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist14_sync_together117_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg17(REG,181)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist15_sync_together117_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i1_forked3542_push23_atax42(BLACKBOX,81)@11
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    atax_i_llvm_fpga_push_i1_forked3542_push23_0 thei_llvm_fpga_push_i1_forked3542_push23_atax42 (
        .in_data_in(redist25_i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out_1_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_feedback_stall_out_23),
        .in_keep_going14(redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_forked3542_push23_atax42_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_forked3542_push23_atax42_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together117_aunroll_x_in_c0_eni11_6_tpl_9(DELAY,291)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_sync_together117_aunroll_x_in_c0_eni11_6_tpl_9 ( .xin(in_c0_eni11_6_tpl), .xout(redist7_sync_together117_aunroll_x_in_c0_eni11_6_tpl_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i1_forked3542_pop23_atax41(BLACKBOX,69)@10
    // out out_feedback_stall_out_23@20000000
    atax_i_llvm_fpga_pop_i1_forked3542_pop23_0 thei_llvm_fpga_pop_i1_forked3542_pop23_atax41 (
        .in_data_in(redist7_sync_together117_aunroll_x_in_c0_eni11_6_tpl_9_q),
        .in_dir(redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_forked3542_push23_atax42_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_forked3542_push23_atax42_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out_1(DELAY,309)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out);
        end
    end

    // valid_fanout_reg14(REG,178)@1 + 1
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

    // valid_fanout_reg15(REG,179)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40(BLACKBOX,83)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_0 thei_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_feedback_stall_out_22),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together117_aunroll_x_in_c0_eni11_5_tpl_1(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together117_aunroll_x_in_c0_eni11_5_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together117_aunroll_x_in_c0_eni11_5_tpl_1_q <= $unsigned(in_c0_eni11_5_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39(BLACKBOX,70)@2
    // out out_feedback_stall_out_22@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39 (
        .in_data_in(redist6_sync_together117_aunroll_x_in_c0_eni11_5_tpl_1_q),
        .in_dir(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi3_pop1040_push22_atax40_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist24_i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out_9(DELAY,308)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out), .xout(redist24_i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg12(REG,176)@1 + 1
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

    // valid_fanout_reg13(REG,177)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38(BLACKBOX,84)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi_pop937_push21_0 thei_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_feedback_stall_out_21),
        .in_keep_going14(redist27_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together117_aunroll_x_in_c0_eni11_4_tpl_1(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together117_aunroll_x_in_c0_eni11_4_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together117_aunroll_x_in_c0_eni11_4_tpl_1_q <= $unsigned(in_c0_eni11_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37(BLACKBOX,71)@2
    // out out_feedback_stall_out_21@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_0 thei_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37 (
        .in_data_in(redist5_sync_together117_aunroll_x_in_c0_eni11_4_tpl_1_q),
        .in_dir(redist0_sync_together117_aunroll_x_in_c0_eni11_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_memdep_phi_pop937_push21_atax38_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out_9(DELAY,307)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist23_i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out), .xout(redist23_i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked23_atax36(LOGICAL,94)@2 + 1
    assign i_masked23_atax36_qi = i_notcmp10_atax29_q & i_first_cleanup19_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked23_atax36_delay ( .xin(i_masked23_atax36_qi), .xout(i_masked23_atax36_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_masked23_atax36_q_9(DELAY,302)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist18_i_masked23_atax36_q_9 ( .xin(i_masked23_atax36_q), .xout(redist18_i_masked23_atax36_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg9(REG,173)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist14_sync_together117_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg10(REG,174)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist15_sync_together117_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_t_019_push18_atax23(BLACKBOX,90)@11
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    atax_i_llvm_fpga_push_i32_t_019_push18_0 thei_llvm_fpga_push_i32_t_019_push18_atax23 (
        .in_data_in(bgTrunc_i_add_atax22_sel_x_b),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_feedback_stall_out_18),
        .in_keep_going14(redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i32_t_019_push18_atax23_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i32_t_019_push18_atax23_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_notEnable(LOGICAL,321)
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_nor(LOGICAL,322)
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_nor_q = ~ (redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_notEnable_q | redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_sticky_ena_q);

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_last(CONSTANT,318)
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_last_q = $unsigned(4'b0110);

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmp(LOGICAL,319)
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmp_b = {1'b0, redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_q};
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmp_q = $unsigned(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_last_q == redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmp_b ? 1'b1 : 1'b0);

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmpReg(REG,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmpReg_q <= $unsigned(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmp_q);
        end
    end

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_sticky_ena(REG,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_nor_q == 1'b1)
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_sticky_ena_q <= $unsigned(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_cmpReg_q);
        end
    end

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_enaAnd(LOGICAL,324)
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_enaAnd_q = redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_sticky_ena_q & VCC_q;

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt(COUNTER,316)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_i <= $unsigned(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_q = redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_i[2:0];

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_wraddr(REG,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_wraddr_q <= $unsigned(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_q);
        end
    end

    // redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem(DUALMEM,315)
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_ia = $unsigned(in_c0_eni11_3_tpl);
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_aa = redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_wraddr_q;
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_ab = redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_rdcnt_q;
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(32),
        .widthad_b(3),
        .numwords_b(8),
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
        .intended_device_family("Arria 10")
    ) redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_dmem (
        .clocken1(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_reset0),
        .clock1(clock),
        .address_a(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_aa),
        .data_a(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_ab),
        .q_b(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_iq),
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
    assign redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_q = redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_iq[31:0];

    // i_llvm_fpga_pop_i32_t_019_pop18_atax21(BLACKBOX,76)@10
    // out out_feedback_stall_out_18@20000000
    atax_i_llvm_fpga_pop_i32_t_019_pop18_0 thei_llvm_fpga_pop_i32_t_019_pop18_atax21 (
        .in_data_in(redist4_sync_together117_aunroll_x_in_c0_eni11_3_tpl_9_mem_q),
        .in_dir(redist2_sync_together117_aunroll_x_in_c0_eni11_1_tpl_9_q),
        .in_feedback_in_18(i_llvm_fpga_push_i32_t_019_push18_atax23_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i32_t_019_push18_atax23_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out_1(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out_1_q <= '0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out);
        end
    end

    // i_mul_atax20_bs2_merged_bit_select(BITSELECT,281)@7
    assign i_mul_atax20_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_atax5_atax17_out_o_readdata[31:18];
    assign i_mul_atax20_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_atax5_atax17_out_o_readdata[17:0];

    // i_mul_atax20_bs1_merged_bit_select(BITSELECT,282)@7
    assign i_mul_atax20_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_atax6_atax19_out_o_readdata[31:18];
    assign i_mul_atax20_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_atax6_atax19_out_o_readdata[17:0];

    // i_mul_atax20_ma3_cma(CHAINMULTADD,278)@7 + 3
    assign i_mul_atax20_ma3_cma_reset = ~ (resetn);
    assign i_mul_atax20_ma3_cma_ena0 = 1'b1;
    assign i_mul_atax20_ma3_cma_ena1 = i_mul_atax20_ma3_cma_ena0;
    assign i_mul_atax20_ma3_cma_ena2 = i_mul_atax20_ma3_cma_ena0;

    assign i_mul_atax20_ma3_cma_a0 = i_mul_atax20_bs1_merged_bit_select_b;
    assign i_mul_atax20_ma3_cma_c0 = i_mul_atax20_bs2_merged_bit_select_c;
    assign i_mul_atax20_ma3_cma_a1 = i_mul_atax20_bs2_merged_bit_select_b;
    assign i_mul_atax20_ma3_cma_c1 = i_mul_atax20_bs1_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_sumof2"),
        .use_chainadder("false"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .by_clock("0"),
        .by_width(14),
        .ax_clock("0"),
        .bx_clock("0"),
        .ax_width(18),
        .bx_width(18),
        .signed_may("false"),
        .signed_mby("false"),
        .signed_max("false"),
        .signed_mbx("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(33)
    ) i_mul_atax20_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_atax20_ma3_cma_ena2, i_mul_atax20_ma3_cma_ena1, i_mul_atax20_ma3_cma_ena0 }),
        .aclr({ i_mul_atax20_ma3_cma_reset, i_mul_atax20_ma3_cma_reset }),
        .ay(i_mul_atax20_ma3_cma_a1),
        .by(i_mul_atax20_ma3_cma_a0),
        .ax(i_mul_atax20_ma3_cma_c1),
        .bx(i_mul_atax20_ma3_cma_c0),
        .resulta(i_mul_atax20_ma3_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_atax20_ma3_cma_delay ( .xin(i_mul_atax20_ma3_cma_s0), .xout(i_mul_atax20_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_atax20_ma3_cma_q = $unsigned(i_mul_atax20_ma3_cma_qq[32:0]);

    // i_mul_atax20_sums_align_1(BITSHIFT,211)@10
    assign i_mul_atax20_sums_align_1_qint = { i_mul_atax20_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_atax20_sums_align_1_q = i_mul_atax20_sums_align_1_qint[50:0];

    // i_mul_atax20_im0_cma(CHAINMULTADD,276)@7 + 3
    assign i_mul_atax20_im0_cma_reset = ~ (resetn);
    assign i_mul_atax20_im0_cma_ena0 = 1'b1;
    assign i_mul_atax20_im0_cma_ena1 = i_mul_atax20_im0_cma_ena0;
    assign i_mul_atax20_im0_cma_ena2 = i_mul_atax20_im0_cma_ena0;

    assign i_mul_atax20_im0_cma_a0 = i_mul_atax20_bs1_merged_bit_select_b;
    assign i_mul_atax20_im0_cma_c0 = i_mul_atax20_bs2_merged_bit_select_b;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(14),
        .ax_clock("0"),
        .ax_width(14),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(28)
    ) i_mul_atax20_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_atax20_im0_cma_ena2, i_mul_atax20_im0_cma_ena1, i_mul_atax20_im0_cma_ena0 }),
        .aclr({ i_mul_atax20_im0_cma_reset, i_mul_atax20_im0_cma_reset }),
        .ay(i_mul_atax20_im0_cma_a0),
        .ax(i_mul_atax20_im0_cma_c0),
        .resulta(i_mul_atax20_im0_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_atax20_im0_cma_delay ( .xin(i_mul_atax20_im0_cma_s0), .xout(i_mul_atax20_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_atax20_im0_cma_q = $unsigned(i_mul_atax20_im0_cma_qq[27:0]);

    // i_mul_atax20_im8_cma(CHAINMULTADD,277)@7 + 3
    assign i_mul_atax20_im8_cma_reset = ~ (resetn);
    assign i_mul_atax20_im8_cma_ena0 = 1'b1;
    assign i_mul_atax20_im8_cma_ena1 = i_mul_atax20_im8_cma_ena0;
    assign i_mul_atax20_im8_cma_ena2 = i_mul_atax20_im8_cma_ena0;

    assign i_mul_atax20_im8_cma_a0 = i_mul_atax20_bs1_merged_bit_select_c;
    assign i_mul_atax20_im8_cma_c0 = i_mul_atax20_bs2_merged_bit_select_c;
    twentynm_mac #(
        .operation_mode("m18x18_full"),
        .ay_scan_in_clock("0"),
        .ay_scan_in_width(18),
        .ax_clock("0"),
        .ax_width(18),
        .signed_may("false"),
        .signed_max("false"),
        .input_pipeline_clock("2"),
        .output_clock("1"),
        .result_a_width(36)
    ) i_mul_atax20_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_atax20_im8_cma_ena2, i_mul_atax20_im8_cma_ena1, i_mul_atax20_im8_cma_ena0 }),
        .aclr({ i_mul_atax20_im8_cma_reset, i_mul_atax20_im8_cma_reset }),
        .ay(i_mul_atax20_im8_cma_a0),
        .ax(i_mul_atax20_im8_cma_c0),
        .resulta(i_mul_atax20_im8_cma_s0),
        .accumulate(),
        .loadconst(),
        .negate(),
        .sub(),
        .az(),
        .coefsela(),
        .bx(),
        .by(),
        .bz(),
        .coefselb(),
        .scanin(),
        .scanout(),
        .chainin(),
        .chainout(),
        .resultb(),
        .dftout()
    );
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_atax20_im8_cma_delay ( .xin(i_mul_atax20_im8_cma_s0), .xout(i_mul_atax20_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_atax20_im8_cma_q = $unsigned(i_mul_atax20_im8_cma_qq[35:0]);

    // i_mul_atax20_sums_join_0(BITJOIN,210)@10
    assign i_mul_atax20_sums_join_0_q = {i_mul_atax20_im0_cma_q, i_mul_atax20_im8_cma_q};

    // i_mul_atax20_sums_result_add_0_0(ADD,213)@10
    assign i_mul_atax20_sums_result_add_0_0_a = {1'b0, i_mul_atax20_sums_join_0_q};
    assign i_mul_atax20_sums_result_add_0_0_b = {14'b00000000000000, i_mul_atax20_sums_align_1_q};
    assign i_mul_atax20_sums_result_add_0_0_o = $unsigned(i_mul_atax20_sums_result_add_0_0_a) + $unsigned(i_mul_atax20_sums_result_add_0_0_b);
    assign i_mul_atax20_sums_result_add_0_0_q = i_mul_atax20_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_atax20_sel_x(BITSELECT,110)@10
    assign bgTrunc_i_mul_atax20_sel_x_in = i_mul_atax20_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_atax20_sel_x_b = bgTrunc_i_mul_atax20_sel_x_in[31:0];

    // redist17_bgTrunc_i_mul_atax20_sel_x_b_1(DELAY,301)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_bgTrunc_i_mul_atax20_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist17_bgTrunc_i_mul_atax20_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_atax20_sel_x_b);
        end
    end

    // i_add_atax22(ADD,45)@11
    assign i_add_atax22_a = {1'b0, redist17_bgTrunc_i_mul_atax20_sel_x_b_1_q};
    assign i_add_atax22_b = {1'b0, redist21_i_llvm_fpga_pop_i32_t_019_pop18_atax21_out_data_out_1_q};
    assign i_add_atax22_o = $unsigned(i_add_atax22_a) + $unsigned(i_add_atax22_b);
    assign i_add_atax22_q = i_add_atax22_o[32:0];

    // bgTrunc_i_add_atax22_sel_x(BITSELECT,107)@11
    assign bgTrunc_i_add_atax22_sel_x_b = i_add_atax22_q[31:0];

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_notEnable(LOGICAL,341)
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_nor(LOGICAL,342)
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_nor_q = ~ (redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_notEnable_q | redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_sticky_ena_q);

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_last(CONSTANT,338)
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_last_q = $unsigned(4'b0110);

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmp(LOGICAL,339)
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmp_b = {1'b0, redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_q};
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmp_q = $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_last_q == redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmpReg(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmpReg_q <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmp_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_sticky_ena(REG,343)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_enaAnd(LOGICAL,344)
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_enaAnd_q = redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt(COUNTER,336)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_q = redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_i[2:0];

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_wraddr(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_wraddr_q <= $unsigned(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem(DUALMEM,335)
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_ia = $unsigned(i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out);
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_aa = redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_wraddr_q;
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_ab = redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_rdcnt_q;
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(8),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(8),
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
        .intended_device_family("Arria 10")
    ) redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_aa),
        .data_a(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_ab),
        .q_b(redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_iq),
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
    assign redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_q = redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_iq[63:0];

    // redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10(DELAY,313)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10 ( .xin(redist28_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_2_q), .xout(redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,162)@11
    assign out_c0_exi12_0_tpl = GND_q;
    assign out_c0_exi12_1_tpl = redist29_i_llvm_fpga_pipeline_keep_going14_atax6_out_data_out_10_q;
    assign out_c0_exi12_2_tpl = redist20_i_llvm_fpga_pop_i64_idxprom43_pop24_atax14_out_data_out_9_mem_q;
    assign out_c0_exi12_3_tpl = bgTrunc_i_add_atax22_sel_x_b;
    assign out_c0_exi12_4_tpl = redist18_i_masked23_atax36_q_9_q;
    assign out_c0_exi12_5_tpl = redist23_i_llvm_fpga_pop_i1_memdep_phi_pop937_pop21_atax37_out_data_out_9_q;
    assign out_c0_exi12_6_tpl = redist24_i_llvm_fpga_pop_i1_memdep_phi3_pop1040_pop22_atax39_out_data_out_9_q;
    assign out_c0_exi12_7_tpl = redist25_i_llvm_fpga_pop_i1_forked3542_pop23_atax41_out_data_out_1_q;
    assign out_c0_exi12_8_tpl = redist19_i_llvm_fpga_pop_p67i32_arrayidx145_pop25_atax43_out_data_out_9_mem_q;
    assign out_c0_exi12_9_tpl = redist26_i_llvm_fpga_pop_i1_exitcond947_pop26_atax45_out_data_out_1_q;
    assign out_c0_exi12_10_tpl = redist22_i_llvm_fpga_pop_i1_notcmp2649_pop27_atax47_out_data_out_1_q;
    assign out_c0_exi12_11_tpl = redist11_sync_together117_aunroll_x_in_c0_eni11_10_tpl_10_q;
    assign out_c0_exi12_12_tpl = redist12_sync_together117_aunroll_x_in_c0_eni11_11_tpl_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax0 = GND_q;

endmodule
