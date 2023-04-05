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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body55_ataxs_c0_enter19220_atax0
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:55:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body55_s_c0_enter19220_atax0 (
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_atax16_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax16_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax16_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax16_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax15_atax_avm_address,
    output wire [0:0] out_unnamed_atax15_atax_avm_enable,
    output wire [0:0] out_unnamed_atax15_atax_avm_read,
    output wire [0:0] out_unnamed_atax15_atax_avm_write,
    output wire [31:0] out_unnamed_atax15_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax15_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax15_atax_avm_burstcount,
    input wire [31:0] in_memdep_5_atax_avm_readdata,
    input wire [0:0] in_memdep_5_atax_avm_writeack,
    input wire [0:0] in_memdep_5_atax_avm_waitrequest,
    input wire [0:0] in_memdep_5_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax16_atax_avm_address,
    output wire [0:0] out_unnamed_atax16_atax_avm_enable,
    output wire [0:0] out_unnamed_atax16_atax_avm_read,
    output wire [0:0] out_unnamed_atax16_atax_avm_write,
    output wire [31:0] out_unnamed_atax16_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax16_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax16_atax_avm_burstcount,
    output wire [31:0] out_memdep_5_atax_avm_address,
    output wire [0:0] out_memdep_5_atax_avm_enable,
    output wire [0:0] out_memdep_5_atax_avm_read,
    output wire [0:0] out_memdep_5_atax_avm_write,
    output wire [31:0] out_memdep_5_atax_avm_writedata,
    output wire [3:0] out_memdep_5_atax_avm_byteenable,
    output wire [0:0] out_memdep_5_atax_avm_burstcount,
    output wire [0:0] out_c0_exi7206_0_tpl,
    output wire [0:0] out_c0_exi7206_1_tpl,
    output wire [31:0] out_c0_exi7206_2_tpl,
    output wire [0:0] out_c0_exi7206_3_tpl,
    output wire [0:0] out_c0_exi7206_4_tpl,
    output wire [63:0] out_c0_exi7206_5_tpl,
    output wire [0:0] out_c0_exi7206_6_tpl,
    output wire [0:0] out_c0_exi7206_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_atax1,
    input wire [0:0] in_c0_eni7191_0_tpl,
    input wire [0:0] in_c0_eni7191_1_tpl,
    input wire [0:0] in_c0_eni7191_2_tpl,
    input wire [63:0] in_c0_eni7191_3_tpl,
    input wire [31:0] in_c0_eni7191_4_tpl,
    input wire [63:0] in_c0_eni7191_5_tpl,
    input wire [0:0] in_c0_eni7191_6_tpl,
    input wire [0:0] in_c0_eni7191_7_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_atax_A_local_pmem_q;
    wire [63:0] c_atax_y_local_pmem_q;
    wire [1:0] c_i2_173_q;
    wire [31:0] c_i32_075_q;
    wire [31:0] c_i32_176_q;
    wire [5:0] c_i6_179_q;
    wire [5:0] c_i6_1877_q;
    wire [32:0] i_add63_atax25_a;
    wire [32:0] i_add63_atax25_b;
    logic [32:0] i_add63_atax25_o;
    wire [32:0] i_add63_atax25_q;
    wire [1:0] i_arrayidx578_atax14_vt_const_1_q;
    wire [63:0] i_arrayidx578_atax14_vt_join_q;
    wire [61:0] i_arrayidx578_atax14_vt_select_63_b;
    wire [63:0] i_arrayidx619_atax20_vt_join_q;
    wire [61:0] i_arrayidx619_atax20_vt_select_63_b;
    wire [1:0] i_cleanups_shl38_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl38_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor40_atax4_q;
    wire [6:0] i_fpga_indvars_iv_next16_atax37_a;
    wire [6:0] i_fpga_indvars_iv_next16_atax37_b;
    logic [6:0] i_fpga_indvars_iv_next16_atax37_o;
    wire [6:0] i_fpga_indvars_iv_next16_atax37_q;
    wire [63:0] i_idxprom56_atax13_vt_join_q;
    wire [31:0] i_idxprom56_atax13_vt_select_31_b;
    wire [32:0] i_inc67_atax27_a;
    wire [32:0] i_inc67_atax27_b;
    logic [32:0] i_inc67_atax27_o;
    wire [32:0] i_inc67_atax27_q;
    wire [31:0] i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_atax26_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going34_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_feedback_stall_out_48;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_feedback_stall_out_50;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_feedback_stall_out_49;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_feedback_stall_out_45;
    wire [1:0] i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_feedback_stall_out_44;
    wire [31:0] i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add106_pop51_atax22_out_feedback_stall_out_51;
    wire [31:0] i_llvm_fpga_pop_i32_j51_044_pop43_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j51_044_pop43_atax12_out_feedback_stall_out_43;
    wire [63:0] i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18_out_feedback_stall_out_46;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29_out_feedback_stall_out_42;
    wire [63:0] i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_feedback_stall_out_47;
    wire [0:0] i_llvm_fpga_push_i1_exitcond20102_push48_atax43_out_feedback_out_48;
    wire [0:0] i_llvm_fpga_push_i1_exitcond20102_push48_atax43_out_feedback_valid_out_48;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration36_atax11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration36_atax11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16_out_feedback_out_50;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16_out_feedback_valid_out_50;
    wire [0:0] i_llvm_fpga_push_i1_notcmp62104_push49_atax45_out_feedback_out_49;
    wire [0:0] i_llvm_fpga_push_i1_notcmp62104_push49_atax45_out_feedback_valid_out_49;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_atax33_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond44_atax33_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i2_cleanups37_push45_atax36_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i2_cleanups37_push45_atax36_out_feedback_valid_out_45;
    wire [7:0] i_llvm_fpga_push_i2_initerations32_push44_atax9_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i2_initerations32_push44_atax9_out_feedback_valid_out_44;
    wire [31:0] i_llvm_fpga_push_i32_add106_push51_atax23_out_feedback_out_51;
    wire [0:0] i_llvm_fpga_push_i32_add106_push51_atax23_out_feedback_valid_out_51;
    wire [31:0] i_llvm_fpga_push_i32_j51_044_push43_atax28_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i32_j51_044_push43_atax28_out_feedback_valid_out_43;
    wire [63:0] i_llvm_fpga_push_i64_idxprom3598_push46_atax19_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i64_idxprom3598_push46_atax19_out_feedback_valid_out_46;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38_out_feedback_valid_out_42;
    wire [63:0] i_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41_out_feedback_out_47;
    wire [0:0] i_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41_out_feedback_valid_out_47;
    wire [0:0] i_masked43_atax39_qi;
    reg [0:0] i_masked43_atax39_q;
    wire [0:0] i_next_cleanups42_atax35_s;
    reg [1:0] i_next_cleanups42_atax35_q;
    wire [1:0] i_next_initerations33_atax8_vt_join_q;
    wire [0:0] i_next_initerations33_atax8_vt_select_0_b;
    wire [0:0] i_notcmp30_atax32_q;
    wire [0:0] i_or41_atax34_q;
    wire [31:0] bgTrunc_i_add63_atax25_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next16_atax37_sel_x_b;
    wire [31:0] bgTrunc_i_inc67_atax27_sel_x_b;
    wire [63:0] bgTrunc_i_mul62_atax24_sel_x_in;
    wire [31:0] bgTrunc_i_mul62_atax24_sel_x_b;
    wire [7:0] i_arrayidx578_atax0_add_x_a;
    wire [7:0] i_arrayidx578_atax0_add_x_b;
    logic [7:0] i_arrayidx578_atax0_add_x_o;
    wire [7:0] i_arrayidx578_atax0_add_x_q;
    wire [63:0] i_arrayidx578_atax0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx578_atax0_narrow_x_b;
    wire [6:0] i_arrayidx578_atax0_shift_join_x_q;
    wire [6:0] i_arrayidx578_atax0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx578_atax0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx619_atax0_add_x_a;
    wire [11:0] i_arrayidx619_atax0_add_x_b;
    logic [11:0] i_arrayidx619_atax0_add_x_o;
    wire [11:0] i_arrayidx619_atax0_add_x_q;
    wire [63:0] i_arrayidx619_atax0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx619_atax0_narrow_x_b;
    wire [10:0] i_arrayidx619_atax0_shift_join_x_q;
    wire [11:0] i_arrayidx619_atax0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx619_atax0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx619_atax0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx619_atax0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx619_atax0_mult_extender_x_q;
    wire [3:0] i_arrayidx619_atax0_mult_multconst_x_q;
    wire [10:0] i_arrayidx619_atax0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx619_atax0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx619_atax0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx619_atax0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx619_atax0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup39_atax3_sel_x_b;
    wire [63:0] i_idxprom56_atax13_sel_x_b;
    wire [0:0] i_last_initeration35_atax10_sel_x_b;
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
    wire [0:0] i_exitcond17_atax30_cmp_nsign_q;
    wire [63:0] i_mul62_atax24_sums_join_0_q;
    wire [50:0] i_mul62_atax24_sums_align_1_q;
    wire [50:0] i_mul62_atax24_sums_align_1_qint;
    wire [64:0] i_mul62_atax24_sums_result_add_0_0_a;
    wire [64:0] i_mul62_atax24_sums_result_add_0_0_b;
    logic [64:0] i_mul62_atax24_sums_result_add_0_0_o;
    wire [64:0] i_mul62_atax24_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_a;
    wire [11:0] addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_b;
    logic [11:0] addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_o;
    wire [11:0] addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_q;
    wire [13:0] add_uid218_i_arrayidx619_atax0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid223_i_arrayidx619_atax0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid257_i_cleanups_shl38_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid257_i_cleanups_shl38_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid258_i_cleanups_shl38_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid264_i_next_initerations33_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid266_i_next_initerations33_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_q;
    wire i_mul62_atax24_im0_cma_reset;
    wire [13:0] i_mul62_atax24_im0_cma_a0;
    wire [13:0] i_mul62_atax24_im0_cma_c0;
    wire [27:0] i_mul62_atax24_im0_cma_s0;
    wire [27:0] i_mul62_atax24_im0_cma_qq;
    wire [27:0] i_mul62_atax24_im0_cma_q;
    wire i_mul62_atax24_im0_cma_ena0;
    wire i_mul62_atax24_im0_cma_ena1;
    wire i_mul62_atax24_im0_cma_ena2;
    wire i_mul62_atax24_im8_cma_reset;
    wire [17:0] i_mul62_atax24_im8_cma_a0;
    wire [17:0] i_mul62_atax24_im8_cma_c0;
    wire [35:0] i_mul62_atax24_im8_cma_s0;
    wire [35:0] i_mul62_atax24_im8_cma_qq;
    wire [35:0] i_mul62_atax24_im8_cma_q;
    wire i_mul62_atax24_im8_cma_ena0;
    wire i_mul62_atax24_im8_cma_ena1;
    wire i_mul62_atax24_im8_cma_ena2;
    wire i_mul62_atax24_ma3_cma_reset;
    wire [13:0] i_mul62_atax24_ma3_cma_a0;
    wire [17:0] i_mul62_atax24_ma3_cma_c0;
    wire [13:0] i_mul62_atax24_ma3_cma_a1;
    wire [17:0] i_mul62_atax24_ma3_cma_c1;
    wire [32:0] i_mul62_atax24_ma3_cma_s0;
    wire [32:0] i_mul62_atax24_ma3_cma_qq;
    wire [32:0] i_mul62_atax24_ma3_cma_q;
    wire i_mul62_atax24_ma3_cma_ena0;
    wire i_mul62_atax24_ma3_cma_ena1;
    wire i_mul62_atax24_ma3_cma_ena2;
    wire [52:0] i_arrayidx619_atax0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx619_atax0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx578_atax0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx578_atax0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul62_atax24_bs1_merged_bit_select_b;
    wire [17:0] i_mul62_atax24_bs1_merged_bit_select_c;
    wire [13:0] i_mul62_atax24_bs2_merged_bit_select_b;
    wire [17:0] i_mul62_atax24_bs2_merged_bit_select_c;
    wire [1:0] lowRangeB_uid215_i_arrayidx619_atax0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid215_i_arrayidx619_atax0_mult_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q;
    reg [0:0] redist1_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_2_q;
    reg [0:0] redist2_sync_together106_aunroll_x_in_c0_eni7191_2_tpl_1_q;
    reg [63:0] redist3_sync_together106_aunroll_x_in_c0_eni7191_3_tpl_1_q;
    reg [31:0] redist4_sync_together106_aunroll_x_in_c0_eni7191_4_tpl_1_q;
    reg [63:0] redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_q;
    reg [63:0] redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_delay_0;
    reg [0:0] redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_q;
    reg [0:0] redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_delay_0;
    reg [0:0] redist7_sync_together106_aunroll_x_in_c0_eni7191_7_tpl_1_q;
    reg [0:0] redist8_sync_together106_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist9_sync_together106_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist10_sync_together106_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist10_sync_together106_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist10_sync_together106_aunroll_x_in_i_valid_7_delay_1;
    reg [0:0] redist10_sync_together106_aunroll_x_in_i_valid_7_delay_2;
    reg [0:0] redist10_sync_together106_aunroll_x_in_i_valid_7_delay_3;
    reg [0:0] redist11_sync_together106_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist11_sync_together106_aunroll_x_in_i_valid_9_delay_0;
    reg [0:0] redist12_sync_together106_aunroll_x_in_i_valid_10_q;
    reg [10:0] redist13_i_arrayidx619_atax0_dupName_1_trunc_sel_x_b_1_q;
    reg [4:0] redist14_i_arrayidx578_atax0_narrow_x_b_6_q;
    reg [31:0] redist15_bgTrunc_i_mul62_atax24_sel_x_b_1_q;
    reg [0:0] redist16_i_masked43_atax39_q_10_q;
    reg [63:0] redist17_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_1_q;
    reg [31:0] redist19_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_1_q;
    reg [0:0] redist22_i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out_10_q;
    reg [0:0] redist23_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_1_q;
    reg [0:0] redist24_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_7_q;
    reg [0:0] redist25_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_1_q;
    reg [0:0] redist26_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_9_q;
    reg [0:0] redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q;
    reg [0:0] redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_3_q;
    reg [0:0] redist30_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_11_q;
    reg [0:0] redist31_i_first_cleanup_xor40_atax4_q_1_q;
    reg [0:0] redist32_i_first_cleanup_xor40_atax4_q_7_q;
    reg [0:0] redist33_i_first_cleanup_xor40_atax4_q_9_q;
    reg [0:0] redist33_i_first_cleanup_xor40_atax4_q_9_delay_0;
    reg [63:0] redist34_i_arrayidx578_atax14_vt_join_q_2_q;
    reg [63:0] redist34_i_arrayidx578_atax14_vt_join_q_2_delay_0;
    wire redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_reset0;
    wire [63:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_ia;
    wire [2:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_aa;
    wire [2:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_ab;
    wire [63:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_iq;
    wire [63:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_q;
    wire [2:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_q;
    (* preserve *) reg [2:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i;
    (* preserve *) reg redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_eq;
    reg [2:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_wraddr_q;
    wire [3:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_last_q;
    wire [3:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmp_b;
    wire [0:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmp_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmpReg_q;
    wire [0:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_notEnable_q;
    wire [0:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_nor_q;
    (* dont_merge *) reg [0:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_sticky_ena_q;
    wire [0:0] redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_enaAnd_q;
    wire redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_reset0;
    wire [31:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_ia;
    wire [1:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_aa;
    wire [1:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_ab;
    wire [31:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_iq;
    wire [31:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_q;
    wire [1:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_q;
    (* preserve *) reg [1:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i;
    (* preserve *) reg redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_eq;
    reg [1:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_wraddr_q;
    wire [1:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_last_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmp_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmpReg_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_notEnable_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_nor_q;
    (* dont_merge *) reg [0:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_sticky_ena_q;
    wire [0:0] redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_enaAnd_q;
    wire redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_reset0;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_ia;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_aa;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_ab;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_iq;
    wire [31:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_q;
    wire [1:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_q;
    (* preserve *) reg [1:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_i;
    reg [1:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_wraddr_q;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_last_q;
    wire [2:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmp_b;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmp_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmpReg_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_notEnable_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_nor_q;
    (* dont_merge *) reg [0:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_sticky_ena_q;
    wire [0:0] redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist8_sync_together106_aunroll_x_in_i_valid_1(DELAY,285)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together106_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist8_sync_together106_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1(DELAY,304)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid257_i_cleanups_shl38_atax0_shift_x(BITSELECT,256)@2
    assign leftShiftStage0Idx1Rng1_uid257_i_cleanups_shl38_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid257_i_cleanups_shl38_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid257_i_cleanups_shl38_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid258_i_cleanups_shl38_atax0_shift_x(BITJOIN,257)@2
    assign leftShiftStage0Idx1_uid258_i_cleanups_shl38_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid257_i_cleanups_shl38_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x(MUX,259)@2
    assign leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out or leftShiftStage0Idx1_uid258_i_cleanups_shl38_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_q = leftShiftStage0Idx1_uid258_i_cleanups_shl38_atax0_shift_x_q;
            default : leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl38_atax5_vt_select_1(BITSELECT,51)@2
    assign i_cleanups_shl38_atax5_vt_select_1_b = leftShiftStage0_uid260_i_cleanups_shl38_atax0_shift_x_q[1:1];

    // i_cleanups_shl38_atax5_vt_join(BITJOIN,50)@2
    assign i_cleanups_shl38_atax5_vt_join_q = {i_cleanups_shl38_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor40_atax4(LOGICAL,54)@2
    assign i_first_cleanup_xor40_atax4_q = i_first_cleanup39_atax3_sel_x_b ^ VCC_q;

    // i_notcmp30_atax32(LOGICAL,94)@2
    assign i_notcmp30_atax32_q = i_exitcond17_atax30_cmp_nsign_q ^ VCC_q;

    // i_or41_atax34(LOGICAL,95)@2
    assign i_or41_atax34_q = i_notcmp30_atax32_q | i_first_cleanup_xor40_atax4_q;

    // i_next_cleanups42_atax35(MUX,90)@2
    assign i_next_cleanups42_atax35_s = i_or41_atax34_q;
    always @(i_next_cleanups42_atax35_s or i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out or i_cleanups_shl38_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups42_atax35_s)
            1'b0 : i_next_cleanups42_atax35_q = i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out;
            1'b1 : i_next_cleanups42_atax35_q = i_cleanups_shl38_atax5_vt_join_q;
            default : i_next_cleanups42_atax35_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups37_push45_atax36(BLACKBOX,81)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    atax_i_llvm_fpga_push_i2_cleanups37_push45_0 thei_llvm_fpga_push_i2_cleanups37_push45_atax36 (
        .in_data_in(i_next_cleanups42_atax35_q),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_feedback_stall_out_45),
        .in_keep_going34(redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i2_cleanups37_push45_atax36_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i2_cleanups37_push45_atax36_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q <= $unsigned(in_c0_eni7191_1_tpl);
        end
    end

    // c_i2_173(CONSTANT,35)
    assign c_i2_173_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups37_pop45_atax2(BLACKBOX,69)@2
    // out out_feedback_stall_out_45@20000000
    atax_i_llvm_fpga_pop_i2_cleanups37_pop45_0 thei_llvm_fpga_pop_i2_cleanups37_pop45_atax2 (
        .in_data_in(c_i2_173_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i2_cleanups37_push45_atax36_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i2_cleanups37_push45_atax36_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup39_atax3_sel_x(BITSELECT,151)@2
    assign i_first_cleanup39_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups37_pop45_atax2_out_data_out[0:0];

    // c_i6_179(CONSTANT,38)
    assign c_i6_179_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next16_atax37(ADD,55)@2
    assign i_fpga_indvars_iv_next16_atax37_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29_out_data_out};
    assign i_fpga_indvars_iv_next16_atax37_b = {1'b0, c_i6_179_q};
    assign i_fpga_indvars_iv_next16_atax37_o = $unsigned(i_fpga_indvars_iv_next16_atax37_a) + $unsigned(i_fpga_indvars_iv_next16_atax37_b);
    assign i_fpga_indvars_iv_next16_atax37_q = i_fpga_indvars_iv_next16_atax37_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next16_atax37_sel_x(BITSELECT,102)@2
    assign bgTrunc_i_fpga_indvars_iv_next16_atax37_sel_x_b = i_fpga_indvars_iv_next16_atax37_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38(BLACKBOX,86)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_0 thei_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next16_atax37_sel_x_b),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29_out_feedback_stall_out_42),
        .in_keep_going34(redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1877(CONSTANT,39)
    assign c_i6_1877_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29(BLACKBOX,74)@2
    // out out_feedback_stall_out_42@20000000
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29 (
        .in_data_in(c_i6_1877_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i6_fpga_indvars_iv15_push42_atax38_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond17_atax30_cmp_nsign(LOGICAL,191)@2
    assign i_exitcond17_atax30_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv15_pop42_atax29_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond44_atax33(BLACKBOX,80)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    atax_i_llvm_fpga_push_i1_notexitcond44_0 thei_llvm_fpga_push_i1_notexitcond44_atax33 (
        .in_data_in(i_exitcond17_atax30_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going34_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup39(i_first_cleanup39_atax3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist8_sync_together106_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond44_atax33_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond44_atax33_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,163)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid264_i_next_initerations33_atax0_shift_x(BITSELECT,263)@2
    assign rightShiftStage0Idx1Rng1_uid264_i_next_initerations33_atax0_shift_x_b = i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid266_i_next_initerations33_atax0_shift_x(BITJOIN,265)@2
    assign rightShiftStage0Idx1_uid266_i_next_initerations33_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid264_i_next_initerations33_atax0_shift_x_b};

    // valid_fanout_reg1(REG,161)@1 + 1
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

    // valid_fanout_reg2(REG,162)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations32_push44_atax9(BLACKBOX,82)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    atax_i_llvm_fpga_push_i2_initerations32_push44_0 thei_llvm_fpga_push_i2_initerations32_push44_atax9 (
        .in_data_in(i_next_initerations33_atax8_vt_join_q),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_feedback_stall_out_44),
        .in_keep_going34(redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i2_initerations32_push44_atax9_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i2_initerations32_push44_atax9_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations32_pop44_atax7(BLACKBOX,70)@2
    // out out_feedback_stall_out_44@20000000
    atax_i_llvm_fpga_pop_i2_initerations32_pop44_0 thei_llvm_fpga_pop_i2_initerations32_pop44_atax7 (
        .in_data_in(c_i2_173_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i2_initerations32_push44_atax9_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i2_initerations32_push44_atax9_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x(MUX,267)@2
    assign rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_s or i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_data_out or rightShiftStage0Idx1_uid266_i_next_initerations33_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_q = i_llvm_fpga_pop_i2_initerations32_pop44_atax7_out_data_out;
            1'b1 : rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_q = rightShiftStage0Idx1_uid266_i_next_initerations33_atax0_shift_x_q;
            default : rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations33_atax8_vt_select_0(BITSELECT,93)@2
    assign i_next_initerations33_atax8_vt_select_0_b = rightShiftStage0_uid268_i_next_initerations33_atax0_shift_x_q[0:0];

    // i_next_initerations33_atax8_vt_join(BITJOIN,92)@2
    assign i_next_initerations33_atax8_vt_join_q = {GND_q, i_next_initerations33_atax8_vt_select_0_b};

    // i_last_initeration35_atax10_sel_x(BITSELECT,153)@2
    assign i_last_initeration35_atax10_sel_x_b = i_next_initerations33_atax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration36_atax11(BLACKBOX,77)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration36_0 thei_llvm_fpga_push_i1_lastiniteration36_atax11 (
        .in_data_in(i_last_initeration35_atax10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going34_atax6_out_initeration_stall_out),
        .in_keep_going34(redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration36_atax11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration36_atax11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going34_atax6(BLACKBOX,65)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going34_0 thei_llvm_fpga_pipeline_keep_going34_atax6 (
        .in_data_in(in_c0_eni7191_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration36_atax11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration36_atax11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond44_atax33_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond44_atax33_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going34_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going34_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going34_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going34_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going34_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,41)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going34_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going34_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going34_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,98)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going34_atax6_out_pipeline_valid_out;

    // redist9_sync_together106_aunroll_x_in_i_valid_2(DELAY,286)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together106_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist9_sync_together106_aunroll_x_in_i_valid_2_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist10_sync_together106_aunroll_x_in_i_valid_7(DELAY,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_0 <= '0;
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_1 <= '0;
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_2 <= '0;
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_3 <= '0;
            redist10_sync_together106_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist9_sync_together106_aunroll_x_in_i_valid_2_q);
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_1 <= redist10_sync_together106_aunroll_x_in_i_valid_7_delay_0;
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_2 <= redist10_sync_together106_aunroll_x_in_i_valid_7_delay_1;
            redist10_sync_together106_aunroll_x_in_i_valid_7_delay_3 <= redist10_sync_together106_aunroll_x_in_i_valid_7_delay_2;
            redist10_sync_together106_aunroll_x_in_i_valid_7_q <= redist10_sync_together106_aunroll_x_in_i_valid_7_delay_3;
        end
    end

    // valid_fanout_reg7(REG,167)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist10_sync_together106_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist31_i_first_cleanup_xor40_atax4_q_1(DELAY,308)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist31_i_first_cleanup_xor40_atax4_q_1_q <= '0;
        end
        else
        begin
            redist31_i_first_cleanup_xor40_atax4_q_1_q <= $unsigned(i_first_cleanup_xor40_atax4_q);
        end
    end

    // redist32_i_first_cleanup_xor40_atax4_q_7(DELAY,309)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist32_i_first_cleanup_xor40_atax4_q_7 ( .xin(redist31_i_first_cleanup_xor40_atax4_q_1_q), .xout(redist32_i_first_cleanup_xor40_atax4_q_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg5(REG,165)@1 + 1
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

    // valid_fanout_reg6(REG,166)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2(DELAY,305)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2_q <= $unsigned(redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16(BLACKBOX,78)@3
    // out out_feedback_out_50@20000000
    // out out_feedback_valid_out_50@20000000
    atax_i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_0 thei_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16 (
        .in_data_in(redist23_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_1_q),
        .in_feedback_stall_in_50(i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_feedback_stall_out_50),
        .in_keep_going34(redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_50(i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16_out_feedback_out_50),
        .out_feedback_valid_out_50(i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16_out_feedback_valid_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together106_aunroll_x_in_c0_eni7191_2_tpl_1(DELAY,279)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together106_aunroll_x_in_c0_eni7191_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together106_aunroll_x_in_c0_eni7191_2_tpl_1_q <= $unsigned(in_c0_eni7191_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15(BLACKBOX,67)@2
    // out out_feedback_stall_out_50@20000000
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_0 thei_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15 (
        .in_data_in(redist2_sync_together106_aunroll_x_in_c0_eni7191_2_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q),
        .in_feedback_in_50(i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16_out_feedback_out_50),
        .in_feedback_valid_in_50(i_llvm_fpga_push_i1_memdep_phi_pop20105_push50_atax16_out_feedback_valid_out_50),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out),
        .out_feedback_stall_out_50(i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_feedback_stall_out_50),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist23_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_1(DELAY,300)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_1_q <= '0;
        end
        else
        begin
            redist23_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out);
        end
    end

    // redist24_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_7(DELAY,301)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist24_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_7 ( .xin(redist23_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_1_q), .xout(redist24_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // c_atax_y_local_pmem(CONSTANT,7)
    assign c_atax_y_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx578_atax0_upper_bits_x_merged_bit_select(BITSELECT,273)@9
    assign i_arrayidx578_atax0_upper_bits_x_merged_bit_select_b = c_atax_y_local_pmem_q[63:7];
    assign i_arrayidx578_atax0_upper_bits_x_merged_bit_select_c = c_atax_y_local_pmem_q[6:0];

    // c_i32_075(CONSTANT,36)
    assign c_i32_075_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,164)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg14(REG,174)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg14_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg14_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_176(CONSTANT,37)
    assign c_i32_176_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc67_atax27(ADD,60)@3
    assign i_inc67_atax27_a = {1'b0, i_llvm_fpga_pop_i32_j51_044_pop43_atax12_out_data_out};
    assign i_inc67_atax27_b = {1'b0, c_i32_176_q};
    assign i_inc67_atax27_o = $unsigned(i_inc67_atax27_a) + $unsigned(i_inc67_atax27_b);
    assign i_inc67_atax27_q = i_inc67_atax27_o[32:0];

    // bgTrunc_i_inc67_atax27_sel_x(BITSELECT,103)@3
    assign bgTrunc_i_inc67_atax27_sel_x_b = i_inc67_atax27_q[31:0];

    // i_llvm_fpga_push_i32_j51_044_push43_atax28(BLACKBOX,84)@3
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    atax_i_llvm_fpga_push_i32_j51_044_push43_0 thei_llvm_fpga_push_i32_j51_044_push43_atax28 (
        .in_data_in(bgTrunc_i_inc67_atax27_sel_x_b),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i32_j51_044_pop43_atax12_out_feedback_stall_out_43),
        .in_keep_going34(redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg14_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i32_j51_044_push43_atax28_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i32_j51_044_push43_atax28_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_2(DELAY,278)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_2_q <= $unsigned(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j51_044_pop43_atax12(BLACKBOX,72)@3
    // out out_feedback_stall_out_43@20000000
    atax_i_llvm_fpga_pop_i32_j51_044_pop43_0 thei_llvm_fpga_pop_i32_j51_044_pop43_atax12 (
        .in_data_in(c_i32_075_q),
        .in_dir(redist1_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_2_q),
        .in_feedback_in_43(i_llvm_fpga_push_i32_j51_044_push43_atax28_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i32_j51_044_push43_atax28_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_j51_044_pop43_atax12_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i32_j51_044_pop43_atax12_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom56_atax13_sel_x(BITSELECT,152)@3
    assign i_idxprom56_atax13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j51_044_pop43_atax12_out_data_out[31:0]};

    // i_idxprom56_atax13_vt_select_31(BITSELECT,59)@3
    assign i_idxprom56_atax13_vt_select_31_b = i_idxprom56_atax13_sel_x_b[31:0];

    // i_idxprom56_atax13_vt_join(BITJOIN,58)@3
    assign i_idxprom56_atax13_vt_join_q = {c_i32_075_q, i_idxprom56_atax13_vt_select_31_b};

    // i_arrayidx578_atax0_dupName_0_trunc_sel_x(BITSELECT,121)@3
    assign i_arrayidx578_atax0_dupName_0_trunc_sel_x_b = i_idxprom56_atax13_vt_join_q[6:0];

    // i_arrayidx578_atax0_narrow_x(BITSELECT,114)@3
    assign i_arrayidx578_atax0_narrow_x_b = i_arrayidx578_atax0_dupName_0_trunc_sel_x_b[4:0];

    // redist14_i_arrayidx578_atax0_narrow_x_b_6(DELAY,291)
    dspba_delay_ver #( .width(5), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist14_i_arrayidx578_atax0_narrow_x_b_6 ( .xin(i_arrayidx578_atax0_narrow_x_b), .xout(redist14_i_arrayidx578_atax0_narrow_x_b_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_arrayidx578_atax0_shift_join_x(BITJOIN,115)@9
    assign i_arrayidx578_atax0_shift_join_x_q = {redist14_i_arrayidx578_atax0_narrow_x_b_6_q, i_arrayidx578_atax14_vt_const_1_q};

    // i_arrayidx578_atax0_add_x(ADD,111)@9
    assign i_arrayidx578_atax0_add_x_a = {1'b0, i_arrayidx578_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx578_atax0_add_x_b = {1'b0, i_arrayidx578_atax0_shift_join_x_q};
    assign i_arrayidx578_atax0_add_x_o = $unsigned(i_arrayidx578_atax0_add_x_a) + $unsigned(i_arrayidx578_atax0_add_x_b);
    assign i_arrayidx578_atax0_add_x_q = i_arrayidx578_atax0_add_x_o[7:0];

    // i_arrayidx578_atax0_dupName_2_trunc_sel_x(BITSELECT,122)@9
    assign i_arrayidx578_atax0_dupName_2_trunc_sel_x_b = i_arrayidx578_atax0_add_x_q[6:0];

    // i_arrayidx578_atax0_append_upper_bits_x(BITJOIN,112)@9
    assign i_arrayidx578_atax0_append_upper_bits_x_q = {i_arrayidx578_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx578_atax0_dupName_2_trunc_sel_x_b};

    // i_arrayidx578_atax14_vt_select_63(BITSELECT,45)@9
    assign i_arrayidx578_atax14_vt_select_63_b = i_arrayidx578_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx578_atax14_vt_const_1(CONSTANT,43)
    assign i_arrayidx578_atax14_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx578_atax14_vt_join(BITJOIN,44)@9
    assign i_arrayidx578_atax14_vt_join_q = {i_arrayidx578_atax14_vt_select_63_b, i_arrayidx578_atax14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax15_atax17(BLACKBOX,63)@9
    // in in_i_stall@20000000
    // out out_o_readdata@11
    // out out_o_stall@10
    // out out_o_valid@11
    // out out_unnamed_atax15_atax_avm_address@20000000
    // out out_unnamed_atax15_atax_avm_burstcount@20000000
    // out out_unnamed_atax15_atax_avm_byteenable@20000000
    // out out_unnamed_atax15_atax_avm_enable@20000000
    // out out_unnamed_atax15_atax_avm_read@20000000
    // out out_unnamed_atax15_atax_avm_write@20000000
    // out out_unnamed_atax15_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_15_atax0 thei_llvm_fpga_mem_unnamed_atax15_atax17 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx578_atax14_vt_join_q),
        .in_i_dependence(redist24_i_llvm_fpga_pop_i1_memdep_phi_pop20105_pop50_atax15_out_data_out_7_q),
        .in_i_predicate(redist32_i_first_cleanup_xor40_atax4_q_7_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax15_atax17_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax15_atax_avm_address(i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,107)
    assign out_unnamed_atax15_atax_avm_address = i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_address;
    assign out_unnamed_atax15_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_enable;
    assign out_unnamed_atax15_atax_avm_read = i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_read;
    assign out_unnamed_atax15_atax_avm_write = i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_write;
    assign out_unnamed_atax15_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_writedata;
    assign out_unnamed_atax15_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_byteenable;
    assign out_unnamed_atax15_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax15_atax17_out_unnamed_atax15_atax_avm_burstcount;

    // valid_fanout_reg10(REG,170)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_atax_A_local_pmem(CONSTANT,6)
    assign c_atax_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx619_atax0_upper_bits_x_merged_bit_select(BITSELECT,272)@3
    assign i_arrayidx619_atax0_upper_bits_x_merged_bit_select_b = c_atax_A_local_pmem_q[63:11];
    assign i_arrayidx619_atax0_upper_bits_x_merged_bit_select_c = c_atax_A_local_pmem_q[10:0];

    // i_arrayidx619_atax0_dupName_3_trunc_sel_x(BITSELECT,145)@3
    assign i_arrayidx619_atax0_dupName_3_trunc_sel_x_b = i_idxprom56_atax13_vt_join_q[10:0];

    // i_arrayidx619_atax0_narrow_x(BITSELECT,128)@3
    assign i_arrayidx619_atax0_narrow_x_b = i_arrayidx619_atax0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx619_atax0_shift_join_x(BITJOIN,129)@3
    assign i_arrayidx619_atax0_shift_join_x_q = {i_arrayidx619_atax0_narrow_x_b, i_arrayidx578_atax14_vt_const_1_q};

    // i_arrayidx619_atax0_mult_multconst_x(CONSTANT,140)
    assign i_arrayidx619_atax0_mult_multconst_x_q = $unsigned(4'b0000);

    // valid_fanout_reg8(REG,168)@1 + 1
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

    // valid_fanout_reg9(REG,169)@1 + 1
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

    // i_llvm_fpga_push_i64_idxprom3598_push46_atax19(BLACKBOX,85)@2
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    atax_i_llvm_fpga_push_i64_idxprom3598_push46_0 thei_llvm_fpga_push_i64_idxprom3598_push46_atax19 (
        .in_data_in(i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18_out_data_out),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18_out_feedback_stall_out_46),
        .in_keep_going34(redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i64_idxprom3598_push46_atax19_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i64_idxprom3598_push46_atax19_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together106_aunroll_x_in_c0_eni7191_3_tpl_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together106_aunroll_x_in_c0_eni7191_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together106_aunroll_x_in_c0_eni7191_3_tpl_1_q <= $unsigned(in_c0_eni7191_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18(BLACKBOX,73)@2
    // out out_feedback_stall_out_46@20000000
    atax_i_llvm_fpga_pop_i64_idxprom3598_pop46_0 thei_llvm_fpga_pop_i64_idxprom3598_pop46_atax18 (
        .in_data_in(redist3_sync_together106_aunroll_x_in_c0_eni7191_3_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i64_idxprom3598_push46_atax19_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i64_idxprom3598_push46_atax19_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx619_atax0_dupName_0_trunc_sel_x(BITSELECT,142)@2
    assign i_arrayidx619_atax0_dupName_0_trunc_sel_x_b = i_llvm_fpga_pop_i64_idxprom3598_pop46_atax18_out_data_out[10:0];

    // addsumAHighB_uid217_i_arrayidx619_atax0_mult_x(ADD,216)@2
    assign addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_a = {1'b0, i_arrayidx619_atax0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_b = {3'b000, lowRangeB_uid215_i_arrayidx619_atax0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_o = $unsigned(addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_a) + $unsigned(addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_b);
    assign addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_q = addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_o[11:0];

    // lowRangeB_uid215_i_arrayidx619_atax0_mult_x_merged_bit_select(BITSELECT,276)@2
    assign lowRangeB_uid215_i_arrayidx619_atax0_mult_x_merged_bit_select_b = i_arrayidx619_atax0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid215_i_arrayidx619_atax0_mult_x_merged_bit_select_c = i_arrayidx619_atax0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid218_i_arrayidx619_atax0_mult_x(BITJOIN,217)@2
    assign add_uid218_i_arrayidx619_atax0_mult_x_q = {addsumAHighB_uid217_i_arrayidx619_atax0_mult_x_q, lowRangeB_uid215_i_arrayidx619_atax0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid223_i_arrayidx619_atax0_mult_x(BITJOIN,222)@2
    assign sR_mergedSignalTM_uid223_i_arrayidx619_atax0_mult_x_q = {add_uid218_i_arrayidx619_atax0_mult_x_q, i_arrayidx619_atax0_mult_multconst_x_q};

    // i_arrayidx619_atax0_mult_extender_x(BITJOIN,139)@2
    assign i_arrayidx619_atax0_mult_extender_x_q = {i_arrayidx619_atax0_mult_multconst_x_q, sR_mergedSignalTM_uid223_i_arrayidx619_atax0_mult_x_q};

    // i_arrayidx619_atax0_dupName_1_trunc_sel_x(BITSELECT,143)@2
    assign i_arrayidx619_atax0_dupName_1_trunc_sel_x_b = i_arrayidx619_atax0_mult_extender_x_q[10:0];

    // redist13_i_arrayidx619_atax0_dupName_1_trunc_sel_x_b_1(DELAY,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx619_atax0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist13_i_arrayidx619_atax0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx619_atax0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx619_atax0_add_x(ADD,123)@3
    assign i_arrayidx619_atax0_add_x_a = {1'b0, i_arrayidx619_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx619_atax0_add_x_b = {1'b0, redist13_i_arrayidx619_atax0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx619_atax0_add_x_o = $unsigned(i_arrayidx619_atax0_add_x_a) + $unsigned(i_arrayidx619_atax0_add_x_b);
    assign i_arrayidx619_atax0_add_x_q = i_arrayidx619_atax0_add_x_o[11:0];

    // i_arrayidx619_atax0_dupName_2_trunc_sel_x(BITSELECT,144)@3
    assign i_arrayidx619_atax0_dupName_2_trunc_sel_x_b = i_arrayidx619_atax0_add_x_q[10:0];

    // i_arrayidx619_atax0_dupName_0_add_x(ADD,133)@3
    assign i_arrayidx619_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx619_atax0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx619_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx619_atax0_shift_join_x_q};
    assign i_arrayidx619_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx619_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx619_atax0_dupName_0_add_x_b);
    assign i_arrayidx619_atax0_dupName_0_add_x_q = i_arrayidx619_atax0_dupName_0_add_x_o[11:0];

    // i_arrayidx619_atax0_dupName_5_trunc_sel_x(BITSELECT,146)@3
    assign i_arrayidx619_atax0_dupName_5_trunc_sel_x_b = i_arrayidx619_atax0_dupName_0_add_x_q[10:0];

    // i_arrayidx619_atax0_append_upper_bits_x(BITJOIN,124)@3
    assign i_arrayidx619_atax0_append_upper_bits_x_q = {i_arrayidx619_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx619_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx619_atax20_vt_select_63(BITSELECT,48)@3
    assign i_arrayidx619_atax20_vt_select_63_b = i_arrayidx619_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx619_atax20_vt_join(BITJOIN,47)@3
    assign i_arrayidx619_atax20_vt_join_q = {i_arrayidx619_atax20_vt_select_63_b, i_arrayidx578_atax14_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_atax16_atax21(BLACKBOX,64)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_atax16_atax_avm_address@20000000
    // out out_unnamed_atax16_atax_avm_burstcount@20000000
    // out out_unnamed_atax16_atax_avm_byteenable@20000000
    // out out_unnamed_atax16_atax_avm_enable@20000000
    // out out_unnamed_atax16_atax_avm_read@20000000
    // out out_unnamed_atax16_atax_avm_write@20000000
    // out out_unnamed_atax16_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_16_atax0 thei_llvm_fpga_mem_unnamed_atax16_atax21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx619_atax20_vt_join_q),
        .in_i_predicate(redist31_i_first_cleanup_xor40_atax4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_unnamed_atax16_atax_avm_readdata(in_unnamed_atax16_atax_avm_readdata),
        .in_unnamed_atax16_atax_avm_readdatavalid(in_unnamed_atax16_atax_avm_readdatavalid),
        .in_unnamed_atax16_atax_avm_waitrequest(in_unnamed_atax16_atax_avm_waitrequest),
        .in_unnamed_atax16_atax_avm_writeack(in_unnamed_atax16_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax16_atax21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_atax16_atax_avm_address(i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_address),
        .out_unnamed_atax16_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_burstcount),
        .out_unnamed_atax16_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_byteenable),
        .out_unnamed_atax16_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_enable),
        .out_unnamed_atax16_atax_avm_read(i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_read),
        .out_unnamed_atax16_atax_avm_write(i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_write),
        .out_unnamed_atax16_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,109)
    assign out_unnamed_atax16_atax_avm_address = i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_address;
    assign out_unnamed_atax16_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_enable;
    assign out_unnamed_atax16_atax_avm_read = i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_read;
    assign out_unnamed_atax16_atax_avm_write = i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_write;
    assign out_unnamed_atax16_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_writedata;
    assign out_unnamed_atax16_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_byteenable;
    assign out_unnamed_atax16_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax16_atax21_out_unnamed_atax16_atax_avm_burstcount;

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_notEnable(LOGICAL,328)
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_notEnable_q = $unsigned(~ (VCC_q));

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_nor(LOGICAL,329)
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_nor_q = ~ (redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_notEnable_q | redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_sticky_ena_q);

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_last(CONSTANT,325)
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_last_q = $unsigned(2'b01);

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmp(LOGICAL,326)
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmp_q = $unsigned(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_last_q == redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_q ? 1'b1 : 1'b0);

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmpReg(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmpReg_q <= $unsigned(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmp_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_sticky_ena(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_nor_q == 1'b1)
        begin
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_sticky_ena_q <= $unsigned(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_cmpReg_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_enaAnd(LOGICAL,331)
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_enaAnd_q = redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_sticky_ena_q & VCC_q;

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt(COUNTER,323)
    // low=0, high=2, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i <= 2'd0;
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i == 2'd1)
            begin
                redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_eq <= 1'b0;
            end
            if (redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_eq == 1'b1)
            begin
                redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i) + $unsigned(2'd2);
            end
            else
            begin
                redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i <= $unsigned(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i) + $unsigned(2'd1);
            end
        end
    end
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_q = redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_i[1:0];

    // valid_fanout_reg11(REG,171)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,172)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_add106_push51_atax23(BLACKBOX,83)@3
    // out out_feedback_out_51@20000000
    // out out_feedback_valid_out_51@20000000
    atax_i_llvm_fpga_push_i32_add106_push51_0 thei_llvm_fpga_push_i32_add106_push51_atax23 (
        .in_data_in(redist19_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_1_q),
        .in_feedback_stall_in_51(i_llvm_fpga_pop_i32_add106_pop51_atax22_out_feedback_stall_out_51),
        .in_keep_going34(redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_51(i_llvm_fpga_push_i32_add106_push51_atax23_out_feedback_out_51),
        .out_feedback_valid_out_51(i_llvm_fpga_push_i32_add106_push51_atax23_out_feedback_valid_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together106_aunroll_x_in_c0_eni7191_4_tpl_1(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together106_aunroll_x_in_c0_eni7191_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together106_aunroll_x_in_c0_eni7191_4_tpl_1_q <= $unsigned(in_c0_eni7191_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_add106_pop51_atax22(BLACKBOX,71)@2
    // out out_feedback_stall_out_51@20000000
    atax_i_llvm_fpga_pop_i32_add106_pop51_0 thei_llvm_fpga_pop_i32_add106_pop51_atax22 (
        .in_data_in(redist4_sync_together106_aunroll_x_in_c0_eni7191_4_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q),
        .in_feedback_in_51(i_llvm_fpga_push_i32_add106_push51_atax23_out_feedback_out_51),
        .in_feedback_valid_in_51(i_llvm_fpga_push_i32_add106_push51_atax23_out_feedback_valid_out_51),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out),
        .out_feedback_stall_out_51(i_llvm_fpga_pop_i32_add106_pop51_atax22_out_feedback_stall_out_51),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist19_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_1(DELAY,296)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_1_q <= '0;
        end
        else
        begin
            redist19_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_wraddr(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_wraddr_q <= $unsigned(2'b10);
        end
        else
        begin
            redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_wraddr_q <= $unsigned(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_q);
        end
    end

    // redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem(DUALMEM,322)
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_ia = $unsigned(redist19_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_1_q);
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_aa = redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_wraddr_q;
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_ab = redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_rdcnt_q;
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(32),
        .widthad_a(2),
        .numwords_a(3),
        .width_b(32),
        .widthad_b(2),
        .numwords_b(3),
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
    ) redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_dmem (
        .clocken1(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_reset0),
        .clock1(clock),
        .address_a(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_aa),
        .data_a(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_ab),
        .q_b(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_iq),
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
    assign redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_q = redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_iq[31:0];

    // i_mul62_atax24_bs2_merged_bit_select(BITSELECT,275)@7
    assign i_mul62_atax24_bs2_merged_bit_select_b = redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_q[31:18];
    assign i_mul62_atax24_bs2_merged_bit_select_c = redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_q[17:0];

    // i_mul62_atax24_bs1_merged_bit_select(BITSELECT,274)@7
    assign i_mul62_atax24_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_atax16_atax21_out_o_readdata[31:18];
    assign i_mul62_atax24_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_atax16_atax21_out_o_readdata[17:0];

    // i_mul62_atax24_ma3_cma(CHAINMULTADD,271)@7 + 3
    assign i_mul62_atax24_ma3_cma_reset = ~ (resetn);
    assign i_mul62_atax24_ma3_cma_ena0 = 1'b1;
    assign i_mul62_atax24_ma3_cma_ena1 = i_mul62_atax24_ma3_cma_ena0;
    assign i_mul62_atax24_ma3_cma_ena2 = i_mul62_atax24_ma3_cma_ena0;

    assign i_mul62_atax24_ma3_cma_a0 = i_mul62_atax24_bs1_merged_bit_select_b;
    assign i_mul62_atax24_ma3_cma_c0 = i_mul62_atax24_bs2_merged_bit_select_c;
    assign i_mul62_atax24_ma3_cma_a1 = i_mul62_atax24_bs2_merged_bit_select_b;
    assign i_mul62_atax24_ma3_cma_c1 = i_mul62_atax24_bs1_merged_bit_select_c;
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
    ) i_mul62_atax24_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_atax24_ma3_cma_ena2, i_mul62_atax24_ma3_cma_ena1, i_mul62_atax24_ma3_cma_ena0 }),
        .aclr({ i_mul62_atax24_ma3_cma_reset, i_mul62_atax24_ma3_cma_reset }),
        .ay(i_mul62_atax24_ma3_cma_a1),
        .by(i_mul62_atax24_ma3_cma_a0),
        .ax(i_mul62_atax24_ma3_cma_c1),
        .bx(i_mul62_atax24_ma3_cma_c0),
        .resulta(i_mul62_atax24_ma3_cma_s0),
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
    i_mul62_atax24_ma3_cma_delay ( .xin(i_mul62_atax24_ma3_cma_s0), .xout(i_mul62_atax24_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_atax24_ma3_cma_q = $unsigned(i_mul62_atax24_ma3_cma_qq[32:0]);

    // i_mul62_atax24_sums_align_1(BITSHIFT,204)@10
    assign i_mul62_atax24_sums_align_1_qint = { i_mul62_atax24_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul62_atax24_sums_align_1_q = i_mul62_atax24_sums_align_1_qint[50:0];

    // i_mul62_atax24_im0_cma(CHAINMULTADD,269)@7 + 3
    assign i_mul62_atax24_im0_cma_reset = ~ (resetn);
    assign i_mul62_atax24_im0_cma_ena0 = 1'b1;
    assign i_mul62_atax24_im0_cma_ena1 = i_mul62_atax24_im0_cma_ena0;
    assign i_mul62_atax24_im0_cma_ena2 = i_mul62_atax24_im0_cma_ena0;

    assign i_mul62_atax24_im0_cma_a0 = i_mul62_atax24_bs1_merged_bit_select_b;
    assign i_mul62_atax24_im0_cma_c0 = i_mul62_atax24_bs2_merged_bit_select_b;
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
    ) i_mul62_atax24_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_atax24_im0_cma_ena2, i_mul62_atax24_im0_cma_ena1, i_mul62_atax24_im0_cma_ena0 }),
        .aclr({ i_mul62_atax24_im0_cma_reset, i_mul62_atax24_im0_cma_reset }),
        .ay(i_mul62_atax24_im0_cma_a0),
        .ax(i_mul62_atax24_im0_cma_c0),
        .resulta(i_mul62_atax24_im0_cma_s0),
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
    i_mul62_atax24_im0_cma_delay ( .xin(i_mul62_atax24_im0_cma_s0), .xout(i_mul62_atax24_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_atax24_im0_cma_q = $unsigned(i_mul62_atax24_im0_cma_qq[27:0]);

    // i_mul62_atax24_im8_cma(CHAINMULTADD,270)@7 + 3
    assign i_mul62_atax24_im8_cma_reset = ~ (resetn);
    assign i_mul62_atax24_im8_cma_ena0 = 1'b1;
    assign i_mul62_atax24_im8_cma_ena1 = i_mul62_atax24_im8_cma_ena0;
    assign i_mul62_atax24_im8_cma_ena2 = i_mul62_atax24_im8_cma_ena0;

    assign i_mul62_atax24_im8_cma_a0 = i_mul62_atax24_bs1_merged_bit_select_c;
    assign i_mul62_atax24_im8_cma_c0 = i_mul62_atax24_bs2_merged_bit_select_c;
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
    ) i_mul62_atax24_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul62_atax24_im8_cma_ena2, i_mul62_atax24_im8_cma_ena1, i_mul62_atax24_im8_cma_ena0 }),
        .aclr({ i_mul62_atax24_im8_cma_reset, i_mul62_atax24_im8_cma_reset }),
        .ay(i_mul62_atax24_im8_cma_a0),
        .ax(i_mul62_atax24_im8_cma_c0),
        .resulta(i_mul62_atax24_im8_cma_s0),
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
    i_mul62_atax24_im8_cma_delay ( .xin(i_mul62_atax24_im8_cma_s0), .xout(i_mul62_atax24_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul62_atax24_im8_cma_q = $unsigned(i_mul62_atax24_im8_cma_qq[35:0]);

    // i_mul62_atax24_sums_join_0(BITJOIN,203)@10
    assign i_mul62_atax24_sums_join_0_q = {i_mul62_atax24_im0_cma_q, i_mul62_atax24_im8_cma_q};

    // i_mul62_atax24_sums_result_add_0_0(ADD,206)@10
    assign i_mul62_atax24_sums_result_add_0_0_a = {1'b0, i_mul62_atax24_sums_join_0_q};
    assign i_mul62_atax24_sums_result_add_0_0_b = {14'b00000000000000, i_mul62_atax24_sums_align_1_q};
    assign i_mul62_atax24_sums_result_add_0_0_o = $unsigned(i_mul62_atax24_sums_result_add_0_0_a) + $unsigned(i_mul62_atax24_sums_result_add_0_0_b);
    assign i_mul62_atax24_sums_result_add_0_0_q = i_mul62_atax24_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul62_atax24_sel_x(BITSELECT,104)@10
    assign bgTrunc_i_mul62_atax24_sel_x_in = i_mul62_atax24_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul62_atax24_sel_x_b = bgTrunc_i_mul62_atax24_sel_x_in[31:0];

    // redist15_bgTrunc_i_mul62_atax24_sel_x_b_1(DELAY,292)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_bgTrunc_i_mul62_atax24_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist15_bgTrunc_i_mul62_atax24_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul62_atax24_sel_x_b);
        end
    end

    // i_add63_atax25(ADD,42)@11
    assign i_add63_atax25_a = {1'b0, redist15_bgTrunc_i_mul62_atax24_sel_x_b_1_q};
    assign i_add63_atax25_b = {1'b0, i_llvm_fpga_mem_unnamed_atax15_atax17_out_o_readdata};
    assign i_add63_atax25_o = $unsigned(i_add63_atax25_a) + $unsigned(i_add63_atax25_b);
    assign i_add63_atax25_q = i_add63_atax25_o[32:0];

    // bgTrunc_i_add63_atax25_sel_x(BITSELECT,101)@11
    assign bgTrunc_i_add63_atax25_sel_x_b = i_add63_atax25_q[31:0];

    // redist11_sync_together106_aunroll_x_in_i_valid_9(DELAY,288)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together106_aunroll_x_in_i_valid_9_delay_0 <= '0;
            redist11_sync_together106_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist11_sync_together106_aunroll_x_in_i_valid_9_delay_0 <= $unsigned(redist10_sync_together106_aunroll_x_in_i_valid_7_q);
            redist11_sync_together106_aunroll_x_in_i_valid_9_q <= redist11_sync_together106_aunroll_x_in_i_valid_9_delay_0;
        end
    end

    // valid_fanout_reg13(REG,173)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg13_q <= $unsigned(redist11_sync_together106_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist33_i_first_cleanup_xor40_atax4_q_9(DELAY,310)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist33_i_first_cleanup_xor40_atax4_q_9_delay_0 <= '0;
            redist33_i_first_cleanup_xor40_atax4_q_9_q <= '0;
        end
        else
        begin
            redist33_i_first_cleanup_xor40_atax4_q_9_delay_0 <= $unsigned(redist32_i_first_cleanup_xor40_atax4_q_7_q);
            redist33_i_first_cleanup_xor40_atax4_q_9_q <= redist33_i_first_cleanup_xor40_atax4_q_9_delay_0;
        end
    end

    // redist34_i_arrayidx578_atax14_vt_join_q_2(DELAY,311)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_arrayidx578_atax14_vt_join_q_2_delay_0 <= '0;
            redist34_i_arrayidx578_atax14_vt_join_q_2_q <= '0;
        end
        else
        begin
            redist34_i_arrayidx578_atax14_vt_join_q_2_delay_0 <= $unsigned(i_arrayidx578_atax14_vt_join_q);
            redist34_i_arrayidx578_atax14_vt_join_q_2_q <= redist34_i_arrayidx578_atax14_vt_join_q_2_delay_0;
        end
    end

    // i_llvm_fpga_mem_memdep_5_atax26(BLACKBOX,62)@11
    // out out_memdep_5_atax_avm_address@20000000
    // out out_memdep_5_atax_avm_burstcount@20000000
    // out out_memdep_5_atax_avm_byteenable@20000000
    // out out_memdep_5_atax_avm_enable@20000000
    // out out_memdep_5_atax_avm_read@20000000
    // out out_memdep_5_atax_avm_write@20000000
    // out out_memdep_5_atax_avm_writedata@20000000
    // out out_o_stall@12
    // out out_o_valid@12
    // out out_o_writeack@12
    atax_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_atax26 (
        .in_flush(in_flush),
        .in_i_address(redist34_i_arrayidx578_atax14_vt_join_q_2_q),
        .in_i_predicate(redist33_i_first_cleanup_xor40_atax4_q_9_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg13_q),
        .in_i_writedata(bgTrunc_i_add63_atax25_sel_x_b),
        .in_memdep_5_atax_avm_readdata(in_memdep_5_atax_avm_readdata),
        .in_memdep_5_atax_avm_readdatavalid(in_memdep_5_atax_avm_readdatavalid),
        .in_memdep_5_atax_avm_waitrequest(in_memdep_5_atax_avm_waitrequest),
        .in_memdep_5_atax_avm_writeack(in_memdep_5_atax_avm_writeack),
        .out_memdep_5_atax_avm_address(i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_address),
        .out_memdep_5_atax_avm_burstcount(i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_burstcount),
        .out_memdep_5_atax_avm_byteenable(i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_byteenable),
        .out_memdep_5_atax_avm_enable(i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_enable),
        .out_memdep_5_atax_avm_read(i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_read),
        .out_memdep_5_atax_avm_write(i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_write),
        .out_memdep_5_atax_avm_writedata(i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_5_atax26_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,110)
    assign out_memdep_5_atax_avm_address = i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_address;
    assign out_memdep_5_atax_avm_enable = i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_enable;
    assign out_memdep_5_atax_avm_read = i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_read;
    assign out_memdep_5_atax_avm_write = i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_write;
    assign out_memdep_5_atax_avm_writedata = i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_writedata;
    assign out_memdep_5_atax_avm_byteenable = i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_byteenable;
    assign out_memdep_5_atax_avm_burstcount = i_llvm_fpga_mem_memdep_5_atax26_out_memdep_5_atax_avm_burstcount;

    // redist12_sync_together106_aunroll_x_in_i_valid_10(DELAY,289)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together106_aunroll_x_in_i_valid_10_q <= '0;
        end
        else
        begin
            redist12_sync_together106_aunroll_x_in_i_valid_10_q <= $unsigned(redist11_sync_together106_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg0(REG,160)@11 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist12_sync_together106_aunroll_x_in_i_valid_10_q);
        end
    end

    // valid_fanout_reg19(REG,179)@1 + 1
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

    // valid_fanout_reg20(REG,180)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp62104_push49_atax45(BLACKBOX,79)@2
    // out out_feedback_out_49@20000000
    // out out_feedback_valid_out_49@20000000
    atax_i_llvm_fpga_push_i1_notcmp62104_push49_0 thei_llvm_fpga_push_i1_notcmp62104_push49_atax45 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out),
        .in_feedback_stall_in_49(i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_feedback_stall_out_49),
        .in_keep_going34(redist27_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg20_q),
        .out_data_out(),
        .out_feedback_out_49(i_llvm_fpga_push_i1_notcmp62104_push49_atax45_out_feedback_out_49),
        .out_feedback_valid_out_49(i_llvm_fpga_push_i1_notcmp62104_push49_atax45_out_feedback_valid_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_sync_together106_aunroll_x_in_c0_eni7191_7_tpl_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together106_aunroll_x_in_c0_eni7191_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together106_aunroll_x_in_c0_eni7191_7_tpl_1_q <= $unsigned(in_c0_eni7191_7_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44(BLACKBOX,68)@2
    // out out_feedback_stall_out_49@20000000
    atax_i_llvm_fpga_pop_i1_notcmp62104_pop49_0 thei_llvm_fpga_pop_i1_notcmp62104_pop49_atax44 (
        .in_data_in(redist7_sync_together106_aunroll_x_in_c0_eni7191_7_tpl_1_q),
        .in_dir(redist0_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_1_q),
        .in_feedback_in_49(i_llvm_fpga_push_i1_notcmp62104_push49_atax45_out_feedback_out_49),
        .in_feedback_valid_in_49(i_llvm_fpga_push_i1_notcmp62104_push49_atax45_out_feedback_valid_out_49),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg19_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out),
        .out_feedback_stall_out_49(i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_feedback_stall_out_49),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out_10(DELAY,299)
    dspba_delay_ver #( .width(1), .depth(10), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist22_i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out_10 ( .xin(i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out), .xout(redist22_i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg17(REG,177)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg17_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg17_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg18(REG,178)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg18_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg18_q <= $unsigned(redist9_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist29_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_3(DELAY,306)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist29_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_3_q <= $unsigned(redist28_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_exitcond20102_push48_atax43(BLACKBOX,76)@4
    // out out_feedback_out_48@20000000
    // out out_feedback_valid_out_48@20000000
    atax_i_llvm_fpga_push_i1_exitcond20102_push48_0 thei_llvm_fpga_push_i1_exitcond20102_push48_atax43 (
        .in_data_in(redist25_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_1_q),
        .in_feedback_stall_in_48(i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_feedback_stall_out_48),
        .in_keep_going34(redist29_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg18_q),
        .out_data_out(),
        .out_feedback_out_48(i_llvm_fpga_push_i1_exitcond20102_push48_atax43_out_feedback_out_48),
        .out_feedback_valid_out_48(i_llvm_fpga_push_i1_exitcond20102_push48_atax43_out_feedback_valid_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2(DELAY,283)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_delay_0 <= '0;
            redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_q <= '0;
        end
        else
        begin
            redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_delay_0 <= $unsigned(in_c0_eni7191_6_tpl);
            redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_q <= redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42(BLACKBOX,66)@3
    // out out_feedback_stall_out_48@20000000
    atax_i_llvm_fpga_pop_i1_exitcond20102_pop48_0 thei_llvm_fpga_pop_i1_exitcond20102_pop48_atax42 (
        .in_data_in(redist6_sync_together106_aunroll_x_in_c0_eni7191_6_tpl_2_q),
        .in_dir(redist1_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_2_q),
        .in_feedback_in_48(i_llvm_fpga_push_i1_exitcond20102_push48_atax43_out_feedback_out_48),
        .in_feedback_valid_in_48(i_llvm_fpga_push_i1_exitcond20102_push48_atax43_out_feedback_valid_out_48),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg17_q),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out),
        .out_feedback_stall_out_48(i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_feedback_stall_out_48),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_1(DELAY,302)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_1_q <= '0;
        end
        else
        begin
            redist25_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out);
        end
    end

    // redist26_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_9(DELAY,303)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist26_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_9 ( .xin(redist25_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_1_q), .xout(redist26_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_notEnable(LOGICAL,318)
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_nor(LOGICAL,319)
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_nor_q = ~ (redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_notEnable_q | redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_sticky_ena_q);

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_last(CONSTANT,315)
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_last_q = $unsigned(4'b0101);

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmp(LOGICAL,316)
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmp_b = {1'b0, redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_q};
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmp_q = $unsigned(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_last_q == redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmp_b ? 1'b1 : 1'b0);

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmpReg(REG,317)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmpReg_q <= $unsigned(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmp_q);
        end
    end

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_sticky_ena(REG,320)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_nor_q == 1'b1)
        begin
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_sticky_ena_q <= $unsigned(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_cmpReg_q);
        end
    end

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_enaAnd(LOGICAL,321)
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_enaAnd_q = redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_sticky_ena_q & VCC_q;

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt(COUNTER,313)
    // low=0, high=6, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i <= 3'd0;
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_eq <= 1'b0;
        end
        else
        begin
            if (redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i == 3'd5)
            begin
                redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_eq <= 1'b1;
            end
            else
            begin
                redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_eq <= 1'b0;
            end
            if (redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_eq == 1'b1)
            begin
                redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i) + $unsigned(3'd2);
            end
            else
            begin
                redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i <= $unsigned(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i) + $unsigned(3'd1);
            end
        end
    end
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_q = redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_i[2:0];

    // valid_fanout_reg15(REG,175)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg15_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg15_q <= $unsigned(redist8_sync_together106_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg16(REG,176)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg16_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg16_q <= $unsigned(redist9_sync_together106_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41(BLACKBOX,87)@4
    // out out_feedback_out_47@20000000
    // out out_feedback_valid_out_47@20000000
    atax_i_llvm_fpga_push_p67i32_arrayidx365100_push47_0 thei_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41 (
        .in_data_in(redist17_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_1_q),
        .in_feedback_stall_in_47(i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_feedback_stall_out_47),
        .in_keep_going34(redist29_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg16_q),
        .out_data_out(),
        .out_feedback_out_47(i_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41_out_feedback_out_47),
        .out_feedback_valid_out_47(i_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41_out_feedback_valid_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2(DELAY,282)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_delay_0 <= '0;
            redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_q <= '0;
        end
        else
        begin
            redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_delay_0 <= $unsigned(in_c0_eni7191_5_tpl);
            redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_q <= redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40(BLACKBOX,75)@3
    // out out_feedback_stall_out_47@20000000
    atax_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_0 thei_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40 (
        .in_data_in(redist5_sync_together106_aunroll_x_in_c0_eni7191_5_tpl_2_q),
        .in_dir(redist1_sync_together106_aunroll_x_in_c0_eni7191_1_tpl_2_q),
        .in_feedback_in_47(i_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41_out_feedback_out_47),
        .in_feedback_valid_in_47(i_llvm_fpga_push_p67i32_arrayidx365100_push47_atax41_out_feedback_valid_out_47),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg15_q),
        .out_data_out(i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out),
        .out_feedback_stall_out_47(i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_feedback_stall_out_47),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist17_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_1(DELAY,294)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_1_q <= '0;
        end
        else
        begin
            redist17_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out);
        end
    end

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_wraddr(REG,314)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_wraddr_q <= $unsigned(3'b110);
        end
        else
        begin
            redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_wraddr_q <= $unsigned(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_q);
        end
    end

    // redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem(DUALMEM,312)
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_ia = $unsigned(redist17_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_1_q);
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_aa = redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_wraddr_q;
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_ab = redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_rdcnt_q;
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(3),
        .numwords_a(7),
        .width_b(64),
        .widthad_b(3),
        .numwords_b(7),
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
    ) redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_dmem (
        .clocken1(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_reset0),
        .clock1(clock),
        .address_a(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_aa),
        .data_a(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_ab),
        .q_b(redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_iq),
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
    assign redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_q = redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_iq[63:0];

    // i_masked43_atax39(LOGICAL,88)@2 + 1
    assign i_masked43_atax39_qi = i_notcmp30_atax32_q & i_first_cleanup39_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked43_atax39_delay ( .xin(i_masked43_atax39_qi), .xout(i_masked43_atax39_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_masked43_atax39_q_10(DELAY,293)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_i_masked43_atax39_q_10 ( .xin(i_masked43_atax39_q), .xout(redist16_i_masked43_atax39_q_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_notEnable(LOGICAL,338)
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_notEnable_q = $unsigned(~ (VCC_q));

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_nor(LOGICAL,339)
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_nor_q = ~ (redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_notEnable_q | redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_sticky_ena_q);

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_last(CONSTANT,335)
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_last_q = $unsigned(3'b010);

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmp(LOGICAL,336)
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmp_b = {1'b0, redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_q};
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmp_q = $unsigned(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_last_q == redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmp_b ? 1'b1 : 1'b0);

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmpReg(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmpReg_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmp_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_sticky_ena(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_nor_q == 1'b1)
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_sticky_ena_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_cmpReg_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_enaAnd(LOGICAL,341)
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_enaAnd_q = redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_sticky_ena_q & VCC_q;

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt(COUNTER,333)
    // low=0, high=3, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_i <= 2'd0;
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_i <= $unsigned(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_i) + $unsigned(2'd1);
        end
    end
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_q = redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_i[1:0];

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_wraddr(REG,334)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_wraddr_q <= $unsigned(2'b11);
        end
        else
        begin
            redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_wraddr_q <= $unsigned(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_q);
        end
    end

    // redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem(DUALMEM,332)
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_ia = $unsigned(redist20_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_5_mem_q);
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_aa = redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_wraddr_q;
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_ab = redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_rdcnt_q;
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_reset0 = ~ (resetn);
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
        .intended_device_family("Arria 10")
    ) redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_dmem (
        .clocken1(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_reset0),
        .clock1(clock),
        .address_a(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_aa),
        .data_a(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_ab),
        .q_b(redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_iq),
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
    assign redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_q = redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_iq[31:0];

    // redist30_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_11(DELAY,307)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist30_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_11 ( .xin(redist29_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_3_q), .xout(redist30_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,158)@12
    assign out_c0_exi7206_0_tpl = GND_q;
    assign out_c0_exi7206_1_tpl = redist30_i_llvm_fpga_pipeline_keep_going34_atax6_out_data_out_11_q;
    assign out_c0_exi7206_2_tpl = redist21_i_llvm_fpga_pop_i32_add106_pop51_atax22_out_data_out_10_mem_q;
    assign out_c0_exi7206_3_tpl = i_llvm_fpga_mem_memdep_5_atax26_out_o_writeack;
    assign out_c0_exi7206_4_tpl = redist16_i_masked43_atax39_q_10_q;
    assign out_c0_exi7206_5_tpl = redist18_i_llvm_fpga_pop_p67i32_arrayidx365100_pop47_atax40_out_data_out_9_mem_q;
    assign out_c0_exi7206_6_tpl = redist26_i_llvm_fpga_pop_i1_exitcond20102_pop48_atax42_out_data_out_9_q;
    assign out_c0_exi7206_7_tpl = redist22_i_llvm_fpga_pop_i1_notcmp62104_pop49_atax44_out_data_out_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
