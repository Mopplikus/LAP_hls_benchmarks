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

// SystemVerilog created from bb_jacobi_1d_B5_stall_region
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B5_stall_region (
    input wire [31:0] in_memdep_5_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount,
    output wire [0:0] out_exitcond1750_pop29,
    output wire [0:0] out_masked,
    output wire [0:0] out_notcmp3952_pop30,
    output wire [0:0] out_toi1_intcast,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_writedata,
    output wire [3:0] out_memdep_5_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_burstcount,
    output wire [0:0] out_lsu_memdep_5_o_active,
    input wire [31:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1749_pop1968,
    input wire [0:0] in_forked,
    input wire [63:0] in_mPtr_bitcast707663,
    input wire [0:0] in_memdep_phi6_pop1355_pop2365,
    input wire [0:0] in_notcmp3951_pop2070,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next13_jacobi_1d35_sel_x_b;
    wire [31:0] bgTrunc_i_inc15_jacobi_1d25_sel_x_b;
    wire [0:0] i_first_cleanup_jacobi_1d1_sel_x_b;
    wire [0:0] i_last_initeration_jacobi_1d8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index67_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index67_jacobi_1d0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index69_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_toi1_intcast_jacobi_1d20_sel_x_b;
    wire [0:0] jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] jacobi_1d_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] jacobi_1d_B5_merge_reg_aunroll_x_out_valid_out;
    wire [1:0] c_i2_142_q;
    wire [31:0] c_i32_145_q;
    wire [7:0] c_i8_148_q;
    wire [7:0] c_i8_9646_q;
    wire [1:0] i_cleanups_shl_jacobi_1d3_vt_join_q;
    wire [0:0] i_cleanups_shl_jacobi_1d3_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_jacobi_1d2_q;
    wire [8:0] i_fpga_indvars_iv_next13_jacobi_1d35_a;
    wire [8:0] i_fpga_indvars_iv_next13_jacobi_1d35_b;
    logic [8:0] i_fpga_indvars_iv_next13_jacobi_1d35_o;
    wire [8:0] i_fpga_indvars_iv_next13_jacobi_1d35_q;
    wire [32:0] i_inc15_jacobi_1d25_a;
    wire [32:0] i_inc15_jacobi_1d25_b;
    logic [32:0] i_inc15_jacobi_1d25_o;
    wire [32:0] i_inc15_jacobi_1d25_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_dest_data_out_2_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_lsu_memdep_5_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_feedback_stall_out_29;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_feedback_stall_out_31;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_feedback_stall_out_30;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_feedback_stall_out_28;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_feedback_stall_out_27;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_feedback_stall_out_25;
    wire [0:0] i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_valid_out;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_valid_out;
    wire [63:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_feedback_stall_out_32;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_feedback_valid_out_29;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_feedback_valid_out_31;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_feedback_valid_out_28;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_feedback_valid_out_27;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_feedback_valid_out_25;
    wire [0:0] i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_valid_out;
    wire [63:0] i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_feedback_out_32;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_feedback_valid_out_32;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_stall_out;
    wire [0:0] i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_valid_out;
    wire [0:0] i_masked_jacobi_1d37_qi;
    reg [0:0] i_masked_jacobi_1d37_q;
    wire [0:0] i_memdep_phi6_or11_jacobi_1d18_q;
    wire [0:0] i_next_cleanups_jacobi_1d33_s;
    reg [1:0] i_next_cleanups_jacobi_1d33_q;
    wire [1:0] i_next_initerations_jacobi_1d6_vt_join_q;
    wire [0:0] i_next_initerations_jacobi_1d6_vt_select_0_b;
    wire [0:0] i_notcmp_jacobi_1d30_q;
    wire [0:0] i_or_jacobi_1d32_q;
    wire [31:0] i_unnamed_jacobi_1d11_vt_const_63_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid165_i_cleanups_shl_jacobi_1d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid165_i_cleanups_shl_jacobi_1d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid166_i_cleanups_shl_jacobi_1d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid172_i_next_initerations_jacobi_1d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid174_i_next_initerations_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_q;
    wire [0:0] i_exitcond14_jacobi_1d28_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    reg [3:0] redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [59:0] redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_q;
    wire [0:0] redist4_i_masked_jacobi_1d37_q_33_fifo_valid_in;
    wire redist4_i_masked_jacobi_1d37_q_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_jacobi_1d37_q_33_fifo_stall_in;
    wire redist4_i_masked_jacobi_1d37_q_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_i_masked_jacobi_1d37_q_33_fifo_data_in;
    wire [0:0] redist4_i_masked_jacobi_1d37_q_33_fifo_valid_out;
    wire redist4_i_masked_jacobi_1d37_q_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_jacobi_1d37_q_33_fifo_stall_out;
    wire redist4_i_masked_jacobi_1d37_q_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_i_masked_jacobi_1d37_q_33_fifo_data_out;
    wire [0:0] redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_in;
    wire redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_in;
    wire redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_data_in;
    wire [0:0] redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_out;
    wire redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_out;
    wire redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_data_out;
    wire [0:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_in;
    wire redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_in;
    wire redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_data_in;
    wire [0:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_out;
    wire redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_out;
    wire redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_data_out;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_in;
    wire redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_in;
    wire redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_data_in;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_out;
    wire redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_out;
    wire redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_data_out;
    wire [0:0] redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_in;
    wire redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_in;
    wire redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_in_bitsignaltemp;
    wire [1:0] redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_data_in;
    wire [0:0] redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_out;
    wire redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_out;
    wire redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_out_bitsignaltemp;
    wire [1:0] redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_data_out;
    wire [0:0] redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_in;
    wire redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_in;
    wire redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_data_in;
    wire [0:0] redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_out;
    wire redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_out;
    wire redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_data_out;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_in;
    wire redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_in;
    wire redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_data_in;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_out;
    wire redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_out;
    wire redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_data_out;
    wire [0:0] redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_in;
    wire redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_in;
    wire redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_data_in;
    wire [0:0] redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_out;
    wire redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_out;
    wire redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_data_out;
    wire [0:0] redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_in;
    wire redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_in;
    wire redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_data_in;
    wire [0:0] redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_out;
    wire redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_out;
    wire redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_data_out;
    reg [0:0] redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_q;
    reg [0:0] redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_q;
    wire [0:0] redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in;
    wire redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in;
    wire redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_in;
    wire [0:0] redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out;
    wire redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out;
    wire redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_out;
    reg [0:0] redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q;
    reg [0:0] redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q;
    wire [0:0] redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in;
    wire redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in;
    wire redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_in;
    wire [0:0] redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out;
    wire redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out;
    wire redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_out;
    wire [0:0] redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_in;
    wire redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_in;
    wire redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_data_in;
    wire [0:0] redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_out;
    wire redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_out;
    wire redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_data_out;
    wire [0:0] redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_in;
    wire redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_in;
    wire redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_data_in;
    wire [0:0] redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_out;
    wire redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_out;
    wire redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_data_out;
    wire [0:0] redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_in;
    wire redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_in;
    wire redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_data_in;
    wire [0:0] redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_out;
    wire redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_out;
    wire redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [67:0] bubble_join_jacobi_1d_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_f;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_5_jacobi_1d23_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_b;
    wire [63:0] bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_q;
    wire [63:0] bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_b;
    wire [67:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_join_redist4_i_masked_jacobi_1d37_q_33_fifo_q;
    wire [0:0] bubble_select_redist4_i_masked_jacobi_1d37_q_33_fifo_b;
    wire [63:0] bubble_join_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_q;
    wire [63:0] bubble_select_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_b;
    wire [63:0] bubble_join_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_q;
    wire [63:0] bubble_select_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_b;
    wire [31:0] bubble_join_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_q;
    wire [31:0] bubble_select_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_b;
    wire [1:0] bubble_join_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_q;
    wire [1:0] bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_b;
    wire [0:0] bubble_join_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_q;
    wire [0:0] bubble_select_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_b;
    wire [0:0] bubble_join_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_q;
    wire [0:0] bubble_select_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_b;
    wire [0:0] bubble_join_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_q;
    wire [0:0] bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b;
    wire [0:0] bubble_join_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_q;
    wire [0:0] bubble_select_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_b;
    wire [0:0] bubble_join_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_q;
    wire [0:0] bubble_select_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b;
    wire [0:0] bubble_join_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_q;
    wire [0:0] bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b;
    wire [0:0] bubble_join_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_q;
    wire [0:0] bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_b;
    wire [0:0] bubble_join_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_q;
    wire [0:0] bubble_select_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_b;
    wire [0:0] bubble_join_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_q;
    wire [0:0] bubble_select_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_V0;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg6;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed6;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V5;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V6;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_backStall;
    reg [0:0] SE_i_masked_jacobi_1d37_R_v_0;
    wire [0:0] SE_i_masked_jacobi_1d37_v_s_0;
    wire [0:0] SE_i_masked_jacobi_1d37_s_tv_0;
    wire [0:0] SE_i_masked_jacobi_1d37_backEN;
    wire [0:0] SE_i_masked_jacobi_1d37_backStall;
    wire [0:0] SE_i_masked_jacobi_1d37_V0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_select_0_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and2;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    reg [0:0] SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_V0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_StallValid;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg0;
    reg [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg1;
    reg [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg2;
    reg [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg2;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed2;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_or0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_or1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_backStall;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V0;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V1;
    wire [0:0] SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V2;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_and0;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_backStall;
    wire [0:0] SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_V0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_or0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_backStall;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_V0;
    wire [0:0] SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_V1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and2;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_backStall;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_V0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireValid;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireStall;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_StallValid;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_toReg0;
    reg [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_toReg1;
    reg [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg1;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed1;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_or0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_backStall;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_V0;
    wire [0:0] SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_V1;
    wire [0:0] SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_wireValid;
    wire [0:0] SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_and0;
    wire [0:0] SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_backStall;
    wire [0:0] SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_V0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_StallValid;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg0;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg1;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg2;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg2;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed2;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg3;
    reg [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg3;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed3;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or2;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_backStall;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V0;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V1;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V2;
    wire [0:0] SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V3;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireValid;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireStall;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_StallValid;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_toReg0;
    reg [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg0;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed0;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_toReg1;
    reg [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg1;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed1;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_or0;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_backStall;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_V0;
    wire [0:0] SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_V1;
    reg [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_R_v_0;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_v_s_0;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_s_tv_0;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backEN;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backStall;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_V0;
    reg [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_R_v_0;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_v_s_0;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_s_tv_0;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backEN;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backStall;
    wire [0:0] SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_V0;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireStall;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg0;
    reg [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg1;
    reg [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_or0;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V0;
    wire [0:0] SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V1;
    reg [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_v_s_0;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V0;
    reg [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0;
    reg [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1;
    reg [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or0;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or1;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V0;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V1;
    wire [0:0] SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V2;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireStall;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg0;
    reg [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg1;
    reg [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg2;
    reg [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or0;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or1;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V0;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V1;
    wire [0:0] SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V2;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireValid;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireStall;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_StallValid;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_toReg0;
    reg [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg0;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed0;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_toReg1;
    reg [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg1;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed1;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_or0;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_backStall;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_V0;
    wire [0:0] SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_V1;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_wireValid;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and0;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and1;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and2;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and3;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and4;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and5;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and6;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall;
    wire [0:0] SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_V0;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireStall;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_StallValid;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_toReg0;
    reg [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg0;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed0;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_toReg1;
    reg [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg1;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed1;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_or0;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_backStall;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_V0;
    wire [0:0] SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V0;
    wire [0:0] bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid;
    reg [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid;
    reg [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_D0;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid;
    reg [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid;
    reg [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V;
    wire [0:0] SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_D0;
    wire [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_i_valid;
    reg [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid;
    reg [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data0;
    reg [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data1;
    reg [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data2;
    wire [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall;
    wire [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V;
    wire [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D0;
    wire [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D1;
    wire [0:0] SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D2;
    wire [0:0] SR_SE_i_masked_jacobi_1d37_i_valid;
    reg [0:0] SR_SE_i_masked_jacobi_1d37_r_valid;
    wire [0:0] SR_SE_i_masked_jacobi_1d37_and0;
    reg [0:0] SR_SE_i_masked_jacobi_1d37_r_data0;
    reg [0:0] SR_SE_i_masked_jacobi_1d37_r_data1;
    wire [0:0] SR_SE_i_masked_jacobi_1d37_backStall;
    wire [0:0] SR_SE_i_masked_jacobi_1d37_V;
    wire [0:0] SR_SE_i_masked_jacobi_1d37_D0;
    wire [0:0] SR_SE_i_masked_jacobi_1d37_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data3;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D3;
    wire [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_i_valid;
    reg [0:0] SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid;
    reg [0:0] SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_data0;
    wire [0:0] SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backStall;
    wire [0:0] SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_V;
    wire [0:0] SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_D1;
    wire [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D3;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_i_valid;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_and0;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data0;
    reg [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data1;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_D0;
    wire [0:0] SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_D1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_D1;


    // bubble_join_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo(BITJOIN,349)
    assign bubble_join_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_q = redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_data_out;

    // bubble_select_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo(BITSELECT,350)
    assign bubble_select_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_b = $unsigned(bubble_join_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19(BITJOIN,283)
    assign bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_q = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19(BITSELECT,284)
    assign bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_q[31:0]);

    // rightShiftStage0Idx1Rng1_uid172_i_next_initerations_jacobi_1d0_shift_x(BITSELECT,171)@98
    assign rightShiftStage0Idx1Rng1_uid172_i_next_initerations_jacobi_1d0_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_b[1:1];

    // rightShiftStage0Idx1_uid174_i_next_initerations_jacobi_1d0_shift_x(BITJOIN,173)@98
    assign rightShiftStage0Idx1_uid174_i_next_initerations_jacobi_1d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid172_i_next_initerations_jacobi_1d0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5(BITJOIN,307)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_q = i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5(BITSELECT,308)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_q[1:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x(MUX,175)@98
    assign rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_b or rightShiftStage0Idx1_uid174_i_next_initerations_jacobi_1d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_s)
            1'b0 : rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_b;
            1'b1 : rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_q = rightShiftStage0Idx1_uid174_i_next_initerations_jacobi_1d0_shift_x_q;
            default : rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_jacobi_1d6_vt_select_0(BITSELECT,85)@98
    assign i_next_initerations_jacobi_1d6_vt_select_0_b = rightShiftStage0_uid176_i_next_initerations_jacobi_1d0_shift_x_q[0:0];

    // i_next_initerations_jacobi_1d6_vt_join(BITJOIN,84)@98
    assign i_next_initerations_jacobi_1d6_vt_join_q = {GND_q, i_next_initerations_jacobi_1d6_vt_select_0_b};

    // i_last_initeration_jacobi_1d8_sel_x(BITSELECT,15)@98
    assign i_last_initeration_jacobi_1d8_sel_x_b = i_next_initerations_jacobi_1d6_vt_join_q[0:0];

    // SE_i_next_initerations_jacobi_1d6_vt_select_0(STALLENABLE,435)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg0 <= SE_i_next_initerations_jacobi_1d6_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg1 <= SE_i_next_initerations_jacobi_1d6_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_stall_out) & SE_i_next_initerations_jacobi_1d6_vt_select_0_wireValid) | SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg0;
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_stall_out) & SE_i_next_initerations_jacobi_1d6_vt_select_0_wireValid) | SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_StallValid = SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall & SE_i_next_initerations_jacobi_1d6_vt_select_0_wireValid;
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_toReg0 = SE_i_next_initerations_jacobi_1d6_vt_select_0_StallValid & SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed0;
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_toReg1 = SE_i_next_initerations_jacobi_1d6_vt_select_0_StallValid & SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_or0 = SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed0;
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_wireStall = ~ (SE_i_next_initerations_jacobi_1d6_vt_select_0_consumed1 & SE_i_next_initerations_jacobi_1d6_vt_select_0_or0);
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall = SE_i_next_initerations_jacobi_1d6_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_V0 = SE_i_next_initerations_jacobi_1d6_vt_select_0_wireValid & ~ (SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg0);
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_V1 = SE_i_next_initerations_jacobi_1d6_vt_select_0_wireValid & ~ (SE_i_next_initerations_jacobi_1d6_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_jacobi_1d6_vt_select_0_wireValid = SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_V;

    // SR_SE_i_next_initerations_jacobi_1d6_vt_select_0(STALLREG,650)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid <= SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall & (SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid | SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data0 <= i_last_initeration_jacobi_1d8_sel_x_b;
                SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data1 <= $unsigned(bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b);
                SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data2 <= $unsigned(bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b);
                SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data3 <= i_next_initerations_jacobi_1d6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_V1;
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_i_valid = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V1 & SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall = SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_V = SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid : SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D0 = SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data0 : i_last_initeration_jacobi_1d8_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D1 = SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data1 : bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D2 = SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data2 : bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D3 = SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_r_data3 : i_next_initerations_jacobi_1d6_vt_join_q;

    // SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5(STALLENABLE,402)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed0 = (~ (SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed1 = (~ (SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_backStall & SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_or0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_backStall = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_V0 = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_V1 = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_wireValid = i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7(STALLENABLE,424)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_wireValid = i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_valid_out;

    // i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7(BLACKBOX,76)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    jacobi_1d_i_llvm_fpga_push_i2_initerations_push27_0 thei_llvm_fpga_push_i2_initerations_push27_jacobi_1d7 (
        .in_data_in(SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D3),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_feedback_stall_out_27),
        .in_keep_going(SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_backStall),
        .in_valid_in(SE_i_next_initerations_jacobi_1d6_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_feedback_valid_out_27),
        .out_stall_out(i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo(BITJOIN,358)
    assign bubble_join_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_q = redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_data_out;

    // bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo(BITSELECT,359)
    assign bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_b = $unsigned(bubble_join_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_q[0:0]);

    // c_i2_142(CONSTANT,39)
    assign c_i2_142_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5(BLACKBOX,65)@97
    // in in_stall_in@20000000
    // out out_data_out@98
    // out out_feedback_stall_out_27@20000000
    // out out_stall_out@20000000
    // out out_valid_out@98
    jacobi_1d_i_llvm_fpga_pop_i2_initerations_pop27_0 thei_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5 (
        .in_data_in(c_i2_142_q),
        .in_dir(bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_b),
        .in_feedback_in_27(i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i2_initerations_push27_jacobi_1d7_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_backStall),
        .in_valid_in(SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_feedback_stall_out_27),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,367)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,368)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,247)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // SE_stall_entry(STALLENABLE,438)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = jacobi_1d_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,321)
    assign bubble_join_stall_entry_q = {in_notcmp3951_pop2070, in_memdep_phi6_pop1355_pop2365, in_mPtr_bitcast707663, in_forked, in_exitcond1749_pop1968};

    // bubble_select_stall_entry(BITSELECT,322)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[67:67]);

    // jacobi_1d_B5_merge_reg_aunroll_x(BLACKBOX,34)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    jacobi_1d_B5_merge_reg thejacobi_1d_B5_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_e),
        .in_data_in_3_tpl(bubble_select_stall_entry_b),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_stall_in(SE_out_jacobi_1d_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_stall_out(jacobi_1d_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(jacobi_1d_B5_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_jacobi_1d_B5_merge_reg_aunroll_x(BITJOIN,272)
    assign bubble_join_jacobi_1d_B5_merge_reg_aunroll_x_q = {jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_4_tpl, jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_3_tpl, jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_2_tpl, jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_1_tpl, jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_jacobi_1d_B5_merge_reg_aunroll_x(BITSELECT,273)
    assign bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_jacobi_1d_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_jacobi_1d_B5_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_jacobi_1d_B5_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_jacobi_1d_B5_merge_reg_aunroll_x_q[66:66]);
    assign bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_jacobi_1d_B5_merge_reg_aunroll_x_q[67:67]);

    // join_for_coalesced_delay_0(BITJOIN,246)
    assign join_for_coalesced_delay_0_q = {bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_f, bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_e};

    // bubble_join_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10(BITJOIN,311)
    assign bubble_join_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_q = i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10(BITSELECT,312)
    assign bubble_select_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_q[31:0]);

    // SE_bgTrunc_i_inc15_jacobi_1d25_sel_x(STALLENABLE,370)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_V0 = SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_backStall = i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_stall_out | ~ (SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_and0 = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_V1;
    assign SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V3 & SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_and0;

    // i_unnamed_jacobi_1d11_vt_const_63(CONSTANT,90)
    assign i_unnamed_jacobi_1d11_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,204)
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b = i_unnamed_jacobi_1d11_vt_const_63_q[25:0];

    // bubble_join_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo(BITJOIN,334)
    assign bubble_join_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_q = redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_data_out;

    // bubble_select_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo(BITSELECT,335)
    assign bubble_select_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_b = $unsigned(bubble_join_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_q[31:0]);

    // i_mptr_bitcast_index67_jacobi_1d0_c_i2_01_x(CONSTANT,19)
    assign i_mptr_bitcast_index67_jacobi_1d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,205)@65
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_b, i_mptr_bitcast_index67_jacobi_1d0_c_i2_01_x_q};

    // SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1(STALLENABLE,507)
    // Valid signal propagation
    assign SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_stall_out | ~ (SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_wireValid = bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21(BLACKBOX,56)@64
    // in in_stall_in@20000000
    // out out_dest_data_out_2_0@65
    // out out_stall_out@20000000
    // out out_valid_out@65
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_backStall),
        .in_valid_in(SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_dest_data_out_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21(BITJOIN,276)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_dest_data_out_2_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21(BITSELECT,277)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_q[63:0]);

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,221)@65
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_b[59:0]);
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_b[63:60]);

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2(ADD,185)@65 + 1
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q = i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_o[59:0];

    // SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLREG,647)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_V = SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q;

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,206)
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_b = i_unnamed_jacobi_1d11_vt_const_63_q[29:26];

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,208)@66
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_b};

    // redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,249)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,201)@66
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,456)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,465)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backStall & SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_V1;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2(STALLREG,646)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_and1 = SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_c;

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21(STALLENABLE,384)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed0 = (~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed1 = (~ (SE_redist1_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_out_valid_out;

    // SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2(STALLENABLE,447)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_1 = SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast667522_jacobi_1d21_V0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,454)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,455)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_V0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo(STALLENABLE,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg0 <= '0;
            SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg0 <= SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg1 <= SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed0 = (~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg0;
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed1 = (~ (SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_backStall) & SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireValid) | SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_StallValid = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_backStall & SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireValid;
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_toReg0 = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_StallValid & SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_toReg1 = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_StallValid & SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_or0 = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed0;
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireStall = ~ (SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_consumed1 & SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_or0);
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_backStall = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_V0 = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg0);
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_V1 = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireValid & ~ (SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_wireValid = redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_out;

    // redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo(STALLFIFO,255)
    assign redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_V1;
    assign redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_in = SE_out_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_backStall;
    assign redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_data_in = bubble_select_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_b;
    assign redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_in_bitsignaltemp = redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_in[0];
    assign redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_in_bitsignaltemp = redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_in[0];
    assign redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_out[0] = redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_out_bitsignaltemp;
    assign redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_out[0] = redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo (
        .valid_in(redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_b),
        .valid_out(redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo(BITJOIN,328)
    assign bubble_join_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_q = redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_data_out;

    // bubble_select_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo(BITSELECT,329)
    assign bubble_select_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_b = $unsigned(bubble_join_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_q[63:0]);

    // SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13(STALLENABLE,430)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_wireValid = i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_valid_out;

    // bubble_join_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo(BITJOIN,331)
    assign bubble_join_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_q = redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_data_out;

    // bubble_select_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo(BITSELECT,332)
    assign bubble_select_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_b = $unsigned(bubble_join_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_q[63:0]);

    // i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13(BLACKBOX,79)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_32@20000000
    // out out_feedback_valid_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    jacobi_1d_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_0 thei_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13 (
        .in_data_in(bubble_select_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_b),
        .in_feedback_stall_in_32(i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_feedback_stall_out_32),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_backStall),
        .in_valid_in(SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_V0),
        .out_data_out(),
        .out_feedback_out_32(i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_feedback_out_32),
        .out_feedback_valid_out_32(i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_feedback_valid_out_32),
        .out_stall_out(i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo(STALLENABLE,473)
    // Valid signal propagation
    assign SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_V0 = SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_backStall = i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_stall_out | ~ (SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_and0 = redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_out;
    assign SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V5 & SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_and0;

    // redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo(STALLFIFO,254)
    assign redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_in = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V2;
    assign redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_in = SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_backStall;
    assign redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_data_in = bubble_select_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_b;
    assign redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_in_bitsignaltemp = redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_in[0];
    assign redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_in_bitsignaltemp = redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_in[0];
    assign redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_out[0] = redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_out_bitsignaltemp;
    assign redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_out[0] = redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo (
        .valid_in(redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_b),
        .valid_out(redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c(STALLENABLE,458)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backStall | ~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid = SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;

    // SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,464)
    // Valid signal propagation
    assign SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V1;
    // Backward Stall generation
    assign SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12(BITJOIN,318)
    assign bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_q = i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out;

    // bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12(BITSELECT,319)
    assign bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_b = $unsigned(bubble_join_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_q[63:0]);

    // SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12(STALLENABLE,408)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_V0 = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_backStall = redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_wireValid = i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_valid_out;

    // redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo(STALLFIFO,253)
    assign redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_in = SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_V0;
    assign redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_in = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_backStall;
    assign redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_data_in = bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_b;
    assign redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_in_bitsignaltemp = redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_in[0];
    assign redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_in_bitsignaltemp = redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_in[0];
    assign redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_out[0] = redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_out_bitsignaltemp;
    assign redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_out[0] = redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo (
        .valid_in(redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_b),
        .valid_out(redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo(STALLENABLE,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg0 <= '0;
            SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg1 <= '0;
            SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg0 <= SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg0;
            // Successor 1
            SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg1 <= SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg1;
            // Successor 2
            SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg2 <= SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed0 = (~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backStall) & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid) | SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg0;
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed1 = (~ (SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid) | SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg1;
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed2 = (~ (redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_stall_out) & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid) | SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg2;
    // Consuming
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_StallValid = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_backStall & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid;
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg0 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_StallValid & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed0;
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg1 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_StallValid & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed1;
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_toReg2 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_StallValid & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_or0 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed0;
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_or1 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed1 & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_or0;
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireStall = ~ (SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_consumed2 & SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_or1);
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_backStall = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V0 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid & ~ (SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg0);
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V1 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid & ~ (SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg1);
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V2 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid & ~ (SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_wireValid = redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_valid_out;

    // SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2(STALLENABLE,450)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_1 = SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_v_s_0 = SE_out_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_V0 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,459)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V1;
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_V0 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10(STALLENABLE,404)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed0 = (~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed1 = (~ (redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireValid) | SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_StallValid = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_backStall & SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_toReg0 = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_StallValid & SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_toReg1 = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_StallValid & SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_or0 = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_consumed1 & SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_or0);
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_backStall = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_V0 = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_V1 = SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_wireValid = i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26(STALLENABLE,426)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_wireValid = i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_valid_out;

    // i_inc15_jacobi_1d25(ADD,54)@65
    assign i_inc15_jacobi_1d25_a = {1'b0, bubble_select_redist7_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out_32_fifo_b};
    assign i_inc15_jacobi_1d25_b = {1'b0, c_i32_145_q};
    assign i_inc15_jacobi_1d25_o = $unsigned(i_inc15_jacobi_1d25_a) + $unsigned(i_inc15_jacobi_1d25_b);
    assign i_inc15_jacobi_1d25_q = i_inc15_jacobi_1d25_o[32:0];

    // bgTrunc_i_inc15_jacobi_1d25_sel_x(BITSELECT,3)@65
    assign bgTrunc_i_inc15_jacobi_1d25_sel_x_b = i_inc15_jacobi_1d25_q[31:0];

    // i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26(BLACKBOX,77)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    jacobi_1d_i_llvm_fpga_push_i32_j_060_push25_0 thei_llvm_fpga_push_i32_j_060_push25_jacobi_1d26 (
        .in_data_in(bgTrunc_i_inc15_jacobi_1d25_sel_x_b),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_feedback_stall_out_25),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_backStall),
        .in_valid_in(SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_feedback_valid_out_25),
        .out_stall_out(i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(BITJOIN,352)
    assign bubble_join_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_q = redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_out;

    // bubble_select_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(BITSELECT,353)
    assign bubble_select_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b = $unsigned(bubble_join_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_q[0:0]);

    // c_i32_145(CONSTANT,40)
    assign c_i32_145_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10(BLACKBOX,66)@32
    // in in_stall_in@20000000
    // out out_data_out@33
    // out out_feedback_stall_out_25@20000000
    // out out_stall_out@20000000
    // out out_valid_out@33
    jacobi_1d_i_llvm_fpga_pop_i32_j_060_pop25_0 thei_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10 (
        .in_data_in(c_i32_145_q),
        .in_dir(bubble_select_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b),
        .in_feedback_in_25(i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i32_j_060_push25_jacobi_1d26_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_backStall),
        .in_valid_in(SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_feedback_stall_out_25),
        .out_stall_out(i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0(REG,264)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN == 1'b1)
        begin
            redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q <= $unsigned(SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_D0);
        end
    end

    // redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1(REG,265)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b1)
        begin
            redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q <= $unsigned(SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_D0);
        end
    end

    // redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(STALLFIFO,266)
    assign redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V2;
    assign redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall;
    assign redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_in = redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q;
    assign redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in_bitsignaltemp = redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in[0];
    assign redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in_bitsignaltemp = redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in[0];
    assign redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out[0] = redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out_bitsignaltemp;
    assign redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out[0] = redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo (
        .valid_in(redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_in_bitsignaltemp),
        .data_in(redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q),
        .valid_out(redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1(STALLENABLE,491)
    // Valid signal propagation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V0 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0;
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V1 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1;
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V2 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2;
    // Stall signal propagation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_stall_out & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0;
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_stall_out & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1;
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2 = redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_stall_out & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2;
    // Backward Enable generation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or0 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0;
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or1 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1 | SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or0;
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN = ~ (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2 | SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN & SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V;
    // Backward Stall generation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall = ~ (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 <= 1'b0;
            SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 <= 1'b0;
            SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b0)
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_0;
            end
            else
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_0 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
            end

            if (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b0)
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_1;
            end
            else
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_1 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
            end

            if (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backEN == 1'b0)
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_s_tv_2;
            end
            else
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_R_v_2 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_v_s_0;
            end

        end
    end

    // SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1(STALLREG,642)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid <= 1'b0;
            SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall & (SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid | SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid);

            if (SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0 <= $unsigned(redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V0;
    // Stall signal propagation
    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall = SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid | ~ (SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid);

    // Valid
    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V = SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid == 1'b1 ? SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid : SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_i_valid;

    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_D0 = SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_valid == 1'b1 ? SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_r_data0 : redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_q;

    // SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0(STALLENABLE,490)
    // Valid signal propagation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V0 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0 = SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_backStall & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN = ~ (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_v_s_0 = SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN & SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V;
    // Backward Stall generation
    assign SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall = ~ (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backEN == 1'b0)
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 & SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_s_tv_0;
            end
            else
            begin
                SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_R_v_0 <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_v_s_0;
            end

        end
    end

    // SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0(STALLREG,641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid <= 1'b0;
            SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid <= SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall & (SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid | SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid);

            if (SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0 <= $unsigned(bubble_select_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall = SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid | ~ (SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid);

    // Valid
    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_V = SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid == 1'b1 ? SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid : SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_i_valid;

    assign SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_D0 = SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_valid == 1'b1 ? SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_r_data0 : bubble_select_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_b;

    // SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(STALLENABLE,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0 <= '0;
            SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0 <= SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg0;
            // Successor 1
            SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1 <= SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0 = (~ (SR_SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_0_backStall) & SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid) | SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0;
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_out_stall_out) & SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid) | SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1;
    // Consuming
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall & SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid;
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg0 = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid & SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0;
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_toReg1 = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_StallValid & SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_or0 = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed0;
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireStall = ~ (SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_consumed1 & SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_or0);
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V0 = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid & ~ (SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg0);
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_V1 = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid & ~ (SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_wireValid = redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out;

    // redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo(STALLFIFO,263)
    assign redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V3;
    assign redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in = SE_out_redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_backStall;
    assign redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_in = bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_b;
    assign redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in_bitsignaltemp = redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in[0];
    assign redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in_bitsignaltemp = redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in[0];
    assign redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out[0] = redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out_bitsignaltemp;
    assign redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out[0] = redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo (
        .valid_in(redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_b),
        .valid_out(redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12(BLACKBOX,68)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_32@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    jacobi_1d_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_0 thei_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12 (
        .in_data_in(bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_c),
        .in_dir(bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_32(i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_feedback_out_32),
        .in_feedback_valid_in_32(i_llvm_fpga_push_p1025i32_mptr_bitcast707657_push32_jacobi_1d13_out_feedback_valid_out_32),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_backStall),
        .in_valid_in(SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out),
        .out_feedback_stall_out_32(i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_feedback_stall_out_32),
        .out_stall_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16(BITJOIN,297)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_q = i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16(BITSELECT,298)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_q[0:0]);

    // redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo(STALLFIFO,257)
    assign redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_V0;
    assign redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_in = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_backStall;
    assign redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_b;
    assign redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_in_bitsignaltemp = redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_in[0];
    assign redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_in_bitsignaltemp = redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_in[0];
    assign redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_out[0] = redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_out_bitsignaltemp;
    assign redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_out[0] = redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo (
        .valid_in(redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_b),
        .valid_out(redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16(STALLENABLE,396)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_backStall = redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_wireValid = i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_valid_out;

    // bubble_join_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo(BITJOIN,340)
    assign bubble_join_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_q = redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_data_out;

    // bubble_select_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo(BITSELECT,341)
    assign bubble_select_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_b = $unsigned(bubble_join_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_q[0:0]);

    // redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo(STALLFIFO,258)
    assign redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_in = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_V1;
    assign redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_in = SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_backStall;
    assign redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_data_in = bubble_select_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_b;
    assign redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_in_bitsignaltemp = redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_in[0];
    assign redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_in_bitsignaltemp = redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_in[0];
    assign redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_out[0] = redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_out_bitsignaltemp;
    assign redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_out[0] = redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo (
        .valid_in(redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_in_bitsignaltemp),
        .stall_in(redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_b),
        .valid_out(redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_out_bitsignaltemp),
        .stall_out(redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_out_bitsignaltemp),
        .data_out(redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo(STALLENABLE,481)
    // Valid signal propagation
    assign SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_V0 = SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_stall_out | ~ (SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_and0 = redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_valid_out;
    assign SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V1 & SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_and0;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17(STALLENABLE,416)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_wireValid = i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_valid_out;

    // bubble_join_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo(BITJOIN,343)
    assign bubble_join_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_q = redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_data_out;

    // bubble_select_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo(BITSELECT,344)
    assign bubble_select_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_b = $unsigned(bubble_join_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17(BLACKBOX,72)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    jacobi_1d_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_0 thei_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17 (
        .in_data_in(bubble_select_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_b),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_feedback_stall_out_31),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_backStall),
        .in_valid_in(SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_V0),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_feedback_valid_out_31),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16(BLACKBOX,62)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_31@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_0 thei_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16 (
        .in_data_in(bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_d),
        .in_dir(bubble_select_jacobi_1d_B5_merge_reg_aunroll_x_b),
        .in_feedback_in_31(i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i1_memdep_phi6_pop1356_push31_jacobi_1d17_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_backStall),
        .in_valid_in(SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_feedback_stall_out_31),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg(STALLFIFO,638)
    assign bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_in = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V0;
    assign bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_jacobi_1d_B5_merge_reg_aunroll_x(STALLENABLE,377)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg0 <= SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg1 <= SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg2 <= SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg3 <= SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg4 <= SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_jacobi_1d_B5_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg0;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_stall_out) & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg1;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_stall_out) & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg2;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed3 = (~ (redist14_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_31_fifo_stall_out) & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg3;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_StallValid = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_backStall & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg0 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg1 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed1;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg2 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed2;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg3 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed3;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_toReg4 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or0 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed0;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or1 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed1 & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or0;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or2 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed2 & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or1;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or3 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed3 & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or2;
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireStall = ~ (SE_out_jacobi_1d_B5_merge_reg_aunroll_x_consumed4 & SE_out_jacobi_1d_B5_merge_reg_aunroll_x_or3);
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_backStall = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V0 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg0);
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V1 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg1);
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V2 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg2);
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V3 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg3);
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V4 = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B5_merge_reg_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_jacobi_1d_B5_merge_reg_aunroll_x_wireValid = jacobi_1d_B5_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_0_fifo(STALLFIFO,270)
    assign coalesced_delay_0_fifo_valid_in = SE_out_jacobi_1d_B5_merge_reg_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(97),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40(BITJOIN,300)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_q = i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40(BITSELECT,301)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41(STALLENABLE,417)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_V0 = SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall = i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_wireValid = SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_V;

    // SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41(STALLREG,652)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid <= SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall & (SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid | SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_b);
                SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data1 <= $unsigned(bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_and0 = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_i_valid = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V3 & SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall = SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_V = SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid : SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_D0 = SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data0 : bubble_select_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_D1 = SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_r_data1 : bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b;

    // SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40(STALLENABLE,398)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed0 = (~ (SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_wireValid = i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41(STALLENABLE,418)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_wireValid = i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_valid_out;

    // i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41(BLACKBOX,73)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    jacobi_1d_i_llvm_fpga_push_i1_notcmp3952_push30_0 thei_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_D0),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_feedback_stall_out_30),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_V0),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_feedback_valid_out_30),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40(BLACKBOX,63)@97
    // in in_stall_in@20000000
    // out out_data_out@98
    // out out_feedback_stall_out_30@20000000
    // out out_stall_out@20000000
    // out out_valid_out@98
    jacobi_1d_i_llvm_fpga_pop_i1_notcmp3952_pop30_0 thei_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D3),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D2),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_feedback_stall_out_30),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38(BITJOIN,290)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_q = i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38(BITSELECT,291)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_q[0:0]);

    // SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39(STALLENABLE,409)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall = i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_wireValid = SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_V;

    // SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39(STALLREG,649)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid <= SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall & (SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid | SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_b);
                SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data1 <= $unsigned(bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_and0 = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_V1;
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_i_valid = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V0 & SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall = SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_V = SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid : SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_D0 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data0 : bubble_select_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_D1 = SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_r_data1 : bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38(STALLENABLE,392)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed0 = (~ (SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_wireValid = i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39(STALLENABLE,410)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_wireValid = i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_valid_out;

    // i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39(BLACKBOX,69)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    jacobi_1d_i_llvm_fpga_push_i1_exitcond1750_push29_0 thei_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_D0),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_feedback_stall_out_29),
        .in_keep_going(SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_V0),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_feedback_valid_out_29),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38(BLACKBOX,60)@97
    // in in_stall_in@20000000
    // out out_data_out@98
    // out out_feedback_stall_out_29@20000000
    // out out_stall_out@20000000
    // out out_valid_out@98
    jacobi_1d_i_llvm_fpga_pop_i1_exitcond1750_pop29_0 thei_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_29(i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_feedback_stall_out_29),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,501)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = SR_SE_out_coalesced_delay_0_fifo_V;

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,645)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_0_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data3 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= SE_out_coalesced_delay_0_fifo_backStall & (SR_SE_out_coalesced_delay_0_fifo_r_valid | SR_SE_out_coalesced_delay_0_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_0_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data1 <= $unsigned(bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data2 <= $unsigned(bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data3 <= $unsigned(sel_for_coalesced_delay_0_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_0_fifo_i_valid = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_V0 & SR_SE_out_coalesced_delay_0_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_0_fifo_backStall = SR_SE_out_coalesced_delay_0_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_0_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_0_fifo_V = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_valid : SR_SE_out_coalesced_delay_0_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_0_fifo_D0 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data0 : sel_for_coalesced_delay_0_b;
    // Data1
    assign SR_SE_out_coalesced_delay_0_fifo_D1 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data1 : bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_b;
    // Data2
    assign SR_SE_out_coalesced_delay_0_fifo_D2 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data2 : bubble_select_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_b;
    // Data3
    assign SR_SE_out_coalesced_delay_0_fifo_D3 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data3 : sel_for_coalesced_delay_0_c;

    // SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo(STALLENABLE,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg0 <= '0;
            SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg0 <= SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_toReg0;
            // Successor 1
            SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg1 <= SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed0 = (~ (SR_SE_out_coalesced_delay_0_fifo_backStall) & SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireValid) | SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg0;
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_out_stall_out) & SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireValid) | SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_StallValid = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_backStall & SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireValid;
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_toReg0 = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_StallValid & SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed0;
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_toReg1 = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_StallValid & SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_or0 = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed0;
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireStall = ~ (SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_consumed1 & SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_or0);
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_backStall = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_V0 = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireValid & ~ (SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg0);
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_V1 = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireValid & ~ (SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_wireValid = redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_out;

    // redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo(STALLFIFO,267)
    assign redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_in = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V2;
    assign redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_in = SE_out_redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_backStall;
    assign redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_data_in = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D2;
    assign redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_in_bitsignaltemp = redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_in[0];
    assign redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_in_bitsignaltemp = redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_in[0];
    assign redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_out[0] = redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_out_bitsignaltemp;
    assign redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_out[0] = redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo (
        .valid_in(redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_in_bitsignaltemp),
        .data_in(SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D2),
        .valid_out(redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo(BITJOIN,364)
    assign bubble_join_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_q = redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_data_out;

    // bubble_select_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo(BITSELECT,365)
    assign bubble_select_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_b = $unsigned(bubble_join_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27(BITJOIN,314)
    assign bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_q = i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27(BITSELECT,315)
    assign bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_b = $unsigned(bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_q[7:0]);

    // i_exitcond14_jacobi_1d28_cmp_nsign(LOGICAL,178)@65
    assign i_exitcond14_jacobi_1d28_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_b[7:7]));

    // i_notcmp_jacobi_1d30(LOGICAL,86)@65
    assign i_notcmp_jacobi_1d30_q = i_exitcond14_jacobi_1d28_cmp_nsign_q ^ VCC_q;

    // SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo(STALLENABLE,499)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg0 <= '0;
            SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg0 <= SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_toReg0;
            // Successor 1
            SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg1 <= SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_backStall) & SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireValid) | SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg0;
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed1 = (~ (SR_SE_i_masked_jacobi_1d37_backStall) & SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireValid) | SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg1;
    // Consuming
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_StallValid = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_backStall & SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireValid;
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_toReg0 = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_StallValid & SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed0;
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_toReg1 = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_StallValid & SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_or0 = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed0;
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireStall = ~ (SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_consumed1 & SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_or0);
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_backStall = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_V0 = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireValid & ~ (SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg0);
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_V1 = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireValid & ~ (SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_wireValid = redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_out;

    // i_masked_jacobi_1d37(LOGICAL,80)@65 + 1
    assign i_masked_jacobi_1d37_qi = SR_SE_i_masked_jacobi_1d37_D0 & SR_SE_i_masked_jacobi_1d37_D1;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_jacobi_1d37_delay ( .xin(i_masked_jacobi_1d37_qi), .xout(i_masked_jacobi_1d37_q), .ena(SE_i_masked_jacobi_1d37_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist4_i_masked_jacobi_1d37_q_33_fifo(STALLFIFO,252)
    assign redist4_i_masked_jacobi_1d37_q_33_fifo_valid_in = SE_i_masked_jacobi_1d37_V0;
    assign redist4_i_masked_jacobi_1d37_q_33_fifo_stall_in = SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall;
    assign redist4_i_masked_jacobi_1d37_q_33_fifo_data_in = i_masked_jacobi_1d37_q;
    assign redist4_i_masked_jacobi_1d37_q_33_fifo_valid_in_bitsignaltemp = redist4_i_masked_jacobi_1d37_q_33_fifo_valid_in[0];
    assign redist4_i_masked_jacobi_1d37_q_33_fifo_stall_in_bitsignaltemp = redist4_i_masked_jacobi_1d37_q_33_fifo_stall_in[0];
    assign redist4_i_masked_jacobi_1d37_q_33_fifo_valid_out[0] = redist4_i_masked_jacobi_1d37_q_33_fifo_valid_out_bitsignaltemp;
    assign redist4_i_masked_jacobi_1d37_q_33_fifo_stall_out[0] = redist4_i_masked_jacobi_1d37_q_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_i_masked_jacobi_1d37_q_33_fifo (
        .valid_in(redist4_i_masked_jacobi_1d37_q_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_i_masked_jacobi_1d37_q_33_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_jacobi_1d37_q),
        .valid_out(redist4_i_masked_jacobi_1d37_q_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_i_masked_jacobi_1d37_q_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_i_masked_jacobi_1d37_q_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_masked_jacobi_1d37(STALLENABLE,431)
    // Valid signal propagation
    assign SE_i_masked_jacobi_1d37_V0 = SE_i_masked_jacobi_1d37_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_jacobi_1d37_s_tv_0 = redist4_i_masked_jacobi_1d37_q_33_fifo_stall_out & SE_i_masked_jacobi_1d37_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_jacobi_1d37_backEN = ~ (SE_i_masked_jacobi_1d37_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_jacobi_1d37_v_s_0 = SE_i_masked_jacobi_1d37_backEN & SR_SE_i_masked_jacobi_1d37_V;
    // Backward Stall generation
    assign SE_i_masked_jacobi_1d37_backStall = ~ (SE_i_masked_jacobi_1d37_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_jacobi_1d37_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_jacobi_1d37_backEN == 1'b0)
            begin
                SE_i_masked_jacobi_1d37_R_v_0 <= SE_i_masked_jacobi_1d37_R_v_0 & SE_i_masked_jacobi_1d37_s_tv_0;
            end
            else
            begin
                SE_i_masked_jacobi_1d37_R_v_0 <= SE_i_masked_jacobi_1d37_v_s_0;
            end

        end
    end

    // SR_SE_i_masked_jacobi_1d37(STALLREG,644)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_masked_jacobi_1d37_r_valid <= 1'b0;
            SR_SE_i_masked_jacobi_1d37_r_data0 <= 1'bx;
            SR_SE_i_masked_jacobi_1d37_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_masked_jacobi_1d37_r_valid <= SE_i_masked_jacobi_1d37_backStall & (SR_SE_i_masked_jacobi_1d37_r_valid | SR_SE_i_masked_jacobi_1d37_i_valid);

            if (SR_SE_i_masked_jacobi_1d37_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_masked_jacobi_1d37_r_data0 <= i_notcmp_jacobi_1d30_q;
                SR_SE_i_masked_jacobi_1d37_r_data1 <= $unsigned(bubble_select_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_masked_jacobi_1d37_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V3;
    assign SR_SE_i_masked_jacobi_1d37_i_valid = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_V1 & SR_SE_i_masked_jacobi_1d37_and0;
    // Stall signal propagation
    assign SR_SE_i_masked_jacobi_1d37_backStall = SR_SE_i_masked_jacobi_1d37_r_valid | ~ (SR_SE_i_masked_jacobi_1d37_i_valid);

    // Valid
    assign SR_SE_i_masked_jacobi_1d37_V = SR_SE_i_masked_jacobi_1d37_r_valid == 1'b1 ? SR_SE_i_masked_jacobi_1d37_r_valid : SR_SE_i_masked_jacobi_1d37_i_valid;

    // Data0
    assign SR_SE_i_masked_jacobi_1d37_D0 = SR_SE_i_masked_jacobi_1d37_r_valid == 1'b1 ? SR_SE_i_masked_jacobi_1d37_r_data0 : i_notcmp_jacobi_1d30_q;
    // Data1
    assign SR_SE_i_masked_jacobi_1d37_D1 = SR_SE_i_masked_jacobi_1d37_r_valid == 1'b1 ? SR_SE_i_masked_jacobi_1d37_r_data1 : bubble_select_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_b;

    // SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36(STALLENABLE,427)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_V0 = SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_backStall = i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V2;
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V4 & SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_and0;

    // SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31(STALLENABLE,419)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_backStall = i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_wireValid = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_V0 & SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_and0;

    // bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg(STALLFIFO,640)
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V0;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_in = SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27(STALLENABLE,406)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg0 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg1 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg2 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg3 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg4 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed2 = (~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed3 = (~ (SR_SE_i_masked_jacobi_1d37_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed4 = (~ (SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_StallValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_backStall & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed3;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_toReg4 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed1 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed2 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed3 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireStall = ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_consumed4 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_or3);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_backStall = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V4 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_wireValid = i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_valid_out;

    // SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36(STALLENABLE,428)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_wireValid = i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_valid_out;

    // c_i8_148(CONSTANT,41)
    assign c_i8_148_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next13_jacobi_1d35(ADD,53)@65
    assign i_fpga_indvars_iv_next13_jacobi_1d35_a = {1'b0, bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_b};
    assign i_fpga_indvars_iv_next13_jacobi_1d35_b = {1'b0, c_i8_148_q};
    assign i_fpga_indvars_iv_next13_jacobi_1d35_o = $unsigned(i_fpga_indvars_iv_next13_jacobi_1d35_a) + $unsigned(i_fpga_indvars_iv_next13_jacobi_1d35_b);
    assign i_fpga_indvars_iv_next13_jacobi_1d35_q = i_fpga_indvars_iv_next13_jacobi_1d35_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next13_jacobi_1d35_sel_x(BITSELECT,2)@65
    assign bgTrunc_i_fpga_indvars_iv_next13_jacobi_1d35_sel_x_b = i_fpga_indvars_iv_next13_jacobi_1d35_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36(BLACKBOX,78)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_0 thei_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next13_jacobi_1d35_sel_x_b),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_feedback_stall_out_24),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_V0),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9646(CONSTANT,42)
    assign c_i8_9646_q = $unsigned(8'b01100000);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27(BLACKBOX,67)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27 (
        .in_data_in(c_i8_9646_q),
        .in_dir(SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D1),
        .in_feedback_in_24(i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_backStall),
        .in_valid_in(SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(STALLENABLE,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0 <= '0;
            SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1 <= '0;
            SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0 <= SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg0;
            // Successor 1
            SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1 <= SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg1;
            // Successor 2
            SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2 <= SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0 = (~ (i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_stall_out) & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0;
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1 = (~ (i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_out_stall_out) & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1;
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2 = (~ (redist17_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_96_fifo_stall_out) & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid) | SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2;
    // Consuming
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid;
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg0 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0;
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg1 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1;
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_toReg2 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_StallValid & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or0 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed0;
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or1 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed1 & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or0;
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireStall = ~ (SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_consumed2 & SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_or1);
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V0 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg0);
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V1 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg1);
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V2 = SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid & ~ (SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_wireValid = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31(STALLENABLE,420)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_wireValid = i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_jacobi_1d31(BLACKBOX,74)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    jacobi_1d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_jacobi_1d31 (
        .in_data_in(i_exitcond14_jacobi_1d28_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_not_exitcond_stall_out),
        .in_first_cleanup(bubble_select_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9(STALLENABLE,412)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_wireValid = i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9(BLACKBOX,70)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    jacobi_1d_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_jacobi_1d9 (
        .in_data_in(SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_backStall),
        .in_valid_in(SE_i_next_initerations_jacobi_1d6_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(BITJOIN,355)
    assign bubble_join_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_q = redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_data_out;

    // bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(BITSELECT,356)
    assign bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b = $unsigned(bubble_join_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_q[0:0]);

    // SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo(STALLREG,643)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid <= 1'b0;
            SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid <= SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall & (SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid | SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_i_valid);

            if (SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data0 <= $unsigned(bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b);
                SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data1 <= $unsigned(bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b);
                SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data2 <= $unsigned(bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_i_valid = redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_valid_out;
    // Stall signal propagation
    assign SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_backStall = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid | ~ (SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid == 1'b1 ? SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid : SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D0 = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid == 1'b1 ? SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data0 : bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b;
    // Data1
    assign SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D1 = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid == 1'b1 ? SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data1 : bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b;
    // Data2
    assign SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D2 = SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_valid == 1'b1 ? SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_r_data2 : bubble_select_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_b;

    // i_llvm_fpga_pipeline_keep_going_jacobi_1d4(BLACKBOX,59)@64
    // in in_stall_in@20000000
    // out out_data_out@65
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@65
    jacobi_1d_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_jacobi_1d4 (
        .in_data_in(SR_SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_D0),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_jacobi_1d31_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_backStall),
        .in_valid_in(SE_out_redist16_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_63_fifo_V0),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d4(BITJOIN,286)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_q = i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4(BITSELECT,287)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_q[0:0]);

    // bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg(STALLFIFO,639)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_in = SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4(STALLENABLE,390)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg5 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg6 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg5 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg5;
            // Successor 6
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg6 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg6;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed1 = (~ (SE_out_redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed2 = (~ (SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed3 = (~ (SE_bgTrunc_i_inc15_jacobi_1d25_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed4 = (~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv12_push24_jacobi_1d36_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed5 = (~ (SE_out_redist6_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_63_fifo_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed6 = (~ (redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg6;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg5 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed5;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_toReg6 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed6;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or4 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or5 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed5 & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or4;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_consumed6 & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_or5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg4);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V5 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg5);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V6 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_fromReg6);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_wireValid = i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_valid_out;

    // redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo(STALLFIFO,259)
    assign redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V6;
    assign redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_in = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_backStall;
    assign redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b;
    assign redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_in_bitsignaltemp = redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_in[0];
    assign redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_in_bitsignaltemp = redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_in[0];
    assign redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_out[0] = redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_out_bitsignaltemp;
    assign redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_out[0] = redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo (
        .valid_in(redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b),
        .valid_out(redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo(BITJOIN,346)
    assign bubble_join_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_q = redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_data_out;

    // bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo(BITSELECT,347)
    assign bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b = $unsigned(bubble_join_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_mem_memdep_5_jacobi_1d23(BITJOIN,279)
    assign bubble_join_i_llvm_fpga_mem_memdep_5_jacobi_1d23_q = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23(BITSELECT,280)
    assign bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_5_jacobi_1d23_q[0:0]);

    // SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo(STALLENABLE,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg0 <= '0;
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg1 <= '0;
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg2 <= '0;
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg0 <= SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg0;
            // Successor 1
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg1 <= SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg1;
            // Successor 2
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg2 <= SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg2;
            // Successor 3
            SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg3 <= SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_exitcond1750_push29_jacobi_1d39_backStall) & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg0;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed1 = (~ (SR_SE_i_next_initerations_jacobi_1d6_vt_select_0_backStall) & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg1;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed2 = (~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall) & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg2;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed3 = (~ (SR_SE_in_i_llvm_fpga_push_i1_notcmp3952_push30_jacobi_1d41_backStall) & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid) | SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg3;
    // Consuming
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_StallValid = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_backStall & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg0 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg1 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed1;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg2 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed2;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_toReg3 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_StallValid & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed3;
    // Backward Stall generation
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or0 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed0;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or1 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed1 & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or0;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or2 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed2 & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or1;
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireStall = ~ (SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_consumed3 & SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_or2);
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_backStall = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V0 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg0);
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V1 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg1);
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V2 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg2);
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V3 = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid & ~ (SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_wireValid = redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_valid_out;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24(STALLENABLE,414)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_wireValid = i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24(BLACKBOX,71)@98
    // in in_stall_in@20000000
    // out out_data_out@99
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@99
    jacobi_1d_i_llvm_fpga_push_i1_memdep_phi10_push26_0 thei_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24 (
        .in_data_in(SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_D0),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_feedback_stall_out_26),
        .in_keep_going(SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V0),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_feedback_valid_out_26),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23(STALLENABLE,515)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall = i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V;

    // SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23(STALLREG,651)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid <= 1'b0;
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data0 <= 1'bx;
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid <= SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall & (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid | SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_i_valid);

            if (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data0 <= $unsigned(bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_b);
                SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data1 <= $unsigned(bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_and0 = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V1;
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_i_valid = SE_out_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_V2 & SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_and0;
    // Stall signal propagation
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid | ~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_i_valid);

    // Valid
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid : SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_i_valid;

    // Data0
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_D0 = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data0 : bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_b;
    // Data1
    assign SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_D1 = SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_valid == 1'b1 ? SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_r_data1 : bubble_select_redist11_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_data_out_33_fifo_b;

    // i_toi1_intcast_jacobi_1d20_sel_x(BITSELECT,32)@67
    assign i_toi1_intcast_jacobi_1d20_sel_x_b = bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_b[0:0];

    // redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo(STALLFIFO,268)
    assign redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_in = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_V1;
    assign redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_in = SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall;
    assign redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_data_in = i_toi1_intcast_jacobi_1d20_sel_x_b;
    assign redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_in_bitsignaltemp = redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_in[0];
    assign redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_in_bitsignaltemp = redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_in[0];
    assign redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_out[0] = redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_out_bitsignaltemp;
    assign redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_out[0] = redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo (
        .valid_in(redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_in_bitsignaltemp),
        .stall_in(redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_in_bitsignaltemp),
        .data_in(i_toi1_intcast_jacobi_1d20_sel_x_b),
        .valid_out(redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_out_bitsignaltemp),
        .stall_out(redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_out_bitsignaltemp),
        .data_out(redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo(STALLENABLE,497)
    // Valid signal propagation
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_V0 = SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall = in_stall_in | ~ (SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and0 = redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_valid_out;
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and1 = redist4_i_masked_jacobi_1d37_q_33_fifo_valid_out & SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and0;
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and2 = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_1_reg_valid_out & SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and1;
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_1_reg_valid_out & SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and2;
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and4 = SE_out_i_llvm_fpga_pop_i2_initerations_pop27_jacobi_1d5_V0 & SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and3;
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and5 = SE_out_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_V0 & SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and4;
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and6 = SE_out_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_V0 & SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and5;
    assign SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V0 & SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_and6;

    // SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23(STALLENABLE,386)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed0 = (~ (SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid) | SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed1 = (~ (SR_SE_bubble_select_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall) & SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid) | SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_StallValid = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall & SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_toReg0 = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_StallValid & SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_toReg1 = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_StallValid & SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_or0 = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_consumed1 & SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V0 = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_V1 = SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_wireValid = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_valid;

    // redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0(REG,261)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backEN == 1'b1)
        begin
            redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_q <= $unsigned(SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_D0);
        end
    end

    // redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1(REG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backEN == 1'b1)
        begin
            redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_q <= $unsigned(redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_q);
        end
    end

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2(ADD,186)@66 + 1
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_D1}, i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_q = i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_o[5:1];

    // redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0(REG,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q(BITJOIN,187)@67
    assign i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_q, redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index67_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,16)@67
    assign i_mptr_bitcast_index67_jacobi_1d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_memdep_5_jacobi_1d23(BLACKBOX,57)@67
    // in in_i_stall@20000000
    // out out_lsu_memdep_5_o_active@20000000
    // out out_memdep_5_jacobi_1d_avm_address@20000000
    // out out_memdep_5_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_5_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_5_jacobi_1d_avm_enable@20000000
    // out out_memdep_5_jacobi_1d_avm_read@20000000
    // out out_memdep_5_jacobi_1d_avm_write@20000000
    // out out_memdep_5_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@98
    // out out_o_writeack@98
    jacobi_1d_i_llvm_fpga_mem_memdep_5_0 thei_llvm_fpga_mem_memdep_5_jacobi_1d23 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index67_jacobi_1d0_dupName_0_trunc_sel_x_b),
        .in_i_predicate(redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_5_jacobi_1d23_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_b),
        .in_memdep_5_jacobi_1d_avm_readdata(in_memdep_5_jacobi_1d_avm_readdata),
        .in_memdep_5_jacobi_1d_avm_readdatavalid(in_memdep_5_jacobi_1d_avm_readdatavalid),
        .in_memdep_5_jacobi_1d_avm_waitrequest(in_memdep_5_jacobi_1d_avm_waitrequest),
        .in_memdep_5_jacobi_1d_avm_writeack(in_memdep_5_jacobi_1d_avm_writeack),
        .out_lsu_memdep_5_o_active(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_lsu_memdep_5_o_active),
        .out_memdep_5_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_address),
        .out_memdep_5_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_burstcount),
        .out_memdep_5_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_byteenable),
        .out_memdep_5_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_enable),
        .out_memdep_5_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_read),
        .out_memdep_5_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_write),
        .out_memdep_5_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLENABLE,467)
    // Valid signal propagation
    assign SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 = SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2(STALLENABLE,448)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q(STALLENABLE,449)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_o_stall | ~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and1 = SE_redist3_i_mptr_bitcast_index67_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and0;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and2 = SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_V0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and1;
    assign SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_V0 & SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_and2;

    // SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1(STALLENABLE,487)
    // Valid signal propagation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_V0 = SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_s_tv_0 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backEN = ~ (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_v_s_0 = SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backEN & SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_V0;
    // Backward Stall generation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backStall = ~ (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backEN == 1'b0)
            begin
                SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_R_v_0 <= SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_R_v_0 & SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_s_tv_0;
            end
            else
            begin
                SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_R_v_0 <= SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_v_s_0;
            end

        end
    end

    // SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0(STALLENABLE,486)
    // Valid signal propagation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_V0 = SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_s_tv_0 = SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_1_backStall & SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backEN = ~ (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_v_s_0 = SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backEN & SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_V;
    // Backward Stall generation
    assign SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backStall = ~ (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backEN == 1'b0)
            begin
                SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_R_v_0 <= SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_R_v_0 & SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_R_v_0 <= SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_v_s_0;
            end

        end
    end

    // SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0(STALLREG,648)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid <= 1'b0;
            SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid <= SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backStall & (SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid | SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_i_valid);

            if (SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_data0 <= $unsigned(bubble_select_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_i_valid = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_V1;
    // Stall signal propagation
    assign SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backStall = SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid | ~ (SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_i_valid);

    // Valid
    assign SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_V = SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid == 1'b1 ? SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid : SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_i_valid;

    assign SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_D0 = SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_valid == 1'b1 ? SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_r_data0 : bubble_select_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_b;

    // SE_out_i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34(STALLENABLE,422)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_wireValid = i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid165_i_cleanups_shl_jacobi_1d0_shift_x(BITSELECT,164)@65
    assign leftShiftStage0Idx1Rng1_uid165_i_cleanups_shl_jacobi_1d0_shift_x_in = bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid165_i_cleanups_shl_jacobi_1d0_shift_x_b = leftShiftStage0Idx1Rng1_uid165_i_cleanups_shl_jacobi_1d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid166_i_cleanups_shl_jacobi_1d0_shift_x(BITJOIN,165)@65
    assign leftShiftStage0Idx1_uid166_i_cleanups_shl_jacobi_1d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid165_i_cleanups_shl_jacobi_1d0_shift_x_b, GND_q};

    // leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x(MUX,167)@65
    assign leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_s or bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_b or leftShiftStage0Idx1_uid166_i_cleanups_shl_jacobi_1d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_s)
            1'b0 : leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_q = bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_b;
            1'b1 : leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_q = leftShiftStage0Idx1_uid166_i_cleanups_shl_jacobi_1d0_shift_x_q;
            default : leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_jacobi_1d3_vt_select_1(BITSELECT,49)@65
    assign i_cleanups_shl_jacobi_1d3_vt_select_1_b = leftShiftStage0_uid168_i_cleanups_shl_jacobi_1d0_shift_x_q[1:1];

    // i_cleanups_shl_jacobi_1d3_vt_join(BITJOIN,48)@65
    assign i_cleanups_shl_jacobi_1d3_vt_join_q = {i_cleanups_shl_jacobi_1d3_vt_select_1_b, GND_q};

    // bubble_join_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo(BITJOIN,337)
    assign bubble_join_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_q = redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_data_out;

    // bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo(BITSELECT,338)
    assign bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_b = $unsigned(bubble_join_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_q[1:0]);

    // i_or_jacobi_1d32(LOGICAL,87)@65
    assign i_or_jacobi_1d32_q = i_notcmp_jacobi_1d30_q | bubble_select_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_b;

    // i_next_cleanups_jacobi_1d33(MUX,82)@65
    assign i_next_cleanups_jacobi_1d33_s = i_or_jacobi_1d32_q;
    always @(i_next_cleanups_jacobi_1d33_s or bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_b or i_cleanups_shl_jacobi_1d3_vt_join_q)
    begin
        unique case (i_next_cleanups_jacobi_1d33_s)
            1'b0 : i_next_cleanups_jacobi_1d33_q = bubble_select_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_b;
            1'b1 : i_next_cleanups_jacobi_1d33_q = i_cleanups_shl_jacobi_1d3_vt_join_q;
            default : i_next_cleanups_jacobi_1d33_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34(BLACKBOX,75)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    jacobi_1d_i_llvm_fpga_push_i2_cleanups_push28_0 thei_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34 (
        .in_data_in(i_next_cleanups_jacobi_1d33_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_feedback_stall_out_28),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_backStall),
        .in_valid_in(SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_V0),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_feedback_valid_out_28),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo(STALLENABLE,477)
    // Valid signal propagation
    assign SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_V0 = SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_backStall = i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_stall_out | ~ (SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and0 = redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_out;
    assign SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv12_pop24_jacobi_1d27_V4 & SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and0;
    assign SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and2 = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_V0 & SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and1;
    assign SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_V2 & SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_and2;

    // SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo(STALLENABLE,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg0 <= '0;
            SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg0 <= SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_toReg0;
            // Successor 1
            SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg1 <= SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed0 = (~ (SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_backStall) & SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireValid) | SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg0;
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed1 = (~ (SR_SE_redist13_i_first_cleanup_xor_jacobi_1d2_q_32_0_backStall) & SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireValid) | SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg1;
    // Consuming
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_StallValid = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_backStall & SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireValid;
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_toReg0 = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_StallValid & SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed0;
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_toReg1 = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_StallValid & SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_or0 = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed0;
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireStall = ~ (SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_consumed1 & SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_or0);
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_backStall = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_V0 = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireValid & ~ (SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg0);
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_V1 = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireValid & ~ (SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_wireValid = redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_out;

    // redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo(STALLFIFO,260)
    assign redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V3;
    assign redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_in = SE_out_redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_backStall;
    assign redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_data_in = i_first_cleanup_xor_jacobi_1d2_q;
    assign redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_in_bitsignaltemp = redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_in[0];
    assign redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_in_bitsignaltemp = redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_in[0];
    assign redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_out[0] = redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_out_bitsignaltemp;
    assign redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_out[0] = redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo (
        .valid_in(redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_in_bitsignaltemp),
        .stall_in(redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_jacobi_1d2_q),
        .valid_out(redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_valid_out_bitsignaltemp),
        .stall_out(redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_out_bitsignaltemp),
        .data_out(redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0(BITJOIN,304)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_q = i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0(BITSELECT,305)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_q[1:0]);

    // i_first_cleanup_jacobi_1d1_sel_x(BITSELECT,14)@35
    assign i_first_cleanup_jacobi_1d1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_b[0:0];

    // redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo(STALLFIFO,269)
    assign redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V2;
    assign redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_in = SE_out_redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_backStall;
    assign redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_data_in = i_first_cleanup_jacobi_1d1_sel_x_b;
    assign redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_in_bitsignaltemp = redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_in[0];
    assign redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_in_bitsignaltemp = redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_in[0];
    assign redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_out[0] = redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_out_bitsignaltemp;
    assign redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_out[0] = redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo (
        .valid_in(redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_jacobi_1d1_sel_x_b),
        .valid_out(redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo(STALLFIFO,256)
    assign redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V0;
    assign redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_in = SE_out_redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_backStall;
    assign redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_data_in = bubble_select_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_b;
    assign redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_in_bitsignaltemp = redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_in[0];
    assign redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_in_bitsignaltemp = redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_in[0];
    assign redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_out[0] = redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_out_bitsignaltemp;
    assign redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_out[0] = redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(31),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
        .IMPL("ram")
    ) theredist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo (
        .valid_in(redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_b),
        .valid_out(redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0(BLACKBOX,64)@34
    // in in_stall_in@20000000
    // out out_data_out@35
    // out out_feedback_stall_out_28@20000000
    // out out_stall_out@20000000
    // out out_valid_out@35
    jacobi_1d_i_llvm_fpga_pop_i2_cleanups_pop28_0 thei_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0 (
        .in_data_in(c_i2_142_q),
        .in_dir(redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i2_cleanups_push28_jacobi_1d34_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_backStall),
        .in_valid_in(SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_feedback_stall_out_28),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0(STALLENABLE,400)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed0 = (~ (redist8_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_data_out_30_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed1 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed2 = (~ (redist21_i_first_cleanup_jacobi_1d1_sel_x_b_30_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed3 = (~ (redist12_i_first_cleanup_xor_jacobi_1d2_q_30_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_or2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_wireValid = i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_out_valid_out;

    // SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLENABLE,466)
    // Valid signal propagation
    assign SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 = SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_backStall & SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2(STALLENABLE,451)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_backStall & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V1 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo(STALLENABLE,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg0 <= '0;
            SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg0 <= SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_toReg0;
            // Successor 1
            SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg1 <= SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_backStall) & SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireValid) | SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg0;
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed1 = (~ (redist10_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_63_fifo_stall_out) & SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireValid) | SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg1;
    // Consuming
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_StallValid = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_backStall & SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireValid;
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_toReg0 = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_StallValid & SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed0;
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_toReg1 = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_StallValid & SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_or0 = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed0;
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireStall = ~ (SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_consumed1 & SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_or0);
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_backStall = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_V0 = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireValid & ~ (SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg0);
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_V1 = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireValid & ~ (SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_wireValid = redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_valid_out;

    // i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15(BLACKBOX,61)@34
    // in in_stall_in@20000000
    // out out_data_out@35
    // out out_feedback_stall_out_26@20000000
    // out out_stall_out@20000000
    // out out_valid_out@35
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi10_pop26_0 thei_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15 (
        .in_data_in(GND_q),
        .in_dir(redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_memdep_phi10_push26_jacobi_1d24_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_backStall),
        .in_valid_in(SE_redist15_jacobi_1d_B5_merge_reg_aunroll_x_out_data_out_0_tpl_33_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_feedback_stall_out_26),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15(STALLENABLE,394)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_backStall = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and0 = i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and1 = SE_out_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and2 = SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and3 = SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and2;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_wireValid = SE_out_i_llvm_fpga_pop_i2_cleanups_pop28_jacobi_1d0_V1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_and3;

    // SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19(STALLENABLE,388)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed0 = (~ (SE_i_mptr_bitcast_index67_jacobi_1d0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed1 = (~ (redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_stall_out) & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_StallValid = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_backStall & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_StallValid & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_StallValid & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_or0 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_backStall = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_V0 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_V1 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_wireValid = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_valid;

    // i_first_cleanup_xor_jacobi_1d2(LOGICAL,52)@35
    assign i_first_cleanup_xor_jacobi_1d2_q = i_first_cleanup_jacobi_1d1_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15(BITJOIN,294)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_q = i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15(BITSELECT,295)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_q[0:0]);

    // i_memdep_phi6_or11_jacobi_1d18(LOGICAL,81)@35
    assign i_memdep_phi6_or11_jacobi_1d18_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_b | bubble_select_redist9_i_llvm_fpga_pop_i1_memdep_phi6_pop1356_pop31_jacobi_1d16_out_data_out_33_fifo_b;

    // i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,217)@33
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_pop_i32_j_060_pop25_jacobi_1d10_b, i_mptr_bitcast_index67_jacobi_1d0_c_i2_01_x_q};

    // i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,222)@33
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_b[59:0]);
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_redist5_i_llvm_fpga_pop_p1025i32_mptr_bitcast707657_pop32_jacobi_1d12_out_data_out_31_fifo_b[63:60]);

    // i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2(ADD,194)@33 + 1
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q = i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_o[59:0];

    // redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,248)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,213)@34
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2(ADD,195)@34 + 1
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_cin = i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index69_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index67_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_q = i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0(REG,250)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index69_jacobi_1d0_add_x_BitJoin_for_q(BITJOIN,196)@35
    assign i_mptr_bitcast_index69_jacobi_1d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index69_jacobi_1d0_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index69_jacobi_1d0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index69_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,22)@35
    assign i_mptr_bitcast_index69_jacobi_1d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index69_jacobi_1d0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19(BLACKBOX,58)@35
    // in in_i_stall@20000000
    // out out_o_readdata@67
    // out out_o_stall@20000000
    // out out_o_valid@67
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_13_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index69_jacobi_1d0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(i_memdep_phi6_or11_jacobi_1d18_q),
        .in_i_predicate(i_first_cleanup_xor_jacobi_1d2_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi10_pop26_jacobi_1d15_V0),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_o_valid),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d13_jacobi_1d19_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;

    // bubble_join_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo(BITJOIN,361)
    assign bubble_join_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_q = redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_data_out;

    // bubble_select_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo(BITSELECT,362)
    assign bubble_select_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_b = $unsigned(bubble_join_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_q[0:0]);

    // bubble_join_redist4_i_masked_jacobi_1d37_q_33_fifo(BITJOIN,325)
    assign bubble_join_redist4_i_masked_jacobi_1d37_q_33_fifo_q = redist4_i_masked_jacobi_1d37_q_33_fifo_data_out;

    // bubble_select_redist4_i_masked_jacobi_1d37_q_33_fifo(BITSELECT,326)
    assign bubble_select_redist4_i_masked_jacobi_1d37_q_33_fifo_b = $unsigned(bubble_join_redist4_i_masked_jacobi_1d37_q_33_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,7)@98
    assign out_exitcond1750_pop29 = bubble_select_i_llvm_fpga_pop_i1_exitcond1750_pop29_jacobi_1d38_b;
    assign out_masked = bubble_select_redist4_i_masked_jacobi_1d37_q_33_fifo_b;
    assign out_notcmp3952_pop30 = bubble_select_i_llvm_fpga_pop_i1_notcmp3952_pop30_jacobi_1d40_b;
    assign out_toi1_intcast = bubble_select_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_b;
    assign out_valid_out = SE_out_redist20_i_toi1_intcast_jacobi_1d20_sel_x_b_31_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,8)
    assign out_memdep_5_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_address;
    assign out_memdep_5_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_enable;
    assign out_memdep_5_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_read;
    assign out_memdep_5_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_write;
    assign out_memdep_5_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_writedata;
    assign out_memdep_5_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_byteenable;
    assign out_memdep_5_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_memdep_5_jacobi_1d_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,9)
    assign out_lsu_memdep_5_o_active = i_llvm_fpga_mem_memdep_5_jacobi_1d23_out_lsu_memdep_5_o_active;

    // ext_sig_sync_out(GPOUT,46)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,145)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_jacobi_1d4_out_pipeline_valid_out;

    // sync_out(GPOUT,151)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
