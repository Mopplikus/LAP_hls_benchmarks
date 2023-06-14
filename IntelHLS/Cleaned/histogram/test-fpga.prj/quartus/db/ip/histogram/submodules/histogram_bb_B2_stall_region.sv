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

// SystemVerilog created from bb_histogram_B2_stall_region
// Created for function/kernel histogram
// SystemVerilog created on Tue Jun 13 02:35:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_bb_B2_stall_region (
    input wire [31:0] in_lm22_histogram_avm_readdata,
    input wire [0:0] in_lm22_histogram_avm_writeack,
    input wire [0:0] in_lm22_histogram_avm_waitrequest,
    input wire [0:0] in_lm22_histogram_avm_readdatavalid,
    output wire [31:0] out_lm1_histogram_avm_address,
    output wire [0:0] out_lm1_histogram_avm_enable,
    output wire [0:0] out_lm1_histogram_avm_read,
    output wire [0:0] out_lm1_histogram_avm_write,
    output wire [31:0] out_lm1_histogram_avm_writedata,
    output wire [3:0] out_lm1_histogram_avm_byteenable,
    output wire [0:0] out_lm1_histogram_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_lm43_histogram_avm_readdata,
    input wire [0:0] in_lm43_histogram_avm_writeack,
    input wire [0:0] in_lm43_histogram_avm_waitrequest,
    input wire [0:0] in_lm43_histogram_avm_readdatavalid,
    output wire [31:0] out_lm22_histogram_avm_address,
    output wire [0:0] out_lm22_histogram_avm_enable,
    output wire [0:0] out_lm22_histogram_avm_read,
    output wire [0:0] out_lm22_histogram_avm_write,
    output wire [31:0] out_lm22_histogram_avm_writedata,
    output wire [3:0] out_lm22_histogram_avm_byteenable,
    output wire [0:0] out_lm22_histogram_avm_burstcount,
    input wire [31:0] in_memdep_histogram_avm_readdata,
    input wire [0:0] in_memdep_histogram_avm_writeack,
    input wire [0:0] in_memdep_histogram_avm_waitrequest,
    input wire [0:0] in_memdep_histogram_avm_readdatavalid,
    output wire [31:0] out_lm43_histogram_avm_address,
    output wire [0:0] out_lm43_histogram_avm_enable,
    output wire [0:0] out_lm43_histogram_avm_read,
    output wire [0:0] out_lm43_histogram_avm_write,
    output wire [31:0] out_lm43_histogram_avm_writedata,
    output wire [3:0] out_lm43_histogram_avm_byteenable,
    output wire [0:0] out_lm43_histogram_avm_burstcount,
    output wire [31:0] out_memdep_histogram_avm_address,
    output wire [0:0] out_memdep_histogram_avm_enable,
    output wire [0:0] out_memdep_histogram_avm_read,
    output wire [0:0] out_memdep_histogram_avm_write,
    output wire [31:0] out_memdep_histogram_avm_writedata,
    output wire [3:0] out_memdep_histogram_avm_byteenable,
    output wire [0:0] out_memdep_histogram_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [31:0] in_lm1_histogram_avm_readdata,
    input wire [0:0] in_lm1_histogram_avm_writeack,
    input wire [0:0] in_lm1_histogram_avm_waitrequest,
    input wire [0:0] in_lm1_histogram_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_histogram4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_histogram4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [32:0] in_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add_histogram29_sel_x_b;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_histogram36_sel_x_b;
    wire [31:0] bgTrunc_i_inc_histogram32_sel_x_b;
    wire [0:0] histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] histogram_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] histogram_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_first_cleanup_histogram1_sel_x_b;
    wire [0:0] i_last_initeration_histogram8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index43_histogram0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index43_histogram0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index47_histogram0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_mptr_bitcast_index_histogram0_dupName_0_trunc_sel_x_b;
    wire [31:0] c_i32_051_q;
    wire [31:0] c_i32_152_q;
    wire [32:0] c_i33_154_q;
    wire [32:0] c_i33_undef50_q;
    wire [3:0] c_i4_746_q;
    wire [32:0] i_add_histogram29_a;
    wire [32:0] i_add_histogram29_b;
    logic [32:0] i_add_histogram29_o;
    wire [32:0] i_add_histogram29_q;
    wire [3:0] i_cleanups_shl_histogram3_vt_join_q;
    wire [2:0] i_cleanups_shl_histogram3_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_histogram2_q;
    wire [0:0] i_first_cleanup_xor_or_histogram19_q;
    wire [33:0] i_fpga_indvars_iv_next_histogram36_a;
    wire [33:0] i_fpga_indvars_iv_next_histogram36_b;
    logic [33:0] i_fpga_indvars_iv_next_histogram36_o;
    wire [33:0] i_fpga_indvars_iv_next_histogram36_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_histogram12_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_histogram12_q;
    wire [32:0] i_inc_histogram32_a;
    wire [32:0] i_inc_histogram32_b;
    logic [32:0] i_inc_histogram32_o;
    wire [32:0] i_inc_histogram32_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_valid_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_valid_out;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_dest_data_out_4_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_dest_data_out_3_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_histogram21_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_histogram21_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm22_histogram24_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm22_histogram24_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm22_histogram24_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm43_histogram28_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm43_histogram28_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm43_histogram28_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_histogram30_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_histogram4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_valid_out;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_histogram9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_histogram9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_histogram9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_histogram9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_histogram41_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_histogram41_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_histogram41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_histogram41_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_041_push7_histogram33_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_041_push7_histogram33_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_041_push7_histogram33_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_041_push7_histogram33_out_valid_out;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_histogram7_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_histogram7_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_histogram7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_histogram7_out_valid_out;
    wire [0:0] i_masked_histogram45_qi;
    reg [0:0] i_masked_histogram45_q;
    wire [0:0] i_next_cleanups_histogram43_s;
    reg [3:0] i_next_cleanups_histogram43_q;
    wire [3:0] i_next_initerations_histogram6_vt_join_q;
    wire [2:0] i_next_initerations_histogram6_vt_select_2_b;
    wire [0:0] i_notcmp_histogram40_q;
    wire [0:0] i_or_histogram42_q;
    wire [0:0] i_unnamed_histogram14_q;
    wire [0:0] i_unnamed_histogram39_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl_histogram0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl_histogram0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid188_i_cleanups_shl_histogram0_shift_x_q;
    wire [0:0] leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_s;
    reg [3:0] leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid194_i_next_initerations_histogram0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid196_i_next_initerations_histogram0_shift_x_q;
    wire [0:0] rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_s;
    reg [3:0] rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_q;
    wire [0:0] i_exitcond_histogram34_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_histogram0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_histogram0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_histogram0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_histogram0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_histogram0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_histogram0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_histogram0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_histogram0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_histogram0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [3:0] redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [0:0] redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q;
    reg [59:0] redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_q;
    wire [0:0] redist10_i_masked_histogram45_q_97_fifo_valid_in;
    wire redist10_i_masked_histogram45_q_97_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_masked_histogram45_q_97_fifo_stall_in;
    wire redist10_i_masked_histogram45_q_97_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_masked_histogram45_q_97_fifo_data_in;
    wire [0:0] redist10_i_masked_histogram45_q_97_fifo_valid_out;
    wire redist10_i_masked_histogram45_q_97_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_masked_histogram45_q_97_fifo_stall_out;
    wire redist10_i_masked_histogram45_q_97_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_masked_histogram45_q_97_fifo_data_out;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_q;
    reg [0:0] redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_q;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_in;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_in;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_data_in;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_out;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_out;
    wire redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_data_out;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_in;
    wire redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_in;
    wire redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_data_in;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_out;
    wire redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_out;
    wire redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_data_out;
    wire [0:0] redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_in;
    wire redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_in;
    wire redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_data_in;
    wire [0:0] redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_out;
    wire redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_out;
    wire redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_data_out;
    reg [0:0] redist16_i_first_cleanup_xor_or_histogram19_q_2_0_q;
    reg [0:0] redist16_i_first_cleanup_xor_or_histogram19_q_2_1_q;
    wire [0:0] redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_in;
    wire redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_in;
    wire redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_data_in;
    wire [0:0] redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_out;
    wire redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_out;
    wire redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_data_out;
    wire [0:0] redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_in;
    wire redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_in;
    wire redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_data_in;
    wire [0:0] redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_out;
    wire redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_out;
    wire redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_data_out;
    reg [0:0] redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_q;
    reg [0:0] redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_histogram_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_histogram_B2_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_b;
    wire [0:0] bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_q;
    wire [0:0] bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_b;
    wire [32:0] bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_q;
    wire [32:0] bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_histogram21_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_histogram21_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm22_histogram24_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm22_histogram24_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm43_histogram28_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm43_histogram28_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_histogram30_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_histogram30_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_histogram4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_b;
    wire [32:0] bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_q;
    wire [32:0] bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist10_i_masked_histogram45_q_97_fifo_q;
    wire [0:0] bubble_select_redist10_i_masked_histogram45_q_97_fifo_b;
    wire [0:0] bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_q;
    wire [0:0] bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_b;
    wire [0:0] bubble_join_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_q;
    wire [0:0] bubble_select_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_b;
    wire [31:0] bubble_join_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_q;
    wire [31:0] bubble_select_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_b;
    wire [0:0] bubble_join_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_q;
    wire [0:0] bubble_select_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_b;
    wire [0:0] bubble_join_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_q;
    wire [0:0] bubble_select_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_b;
    wire [64:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_histogram32_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_histogram32_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc_histogram32_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_histogram32_sel_x_V0;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_toReg6;
    reg [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_fromReg6;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_consumed6;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_or5;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_V5;
    wire [0:0] SE_out_histogram_B2_merge_reg_aunroll_x_V6;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_0;
    reg [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_v_s_0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_1;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_backEN;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_or0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_V0;
    wire [0:0] SE_i_fpga_indvars_iv_replace_phi_histogram12_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_and0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm1_histogram21_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm22_histogram24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm22_histogram24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_lm22_histogram24_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_histogram30_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_histogram9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_histogram9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_041_push7_histogram33_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_041_push7_histogram33_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_histogram44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_histogram44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_histogram7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_histogram7_backStall;
    reg [0:0] SE_i_masked_histogram45_R_v_0;
    wire [0:0] SE_i_masked_histogram45_v_s_0;
    wire [0:0] SE_i_masked_histogram45_s_tv_0;
    wire [0:0] SE_i_masked_histogram45_backEN;
    wire [0:0] SE_i_masked_histogram45_backStall;
    wire [0:0] SE_i_masked_histogram45_V0;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_wireValid;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_wireStall;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_StallValid;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_toReg0;
    reg [0:0] SE_i_next_initerations_histogram6_vt_select_2_fromReg0;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_consumed0;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_toReg1;
    reg [0:0] SE_i_next_initerations_histogram6_vt_select_2_fromReg1;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_consumed1;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_and0;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_or0;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_backStall;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_V0;
    wire [0:0] SE_i_next_initerations_histogram6_vt_select_2_V1;
    wire [0:0] SE_i_unnamed_histogram39_wireValid;
    wire [0:0] SE_i_unnamed_histogram39_wireStall;
    wire [0:0] SE_i_unnamed_histogram39_StallValid;
    wire [0:0] SE_i_unnamed_histogram39_toReg0;
    reg [0:0] SE_i_unnamed_histogram39_fromReg0;
    wire [0:0] SE_i_unnamed_histogram39_consumed0;
    wire [0:0] SE_i_unnamed_histogram39_toReg1;
    reg [0:0] SE_i_unnamed_histogram39_fromReg1;
    wire [0:0] SE_i_unnamed_histogram39_consumed1;
    wire [0:0] SE_i_unnamed_histogram39_and0;
    wire [0:0] SE_i_unnamed_histogram39_or0;
    wire [0:0] SE_i_unnamed_histogram39_backStall;
    wire [0:0] SE_i_unnamed_histogram39_V0;
    wire [0:0] SE_i_unnamed_histogram39_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_V0;
    reg [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and2;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and2;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_join_for_coalesced_delay_0_wireValid;
    wire [0:0] SE_join_for_coalesced_delay_0_backStall;
    wire [0:0] SE_join_for_coalesced_delay_0_V0;
    reg [0:0] SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN;
    wire [0:0] SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall;
    wire [0:0] SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;
    reg [0:0] SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_V0;
    wire [0:0] SE_in_redist10_i_masked_histogram45_q_97_fifo_wireValid;
    wire [0:0] SE_in_redist10_i_masked_histogram45_q_97_fifo_backStall;
    wire [0:0] SE_in_redist10_i_masked_histogram45_q_97_fifo_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_V0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_1;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backEN;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_or0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backStall;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_V0;
    wire [0:0] SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_V1;
    reg [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backEN;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backStall;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_V0;
    reg [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_1;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backEN;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_or0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backStall;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_V0;
    wire [0:0] SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_V1;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_wireValid;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall;
    wire [0:0] SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_V0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_wireValid;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_and0;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_backStall;
    wire [0:0] SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_V0;
    reg [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_R_v_0;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_v_s_0;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_s_tv_0;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backEN;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backStall;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_V0;
    reg [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_0;
    reg [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_1;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_v_s_0;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_0;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_1;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backEN;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_or0;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backStall;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_V0;
    wire [0:0] SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_V1;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireStall;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_StallValid;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_toReg0;
    reg [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg0;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed0;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_toReg1;
    reg [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg1;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed1;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_or0;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_backStall;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_V0;
    wire [0:0] SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_V1;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireValid;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireStall;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_StallValid;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_toReg0;
    reg [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg0;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed0;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_toReg1;
    reg [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg1;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed1;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_or0;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_backStall;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_V0;
    wire [0:0] SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_V1;
    reg [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_0;
    reg [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_1;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_v_s_0;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_0;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_1;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backEN;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_or0;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backStall;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V0;
    wire [0:0] SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V1;
    reg [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_0;
    reg [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_1;
    reg [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_2;
    reg [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_3;
    reg [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_4;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_v_s_0;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_0;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_1;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_2;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_3;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_4;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or0;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or1;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or2;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or3;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backStall;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V0;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V1;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V2;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V3;
    wire [0:0] SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V4;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_wireValid;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_backStall;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_V0;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_wireValid;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_backStall;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_V0;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_wireValid;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_backStall;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_V0;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_wireValid;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_backStall;
    wire [0:0] SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_V0;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_in;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_out;
    wire bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_i_valid;
    reg [0:0] SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid;
    reg [0:0] SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_data0;
    wire [0:0] SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backStall;
    wire [0:0] SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V;
    wire [0:0] SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_D0;
    wire [0:0] SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_i_valid;
    reg [0:0] SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid;
    reg [0:0] SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_data0;
    wire [0:0] SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backStall;
    wire [0:0] SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V;
    wire [0:0] SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_D0;
    wire [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_i_valid;
    reg [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid;
    wire [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_and0;
    wire [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_and1;
    reg [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data0;
    reg [32:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data1;
    reg [32:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data2;
    wire [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall;
    wire [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_V;
    wire [0:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D0;
    wire [32:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D1;
    wire [32:0] SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D2;
    wire [0:0] SR_SE_i_masked_histogram45_i_valid;
    reg [0:0] SR_SE_i_masked_histogram45_r_valid;
    wire [0:0] SR_SE_i_masked_histogram45_and0;
    reg [0:0] SR_SE_i_masked_histogram45_r_data0;
    reg [0:0] SR_SE_i_masked_histogram45_r_data1;
    wire [0:0] SR_SE_i_masked_histogram45_backStall;
    wire [0:0] SR_SE_i_masked_histogram45_V;
    wire [0:0] SR_SE_i_masked_histogram45_D0;
    wire [0:0] SR_SE_i_masked_histogram45_D1;
    wire [0:0] SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_i_valid;
    reg [0:0] SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid;
    reg [0:0] SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_data0;
    wire [0:0] SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backStall;
    wire [0:0] SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_V;
    wire [0:0] SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_D0;
    wire [0:0] SR_SE_join_for_coalesced_delay_0_i_valid;
    reg [0:0] SR_SE_join_for_coalesced_delay_0_r_valid;
    wire [0:0] SR_SE_join_for_coalesced_delay_0_and0;
    reg [64:0] SR_SE_join_for_coalesced_delay_0_r_data0;
    wire [0:0] SR_SE_join_for_coalesced_delay_0_backStall;
    wire [0:0] SR_SE_join_for_coalesced_delay_0_V;
    wire [64:0] SR_SE_join_for_coalesced_delay_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_and0;
    reg [59:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data0;
    reg [59:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data1;
    wire [0:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V;
    wire [59:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_D0;
    wire [59:0] SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_D1;
    wire [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_i_valid;
    reg [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid;
    wire [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_and0;
    wire [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_and1;
    reg [63:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data0;
    reg [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data1;
    reg [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data2;
    wire [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall;
    wire [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_V;
    wire [63:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D0;
    wire [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D1;
    wire [0:0] SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D2;
    wire [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_i_valid;
    reg [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid;
    wire [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_and0;
    wire [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_and1;
    reg [3:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data0;
    reg [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data1;
    wire [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall;
    wire [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_V;
    wire [3:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_D0;
    wire [0:0] SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_D1;


    // redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0(REG,331)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backEN == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_b);
        end
    end

    // redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1(REG,332)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backEN == 1'b1)
        begin
            redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_q <= $unsigned(redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_q);
        end
    end

    // SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0(STALLENABLE,556)
    // Valid signal propagation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_V0 = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_s_tv_0 = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backStall & SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backEN = ~ (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_v_s_0 = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backEN & SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_V;
    // Backward Stall generation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backStall = ~ (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backEN == 1'b0)
            begin
                SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_R_v_0 <= SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_R_v_0 & SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_R_v_0 <= SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0(STALLREG,707)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid <= 1'b0;
            SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid <= SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backStall & (SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid | SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_i_valid);

            if (SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_data0 <= i_first_cleanup_xor_or_histogram19_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_i_valid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_V1;
    // Stall signal propagation
    assign SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backStall = SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid | ~ (SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_i_valid);

    // Valid
    assign SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_V = SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid == 1'b1 ? SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid : SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_i_valid;

    assign SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_D0 = SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_valid == 1'b1 ? SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_r_data0 : i_first_cleanup_xor_or_histogram19_q;

    // redist16_i_first_cleanup_xor_or_histogram19_q_2_0(REG,336)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_first_cleanup_xor_or_histogram19_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backEN == 1'b1)
        begin
            redist16_i_first_cleanup_xor_or_histogram19_q_2_0_q <= $unsigned(SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_D0);
        end
    end

    // redist16_i_first_cleanup_xor_or_histogram19_q_2_1(REG,337)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_first_cleanup_xor_or_histogram19_q_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backEN == 1'b1)
        begin
            redist16_i_first_cleanup_xor_or_histogram19_q_2_1_q <= $unsigned(redist16_i_first_cleanup_xor_or_histogram19_q_2_0_q);
        end
    end

    // SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1(STALLENABLE,557)
    // Valid signal propagation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_V0 = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_0;
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_V1 = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_backStall & SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_0;
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_1 = redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_out & SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_or0 = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_0;
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backEN = ~ (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_1 | SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_v_s_0 = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backEN & SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_V0;
    // Backward Stall generation
    assign SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backStall = ~ (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_0 <= 1'b0;
            SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backEN == 1'b0)
            begin
                SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_0 <= SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_0 & SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_0;
            end
            else
            begin
                SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_0 <= SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_v_s_0;
            end

            if (SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_backEN == 1'b0)
            begin
                SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_1 <= SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_1 & SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_s_tv_1;
            end
            else
            begin
                SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_R_v_1 <= SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_v_s_0;
            end

        end
    end

    // redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo(STALLFIFO,338)
    assign redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_in = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_V1;
    assign redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_in = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_backStall;
    assign redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_data_in = redist16_i_first_cleanup_xor_or_histogram19_q_2_1_q;
    assign redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_in_bitsignaltemp = redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_in[0];
    assign redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_in_bitsignaltemp = redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_in[0];
    assign redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_out[0] = redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_out_bitsignaltemp;
    assign redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_out[0] = redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_first_cleanup_xor_or_histogram19_q_34_fifo (
        .valid_in(redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_in_bitsignaltemp),
        .data_in(redist16_i_first_cleanup_xor_or_histogram19_q_2_1_q),
        .valid_out(redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo(BITJOIN,423)
    assign bubble_join_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_q = redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_data_out;

    // bubble_select_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo(BITSELECT,424)
    assign bubble_select_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_b = $unsigned(bubble_join_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_q[0:0]);

    // bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo(BITJOIN,414)
    assign bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_q = redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_data_out;

    // bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo(BITSELECT,415)
    assign bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_b = $unsigned(bubble_join_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0(STALLENABLE,542)
    // Valid signal propagation
    assign SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_V0 = SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_backStall & SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,538)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backStall & SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_V1;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // bubble_join_histogram_B2_merge_reg_aunroll_x(BITJOIN,344)
    assign bubble_join_histogram_B2_merge_reg_aunroll_x_q = histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_histogram_B2_merge_reg_aunroll_x(BITSELECT,345)
    assign bubble_select_histogram_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_histogram_B2_merge_reg_aunroll_x_q[0:0]);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_histogram4(BITJOIN,386)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_histogram4_q = i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4(BITSELECT,387)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_histogram4_q[0:0]);

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_histogram31(STALLENABLE,484)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_wireValid = i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_valid_out;

    // bubble_join_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo(BITJOIN,417)
    assign bubble_join_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_q = redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_data_out;

    // bubble_select_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo(BITSELECT,418)
    assign bubble_select_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_b = $unsigned(bubble_join_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_q[0:0]);

    // SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0(STALLENABLE,543)
    // Valid signal propagation
    assign SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_V0 = SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_backStall & SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2(STALLENABLE,512)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_1 = SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backEN & SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,235)
    assign i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_b = c_i32_051_q[25:0];

    // bubble_join_i_llvm_fpga_pop_i32_i_041_pop7_histogram15(BITJOIN,393)
    assign bubble_join_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_q = i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_041_pop7_histogram15(BITSELECT,394)
    assign bubble_select_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_q[31:0]);

    // redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0(REG,329)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_b);
        end
    end

    // redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1(REG,330)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backEN == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_q <= $unsigned(redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_q);
        end
    end

    // i_mptr_bitcast_index43_histogram0_c_i2_01_x(CONSTANT,25)
    assign i_mptr_bitcast_index43_histogram0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,236)@99
    assign i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_b, redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_q, i_mptr_bitcast_index43_histogram0_c_i2_01_x_q};

    // SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4(STALLENABLE,577)
    // Valid signal propagation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_V0 = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_stall_out | ~ (SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_wireValid = bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22(BLACKBOX,76)@98
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@99
    // out out_stall_out@20000000
    // out out_valid_out@99
    histogram_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_backStall),
        .in_valid_in(SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22(BITJOIN,364)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22(BITSELECT,365)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_q[63:0]);

    // i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,292)@99
    assign i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_b[59:0]);
    assign i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_b[63:60]);

    // SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,539)
    // Valid signal propagation
    assign SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backStall & SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_V1;
    // Backward Stall generation
    assign SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22(STALLENABLE,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed0 = (~ (SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed1 = (~ (SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_out_valid_out;

    // SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2(STALLREG,709)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid <= SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backStall & (SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid | SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b);
                SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    assign SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_i_valid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast42497_histogram22_V0 & SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_and0;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backStall = SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V = SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid : SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_D0 = SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data0 : i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_D1 = SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_r_data1 : i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q;

    // i_mptr_bitcast_index43_histogram0_add_x_p1_of_2(ADD,207)@99 + 1
    assign i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_a = {1'b0, SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_D0};
    assign i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_b = {1'b0, SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_D1};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q = i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_o[59:0];

    // SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,524)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2(STALLENABLE,513)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_and1 = SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_V0 & SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,237)
    assign i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_b = c_i32_051_q[29:26];

    // i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,239)@100
    assign i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,323)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,232)@100
    assign i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist2_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index43_histogram0_add_x_p2_of_2(ADD,208)@100 + 1
    assign i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_cin = i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_q = i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_o[5:1];

    // redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0(REG,327)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q(BITJOIN,209)@101
    assign i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_q, redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index43_histogram0_dupName_0_trunc_sel_x(BITSELECT,22)@101
    assign i_mptr_bitcast_index43_histogram0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_lm22_histogram24(BLACKBOX,80)@101
    // in in_i_stall@20000000
    // out out_lm22_histogram_avm_address@20000000
    // out out_lm22_histogram_avm_burstcount@20000000
    // out out_lm22_histogram_avm_byteenable@20000000
    // out out_lm22_histogram_avm_enable@20000000
    // out out_lm22_histogram_avm_read@20000000
    // out out_lm22_histogram_avm_write@20000000
    // out out_lm22_histogram_avm_writedata@20000000
    // out out_o_readdata@133
    // out out_o_stall@20000000
    // out out_o_valid@133
    histogram_i_llvm_fpga_mem_lm22_0 thei_llvm_fpga_mem_lm22_histogram24 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index43_histogram0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_q),
        .in_i_predicate(redist16_i_first_cleanup_xor_or_histogram19_q_2_1_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm22_histogram24_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_V0),
        .in_lm22_histogram_avm_readdata(in_lm22_histogram_avm_readdata),
        .in_lm22_histogram_avm_readdatavalid(in_lm22_histogram_avm_readdatavalid),
        .in_lm22_histogram_avm_waitrequest(in_lm22_histogram_avm_waitrequest),
        .in_lm22_histogram_avm_writeack(in_lm22_histogram_avm_writeack),
        .out_lm22_histogram_avm_address(i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_address),
        .out_lm22_histogram_avm_burstcount(i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_burstcount),
        .out_lm22_histogram_avm_byteenable(i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_byteenable),
        .out_lm22_histogram_avm_enable(i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_enable),
        .out_lm22_histogram_avm_read(i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_read),
        .out_lm22_histogram_avm_write(i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_write),
        .out_lm22_histogram_avm_writedata(i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm22_histogram24_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm22_histogram24_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm22_histogram24_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm22_histogram24(BITJOIN,376)
    assign bubble_join_i_llvm_fpga_mem_lm22_histogram24_q = i_llvm_fpga_mem_lm22_histogram24_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm22_histogram24(BITSELECT,377)
    assign bubble_select_i_llvm_fpga_mem_lm22_histogram24_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm22_histogram24_q[31:0]);

    // SE_out_i_llvm_fpga_mem_lm22_histogram24(STALLENABLE,464)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm22_histogram24_V0 = SE_out_i_llvm_fpga_mem_lm22_histogram24_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm22_histogram24_backStall = redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_out | ~ (SE_out_i_llvm_fpga_mem_lm22_histogram24_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm22_histogram24_wireValid = i_llvm_fpga_mem_lm22_histogram24_out_o_valid;

    // redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo(STALLFIFO,335)
    assign redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_in = SE_out_i_llvm_fpga_mem_lm22_histogram24_V0;
    assign redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_data_in = bubble_select_i_llvm_fpga_mem_lm22_histogram24_b;
    assign redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_in_bitsignaltemp = redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_in[0];
    assign redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_in_bitsignaltemp = redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_in[0];
    assign redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_out[0] = redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_out_bitsignaltemp;
    assign redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_out[0] = redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo (
        .valid_in(redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_mem_lm22_histogram24_b),
        .valid_out(redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo(BITJOIN,420)
    assign bubble_join_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_q = redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_data_out;

    // bubble_select_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo(BITSELECT,421)
    assign bubble_select_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_b = $unsigned(bubble_join_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_q[31:0]);

    // i_llvm_fpga_mem_lm43_histogram28(BLACKBOX,81)@133
    // in in_i_stall@20000000
    // out out_lm43_histogram_avm_address@20000000
    // out out_lm43_histogram_avm_burstcount@20000000
    // out out_lm43_histogram_avm_byteenable@20000000
    // out out_lm43_histogram_avm_enable@20000000
    // out out_lm43_histogram_avm_read@20000000
    // out out_lm43_histogram_avm_write@20000000
    // out out_lm43_histogram_avm_writedata@20000000
    // out out_o_readdata@165
    // out out_o_stall@20000000
    // out out_o_valid@165
    histogram_i_llvm_fpga_mem_lm43_0 thei_llvm_fpga_mem_lm43_histogram28 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D0),
        .in_i_dependence(SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D1),
        .in_i_predicate(SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D2),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_V0),
        .in_lm43_histogram_avm_readdata(in_lm43_histogram_avm_readdata),
        .in_lm43_histogram_avm_readdatavalid(in_lm43_histogram_avm_readdatavalid),
        .in_lm43_histogram_avm_waitrequest(in_lm43_histogram_avm_waitrequest),
        .in_lm43_histogram_avm_writeack(in_lm43_histogram_avm_writeack),
        .out_lm43_histogram_avm_address(i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_address),
        .out_lm43_histogram_avm_burstcount(i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_burstcount),
        .out_lm43_histogram_avm_byteenable(i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_byteenable),
        .out_lm43_histogram_avm_enable(i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_enable),
        .out_lm43_histogram_avm_read(i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_read),
        .out_lm43_histogram_avm_write(i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_write),
        .out_lm43_histogram_avm_writedata(i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm43_histogram28_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm43_histogram28_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm43_histogram28_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_lm43_histogram28(BITJOIN,379)
    assign bubble_join_i_llvm_fpga_mem_lm43_histogram28_q = i_llvm_fpga_mem_lm43_histogram28_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm43_histogram28(BITSELECT,380)
    assign bubble_select_i_llvm_fpga_mem_lm43_histogram28_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm43_histogram28_q[31:0]);

    // i_add_histogram29(ADD,61)@165
    assign i_add_histogram29_a = {1'b0, bubble_select_i_llvm_fpga_mem_lm43_histogram28_b};
    assign i_add_histogram29_b = {1'b0, bubble_select_redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_b};
    assign i_add_histogram29_o = $unsigned(i_add_histogram29_a) + $unsigned(i_add_histogram29_b);
    assign i_add_histogram29_q = i_add_histogram29_o[32:0];

    // bgTrunc_i_add_histogram29_sel_x(BITSELECT,2)@165
    assign bgTrunc_i_add_histogram29_sel_x_b = i_add_histogram29_q[31:0];

    // join_for_coalesced_delay_0(BITJOIN,319)
    assign join_for_coalesced_delay_0_q = {bubble_select_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_b, i_mptr_bitcast_index47_histogram0_dupName_0_trunc_sel_x_b};

    // SR_SE_join_for_coalesced_delay_0(STALLREG,708)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_join_for_coalesced_delay_0_r_valid <= 1'b0;
            SR_SE_join_for_coalesced_delay_0_r_data0 <= 65'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_join_for_coalesced_delay_0_r_valid <= SE_join_for_coalesced_delay_0_backStall & (SR_SE_join_for_coalesced_delay_0_r_valid | SR_SE_join_for_coalesced_delay_0_i_valid);

            if (SR_SE_join_for_coalesced_delay_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_join_for_coalesced_delay_0_r_data0 <= $unsigned(join_for_coalesced_delay_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_join_for_coalesced_delay_0_and0 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_V1;
    assign SR_SE_join_for_coalesced_delay_0_i_valid = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_V1 & SR_SE_join_for_coalesced_delay_0_and0;
    // Stall signal propagation
    assign SR_SE_join_for_coalesced_delay_0_backStall = SR_SE_join_for_coalesced_delay_0_r_valid | ~ (SR_SE_join_for_coalesced_delay_0_i_valid);

    // Valid
    assign SR_SE_join_for_coalesced_delay_0_V = SR_SE_join_for_coalesced_delay_0_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_0_r_valid : SR_SE_join_for_coalesced_delay_0_i_valid;

    assign SR_SE_join_for_coalesced_delay_0_D0 = SR_SE_join_for_coalesced_delay_0_r_valid == 1'b1 ? SR_SE_join_for_coalesced_delay_0_r_data0 : join_for_coalesced_delay_0_q;

    // SE_join_for_coalesced_delay_0(STALLENABLE,535)
    // Valid signal propagation
    assign SE_join_for_coalesced_delay_0_V0 = SE_join_for_coalesced_delay_0_wireValid;
    // Backward Stall generation
    assign SE_join_for_coalesced_delay_0_backStall = coalesced_delay_0_fifo_stall_out | ~ (SE_join_for_coalesced_delay_0_wireValid);
    // Computing multiple Valid(s)
    assign SE_join_for_coalesced_delay_0_wireValid = SR_SE_join_for_coalesced_delay_0_V;

    // coalesced_delay_0_fifo(STALLFIFO,342)
    assign coalesced_delay_0_fifo_valid_in = SE_join_for_coalesced_delay_0_V0;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = SR_SE_join_for_coalesced_delay_0_D0;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(SR_SE_join_for_coalesced_delay_0_D0),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,565)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_histogram30_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = redist15_i_llvm_fpga_mem_lm22_histogram24_out_o_readdata_32_fifo_valid_out & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm43_histogram28_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,429)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,430)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[64:0]);

    // sel_for_coalesced_delay_0(BITSELECT,320)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_histogram30(BLACKBOX,82)@165
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_histogram_avm_address@20000000
    // out out_memdep_histogram_avm_burstcount@20000000
    // out out_memdep_histogram_avm_byteenable@20000000
    // out out_memdep_histogram_avm_enable@20000000
    // out out_memdep_histogram_avm_read@20000000
    // out out_memdep_histogram_avm_write@20000000
    // out out_memdep_histogram_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@196
    // out out_o_writeack@196
    histogram_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_histogram30 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_histogram30_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(bgTrunc_i_add_histogram29_sel_x_b),
        .in_memdep_histogram_avm_readdata(in_memdep_histogram_avm_readdata),
        .in_memdep_histogram_avm_readdatavalid(in_memdep_histogram_avm_readdatavalid),
        .in_memdep_histogram_avm_waitrequest(in_memdep_histogram_avm_waitrequest),
        .in_memdep_histogram_avm_writeack(in_memdep_histogram_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_histogram30_out_lsu_memdep_o_active),
        .out_memdep_histogram_avm_address(i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_address),
        .out_memdep_histogram_avm_burstcount(i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_burstcount),
        .out_memdep_histogram_avm_byteenable(i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_byteenable),
        .out_memdep_histogram_avm_enable(i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_enable),
        .out_memdep_histogram_avm_read(i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_read),
        .out_memdep_histogram_avm_write(i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_write),
        .out_memdep_histogram_avm_writedata(i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_histogram30_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_histogram30_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_histogram30_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_histogram30(BITJOIN,382)
    assign bubble_join_i_llvm_fpga_mem_memdep_histogram30_q = i_llvm_fpga_mem_memdep_histogram30_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_histogram30(BITSELECT,383)
    assign bubble_select_i_llvm_fpga_mem_memdep_histogram30_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_histogram30_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push8_histogram31(BLACKBOX,90)@196
    // in in_stall_in@20000000
    // out out_data_out@197
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@197
    histogram_i_llvm_fpga_push_i1_memdep_phi_push8_0 thei_llvm_fpga_push_i1_memdep_phi_push8_histogram31 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_histogram30_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_feedback_stall_out_8),
        .in_keep_going(bubble_select_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_backStall),
        .in_valid_in(SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5(STALLENABLE,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed1 = (~ (SE_i_next_initerations_histogram6_vt_select_2_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_wireValid = i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_valid_out;

    // SE_out_i_llvm_fpga_push_i4_initerations_push9_histogram7(STALLENABLE,494)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_histogram7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_histogram7_wireValid = i_llvm_fpga_push_i4_initerations_push9_histogram7_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid194_i_next_initerations_histogram0_shift_x(BITSELECT,193)@99
    assign rightShiftStage0Idx1Rng1_uid194_i_next_initerations_histogram0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_b[3:1];

    // rightShiftStage0Idx1_uid196_i_next_initerations_histogram0_shift_x(BITJOIN,195)@99
    assign rightShiftStage0Idx1_uid196_i_next_initerations_histogram0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid194_i_next_initerations_histogram0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_histogram5(BITJOIN,403)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_q = i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_histogram5(BITSELECT,404)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_q[3:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x(MUX,197)@99
    assign rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_b or rightShiftStage0Idx1_uid196_i_next_initerations_histogram0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_s)
            1'b0 : rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_b;
            1'b1 : rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_q = rightShiftStage0Idx1_uid196_i_next_initerations_histogram0_shift_x_q;
            default : rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_histogram6_vt_select_2(BITSELECT,100)@99
    assign i_next_initerations_histogram6_vt_select_2_b = rightShiftStage0_uid198_i_next_initerations_histogram0_shift_x_q[2:0];

    // i_next_initerations_histogram6_vt_join(BITJOIN,99)@99
    assign i_next_initerations_histogram6_vt_join_q = {GND_q, i_next_initerations_histogram6_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push9_histogram7(BLACKBOX,95)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    histogram_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_histogram7 (
        .in_data_in(i_next_initerations_histogram6_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_feedback_stall_out_9),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push9_histogram7_backStall),
        .in_valid_in(SE_i_next_initerations_histogram6_vt_select_2_V1),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_histogram7_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_histogram7_out_feedback_valid_out_9),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push9_histogram7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push9_histogram7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_histogram5(BLACKBOX,88)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_stall_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    histogram_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_histogram5 (
        .in_data_in(c_i4_746_q),
        .in_dir(redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_histogram7_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_histogram7_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_backStall),
        .in_valid_in(SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V4),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_feedback_stall_out_9),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1(STALLENABLE,571)
    // Valid signal propagation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_stall_out | ~ (SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_wireValid = bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10(BLACKBOX,75)@97
    // in in_stall_in@20000000
    // out out_dest_data_out_4_0@98
    // out out_stall_out@20000000
    // out out_valid_out@98
    histogram_i_llvm_fpga_ffwd_dest_i33_unnamed_8_histogram0 thei_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10 (
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_backStall),
        .in_valid_in(SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_4_0(i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_dest_data_out_4_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10(BITJOIN,360)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_q = i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_dest_data_out_4_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10(BITSELECT,361)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_q[32:0]);

    // SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0(STALLENABLE,562)
    // Valid signal propagation
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V0 = SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_0;
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V1 = SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_1;
    // Stall signal propagation
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_0 = SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backStall & SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_0;
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_1 = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_stall_out & SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_1;
    // Backward Enable generation
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_or0 = SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_0;
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backEN = ~ (SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_1 | SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_v_s_0 = SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backEN & SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V;
    // Backward Stall generation
    assign SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backStall = ~ (SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_0 <= 1'b0;
            SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backEN == 1'b0)
            begin
                SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_0 <= SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_0 & SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_0;
            end
            else
            begin
                SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_0 <= SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_v_s_0;
            end

            if (SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backEN == 1'b0)
            begin
                SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_1 <= SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_1 & SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_s_tv_1;
            end
            else
            begin
                SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_R_v_1 <= SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37(STALLENABLE,490)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_wireValid = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_valid_out;

    // c_i33_154(CONSTANT,53)
    assign c_i33_154_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_replace_phi_histogram12(MUX,70)@98 + 1
    assign i_fpga_indvars_iv_replace_phi_histogram12_s = SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D0;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_fpga_indvars_iv_replace_phi_histogram12_q <= 33'b0;
        end
        else if (SE_i_fpga_indvars_iv_replace_phi_histogram12_backEN == 1'b1)
        begin
            unique case (i_fpga_indvars_iv_replace_phi_histogram12_s)
                1'b0 : i_fpga_indvars_iv_replace_phi_histogram12_q <= SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D1;
                1'b1 : i_fpga_indvars_iv_replace_phi_histogram12_q <= SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D2;
                default : i_fpga_indvars_iv_replace_phi_histogram12_q <= 33'b0;
            endcase
        end
    end

    // i_fpga_indvars_iv_next_histogram36(ADD,69)@99
    assign i_fpga_indvars_iv_next_histogram36_a = {1'b0, i_fpga_indvars_iv_replace_phi_histogram12_q};
    assign i_fpga_indvars_iv_next_histogram36_b = {1'b0, c_i33_154_q};
    assign i_fpga_indvars_iv_next_histogram36_o = $unsigned(i_fpga_indvars_iv_next_histogram36_a) + $unsigned(i_fpga_indvars_iv_next_histogram36_b);
    assign i_fpga_indvars_iv_next_histogram36_q = i_fpga_indvars_iv_next_histogram36_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_histogram36_sel_x(BITSELECT,3)@99
    assign bgTrunc_i_fpga_indvars_iv_next_histogram36_sel_x_b = i_fpga_indvars_iv_next_histogram36_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37(BLACKBOX,93)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    histogram_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_histogram36_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_feedback_stall_out_6),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_V0),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_feedback_valid_out_6),
        .out_stall_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0(REG,340)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backEN == 1'b1)
        begin
            redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_q <= $unsigned(SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_D0);
        end
    end

    // c_i33_undef50(CONSTANT,54)
    assign c_i33_undef50_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11(BLACKBOX,86)@97
    // in in_stall_in@20000000
    // out out_data_out@98
    // out out_feedback_stall_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@98
    histogram_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11 (
        .in_data_in(c_i33_undef50_q),
        .in_dir(redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_backStall),
        .in_valid_in(SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V1),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_feedback_stall_out_6),
        .out_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11(BITJOIN,396)
    assign bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11(BITSELECT,397)
    assign bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_b = $unsigned(bubble_join_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_q[32:0]);

    // SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11(STALLENABLE,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg0 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg1 <= SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed1 = (~ (SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall) & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireValid) | SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_StallValid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_backStall & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireValid;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_toReg0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_toReg1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_StallValid & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_or0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed0;
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireStall = ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_consumed1 & SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_or0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_backStall = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_V0 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_V1 = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireValid & ~ (SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_wireValid = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10(STALLENABLE,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed1 = (~ (SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_backStall & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_or0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_backStall = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_V0 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_V1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_wireValid = i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_out_valid_out;

    // SR_SE_i_fpga_indvars_iv_replace_phi_histogram12(STALLREG,705)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid <= 1'b0;
            SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data0 <= 1'bx;
            SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data1 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data2 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid <= SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall & (SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid | SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_i_valid);

            if (SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data0 <= $unsigned(redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q);
                SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_b);
                SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data2 <= $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_and0 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V0;
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_and1 = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_V1 & SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_and0;
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_i_valid = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_V1 & SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_and1;
    // Stall signal propagation
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall = SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid | ~ (SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_i_valid);

    // Valid
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_V = SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid : SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_i_valid;

    // Data0
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D0 = SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data0 : redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q;
    // Data1
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D1 = SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data1 : bubble_select_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_b;
    // Data2
    assign SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_D2 = SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_valid == 1'b1 ? SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_r_data2 : bubble_select_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_b;

    // SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0(STALLREG,704)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid <= 1'b0;
            SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backStall & (SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid | SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_i_valid);

            if (SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_data0 <= $unsigned(redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_i_valid = SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V0;
    // Stall signal propagation
    assign SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backStall = SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid | ~ (SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_i_valid);

    // Valid
    assign SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V = SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid == 1'b1 ? SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid : SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_i_valid;

    assign SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_D0 = SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_valid == 1'b1 ? SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_r_data0 : redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_q;

    // SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0(STALLENABLE,563)
    // Valid signal propagation
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V0 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_0;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V1 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_1;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V2 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_2;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V3 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_3;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V4 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_4;
    // Stall signal propagation
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_0 = SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_0;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_1 = i_llvm_fpga_pipeline_keep_going_histogram4_out_stall_out & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_1;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_2 = i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_stall_out & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_2;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_3 = i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_stall_out & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_3;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_4 = i_llvm_fpga_pop_i4_initerations_pop9_histogram5_out_stall_out & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_4;
    // Backward Enable generation
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or0 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_0;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or1 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_1 | SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or0;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or2 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_2 | SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or1;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or3 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_3 | SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or2;
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN = ~ (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_4 | SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_v_s_0 = SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN & SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V;
    // Backward Stall generation
    assign SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backStall = ~ (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_0 <= 1'b0;
            SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_1 <= 1'b0;
            SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_2 <= 1'b0;
            SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_3 <= 1'b0;
            SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN == 1'b0)
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_0 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_0 & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_0;
            end
            else
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_0 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_v_s_0;
            end

            if (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN == 1'b0)
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_1 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_1 & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_1;
            end
            else
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_1 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_v_s_0;
            end

            if (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN == 1'b0)
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_2 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_2 & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_2;
            end
            else
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_2 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_v_s_0;
            end

            if (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN == 1'b0)
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_3 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_3 & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_3;
            end
            else
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_3 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_v_s_0;
            end

            if (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN == 1'b0)
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_4 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_4 & SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_s_tv_4;
            end
            else
            begin
                SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_R_v_4 <= SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_v_s_0;
            end

        end
    end

    // SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x(STALLENABLE,507)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_V0 = SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_stall_out | ~ (SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_wireValid = SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_V;

    // SE_out_i_llvm_fpga_push_i4_cleanups_push10_histogram44(STALLENABLE,492)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_histogram44_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_histogram44_wireValid = i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_valid_out;

    // i_llvm_fpga_push_i4_cleanups_push10_histogram44(BLACKBOX,94)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    histogram_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_histogram44 (
        .in_data_in(SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_D0),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_feedback_stall_out_10),
        .in_keep_going(SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push10_histogram44_backStall),
        .in_valid_in(SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0(REG,341)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_backEN == 1'b1)
        begin
            redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q <= $unsigned(SR_SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_D0);
        end
    end

    // c_i4_746(CONSTANT,56)
    assign c_i4_746_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_histogram0(BLACKBOX,87)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    histogram_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_histogram0 (
        .in_data_in(c_i4_746_q),
        .in_dir(redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_histogram44_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_backStall),
        .in_valid_in(SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V3),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0(BITJOIN,400)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_q = i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0(BITSELECT,401)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_q[3:0]);

    // i_first_cleanup_histogram1_sel_x(BITSELECT,20)@99
    assign i_first_cleanup_histogram1_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b[0:0];

    // i_exitcond_histogram34_cmp_nsign(LOGICAL,200)@99
    assign i_exitcond_histogram34_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_histogram12_q[32:32]));

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38(BITJOIN,353)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_q = i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38(BITSELECT,354)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_q[0:0]);

    // i_unnamed_histogram39(LOGICAL,110)@99
    assign i_unnamed_histogram39_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_b & i_exitcond_histogram34_cmp_nsign_q;

    // i_notcmp_histogram40(LOGICAL,101)@99
    assign i_notcmp_histogram40_q = i_unnamed_histogram39_q ^ VCC_q;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0(STALLENABLE,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed0 = (~ (SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed2 = (~ (SR_SE_i_masked_histogram45_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed3 = (~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_or2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_wireValid = i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_out_valid_out;

    // SE_in_redist10_i_masked_histogram45_q_97_fifo(STALLENABLE,544)
    // Valid signal propagation
    assign SE_in_redist10_i_masked_histogram45_q_97_fifo_V0 = SE_in_redist10_i_masked_histogram45_q_97_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist10_i_masked_histogram45_q_97_fifo_backStall = redist10_i_masked_histogram45_q_97_fifo_stall_out | ~ (SE_in_redist10_i_masked_histogram45_q_97_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist10_i_masked_histogram45_q_97_fifo_wireValid = SE_i_masked_histogram45_V0;

    // SE_i_masked_histogram45(STALLENABLE,495)
    // Valid signal propagation
    assign SE_i_masked_histogram45_V0 = SE_i_masked_histogram45_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_histogram45_s_tv_0 = SE_in_redist10_i_masked_histogram45_q_97_fifo_backStall & SE_i_masked_histogram45_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_histogram45_backEN = ~ (SE_i_masked_histogram45_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_histogram45_v_s_0 = SE_i_masked_histogram45_backEN & SR_SE_i_masked_histogram45_V;
    // Backward Stall generation
    assign SE_i_masked_histogram45_backStall = ~ (SE_i_masked_histogram45_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_histogram45_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_histogram45_backEN == 1'b0)
            begin
                SE_i_masked_histogram45_R_v_0 <= SE_i_masked_histogram45_R_v_0 & SE_i_masked_histogram45_s_tv_0;
            end
            else
            begin
                SE_i_masked_histogram45_R_v_0 <= SE_i_masked_histogram45_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_histogram45(STALLREG,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_histogram45_r_valid <= 1'b0;
            SR_SE_i_masked_histogram45_r_data0 <= 1'bx;
            SR_SE_i_masked_histogram45_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_histogram45_r_valid <= SE_i_masked_histogram45_backStall & (SR_SE_i_masked_histogram45_r_valid | SR_SE_i_masked_histogram45_i_valid);

            if (SR_SE_i_masked_histogram45_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_histogram45_r_data0 <= i_notcmp_histogram40_q;
                SR_SE_i_masked_histogram45_r_data1 <= i_first_cleanup_histogram1_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_histogram45_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V2;
    assign SR_SE_i_masked_histogram45_i_valid = SE_i_unnamed_histogram39_V1 & SR_SE_i_masked_histogram45_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_histogram45_backStall = SR_SE_i_masked_histogram45_r_valid | ~ (SR_SE_i_masked_histogram45_i_valid);

    // Valid
    assign SR_SE_i_masked_histogram45_V = SR_SE_i_masked_histogram45_r_valid == 1'b1 ? SR_SE_i_masked_histogram45_r_valid : SR_SE_i_masked_histogram45_i_valid;

    // Data0
    assign SR_SE_i_masked_histogram45_D0 = SR_SE_i_masked_histogram45_r_valid == 1'b1 ? SR_SE_i_masked_histogram45_r_data0 : i_notcmp_histogram40_q;
    // Data1
    assign SR_SE_i_masked_histogram45_D1 = SR_SE_i_masked_histogram45_r_valid == 1'b1 ? SR_SE_i_masked_histogram45_r_data1 : i_first_cleanup_histogram1_sel_x_b;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_histogram41(STALLENABLE,486)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid = i_llvm_fpga_push_i1_notexitcond_histogram41_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_histogram41(BLACKBOX,91)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    histogram_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_histogram41 (
        .in_data_in(i_unnamed_histogram39_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_histogram4_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_histogram1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_histogram41_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_histogram41_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_histogram41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_histogram41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41(STALLENABLE,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_histogram41_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed1 = (~ (SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_wireValid = SE_i_unnamed_histogram39_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_and0;

    // SE_i_fpga_indvars_iv_replace_phi_histogram12(STALLENABLE,447)
    // Valid signal propagation
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_V0 = SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_0;
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_V1 = SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_1;
    // Stall signal propagation
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_0 = SE_i_unnamed_histogram39_backStall & SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_0;
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_1 = SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_backStall & SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_1;
    // Backward Enable generation
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_or0 = SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_0;
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_backEN = ~ (SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_1 | SE_i_fpga_indvars_iv_replace_phi_histogram12_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_v_s_0 = SE_i_fpga_indvars_iv_replace_phi_histogram12_backEN & SR_SE_i_fpga_indvars_iv_replace_phi_histogram12_V;
    // Backward Stall generation
    assign SE_i_fpga_indvars_iv_replace_phi_histogram12_backStall = ~ (SE_i_fpga_indvars_iv_replace_phi_histogram12_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_0 <= 1'b0;
            SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_fpga_indvars_iv_replace_phi_histogram12_backEN == 1'b0)
            begin
                SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_0 <= SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_0 & SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_0;
            end
            else
            begin
                SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_0 <= SE_i_fpga_indvars_iv_replace_phi_histogram12_v_s_0;
            end

            if (SE_i_fpga_indvars_iv_replace_phi_histogram12_backEN == 1'b0)
            begin
                SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_1 <= SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_1 & SE_i_fpga_indvars_iv_replace_phi_histogram12_s_tv_1;
            end
            else
            begin
                SE_i_fpga_indvars_iv_replace_phi_histogram12_R_v_1 <= SE_i_fpga_indvars_iv_replace_phi_histogram12_v_s_0;
            end

        end
    end

    // SE_i_unnamed_histogram39(STALLENABLE,502)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_unnamed_histogram39_fromReg0 <= '0;
            SE_i_unnamed_histogram39_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_unnamed_histogram39_fromReg0 <= SE_i_unnamed_histogram39_toReg0;
            // Successor 1
            SE_i_unnamed_histogram39_fromReg1 <= SE_i_unnamed_histogram39_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_unnamed_histogram39_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_backStall) & SE_i_unnamed_histogram39_wireValid) | SE_i_unnamed_histogram39_fromReg0;
    assign SE_i_unnamed_histogram39_consumed1 = (~ (SR_SE_i_masked_histogram45_backStall) & SE_i_unnamed_histogram39_wireValid) | SE_i_unnamed_histogram39_fromReg1;
    // Consuming
    assign SE_i_unnamed_histogram39_StallValid = SE_i_unnamed_histogram39_backStall & SE_i_unnamed_histogram39_wireValid;
    assign SE_i_unnamed_histogram39_toReg0 = SE_i_unnamed_histogram39_StallValid & SE_i_unnamed_histogram39_consumed0;
    assign SE_i_unnamed_histogram39_toReg1 = SE_i_unnamed_histogram39_StallValid & SE_i_unnamed_histogram39_consumed1;
    // Backward Stall generation
    assign SE_i_unnamed_histogram39_or0 = SE_i_unnamed_histogram39_consumed0;
    assign SE_i_unnamed_histogram39_wireStall = ~ (SE_i_unnamed_histogram39_consumed1 & SE_i_unnamed_histogram39_or0);
    assign SE_i_unnamed_histogram39_backStall = SE_i_unnamed_histogram39_wireStall;
    // Valid signal propagation
    assign SE_i_unnamed_histogram39_V0 = SE_i_unnamed_histogram39_wireValid & ~ (SE_i_unnamed_histogram39_fromReg0);
    assign SE_i_unnamed_histogram39_V1 = SE_i_unnamed_histogram39_wireValid & ~ (SE_i_unnamed_histogram39_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_unnamed_histogram39_and0 = SE_i_fpga_indvars_iv_replace_phi_histogram12_V0;
    assign SE_i_unnamed_histogram39_wireValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_V1 & SE_i_unnamed_histogram39_and0;

    // SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6(STALLENABLE,581)
    // Valid signal propagation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_V0 = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_backStall = i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_stall_out | ~ (SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_wireValid = bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38(BLACKBOX,73)@98
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@99
    // out out_stall_out@20000000
    // out out_valid_out@99
    histogram_i_llvm_fpga_ffwd_dest_i1_cmp404_0 thei_llvm_fpga_ffwd_dest_i1_cmp404_histogram38 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_backStall),
        .in_valid_in(SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38(STALLENABLE,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed0 = (~ (bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed1 = (~ (SE_i_unnamed_histogram39_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_wireValid = i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_out_valid_out;

    // bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg(STALLFIFO,698)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg(STALLFIFO,699)
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_V0;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked_histogram45(LOGICAL,96)@99 + 1
    assign i_masked_histogram45_qi = SR_SE_i_masked_histogram45_D0 & SR_SE_i_masked_histogram45_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_histogram45_delay ( .xin(i_masked_histogram45_qi), .xout(i_masked_histogram45_q), .ena(SE_i_masked_histogram45_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist10_i_masked_histogram45_q_97_fifo(STALLFIFO,328)
    assign redist10_i_masked_histogram45_q_97_fifo_valid_in = SE_in_redist10_i_masked_histogram45_q_97_fifo_V0;
    assign redist10_i_masked_histogram45_q_97_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall;
    assign redist10_i_masked_histogram45_q_97_fifo_data_in = i_masked_histogram45_q;
    assign redist10_i_masked_histogram45_q_97_fifo_valid_in_bitsignaltemp = redist10_i_masked_histogram45_q_97_fifo_valid_in[0];
    assign redist10_i_masked_histogram45_q_97_fifo_stall_in_bitsignaltemp = redist10_i_masked_histogram45_q_97_fifo_stall_in[0];
    assign redist10_i_masked_histogram45_q_97_fifo_valid_out[0] = redist10_i_masked_histogram45_q_97_fifo_valid_out_bitsignaltemp;
    assign redist10_i_masked_histogram45_q_97_fifo_stall_out[0] = redist10_i_masked_histogram45_q_97_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_masked_histogram45_q_97_fifo (
        .valid_in(redist10_i_masked_histogram45_q_97_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_masked_histogram45_q_97_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_histogram45_q),
        .valid_out(redist10_i_masked_histogram45_q_97_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_masked_histogram45_q_97_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_masked_histogram45_q_97_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg(STALLFIFO,701)
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_V0;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(99),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg(STALLFIFO,702)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1(STALLENABLE,657)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and0 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and1 = bubble_out_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and2 = bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and3 = redist10_i_masked_histogram45_q_97_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and4 = bubble_out_i_llvm_fpga_ffwd_dest_i33_unnamed_histogram8_histogram10_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and5 = bubble_out_i_llvm_fpga_ffwd_dest_i1_cmp404_histogram38_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_histogram30_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_and5;

    // SE_out_i_llvm_fpga_mem_memdep_histogram30(STALLENABLE,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_histogram30_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_histogram30_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_histogram30_wireValid) | SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed1 = (~ (SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_histogram30_wireValid) | SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_StallValid = SE_out_i_llvm_fpga_mem_memdep_histogram30_backStall & SE_out_i_llvm_fpga_mem_memdep_histogram30_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_toReg0 = SE_out_i_llvm_fpga_mem_memdep_histogram30_StallValid & SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_toReg1 = SE_out_i_llvm_fpga_mem_memdep_histogram30_StallValid & SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_or0 = SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_histogram30_consumed1 & SE_out_i_llvm_fpga_mem_memdep_histogram30_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_backStall = SE_out_i_llvm_fpga_mem_memdep_histogram30_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_V0 = SE_out_i_llvm_fpga_mem_memdep_histogram30_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_V1 = SE_out_i_llvm_fpga_mem_memdep_histogram30_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_histogram30_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_histogram30_wireValid = i_llvm_fpga_mem_memdep_histogram30_out_o_valid;

    // SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo(STALLENABLE,553)
    // Valid signal propagation
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_V0 = SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_stall_out | ~ (SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_and0 = redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_out;
    assign SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_histogram30_V1 & SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_and0;

    // redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo(STALLFIFO,334)
    assign redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V5;
    assign redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_in = SE_out_redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_backStall;
    assign redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b;
    assign redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_in_bitsignaltemp = redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_in[0];
    assign redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_in_bitsignaltemp = redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_in[0];
    assign redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_out[0] = redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_out_bitsignaltemp;
    assign redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_out[0] = redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo (
        .valid_in(redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b),
        .valid_out(redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl_histogram0_shift_x(BITSELECT,186)@99
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl_histogram0_shift_x_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl_histogram0_shift_x_b = leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl_histogram0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid188_i_cleanups_shl_histogram0_shift_x(BITJOIN,187)@99
    assign leftShiftStage0Idx1_uid188_i_cleanups_shl_histogram0_shift_x_q = {leftShiftStage0Idx1Rng1_uid187_i_cleanups_shl_histogram0_shift_x_b, GND_q};

    // leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x(MUX,189)@99
    assign leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b or leftShiftStage0Idx1_uid188_i_cleanups_shl_histogram0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_s)
            1'b0 : leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b;
            1'b1 : leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_q = leftShiftStage0Idx1_uid188_i_cleanups_shl_histogram0_shift_x_q;
            default : leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_histogram3_vt_select_3(BITSELECT,64)@99
    assign i_cleanups_shl_histogram3_vt_select_3_b = leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_q[3:1];

    // i_cleanups_shl_histogram3_vt_join(BITJOIN,63)@99
    assign i_cleanups_shl_histogram3_vt_join_q = {i_cleanups_shl_histogram3_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_histogram2(LOGICAL,67)@99
    assign i_first_cleanup_xor_histogram2_q = i_first_cleanup_histogram1_sel_x_b ^ VCC_q;

    // i_or_histogram42(LOGICAL,102)@99
    assign i_or_histogram42_q = i_notcmp_histogram40_q | i_first_cleanup_xor_histogram2_q;

    // i_next_cleanups_histogram43(MUX,97)@99
    assign i_next_cleanups_histogram43_s = i_or_histogram42_q;
    always @(i_next_cleanups_histogram43_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b or i_cleanups_shl_histogram3_vt_join_q)
    begin
        unique case (i_next_cleanups_histogram43_s)
            1'b0 : i_next_cleanups_histogram43_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_b;
            1'b1 : i_next_cleanups_histogram43_q = i_cleanups_shl_histogram3_vt_join_q;
            default : i_next_cleanups_histogram43_q = 4'b0;
        endcase
    end

    // SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x(STALLREG,711)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid <= 1'b0;
            SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data0 <= 4'bxxxx;
            SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid <= SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall & (SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid | SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_i_valid);

            if (SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data0 <= i_next_cleanups_histogram43_q;
                SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data1 <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_and0 = SE_in_i_llvm_fpga_push_i1_notexitcond_histogram41_V1;
    assign SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_and1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V0 & SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_and0;
    assign SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_i_valid = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V4 & SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_and1;
    // Stall signal propagation
    assign SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall = SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid | ~ (SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_i_valid);

    // Valid
    assign SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_V = SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid : SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_i_valid;

    // Data0
    assign SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_D0 = SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data0 : i_next_cleanups_histogram43_q;
    // Data1
    assign SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_D1 = SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_valid == 1'b1 ? SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_r_data1 : bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b;

    // SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37(STALLENABLE,489)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_V0 = SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_backStall = i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_and0 = SE_i_fpga_indvars_iv_replace_phi_histogram12_V1;
    assign SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V3 & SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_and0;

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_histogram9(STALLENABLE,482)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_histogram9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_histogram9_wireValid = i_llvm_fpga_push_i1_lastiniteration_histogram9_out_valid_out;

    // i_last_initeration_histogram8_sel_x(BITSELECT,21)@99
    assign i_last_initeration_histogram8_sel_x_b = i_next_initerations_histogram6_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_histogram9(BLACKBOX,89)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    histogram_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_histogram9 (
        .in_data_in(i_last_initeration_histogram8_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_histogram4_out_initeration_stall_out),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_histogram9_backStall),
        .in_valid_in(SE_i_next_initerations_histogram6_vt_select_2_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_histogram9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_histogram9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_histogram9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_histogram9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_histogram6_vt_select_2(STALLENABLE,498)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_histogram6_vt_select_2_fromReg0 <= '0;
            SE_i_next_initerations_histogram6_vt_select_2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_histogram6_vt_select_2_fromReg0 <= SE_i_next_initerations_histogram6_vt_select_2_toReg0;
            // Successor 1
            SE_i_next_initerations_histogram6_vt_select_2_fromReg1 <= SE_i_next_initerations_histogram6_vt_select_2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_histogram6_vt_select_2_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_histogram9_out_stall_out) & SE_i_next_initerations_histogram6_vt_select_2_wireValid) | SE_i_next_initerations_histogram6_vt_select_2_fromReg0;
    assign SE_i_next_initerations_histogram6_vt_select_2_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push9_histogram7_out_stall_out) & SE_i_next_initerations_histogram6_vt_select_2_wireValid) | SE_i_next_initerations_histogram6_vt_select_2_fromReg1;
    // Consuming
    assign SE_i_next_initerations_histogram6_vt_select_2_StallValid = SE_i_next_initerations_histogram6_vt_select_2_backStall & SE_i_next_initerations_histogram6_vt_select_2_wireValid;
    assign SE_i_next_initerations_histogram6_vt_select_2_toReg0 = SE_i_next_initerations_histogram6_vt_select_2_StallValid & SE_i_next_initerations_histogram6_vt_select_2_consumed0;
    assign SE_i_next_initerations_histogram6_vt_select_2_toReg1 = SE_i_next_initerations_histogram6_vt_select_2_StallValid & SE_i_next_initerations_histogram6_vt_select_2_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_histogram6_vt_select_2_or0 = SE_i_next_initerations_histogram6_vt_select_2_consumed0;
    assign SE_i_next_initerations_histogram6_vt_select_2_wireStall = ~ (SE_i_next_initerations_histogram6_vt_select_2_consumed1 & SE_i_next_initerations_histogram6_vt_select_2_or0);
    assign SE_i_next_initerations_histogram6_vt_select_2_backStall = SE_i_next_initerations_histogram6_vt_select_2_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_histogram6_vt_select_2_V0 = SE_i_next_initerations_histogram6_vt_select_2_wireValid & ~ (SE_i_next_initerations_histogram6_vt_select_2_fromReg0);
    assign SE_i_next_initerations_histogram6_vt_select_2_V1 = SE_i_next_initerations_histogram6_vt_select_2_wireValid & ~ (SE_i_next_initerations_histogram6_vt_select_2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_histogram6_vt_select_2_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_V1;
    assign SE_i_next_initerations_histogram6_vt_select_2_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V1 & SE_i_next_initerations_histogram6_vt_select_2_and0;

    // bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg(STALLFIFO,700)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_histogram4(BLACKBOX,83)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    histogram_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_histogram4 (
        .in_data_in(redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_histogram9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_histogram9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_histogram41_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_histogram41_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_backStall),
        .in_valid_in(SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_histogram4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_histogram4(STALLENABLE,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_histogram4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed1 = (~ (SE_i_next_initerations_histogram6_vt_select_2_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed2 = (~ (SE_bgTrunc_i_inc_histogram32_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed3 = (~ (SE_in_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_histogram37_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed4 = (~ (SR_SE_leftShiftStage0_uid190_i_cleanups_shl_histogram0_shift_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed5 = (~ (redist14_i_llvm_fpga_pipeline_keep_going_histogram4_out_data_out_97_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg5;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed5;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_or4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_wireValid = i_llvm_fpga_pipeline_keep_going_histogram4_out_valid_out;

    // SE_bgTrunc_i_inc_histogram32_sel_x(STALLENABLE,433)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_histogram32_sel_x_V0 = SE_bgTrunc_i_inc_histogram32_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_histogram32_sel_x_backStall = i_llvm_fpga_push_i32_i_041_push7_histogram33_out_stall_out | ~ (SE_bgTrunc_i_inc_histogram32_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_histogram32_sel_x_and0 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_V1;
    assign SE_bgTrunc_i_inc_histogram32_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_histogram4_V2 & SE_bgTrunc_i_inc_histogram32_sel_x_and0;

    // SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,522)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,523)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SR_SE_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_V0 & SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1(STALLENABLE,547)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_V0 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_0;
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_V1 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_0;
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_1 = SE_bgTrunc_i_inc_histogram32_sel_x_backStall & SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_or0 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_0;
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backEN = ~ (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_1 | SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_v_s_0 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backEN & SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_V0;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backStall = ~ (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_0 & SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_v_s_0;
            end

            if (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_1 <= SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_1 & SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_R_v_1 <= SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0(STALLENABLE,546)
    // Valid signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_V0 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_s_tv_0 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_backStall & SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backEN = ~ (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_v_s_0 = SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backEN & SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_V1;
    // Backward Stall generation
    assign SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backStall = ~ (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_R_v_0 & SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_R_v_0 <= SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,537)
    // Valid signal propagation
    assign SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backStall & SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_V1;
    // Backward Stall generation
    assign SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3(STALLENABLE,575)
    // Valid signal propagation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_V0 = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_stall_out | ~ (SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_wireValid = bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17(BLACKBOX,78)@96
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@97
    // out out_stall_out@20000000
    // out out_valid_out@97
    histogram_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_backStall),
        .in_valid_in(SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17(STALLENABLE,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed0 = (~ (SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed1 = (~ (SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_valid_out;

    // SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2(STALLENABLE,518)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_1 = SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,531)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15(STALLENABLE,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed0 = (~ (SE_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed1 = (~ (SE_redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_StallValid = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_backStall & SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_StallValid & SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_StallValid & SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_or0 = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_backStall = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_V0 = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_V1 = SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_wireValid = i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_041_push7_histogram33(STALLENABLE,488)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_041_push7_histogram33_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_041_push7_histogram33_wireValid = i_llvm_fpga_push_i32_i_041_push7_histogram33_out_valid_out;

    // c_i32_152(CONSTANT,52)
    assign c_i32_152_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_histogram32(ADD,71)@99
    assign i_inc_histogram32_a = {1'b0, redist11_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out_2_1_q};
    assign i_inc_histogram32_b = {1'b0, c_i32_152_q};
    assign i_inc_histogram32_o = $unsigned(i_inc_histogram32_a) + $unsigned(i_inc_histogram32_b);
    assign i_inc_histogram32_q = i_inc_histogram32_o[32:0];

    // bgTrunc_i_inc_histogram32_sel_x(BITSELECT,4)@99
    assign bgTrunc_i_inc_histogram32_sel_x_b = i_inc_histogram32_q[31:0];

    // i_llvm_fpga_push_i32_i_041_push7_histogram33(BLACKBOX,92)@99
    // in in_stall_in@20000000
    // out out_data_out@100
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@100
    histogram_i_llvm_fpga_push_i32_i_041_push7_0 thei_llvm_fpga_push_i32_i_041_push7_histogram33 (
        .in_data_in(bgTrunc_i_inc_histogram32_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_feedback_stall_out_7),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_histogram4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_041_push7_histogram33_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_histogram32_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_i_041_push7_histogram33_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_i_041_push7_histogram33_out_feedback_valid_out_7),
        .out_stall_out(i_llvm_fpga_push_i32_i_041_push7_histogram33_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_041_push7_histogram33_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo(BITJOIN,426)
    assign bubble_join_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_q = redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_data_out;

    // bubble_select_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo(BITSELECT,427)
    assign bubble_select_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_b = $unsigned(bubble_join_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_q[0:0]);

    // c_i32_051(CONSTANT,51)
    assign c_i32_051_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_041_pop7_histogram15(BLACKBOX,85)@96
    // in in_stall_in@20000000
    // out out_data_out@97
    // out out_feedback_stall_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@97
    histogram_i_llvm_fpga_pop_i32_i_041_pop7_0 thei_llvm_fpga_pop_i32_i_041_pop7_histogram15 (
        .in_data_in(c_i32_051_q),
        .in_dir(bubble_select_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_b),
        .in_feedback_in_7(i_llvm_fpga_push_i32_i_041_push7_histogram33_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_i_041_push7_histogram33_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_backStall),
        .in_valid_in(SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_feedback_stall_out_7),
        .out_stall_out(i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0(STALLREG,703)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid <= 1'b0;
            SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid <= SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backStall & (SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid | SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_i_valid);

            if (SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_data0 <= $unsigned(bubble_select_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_i_valid = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backStall = SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid | ~ (SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_i_valid);

    // Valid
    assign SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_V = SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid == 1'b1 ? SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid : SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_i_valid;

    assign SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_D0 = SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_valid == 1'b1 ? SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_r_data0 : bubble_select_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_b;

    // SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo(STALLENABLE,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg0 <= '0;
            SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg0 <= SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_toReg0;
            // Successor 1
            SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg1 <= SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed0 = (~ (SR_SE_redist21_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_96_0_backStall) & SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireValid) | SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg0;
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_i_041_pop7_histogram15_out_stall_out) & SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireValid) | SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg1;
    // Consuming
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_StallValid = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_backStall & SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireValid;
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_toReg0 = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_StallValid & SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed0;
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_toReg1 = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_StallValid & SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_or0 = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed0;
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireStall = ~ (SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_consumed1 & SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_or0);
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_backStall = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_V0 = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireValid & ~ (SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg0);
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_V1 = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireValid & ~ (SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_wireValid = redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_out;

    // redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo(STALLFIFO,339)
    assign redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_in = SE_out_histogram_B2_merge_reg_aunroll_x_V6;
    assign redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_in = SE_out_redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_backStall;
    assign redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_data_in = bubble_select_histogram_B2_merge_reg_aunroll_x_b;
    assign redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_in_bitsignaltemp = redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_in[0];
    assign redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_in_bitsignaltemp = redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_in[0];
    assign redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_out[0] = redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_out_bitsignaltemp;
    assign redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_out[0] = redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo (
        .valid_in(redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_histogram_B2_merge_reg_aunroll_x_b),
        .valid_out(redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg(STALLFIFO,697)
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_in = SE_out_histogram_B2_merge_reg_aunroll_x_V5;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_in = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_6_backStall;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_histogram_B2_merge_reg_aunroll_x_6_reg (
        .valid_in(bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg(STALLFIFO,695)
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_in = SE_out_histogram_B2_merge_reg_aunroll_x_V3;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_in = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_4_backStall;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_histogram_B2_merge_reg_aunroll_x_4_reg (
        .valid_in(bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg(STALLFIFO,694)
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_in = SE_out_histogram_B2_merge_reg_aunroll_x_V2;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_in = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_3_backStall;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(96),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_histogram_B2_merge_reg_aunroll_x_3_reg (
        .valid_in(bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13(BLACKBOX,74)@98
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@99
    // out out_stall_out@20000000
    // out out_valid_out@99
    histogram_i_llvm_fpga_ffwd_dest_i1_cmp405_0 thei_llvm_fpga_ffwd_dest_i1_cmp405_histogram13 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_backStall),
        .in_valid_in(SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2(STALLENABLE,573)
    // Valid signal propagation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_stall_out | ~ (SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_wireValid = bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_out;

    // bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg(STALLFIFO,693)
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_in = SE_out_histogram_B2_merge_reg_aunroll_x_V1;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(98),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_histogram_B2_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg(STALLFIFO,692)
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_in = SE_out_histogram_B2_merge_reg_aunroll_x_V0;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_histogram_B2_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,503)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = histogram_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,407)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,408)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // histogram_B2_merge_reg_aunroll_x(BLACKBOX,15)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    histogram_B2_merge_reg thehistogram_B2_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_histogram_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(histogram_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(histogram_B2_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_histogram_B2_merge_reg_aunroll_x(STALLENABLE,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg5 <= '0;
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg0 <= SE_out_histogram_B2_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg1 <= SE_out_histogram_B2_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg2 <= SE_out_histogram_B2_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg3 <= SE_out_histogram_B2_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg4 <= SE_out_histogram_B2_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg5 <= SE_out_histogram_B2_merge_reg_aunroll_x_toReg5;
            // Successor 6
            SE_out_histogram_B2_merge_reg_aunroll_x_fromReg6 <= SE_out_histogram_B2_merge_reg_aunroll_x_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_histogram_B2_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_histogram_B2_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid) | SE_out_histogram_B2_merge_reg_aunroll_x_fromReg0;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_histogram_B2_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid) | SE_out_histogram_B2_merge_reg_aunroll_x_fromReg1;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_consumed2 = (~ (bubble_out_histogram_B2_merge_reg_aunroll_x_3_reg_stall_out) & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid) | SE_out_histogram_B2_merge_reg_aunroll_x_fromReg2;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_consumed3 = (~ (bubble_out_histogram_B2_merge_reg_aunroll_x_4_reg_stall_out) & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid) | SE_out_histogram_B2_merge_reg_aunroll_x_fromReg3;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_consumed4 = (~ (bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_out) & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid) | SE_out_histogram_B2_merge_reg_aunroll_x_fromReg4;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_consumed5 = (~ (bubble_out_histogram_B2_merge_reg_aunroll_x_6_reg_stall_out) & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid) | SE_out_histogram_B2_merge_reg_aunroll_x_fromReg5;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_consumed6 = (~ (redist20_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_95_fifo_stall_out) & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid) | SE_out_histogram_B2_merge_reg_aunroll_x_fromReg6;
    // Consuming
    assign SE_out_histogram_B2_merge_reg_aunroll_x_StallValid = SE_out_histogram_B2_merge_reg_aunroll_x_backStall & SE_out_histogram_B2_merge_reg_aunroll_x_wireValid;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_toReg0 = SE_out_histogram_B2_merge_reg_aunroll_x_StallValid & SE_out_histogram_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_toReg1 = SE_out_histogram_B2_merge_reg_aunroll_x_StallValid & SE_out_histogram_B2_merge_reg_aunroll_x_consumed1;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_toReg2 = SE_out_histogram_B2_merge_reg_aunroll_x_StallValid & SE_out_histogram_B2_merge_reg_aunroll_x_consumed2;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_toReg3 = SE_out_histogram_B2_merge_reg_aunroll_x_StallValid & SE_out_histogram_B2_merge_reg_aunroll_x_consumed3;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_toReg4 = SE_out_histogram_B2_merge_reg_aunroll_x_StallValid & SE_out_histogram_B2_merge_reg_aunroll_x_consumed4;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_toReg5 = SE_out_histogram_B2_merge_reg_aunroll_x_StallValid & SE_out_histogram_B2_merge_reg_aunroll_x_consumed5;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_toReg6 = SE_out_histogram_B2_merge_reg_aunroll_x_StallValid & SE_out_histogram_B2_merge_reg_aunroll_x_consumed6;
    // Backward Stall generation
    assign SE_out_histogram_B2_merge_reg_aunroll_x_or0 = SE_out_histogram_B2_merge_reg_aunroll_x_consumed0;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_or1 = SE_out_histogram_B2_merge_reg_aunroll_x_consumed1 & SE_out_histogram_B2_merge_reg_aunroll_x_or0;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_or2 = SE_out_histogram_B2_merge_reg_aunroll_x_consumed2 & SE_out_histogram_B2_merge_reg_aunroll_x_or1;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_or3 = SE_out_histogram_B2_merge_reg_aunroll_x_consumed3 & SE_out_histogram_B2_merge_reg_aunroll_x_or2;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_or4 = SE_out_histogram_B2_merge_reg_aunroll_x_consumed4 & SE_out_histogram_B2_merge_reg_aunroll_x_or3;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_or5 = SE_out_histogram_B2_merge_reg_aunroll_x_consumed5 & SE_out_histogram_B2_merge_reg_aunroll_x_or4;
    assign SE_out_histogram_B2_merge_reg_aunroll_x_wireStall = ~ (SE_out_histogram_B2_merge_reg_aunroll_x_consumed6 & SE_out_histogram_B2_merge_reg_aunroll_x_or5);
    assign SE_out_histogram_B2_merge_reg_aunroll_x_backStall = SE_out_histogram_B2_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_histogram_B2_merge_reg_aunroll_x_V0 = SE_out_histogram_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_histogram_B2_merge_reg_aunroll_x_fromReg0);
    assign SE_out_histogram_B2_merge_reg_aunroll_x_V1 = SE_out_histogram_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_histogram_B2_merge_reg_aunroll_x_fromReg1);
    assign SE_out_histogram_B2_merge_reg_aunroll_x_V2 = SE_out_histogram_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_histogram_B2_merge_reg_aunroll_x_fromReg2);
    assign SE_out_histogram_B2_merge_reg_aunroll_x_V3 = SE_out_histogram_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_histogram_B2_merge_reg_aunroll_x_fromReg3);
    assign SE_out_histogram_B2_merge_reg_aunroll_x_V4 = SE_out_histogram_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_histogram_B2_merge_reg_aunroll_x_fromReg4);
    assign SE_out_histogram_B2_merge_reg_aunroll_x_V5 = SE_out_histogram_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_histogram_B2_merge_reg_aunroll_x_fromReg5);
    assign SE_out_histogram_B2_merge_reg_aunroll_x_V6 = SE_out_histogram_B2_merge_reg_aunroll_x_wireValid & ~ (SE_out_histogram_B2_merge_reg_aunroll_x_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_histogram_B2_merge_reg_aunroll_x_wireValid = histogram_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg(STALLFIFO,696)
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_in = SE_out_histogram_B2_merge_reg_aunroll_x_V4;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_in = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_backStall;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp = bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_in[0];
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp;
    assign bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_out[0] = bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(130),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_histogram_B2_merge_reg_aunroll_x_5_reg (
        .valid_in(bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5(STALLENABLE,579)
    // Valid signal propagation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_V0 = SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_stall_out | ~ (SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_wireValid = bubble_out_histogram_B2_merge_reg_aunroll_x_5_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26(BLACKBOX,77)@130
    // in in_stall_in@20000000
    // out out_dest_data_out_3_0@131
    // out out_stall_out@20000000
    // out out_valid_out@131
    histogram_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_backStall),
        .in_valid_in(SE_out_bubble_out_histogram_B2_merge_reg_aunroll_x_5_V0),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_dest_data_out_3_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26(STALLENABLE,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed0 = (~ (SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed1 = (~ (SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_valid_out;

    // SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2(STALLENABLE,515)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_1 = SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_mem_lm1_histogram21_V1 & SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_V0 & SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,247)@131
    assign i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(bubble_select_i_llvm_fpga_mem_lm1_histogram21_b[31:31]);

    // bubble_join_i_llvm_fpga_mem_lm1_histogram21(BITJOIN,373)
    assign bubble_join_i_llvm_fpga_mem_lm1_histogram21_q = i_llvm_fpga_mem_lm1_histogram21_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_histogram21(BITSELECT,374)
    assign bubble_select_i_llvm_fpga_mem_lm1_histogram21_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_histogram21_q[31:0]);

    // i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,273)@131
    assign i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_mem_lm1_histogram21_b, i_mptr_bitcast_index43_histogram0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26(BITJOIN,367)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_out_dest_data_out_3_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26(BITSELECT,368)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_q[63:0]);

    // i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,293)@131
    assign i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_b[59:0]);
    assign i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast46508_histogram26_b[63:60]);

    // i_mptr_bitcast_index47_histogram0_add_x_p1_of_2(ADD,216)@131 + 1
    assign i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q = i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_o[59:0];

    // SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0(STALLENABLE,540)
    // Valid signal propagation
    assign SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0 = SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backStall & SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN = ~ (SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0 = SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN & SE_out_i_llvm_fpga_mem_lm1_histogram21_V0;
    // Backward Stall generation
    assign SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall = ~ (SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 & SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2(STALLENABLE,516)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_and1 = SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_v_s_0 = SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0 & SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0(REG,324)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b1)
        begin
            redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel0_2_b);
        end
    end

    // i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,279)@132
    assign i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q};

    // redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,322)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,244)@132
    assign i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index47_histogram0_add_x_p2_of_2(ADD,217)@132 + 1
    assign i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_cin = i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_q = i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_o[5:1];

    // redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0(REG,326)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q(BITJOIN,218)@133
    assign i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_q, redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index47_histogram0_dupName_0_trunc_sel_x(BITSELECT,28)@133
    assign i_mptr_bitcast_index47_histogram0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_q[63:0];

    // SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo(STALLENABLE,559)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg0 <= '0;
            SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg0 <= SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_toReg0;
            // Successor 1
            SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg1 <= SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed0 = (~ (SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall) & SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireValid) | SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg0;
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed1 = (~ (SR_SE_join_for_coalesced_delay_0_backStall) & SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireValid) | SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_StallValid = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_backStall & SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireValid;
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_toReg0 = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_StallValid & SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed0;
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_toReg1 = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_StallValid & SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_or0 = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed0;
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireStall = ~ (SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_consumed1 & SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_or0);
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_backStall = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_V0 = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireValid & ~ (SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg0);
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_V1 = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireValid & ~ (SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_wireValid = redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_valid_out;

    // SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q(STALLENABLE,517)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg0 <= SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg1 <= SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed0 = (~ (SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall) & SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed1 = (~ (SR_SE_join_for_coalesced_delay_0_backStall) & SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_StallValid = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireValid;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_toReg0 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_toReg1 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_or0 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireStall = ~ (SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_consumed1 & SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_or0);
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_backStall = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_V1 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index47_histogram0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_wireValid = SE_redist8_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_and0;

    // SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo(STALLENABLE,551)
    // Valid signal propagation
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_V0 = SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall = i_llvm_fpga_mem_lm43_histogram28_out_o_stall | ~ (SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_wireValid = SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_V;

    // SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo(STALLREG,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid <= 1'b0;
            SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid <= SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall & (SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid | SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_i_valid);

            if (SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data0 <= i_mptr_bitcast_index47_histogram0_dupName_0_trunc_sel_x_b;
                SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data1 <= $unsigned(bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_b);
                SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data2 <= $unsigned(bubble_select_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_and0 = redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_out;
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_and1 = SE_i_mptr_bitcast_index47_histogram0_add_x_BitJoin_for_q_V0 & SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_and0;
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_i_valid = SE_out_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_V0 & SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_and1;
    // Stall signal propagation
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall = SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid | ~ (SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_V = SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid : SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D0 = SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data0 : i_mptr_bitcast_index47_histogram0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D1 = SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data1 : bubble_select_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_b;
    // Data2
    assign SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_D2 = SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_r_data2 : bubble_select_redist17_i_first_cleanup_xor_or_histogram19_q_34_fifo_b;

    // redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo(STALLFIFO,333)
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_in = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_V1;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_in = SR_SE_out_redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_backStall;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_data_in = redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_q;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_in[0];
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_in_bitsignaltemp = redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_in[0];
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_out[0] = redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_out_bitsignaltemp;
    assign redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_out[0] = redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo (
        .valid_in(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_in_bitsignaltemp),
        .data_in(redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_q),
        .valid_out(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q(STALLENABLE,514)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_lm22_histogram24_out_o_stall | ~ (SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index43_histogram0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and1 = SE_redist9_i_mptr_bitcast_index43_histogram0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and0;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and2 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_V0 & SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and1;
    assign SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_wireValid = SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_1_V0 & SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_and2;

    // SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1(STALLENABLE,549)
    // Valid signal propagation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_V0 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_0;
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_V1 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_1;
    // Stall signal propagation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_0 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitJoin_for_q_backStall & SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_0;
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_1 = redist13_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_34_fifo_stall_out & SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_1;
    // Backward Enable generation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_or0 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_0;
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backEN = ~ (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_1 | SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_v_s_0 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backEN & SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_V0;
    // Backward Stall generation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backStall = ~ (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_0 <= SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_0 & SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_0 <= SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_v_s_0;
            end

            if (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_1 <= SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_1 & SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_R_v_1 <= SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0(STALLENABLE,548)
    // Valid signal propagation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_V0 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_s_tv_0 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_1_backStall & SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backEN = ~ (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_v_s_0 = SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backEN & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_V1;
    // Backward Stall generation
    assign SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backStall = ~ (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_R_v_0 <= SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_R_v_0 & SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_R_v_0 <= SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20(BLACKBOX,84)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    histogram_i_llvm_fpga_pop_i1_memdep_phi_pop8_0 thei_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20 (
        .in_data_in(GND_q),
        .in_dir(redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_q),
        .in_feedback_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_histogram31_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_backStall),
        .in_valid_in(SE_redist22_histogram_B2_merge_reg_aunroll_x_out_data_out_0_tpl_97_0_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20(STALLENABLE,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed0 = (~ (SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed1 = (~ (SE_redist12_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_valid_out;

    // SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13(STALLENABLE,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed0 = (~ (SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed1 = (~ (SR_SE_redist16_i_first_cleanup_xor_or_histogram19_q_2_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_StallValid = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_backStall & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_StallValid & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_or0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_backStall = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_V0 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_V1 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_and0 = i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_valid_out;
    assign SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_wireValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_histogram0_V3 & SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_and0;

    // SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0(STALLENABLE,541)
    // Valid signal propagation
    assign SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_V0 = SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_backStall & SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2(STALLENABLE,519)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel1_0_V1 & SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_v_s_0 = SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q(STALLENABLE,520)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_lm1_histogram21_out_o_stall | ~ (SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and1 = SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and0;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and1;
    assign SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_V0 & SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_and2;

    // SE_out_i_llvm_fpga_mem_lm1_histogram21(STALLENABLE,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg0 <= SE_out_i_llvm_fpga_mem_lm1_histogram21_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg1 <= SE_out_i_llvm_fpga_mem_lm1_histogram21_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed0 = (~ (SE_redist3_i_mptr_bitcast_index47_histogram0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall) & SE_out_i_llvm_fpga_mem_lm1_histogram21_wireValid) | SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg0;
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed1 = (~ (SE_i_mptr_bitcast_index47_histogram0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_mem_lm1_histogram21_wireValid) | SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_StallValid = SE_out_i_llvm_fpga_mem_lm1_histogram21_backStall & SE_out_i_llvm_fpga_mem_lm1_histogram21_wireValid;
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_toReg0 = SE_out_i_llvm_fpga_mem_lm1_histogram21_StallValid & SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_toReg1 = SE_out_i_llvm_fpga_mem_lm1_histogram21_StallValid & SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_or0 = SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed0;
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_wireStall = ~ (SE_out_i_llvm_fpga_mem_lm1_histogram21_consumed1 & SE_out_i_llvm_fpga_mem_lm1_histogram21_or0);
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_backStall = SE_out_i_llvm_fpga_mem_lm1_histogram21_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_V0 = SE_out_i_llvm_fpga_mem_lm1_histogram21_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg0);
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_V1 = SE_out_i_llvm_fpga_mem_lm1_histogram21_wireValid & ~ (SE_out_i_llvm_fpga_mem_lm1_histogram21_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_lm1_histogram21_wireValid = i_llvm_fpga_mem_lm1_histogram21_out_o_valid;

    // bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13(BITJOIN,357)
    assign bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_q = i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13(BITSELECT,358)
    assign bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_q[0:0]);

    // i_unnamed_histogram14(LOGICAL,103)@99
    assign i_unnamed_histogram14_q = bubble_select_i_llvm_fpga_ffwd_dest_i1_cmp405_histogram13_b ^ VCC_q;

    // i_first_cleanup_xor_or_histogram19(LOGICAL,68)@99
    assign i_first_cleanup_xor_or_histogram19_q = i_unnamed_histogram14_q | i_first_cleanup_xor_histogram2_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20(BITJOIN,390)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_q = i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20(BITSELECT,391)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_q[0:0]);

    // i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,288)@97
    assign i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_i_041_pop7_histogram15_b, i_mptr_bitcast_index43_histogram0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17(BITJOIN,370)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17(BITSELECT,371)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_q[63:0]);

    // i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,294)@97
    assign i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_b[59:0]);
    assign i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast486_histogram17_b[63:60]);

    // i_mptr_bitcast_index_histogram0_add_x_p1_of_2(ADD,225)@97 + 1
    assign i_mptr_bitcast_index_histogram0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_histogram0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_histogram0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_histogram0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_histogram0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_histogram0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_histogram0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_histogram0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q = i_mptr_bitcast_index_histogram0_add_x_p1_of_2_o[59:0];

    // redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,321)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,284)@98
    assign i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index_histogram0_add_x_p2_of_2(ADD,226)@98 + 1
    assign i_mptr_bitcast_index_histogram0_add_x_p2_of_2_cin = i_mptr_bitcast_index_histogram0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_histogram0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_histogram0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_histogram0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index43_histogram0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_histogram0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_histogram0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index_histogram0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_histogram0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_histogram0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_histogram0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_histogram0_add_x_p2_of_2_q = i_mptr_bitcast_index_histogram0_add_x_p2_of_2_o[5:1];

    // redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0(REG,325)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q(BITJOIN,227)@99
    assign i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_histogram0_add_x_p2_of_2_q, redist7_i_mptr_bitcast_index_histogram0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index_histogram0_dupName_0_trunc_sel_x(BITSELECT,34)@99
    assign i_mptr_bitcast_index_histogram0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_lm1_histogram21(BLACKBOX,79)@99
    // in in_i_stall@20000000
    // out out_lm1_histogram_avm_address@20000000
    // out out_lm1_histogram_avm_burstcount@20000000
    // out out_lm1_histogram_avm_byteenable@20000000
    // out out_lm1_histogram_avm_enable@20000000
    // out out_lm1_histogram_avm_read@20000000
    // out out_lm1_histogram_avm_write@20000000
    // out out_lm1_histogram_avm_writedata@20000000
    // out out_o_readdata@131
    // out out_o_stall@20000000
    // out out_o_valid@131
    histogram_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_histogram21 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index_histogram0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_histogram20_b),
        .in_i_predicate(i_first_cleanup_xor_or_histogram19_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_lm1_histogram21_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index_histogram0_add_x_BitJoin_for_q_V0),
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
        .out_o_stall(i_llvm_fpga_mem_lm1_histogram21_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_histogram21_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,7)
    assign out_lm1_histogram_avm_address = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_address;
    assign out_lm1_histogram_avm_enable = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_enable;
    assign out_lm1_histogram_avm_read = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_read;
    assign out_lm1_histogram_avm_write = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_write;
    assign out_lm1_histogram_avm_writedata = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_writedata;
    assign out_lm1_histogram_avm_byteenable = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_byteenable;
    assign out_lm1_histogram_avm_burstcount = i_llvm_fpga_mem_lm1_histogram21_out_lm1_histogram_avm_burstcount;

    // bubble_join_redist10_i_masked_histogram45_q_97_fifo(BITJOIN,411)
    assign bubble_join_redist10_i_masked_histogram45_q_97_fifo_q = redist10_i_masked_histogram45_q_97_fifo_data_out;

    // bubble_select_redist10_i_masked_histogram45_q_97_fifo(BITSELECT,412)
    assign bubble_select_redist10_i_masked_histogram45_q_97_fifo_b = $unsigned(bubble_join_redist10_i_masked_histogram45_q_97_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,8)@196
    assign out_masked = bubble_select_redist10_i_masked_histogram45_q_97_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_histogram5_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,10)
    assign out_lm22_histogram_avm_address = i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_address;
    assign out_lm22_histogram_avm_enable = i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_enable;
    assign out_lm22_histogram_avm_read = i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_read;
    assign out_lm22_histogram_avm_write = i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_write;
    assign out_lm22_histogram_avm_writedata = i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_writedata;
    assign out_lm22_histogram_avm_byteenable = i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_byteenable;
    assign out_lm22_histogram_avm_burstcount = i_llvm_fpga_mem_lm22_histogram24_out_lm22_histogram_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,12)
    assign out_lm43_histogram_avm_address = i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_address;
    assign out_lm43_histogram_avm_enable = i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_enable;
    assign out_lm43_histogram_avm_read = i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_read;
    assign out_lm43_histogram_avm_write = i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_write;
    assign out_lm43_histogram_avm_writedata = i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_writedata;
    assign out_lm43_histogram_avm_byteenable = i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_byteenable;
    assign out_lm43_histogram_avm_burstcount = i_llvm_fpga_mem_lm43_histogram28_out_lm43_histogram_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,13)
    assign out_memdep_histogram_avm_address = i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_address;
    assign out_memdep_histogram_avm_enable = i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_enable;
    assign out_memdep_histogram_avm_read = i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_read;
    assign out_memdep_histogram_avm_write = i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_write;
    assign out_memdep_histogram_avm_writedata = i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_writedata;
    assign out_memdep_histogram_avm_byteenable = i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_byteenable;
    assign out_memdep_histogram_avm_burstcount = i_llvm_fpga_mem_memdep_histogram30_out_memdep_histogram_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,14)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_histogram30_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,60)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_histogram4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_histogram4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_histogram4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_histogram4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,162)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_histogram4_out_pipeline_valid_out;

    // sync_out(GPOUT,172)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
