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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body10_histograms_c0_enter633_histogram0
// Created for function/kernel histogram
// SystemVerilog created on Tue Apr  4 14:08:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_i_sfc_logic_s_c0_in_for_body100000_enter633_histogram0 (
    input wire [31:0] in_lm1_histogram_avm_readdata,
    input wire [0:0] in_lm1_histogram_avm_writeack,
    input wire [0:0] in_lm1_histogram_avm_waitrequest,
    input wire [0:0] in_lm1_histogram_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_histogram6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_histogram6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire [31:0] in_lm92_histogram_avm_readdata,
    input wire [0:0] in_lm92_histogram_avm_writeack,
    input wire [0:0] in_lm92_histogram_avm_waitrequest,
    input wire [0:0] in_lm92_histogram_avm_readdatavalid,
    output wire [31:0] out_lm1_histogram_avm_address,
    output wire [0:0] out_lm1_histogram_avm_enable,
    output wire [0:0] out_lm1_histogram_avm_read,
    output wire [0:0] out_lm1_histogram_avm_write,
    output wire [31:0] out_lm1_histogram_avm_writedata,
    output wire [3:0] out_lm1_histogram_avm_byteenable,
    output wire [0:0] out_lm1_histogram_avm_burstcount,
    input wire [31:0] in_lm113_histogram_avm_readdata,
    input wire [0:0] in_lm113_histogram_avm_writeack,
    input wire [0:0] in_lm113_histogram_avm_waitrequest,
    input wire [0:0] in_lm113_histogram_avm_readdatavalid,
    output wire [31:0] out_lm92_histogram_avm_address,
    output wire [0:0] out_lm92_histogram_avm_enable,
    output wire [0:0] out_lm92_histogram_avm_read,
    output wire [0:0] out_lm92_histogram_avm_write,
    output wire [31:0] out_lm92_histogram_avm_writedata,
    output wire [3:0] out_lm92_histogram_avm_byteenable,
    output wire [0:0] out_lm92_histogram_avm_burstcount,
    input wire [31:0] in_memdep_6_histogram_avm_readdata,
    input wire [0:0] in_memdep_6_histogram_avm_writeack,
    input wire [0:0] in_memdep_6_histogram_avm_waitrequest,
    input wire [0:0] in_memdep_6_histogram_avm_readdatavalid,
    output wire [31:0] out_lm113_histogram_avm_address,
    output wire [0:0] out_lm113_histogram_avm_enable,
    output wire [0:0] out_lm113_histogram_avm_read,
    output wire [0:0] out_lm113_histogram_avm_write,
    output wire [31:0] out_lm113_histogram_avm_writedata,
    output wire [3:0] out_lm113_histogram_avm_byteenable,
    output wire [0:0] out_lm113_histogram_avm_burstcount,
    output wire [31:0] out_memdep_6_histogram_avm_address,
    output wire [0:0] out_memdep_6_histogram_avm_enable,
    output wire [0:0] out_memdep_6_histogram_avm_read,
    output wire [0:0] out_memdep_6_histogram_avm_write,
    output wire [31:0] out_memdep_6_histogram_avm_writedata,
    output wire [3:0] out_memdep_6_histogram_avm_byteenable,
    output wire [0:0] out_memdep_6_histogram_avm_burstcount,
    output wire [0:0] out_c0_exi266_0_tpl,
    output wire [0:0] out_c0_exi266_1_tpl,
    output wire [0:0] out_c0_exi266_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_histogram1,
    input wire [0:0] in_c0_eni162_0_tpl,
    input wire [0:0] in_c0_eni162_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_histogram_feature_pmem_q;
    wire [63:0] c_histogram_hist_pmem_q;
    wire [63:0] c_histogram_weight_pmem_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_171_q;
    wire [32:0] c_i33_173_q;
    wire [32:0] c_i33_undef69_q;
    wire [3:0] c_i4_766_q;
    wire [31:0] i_add17_histogram28_out_primWireOut;
    wire [1:0] i_arrayidx125_histogram19_vt_const_1_q;
    wire [63:0] i_arrayidx125_histogram19_vt_join_q;
    wire [61:0] i_arrayidx125_histogram19_vt_select_63_b;
    wire [63:0] i_arrayidx146_histogram22_vt_join_q;
    wire [61:0] i_arrayidx146_histogram22_vt_select_63_b;
    wire [63:0] i_arrayidx167_histogram25_vt_join_q;
    wire [61:0] i_arrayidx167_histogram25_vt_select_63_b;
    wire [3:0] i_cleanups_shl27_histogram5_vt_join_q;
    wire [2:0] i_cleanups_shl27_histogram5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor29_histogram4_q;
    wire [0:0] i_first_cleanup_xor29_or_histogram20_q;
    wire [0:0] i_fpga_indvars_iv7_replace_phi_histogram14_s;
    reg [32:0] i_fpga_indvars_iv7_replace_phi_histogram14_q;
    wire [33:0] i_fpga_indvars_iv_next8_histogram35_a;
    wire [33:0] i_fpga_indvars_iv_next8_histogram35_b;
    logic [33:0] i_fpga_indvars_iv_next8_histogram35_o;
    wire [33:0] i_fpga_indvars_iv_next8_histogram35_q;
    wire [63:0] i_idxprom11_histogram18_vt_join_q;
    wire [31:0] i_idxprom11_histogram18_vt_select_31_b;
    wire [32:0] i_inc21_histogram31_a;
    wire [32:0] i_inc21_histogram31_b;
    logic [32:0] i_inc21_histogram31_o;
    wire [32:0] i_inc21_histogram31_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp92117_histogram37_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp92118_histogram15_out_dest_data_out_2_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_histogram7_histogram12_out_dest_data_out_3_0;
    wire [31:0] i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm113_histogram27_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram21_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm92_histogram23_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_6_histogram29_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_histogram6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_histogram6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_histogram6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_histogram6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_histogram6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26_out_feedback_stall_out_16;
    wire [31:0] i_llvm_fpga_pop_i32_i_122_pop15_histogram17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_122_pop15_histogram17_out_feedback_stall_out_15;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13_out_feedback_stall_out_14;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_feedback_stall_out_18;
    wire [3:0] i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration25_histogram11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration25_histogram11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_histogram30_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_histogram30_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond33_histogram40_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond33_histogram40_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_i_122_push15_histogram32_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_i_122_push15_histogram32_out_feedback_valid_out_15;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36_out_feedback_valid_out_14;
    wire [7:0] i_llvm_fpga_push_i4_cleanups26_push18_histogram43_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i4_cleanups26_push18_histogram43_out_feedback_valid_out_18;
    wire [7:0] i_llvm_fpga_push_i4_initerations21_push17_histogram9_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i4_initerations21_push17_histogram9_out_feedback_valid_out_17;
    wire [0:0] i_masked32_histogram44_qi;
    reg [0:0] i_masked32_histogram44_q;
    wire [0:0] i_next_cleanups31_histogram42_s;
    reg [3:0] i_next_cleanups31_histogram42_q;
    wire [3:0] i_next_initerations22_histogram8_vt_join_q;
    wire [2:0] i_next_initerations22_histogram8_vt_select_2_b;
    wire [0:0] i_notcmp20_histogram39_q;
    wire [0:0] i_or30_histogram41_q;
    wire [0:0] i_unnamed_histogram16_q;
    wire [0:0] i_unnamed_histogram38_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next8_histogram35_sel_x_b;
    wire [31:0] bgTrunc_i_inc21_histogram31_sel_x_b;
    wire [9:0] i_arrayidx125_histogram0_add_x_a;
    wire [9:0] i_arrayidx125_histogram0_add_x_b;
    logic [9:0] i_arrayidx125_histogram0_add_x_o;
    wire [9:0] i_arrayidx125_histogram0_add_x_q;
    wire [63:0] i_arrayidx125_histogram0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx125_histogram0_narrow_x_b;
    wire [8:0] i_arrayidx125_histogram0_shift_join_x_q;
    wire [8:0] i_arrayidx125_histogram0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx125_histogram0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx146_histogram0_add_x_a;
    wire [9:0] i_arrayidx146_histogram0_add_x_b;
    logic [9:0] i_arrayidx146_histogram0_add_x_o;
    wire [9:0] i_arrayidx146_histogram0_add_x_q;
    wire [63:0] i_arrayidx146_histogram0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx146_histogram0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx167_histogram0_add_x_a;
    wire [9:0] i_arrayidx167_histogram0_add_x_b;
    logic [9:0] i_arrayidx167_histogram0_add_x_o;
    wire [9:0] i_arrayidx167_histogram0_add_x_q;
    wire [63:0] i_arrayidx167_histogram0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx167_histogram0_narrow_x_b;
    wire [8:0] i_arrayidx167_histogram0_shift_join_x_q;
    wire [8:0] i_arrayidx167_histogram0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx167_histogram0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup28_histogram3_sel_x_b;
    wire [63:0] i_idxprom11_histogram18_sel_x_b;
    wire [63:0] i_idxprom15_histogram24_sel_x_b;
    wire [0:0] i_last_initeration24_histogram10_sel_x_b;
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
    wire [0:0] i_exitcond9_histogram33_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl27_histogram0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl27_histogram0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid188_i_cleanups_shl27_histogram0_shift_x_q;
    wire [0:0] leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_s;
    reg [3:0] leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid194_i_next_initerations22_histogram0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid196_i_next_initerations22_histogram0_shift_x_q;
    wire [0:0] rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_s;
    reg [3:0] rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_q;
    wire [54:0] i_arrayidx125_histogram0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx125_histogram0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx167_histogram0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx167_histogram0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx146_histogram0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx146_histogram0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q;
    reg [0:0] redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_0;
    reg [0:0] redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_1;
    reg [0:0] redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_2;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_q;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_0;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_1;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_2;
    reg [0:0] redist2_sync_together92_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist2_sync_together92_aunroll_x_in_i_valid_3_delay_0;
    reg [0:0] redist2_sync_together92_aunroll_x_in_i_valid_3_delay_1;
    reg [0:0] redist3_sync_together92_aunroll_x_in_i_valid_4_q;
    reg [0:0] redist4_sync_together92_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist4_sync_together92_aunroll_x_in_i_valid_7_delay_0;
    reg [0:0] redist4_sync_together92_aunroll_x_in_i_valid_7_delay_1;
    reg [0:0] redist5_sync_together92_aunroll_x_in_i_valid_11_q;
    reg [0:0] redist5_sync_together92_aunroll_x_in_i_valid_11_delay_0;
    reg [0:0] redist5_sync_together92_aunroll_x_in_i_valid_11_delay_1;
    reg [0:0] redist5_sync_together92_aunroll_x_in_i_valid_11_delay_2;
    reg [0:0] redist6_sync_together92_aunroll_x_in_i_valid_12_q;
    reg [8:0] redist7_i_arrayidx125_histogram0_shift_join_x_q_1_q;
    reg [0:0] redist8_i_masked32_histogram44_q_9_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out_9_q;
    reg [0:0] redist10_i_first_cleanup_xor29_or_histogram20_q_1_q;
    reg [0:0] redist11_i_first_cleanup_xor29_or_histogram20_q_4_q;
    reg [0:0] redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_0;
    reg [0:0] redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_1;
    reg [0:0] redist12_i_first_cleanup_xor29_or_histogram20_q_8_q;
    reg [0:0] redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_0;
    reg [0:0] redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_1;
    reg [0:0] redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_2;
    reg [63:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_inputreg0_q;
    wire redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_reset0;
    wire [63:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_ia;
    wire [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_aa;
    wire [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_ab;
    wire [63:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_iq;
    wire [63:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_q;
    wire [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_q;
    (* preserve *) reg [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_i;
    reg [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_wraddr_q;
    (* dont_merge *) reg [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_cmpReg_q;
    wire [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_notEnable_q;
    wire [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_nor_q;
    (* dont_merge *) reg [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_sticky_ena_q;
    wire [0:0] redist13_i_arrayidx167_histogram25_vt_join_q_4_enaAnd_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together92_aunroll_x_in_i_valid_3(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together92_aunroll_x_in_i_valid_3_delay_0 <= '0;
            redist2_sync_together92_aunroll_x_in_i_valid_3_delay_1 <= '0;
            redist2_sync_together92_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist2_sync_together92_aunroll_x_in_i_valid_3_delay_0 <= $unsigned(in_i_valid);
            redist2_sync_together92_aunroll_x_in_i_valid_3_delay_1 <= redist2_sync_together92_aunroll_x_in_i_valid_3_delay_0;
            redist2_sync_together92_aunroll_x_in_i_valid_3_q <= redist2_sync_together92_aunroll_x_in_i_valid_3_delay_1;
        end
    end

    // redist3_sync_together92_aunroll_x_in_i_valid_4(DELAY,205)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together92_aunroll_x_in_i_valid_4_q <= '0;
        end
        else
        begin
            redist3_sync_together92_aunroll_x_in_i_valid_4_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl27_histogram0_shift_x(BITSELECT,186)@5
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl27_histogram0_shift_x_in = i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl27_histogram0_shift_x_b = leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl27_histogram0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid188_i_cleanups_shl27_histogram0_shift_x(BITJOIN,187)@5
    assign leftShiftStage0Idx1_uid188_i_cleanups_shl27_histogram0_shift_x_q = {leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl27_histogram0_shift_x_b, GND_q};

    // leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x(MUX,189)@5
    assign leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_s or i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out or leftShiftStage0Idx1_uid188_i_cleanups_shl27_histogram0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_s)
            1'b0 : leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_q = i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out;
            1'b1 : leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_q = leftShiftStage0Idx1_uid188_i_cleanups_shl27_histogram0_shift_x_q;
            default : leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl27_histogram5_vt_select_3(BITSELECT,48)@5
    assign i_cleanups_shl27_histogram5_vt_select_3_b = leftShiftStage0_uid190_i_cleanups_shl27_histogram0_shift_x_q[3:1];

    // i_cleanups_shl27_histogram5_vt_join(BITJOIN,47)@5
    assign i_cleanups_shl27_histogram5_vt_join_q = {i_cleanups_shl27_histogram5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor29_histogram4(LOGICAL,51)@5
    assign i_first_cleanup_xor29_histogram4_q = i_first_cleanup28_histogram3_sel_x_b ^ VCC_q;

    // i_notcmp20_histogram39(LOGICAL,88)@5
    assign i_notcmp20_histogram39_q = i_unnamed_histogram38_q ^ VCC_q;

    // i_or30_histogram41(LOGICAL,89)@5
    assign i_or30_histogram41_q = i_notcmp20_histogram39_q | i_first_cleanup_xor29_histogram4_q;

    // i_next_cleanups31_histogram42(MUX,84)@5
    assign i_next_cleanups31_histogram42_s = i_or30_histogram41_q;
    always @(i_next_cleanups31_histogram42_s or i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out or i_cleanups_shl27_histogram5_vt_join_q)
    begin
        unique case (i_next_cleanups31_histogram42_s)
            1'b0 : i_next_cleanups31_histogram42_q = i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out;
            1'b1 : i_next_cleanups31_histogram42_q = i_cleanups_shl27_histogram5_vt_join_q;
            default : i_next_cleanups31_histogram42_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups26_push18_histogram43(BLACKBOX,81)@5
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    histogram_i_llvm_fpga_push_i4_cleanups26_push18_0 thei_llvm_fpga_push_i4_cleanups26_push18_histogram43 (
        .in_data_in(i_next_cleanups31_histogram42_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_feedback_stall_out_18),
        .in_keep_going23(i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i4_cleanups26_push18_histogram43_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i4_cleanups26_push18_histogram43_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_766(CONSTANT,33)
    assign c_i4_766_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2(BLACKBOX,74)@5
    // out out_feedback_stall_out_18@20000000
    histogram_i_llvm_fpga_pop_i4_cleanups26_pop18_0 thei_llvm_fpga_pop_i4_cleanups26_pop18_histogram2 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q),
        .in_feedback_in_18(i_llvm_fpga_push_i4_cleanups26_push18_histogram43_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i4_cleanups26_push18_histogram43_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup28_histogram3_sel_x(BITSELECT,150)@5
    assign i_first_cleanup28_histogram3_sel_x_b = i_llvm_fpga_pop_i4_cleanups26_pop18_histogram2_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_histogram7_histogram12(BLACKBOX,65)@5
    histogram_i_llvm_fpga_ffwd_dest_i33_unnamed_7_histogram0 thei_llvm_fpga_ffwd_dest_i33_unnamed_histogram7_histogram12 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_histogram7_histogram12_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_173(CONSTANT,30)
    assign c_i33_173_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next8_histogram35(ADD,54)@5
    assign i_fpga_indvars_iv_next8_histogram35_a = {1'b0, i_fpga_indvars_iv7_replace_phi_histogram14_q};
    assign i_fpga_indvars_iv_next8_histogram35_b = {1'b0, c_i33_173_q};
    assign i_fpga_indvars_iv_next8_histogram35_o = $unsigned(i_fpga_indvars_iv_next8_histogram35_a) + $unsigned(i_fpga_indvars_iv_next8_histogram35_b);
    assign i_fpga_indvars_iv_next8_histogram35_q = i_fpga_indvars_iv_next8_histogram35_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next8_histogram35_sel_x(BITSELECT,100)@5
    assign bgTrunc_i_fpga_indvars_iv_next8_histogram35_sel_x_b = i_fpga_indvars_iv_next8_histogram35_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36(BLACKBOX,80)@5
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    histogram_i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_0 thei_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next8_histogram35_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13_out_feedback_stall_out_14),
        .in_keep_going23(i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef69(CONSTANT,31)
    assign c_i33_undef69_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13(BLACKBOX,73)@5
    // out out_feedback_stall_out_14@20000000
    histogram_i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13 (
        .in_data_in(c_i33_undef69_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q),
        .in_feedback_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i33_fpga_indvars_iv7_push14_histogram36_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv7_replace_phi_histogram14(MUX,53)@5
    assign i_fpga_indvars_iv7_replace_phi_histogram14_s = redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q;
    always @(i_fpga_indvars_iv7_replace_phi_histogram14_s or i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_histogram7_histogram12_out_dest_data_out_3_0)
    begin
        unique case (i_fpga_indvars_iv7_replace_phi_histogram14_s)
            1'b0 : i_fpga_indvars_iv7_replace_phi_histogram14_q = i_llvm_fpga_pop_i33_fpga_indvars_iv7_pop14_histogram13_out_data_out;
            1'b1 : i_fpga_indvars_iv7_replace_phi_histogram14_q = i_llvm_fpga_ffwd_dest_i33_unnamed_histogram7_histogram12_out_dest_data_out_3_0;
            default : i_fpga_indvars_iv7_replace_phi_histogram14_q = 33'b0;
        endcase
    end

    // i_exitcond9_histogram33_cmp_nsign(LOGICAL,182)@5
    assign i_exitcond9_histogram33_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv7_replace_phi_histogram14_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp92117_histogram37(BLACKBOX,63)@5
    histogram_i_llvm_fpga_ffwd_dest_i1_cmp92117_0 thei_llvm_fpga_ffwd_dest_i1_cmp92117_histogram37 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp92117_histogram37_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_histogram38(LOGICAL,91)@5
    assign i_unnamed_histogram38_q = i_llvm_fpga_ffwd_dest_i1_cmp92117_histogram37_out_dest_data_out_2_0 & i_exitcond9_histogram33_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond33_histogram40(BLACKBOX,78)@5
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    histogram_i_llvm_fpga_push_i1_notexitcond33_0 thei_llvm_fpga_push_i1_notexitcond33_histogram40 (
        .in_data_in(i_unnamed_histogram38_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going23_histogram6_out_not_exitcond_stall_out),
        .in_first_cleanup28(i_first_cleanup28_histogram3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond33_histogram40_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond33_histogram40_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,163)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid194_i_next_initerations22_histogram0_shift_x(BITSELECT,193)@5
    assign rightShiftStage0Idx1Rng1_uid194_i_next_initerations22_histogram0_shift_x_b = i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid196_i_next_initerations22_histogram0_shift_x(BITJOIN,195)@5
    assign rightShiftStage0Idx1_uid196_i_next_initerations22_histogram0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid194_i_next_initerations22_histogram0_shift_x_b};

    // valid_fanout_reg1(REG,161)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg2(REG,162)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations21_push17_histogram9(BLACKBOX,82)@5
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    histogram_i_llvm_fpga_push_i4_initerations21_push17_0 thei_llvm_fpga_push_i4_initerations21_push17_histogram9 (
        .in_data_in(i_next_initerations22_histogram8_vt_join_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_feedback_stall_out_17),
        .in_keep_going23(i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i4_initerations21_push17_histogram9_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i4_initerations21_push17_histogram9_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations21_pop17_histogram7(BLACKBOX,75)@5
    // out out_feedback_stall_out_17@20000000
    histogram_i_llvm_fpga_pop_i4_initerations21_pop17_0 thei_llvm_fpga_pop_i4_initerations21_pop17_histogram7 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q),
        .in_feedback_in_17(i_llvm_fpga_push_i4_initerations21_push17_histogram9_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i4_initerations21_push17_histogram9_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x(MUX,197)@5
    assign rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_s or i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_data_out or rightShiftStage0Idx1_uid196_i_next_initerations22_histogram0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_s)
            1'b0 : rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_q = i_llvm_fpga_pop_i4_initerations21_pop17_histogram7_out_data_out;
            1'b1 : rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_q = rightShiftStage0Idx1_uid196_i_next_initerations22_histogram0_shift_x_q;
            default : rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations22_histogram8_vt_select_2(BITSELECT,87)@5
    assign i_next_initerations22_histogram8_vt_select_2_b = rightShiftStage0_uid198_i_next_initerations22_histogram0_shift_x_q[2:0];

    // i_next_initerations22_histogram8_vt_join(BITJOIN,86)@5
    assign i_next_initerations22_histogram8_vt_join_q = {GND_q, i_next_initerations22_histogram8_vt_select_2_b};

    // i_last_initeration24_histogram10_sel_x(BITSELECT,153)@5
    assign i_last_initeration24_histogram10_sel_x_b = i_next_initerations22_histogram8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration25_histogram11(BLACKBOX,76)@5
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    histogram_i_llvm_fpga_push_i1_lastiniteration25_0 thei_llvm_fpga_push_i1_lastiniteration25_histogram11 (
        .in_data_in(i_last_initeration24_histogram10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going23_histogram6_out_initeration_stall_out),
        .in_keep_going23(i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration25_histogram11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration25_histogram11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_0 <= '0;
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_1 <= '0;
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_2 <= '0;
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q <= '0;
        end
        else
        begin
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_0 <= $unsigned(in_c0_eni162_1_tpl);
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_1 <= redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_0;
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_2 <= redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_1;
            redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q <= redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_delay_2;
        end
    end

    // i_llvm_fpga_pipeline_keep_going23_histogram6(BLACKBOX,70)@5
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    histogram_i_llvm_fpga_pipeline_keep_going23_0 thei_llvm_fpga_pipeline_keep_going23_histogram6 (
        .in_data_in(redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration25_histogram11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration25_histogram11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond33_histogram40_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond33_histogram40_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist3_sync_together92_aunroll_x_in_i_valid_4_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going23_histogram6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going23_histogram6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going23_histogram6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going23_histogram6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going23_histogram6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,35)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_histogram6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going23_histogram6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_histogram6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going23_histogram6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,95)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going23_histogram6_out_pipeline_valid_out;

    // valid_fanout_reg6(REG,166)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg4(REG,164)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp92118_histogram15(BLACKBOX,64)@5
    histogram_i_llvm_fpga_ffwd_dest_i1_cmp92118_0 thei_llvm_fpga_ffwd_dest_i1_cmp92118_histogram15 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i1_cmp92118_histogram15_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_histogram16(LOGICAL,90)@5
    assign i_unnamed_histogram16_q = i_llvm_fpga_ffwd_dest_i1_cmp92118_histogram15_out_dest_data_out_2_0 ^ VCC_q;

    // i_first_cleanup_xor29_or_histogram20(LOGICAL,52)@5
    assign i_first_cleanup_xor29_or_histogram20_q = i_unnamed_histogram16_q | i_first_cleanup_xor29_histogram4_q;

    // c_histogram_feature_pmem(CONSTANT,4)
    assign c_histogram_feature_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx125_histogram0_upper_bits_x_merged_bit_select(BITSELECT,199)@5
    assign i_arrayidx125_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_feature_pmem_q[63:9];
    assign i_arrayidx125_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_feature_pmem_q[8:0];

    // c_i32_070(CONSTANT,28)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg5(REG,165)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // valid_fanout_reg12(REG,172)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_3_q);
        end
    end

    // c_i32_171(CONSTANT,29)
    assign c_i32_171_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc21_histogram31(ADD,61)@5
    assign i_inc21_histogram31_a = {1'b0, i_llvm_fpga_pop_i32_i_122_pop15_histogram17_out_data_out};
    assign i_inc21_histogram31_b = {1'b0, c_i32_171_q};
    assign i_inc21_histogram31_o = $unsigned(i_inc21_histogram31_a) + $unsigned(i_inc21_histogram31_b);
    assign i_inc21_histogram31_q = i_inc21_histogram31_o[32:0];

    // bgTrunc_i_inc21_histogram31_sel_x(BITSELECT,101)@5
    assign bgTrunc_i_inc21_histogram31_sel_x_b = i_inc21_histogram31_q[31:0];

    // i_llvm_fpga_push_i32_i_122_push15_histogram32(BLACKBOX,79)@5
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    histogram_i_llvm_fpga_push_i32_i_122_push15_0 thei_llvm_fpga_push_i32_i_122_push15_histogram32 (
        .in_data_in(bgTrunc_i_inc21_histogram31_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_i_122_pop15_histogram17_out_feedback_stall_out_15),
        .in_keep_going23(i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_i_122_push15_histogram32_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_i_122_push15_histogram32_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_122_pop15_histogram17(BLACKBOX,72)@5
    // out out_feedback_stall_out_15@20000000
    histogram_i_llvm_fpga_pop_i32_i_122_pop15_0 thei_llvm_fpga_pop_i32_i_122_pop15_histogram17 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_i_122_push15_histogram32_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_i_122_push15_histogram32_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_122_pop15_histogram17_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_i_122_pop15_histogram17_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom11_histogram18_sel_x(BITSELECT,151)@5
    assign i_idxprom11_histogram18_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_122_pop15_histogram17_out_data_out[31:0]};

    // i_idxprom11_histogram18_vt_select_31(BITSELECT,58)@5
    assign i_idxprom11_histogram18_vt_select_31_b = i_idxprom11_histogram18_sel_x_b[31:0];

    // i_idxprom11_histogram18_vt_join(BITJOIN,57)@5
    assign i_idxprom11_histogram18_vt_join_q = {c_i32_070_q, i_idxprom11_histogram18_vt_select_31_b};

    // i_arrayidx125_histogram0_dupName_0_trunc_sel_x(BITSELECT,120)@5
    assign i_arrayidx125_histogram0_dupName_0_trunc_sel_x_b = i_idxprom11_histogram18_vt_join_q[8:0];

    // i_arrayidx125_histogram0_narrow_x(BITSELECT,113)@5
    assign i_arrayidx125_histogram0_narrow_x_b = i_arrayidx125_histogram0_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx125_histogram0_shift_join_x(BITJOIN,114)@5
    assign i_arrayidx125_histogram0_shift_join_x_q = {i_arrayidx125_histogram0_narrow_x_b, i_arrayidx125_histogram19_vt_const_1_q};

    // i_arrayidx125_histogram0_add_x(ADD,110)@5
    assign i_arrayidx125_histogram0_add_x_a = {1'b0, i_arrayidx125_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx125_histogram0_add_x_b = {1'b0, i_arrayidx125_histogram0_shift_join_x_q};
    assign i_arrayidx125_histogram0_add_x_o = $unsigned(i_arrayidx125_histogram0_add_x_a) + $unsigned(i_arrayidx125_histogram0_add_x_b);
    assign i_arrayidx125_histogram0_add_x_q = i_arrayidx125_histogram0_add_x_o[9:0];

    // i_arrayidx125_histogram0_dupName_2_trunc_sel_x(BITSELECT,121)@5
    assign i_arrayidx125_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx125_histogram0_add_x_q[8:0];

    // i_arrayidx125_histogram0_append_upper_bits_x(BITJOIN,111)@5
    assign i_arrayidx125_histogram0_append_upper_bits_x_q = {i_arrayidx125_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx125_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx125_histogram19_vt_select_63(BITSELECT,39)@5
    assign i_arrayidx125_histogram19_vt_select_63_b = i_arrayidx125_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx125_histogram19_vt_const_1(CONSTANT,37)
    assign i_arrayidx125_histogram19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx125_histogram19_vt_join(BITJOIN,38)@5
    assign i_arrayidx125_histogram19_vt_join_q = {i_arrayidx125_histogram19_vt_select_63_b, i_arrayidx125_histogram19_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_histogram21(BLACKBOX,67)@5
    // in in_i_stall@20000000
    // out out_lm1_histogram_avm_address@20000000
    // out out_lm1_histogram_avm_burstcount@20000000
    // out out_lm1_histogram_avm_byteenable@20000000
    // out out_lm1_histogram_avm_enable@20000000
    // out out_lm1_histogram_avm_read@20000000
    // out out_lm1_histogram_avm_write@20000000
    // out out_lm1_histogram_avm_writedata@20000000
    // out out_o_readdata@9
    // out out_o_stall@8
    // out out_o_valid@9
    histogram_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_histogram21 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx125_histogram19_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor29_or_histogram20_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_lm1_histogram_avm_readdata(in_lm1_histogram_avm_readdata),
        .in_lm1_histogram_avm_readdatavalid(in_lm1_histogram_avm_readdatavalid),
        .in_lm1_histogram_avm_waitrequest(in_lm1_histogram_avm_waitrequest),
        .in_lm1_histogram_avm_writeack(in_lm1_histogram_avm_writeack),
        .out_lm1_histogram_avm_address(i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_address),
        .out_lm1_histogram_avm_burstcount(i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_burstcount),
        .out_lm1_histogram_avm_byteenable(i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_byteenable),
        .out_lm1_histogram_avm_enable(i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_enable),
        .out_lm1_histogram_avm_read(i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_read),
        .out_lm1_histogram_avm_write(i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_write),
        .out_lm1_histogram_avm_writedata(i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_histogram21_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,104)
    assign out_lm1_histogram_avm_address = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_address;
    assign out_lm1_histogram_avm_enable = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_enable;
    assign out_lm1_histogram_avm_read = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_read;
    assign out_lm1_histogram_avm_write = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_write;
    assign out_lm1_histogram_avm_writedata = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_writedata;
    assign out_lm1_histogram_avm_byteenable = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_byteenable;
    assign out_lm1_histogram_avm_burstcount = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_burstcount;

    // valid_fanout_reg7(REG,167)@5 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together92_aunroll_x_in_i_valid_4_q);
        end
    end

    // redist10_i_first_cleanup_xor29_or_histogram20_q_1(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_first_cleanup_xor29_or_histogram20_q_1_q <= '0;
        end
        else
        begin
            redist10_i_first_cleanup_xor29_or_histogram20_q_1_q <= $unsigned(i_first_cleanup_xor29_or_histogram20_q);
        end
    end

    // c_histogram_weight_pmem(CONSTANT,6)
    assign c_histogram_weight_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx146_histogram0_upper_bits_x_merged_bit_select(BITSELECT,201)@6
    assign i_arrayidx146_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_weight_pmem_q[63:9];
    assign i_arrayidx146_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_weight_pmem_q[8:0];

    // redist7_i_arrayidx125_histogram0_shift_join_x_q_1(DELAY,209)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx125_histogram0_shift_join_x_q_1_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx125_histogram0_shift_join_x_q_1_q <= $unsigned(i_arrayidx125_histogram0_shift_join_x_q);
        end
    end

    // i_arrayidx146_histogram0_add_x(ADD,122)@6
    assign i_arrayidx146_histogram0_add_x_a = {1'b0, i_arrayidx146_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx146_histogram0_add_x_b = {1'b0, redist7_i_arrayidx125_histogram0_shift_join_x_q_1_q};
    assign i_arrayidx146_histogram0_add_x_o = $unsigned(i_arrayidx146_histogram0_add_x_a) + $unsigned(i_arrayidx146_histogram0_add_x_b);
    assign i_arrayidx146_histogram0_add_x_q = i_arrayidx146_histogram0_add_x_o[9:0];

    // i_arrayidx146_histogram0_dupName_2_trunc_sel_x(BITSELECT,133)@6
    assign i_arrayidx146_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx146_histogram0_add_x_q[8:0];

    // i_arrayidx146_histogram0_append_upper_bits_x(BITJOIN,123)@6
    assign i_arrayidx146_histogram0_append_upper_bits_x_q = {i_arrayidx146_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx146_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx146_histogram22_vt_select_63(BITSELECT,42)@6
    assign i_arrayidx146_histogram22_vt_select_63_b = i_arrayidx146_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx146_histogram22_vt_join(BITJOIN,41)@6
    assign i_arrayidx146_histogram22_vt_join_q = {i_arrayidx146_histogram22_vt_select_63_b, i_arrayidx125_histogram19_vt_const_1_q};

    // i_llvm_fpga_mem_lm92_histogram23(BLACKBOX,68)@6
    // in in_i_stall@20000000
    // out out_lm92_histogram_avm_address@20000000
    // out out_lm92_histogram_avm_burstcount@20000000
    // out out_lm92_histogram_avm_byteenable@20000000
    // out out_lm92_histogram_avm_enable@20000000
    // out out_lm92_histogram_avm_read@20000000
    // out out_lm92_histogram_avm_write@20000000
    // out out_lm92_histogram_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    histogram_i_llvm_fpga_mem_lm92_0 thei_llvm_fpga_mem_lm92_histogram23 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx146_histogram22_vt_join_q),
        .in_i_predicate(redist10_i_first_cleanup_xor29_or_histogram20_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_lm92_histogram_avm_readdata(in_lm92_histogram_avm_readdata),
        .in_lm92_histogram_avm_readdatavalid(in_lm92_histogram_avm_readdatavalid),
        .in_lm92_histogram_avm_waitrequest(in_lm92_histogram_avm_waitrequest),
        .in_lm92_histogram_avm_writeack(in_lm92_histogram_avm_writeack),
        .out_lm92_histogram_avm_address(i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_address),
        .out_lm92_histogram_avm_burstcount(i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_burstcount),
        .out_lm92_histogram_avm_byteenable(i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_byteenable),
        .out_lm92_histogram_avm_enable(i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_enable),
        .out_lm92_histogram_avm_read(i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_read),
        .out_lm92_histogram_avm_write(i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_write),
        .out_lm92_histogram_avm_writedata(i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm92_histogram23_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,106)
    assign out_lm92_histogram_avm_address = i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_address;
    assign out_lm92_histogram_avm_enable = i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_enable;
    assign out_lm92_histogram_avm_read = i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_read;
    assign out_lm92_histogram_avm_write = i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_write;
    assign out_lm92_histogram_avm_writedata = i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_writedata;
    assign out_lm92_histogram_avm_byteenable = i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_byteenable;
    assign out_lm92_histogram_avm_burstcount = i_llvm_fpga_mem_lm92_histogram23_out_lm92_histogram_avm_burstcount;

    // redist4_sync_together92_aunroll_x_in_i_valid_7(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together92_aunroll_x_in_i_valid_7_delay_0 <= '0;
            redist4_sync_together92_aunroll_x_in_i_valid_7_delay_1 <= '0;
            redist4_sync_together92_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist4_sync_together92_aunroll_x_in_i_valid_7_delay_0 <= $unsigned(redist3_sync_together92_aunroll_x_in_i_valid_4_q);
            redist4_sync_together92_aunroll_x_in_i_valid_7_delay_1 <= redist4_sync_together92_aunroll_x_in_i_valid_7_delay_0;
            redist4_sync_together92_aunroll_x_in_i_valid_7_q <= redist4_sync_together92_aunroll_x_in_i_valid_7_delay_1;
        end
    end

    // valid_fanout_reg9(REG,169)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist4_sync_together92_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist11_i_first_cleanup_xor29_or_histogram20_q_4(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_0 <= '0;
            redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_1 <= '0;
            redist11_i_first_cleanup_xor29_or_histogram20_q_4_q <= '0;
        end
        else
        begin
            redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_0 <= $unsigned(redist10_i_first_cleanup_xor29_or_histogram20_q_1_q);
            redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_1 <= redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_0;
            redist11_i_first_cleanup_xor29_or_histogram20_q_4_q <= redist11_i_first_cleanup_xor29_or_histogram20_q_4_delay_1;
        end
    end

    // valid_fanout_reg8(REG,168)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist4_sync_together92_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist5_sync_together92_aunroll_x_in_i_valid_11(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together92_aunroll_x_in_i_valid_11_delay_0 <= '0;
            redist5_sync_together92_aunroll_x_in_i_valid_11_delay_1 <= '0;
            redist5_sync_together92_aunroll_x_in_i_valid_11_delay_2 <= '0;
            redist5_sync_together92_aunroll_x_in_i_valid_11_q <= '0;
        end
        else
        begin
            redist5_sync_together92_aunroll_x_in_i_valid_11_delay_0 <= $unsigned(redist4_sync_together92_aunroll_x_in_i_valid_7_q);
            redist5_sync_together92_aunroll_x_in_i_valid_11_delay_1 <= redist5_sync_together92_aunroll_x_in_i_valid_11_delay_0;
            redist5_sync_together92_aunroll_x_in_i_valid_11_delay_2 <= redist5_sync_together92_aunroll_x_in_i_valid_11_delay_1;
            redist5_sync_together92_aunroll_x_in_i_valid_11_q <= redist5_sync_together92_aunroll_x_in_i_valid_11_delay_2;
        end
    end

    // redist6_sync_together92_aunroll_x_in_i_valid_12(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together92_aunroll_x_in_i_valid_12_q <= '0;
        end
        else
        begin
            redist6_sync_together92_aunroll_x_in_i_valid_12_q <= $unsigned(redist5_sync_together92_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg11(REG,171)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist6_sync_together92_aunroll_x_in_i_valid_12_q);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out_9(DELAY,211)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out_9 ( .xin(i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out), .xout(redist9_i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_add17_histogram28(BLACKBOX,36)@10
    // out out_primWireOut@13
    histogram_flt_i_sfc_logic_s_c0_in_for_bo00003a0054c2a6344c246w65 thei_add17_histogram28 (
        .in_0(i_llvm_fpga_mem_lm92_histogram23_out_o_readdata),
        .in_1(i_llvm_fpga_mem_lm113_histogram27_out_o_readdata),
        .out_primWireOut(i_add17_histogram28_out_primWireOut),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg10(REG,170)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together92_aunroll_x_in_i_valid_11_q);
        end
    end

    // redist12_i_first_cleanup_xor29_or_histogram20_q_8(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_0 <= '0;
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_1 <= '0;
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_2 <= '0;
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_q <= '0;
        end
        else
        begin
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_0 <= $unsigned(redist11_i_first_cleanup_xor29_or_histogram20_q_4_q);
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_1 <= redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_0;
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_2 <= redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_1;
            redist12_i_first_cleanup_xor29_or_histogram20_q_8_q <= redist12_i_first_cleanup_xor29_or_histogram20_q_8_delay_2;
        end
    end

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_notEnable(LOGICAL,221)
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_notEnable_q = $unsigned(~ (VCC_q));

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_nor(LOGICAL,222)
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_nor_q = ~ (redist13_i_arrayidx167_histogram25_vt_join_q_4_notEnable_q | redist13_i_arrayidx167_histogram25_vt_join_q_4_sticky_ena_q);

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_cmpReg(REG,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_cmpReg_q <= $unsigned(VCC_q);
        end
    end

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_sticky_ena(REG,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist13_i_arrayidx167_histogram25_vt_join_q_4_nor_q == 1'b1)
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_sticky_ena_q <= $unsigned(redist13_i_arrayidx167_histogram25_vt_join_q_4_cmpReg_q);
        end
    end

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_enaAnd(LOGICAL,224)
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_enaAnd_q = redist13_i_arrayidx167_histogram25_vt_join_q_4_sticky_ena_q & VCC_q;

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt(COUNTER,218)
    // low=0, high=1, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_i <= 1'd0;
        end
        else
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_i <= $unsigned(redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_i) + $unsigned(1'd1);
        end
    end
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_q = redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_i[0:0];

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_inputreg0(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_inputreg0_q <= '0;
        end
        else
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_inputreg0_q <= $unsigned(i_arrayidx167_histogram25_vt_join_q);
        end
    end

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_wraddr(REG,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_wraddr_q <= $unsigned(1'b1);
        end
        else
        begin
            redist13_i_arrayidx167_histogram25_vt_join_q_4_wraddr_q <= $unsigned(redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_q);
        end
    end

    // redist13_i_arrayidx167_histogram25_vt_join_q_4_mem(DUALMEM,217)
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_ia = $unsigned(redist13_i_arrayidx167_histogram25_vt_join_q_4_inputreg0_q);
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_aa = redist13_i_arrayidx167_histogram25_vt_join_q_4_wraddr_q;
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_ab = redist13_i_arrayidx167_histogram25_vt_join_q_4_rdcnt_q;
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_reset0 = ~ (resetn);
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
    ) redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_dmem (
        .clocken1(redist13_i_arrayidx167_histogram25_vt_join_q_4_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_reset0),
        .clock1(clock),
        .address_a(redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_aa),
        .data_a(redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_ab),
        .q_b(redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_iq),
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
    assign redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_q = redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_iq[63:0];

    // i_llvm_fpga_mem_memdep_6_histogram29(BLACKBOX,69)@13
    // out out_memdep_6_histogram_avm_address@20000000
    // out out_memdep_6_histogram_avm_burstcount@20000000
    // out out_memdep_6_histogram_avm_byteenable@20000000
    // out out_memdep_6_histogram_avm_enable@20000000
    // out out_memdep_6_histogram_avm_read@20000000
    // out out_memdep_6_histogram_avm_write@20000000
    // out out_memdep_6_histogram_avm_writedata@20000000
    // out out_o_stall@14
    // out out_o_valid@14
    // out out_o_writeack@14
    histogram_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_histogram29 (
        .in_flush(in_flush),
        .in_i_address(redist13_i_arrayidx167_histogram25_vt_join_q_4_mem_q),
        .in_i_predicate(redist12_i_first_cleanup_xor29_or_histogram20_q_8_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg10_q),
        .in_i_writedata(i_add17_histogram28_out_primWireOut),
        .in_memdep_6_histogram_avm_readdata(in_memdep_6_histogram_avm_readdata),
        .in_memdep_6_histogram_avm_readdatavalid(in_memdep_6_histogram_avm_readdatavalid),
        .in_memdep_6_histogram_avm_waitrequest(in_memdep_6_histogram_avm_waitrequest),
        .in_memdep_6_histogram_avm_writeack(in_memdep_6_histogram_avm_writeack),
        .out_memdep_6_histogram_avm_address(i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_address),
        .out_memdep_6_histogram_avm_burstcount(i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_burstcount),
        .out_memdep_6_histogram_avm_byteenable(i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_byteenable),
        .out_memdep_6_histogram_avm_enable(i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_enable),
        .out_memdep_6_histogram_avm_read(i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_read),
        .out_memdep_6_histogram_avm_write(i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_write),
        .out_memdep_6_histogram_avm_writedata(i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_writedata),
        .out_o_stall(),
        .out_o_valid(),
        .out_o_writeack(i_llvm_fpga_mem_memdep_6_histogram29_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_push_i1_memdep_phi_push16_histogram30(BLACKBOX,77)@14
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    histogram_i_llvm_fpga_push_i1_memdep_phi_push16_0 thei_llvm_fpga_push_i1_memdep_phi_push16_histogram30 (
        .in_data_in(i_llvm_fpga_mem_memdep_6_histogram29_out_o_writeack),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26_out_feedback_stall_out_16),
        .in_keep_going23(redist9_i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out_9_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_histogram30_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_histogram30_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8(DELAY,203)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_0 <= '0;
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_1 <= '0;
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_2 <= '0;
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_q <= '0;
        end
        else
        begin
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_0 <= $unsigned(redist0_sync_together92_aunroll_x_in_c0_eni162_1_tpl_4_q);
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_1 <= redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_0;
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_2 <= redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_1;
            redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_q <= redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_delay_2;
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26(BLACKBOX,71)@9
    // out out_feedback_stall_out_16@20000000
    histogram_i_llvm_fpga_pop_i1_memdep_phi_pop16_0 thei_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26 (
        .in_data_in(GND_q),
        .in_dir(redist1_sync_together92_aunroll_x_in_c0_eni162_1_tpl_8_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_histogram30_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_histogram30_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_histogram_hist_pmem(CONSTANT,5)
    assign c_histogram_hist_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx167_histogram0_upper_bits_x_merged_bit_select(BITSELECT,200)@9
    assign i_arrayidx167_histogram0_upper_bits_x_merged_bit_select_b = c_histogram_hist_pmem_q[63:9];
    assign i_arrayidx167_histogram0_upper_bits_x_merged_bit_select_c = c_histogram_hist_pmem_q[8:0];

    // i_idxprom15_histogram24_sel_x(BITSELECT,152)@9
    assign i_idxprom15_histogram24_sel_x_b = $unsigned({{32{i_llvm_fpga_mem_lm1_histogram21_out_o_readdata[31]}}, i_llvm_fpga_mem_lm1_histogram21_out_o_readdata[31:0]});

    // i_arrayidx167_histogram0_dupName_0_trunc_sel_x(BITSELECT,144)@9
    assign i_arrayidx167_histogram0_dupName_0_trunc_sel_x_b = i_idxprom15_histogram24_sel_x_b[8:0];

    // i_arrayidx167_histogram0_narrow_x(BITSELECT,137)@9
    assign i_arrayidx167_histogram0_narrow_x_b = i_arrayidx167_histogram0_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx167_histogram0_shift_join_x(BITJOIN,138)@9
    assign i_arrayidx167_histogram0_shift_join_x_q = {i_arrayidx167_histogram0_narrow_x_b, i_arrayidx125_histogram19_vt_const_1_q};

    // i_arrayidx167_histogram0_add_x(ADD,134)@9
    assign i_arrayidx167_histogram0_add_x_a = {1'b0, i_arrayidx167_histogram0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx167_histogram0_add_x_b = {1'b0, i_arrayidx167_histogram0_shift_join_x_q};
    assign i_arrayidx167_histogram0_add_x_o = $unsigned(i_arrayidx167_histogram0_add_x_a) + $unsigned(i_arrayidx167_histogram0_add_x_b);
    assign i_arrayidx167_histogram0_add_x_q = i_arrayidx167_histogram0_add_x_o[9:0];

    // i_arrayidx167_histogram0_dupName_2_trunc_sel_x(BITSELECT,145)@9
    assign i_arrayidx167_histogram0_dupName_2_trunc_sel_x_b = i_arrayidx167_histogram0_add_x_q[8:0];

    // i_arrayidx167_histogram0_append_upper_bits_x(BITJOIN,135)@9
    assign i_arrayidx167_histogram0_append_upper_bits_x_q = {i_arrayidx167_histogram0_upper_bits_x_merged_bit_select_b, i_arrayidx167_histogram0_dupName_2_trunc_sel_x_b};

    // i_arrayidx167_histogram25_vt_select_63(BITSELECT,45)@9
    assign i_arrayidx167_histogram25_vt_select_63_b = i_arrayidx167_histogram0_append_upper_bits_x_q[63:2];

    // i_arrayidx167_histogram25_vt_join(BITJOIN,44)@9
    assign i_arrayidx167_histogram25_vt_join_q = {i_arrayidx167_histogram25_vt_select_63_b, i_arrayidx125_histogram19_vt_const_1_q};

    // i_llvm_fpga_mem_lm113_histogram27(BLACKBOX,66)@9
    // in in_i_stall@20000000
    // out out_lm113_histogram_avm_address@20000000
    // out out_lm113_histogram_avm_burstcount@20000000
    // out out_lm113_histogram_avm_byteenable@20000000
    // out out_lm113_histogram_avm_enable@20000000
    // out out_lm113_histogram_avm_read@20000000
    // out out_lm113_histogram_avm_write@20000000
    // out out_lm113_histogram_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@10
    // out out_o_valid@10
    histogram_i_llvm_fpga_mem_lm113_0 thei_llvm_fpga_mem_lm113_histogram27 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx167_histogram25_vt_join_q),
        .in_i_dependence(i_llvm_fpga_pop_i1_memdep_phi_pop16_histogram26_out_data_out),
        .in_i_predicate(redist11_i_first_cleanup_xor29_or_histogram20_q_4_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg9_q),
        .in_lm113_histogram_avm_readdata(in_lm113_histogram_avm_readdata),
        .in_lm113_histogram_avm_readdatavalid(in_lm113_histogram_avm_readdatavalid),
        .in_lm113_histogram_avm_waitrequest(in_lm113_histogram_avm_waitrequest),
        .in_lm113_histogram_avm_writeack(in_lm113_histogram_avm_writeack),
        .out_lm113_histogram_avm_address(i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_address),
        .out_lm113_histogram_avm_burstcount(i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_burstcount),
        .out_lm113_histogram_avm_byteenable(i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_byteenable),
        .out_lm113_histogram_avm_enable(i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_enable),
        .out_lm113_histogram_avm_read(i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_read),
        .out_lm113_histogram_avm_write(i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_write),
        .out_lm113_histogram_avm_writedata(i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm113_histogram27_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_2_ext_sig_sync_out_x(GPOUT,108)
    assign out_lm113_histogram_avm_address = i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_address;
    assign out_lm113_histogram_avm_enable = i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_enable;
    assign out_lm113_histogram_avm_read = i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_read;
    assign out_lm113_histogram_avm_write = i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_write;
    assign out_lm113_histogram_avm_writedata = i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_writedata;
    assign out_lm113_histogram_avm_byteenable = i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_byteenable;
    assign out_lm113_histogram_avm_burstcount = i_llvm_fpga_mem_lm113_histogram27_out_lm113_histogram_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,109)
    assign out_memdep_6_histogram_avm_address = i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_address;
    assign out_memdep_6_histogram_avm_enable = i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_enable;
    assign out_memdep_6_histogram_avm_read = i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_read;
    assign out_memdep_6_histogram_avm_write = i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_write;
    assign out_memdep_6_histogram_avm_writedata = i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_writedata;
    assign out_memdep_6_histogram_avm_byteenable = i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_byteenable;
    assign out_memdep_6_histogram_avm_burstcount = i_llvm_fpga_mem_memdep_6_histogram29_out_memdep_6_histogram_avm_burstcount;

    // valid_fanout_reg0(REG,160)@13 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together92_aunroll_x_in_i_valid_12_q);
        end
    end

    // i_masked32_histogram44(LOGICAL,83)@5 + 1
    assign i_masked32_histogram44_qi = i_notcmp20_histogram39_q & i_first_cleanup28_histogram3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked32_histogram44_delay ( .xin(i_masked32_histogram44_qi), .xout(i_masked32_histogram44_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist8_i_masked32_histogram44_q_9(DELAY,210)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist8_i_masked32_histogram44_q_9 ( .xin(i_masked32_histogram44_q), .xout(redist8_i_masked32_histogram44_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,158)@14
    assign out_c0_exi266_0_tpl = GND_q;
    assign out_c0_exi266_1_tpl = redist9_i_llvm_fpga_pipeline_keep_going23_histogram6_out_data_out_9_q;
    assign out_c0_exi266_2_tpl = redist8_i_masked32_histogram44_q_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_histogram1 = GND_q;

endmodule
