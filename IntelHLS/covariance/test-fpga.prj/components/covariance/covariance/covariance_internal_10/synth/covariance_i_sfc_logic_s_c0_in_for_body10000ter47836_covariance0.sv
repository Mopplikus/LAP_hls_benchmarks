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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body100_covariances_c0_enter47836_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body10000ter47836_covariance0 (
    input wire [31:0] in_unnamed_covariance11_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance11_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance11_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance11_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_memdep_4_covariance_avm_readdata,
    input wire [0:0] in_memdep_4_covariance_avm_writeack,
    input wire [0:0] in_memdep_4_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_4_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance11_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance11_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance11_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_burstcount,
    output wire [63:0] out_memdep_4_covariance_avm_address,
    output wire [0:0] out_memdep_4_covariance_avm_enable,
    output wire [0:0] out_memdep_4_covariance_avm_read,
    output wire [0:0] out_memdep_4_covariance_avm_write,
    output wire [63:0] out_memdep_4_covariance_avm_writedata,
    output wire [7:0] out_memdep_4_covariance_avm_byteenable,
    output wire [0:0] out_memdep_4_covariance_avm_burstcount,
    output wire [0:0] out_lsu_memdep_4_o_active,
    output wire [0:0] out_c0_exi3484_0_tpl,
    output wire [0:0] out_c0_exi3484_1_tpl,
    output wire [0:0] out_c0_exi3484_2_tpl,
    output wire [0:0] out_c0_exi3484_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni3477_0_tpl,
    input wire [0:0] in_c0_eni3477_1_tpl,
    input wire [31:0] in_c0_eni3477_2_tpl,
    input wire [0:0] in_c0_eni3477_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_cov_local_pmem_q;
    wire [1:0] c_i2_156_q;
    wire [31:0] c_i32_058_q;
    wire [31:0] c_i32_159_q;
    wire [5:0] c_i6_162_q;
    wire [5:0] c_i6_3060_q;
    wire [1:0] i_arrayidx1048_covariance17_vt_const_1_q;
    wire [63:0] i_arrayidx1048_covariance17_vt_join_q;
    wire [61:0] i_arrayidx1048_covariance17_vt_select_63_b;
    wire [1:0] i_cleanups_shl_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next29_covariance32_a;
    wire [6:0] i_fpga_indvars_iv_next29_covariance32_b;
    logic [6:0] i_fpga_indvars_iv_next29_covariance32_o;
    wire [6:0] i_fpga_indvars_iv_next29_covariance32_q;
    wire [63:0] i_idxprom101_covariance14_vt_join_q;
    wire [31:0] i_idxprom101_covariance14_vt_select_31_b;
    wire [63:0] i_idxprom103_covariance16_vt_join_q;
    wire [31:0] i_idxprom103_covariance16_vt_select_31_b;
    wire [32:0] i_inc110_covariance22_a;
    wire [32:0] i_inc110_covariance22_b;
    logic [32:0] i_inc110_covariance22_o;
    wire [32:0] i_inc110_covariance22_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a32i32_cov6635_covariance19_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_mem_memdep_4_covariance21_out_lsu_memdep_4_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_feedback_stall_out_76;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_feedback_stall_out_75;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_feedback_stall_out_74;
    wire [31:0] i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_feedback_stall_out_77;
    wire [31:0] i_llvm_fpga_pop_i32_j96_051_pop73_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j96_051_pop73_covariance15_out_feedback_stall_out_73;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24_out_feedback_stall_out_72;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notcmp37160_push76_covariance36_out_feedback_out_76;
    wire [0:0] i_llvm_fpga_push_i1_notcmp37160_push76_covariance36_out_feedback_valid_out_76;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance28_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_covariance28_out_feedback_valid_out_3;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push75_covariance31_out_feedback_out_75;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push75_covariance31_out_feedback_valid_out_75;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push74_covariance9_out_feedback_out_74;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push74_covariance9_out_feedback_valid_out_74;
    wire [31:0] i_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13_out_feedback_out_77;
    wire [0:0] i_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13_out_feedback_valid_out_77;
    wire [31:0] i_llvm_fpga_push_i32_j96_051_push73_covariance23_out_feedback_out_73;
    wire [0:0] i_llvm_fpga_push_i32_j96_051_push73_covariance23_out_feedback_valid_out_73;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33_out_feedback_out_72;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33_out_feedback_valid_out_72;
    wire [0:0] i_masked_covariance34_qi;
    reg [0:0] i_masked_covariance34_q;
    wire [0:0] i_next_cleanups_covariance30_s;
    reg [1:0] i_next_cleanups_covariance30_q;
    wire [1:0] i_next_initerations_covariance8_vt_join_q;
    wire [0:0] i_next_initerations_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp_covariance27_q;
    wire [0:0] i_or_covariance29_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next29_covariance32_sel_x_b;
    wire [31:0] bgTrunc_i_inc110_covariance22_sel_x_b;
    wire [12:0] i_arrayidx1048_covariance0_add_x_a;
    wire [12:0] i_arrayidx1048_covariance0_add_x_b;
    logic [12:0] i_arrayidx1048_covariance0_add_x_o;
    wire [12:0] i_arrayidx1048_covariance0_add_x_q;
    wire [63:0] i_arrayidx1048_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1048_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx1048_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx1048_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx1048_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx1048_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx1048_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx1048_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx1048_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx1048_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx1048_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx1048_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx1048_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx1048_covariance0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx108_covariance0_add_x_a;
    wire [64:0] i_arrayidx108_covariance0_add_x_b;
    logic [64:0] i_arrayidx108_covariance0_add_x_o;
    wire [64:0] i_arrayidx108_covariance0_add_x_q;
    wire [56:0] i_arrayidx108_covariance0_narrow_x_b;
    wire [63:0] i_arrayidx108_covariance0_shift_join_x_q;
    wire [64:0] i_arrayidx108_covariance0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx108_covariance0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx108_covariance0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx108_covariance0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx108_covariance0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx108_covariance0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx108_covariance0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_covariance3_sel_x_b;
    wire [63:0] i_idxprom101_covariance14_sel_x_b;
    wire [63:0] i_idxprom103_covariance16_sel_x_b;
    wire [0:0] i_last_initeration_covariance10_sel_x_b;
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
    wire [0:0] i_exitcond30_covariance25_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid163_i_cleanups_shl_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid169_i_next_initerations_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid171_i_next_initerations_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_q;
    wire [51:0] i_arrayidx1048_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx1048_covariance0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q;
    reg [0:0] redist1_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_2_q;
    reg [31:0] redist2_sync_together82_aunroll_x_in_c0_eni3477_2_tpl_1_q;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_q;
    reg [0:0] redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_delay_0;
    reg [0:0] redist4_sync_together82_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together82_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist6_sync_together82_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist6_sync_together82_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist6_sync_together82_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_8_delay_0;
    reg [0:0] redist7_sync_together82_aunroll_x_in_i_valid_8_delay_1;
    reg [0:0] redist9_i_masked_covariance34_q_8_q;
    reg [31:0] redist10_i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out_1_q;
    reg [0:0] redist11_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_7_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_3_q;
    reg [0:0] redist16_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q;
    reg [0:0] redist17_i_first_cleanup_xor_covariance4_q_1_q;
    reg [0:0] redist18_i_first_cleanup_xor_covariance4_q_5_q;
    reg [0:0] redist18_i_first_cleanup_xor_covariance4_q_5_delay_0;
    reg [0:0] redist18_i_first_cleanup_xor_covariance4_q_5_delay_1;
    reg [0:0] redist18_i_first_cleanup_xor_covariance4_q_5_delay_2;
    reg [63:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_inputreg0_q;
    wire redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_reset0;
    wire [63:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_ia;
    wire [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_aa;
    wire [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_ab;
    wire [63:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_iq;
    wire [63:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_q;
    wire [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_q;
    (* preserve *) reg [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_i;
    reg [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_cmpReg_q;
    wire [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_notEnable_q;
    wire [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_nor_q;
    (* dont_merge *) reg [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_sticky_ena_q;
    wire [0:0] redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist4_sync_together82_aunroll_x_in_i_valid_1(DELAY,179)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together82_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist4_sync_together82_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_covariance0_shift_x(BITSELECT,161)@2
    assign leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid163_i_cleanups_shl_covariance0_shift_x(BITJOIN,162)@2
    assign leftShiftStage0Idx1_uid163_i_cleanups_shl_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid162_i_cleanups_shl_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x(MUX,164)@2
    assign leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out or leftShiftStage0Idx1_uid163_i_cleanups_shl_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_q = leftShiftStage0Idx1_uid163_i_cleanups_shl_covariance0_shift_x_q;
            default : leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_covariance5_vt_select_1(BITSELECT,36)@2
    assign i_cleanups_shl_covariance5_vt_select_1_b = leftShiftStage0_uid165_i_cleanups_shl_covariance0_shift_x_q[1:1];

    // i_cleanups_shl_covariance5_vt_join(BITJOIN,35)@2
    assign i_cleanups_shl_covariance5_vt_join_q = {i_cleanups_shl_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_covariance4(LOGICAL,39)@2
    assign i_first_cleanup_xor_covariance4_q = i_first_cleanup_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp_covariance27(LOGICAL,74)@2
    assign i_notcmp_covariance27_q = i_exitcond30_covariance25_cmp_nsign_q ^ VCC_q;

    // i_or_covariance29(LOGICAL,75)@2
    assign i_or_covariance29_q = i_notcmp_covariance27_q | i_first_cleanup_xor_covariance4_q;

    // i_next_cleanups_covariance30(MUX,70)@2
    assign i_next_cleanups_covariance30_s = i_or_covariance29_q;
    always @(i_next_cleanups_covariance30_s or i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out or i_cleanups_shl_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups_covariance30_s)
            1'b0 : i_next_cleanups_covariance30_q = i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out;
            1'b1 : i_next_cleanups_covariance30_q = i_cleanups_shl_covariance5_vt_join_q;
            default : i_next_cleanups_covariance30_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push75_covariance31(BLACKBOX,64)@2
    // out out_feedback_out_75@20000000
    // out out_feedback_valid_out_75@20000000
    covariance_i_llvm_fpga_push_i2_cleanups_push75_0 thei_llvm_fpga_push_i2_cleanups_push75_covariance31 (
        .in_data_in(i_next_cleanups_covariance30_q),
        .in_feedback_stall_in_75(i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_feedback_stall_out_75),
        .in_keep_going(redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_75(i_llvm_fpga_push_i2_cleanups_push75_covariance31_out_feedback_out_75),
        .out_feedback_valid_out_75(i_llvm_fpga_push_i2_cleanups_push75_covariance31_out_feedback_valid_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1(DELAY,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q <= $unsigned(in_c0_eni3477_1_tpl);
        end
    end

    // c_i2_156(CONSTANT,24)
    assign c_i2_156_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop75_covariance2(BLACKBOX,56)@2
    // out out_feedback_stall_out_75@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups_pop75_0 thei_llvm_fpga_pop_i2_cleanups_pop75_covariance2 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q),
        .in_feedback_in_75(i_llvm_fpga_push_i2_cleanups_push75_covariance31_out_feedback_out_75),
        .in_feedback_valid_in_75(i_llvm_fpga_push_i2_cleanups_push75_covariance31_out_feedback_valid_out_75),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out),
        .out_feedback_stall_out_75(i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_feedback_stall_out_75),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_covariance3_sel_x(BITSELECT,125)@2
    assign i_first_cleanup_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop75_covariance2_out_data_out[0:0];

    // c_i6_162(CONSTANT,27)
    assign c_i6_162_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next29_covariance32(ADD,40)@2
    assign i_fpga_indvars_iv_next29_covariance32_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24_out_data_out};
    assign i_fpga_indvars_iv_next29_covariance32_b = {1'b0, c_i6_162_q};
    assign i_fpga_indvars_iv_next29_covariance32_o = $unsigned(i_fpga_indvars_iv_next29_covariance32_a) + $unsigned(i_fpga_indvars_iv_next29_covariance32_b);
    assign i_fpga_indvars_iv_next29_covariance32_q = i_fpga_indvars_iv_next29_covariance32_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next29_covariance32_sel_x(BITSELECT,82)@2
    assign bgTrunc_i_fpga_indvars_iv_next29_covariance32_sel_x_b = i_fpga_indvars_iv_next29_covariance32_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33(BLACKBOX,68)@2
    // out out_feedback_out_72@20000000
    // out out_feedback_valid_out_72@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_0 thei_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next29_covariance32_sel_x_b),
        .in_feedback_stall_in_72(i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24_out_feedback_stall_out_72),
        .in_keep_going(redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_72(i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33_out_feedback_out_72),
        .out_feedback_valid_out_72(i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33_out_feedback_valid_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3060(CONSTANT,28)
    assign c_i6_3060_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24(BLACKBOX,60)@2
    // out out_feedback_stall_out_72@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24 (
        .in_data_in(c_i6_3060_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q),
        .in_feedback_in_72(i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33_out_feedback_out_72),
        .in_feedback_valid_in_72(i_llvm_fpga_push_i6_fpga_indvars_iv28_push72_covariance33_out_feedback_valid_out_72),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24_out_data_out),
        .out_feedback_stall_out_72(i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24_out_feedback_stall_out_72),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond30_covariance25_cmp_nsign(LOGICAL,157)@2
    assign i_exitcond30_covariance25_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv28_pop72_covariance24_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_covariance28(BLACKBOX,63)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_covariance28 (
        .in_data_in(i_exitcond30_covariance25_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_covariance3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist4_sync_together82_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_covariance28_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_covariance28_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,138)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid169_i_next_initerations_covariance0_shift_x(BITSELECT,168)@2
    assign rightShiftStage0Idx1Rng1_uid169_i_next_initerations_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid171_i_next_initerations_covariance0_shift_x(BITJOIN,170)@2
    assign rightShiftStage0Idx1_uid171_i_next_initerations_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid169_i_next_initerations_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,136)@1 + 1
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

    // valid_fanout_reg2(REG,137)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push74_covariance9(BLACKBOX,65)@2
    // out out_feedback_out_74@20000000
    // out out_feedback_valid_out_74@20000000
    covariance_i_llvm_fpga_push_i2_initerations_push74_0 thei_llvm_fpga_push_i2_initerations_push74_covariance9 (
        .in_data_in(i_next_initerations_covariance8_vt_join_q),
        .in_feedback_stall_in_74(i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_feedback_stall_out_74),
        .in_keep_going(redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_74(i_llvm_fpga_push_i2_initerations_push74_covariance9_out_feedback_out_74),
        .out_feedback_valid_out_74(i_llvm_fpga_push_i2_initerations_push74_covariance9_out_feedback_valid_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop74_covariance7(BLACKBOX,57)@2
    // out out_feedback_stall_out_74@20000000
    covariance_i_llvm_fpga_pop_i2_initerations_pop74_0 thei_llvm_fpga_pop_i2_initerations_pop74_covariance7 (
        .in_data_in(c_i2_156_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q),
        .in_feedback_in_74(i_llvm_fpga_push_i2_initerations_push74_covariance9_out_feedback_out_74),
        .in_feedback_valid_in_74(i_llvm_fpga_push_i2_initerations_push74_covariance9_out_feedback_valid_out_74),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_data_out),
        .out_feedback_stall_out_74(i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_feedback_stall_out_74),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x(MUX,172)@2
    assign rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_data_out or rightShiftStage0Idx1_uid171_i_next_initerations_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop74_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_q = rightShiftStage0Idx1_uid171_i_next_initerations_covariance0_shift_x_q;
            default : rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_covariance8_vt_select_0(BITSELECT,73)@2
    assign i_next_initerations_covariance8_vt_select_0_b = rightShiftStage0_uid173_i_next_initerations_covariance0_shift_x_q[0:0];

    // i_next_initerations_covariance8_vt_join(BITJOIN,72)@2
    assign i_next_initerations_covariance8_vt_join_q = {GND_q, i_next_initerations_covariance8_vt_select_0_b};

    // i_last_initeration_covariance10_sel_x(BITSELECT,128)@2
    assign i_last_initeration_covariance10_sel_x_b = i_next_initerations_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_covariance11(BLACKBOX,61)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_covariance11 (
        .in_data_in(i_last_initeration_covariance10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out),
        .in_keep_going(redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6(BLACKBOX,54)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_covariance6 (
        .in_data_in(in_c0_eni3477_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_covariance11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_covariance28_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_covariance28_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,30)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,78)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,142)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist17_i_first_cleanup_xor_covariance4_q_1(DELAY,192)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_first_cleanup_xor_covariance4_q_1_q <= '0;
        end
        else
        begin
            redist17_i_first_cleanup_xor_covariance4_q_1_q <= $unsigned(i_first_cleanup_xor_covariance4_q);
        end
    end

    // c_covariance_cov_local_pmem(CONSTANT,4)
    assign c_covariance_cov_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx1048_covariance0_upper_bits_x_merged_bit_select(BITSELECT,174)@3
    assign i_arrayidx1048_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_cov_local_pmem_q[63:12];
    assign i_arrayidx1048_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_cov_local_pmem_q[11:0];

    // c_i32_058(CONSTANT,25)
    assign c_i32_058_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,141)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg10(REG,145)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist14_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q <= $unsigned(redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q);
        end
    end

    // c_i32_159(CONSTANT,26)
    assign c_i32_159_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc110_covariance22(ADD,49)@3
    assign i_inc110_covariance22_a = {1'b0, i_llvm_fpga_pop_i32_j96_051_pop73_covariance15_out_data_out};
    assign i_inc110_covariance22_b = {1'b0, c_i32_159_q};
    assign i_inc110_covariance22_o = $unsigned(i_inc110_covariance22_a) + $unsigned(i_inc110_covariance22_b);
    assign i_inc110_covariance22_q = i_inc110_covariance22_o[32:0];

    // bgTrunc_i_inc110_covariance22_sel_x(BITSELECT,83)@3
    assign bgTrunc_i_inc110_covariance22_sel_x_b = i_inc110_covariance22_q[31:0];

    // i_llvm_fpga_push_i32_j96_051_push73_covariance23(BLACKBOX,67)@3
    // out out_feedback_out_73@20000000
    // out out_feedback_valid_out_73@20000000
    covariance_i_llvm_fpga_push_i32_j96_051_push73_0 thei_llvm_fpga_push_i32_j96_051_push73_covariance23 (
        .in_data_in(bgTrunc_i_inc110_covariance22_sel_x_b),
        .in_feedback_stall_in_73(i_llvm_fpga_pop_i32_j96_051_pop73_covariance15_out_feedback_stall_out_73),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_73(i_llvm_fpga_push_i32_j96_051_push73_covariance23_out_feedback_out_73),
        .out_feedback_valid_out_73(i_llvm_fpga_push_i32_j96_051_push73_covariance23_out_feedback_valid_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_2(DELAY,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_2_q <= $unsigned(redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j96_051_pop73_covariance15(BLACKBOX,59)@3
    // out out_feedback_stall_out_73@20000000
    covariance_i_llvm_fpga_pop_i32_j96_051_pop73_0 thei_llvm_fpga_pop_i32_j96_051_pop73_covariance15 (
        .in_data_in(c_i32_058_q),
        .in_dir(redist1_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_2_q),
        .in_feedback_in_73(i_llvm_fpga_push_i32_j96_051_push73_covariance23_out_feedback_out_73),
        .in_feedback_valid_in_73(i_llvm_fpga_push_i32_j96_051_push73_covariance23_out_feedback_valid_out_73),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j96_051_pop73_covariance15_out_data_out),
        .out_feedback_stall_out_73(i_llvm_fpga_pop_i32_j96_051_pop73_covariance15_out_feedback_stall_out_73),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom103_covariance16_sel_x(BITSELECT,127)@3
    assign i_idxprom103_covariance16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j96_051_pop73_covariance15_out_data_out[31:0]};

    // i_idxprom103_covariance16_vt_select_31(BITSELECT,48)@3
    assign i_idxprom103_covariance16_vt_select_31_b = i_idxprom103_covariance16_sel_x_b[31:0];

    // i_idxprom103_covariance16_vt_join(BITJOIN,47)@3
    assign i_idxprom103_covariance16_vt_join_q = {c_i32_058_q, i_idxprom103_covariance16_vt_select_31_b};

    // i_arrayidx1048_covariance0_dupName_3_trunc_sel_x(BITSELECT,107)@3
    assign i_arrayidx1048_covariance0_dupName_3_trunc_sel_x_b = i_idxprom103_covariance16_vt_join_q[11:0];

    // i_arrayidx1048_covariance0_dupName_0_narrow_x(BITSELECT,98)@3
    assign i_arrayidx1048_covariance0_dupName_0_narrow_x_b = i_arrayidx1048_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx1048_covariance0_dupName_0_shift_join_x(BITJOIN,99)@3
    assign i_arrayidx1048_covariance0_dupName_0_shift_join_x_q = {i_arrayidx1048_covariance0_dupName_0_narrow_x_b, i_arrayidx1048_covariance17_vt_const_1_q};

    // valid_fanout_reg4(REG,139)@1 + 1
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

    // valid_fanout_reg5(REG,140)@1 + 1
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

    // i_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13(BLACKBOX,66)@2
    // out out_feedback_out_77@20000000
    // out out_feedback_valid_out_77@20000000
    covariance_i_llvm_fpga_push_i32_i56_152_pop39161_push77_0 thei_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13 (
        .in_data_in(i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out),
        .in_feedback_stall_in_77(i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_feedback_stall_out_77),
        .in_keep_going(redist13_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_77(i_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13_out_feedback_out_77),
        .out_feedback_valid_out_77(i_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13_out_feedback_valid_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together82_aunroll_x_in_c0_eni3477_2_tpl_1(DELAY,177)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together82_aunroll_x_in_c0_eni3477_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together82_aunroll_x_in_c0_eni3477_2_tpl_1_q <= $unsigned(in_c0_eni3477_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12(BLACKBOX,58)@2
    // out out_feedback_stall_out_77@20000000
    covariance_i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_0 thei_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12 (
        .in_data_in(redist2_sync_together82_aunroll_x_in_c0_eni3477_2_tpl_1_q),
        .in_dir(redist0_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_1_q),
        .in_feedback_in_77(i_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13_out_feedback_out_77),
        .in_feedback_valid_in_77(i_llvm_fpga_push_i32_i56_152_pop39161_push77_covariance13_out_feedback_valid_out_77),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out),
        .out_feedback_stall_out_77(i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_feedback_stall_out_77),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out_1(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out_1_q <= '0;
        end
        else
        begin
            redist10_i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out);
        end
    end

    // i_idxprom101_covariance14_sel_x(BITSELECT,126)@3
    assign i_idxprom101_covariance14_sel_x_b = {32'b00000000000000000000000000000000, redist10_i_llvm_fpga_pop_i32_i56_152_pop39161_pop77_covariance12_out_data_out_1_q[31:0]};

    // i_idxprom101_covariance14_vt_select_31(BITSELECT,44)@3
    assign i_idxprom101_covariance14_vt_select_31_b = i_idxprom101_covariance14_sel_x_b[31:0];

    // i_idxprom101_covariance14_vt_join(BITJOIN,43)@3
    assign i_idxprom101_covariance14_vt_join_q = {c_i32_058_q, i_idxprom101_covariance14_vt_select_31_b};

    // i_arrayidx1048_covariance0_dupName_0_trunc_sel_x(BITSELECT,105)@3
    assign i_arrayidx1048_covariance0_dupName_0_trunc_sel_x_b = i_idxprom101_covariance14_vt_join_q[11:0];

    // i_arrayidx1048_covariance0_narrow_x(BITSELECT,93)@3
    assign i_arrayidx1048_covariance0_narrow_x_b = i_arrayidx1048_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx1048_covariance0_c_i7_01_x(CONSTANT,92)
    assign i_arrayidx1048_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx1048_covariance0_shift_join_x(BITJOIN,94)@3
    assign i_arrayidx1048_covariance0_shift_join_x_q = {i_arrayidx1048_covariance0_narrow_x_b, i_arrayidx1048_covariance0_c_i7_01_x_q};

    // i_arrayidx1048_covariance0_add_x(ADD,89)@3
    assign i_arrayidx1048_covariance0_add_x_a = {1'b0, i_arrayidx1048_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1048_covariance0_add_x_b = {1'b0, i_arrayidx1048_covariance0_shift_join_x_q};
    assign i_arrayidx1048_covariance0_add_x_o = $unsigned(i_arrayidx1048_covariance0_add_x_a) + $unsigned(i_arrayidx1048_covariance0_add_x_b);
    assign i_arrayidx1048_covariance0_add_x_q = i_arrayidx1048_covariance0_add_x_o[12:0];

    // i_arrayidx1048_covariance0_dupName_2_trunc_sel_x(BITSELECT,106)@3
    assign i_arrayidx1048_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx1048_covariance0_add_x_q[11:0];

    // i_arrayidx1048_covariance0_dupName_0_add_x(ADD,97)@3
    assign i_arrayidx1048_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx1048_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx1048_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx1048_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx1048_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx1048_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx1048_covariance0_dupName_0_add_x_b);
    assign i_arrayidx1048_covariance0_dupName_0_add_x_q = i_arrayidx1048_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx1048_covariance0_dupName_5_trunc_sel_x(BITSELECT,108)@3
    assign i_arrayidx1048_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx1048_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx1048_covariance0_append_upper_bits_x(BITJOIN,90)@3
    assign i_arrayidx1048_covariance0_append_upper_bits_x_q = {i_arrayidx1048_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx1048_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx1048_covariance17_vt_select_63(BITSELECT,33)@3
    assign i_arrayidx1048_covariance17_vt_select_63_b = i_arrayidx1048_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx1048_covariance17_vt_const_1(CONSTANT,31)
    assign i_arrayidx1048_covariance17_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1048_covariance17_vt_join(BITJOIN,32)@3
    assign i_arrayidx1048_covariance17_vt_join_q = {i_arrayidx1048_covariance17_vt_select_63_b, i_arrayidx1048_covariance17_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_covariance11_covariance18(BLACKBOX,53)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_covariance11_covariance_avm_address@20000000
    // out out_unnamed_covariance11_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance11_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance11_covariance_avm_enable@20000000
    // out out_unnamed_covariance11_covariance_avm_read@20000000
    // out out_unnamed_covariance11_covariance_avm_write@20000000
    // out out_unnamed_covariance11_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_11_covariance0 thei_llvm_fpga_mem_unnamed_covariance11_covariance18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1048_covariance17_vt_join_q),
        .in_i_predicate(redist17_i_first_cleanup_xor_covariance4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_covariance11_covariance_avm_readdata(in_unnamed_covariance11_covariance_avm_readdata),
        .in_unnamed_covariance11_covariance_avm_readdatavalid(in_unnamed_covariance11_covariance_avm_readdatavalid),
        .in_unnamed_covariance11_covariance_avm_waitrequest(in_unnamed_covariance11_covariance_avm_waitrequest),
        .in_unnamed_covariance11_covariance_avm_writeack(in_unnamed_covariance11_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_covariance11_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_address),
        .out_unnamed_covariance11_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_burstcount),
        .out_unnamed_covariance11_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_byteenable),
        .out_unnamed_covariance11_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_enable),
        .out_unnamed_covariance11_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_read),
        .out_unnamed_covariance11_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_write),
        .out_unnamed_covariance11_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,86)
    assign out_unnamed_covariance11_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_address;
    assign out_unnamed_covariance11_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_enable;
    assign out_unnamed_covariance11_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_read;
    assign out_unnamed_covariance11_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_write;
    assign out_unnamed_covariance11_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_writedata;
    assign out_unnamed_covariance11_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_byteenable;
    assign out_unnamed_covariance11_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_unnamed_covariance11_covariance_avm_burstcount;

    // redist5_sync_together82_aunroll_x_in_i_valid_2(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together82_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist5_sync_together82_aunroll_x_in_i_valid_2_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist6_sync_together82_aunroll_x_in_i_valid_5(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together82_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist6_sync_together82_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist6_sync_together82_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist6_sync_together82_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
            redist6_sync_together82_aunroll_x_in_i_valid_5_delay_1 <= redist6_sync_together82_aunroll_x_in_i_valid_5_delay_0;
            redist6_sync_together82_aunroll_x_in_i_valid_5_q <= redist6_sync_together82_aunroll_x_in_i_valid_5_delay_1;
        end
    end

    // valid_fanout_reg9(REG,144)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist18_i_first_cleanup_xor_covariance4_q_5(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_first_cleanup_xor_covariance4_q_5_delay_0 <= '0;
            redist18_i_first_cleanup_xor_covariance4_q_5_delay_1 <= '0;
            redist18_i_first_cleanup_xor_covariance4_q_5_delay_2 <= '0;
            redist18_i_first_cleanup_xor_covariance4_q_5_q <= '0;
        end
        else
        begin
            redist18_i_first_cleanup_xor_covariance4_q_5_delay_0 <= $unsigned(redist17_i_first_cleanup_xor_covariance4_q_1_q);
            redist18_i_first_cleanup_xor_covariance4_q_5_delay_1 <= redist18_i_first_cleanup_xor_covariance4_q_5_delay_0;
            redist18_i_first_cleanup_xor_covariance4_q_5_delay_2 <= redist18_i_first_cleanup_xor_covariance4_q_5_delay_1;
            redist18_i_first_cleanup_xor_covariance4_q_5_q <= redist18_i_first_cleanup_xor_covariance4_q_5_delay_2;
        end
    end

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_notEnable(LOGICAL,199)
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_nor(LOGICAL,200)
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_nor_q = ~ (redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_notEnable_q | redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_sticky_ena_q);

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_cmpReg(REG,198)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_sticky_ena(REG,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_nor_q == 1'b1)
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_sticky_ena_q <= $unsigned(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_cmpReg_q);
        end
    end

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_enaAnd(LOGICAL,202)
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_enaAnd_q = redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_sticky_ena_q & VCC_q;

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt(COUNTER,196)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_i <= $unsigned(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_q = redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_i[0:0];

    // i_arrayidx108_covariance0_dupName_0_narrow_x(BITSELECT,115)@3
    assign i_arrayidx108_covariance0_dupName_0_narrow_x_b = i_idxprom103_covariance16_vt_join_q[61:0];

    // i_arrayidx108_covariance0_dupName_0_shift_join_x(BITJOIN,116)@3
    assign i_arrayidx108_covariance0_dupName_0_shift_join_x_q = {i_arrayidx108_covariance0_dupName_0_narrow_x_b, i_arrayidx1048_covariance17_vt_const_1_q};

    // i_arrayidx108_covariance0_narrow_x(BITSELECT,112)@3
    assign i_arrayidx108_covariance0_narrow_x_b = i_idxprom101_covariance14_vt_join_q[56:0];

    // i_arrayidx108_covariance0_shift_join_x(BITJOIN,113)@3
    assign i_arrayidx108_covariance0_shift_join_x_q = {i_arrayidx108_covariance0_narrow_x_b, i_arrayidx1048_covariance0_c_i7_01_x_q};

    // valid_fanout_reg8(REG,143)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a32i32_cov6635_covariance19(BLACKBOX,51)@3
    covariance_i_llvm_fpga_ffwd_dest_p1024a32i32_cov6635_0 thei_llvm_fpga_ffwd_dest_p1024a32i32_cov6635_covariance19 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a32i32_cov6635_covariance19_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx108_covariance0_add_x(ADD,109)@3
    assign i_arrayidx108_covariance0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a32i32_cov6635_covariance19_out_dest_data_out_1_0};
    assign i_arrayidx108_covariance0_add_x_b = {1'b0, i_arrayidx108_covariance0_shift_join_x_q};
    assign i_arrayidx108_covariance0_add_x_o = $unsigned(i_arrayidx108_covariance0_add_x_a) + $unsigned(i_arrayidx108_covariance0_add_x_b);
    assign i_arrayidx108_covariance0_add_x_q = i_arrayidx108_covariance0_add_x_o[64:0];

    // i_arrayidx108_covariance0_dupName_0_trunc_sel_x(BITSELECT,119)@3
    assign i_arrayidx108_covariance0_dupName_0_trunc_sel_x_b = i_arrayidx108_covariance0_add_x_q[63:0];

    // i_arrayidx108_covariance0_dupName_0_add_x(ADD,114)@3
    assign i_arrayidx108_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx108_covariance0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx108_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx108_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx108_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx108_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx108_covariance0_dupName_0_add_x_b);
    assign i_arrayidx108_covariance0_dupName_0_add_x_q = i_arrayidx108_covariance0_dupName_0_add_x_o[64:0];

    // i_arrayidx108_covariance0_dupName_2_trunc_sel_x(BITSELECT,120)@3
    assign i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx108_covariance0_dupName_0_add_x_q[63:0];

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_inputreg0(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_inputreg0_q <= '0;
        end
        else
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_inputreg0_q <= $unsigned(i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b);
        end
    end

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_wraddr(REG,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_wraddr_q <= $unsigned(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_q);
        end
    end

    // redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem(DUALMEM,195)
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_ia = $unsigned(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_inputreg0_q);
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_aa = redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_wraddr_q;
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_ab = redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_rdcnt_q;
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_reset0 = ~ (resetn);
    altera_syncram #(
        .ram_block_type("MLAB"),
        .operation_mode("DUAL_PORT"),
        .width_a(64),
        .widthad_a(1),
        .numwords_a(2),
        .width_b(64),
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
        .intended_device_family("Arria 10")
    ) redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_dmem (
        .clocken1(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_reset0),
        .clock1(clock),
        .address_a(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_aa),
        .data_a(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_ab),
        .q_b(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_iq),
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
    assign redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_q = redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_4_covariance21(BLACKBOX,52)@7
    // out out_lsu_memdep_4_o_active@20000000
    // out out_memdep_4_covariance_avm_address@20000000
    // out out_memdep_4_covariance_avm_burstcount@20000000
    // out out_memdep_4_covariance_avm_byteenable@20000000
    // out out_memdep_4_covariance_avm_enable@20000000
    // out out_memdep_4_covariance_avm_read@20000000
    // out out_memdep_4_covariance_avm_write@20000000
    // out out_memdep_4_covariance_avm_writedata@20000000
    // out out_o_stall@10
    // out out_o_valid@10
    // out out_o_writeack@10
    covariance_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_covariance21 (
        .in_flush(in_flush),
        .in_i_address(redist8_i_arrayidx108_covariance0_dupName_2_trunc_sel_x_b_4_mem_q),
        .in_i_predicate(redist18_i_first_cleanup_xor_covariance4_q_5_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_i_writedata(i_llvm_fpga_mem_unnamed_covariance11_covariance18_out_o_readdata),
        .in_memdep_4_covariance_avm_readdata(in_memdep_4_covariance_avm_readdata),
        .in_memdep_4_covariance_avm_readdatavalid(in_memdep_4_covariance_avm_readdatavalid),
        .in_memdep_4_covariance_avm_waitrequest(in_memdep_4_covariance_avm_waitrequest),
        .in_memdep_4_covariance_avm_writeack(in_memdep_4_covariance_avm_writeack),
        .out_lsu_memdep_4_o_active(i_llvm_fpga_mem_memdep_4_covariance21_out_lsu_memdep_4_o_active),
        .out_memdep_4_covariance_avm_address(i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_address),
        .out_memdep_4_covariance_avm_burstcount(i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_burstcount),
        .out_memdep_4_covariance_avm_byteenable(i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_byteenable),
        .out_memdep_4_covariance_avm_enable(i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_enable),
        .out_memdep_4_covariance_avm_read(i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_read),
        .out_memdep_4_covariance_avm_write(i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_write),
        .out_memdep_4_covariance_avm_writedata(i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,87)
    assign out_memdep_4_covariance_avm_address = i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_address;
    assign out_memdep_4_covariance_avm_enable = i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_enable;
    assign out_memdep_4_covariance_avm_read = i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_read;
    assign out_memdep_4_covariance_avm_write = i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_write;
    assign out_memdep_4_covariance_avm_writedata = i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_writedata;
    assign out_memdep_4_covariance_avm_byteenable = i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_byteenable;
    assign out_memdep_4_covariance_avm_burstcount = i_llvm_fpga_mem_memdep_4_covariance21_out_memdep_4_covariance_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,88)
    assign out_lsu_memdep_4_o_active = i_llvm_fpga_mem_memdep_4_covariance21_out_lsu_memdep_4_o_active;

    // redist7_sync_together82_aunroll_x_in_i_valid_8(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_8_delay_0 <= '0;
            redist7_sync_together82_aunroll_x_in_i_valid_8_delay_1 <= '0;
            redist7_sync_together82_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist7_sync_together82_aunroll_x_in_i_valid_8_delay_0 <= $unsigned(redist6_sync_together82_aunroll_x_in_i_valid_5_q);
            redist7_sync_together82_aunroll_x_in_i_valid_8_delay_1 <= redist7_sync_together82_aunroll_x_in_i_valid_8_delay_0;
            redist7_sync_together82_aunroll_x_in_i_valid_8_q <= redist7_sync_together82_aunroll_x_in_i_valid_8_delay_1;
        end
    end

    // valid_fanout_reg0(REG,135)@9 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist7_sync_together82_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg11(REG,146)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist4_sync_together82_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg12(REG,147)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist5_sync_together82_aunroll_x_in_i_valid_2_q);
        end
    end

    // redist15_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_3(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_3_q <= '0;
        end
        else
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_3_q <= $unsigned(redist14_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp37160_push76_covariance36(BLACKBOX,62)@4
    // out out_feedback_out_76@20000000
    // out out_feedback_valid_out_76@20000000
    covariance_i_llvm_fpga_push_i1_notcmp37160_push76_0 thei_llvm_fpga_push_i1_notcmp37160_push76_covariance36 (
        .in_data_in(redist11_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_1_q),
        .in_feedback_stall_in_76(i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_feedback_stall_out_76),
        .in_keep_going(redist15_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_76(i_llvm_fpga_push_i1_notcmp37160_push76_covariance36_out_feedback_out_76),
        .out_feedback_valid_out_76(i_llvm_fpga_push_i1_notcmp37160_push76_covariance36_out_feedback_valid_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2(DELAY,178)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_delay_0 <= '0;
            redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_delay_0 <= $unsigned(in_c0_eni3477_3_tpl);
            redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_q <= redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35(BLACKBOX,55)@3
    // out out_feedback_stall_out_76@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp37160_pop76_0 thei_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35 (
        .in_data_in(redist3_sync_together82_aunroll_x_in_c0_eni3477_3_tpl_2_q),
        .in_dir(redist1_sync_together82_aunroll_x_in_c0_eni3477_1_tpl_2_q),
        .in_feedback_in_76(i_llvm_fpga_push_i1_notcmp37160_push76_covariance36_out_feedback_out_76),
        .in_feedback_valid_in_76(i_llvm_fpga_push_i1_notcmp37160_push76_covariance36_out_feedback_valid_out_76),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out),
        .out_feedback_stall_out_76(i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_feedback_stall_out_76),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist11_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out);
        end
    end

    // redist12_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_7(DELAY,187)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist12_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_7 ( .xin(redist11_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_1_q), .xout(redist12_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_covariance34(LOGICAL,69)@2 + 1
    assign i_masked_covariance34_qi = i_notcmp_covariance27_q & i_first_cleanup_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_covariance34_delay ( .xin(i_masked_covariance34_qi), .xout(i_masked_covariance34_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_masked_covariance34_q_8(DELAY,184)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_masked_covariance34_q_8 ( .xin(i_masked_covariance34_q), .xout(redist9_i_masked_covariance34_q_8_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist16_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9(DELAY,191)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist16_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9 ( .xin(redist15_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_3_q), .xout(redist16_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,133)@10
    assign out_c0_exi3484_0_tpl = GND_q;
    assign out_c0_exi3484_1_tpl = redist16_i_llvm_fpga_pipeline_keep_going_covariance6_out_data_out_9_q;
    assign out_c0_exi3484_2_tpl = redist9_i_masked_covariance34_q_8_q;
    assign out_c0_exi3484_3_tpl = redist12_i_llvm_fpga_pop_i1_notcmp37160_pop76_covariance35_out_data_out_7_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
