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

// SystemVerilog created from bb_getTanh_B3_stall_region
// Created for function/kernel getTanh
// SystemVerilog created on Tue Jun 13 02:26:22 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module getTanh_bb_B3_stall_region (
    input wire [31:0] in_unnamed_getTanh9_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh9_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh9_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh9_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh7_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh7_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh7_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh7_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh7_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh7_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh7_getTanh_avm_burstcount,
    output wire [0:0] out_masked,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_getTanh_avm_readdata,
    input wire [0:0] in_memdep_getTanh_avm_writeack,
    input wire [0:0] in_memdep_getTanh_avm_waitrequest,
    input wire [0:0] in_memdep_getTanh_avm_readdatavalid,
    output wire [31:0] out_unnamed_getTanh9_getTanh_avm_address,
    output wire [0:0] out_unnamed_getTanh9_getTanh_avm_enable,
    output wire [0:0] out_unnamed_getTanh9_getTanh_avm_read,
    output wire [0:0] out_unnamed_getTanh9_getTanh_avm_write,
    output wire [31:0] out_unnamed_getTanh9_getTanh_avm_writedata,
    output wire [3:0] out_unnamed_getTanh9_getTanh_avm_byteenable,
    output wire [0:0] out_unnamed_getTanh9_getTanh_avm_burstcount,
    output wire [31:0] out_memdep_getTanh_avm_address,
    output wire [0:0] out_memdep_getTanh_avm_enable,
    output wire [0:0] out_memdep_getTanh_avm_read,
    output wire [0:0] out_memdep_getTanh_avm_write,
    output wire [31:0] out_memdep_getTanh_avm_writedata,
    output wire [3:0] out_memdep_getTanh_avm_byteenable,
    output wire [0:0] out_memdep_getTanh_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [31:0] in_unnamed_getTanh7_getTanh_avm_readdata,
    input wire [0:0] in_unnamed_getTanh7_getTanh_avm_writeack,
    input wire [0:0] in_unnamed_getTanh7_getTanh_avm_waitrequest,
    input wire [0:0] in_unnamed_getTanh7_getTanh_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] bgTrunc_i_add6_gettanh26_sel_x_in;
    wire [31:0] bgTrunc_i_add6_gettanh26_sel_x_b;
    wire [31:0] bgTrunc_i_add_gettanh23_sel_x_b;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_gettanh40_sel_x_b;
    wire [31:0] bgTrunc_i_inc_gettanh30_sel_x_b;
    wire [31:0] bgTrunc_i_mul3_gettanh24_sel_x_b;
    wire [31:0] bgTrunc_i_mul435_gettanh25_sel_x_b;
    wire [63:0] bgTrunc_i_mul_gettanh22_sel_x_in;
    wire [31:0] bgTrunc_i_mul_gettanh22_sel_x_b;
    wire [31:0] c_i32_149_recast_x_q;
    wire [0:0] getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] getTanh_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] getTanh_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_first_cleanup_gettanh1_sel_x_b;
    wire [0:0] i_last_initeration_gettanh8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index38_gettanh0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index40_gettanh0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_mul3_gettanh24_extender_x_q;
    wire [10:0] c_i11_154_q;
    wire [10:0] c_i11_99852_q;
    wire [31:0] c_i32_048_q;
    wire [31:0] c_i32_1950_q;
    wire [31:0] c_i32_351_q;
    wire [3:0] c_i4_744_q;
    wire [0:0] i_acl_gettanh27_s;
    reg [31:0] i_acl_gettanh27_q;
    wire [32:0] i_add_gettanh23_a;
    wire [32:0] i_add_gettanh23_b;
    logic [32:0] i_add_gettanh23_o;
    wire [32:0] i_add_gettanh23_q;
    wire [30:0] i_add_gettanh23_vt_select_30_b;
    wire [3:0] i_cleanups_shl_gettanh3_vt_join_q;
    wire [2:0] i_cleanups_shl_gettanh3_vt_select_3_b;
    wire [33:0] i_cmp2_gettanh20_a;
    wire [33:0] i_cmp2_gettanh20_b;
    logic [33:0] i_cmp2_gettanh20_o;
    wire [0:0] i_cmp2_gettanh20_c;
    wire [0:0] i_first_cleanup_xor_gettanh2_q;
    wire [11:0] i_fpga_indvars_iv_next_gettanh40_a;
    wire [11:0] i_fpga_indvars_iv_next_gettanh40_b;
    logic [11:0] i_fpga_indvars_iv_next_gettanh40_o;
    wire [11:0] i_fpga_indvars_iv_next_gettanh40_q;
    wire [32:0] i_inc_gettanh30_a;
    wire [32:0] i_inc_gettanh30_b;
    logic [32:0] i_inc_gettanh30_o;
    wire [32:0] i_inc_gettanh30_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_valid_out;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_intel_reserved_ffwd_2_0;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_gettanh28_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gettanh4_out_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_feedback_stall_out_7;
    wire [0:0] i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_valid_out;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh36_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh36_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh36_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_gettanh36_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_feedback_valid_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_feedback_valid_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_valid_out;
    wire [0:0] i_masked_gettanh43_qi;
    reg [0:0] i_masked_gettanh43_q;
    wire [32:0] i_mul435_gettanh25_a;
    wire [32:0] i_mul435_gettanh25_b;
    logic [32:0] i_mul435_gettanh25_o;
    wire [32:0] i_mul435_gettanh25_q;
    wire [31:0] i_mul_gettanh22_vt_join_q;
    wire [30:0] i_mul_gettanh22_vt_select_30_b;
    wire [0:0] i_next_cleanups_gettanh38_s;
    reg [3:0] i_next_cleanups_gettanh38_q;
    wire [3:0] i_next_initerations_gettanh6_vt_join_q;
    wire [2:0] i_next_initerations_gettanh6_vt_select_2_b;
    wire [0:0] i_notcmp_gettanh35_q;
    wire [0:0] i_or_gettanh37_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_gettanh0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_gettanh0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid192_i_cleanups_shl_gettanh0_shift_x_q;
    wire [0:0] leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_s;
    reg [3:0] leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gettanh0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid200_i_next_initerations_gettanh0_shift_x_q;
    wire [0:0] rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_s;
    reg [3:0] rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_q;
    wire [17:0] i_add6_gettanh26_bs2_in;
    wire [17:0] i_add6_gettanh26_bs2_b;
    wire [13:0] i_add6_gettanh26_bs5_b;
    wire [50:0] i_add6_gettanh26_sums_align_1_q;
    wire [50:0] i_add6_gettanh26_sums_align_1_qint;
    wire [0:0] i_exitcond_gettanh33_cmp_nsign_q;
    wire [50:0] i_mul3_gettanh24_sums_align_1_q;
    wire [50:0] i_mul3_gettanh24_sums_align_1_qint;
    wire [50:0] i_mul_gettanh22_sums_align_1_q;
    wire [50:0] i_mul_gettanh22_sums_align_1_qint;
    wire i_add6_gettanh26_im0_cma_reset;
    (* preserve *) reg [17:0] i_add6_gettanh26_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_add6_gettanh26_im0_cma_c0 [0:0];
    wire [35:0] i_add6_gettanh26_im0_cma_p [0:0];
    wire [35:0] i_add6_gettanh26_im0_cma_u [0:0];
    wire [35:0] i_add6_gettanh26_im0_cma_w [0:0];
    wire [35:0] i_add6_gettanh26_im0_cma_x [0:0];
    wire [35:0] i_add6_gettanh26_im0_cma_y [0:0];
    reg [35:0] i_add6_gettanh26_im0_cma_s [0:0];
    wire [35:0] i_add6_gettanh26_im0_cma_qq;
    wire [35:0] i_add6_gettanh26_im0_cma_q;
    wire i_add6_gettanh26_im0_cma_ena0;
    wire i_add6_gettanh26_im0_cma_ena1;
    wire i_add6_gettanh26_im8_cma_reset;
    (* preserve *) reg [13:0] i_add6_gettanh26_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_add6_gettanh26_im8_cma_c0 [0:0];
    wire [27:0] i_add6_gettanh26_im8_cma_p [0:0];
    wire [27:0] i_add6_gettanh26_im8_cma_u [0:0];
    wire [27:0] i_add6_gettanh26_im8_cma_w [0:0];
    wire [27:0] i_add6_gettanh26_im8_cma_x [0:0];
    wire [27:0] i_add6_gettanh26_im8_cma_y [0:0];
    reg [27:0] i_add6_gettanh26_im8_cma_s [0:0];
    wire [27:0] i_add6_gettanh26_im8_cma_qq;
    wire [27:0] i_add6_gettanh26_im8_cma_q;
    wire i_add6_gettanh26_im8_cma_ena0;
    wire i_add6_gettanh26_im8_cma_ena1;
    wire i_mul3_gettanh24_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul3_gettanh24_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul3_gettanh24_im0_cma_c0 [0:0];
    wire [35:0] i_mul3_gettanh24_im0_cma_p [0:0];
    wire [35:0] i_mul3_gettanh24_im0_cma_u [0:0];
    wire [35:0] i_mul3_gettanh24_im0_cma_w [0:0];
    wire [35:0] i_mul3_gettanh24_im0_cma_x [0:0];
    wire [35:0] i_mul3_gettanh24_im0_cma_y [0:0];
    reg [35:0] i_mul3_gettanh24_im0_cma_s [0:0];
    wire [35:0] i_mul3_gettanh24_im0_cma_qq;
    wire [35:0] i_mul3_gettanh24_im0_cma_q;
    wire i_mul3_gettanh24_im0_cma_ena0;
    wire i_mul3_gettanh24_im0_cma_ena1;
    wire i_mul3_gettanh24_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul3_gettanh24_im8_cma_a0 [0:0];
    (* preserve *) reg [12:0] i_mul3_gettanh24_im8_cma_c0 [0:0];
    wire [26:0] i_mul3_gettanh24_im8_cma_p [0:0];
    wire [26:0] i_mul3_gettanh24_im8_cma_u [0:0];
    wire [26:0] i_mul3_gettanh24_im8_cma_w [0:0];
    wire [26:0] i_mul3_gettanh24_im8_cma_x [0:0];
    wire [26:0] i_mul3_gettanh24_im8_cma_y [0:0];
    reg [26:0] i_mul3_gettanh24_im8_cma_s [0:0];
    wire [26:0] i_mul3_gettanh24_im8_cma_qq;
    wire [26:0] i_mul3_gettanh24_im8_cma_q;
    wire i_mul3_gettanh24_im8_cma_ena0;
    wire i_mul3_gettanh24_im8_cma_ena1;
    wire i_mul_gettanh22_im0_cma_reset;
    (* preserve *) reg [17:0] i_mul_gettanh22_im0_cma_a0 [0:0];
    (* preserve *) reg [17:0] i_mul_gettanh22_im0_cma_c0 [0:0];
    wire [35:0] i_mul_gettanh22_im0_cma_p [0:0];
    wire [35:0] i_mul_gettanh22_im0_cma_u [0:0];
    wire [35:0] i_mul_gettanh22_im0_cma_w [0:0];
    wire [35:0] i_mul_gettanh22_im0_cma_x [0:0];
    wire [35:0] i_mul_gettanh22_im0_cma_y [0:0];
    reg [35:0] i_mul_gettanh22_im0_cma_s [0:0];
    wire [35:0] i_mul_gettanh22_im0_cma_qq;
    wire [35:0] i_mul_gettanh22_im0_cma_q;
    wire i_mul_gettanh22_im0_cma_ena0;
    wire i_mul_gettanh22_im0_cma_ena1;
    wire i_mul_gettanh22_im8_cma_reset;
    (* preserve *) reg [13:0] i_mul_gettanh22_im8_cma_a0 [0:0];
    (* preserve *) reg [13:0] i_mul_gettanh22_im8_cma_c0 [0:0];
    wire [27:0] i_mul_gettanh22_im8_cma_p [0:0];
    wire [27:0] i_mul_gettanh22_im8_cma_u [0:0];
    wire [27:0] i_mul_gettanh22_im8_cma_w [0:0];
    wire [27:0] i_mul_gettanh22_im8_cma_x [0:0];
    wire [27:0] i_mul_gettanh22_im8_cma_y [0:0];
    reg [27:0] i_mul_gettanh22_im8_cma_s [0:0];
    wire [27:0] i_mul_gettanh22_im8_cma_qq;
    wire [27:0] i_mul_gettanh22_im8_cma_q;
    wire i_mul_gettanh22_im8_cma_ena0;
    wire i_mul_gettanh22_im8_cma_ena1;
    wire i_add6_gettanh26_ma3_cma_reset;
    (* preserve *) reg [13:0] i_add6_gettanh26_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_add6_gettanh26_ma3_cma_c0 [0:1];
    wire [31:0] i_add6_gettanh26_ma3_cma_p [0:1];
    wire [32:0] i_add6_gettanh26_ma3_cma_u [0:1];
    wire [32:0] i_add6_gettanh26_ma3_cma_w [0:0];
    wire [32:0] i_add6_gettanh26_ma3_cma_x [0:0];
    wire [32:0] i_add6_gettanh26_ma3_cma_y [0:0];
    reg [32:0] i_add6_gettanh26_ma3_cma_s [0:0];
    wire [32:0] i_add6_gettanh26_ma3_cma_qq;
    wire [32:0] i_add6_gettanh26_ma3_cma_q;
    wire i_add6_gettanh26_ma3_cma_ena0;
    wire i_add6_gettanh26_ma3_cma_ena1;
    wire i_mul3_gettanh24_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul3_gettanh24_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul3_gettanh24_ma3_cma_c0 [0:1];
    wire [31:0] i_mul3_gettanh24_ma3_cma_p [0:1];
    wire [32:0] i_mul3_gettanh24_ma3_cma_u [0:1];
    wire [32:0] i_mul3_gettanh24_ma3_cma_w [0:0];
    wire [32:0] i_mul3_gettanh24_ma3_cma_x [0:0];
    wire [32:0] i_mul3_gettanh24_ma3_cma_y [0:0];
    reg [32:0] i_mul3_gettanh24_ma3_cma_s [0:0];
    wire [32:0] i_mul3_gettanh24_ma3_cma_qq;
    wire [32:0] i_mul3_gettanh24_ma3_cma_q;
    wire i_mul3_gettanh24_ma3_cma_ena0;
    wire i_mul3_gettanh24_ma3_cma_ena1;
    wire i_mul_gettanh22_ma3_cma_reset;
    (* preserve *) reg [13:0] i_mul_gettanh22_ma3_cma_a0 [0:1];
    (* preserve *) reg [17:0] i_mul_gettanh22_ma3_cma_c0 [0:1];
    wire [31:0] i_mul_gettanh22_ma3_cma_p [0:1];
    wire [32:0] i_mul_gettanh22_ma3_cma_u [0:1];
    wire [32:0] i_mul_gettanh22_ma3_cma_w [0:0];
    wire [32:0] i_mul_gettanh22_ma3_cma_x [0:0];
    wire [32:0] i_mul_gettanh22_ma3_cma_y [0:0];
    reg [32:0] i_mul_gettanh22_ma3_cma_s [0:0];
    wire [32:0] i_mul_gettanh22_ma3_cma_qq;
    wire [32:0] i_mul_gettanh22_ma3_cma_q;
    wire i_mul_gettanh22_ma3_cma_ena0;
    wire i_mul_gettanh22_ma3_cma_ena1;
    wire [60:0] i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_q;
    wire [13:0] i_add6_gettanh26_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_add6_gettanh26_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_add6_gettanh26_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_add6_gettanh26_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_add6_gettanh26_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_add6_gettanh26_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_add6_gettanh26_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_add6_gettanh26_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_add6_gettanh26_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_add6_gettanh26_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_add6_gettanh26_sums_result_add_0_0_BitJoin_for_q_q;
    wire [12:0] i_mul3_gettanh24_sums_result_add_0_0_UpperBits_for_b_q;
    wire [60:0] i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q;
    wire [5:0] i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_a;
    wire [5:0] i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_b;
    logic [5:0] i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_cin;
    wire [3:0] i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_q;
    wire [63:0] i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_q;
    wire [60:0] i_mul_gettanh22_sums_result_add_0_0_p1_of_2_a;
    wire [60:0] i_mul_gettanh22_sums_result_add_0_0_p1_of_2_b;
    logic [60:0] i_mul_gettanh22_sums_result_add_0_0_p1_of_2_o;
    wire [0:0] i_mul_gettanh22_sums_result_add_0_0_p1_of_2_c;
    wire [59:0] i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q;
    wire [6:0] i_mul_gettanh22_sums_result_add_0_0_p2_of_2_a;
    wire [6:0] i_mul_gettanh22_sums_result_add_0_0_p2_of_2_b;
    logic [6:0] i_mul_gettanh22_sums_result_add_0_0_p2_of_2_o;
    wire [0:0] i_mul_gettanh22_sums_result_add_0_0_p2_of_2_cin;
    wire [4:0] i_mul_gettanh22_sums_result_add_0_0_p2_of_2_q;
    wire [64:0] i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [0:0] i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [59:0] i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [3:0] i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q;
    wire [4:0] i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q;
    wire [17:0] i_add6_gettanh26_bs1_merged_bit_select_b;
    wire [13:0] i_add6_gettanh26_bs1_merged_bit_select_c;
    wire [29:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [17:0] i_mul3_gettanh24_bs1_merged_bit_select_b;
    wire [12:0] i_mul3_gettanh24_bs1_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [23:0] i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [23:0] i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [2:0] i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [23:0] i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c;
    wire [8:0] i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [4:0] i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    wire [8:0] i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b;
    wire [3:0] i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    reg [3:0] redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [2:0] redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [3:0] redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q;
    reg [3:0] redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [0:0] redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q;
    reg [59:0] redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_q;
    reg [59:0] redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_q;
    reg [32:0] redist14_i_mul_gettanh22_ma3_cma_q_1_0_q;
    reg [32:0] redist15_i_mul3_gettanh24_ma3_cma_q_1_0_q;
    reg [32:0] redist16_i_add6_gettanh26_ma3_cma_q_1_0_q;
    reg [27:0] redist17_i_mul_gettanh22_im8_cma_q_1_0_q;
    reg [35:0] redist18_i_mul_gettanh22_im0_cma_q_1_0_q;
    reg [26:0] redist19_i_mul3_gettanh24_im8_cma_q_1_0_q;
    reg [35:0] redist20_i_mul3_gettanh24_im0_cma_q_1_0_q;
    reg [27:0] redist21_i_add6_gettanh26_im8_cma_q_1_0_q;
    reg [35:0] redist22_i_add6_gettanh26_im0_cma_q_1_0_q;
    reg [13:0] redist23_i_add6_gettanh26_bs5_b_6_0_q;
    reg [13:0] redist23_i_add6_gettanh26_bs5_b_6_1_q;
    reg [13:0] redist23_i_add6_gettanh26_bs5_b_6_2_q;
    reg [13:0] redist23_i_add6_gettanh26_bs5_b_6_3_q;
    reg [13:0] redist23_i_add6_gettanh26_bs5_b_6_4_q;
    reg [13:0] redist23_i_add6_gettanh26_bs5_b_6_5_q;
    reg [13:0] redist24_i_add6_gettanh26_bs5_b_12_0_q;
    reg [13:0] redist24_i_add6_gettanh26_bs5_b_12_1_q;
    reg [13:0] redist24_i_add6_gettanh26_bs5_b_12_2_q;
    reg [13:0] redist24_i_add6_gettanh26_bs5_b_12_3_q;
    reg [13:0] redist24_i_add6_gettanh26_bs5_b_12_4_q;
    reg [13:0] redist24_i_add6_gettanh26_bs5_b_12_5_q;
    reg [17:0] redist25_i_add6_gettanh26_bs2_b_6_0_q;
    reg [17:0] redist25_i_add6_gettanh26_bs2_b_6_1_q;
    reg [17:0] redist25_i_add6_gettanh26_bs2_b_6_2_q;
    reg [17:0] redist25_i_add6_gettanh26_bs2_b_6_3_q;
    reg [17:0] redist25_i_add6_gettanh26_bs2_b_6_4_q;
    reg [17:0] redist25_i_add6_gettanh26_bs2_b_6_5_q;
    reg [17:0] redist26_i_add6_gettanh26_bs2_b_12_0_q;
    reg [17:0] redist26_i_add6_gettanh26_bs2_b_12_1_q;
    reg [17:0] redist26_i_add6_gettanh26_bs2_b_12_2_q;
    reg [17:0] redist26_i_add6_gettanh26_bs2_b_12_3_q;
    reg [17:0] redist26_i_add6_gettanh26_bs2_b_12_4_q;
    reg [17:0] redist26_i_add6_gettanh26_bs2_b_12_5_q;
    wire [0:0] redist27_i_masked_gettanh43_q_114_fifo_valid_in;
    wire redist27_i_masked_gettanh43_q_114_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist27_i_masked_gettanh43_q_114_fifo_stall_in;
    wire redist27_i_masked_gettanh43_q_114_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist27_i_masked_gettanh43_q_114_fifo_data_in;
    wire [0:0] redist27_i_masked_gettanh43_q_114_fifo_valid_out;
    wire redist27_i_masked_gettanh43_q_114_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist27_i_masked_gettanh43_q_114_fifo_stall_out;
    wire redist27_i_masked_gettanh43_q_114_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist27_i_masked_gettanh43_q_114_fifo_data_out;
    wire [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_in;
    wire redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_in;
    wire redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_data_in;
    wire [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_out;
    wire redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_out;
    wire redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_data_out;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_q;
    reg [0:0] redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q;
    wire [0:0] redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_in;
    wire redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_in;
    wire redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_data_in;
    wire [0:0] redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_out;
    wire redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_out;
    wire redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_data_out;
    wire [0:0] redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_in;
    wire redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_in;
    wire redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_data_in;
    wire [0:0] redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_out;
    wire redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_out;
    wire redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_data_out;
    wire [0:0] redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_in;
    wire redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_in;
    wire redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_data_in;
    wire [0:0] redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_out;
    wire redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_out;
    wire redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_data_out;
    wire [0:0] redist33_i_cmp2_gettanh20_c_17_fifo_valid_in;
    wire redist33_i_cmp2_gettanh20_c_17_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist33_i_cmp2_gettanh20_c_17_fifo_stall_in;
    wire redist33_i_cmp2_gettanh20_c_17_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist33_i_cmp2_gettanh20_c_17_fifo_data_in;
    wire [0:0] redist33_i_cmp2_gettanh20_c_17_fifo_valid_out;
    wire redist33_i_cmp2_gettanh20_c_17_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist33_i_cmp2_gettanh20_c_17_fifo_stall_out;
    wire redist33_i_cmp2_gettanh20_c_17_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist33_i_cmp2_gettanh20_c_17_fifo_data_out;
    reg [30:0] redist34_i_add_gettanh23_vt_select_30_b_1_0_q;
    wire [0:0] redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_in;
    wire redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_in;
    wire redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_data_in;
    wire [0:0] redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_out;
    wire redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_out;
    wire redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_data_out;
    wire [0:0] redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_in;
    wire redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_in;
    wire redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_data_in;
    wire [0:0] redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_out;
    wire redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_out;
    wire redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_data_out;
    reg [0:0] redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_q;
    reg [0:0] redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_q;
    reg [31:0] redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_q;
    wire [0:0] bubble_join_getTanh_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_getTanh_B3_merge_reg_aunroll_x_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_gettanh28_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_gettanh28_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_gettanh4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_gettanh4_b;
    wire [10:0] bubble_join_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_q;
    wire [10:0] bubble_select_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [35:0] bubble_join_i_add6_gettanh26_im0_cma_q;
    wire [35:0] bubble_select_i_add6_gettanh26_im0_cma_b;
    wire [27:0] bubble_join_i_add6_gettanh26_im8_cma_q;
    wire [27:0] bubble_select_i_add6_gettanh26_im8_cma_b;
    wire [35:0] bubble_join_i_mul3_gettanh24_im0_cma_q;
    wire [35:0] bubble_select_i_mul3_gettanh24_im0_cma_b;
    wire [26:0] bubble_join_i_mul3_gettanh24_im8_cma_q;
    wire [26:0] bubble_select_i_mul3_gettanh24_im8_cma_b;
    wire [35:0] bubble_join_i_mul_gettanh22_im0_cma_q;
    wire [35:0] bubble_select_i_mul_gettanh22_im0_cma_b;
    wire [27:0] bubble_join_i_mul_gettanh22_im8_cma_q;
    wire [27:0] bubble_select_i_mul_gettanh22_im8_cma_b;
    wire [32:0] bubble_join_i_add6_gettanh26_ma3_cma_q;
    wire [32:0] bubble_select_i_add6_gettanh26_ma3_cma_b;
    wire [32:0] bubble_join_i_mul3_gettanh24_ma3_cma_q;
    wire [32:0] bubble_select_i_mul3_gettanh24_ma3_cma_b;
    wire [32:0] bubble_join_i_mul_gettanh22_ma3_cma_q;
    wire [32:0] bubble_select_i_mul_gettanh22_ma3_cma_b;
    wire [0:0] bubble_join_redist27_i_masked_gettanh43_q_114_fifo_q;
    wire [0:0] bubble_select_redist27_i_masked_gettanh43_q_114_fifo_b;
    wire [0:0] bubble_join_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_q;
    wire [0:0] bubble_select_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_b;
    wire [0:0] bubble_join_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_q;
    wire [0:0] bubble_select_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_b;
    wire [0:0] bubble_join_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_q;
    wire [0:0] bubble_select_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_b;
    wire [0:0] bubble_join_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_q;
    wire [0:0] bubble_select_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_b;
    wire [0:0] bubble_join_redist33_i_cmp2_gettanh20_c_17_fifo_q;
    wire [0:0] bubble_select_redist33_i_cmp2_gettanh20_c_17_fifo_b;
    wire [63:0] bubble_join_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_q;
    wire [63:0] bubble_select_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_b;
    wire [0:0] bubble_join_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_q;
    wire [0:0] bubble_select_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_b;
    wire [0:0] SE_bgTrunc_i_inc_gettanh30_sel_x_wireValid;
    wire [0:0] SE_bgTrunc_i_inc_gettanh30_sel_x_and0;
    wire [0:0] SE_bgTrunc_i_inc_gettanh30_sel_x_backStall;
    wire [0:0] SE_bgTrunc_i_inc_gettanh30_sel_x_V0;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_getTanh_B3_merge_reg_aunroll_x_V2;
    reg [0:0] SE_i_cmp2_gettanh20_R_v_0;
    reg [0:0] SE_i_cmp2_gettanh20_R_v_1;
    wire [0:0] SE_i_cmp2_gettanh20_v_s_0;
    wire [0:0] SE_i_cmp2_gettanh20_s_tv_0;
    wire [0:0] SE_i_cmp2_gettanh20_s_tv_1;
    wire [0:0] SE_i_cmp2_gettanh20_backEN;
    wire [0:0] SE_i_cmp2_gettanh20_or0;
    wire [0:0] SE_i_cmp2_gettanh20_backStall;
    wire [0:0] SE_i_cmp2_gettanh20_V0;
    wire [0:0] SE_i_cmp2_gettanh20_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_V1;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall;
    wire [0:0] SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_gettanh28_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_V1;
    wire [0:0] SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_gettanh9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_gettanh9_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_036_push7_gettanh31_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_036_push7_gettanh31_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_gettanh7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push9_gettanh7_backStall;
    reg [0:0] SE_i_masked_gettanh43_R_v_0;
    wire [0:0] SE_i_masked_gettanh43_v_s_0;
    wire [0:0] SE_i_masked_gettanh43_s_tv_0;
    wire [0:0] SE_i_masked_gettanh43_backEN;
    wire [0:0] SE_i_masked_gettanh43_and0;
    wire [0:0] SE_i_masked_gettanh43_backStall;
    wire [0:0] SE_i_masked_gettanh43_V0;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_wireValid;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_wireStall;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_StallValid;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_toReg0;
    reg [0:0] SE_i_next_initerations_gettanh6_vt_select_2_fromReg0;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_consumed0;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_toReg1;
    reg [0:0] SE_i_next_initerations_gettanh6_vt_select_2_fromReg1;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_consumed1;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_or0;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_backStall;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_V0;
    wire [0:0] SE_i_next_initerations_gettanh6_vt_select_2_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_V0;
    wire [0:0] SE_i_add6_gettanh26_sums_align_1_wireValid;
    wire [0:0] SE_i_add6_gettanh26_sums_align_1_and0;
    wire [0:0] SE_i_add6_gettanh26_sums_align_1_backStall;
    wire [0:0] SE_i_add6_gettanh26_sums_align_1_V0;
    wire [0:0] SE_i_mul3_gettanh24_sums_align_1_wireValid;
    wire [0:0] SE_i_mul3_gettanh24_sums_align_1_and0;
    wire [0:0] SE_i_mul3_gettanh24_sums_align_1_backStall;
    wire [0:0] SE_i_mul3_gettanh24_sums_align_1_V0;
    wire [0:0] SE_i_mul_gettanh22_sums_align_1_wireValid;
    wire [0:0] SE_i_mul_gettanh22_sums_align_1_and0;
    wire [0:0] SE_i_mul_gettanh22_sums_align_1_backStall;
    wire [0:0] SE_i_mul_gettanh22_sums_align_1_V0;
    reg [0:0] SE_i_add6_gettanh26_im0_cma_R_s_0;
    reg [0:0] SE_i_add6_gettanh26_im0_cma_R_v_0;
    reg [0:0] SE_i_add6_gettanh26_im0_cma_R_v_1;
    reg [0:0] SE_i_add6_gettanh26_im0_cma_R_v_2;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_v_s_0;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_s_tv_0;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_s_tv_1;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_s_tv_2;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_backEN;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_or0;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_or1;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_backStall;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_V0;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_V1;
    wire [0:0] SE_i_add6_gettanh26_im0_cma_V2;
    reg [0:0] SE_i_mul3_gettanh24_im0_cma_R_s_0;
    reg [0:0] SE_i_mul3_gettanh24_im0_cma_R_v_0;
    reg [0:0] SE_i_mul3_gettanh24_im0_cma_R_v_1;
    reg [0:0] SE_i_mul3_gettanh24_im0_cma_R_v_2;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_v_s_0;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_backEN;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_or0;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_or1;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_backStall;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_V0;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_V1;
    wire [0:0] SE_i_mul3_gettanh24_im0_cma_V2;
    reg [0:0] SE_i_mul_gettanh22_im0_cma_R_s_0;
    reg [0:0] SE_i_mul_gettanh22_im0_cma_R_v_0;
    reg [0:0] SE_i_mul_gettanh22_im0_cma_R_v_1;
    reg [0:0] SE_i_mul_gettanh22_im0_cma_R_v_2;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_v_s_0;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_s_tv_0;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_s_tv_1;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_s_tv_2;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_backEN;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_or0;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_or1;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_backStall;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_V0;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_V1;
    wire [0:0] SE_i_mul_gettanh22_im0_cma_V2;
    reg [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_and1;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and1;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and2;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_and0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_V0;
    reg [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_and0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_and0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_V0;
    reg [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_0;
    reg [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_1;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_v_s_0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backEN;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_and0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_or0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backStall;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_V0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_V1;
    reg [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_R_v_0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_v_s_0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backEN;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_V0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_and0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    wire [0:0] SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V2;
    wire [0:0] SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V3;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0;
    wire [0:0] SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1;
    reg [0:0] SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
    wire [0:0] SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN;
    wire [0:0] SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall;
    wire [0:0] SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;
    reg [0:0] SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backEN;
    wire [0:0] SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backStall;
    wire [0:0] SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_V0;
    reg [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_0;
    reg [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_1;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_1;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backEN;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_or0;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backStall;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V0;
    wire [0:0] SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V1;
    reg [0:0] SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_R_v_0;
    wire [0:0] SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_v_s_0;
    wire [0:0] SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_s_tv_0;
    wire [0:0] SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backEN;
    wire [0:0] SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backStall;
    wire [0:0] SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_V0;
    reg [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_1_R_v_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_1_v_s_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_1_s_tv_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_1_backEN;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_1_backStall;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_1_V0;
    reg [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_2_R_v_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_2_v_s_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_2_s_tv_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_2_backEN;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_2_backStall;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_2_V0;
    reg [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_3_R_v_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_3_v_s_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_3_s_tv_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_3_backEN;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_3_backStall;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_3_V0;
    reg [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_4_R_v_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_4_v_s_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_4_s_tv_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_4_backEN;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_4_backStall;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_4_V0;
    reg [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_0;
    reg [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_1;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_v_s_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_1;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_backEN;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_or0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_backStall;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_V0;
    wire [0:0] SE_redist23_i_add6_gettanh26_bs5_b_6_5_V1;
    reg [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_0_R_v_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_0_v_s_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_0_s_tv_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_0_backEN;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_0_backStall;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_0_V0;
    reg [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_1_R_v_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_1_v_s_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_1_s_tv_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_1_backEN;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_1_backStall;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_1_V0;
    reg [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_2_R_v_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_2_v_s_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_2_s_tv_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_2_backEN;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_2_backStall;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_2_V0;
    reg [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_3_R_v_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_3_v_s_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_3_s_tv_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_3_backEN;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_3_backStall;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_3_V0;
    reg [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_4_R_v_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_4_v_s_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_4_s_tv_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_4_backEN;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_4_backStall;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_4_V0;
    reg [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_5_R_v_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_5_v_s_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_5_s_tv_0;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_5_backEN;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_5_backStall;
    wire [0:0] SE_redist24_i_add6_gettanh26_bs5_b_12_5_V0;
    wire [0:0] SE_in_redist27_i_masked_gettanh43_q_114_fifo_wireValid;
    wire [0:0] SE_in_redist27_i_masked_gettanh43_q_114_fifo_backStall;
    wire [0:0] SE_in_redist27_i_masked_gettanh43_q_114_fifo_V0;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_wireValid;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall;
    wire [0:0] SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_V0;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_2;
    reg [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_3;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_3;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or1;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or2;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backStall;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V0;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V1;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V2;
    wire [0:0] SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V3;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_wireValid;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_and0;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_backStall;
    wire [0:0] SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_V0;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireValid;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireStall;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_StallValid;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_toReg0;
    reg [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg0;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed0;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_toReg1;
    reg [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg1;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed1;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_or0;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_backStall;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_V0;
    wire [0:0] SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_V1;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireValid;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireStall;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_StallValid;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_toReg0;
    reg [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg0;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed0;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_toReg1;
    reg [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg1;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed1;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_or0;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_backStall;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_V0;
    wire [0:0] SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_V1;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireValid;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireStall;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_StallValid;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_toReg0;
    reg [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg0;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed0;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_toReg1;
    reg [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg1;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed1;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_and0;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_and1;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_or0;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_backStall;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_V0;
    wire [0:0] SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_V1;
    reg [0:0] SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_R_v_0;
    wire [0:0] SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_v_s_0;
    wire [0:0] SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_s_tv_0;
    wire [0:0] SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backEN;
    wire [0:0] SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backStall;
    wire [0:0] SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_V0;
    wire [0:0] SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_wireValid;
    wire [0:0] SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall;
    wire [0:0] SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_V0;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireStall;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_StallValid;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg0;
    reg [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg0;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed0;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg1;
    reg [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg1;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed1;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg2;
    reg [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg2;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed2;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_or0;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_or1;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_backStall;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V0;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V1;
    wire [0:0] SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V2;
    reg [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_R_v_0;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_v_s_0;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_s_tv_0;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backEN;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backStall;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_V0;
    reg [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_0;
    reg [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_1;
    reg [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_2;
    reg [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_3;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_v_s_0;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_0;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_1;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_2;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_3;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or0;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or1;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or2;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backStall;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V0;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V1;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V2;
    wire [0:0] SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V3;
    reg [0:0] SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_V0;
    wire [0:0] SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_V0;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_V0;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_wireValid;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_backStall;
    wire [0:0] SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_V0;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_in;
    wire bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_in;
    wire bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_add6_gettanh26_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_out;
    wire bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_out;
    wire bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_add6_gettanh26_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_in;
    wire bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_in;
    wire bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_add6_gettanh26_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_out;
    wire bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_out;
    wire bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_add6_gettanh26_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul3_gettanh24_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul3_gettanh24_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [26:0] bubble_out_i_mul3_gettanh24_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [26:0] bubble_out_i_mul3_gettanh24_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_in;
    wire bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_in;
    wire bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_in_bitsignaltemp;
    wire [35:0] bubble_out_i_mul_gettanh22_im0_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_out;
    wire bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_out;
    wire bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_out_bitsignaltemp;
    wire [35:0] bubble_out_i_mul_gettanh22_im0_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_in;
    wire bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_in;
    wire bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_in_bitsignaltemp;
    wire [27:0] bubble_out_i_mul_gettanh22_im8_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_out;
    wire bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_out;
    wire bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_out_bitsignaltemp;
    wire [27:0] bubble_out_i_mul_gettanh22_im8_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_add6_gettanh26_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_add6_gettanh26_ma3_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_data_out;
    wire [0:0] bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_in;
    wire bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_in;
    wire bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_in_bitsignaltemp;
    wire [32:0] bubble_out_i_mul_gettanh22_ma3_cma_data_reg_data_in;
    wire [0:0] bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_out;
    wire bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_out;
    wire bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_out_bitsignaltemp;
    wire [32:0] bubble_out_i_mul_gettanh22_ma3_cma_data_reg_data_out;
    wire [0:0] SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_i_valid;
    reg [0:0] SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid;
    reg [0:0] SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_data0;
    wire [0:0] SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backStall;
    wire [0:0] SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V;
    wire [0:0] SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_D0;
    wire [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_i_valid;
    reg [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid;
    wire [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_and0;
    wire [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_and1;
    reg [63:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data0;
    reg [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data1;
    reg [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data2;
    wire [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall;
    wire [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_V;
    wire [63:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D0;
    wire [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D1;
    wire [0:0] SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D2;
    wire [0:0] SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid;
    reg [27:0] SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V;
    wire [27:0] SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid;
    reg [35:0] SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_V;
    wire [35:0] SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid;
    reg [32:0] SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_V;
    wire [32:0] SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_D0;
    wire [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_and1;
    reg [4:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_V;
    wire [4:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D0;
    wire [4:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D2;
    wire [0:0] SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_i_valid;
    reg [0:0] SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid;
    reg [30:0] SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_data0;
    wire [0:0] SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backStall;
    wire [0:0] SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_V;
    wire [30:0] SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_D0;
    wire [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_i_valid;
    reg [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid;
    reg [13:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data0;
    reg [17:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data1;
    wire [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_backStall;
    wire [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_V;
    wire [13:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_D0;
    wire [17:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_D1;
    wire [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_i_valid;
    reg [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid;
    reg [13:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data0;
    reg [17:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data1;
    wire [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_backStall;
    wire [0:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_V;
    wire [13:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_D0;
    wire [17:0] SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_D1;
    wire [0:0] SR_SE_i_mul3_gettanh24_im0_cma_i_valid;
    reg [0:0] SR_SE_i_mul3_gettanh24_im0_cma_r_valid;
    wire [0:0] SR_SE_i_mul3_gettanh24_im0_cma_and0;
    reg [17:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data0;
    reg [17:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data1;
    reg [17:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data2;
    reg [17:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data3;
    reg [13:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data4;
    reg [13:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data5;
    reg [12:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data6;
    reg [12:0] SR_SE_i_mul3_gettanh24_im0_cma_r_data7;
    wire [0:0] SR_SE_i_mul3_gettanh24_im0_cma_backStall;
    wire [0:0] SR_SE_i_mul3_gettanh24_im0_cma_V;
    wire [17:0] SR_SE_i_mul3_gettanh24_im0_cma_D0;
    wire [17:0] SR_SE_i_mul3_gettanh24_im0_cma_D1;
    wire [17:0] SR_SE_i_mul3_gettanh24_im0_cma_D2;
    wire [17:0] SR_SE_i_mul3_gettanh24_im0_cma_D3;
    wire [13:0] SR_SE_i_mul3_gettanh24_im0_cma_D4;
    wire [13:0] SR_SE_i_mul3_gettanh24_im0_cma_D5;
    wire [12:0] SR_SE_i_mul3_gettanh24_im0_cma_D6;
    wire [12:0] SR_SE_i_mul3_gettanh24_im0_cma_D7;
    wire [0:0] SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid;
    reg [26:0] SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V;
    wire [26:0] SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid;
    reg [35:0] SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_V;
    wire [35:0] SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid;
    reg [32:0] SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_V;
    wire [32:0] SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_D0;
    wire [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_and1;
    reg [3:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data0;
    reg [3:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_V;
    wire [3:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D0;
    wire [3:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D2;
    wire [0:0] SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_i_valid;
    reg [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid;
    reg [13:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data0;
    reg [17:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data1;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_backStall;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_V;
    wire [13:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_D0;
    wire [17:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_D1;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_i_valid;
    reg [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid;
    reg [13:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data0;
    reg [17:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data1;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_backStall;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_V;
    wire [13:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_D0;
    wire [17:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_D1;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_i_valid;
    reg [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid;
    reg [13:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data0;
    reg [17:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data1;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_backStall;
    wire [0:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_V;
    wire [13:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_D0;
    wire [17:0] SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_D1;
    wire [0:0] SR_SE_i_add6_gettanh26_im0_cma_i_valid;
    reg [0:0] SR_SE_i_add6_gettanh26_im0_cma_r_valid;
    wire [0:0] SR_SE_i_add6_gettanh26_im0_cma_and0;
    reg [17:0] SR_SE_i_add6_gettanh26_im0_cma_r_data0;
    reg [17:0] SR_SE_i_add6_gettanh26_im0_cma_r_data1;
    reg [17:0] SR_SE_i_add6_gettanh26_im0_cma_r_data2;
    reg [17:0] SR_SE_i_add6_gettanh26_im0_cma_r_data3;
    reg [13:0] SR_SE_i_add6_gettanh26_im0_cma_r_data4;
    reg [13:0] SR_SE_i_add6_gettanh26_im0_cma_r_data5;
    reg [13:0] SR_SE_i_add6_gettanh26_im0_cma_r_data6;
    reg [13:0] SR_SE_i_add6_gettanh26_im0_cma_r_data7;
    wire [0:0] SR_SE_i_add6_gettanh26_im0_cma_backStall;
    wire [0:0] SR_SE_i_add6_gettanh26_im0_cma_V;
    wire [17:0] SR_SE_i_add6_gettanh26_im0_cma_D0;
    wire [17:0] SR_SE_i_add6_gettanh26_im0_cma_D1;
    wire [17:0] SR_SE_i_add6_gettanh26_im0_cma_D2;
    wire [17:0] SR_SE_i_add6_gettanh26_im0_cma_D3;
    wire [13:0] SR_SE_i_add6_gettanh26_im0_cma_D4;
    wire [13:0] SR_SE_i_add6_gettanh26_im0_cma_D5;
    wire [13:0] SR_SE_i_add6_gettanh26_im0_cma_D6;
    wire [13:0] SR_SE_i_add6_gettanh26_im0_cma_D7;
    wire [0:0] SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid;
    reg [27:0] SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V;
    wire [27:0] SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid;
    reg [35:0] SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_V;
    wire [35:0] SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_D0;
    wire [0:0] SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_i_valid;
    reg [0:0] SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid;
    reg [32:0] SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_data0;
    wire [0:0] SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backStall;
    wire [0:0] SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_V;
    wire [32:0] SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_D0;
    wire [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_and0;
    wire [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_and1;
    reg [4:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backStall;
    wire [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_V;
    wire [4:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D0;
    wire [4:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D1;
    wire [0:0] SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D2;
    wire [0:0] SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data0;
    reg [31:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_D0;
    wire [31:0] SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_D1;
    wire [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_i_valid;
    reg [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid;
    wire [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_and0;
    wire [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_and1;
    reg [63:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data0;
    reg [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data1;
    reg [31:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data2;
    wire [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall;
    wire [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_V;
    wire [63:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D0;
    wire [0:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D1;
    wire [31:0] SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D2;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_D0;
    wire [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_i_valid;
    reg [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid;
    wire [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_and0;
    reg [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data0;
    reg [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data1;
    reg [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data2;
    reg [3:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data3;
    wire [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_backStall;
    wire [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_V;
    wire [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_D0;
    wire [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_D1;
    wire [0:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_D2;
    wire [3:0] SR_SE_i_next_initerations_gettanh6_vt_select_2_D3;


    // redist31_i_first_cleanup_xor_gettanh2_q_34_fifo(STALLFIFO,488)
    assign redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_in = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V4;
    assign redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_in = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_backStall;
    assign redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_data_in = i_first_cleanup_xor_gettanh2_q;
    assign redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_in_bitsignaltemp = redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_in[0];
    assign redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_in_bitsignaltemp = redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_in[0];
    assign redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_out[0] = redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_out_bitsignaltemp;
    assign redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_out[0] = redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist31_i_first_cleanup_xor_gettanh2_q_34_fifo (
        .valid_in(redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor_gettanh2_q),
        .valid_out(redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo(BITJOIN,581)
    assign bubble_join_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_q = redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_data_out;

    // bubble_select_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo(BITSELECT,582)
    assign bubble_select_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_b = $unsigned(bubble_join_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_q[0:0]);

    // bubble_join_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo(BITJOIN,575)
    assign bubble_join_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_q = redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_data_out;

    // bubble_select_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo(BITSELECT,576)
    assign bubble_select_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_b = $unsigned(bubble_join_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0(STALLENABLE,739)
    // Valid signal propagation
    assign SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_V0 = SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_backStall & SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,733)
    // Valid signal propagation
    assign SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backStall & SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_V1;
    // Backward Stall generation
    assign SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // bubble_join_getTanh_B3_merge_reg_aunroll_x(BITJOIN,498)
    assign bubble_join_getTanh_B3_merge_reg_aunroll_x_q = getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_getTanh_B3_merge_reg_aunroll_x(BITSELECT,499)
    assign bubble_select_getTanh_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_getTanh_B3_merge_reg_aunroll_x_q[0:0]);

    // bubble_join_i_llvm_fpga_pipeline_keep_going_gettanh4(BITJOIN,520)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_gettanh4_q = i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_gettanh4(BITSELECT,521)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_gettanh4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_gettanh4_q[0:0]);

    // redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0(REG,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_gettanh4_b);
        end
    end

    // redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1(REG,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN == 1'b1)
        begin
            redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q <= $unsigned(SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_D0);
        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29(STALLENABLE,647)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_wireValid = i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_valid_out;

    // bubble_join_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo(BITJOIN,578)
    assign bubble_join_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_q = redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_data_out;

    // bubble_select_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo(BITSELECT,579)
    assign bubble_select_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_b = $unsigned(bubble_join_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_q[0:0]);

    // SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo(STALLENABLE,789)
    // Valid signal propagation
    assign SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_V0 = SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall = i_llvm_fpga_mem_memdep_gettanh28_out_o_stall | ~ (SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_wireValid = SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_V;

    // SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2(STALLENABLE,695)
    // Valid signal propagation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_V0 = SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_s_tv_0 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_backStall & SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_add6_gettanh26_sums_align_1(STALLENABLE,675)
    // Valid signal propagation
    assign SE_i_add6_gettanh26_sums_align_1_V0 = SE_i_add6_gettanh26_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_add6_gettanh26_sums_align_1_backStall = SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_add6_gettanh26_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add6_gettanh26_sums_align_1_and0 = SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_V0;
    assign SE_i_add6_gettanh26_sums_align_1_wireValid = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V2 & SE_i_add6_gettanh26_sums_align_1_and0;

    // SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0(STALLENABLE,742)
    // Valid signal propagation
    assign SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_V0 = SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_s_tv_0 = SE_i_add6_gettanh26_sums_align_1_backStall & SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backEN = ~ (SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_v_s_0 = SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backEN & SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backStall = ~ (SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_R_v_0 <= SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_R_v_0 & SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_R_v_0 <= SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_redist24_i_add6_gettanh26_bs5_b_12_4(STALLENABLE,759)
    // Valid signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_4_V0 = SE_redist24_i_add6_gettanh26_bs5_b_12_4_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_4_s_tv_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_5_backStall & SE_redist24_i_add6_gettanh26_bs5_b_12_4_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_4_backEN = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_4_v_s_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_4_backEN & SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_V;
    // Backward Stall generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_4_backStall = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_add6_gettanh26_bs5_b_12_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_add6_gettanh26_bs5_b_12_4_backEN == 1'b0)
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_4_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_4_R_v_0 & SE_redist24_i_add6_gettanh26_bs5_b_12_4_s_tv_0;
            end
            else
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_4_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_4_v_s_0;
            end

        end
    end

    // SE_redist24_i_add6_gettanh26_bs5_b_12_2(STALLENABLE,757)
    // Valid signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_2_V0 = SE_redist24_i_add6_gettanh26_bs5_b_12_2_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_2_s_tv_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_3_backStall & SE_redist24_i_add6_gettanh26_bs5_b_12_2_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_2_backEN = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_2_v_s_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_2_backEN & SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_V;
    // Backward Stall generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_2_backStall = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_add6_gettanh26_bs5_b_12_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_add6_gettanh26_bs5_b_12_2_backEN == 1'b0)
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_2_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_2_R_v_0 & SE_redist24_i_add6_gettanh26_bs5_b_12_2_s_tv_0;
            end
            else
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_2_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_2_v_s_0;
            end

        end
    end

    // SE_redist24_i_add6_gettanh26_bs5_b_12_0(STALLENABLE,755)
    // Valid signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_0_V0 = SE_redist24_i_add6_gettanh26_bs5_b_12_0_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_0_s_tv_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_1_backStall & SE_redist24_i_add6_gettanh26_bs5_b_12_0_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_0_backEN = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_0_v_s_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_0_backEN & SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_V;
    // Backward Stall generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_0_backStall = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_add6_gettanh26_bs5_b_12_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_add6_gettanh26_bs5_b_12_0_backEN == 1'b0)
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_0_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_0_R_v_0 & SE_redist24_i_add6_gettanh26_bs5_b_12_0_s_tv_0;
            end
            else
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_0_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_0_v_s_0;
            end

        end
    end

    // SE_redist23_i_add6_gettanh26_bs5_b_6_4(STALLENABLE,753)
    // Valid signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_4_V0 = SE_redist23_i_add6_gettanh26_bs5_b_6_4_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_4_s_tv_0 = SE_redist23_i_add6_gettanh26_bs5_b_6_5_backStall & SE_redist23_i_add6_gettanh26_bs5_b_6_4_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_4_backEN = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_4_v_s_0 = SE_redist23_i_add6_gettanh26_bs5_b_6_4_backEN & SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_V;
    // Backward Stall generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_4_backStall = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_add6_gettanh26_bs5_b_6_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_add6_gettanh26_bs5_b_6_4_backEN == 1'b0)
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_4_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_4_R_v_0 & SE_redist23_i_add6_gettanh26_bs5_b_6_4_s_tv_0;
            end
            else
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_4_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_4_v_s_0;
            end

        end
    end

    // SE_redist23_i_add6_gettanh26_bs5_b_6_2(STALLENABLE,751)
    // Valid signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_2_V0 = SE_redist23_i_add6_gettanh26_bs5_b_6_2_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_2_s_tv_0 = SE_redist23_i_add6_gettanh26_bs5_b_6_3_backStall & SE_redist23_i_add6_gettanh26_bs5_b_6_2_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_2_backEN = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_2_v_s_0 = SE_redist23_i_add6_gettanh26_bs5_b_6_2_backEN & SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_V;
    // Backward Stall generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_2_backStall = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_add6_gettanh26_bs5_b_6_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_add6_gettanh26_bs5_b_6_2_backEN == 1'b0)
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_2_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_2_R_v_0 & SE_redist23_i_add6_gettanh26_bs5_b_6_2_s_tv_0;
            end
            else
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_2_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_2_v_s_0;
            end

        end
    end

    // i_llvm_fpga_mem_unnamed_gettanh9_gettanh19(BLACKBOX,87)@152
    // in in_i_stall@20000000
    // out out_o_readdata@184
    // out out_o_stall@20000000
    // out out_o_valid@184
    // out out_unnamed_getTanh9_getTanh_avm_address@20000000
    // out out_unnamed_getTanh9_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh9_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh9_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh9_getTanh_avm_read@20000000
    // out out_unnamed_getTanh9_getTanh_avm_write@20000000
    // out out_unnamed_getTanh9_getTanh_avm_writedata@20000000
    getTanh_i_llvm_fpga_mem_unnamed_gettanh9_gettanh0 thei_llvm_fpga_mem_unnamed_gettanh9_gettanh19 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D0),
        .in_i_dependence(SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D1),
        .in_i_predicate(SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_backStall),
        .in_i_valid(SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_V0),
        .in_unnamed_getTanh9_getTanh_avm_readdata(in_unnamed_getTanh9_getTanh_avm_readdata),
        .in_unnamed_getTanh9_getTanh_avm_readdatavalid(in_unnamed_getTanh9_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh9_getTanh_avm_waitrequest(in_unnamed_getTanh9_getTanh_avm_waitrequest),
        .in_unnamed_getTanh9_getTanh_avm_writeack(in_unnamed_getTanh9_getTanh_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_valid),
        .out_unnamed_getTanh9_getTanh_avm_address(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_address),
        .out_unnamed_getTanh9_getTanh_avm_burstcount(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_burstcount),
        .out_unnamed_getTanh9_getTanh_avm_byteenable(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_byteenable),
        .out_unnamed_getTanh9_getTanh_avm_enable(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_enable),
        .out_unnamed_getTanh9_getTanh_avm_read(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_read),
        .out_unnamed_getTanh9_getTanh_avm_write(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_write),
        .out_unnamed_getTanh9_getTanh_avm_writedata(i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19(BITJOIN,517)
    assign bubble_join_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_q = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19(BITSELECT,518)
    assign bubble_select_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_q[31:0]);

    // i_cmp2_gettanh20(COMPARE,75)@184 + 1
    assign i_cmp2_gettanh20_a = $unsigned({{2{bubble_select_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_b[31]}}, bubble_select_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_b});
    assign i_cmp2_gettanh20_b = $unsigned({{2{c_i32_149_recast_x_q[31]}}, c_i32_149_recast_x_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp2_gettanh20_o <= 34'b0;
        end
        else if (SE_i_cmp2_gettanh20_backEN == 1'b1)
        begin
            i_cmp2_gettanh20_o <= $unsigned($signed(i_cmp2_gettanh20_a) - $signed(i_cmp2_gettanh20_b));
        end
    end
    assign i_cmp2_gettanh20_c[0] = i_cmp2_gettanh20_o[33];

    // redist33_i_cmp2_gettanh20_c_17_fifo(STALLFIFO,490)
    assign redist33_i_cmp2_gettanh20_c_17_fifo_valid_in = SE_i_cmp2_gettanh20_V0;
    assign redist33_i_cmp2_gettanh20_c_17_fifo_stall_in = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_backStall;
    assign redist33_i_cmp2_gettanh20_c_17_fifo_data_in = i_cmp2_gettanh20_c;
    assign redist33_i_cmp2_gettanh20_c_17_fifo_valid_in_bitsignaltemp = redist33_i_cmp2_gettanh20_c_17_fifo_valid_in[0];
    assign redist33_i_cmp2_gettanh20_c_17_fifo_stall_in_bitsignaltemp = redist33_i_cmp2_gettanh20_c_17_fifo_stall_in[0];
    assign redist33_i_cmp2_gettanh20_c_17_fifo_valid_out[0] = redist33_i_cmp2_gettanh20_c_17_fifo_valid_out_bitsignaltemp;
    assign redist33_i_cmp2_gettanh20_c_17_fifo_stall_out[0] = redist33_i_cmp2_gettanh20_c_17_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(17),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist33_i_cmp2_gettanh20_c_17_fifo (
        .valid_in(redist33_i_cmp2_gettanh20_c_17_fifo_valid_in_bitsignaltemp),
        .stall_in(redist33_i_cmp2_gettanh20_c_17_fifo_stall_in_bitsignaltemp),
        .data_in(i_cmp2_gettanh20_c),
        .valid_out(redist33_i_cmp2_gettanh20_c_17_fifo_valid_out_bitsignaltemp),
        .stall_out(redist33_i_cmp2_gettanh20_c_17_fifo_stall_out_bitsignaltemp),
        .data_out(redist33_i_cmp2_gettanh20_c_17_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add6_gettanh26_bs5(BITSELECT,208)@184
    assign i_add6_gettanh26_bs5_b = bubble_select_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_b[31:18];

    // i_mul_gettanh22_ma3_cma(CHAINMULTADD,258)@184 + 2
    assign i_mul_gettanh22_ma3_cma_reset = ~ (resetn);
    assign i_mul_gettanh22_ma3_cma_ena0 = SE_i_mul_gettanh22_im0_cma_backEN[0];
    assign i_mul_gettanh22_ma3_cma_ena1 = i_mul_gettanh22_ma3_cma_ena0;
    assign i_mul_gettanh22_ma3_cma_p[0] = i_mul_gettanh22_ma3_cma_a0[0] * i_mul_gettanh22_ma3_cma_c0[0];
    assign i_mul_gettanh22_ma3_cma_p[1] = i_mul_gettanh22_ma3_cma_a0[1] * i_mul_gettanh22_ma3_cma_c0[1];
    assign i_mul_gettanh22_ma3_cma_u[0] = {1'b0, i_mul_gettanh22_ma3_cma_p[0][31:0]};
    assign i_mul_gettanh22_ma3_cma_u[1] = {1'b0, i_mul_gettanh22_ma3_cma_p[1][31:0]};
    assign i_mul_gettanh22_ma3_cma_w[0] = i_mul_gettanh22_ma3_cma_u[0] + i_mul_gettanh22_ma3_cma_u[1];
    assign i_mul_gettanh22_ma3_cma_x[0] = i_mul_gettanh22_ma3_cma_w[0];
    assign i_mul_gettanh22_ma3_cma_y[0] = i_mul_gettanh22_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_ma3_cma_a0 <= '{default: '0};
            i_mul_gettanh22_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul_gettanh22_ma3_cma_ena0 == 1'b1)
            begin
                i_mul_gettanh22_ma3_cma_a0[0] <= i_add6_gettanh26_bs5_b;
                i_mul_gettanh22_ma3_cma_a0[1] <= i_add6_gettanh26_bs5_b;
                i_mul_gettanh22_ma3_cma_c0[0] <= i_add6_gettanh26_bs2_b;
                i_mul_gettanh22_ma3_cma_c0[1] <= i_add6_gettanh26_bs2_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul_gettanh22_ma3_cma_ena1 == 1'b1)
            begin
                i_mul_gettanh22_ma3_cma_s[0] <= i_mul_gettanh22_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_gettanh22_ma3_cma_delay ( .xin(i_mul_gettanh22_ma3_cma_s[0]), .xout(i_mul_gettanh22_ma3_cma_qq), .ena(SE_i_mul_gettanh22_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_gettanh22_ma3_cma_q = $unsigned(i_mul_gettanh22_ma3_cma_qq[32:0]);

    // bubble_join_i_mul_gettanh22_ma3_cma(BITJOIN,569)
    assign bubble_join_i_mul_gettanh22_ma3_cma_q = i_mul_gettanh22_ma3_cma_q;

    // bubble_select_i_mul_gettanh22_ma3_cma(BITSELECT,570)
    assign bubble_select_i_mul_gettanh22_ma3_cma_b = $unsigned(bubble_out_i_mul_gettanh22_ma3_cma_data_reg_data_out[32:0]);

    // redist14_i_mul_gettanh22_ma3_cma_q_1_0(REG,450)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_mul_gettanh22_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist14_i_mul_gettanh22_ma3_cma_q_1_0_q <= $unsigned(SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_D0);
        end
    end

    // i_mul_gettanh22_sums_align_1(BITSHIFT,247)@187
    assign i_mul_gettanh22_sums_align_1_qint = { redist14_i_mul_gettanh22_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_mul_gettanh22_sums_align_1_q = i_mul_gettanh22_sums_align_1_qint[50:0];

    // i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,386)@187
    assign i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul_gettanh22_sums_align_1_q};

    // SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,729)
    // Valid signal propagation
    assign SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backStall & SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V1;
    // Backward Stall generation
    assign SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_redist17_i_mul_gettanh22_im8_cma_q_1_0(STALLENABLE,743)
    // Valid signal propagation
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V0 = SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_0;
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V1 = SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_0 = SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_0;
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_1 = SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_or0 = SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_0;
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backEN = ~ (SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_1 | SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_v_s_0 = SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backEN & SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backStall = ~ (SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_0 <= SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_0 & SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_0 <= SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_1 <= SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_1 & SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_R_v_1 <= SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul_gettanh22_im8_cma(BITSELECT,561)
    assign bubble_select_i_mul_gettanh22_im8_cma_b = $unsigned(bubble_out_i_mul_gettanh22_im8_cma_data_reg_data_out[27:0]);

    // SE_out_bubble_out_i_mul_gettanh22_im8_cma_data(STALLENABLE,884)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_V0 = SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_backStall = SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_wireValid = bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_out;

    // SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0(STALLREG,948)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_data0 <= 28'bxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid <= SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backStall & (SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid | SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_i_valid);

            if (SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul_gettanh22_im8_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backStall = SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid | ~ (SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V = SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid : SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_i_valid;

    assign SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_D0 = SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_r_data0 : bubble_select_i_mul_gettanh22_im8_cma_b;

    // redist17_i_mul_gettanh22_im8_cma_q_1_0(REG,453)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_i_mul_gettanh22_im8_cma_q_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist17_i_mul_gettanh22_im8_cma_q_1_0_q <= $unsigned(SR_SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_D0);
        end
    end

    // i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,396)@187
    assign i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist17_i_mul_gettanh22_im8_cma_q_1_0_q[23:0]);
    assign i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist17_i_mul_gettanh22_im8_cma_q_1_0_q[27:24]);

    // SE_redist18_i_mul_gettanh22_im0_cma_q_1_0(STALLENABLE,744)
    // Valid signal propagation
    assign SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_V0 = SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_s_tv_0 = SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backEN = ~ (SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_v_s_0 = SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backEN & SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backStall = ~ (SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_R_v_0 <= SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_R_v_0 & SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_R_v_0 <= SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul_gettanh22_im0_cma(BITSELECT,558)
    assign bubble_select_i_mul_gettanh22_im0_cma_b = $unsigned(bubble_out_i_mul_gettanh22_im0_cma_data_reg_data_out[35:0]);

    // SE_out_bubble_out_i_mul_gettanh22_im0_cma_data(STALLENABLE,880)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_V0 = SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_backStall = SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_wireValid = bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_out;

    // SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0(STALLREG,949)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_data0 <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid <= SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backStall & (SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid | SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_i_valid);

            if (SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul_gettanh22_im0_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backStall = SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid | ~ (SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_V = SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid : SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_i_valid;

    assign SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_D0 = SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_r_data0 : bubble_select_i_mul_gettanh22_im0_cma_b;

    // redist18_i_mul_gettanh22_im0_cma_q_1_0(REG,454)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_mul_gettanh22_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist18_i_mul_gettanh22_im0_cma_q_1_0_q <= $unsigned(SR_SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_D0);
        end
    end

    // i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,380)@187
    assign i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist18_i_mul_gettanh22_im0_cma_q_1_0_q};

    // i_mul_gettanh22_sums_result_add_0_0_p1_of_2(ADD,301)@187 + 1
    assign i_mul_gettanh22_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul_gettanh22_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_mul_gettanh22_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul_gettanh22_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul_gettanh22_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul_gettanh22_sums_result_add_0_0_p1_of_2_c[0] = i_mul_gettanh22_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q = i_mul_gettanh22_sums_result_add_0_0_p1_of_2_o[59:0];

    // c_i32_1950(CONSTANT,58)
    assign c_i32_1950_q = $unsigned(32'b00000000000000000000000000010011);

    // i_mul_gettanh22_sums_result_add_0_0_p2_of_2(ADD,302)@188 + 1
    assign i_mul_gettanh22_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D2;
    assign i_mul_gettanh22_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_mul_gettanh22_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D1}, i_mul_gettanh22_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_mul_gettanh22_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul_gettanh22_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul_gettanh22_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul_gettanh22_sums_result_add_0_0_p2_of_2_q = i_mul_gettanh22_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0(REG,445)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_D0);
        end
    end

    // i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q(BITJOIN,303)@189
    assign i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_q = {i_mul_gettanh22_sums_result_add_0_0_p2_of_2_q, redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // bgTrunc_i_mul_gettanh22_sel_x(BITSELECT,8)@189
    assign bgTrunc_i_mul_gettanh22_sel_x_in = i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_mul_gettanh22_sel_x_b = bgTrunc_i_mul_gettanh22_sel_x_in[31:0];

    // i_mul_gettanh22_vt_select_30(BITSELECT,107)@189
    assign i_mul_gettanh22_vt_select_30_b = bgTrunc_i_mul_gettanh22_sel_x_b[30:0];

    // i_mul_gettanh22_vt_join(BITJOIN,106)@189
    assign i_mul_gettanh22_vt_join_q = {GND_q, i_mul_gettanh22_vt_select_30_b};

    // i_add_gettanh23(ADD,68)@189
    assign i_add_gettanh23_a = {1'b0, i_mul_gettanh22_vt_join_q};
    assign i_add_gettanh23_b = {1'b0, c_i32_1950_q};
    assign i_add_gettanh23_o = $unsigned(i_add_gettanh23_a) + $unsigned(i_add_gettanh23_b);
    assign i_add_gettanh23_q = i_add_gettanh23_o[32:0];

    // bgTrunc_i_add_gettanh23_sel_x(BITSELECT,3)@189
    assign bgTrunc_i_add_gettanh23_sel_x_b = i_add_gettanh23_q[31:0];

    // i_add_gettanh23_vt_select_30(BITSELECT,71)@189
    assign i_add_gettanh23_vt_select_30_b = bgTrunc_i_add_gettanh23_sel_x_b[30:0];

    // redist34_i_add_gettanh23_vt_select_30_b_1_0(REG,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist34_i_add_gettanh23_vt_select_30_b_1_0_q <= $unsigned(31'b0000000000000000000000000000000);
        end
        else if (SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backEN == 1'b1)
        begin
            redist34_i_add_gettanh23_vt_select_30_b_1_0_q <= $unsigned(SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_D0);
        end
    end

    // i_mul3_gettanh24_bs1_merged_bit_select(BITSELECT,391)@190
    assign i_mul3_gettanh24_bs1_merged_bit_select_b = redist34_i_add_gettanh23_vt_select_30_b_1_0_q[17:0];
    assign i_mul3_gettanh24_bs1_merged_bit_select_c = redist34_i_add_gettanh23_vt_select_30_b_1_0_q[30:18];

    // i_mul3_gettanh24_ma3_cma(CHAINMULTADD,257)@190 + 2
    assign i_mul3_gettanh24_ma3_cma_reset = ~ (resetn);
    assign i_mul3_gettanh24_ma3_cma_ena0 = SE_i_mul3_gettanh24_im0_cma_backEN[0];
    assign i_mul3_gettanh24_ma3_cma_ena1 = i_mul3_gettanh24_ma3_cma_ena0;
    assign i_mul3_gettanh24_ma3_cma_p[0] = i_mul3_gettanh24_ma3_cma_a0[0] * i_mul3_gettanh24_ma3_cma_c0[0];
    assign i_mul3_gettanh24_ma3_cma_p[1] = i_mul3_gettanh24_ma3_cma_a0[1] * i_mul3_gettanh24_ma3_cma_c0[1];
    assign i_mul3_gettanh24_ma3_cma_u[0] = {1'b0, i_mul3_gettanh24_ma3_cma_p[0][31:0]};
    assign i_mul3_gettanh24_ma3_cma_u[1] = {1'b0, i_mul3_gettanh24_ma3_cma_p[1][31:0]};
    assign i_mul3_gettanh24_ma3_cma_w[0] = i_mul3_gettanh24_ma3_cma_u[0] + i_mul3_gettanh24_ma3_cma_u[1];
    assign i_mul3_gettanh24_ma3_cma_x[0] = i_mul3_gettanh24_ma3_cma_w[0];
    assign i_mul3_gettanh24_ma3_cma_y[0] = i_mul3_gettanh24_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_ma3_cma_a0 <= '{default: '0};
            i_mul3_gettanh24_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul3_gettanh24_ma3_cma_ena0 == 1'b1)
            begin
                i_mul3_gettanh24_ma3_cma_a0[0] <= {1'b0, SR_SE_i_mul3_gettanh24_im0_cma_D7[12:0]};
                i_mul3_gettanh24_ma3_cma_a0[1] <= SR_SE_i_mul3_gettanh24_im0_cma_D5;
                i_mul3_gettanh24_ma3_cma_c0[0] <= SR_SE_i_mul3_gettanh24_im0_cma_D3;
                i_mul3_gettanh24_ma3_cma_c0[1] <= SR_SE_i_mul3_gettanh24_im0_cma_D1;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul3_gettanh24_ma3_cma_ena1 == 1'b1)
            begin
                i_mul3_gettanh24_ma3_cma_s[0] <= i_mul3_gettanh24_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul3_gettanh24_ma3_cma_delay ( .xin(i_mul3_gettanh24_ma3_cma_s[0]), .xout(i_mul3_gettanh24_ma3_cma_qq), .ena(SE_i_mul3_gettanh24_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul3_gettanh24_ma3_cma_q = $unsigned(i_mul3_gettanh24_ma3_cma_qq[32:0]);

    // bubble_join_i_mul3_gettanh24_ma3_cma(BITJOIN,566)
    assign bubble_join_i_mul3_gettanh24_ma3_cma_q = i_mul3_gettanh24_ma3_cma_q;

    // bubble_select_i_mul3_gettanh24_ma3_cma(BITSELECT,567)
    assign bubble_select_i_mul3_gettanh24_ma3_cma_b = $unsigned(bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_data_out[32:0]);

    // i_mul3_gettanh24_sums_result_add_0_0_UpperBits_for_b(CONSTANT,289)
    assign i_mul3_gettanh24_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(13'b0000000000000);

    // i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,398)
    assign i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_mul3_gettanh24_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_mul3_gettanh24_sums_result_add_0_0_UpperBits_for_b_q[12:9]);

    // redist15_i_mul3_gettanh24_ma3_cma_q_1_0(REG,451)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_mul3_gettanh24_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist15_i_mul3_gettanh24_ma3_cma_q_1_0_q <= $unsigned(SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_D0);
        end
    end

    // i_mul3_gettanh24_sums_align_1(BITSHIFT,232)@193
    assign i_mul3_gettanh24_sums_align_1_qint = { redist15_i_mul3_gettanh24_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_mul3_gettanh24_sums_align_1_q = i_mul3_gettanh24_sums_align_1_qint[50:0];

    // i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,375)@193
    assign i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_mul3_gettanh24_sums_align_1_q};

    // SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,730)
    // Valid signal propagation
    assign SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backStall & SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V1;
    // Backward Stall generation
    assign SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0(STALLENABLE,745)
    // Valid signal propagation
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V0 = SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_0;
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V1 = SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_0 = SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_0;
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_1 = SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_or0 = SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_0;
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backEN = ~ (SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_1 | SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_v_s_0 = SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backEN & SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backStall = ~ (SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_0 <= SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_0 & SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_0 <= SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_1 <= SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_1 & SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_R_v_1 <= SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul3_gettanh24_im8_cma(BITSELECT,555)
    assign bubble_select_i_mul3_gettanh24_im8_cma_b = $unsigned(bubble_out_i_mul3_gettanh24_im8_cma_data_reg_data_out[26:0]);

    // SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data(STALLENABLE,876)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_V0 = SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_backStall = SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_wireValid = bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_out;

    // SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0(STALLREG,957)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_data0 <= 27'bxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid <= SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backStall & (SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid | SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_i_valid);

            if (SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul3_gettanh24_im8_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backStall = SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid | ~ (SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V = SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid : SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_i_valid;

    assign SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_D0 = SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_r_data0 : bubble_select_i_mul3_gettanh24_im8_cma_b;

    // redist19_i_mul3_gettanh24_im8_cma_q_1_0(REG,455)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_i_mul3_gettanh24_im8_cma_q_1_0_q <= $unsigned(27'b000000000000000000000000000);
        end
        else if (SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist19_i_mul3_gettanh24_im8_cma_q_1_0_q <= $unsigned(SR_SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_D0);
        end
    end

    // i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,395)@193
    assign i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist19_i_mul3_gettanh24_im8_cma_q_1_0_q[23:0]);
    assign i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist19_i_mul3_gettanh24_im8_cma_q_1_0_q[26:24]);

    // SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0(STALLENABLE,746)
    // Valid signal propagation
    assign SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_V0 = SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_s_tv_0 = SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backEN = ~ (SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_v_s_0 = SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backEN & SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backStall = ~ (SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_R_v_0 <= SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_R_v_0 & SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_R_v_0 <= SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // bubble_select_i_mul3_gettanh24_im0_cma(BITSELECT,552)
    assign bubble_select_i_mul3_gettanh24_im0_cma_b = $unsigned(bubble_out_i_mul3_gettanh24_im0_cma_data_reg_data_out[35:0]);

    // SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data(STALLENABLE,872)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_V0 = SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_backStall = SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_wireValid = bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_out;

    // SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0(STALLREG,958)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_data0 <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid <= SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backStall & (SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid | SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_i_valid);

            if (SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul3_gettanh24_im0_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backStall = SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid | ~ (SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_V = SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid : SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_i_valid;

    assign SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_D0 = SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_r_data0 : bubble_select_i_mul3_gettanh24_im0_cma_b;

    // redist20_i_mul3_gettanh24_im0_cma_q_1_0(REG,456)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_mul3_gettanh24_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist20_i_mul3_gettanh24_im0_cma_q_1_0_q <= $unsigned(SR_SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_D0);
        end
    end

    // i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,369)@193
    assign i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist20_i_mul3_gettanh24_im0_cma_q_1_0_q};

    // i_mul3_gettanh24_sums_result_add_0_0_p1_of_2(ADD,292)@193 + 1
    assign i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_a = {1'b0, i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_b = {1'b0, i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_c[0] = i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_o[60];
    assign i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q = i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_o[59:0];

    // SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2(STALLENABLE,698)
    // Valid signal propagation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_V0 = SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_s_tv_0 = SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_backStall & SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q(STALLENABLE,699)
    // Valid signal propagation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_V0 = SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_backStall = SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backStall | ~ (SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_and0 = SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_V0;
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_wireValid = SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_and0;

    // SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,736)
    // Valid signal propagation
    assign SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_backStall & SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0(STALLREG,961)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backStall & (SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_i_valid = SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backStall = SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_V = SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid : SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_D0 = SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 : i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q;

    // redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,440)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(3'b000);
        end
        else if (SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,372)@194
    assign i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2(STALLREG,960)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data0 <= 4'bxxxx;
            SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data1 <= 4'bxxxx;
            SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_and0 = SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_and1 = SE_redist1_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_and0;
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_i_valid = SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 & SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_V = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data0 : i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data1 : i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data2
    assign SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_r_data2 : i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_c;

    // SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,713)
    // Valid signal propagation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist19_i_mul3_gettanh24_im8_cma_q_1_0_V0;
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist20_i_mul3_gettanh24_im0_cma_q_1_0_V0 & SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2(STALLENABLE,697)
    // Valid signal propagation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_V0 = SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_V1 = SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backStall & SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_or0 = SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_and0 = SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 & SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backEN;
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_mul3_gettanh24_sums_align_1_V0 & SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(STALLENABLE,728)
    // Valid signal propagation
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 = 1'b1;
    assign SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 = 1'b1;

    // SE_i_mul3_gettanh24_sums_align_1(STALLENABLE,677)
    // Valid signal propagation
    assign SE_i_mul3_gettanh24_sums_align_1_V0 = SE_i_mul3_gettanh24_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_mul3_gettanh24_sums_align_1_backStall = SE_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul3_gettanh24_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul3_gettanh24_sums_align_1_and0 = SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_V0;
    assign SE_i_mul3_gettanh24_sums_align_1_wireValid = SE_i_mul3_gettanh24_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 & SE_i_mul3_gettanh24_sums_align_1_and0;

    // SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0(STALLENABLE,741)
    // Valid signal propagation
    assign SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_V0 = SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_s_tv_0 = SE_i_mul3_gettanh24_sums_align_1_backStall & SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backEN = ~ (SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_v_s_0 = SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backEN & SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backStall = ~ (SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_R_v_0 <= SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_R_v_0 & SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_R_v_0 <= SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0(STALLREG,959)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid <= SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backStall & (SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid | SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_i_valid);

            if (SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul3_gettanh24_ma3_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backStall = SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid | ~ (SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_V = SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid : SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_i_valid;

    assign SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_D0 = SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_r_data0 : bubble_select_i_mul3_gettanh24_ma3_cma_b;

    // SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data(STALLENABLE,892)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_V0 = SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_backStall = SR_SE_redist15_i_mul3_gettanh24_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_wireValid = bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_out;

    // bubble_out_i_mul3_gettanh24_ma3_cma_data_reg(STALLFIFO,944)
    assign bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_in = SE_i_mul3_gettanh24_im0_cma_V2;
    assign bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul3_gettanh24_ma3_cma_data_backStall;
    assign bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_data_in = bubble_join_i_mul3_gettanh24_ma3_cma_q;
    assign bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul3_gettanh24_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul3_gettanh24_ma3_cma_q),
        .valid_out(bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul3_gettanh24_im8_cma(CHAINMULTADD,253)@190 + 2
    assign i_mul3_gettanh24_im8_cma_reset = ~ (resetn);
    assign i_mul3_gettanh24_im8_cma_ena0 = SE_i_mul3_gettanh24_im0_cma_backEN[0];
    assign i_mul3_gettanh24_im8_cma_ena1 = i_mul3_gettanh24_im8_cma_ena0;
    assign i_mul3_gettanh24_im8_cma_p[0] = i_mul3_gettanh24_im8_cma_a0[0] * i_mul3_gettanh24_im8_cma_c0[0];
    assign i_mul3_gettanh24_im8_cma_u[0] = i_mul3_gettanh24_im8_cma_p[0][26:0];
    assign i_mul3_gettanh24_im8_cma_w[0] = i_mul3_gettanh24_im8_cma_u[0];
    assign i_mul3_gettanh24_im8_cma_x[0] = i_mul3_gettanh24_im8_cma_w[0];
    assign i_mul3_gettanh24_im8_cma_y[0] = i_mul3_gettanh24_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_im8_cma_a0 <= '{default: '0};
            i_mul3_gettanh24_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul3_gettanh24_im8_cma_ena0 == 1'b1)
            begin
                i_mul3_gettanh24_im8_cma_a0[0] <= SR_SE_i_mul3_gettanh24_im0_cma_D4;
                i_mul3_gettanh24_im8_cma_c0[0] <= SR_SE_i_mul3_gettanh24_im0_cma_D6;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul3_gettanh24_im8_cma_ena1 == 1'b1)
            begin
                i_mul3_gettanh24_im8_cma_s[0] <= i_mul3_gettanh24_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(27), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul3_gettanh24_im8_cma_delay ( .xin(i_mul3_gettanh24_im8_cma_s[0]), .xout(i_mul3_gettanh24_im8_cma_qq), .ena(SE_i_mul3_gettanh24_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul3_gettanh24_im8_cma_q = $unsigned(i_mul3_gettanh24_im8_cma_qq[26:0]);

    // bubble_join_i_mul3_gettanh24_im8_cma(BITJOIN,554)
    assign bubble_join_i_mul3_gettanh24_im8_cma_q = i_mul3_gettanh24_im8_cma_q;

    // bubble_out_i_mul3_gettanh24_im8_cma_data_reg(STALLFIFO,940)
    assign bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_in = SE_i_mul3_gettanh24_im0_cma_V1;
    assign bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul3_gettanh24_im8_cma_data_backStall;
    assign bubble_out_i_mul3_gettanh24_im8_cma_data_reg_data_in = bubble_join_i_mul3_gettanh24_im8_cma_q;
    assign bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(27),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul3_gettanh24_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul3_gettanh24_im8_cma_q),
        .valid_out(bubble_out_i_mul3_gettanh24_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul3_gettanh24_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul3_gettanh24_im0_cma(CHAINMULTADD,252)@190 + 2
    assign i_mul3_gettanh24_im0_cma_reset = ~ (resetn);
    assign i_mul3_gettanh24_im0_cma_ena0 = SE_i_mul3_gettanh24_im0_cma_backEN[0];
    assign i_mul3_gettanh24_im0_cma_ena1 = i_mul3_gettanh24_im0_cma_ena0;
    assign i_mul3_gettanh24_im0_cma_p[0] = i_mul3_gettanh24_im0_cma_a0[0] * i_mul3_gettanh24_im0_cma_c0[0];
    assign i_mul3_gettanh24_im0_cma_u[0] = i_mul3_gettanh24_im0_cma_p[0][35:0];
    assign i_mul3_gettanh24_im0_cma_w[0] = i_mul3_gettanh24_im0_cma_u[0];
    assign i_mul3_gettanh24_im0_cma_x[0] = i_mul3_gettanh24_im0_cma_w[0];
    assign i_mul3_gettanh24_im0_cma_y[0] = i_mul3_gettanh24_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_im0_cma_a0 <= '{default: '0};
            i_mul3_gettanh24_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul3_gettanh24_im0_cma_ena0 == 1'b1)
            begin
                i_mul3_gettanh24_im0_cma_a0[0] <= SR_SE_i_mul3_gettanh24_im0_cma_D0;
                i_mul3_gettanh24_im0_cma_c0[0] <= SR_SE_i_mul3_gettanh24_im0_cma_D2;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul3_gettanh24_im0_cma_ena1 == 1'b1)
            begin
                i_mul3_gettanh24_im0_cma_s[0] <= i_mul3_gettanh24_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul3_gettanh24_im0_cma_delay ( .xin(i_mul3_gettanh24_im0_cma_s[0]), .xout(i_mul3_gettanh24_im0_cma_qq), .ena(SE_i_mul3_gettanh24_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul3_gettanh24_im0_cma_q = $unsigned(i_mul3_gettanh24_im0_cma_qq[35:0]);

    // bubble_join_i_mul3_gettanh24_im0_cma(BITJOIN,551)
    assign bubble_join_i_mul3_gettanh24_im0_cma_q = i_mul3_gettanh24_im0_cma_q;

    // bubble_out_i_mul3_gettanh24_im0_cma_data_reg(STALLFIFO,939)
    assign bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_in = SE_i_mul3_gettanh24_im0_cma_V0;
    assign bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul3_gettanh24_im0_cma_data_backStall;
    assign bubble_out_i_mul3_gettanh24_im0_cma_data_reg_data_in = bubble_join_i_mul3_gettanh24_im0_cma_q;
    assign bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul3_gettanh24_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul3_gettanh24_im0_cma_q),
        .valid_out(bubble_out_i_mul3_gettanh24_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul3_gettanh24_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mul3_gettanh24_im0_cma(STALLENABLE,681)
    // Valid signal propagation
    assign SE_i_mul3_gettanh24_im0_cma_V0 = SE_i_mul3_gettanh24_im0_cma_R_v_0;
    assign SE_i_mul3_gettanh24_im0_cma_V1 = SE_i_mul3_gettanh24_im0_cma_R_v_1;
    assign SE_i_mul3_gettanh24_im0_cma_V2 = SE_i_mul3_gettanh24_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul3_gettanh24_im0_cma_s_tv_0 = bubble_out_i_mul3_gettanh24_im0_cma_data_reg_stall_out & SE_i_mul3_gettanh24_im0_cma_R_v_0;
    assign SE_i_mul3_gettanh24_im0_cma_s_tv_1 = bubble_out_i_mul3_gettanh24_im8_cma_data_reg_stall_out & SE_i_mul3_gettanh24_im0_cma_R_v_1;
    assign SE_i_mul3_gettanh24_im0_cma_s_tv_2 = bubble_out_i_mul3_gettanh24_ma3_cma_data_reg_stall_out & SE_i_mul3_gettanh24_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul3_gettanh24_im0_cma_or0 = SE_i_mul3_gettanh24_im0_cma_s_tv_0;
    assign SE_i_mul3_gettanh24_im0_cma_or1 = SE_i_mul3_gettanh24_im0_cma_s_tv_1 | SE_i_mul3_gettanh24_im0_cma_or0;
    assign SE_i_mul3_gettanh24_im0_cma_backEN = ~ (SE_i_mul3_gettanh24_im0_cma_s_tv_2 | SE_i_mul3_gettanh24_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul3_gettanh24_im0_cma_v_s_0 = SE_i_mul3_gettanh24_im0_cma_backEN & SR_SE_i_mul3_gettanh24_im0_cma_V;
    // Backward Stall generation
    assign SE_i_mul3_gettanh24_im0_cma_backStall = ~ (SE_i_mul3_gettanh24_im0_cma_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul3_gettanh24_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul3_gettanh24_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul3_gettanh24_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul3_gettanh24_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul3_gettanh24_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul3_gettanh24_im0_cma_R_s_0 <= SE_i_mul3_gettanh24_im0_cma_v_s_0;
            end

            if (SE_i_mul3_gettanh24_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul3_gettanh24_im0_cma_R_v_0 <= SE_i_mul3_gettanh24_im0_cma_R_v_0 & SE_i_mul3_gettanh24_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul3_gettanh24_im0_cma_R_v_0 <= SE_i_mul3_gettanh24_im0_cma_R_s_0;
            end

            if (SE_i_mul3_gettanh24_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul3_gettanh24_im0_cma_R_v_1 <= SE_i_mul3_gettanh24_im0_cma_R_v_1 & SE_i_mul3_gettanh24_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul3_gettanh24_im0_cma_R_v_1 <= SE_i_mul3_gettanh24_im0_cma_R_s_0;
            end

            if (SE_i_mul3_gettanh24_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul3_gettanh24_im0_cma_R_v_2 <= SE_i_mul3_gettanh24_im0_cma_R_v_2 & SE_i_mul3_gettanh24_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul3_gettanh24_im0_cma_R_v_2 <= SE_i_mul3_gettanh24_im0_cma_R_s_0;
            end

        end
    end

    // SR_SE_i_mul3_gettanh24_im0_cma(STALLREG,956)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul3_gettanh24_im0_cma_r_valid <= 1'b0;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data0 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data1 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data2 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data3 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data4 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data5 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data6 <= 13'bxxxxxxxxxxxxx;
            SR_SE_i_mul3_gettanh24_im0_cma_r_data7 <= 13'bxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul3_gettanh24_im0_cma_r_valid <= SE_i_mul3_gettanh24_im0_cma_backStall & (SR_SE_i_mul3_gettanh24_im0_cma_r_valid | SR_SE_i_mul3_gettanh24_im0_cma_i_valid);

            if (SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul3_gettanh24_im0_cma_r_data0 <= $unsigned(i_mul3_gettanh24_bs1_merged_bit_select_b);
                SR_SE_i_mul3_gettanh24_im0_cma_r_data1 <= $unsigned(i_mul3_gettanh24_bs1_merged_bit_select_b);
                SR_SE_i_mul3_gettanh24_im0_cma_r_data2 <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_5_q);
                SR_SE_i_mul3_gettanh24_im0_cma_r_data3 <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_5_q);
                SR_SE_i_mul3_gettanh24_im0_cma_r_data4 <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_5_q);
                SR_SE_i_mul3_gettanh24_im0_cma_r_data5 <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_5_q);
                SR_SE_i_mul3_gettanh24_im0_cma_r_data6 <= $unsigned(i_mul3_gettanh24_bs1_merged_bit_select_c);
                SR_SE_i_mul3_gettanh24_im0_cma_r_data7 <= $unsigned(i_mul3_gettanh24_bs1_merged_bit_select_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul3_gettanh24_im0_cma_and0 = SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_V0;
    assign SR_SE_i_mul3_gettanh24_im0_cma_i_valid = SE_redist23_i_add6_gettanh26_bs5_b_6_5_V1 & SR_SE_i_mul3_gettanh24_im0_cma_and0;
    // Stall signal propagation
    assign SR_SE_i_mul3_gettanh24_im0_cma_backStall = SR_SE_i_mul3_gettanh24_im0_cma_r_valid | ~ (SR_SE_i_mul3_gettanh24_im0_cma_i_valid);

    // Valid
    assign SR_SE_i_mul3_gettanh24_im0_cma_V = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_valid : SR_SE_i_mul3_gettanh24_im0_cma_i_valid;

    // Data0
    assign SR_SE_i_mul3_gettanh24_im0_cma_D0 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data0 : i_mul3_gettanh24_bs1_merged_bit_select_b;
    // Data1
    assign SR_SE_i_mul3_gettanh24_im0_cma_D1 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data1 : i_mul3_gettanh24_bs1_merged_bit_select_b;
    // Data2
    assign SR_SE_i_mul3_gettanh24_im0_cma_D2 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data2 : redist25_i_add6_gettanh26_bs2_b_6_5_q;
    // Data3
    assign SR_SE_i_mul3_gettanh24_im0_cma_D3 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data3 : redist25_i_add6_gettanh26_bs2_b_6_5_q;
    // Data4
    assign SR_SE_i_mul3_gettanh24_im0_cma_D4 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data4 : redist23_i_add6_gettanh26_bs5_b_6_5_q;
    // Data5
    assign SR_SE_i_mul3_gettanh24_im0_cma_D5 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data5 : redist23_i_add6_gettanh26_bs5_b_6_5_q;
    // Data6
    assign SR_SE_i_mul3_gettanh24_im0_cma_D6 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data6 : i_mul3_gettanh24_bs1_merged_bit_select_c;
    // Data7
    assign SR_SE_i_mul3_gettanh24_im0_cma_D7 = SR_SE_i_mul3_gettanh24_im0_cma_r_valid == 1'b1 ? SR_SE_i_mul3_gettanh24_im0_cma_r_data7 : i_mul3_gettanh24_bs1_merged_bit_select_c;

    // SE_redist34_i_add_gettanh23_vt_select_30_b_1_0(STALLENABLE,787)
    // Valid signal propagation
    assign SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_V0 = SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_s_tv_0 = SR_SE_i_mul3_gettanh24_im0_cma_backStall & SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backEN = ~ (SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_v_s_0 = SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backEN & SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_V;
    // Backward Stall generation
    assign SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backStall = ~ (SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backEN == 1'b0)
            begin
                SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_R_v_0 <= SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_R_v_0 & SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_R_v_0 <= SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0(STALLREG,953)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid <= 1'b0;
            SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_data0 <= 31'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid <= SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backStall & (SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid | SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_i_valid);

            if (SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_data0 <= i_add_gettanh23_vt_select_30_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_i_valid = SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_V0;
    // Stall signal propagation
    assign SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backStall = SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid | ~ (SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_i_valid);

    // Valid
    assign SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_V = SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid == 1'b1 ? SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid : SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_i_valid;

    assign SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_D0 = SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_valid == 1'b1 ? SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_r_data0 : i_add_gettanh23_vt_select_30_b;

    // SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2(STALLENABLE,701)
    // Valid signal propagation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_V0 = SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_s_tv_0 = SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_backStall & SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backEN = ~ (SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_v_s_0 = SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backEN & SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backStall = ~ (SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_R_v_0 & SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_R_v_0 <= SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q(STALLENABLE,702)
    // Valid signal propagation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_V0 = SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_backStall = SR_SE_redist34_i_add_gettanh23_vt_select_30_b_1_0_backStall | ~ (SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_and0 = SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_V0;
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_wireValid = SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_and0;

    // SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,735)
    // Valid signal propagation
    assign SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SE_i_mul_gettanh22_sums_result_add_0_0_BitJoin_for_q_backStall & SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0(STALLREG,952)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backStall & (SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_i_valid = SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backStall = SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_V = SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid : SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_D0 = SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 : i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q;

    // redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,383)@188
    assign i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2(STALLREG,951)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_mul_gettanh22_sums_result_add_0_0_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_and0 = SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_and1 = SE_redist0_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_and0;
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_i_valid = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 & SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_V = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data0 : i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data1 : i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data2
    assign SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_r_data2 : i_mul_gettanh22_sums_result_add_0_0_p1_of_2_c;

    // SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,716)
    // Valid signal propagation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist17_i_mul_gettanh22_im8_cma_q_1_0_V0;
    assign SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist18_i_mul_gettanh22_im0_cma_q_1_0_V0 & SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2(STALLENABLE,700)
    // Valid signal propagation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_V0 = SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_V1 = SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_mul_gettanh22_sums_result_add_0_0_p2_of_2_backStall & SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_redist9_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_or0 = SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_and0 = SE_i_mul_gettanh22_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 & SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backEN;
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_mul_gettanh22_sums_align_1_V0 & SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mul_gettanh22_sums_align_1(STALLENABLE,678)
    // Valid signal propagation
    assign SE_i_mul_gettanh22_sums_align_1_V0 = SE_i_mul_gettanh22_sums_align_1_wireValid;
    // Backward Stall generation
    assign SE_i_mul_gettanh22_sums_align_1_backStall = SE_i_mul_gettanh22_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_mul_gettanh22_sums_align_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mul_gettanh22_sums_align_1_and0 = SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_V0;
    assign SE_i_mul_gettanh22_sums_align_1_wireValid = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V3 & SE_i_mul_gettanh22_sums_align_1_and0;

    // SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0(STALLENABLE,740)
    // Valid signal propagation
    assign SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_V0 = SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_s_tv_0 = SE_i_mul_gettanh22_sums_align_1_backStall & SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backEN = ~ (SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_v_s_0 = SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backEN & SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backStall = ~ (SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_R_v_0 <= SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_R_v_0 & SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_R_v_0 <= SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0(STALLREG,950)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid <= SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backStall & (SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid | SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_i_valid);

            if (SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_mul_gettanh22_ma3_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_i_valid = SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backStall = SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid | ~ (SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_V = SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid : SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_i_valid;

    assign SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_D0 = SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_r_data0 : bubble_select_i_mul_gettanh22_ma3_cma_b;

    // SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data(STALLENABLE,896)
    // Valid signal propagation
    assign SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_V0 = SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_backStall = SR_SE_redist14_i_mul_gettanh22_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_wireValid = bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_out;

    // bubble_out_i_mul_gettanh22_ma3_cma_data_reg(STALLFIFO,945)
    assign bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_in = SE_i_mul_gettanh22_im0_cma_V2;
    assign bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_gettanh22_ma3_cma_data_backStall;
    assign bubble_out_i_mul_gettanh22_ma3_cma_data_reg_data_in = bubble_join_i_mul_gettanh22_ma3_cma_q;
    assign bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_out[0] = bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_out[0] = bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_gettanh22_ma3_cma_data_reg (
        .valid_in(bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_gettanh22_ma3_cma_q),
        .valid_out(bubble_out_i_mul_gettanh22_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_gettanh22_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_gettanh22_im8_cma(CHAINMULTADD,255)@184 + 2
    assign i_mul_gettanh22_im8_cma_reset = ~ (resetn);
    assign i_mul_gettanh22_im8_cma_ena0 = SE_i_mul_gettanh22_im0_cma_backEN[0];
    assign i_mul_gettanh22_im8_cma_ena1 = i_mul_gettanh22_im8_cma_ena0;
    assign i_mul_gettanh22_im8_cma_p[0] = i_mul_gettanh22_im8_cma_a0[0] * i_mul_gettanh22_im8_cma_c0[0];
    assign i_mul_gettanh22_im8_cma_u[0] = i_mul_gettanh22_im8_cma_p[0][27:0];
    assign i_mul_gettanh22_im8_cma_w[0] = i_mul_gettanh22_im8_cma_u[0];
    assign i_mul_gettanh22_im8_cma_x[0] = i_mul_gettanh22_im8_cma_w[0];
    assign i_mul_gettanh22_im8_cma_y[0] = i_mul_gettanh22_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_im8_cma_a0 <= '{default: '0};
            i_mul_gettanh22_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul_gettanh22_im8_cma_ena0 == 1'b1)
            begin
                i_mul_gettanh22_im8_cma_a0[0] <= i_add6_gettanh26_bs5_b;
                i_mul_gettanh22_im8_cma_c0[0] <= i_add6_gettanh26_bs5_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul_gettanh22_im8_cma_ena1 == 1'b1)
            begin
                i_mul_gettanh22_im8_cma_s[0] <= i_mul_gettanh22_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_gettanh22_im8_cma_delay ( .xin(i_mul_gettanh22_im8_cma_s[0]), .xout(i_mul_gettanh22_im8_cma_qq), .ena(SE_i_mul_gettanh22_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_gettanh22_im8_cma_q = $unsigned(i_mul_gettanh22_im8_cma_qq[27:0]);

    // bubble_join_i_mul_gettanh22_im8_cma(BITJOIN,560)
    assign bubble_join_i_mul_gettanh22_im8_cma_q = i_mul_gettanh22_im8_cma_q;

    // bubble_out_i_mul_gettanh22_im8_cma_data_reg(STALLFIFO,942)
    assign bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_in = SE_i_mul_gettanh22_im0_cma_V1;
    assign bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_gettanh22_im8_cma_data_backStall;
    assign bubble_out_i_mul_gettanh22_im8_cma_data_reg_data_in = bubble_join_i_mul_gettanh22_im8_cma_q;
    assign bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_out[0] = bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_out[0] = bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_gettanh22_im8_cma_data_reg (
        .valid_in(bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_gettanh22_im8_cma_q),
        .valid_out(bubble_out_i_mul_gettanh22_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_gettanh22_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_gettanh22_im0_cma(CHAINMULTADD,254)@184 + 2
    assign i_mul_gettanh22_im0_cma_reset = ~ (resetn);
    assign i_mul_gettanh22_im0_cma_ena0 = SE_i_mul_gettanh22_im0_cma_backEN[0];
    assign i_mul_gettanh22_im0_cma_ena1 = i_mul_gettanh22_im0_cma_ena0;
    assign i_mul_gettanh22_im0_cma_p[0] = i_mul_gettanh22_im0_cma_a0[0] * i_mul_gettanh22_im0_cma_c0[0];
    assign i_mul_gettanh22_im0_cma_u[0] = i_mul_gettanh22_im0_cma_p[0][35:0];
    assign i_mul_gettanh22_im0_cma_w[0] = i_mul_gettanh22_im0_cma_u[0];
    assign i_mul_gettanh22_im0_cma_x[0] = i_mul_gettanh22_im0_cma_w[0];
    assign i_mul_gettanh22_im0_cma_y[0] = i_mul_gettanh22_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_im0_cma_a0 <= '{default: '0};
            i_mul_gettanh22_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_mul_gettanh22_im0_cma_ena0 == 1'b1)
            begin
                i_mul_gettanh22_im0_cma_a0[0] <= i_add6_gettanh26_bs2_b;
                i_mul_gettanh22_im0_cma_c0[0] <= i_add6_gettanh26_bs2_b;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul_gettanh22_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_mul_gettanh22_im0_cma_ena1 == 1'b1)
            begin
                i_mul_gettanh22_im0_cma_s[0] <= i_mul_gettanh22_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_mul_gettanh22_im0_cma_delay ( .xin(i_mul_gettanh22_im0_cma_s[0]), .xout(i_mul_gettanh22_im0_cma_qq), .ena(SE_i_mul_gettanh22_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_mul_gettanh22_im0_cma_q = $unsigned(i_mul_gettanh22_im0_cma_qq[35:0]);

    // bubble_join_i_mul_gettanh22_im0_cma(BITJOIN,557)
    assign bubble_join_i_mul_gettanh22_im0_cma_q = i_mul_gettanh22_im0_cma_q;

    // bubble_out_i_mul_gettanh22_im0_cma_data_reg(STALLFIFO,941)
    assign bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_in = SE_i_mul_gettanh22_im0_cma_V0;
    assign bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_mul_gettanh22_im0_cma_data_backStall;
    assign bubble_out_i_mul_gettanh22_im0_cma_data_reg_data_in = bubble_join_i_mul_gettanh22_im0_cma_q;
    assign bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_out[0] = bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_out[0] = bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_mul_gettanh22_im0_cma_data_reg (
        .valid_in(bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_mul_gettanh22_im0_cma_q),
        .valid_out(bubble_out_i_mul_gettanh22_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_mul_gettanh22_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_mul_gettanh22_im0_cma(STALLENABLE,683)
    // Valid signal propagation
    assign SE_i_mul_gettanh22_im0_cma_V0 = SE_i_mul_gettanh22_im0_cma_R_v_0;
    assign SE_i_mul_gettanh22_im0_cma_V1 = SE_i_mul_gettanh22_im0_cma_R_v_1;
    assign SE_i_mul_gettanh22_im0_cma_V2 = SE_i_mul_gettanh22_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_mul_gettanh22_im0_cma_s_tv_0 = bubble_out_i_mul_gettanh22_im0_cma_data_reg_stall_out & SE_i_mul_gettanh22_im0_cma_R_v_0;
    assign SE_i_mul_gettanh22_im0_cma_s_tv_1 = bubble_out_i_mul_gettanh22_im8_cma_data_reg_stall_out & SE_i_mul_gettanh22_im0_cma_R_v_1;
    assign SE_i_mul_gettanh22_im0_cma_s_tv_2 = bubble_out_i_mul_gettanh22_ma3_cma_data_reg_stall_out & SE_i_mul_gettanh22_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_mul_gettanh22_im0_cma_or0 = SE_i_mul_gettanh22_im0_cma_s_tv_0;
    assign SE_i_mul_gettanh22_im0_cma_or1 = SE_i_mul_gettanh22_im0_cma_s_tv_1 | SE_i_mul_gettanh22_im0_cma_or0;
    assign SE_i_mul_gettanh22_im0_cma_backEN = ~ (SE_i_mul_gettanh22_im0_cma_s_tv_2 | SE_i_mul_gettanh22_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mul_gettanh22_im0_cma_v_s_0 = SE_i_mul_gettanh22_im0_cma_backEN & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_V1;
    // Backward Stall generation
    assign SE_i_mul_gettanh22_im0_cma_backStall = ~ (SE_i_mul_gettanh22_im0_cma_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mul_gettanh22_im0_cma_R_s_0 <= 1'b0;
            SE_i_mul_gettanh22_im0_cma_R_v_0 <= 1'b0;
            SE_i_mul_gettanh22_im0_cma_R_v_1 <= 1'b0;
            SE_i_mul_gettanh22_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_mul_gettanh22_im0_cma_backEN == 1'b1)
            begin
                SE_i_mul_gettanh22_im0_cma_R_s_0 <= SE_i_mul_gettanh22_im0_cma_v_s_0;
            end

            if (SE_i_mul_gettanh22_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_gettanh22_im0_cma_R_v_0 <= SE_i_mul_gettanh22_im0_cma_R_v_0 & SE_i_mul_gettanh22_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_mul_gettanh22_im0_cma_R_v_0 <= SE_i_mul_gettanh22_im0_cma_R_s_0;
            end

            if (SE_i_mul_gettanh22_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_gettanh22_im0_cma_R_v_1 <= SE_i_mul_gettanh22_im0_cma_R_v_1 & SE_i_mul_gettanh22_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_mul_gettanh22_im0_cma_R_v_1 <= SE_i_mul_gettanh22_im0_cma_R_s_0;
            end

            if (SE_i_mul_gettanh22_im0_cma_backEN == 1'b0)
            begin
                SE_i_mul_gettanh22_im0_cma_R_v_2 <= SE_i_mul_gettanh22_im0_cma_R_v_2 & SE_i_mul_gettanh22_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_mul_gettanh22_im0_cma_R_v_2 <= SE_i_mul_gettanh22_im0_cma_R_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19(STALLENABLE,629)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed0 = (~ (SE_i_cmp2_gettanh20_backStall) & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed1 = (~ (SE_i_mul_gettanh22_im0_cma_backStall) & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_StallValid = SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_backStall & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_StallValid & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_StallValid & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_or0 = SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_backStall = SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_V0 = SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_V1 = SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_wireValid = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_valid;

    // SE_i_cmp2_gettanh20(STALLENABLE,614)
    // Valid signal propagation
    assign SE_i_cmp2_gettanh20_V0 = SE_i_cmp2_gettanh20_R_v_0;
    assign SE_i_cmp2_gettanh20_V1 = SE_i_cmp2_gettanh20_R_v_1;
    // Stall signal propagation
    assign SE_i_cmp2_gettanh20_s_tv_0 = redist33_i_cmp2_gettanh20_c_17_fifo_stall_out & SE_i_cmp2_gettanh20_R_v_0;
    assign SE_i_cmp2_gettanh20_s_tv_1 = SE_redist23_i_add6_gettanh26_bs5_b_6_1_backStall & SE_i_cmp2_gettanh20_R_v_1;
    // Backward Enable generation
    assign SE_i_cmp2_gettanh20_or0 = SE_i_cmp2_gettanh20_s_tv_0;
    assign SE_i_cmp2_gettanh20_backEN = ~ (SE_i_cmp2_gettanh20_s_tv_1 | SE_i_cmp2_gettanh20_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_cmp2_gettanh20_v_s_0 = SE_i_cmp2_gettanh20_backEN & SE_out_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_V0;
    // Backward Stall generation
    assign SE_i_cmp2_gettanh20_backStall = ~ (SE_i_cmp2_gettanh20_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_cmp2_gettanh20_R_v_0 <= 1'b0;
            SE_i_cmp2_gettanh20_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_cmp2_gettanh20_backEN == 1'b0)
            begin
                SE_i_cmp2_gettanh20_R_v_0 <= SE_i_cmp2_gettanh20_R_v_0 & SE_i_cmp2_gettanh20_s_tv_0;
            end
            else
            begin
                SE_i_cmp2_gettanh20_R_v_0 <= SE_i_cmp2_gettanh20_v_s_0;
            end

            if (SE_i_cmp2_gettanh20_backEN == 1'b0)
            begin
                SE_i_cmp2_gettanh20_R_v_1 <= SE_i_cmp2_gettanh20_R_v_1 & SE_i_cmp2_gettanh20_s_tv_1;
            end
            else
            begin
                SE_i_cmp2_gettanh20_R_v_1 <= SE_i_cmp2_gettanh20_v_s_0;
            end

        end
    end

    // i_add6_gettanh26_bs2(BITSELECT,205)@184
    assign i_add6_gettanh26_bs2_in = bubble_select_i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_b[17:0];
    assign i_add6_gettanh26_bs2_b = i_add6_gettanh26_bs2_in[17:0];

    // redist25_i_add6_gettanh26_bs2_b_6_0(REG,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_0_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_i_cmp2_gettanh20_backEN == 1'b1)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_0_q <= $unsigned(i_add6_gettanh26_bs2_b);
        end
    end

    // redist25_i_add6_gettanh26_bs2_b_6_1(REG,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_1_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_1_backEN == 1'b1)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_1_q <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_0_q);
        end
    end

    // redist23_i_add6_gettanh26_bs5_b_6_0(REG,459)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_0_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_i_cmp2_gettanh20_backEN == 1'b1)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_0_q <= $unsigned(i_add6_gettanh26_bs5_b);
        end
    end

    // redist23_i_add6_gettanh26_bs5_b_6_1(REG,460)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_1_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_1_backEN == 1'b1)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_1_q <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_0_q);
        end
    end

    // SE_redist23_i_add6_gettanh26_bs5_b_6_1(STALLENABLE,750)
    // Valid signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_1_V0 = SE_redist23_i_add6_gettanh26_bs5_b_6_1_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_1_s_tv_0 = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_backStall & SE_redist23_i_add6_gettanh26_bs5_b_6_1_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_1_backEN = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_1_v_s_0 = SE_redist23_i_add6_gettanh26_bs5_b_6_1_backEN & SE_i_cmp2_gettanh20_V1;
    // Backward Stall generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_1_backStall = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_add6_gettanh26_bs5_b_6_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_add6_gettanh26_bs5_b_6_1_backEN == 1'b0)
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_1_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_1_R_v_0 & SE_redist23_i_add6_gettanh26_bs5_b_6_1_s_tv_0;
            end
            else
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_1_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_1_v_s_0;
            end

        end
    end

    // SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2(STALLREG,954)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid <= 1'b0;
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data1 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid <= SE_redist23_i_add6_gettanh26_bs5_b_6_2_backStall & (SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid | SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_i_valid);

            if (SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data0 <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_1_q);
                SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data1 <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_i_valid = SE_redist23_i_add6_gettanh26_bs5_b_6_1_V0;
    // Stall signal propagation
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_backStall = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid | ~ (SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_i_valid);

    // Valid
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_V = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid == 1'b1 ? SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid : SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_i_valid;

    // Data0
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_D0 = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid == 1'b1 ? SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data0 : redist23_i_add6_gettanh26_bs5_b_6_1_q;
    // Data1
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_D1 = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_valid == 1'b1 ? SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_r_data1 : redist25_i_add6_gettanh26_bs2_b_6_1_q;

    // redist25_i_add6_gettanh26_bs2_b_6_2(REG,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_2_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_2_backEN == 1'b1)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_2_q <= $unsigned(SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_D1);
        end
    end

    // redist25_i_add6_gettanh26_bs2_b_6_3(REG,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_3_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_3_backEN == 1'b1)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_3_q <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_2_q);
        end
    end

    // redist23_i_add6_gettanh26_bs5_b_6_2(REG,461)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_2_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_2_backEN == 1'b1)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_2_q <= $unsigned(SR_SE_redist23_i_add6_gettanh26_bs5_b_6_2_D0);
        end
    end

    // redist23_i_add6_gettanh26_bs5_b_6_3(REG,462)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_3_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_3_backEN == 1'b1)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_3_q <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_2_q);
        end
    end

    // SE_redist23_i_add6_gettanh26_bs5_b_6_3(STALLENABLE,752)
    // Valid signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_3_V0 = SE_redist23_i_add6_gettanh26_bs5_b_6_3_R_v_0;
    // Stall signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_3_s_tv_0 = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_backStall & SE_redist23_i_add6_gettanh26_bs5_b_6_3_R_v_0;
    // Backward Enable generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_3_backEN = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_3_v_s_0 = SE_redist23_i_add6_gettanh26_bs5_b_6_3_backEN & SE_redist23_i_add6_gettanh26_bs5_b_6_2_V0;
    // Backward Stall generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_3_backStall = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_add6_gettanh26_bs5_b_6_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_add6_gettanh26_bs5_b_6_3_backEN == 1'b0)
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_3_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_3_R_v_0 & SE_redist23_i_add6_gettanh26_bs5_b_6_3_s_tv_0;
            end
            else
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_3_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_3_v_s_0;
            end

        end
    end

    // SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4(STALLREG,955)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid <= 1'b0;
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data1 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid <= SE_redist23_i_add6_gettanh26_bs5_b_6_4_backStall & (SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid | SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_i_valid);

            if (SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data0 <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_3_q);
                SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data1 <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_i_valid = SE_redist23_i_add6_gettanh26_bs5_b_6_3_V0;
    // Stall signal propagation
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_backStall = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid | ~ (SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_i_valid);

    // Valid
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_V = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid == 1'b1 ? SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid : SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_i_valid;

    // Data0
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_D0 = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid == 1'b1 ? SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data0 : redist23_i_add6_gettanh26_bs5_b_6_3_q;
    // Data1
    assign SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_D1 = SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_valid == 1'b1 ? SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_r_data1 : redist25_i_add6_gettanh26_bs2_b_6_3_q;

    // redist25_i_add6_gettanh26_bs2_b_6_4(REG,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_4_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_4_backEN == 1'b1)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_4_q <= $unsigned(SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_D1);
        end
    end

    // redist25_i_add6_gettanh26_bs2_b_6_5(REG,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_5_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_5_backEN == 1'b1)
        begin
            redist25_i_add6_gettanh26_bs2_b_6_5_q <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_4_q);
        end
    end

    // redist23_i_add6_gettanh26_bs5_b_6_4(REG,463)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_4_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_4_backEN == 1'b1)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_4_q <= $unsigned(SR_SE_redist23_i_add6_gettanh26_bs5_b_6_4_D0);
        end
    end

    // redist23_i_add6_gettanh26_bs5_b_6_5(REG,464)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_5_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist23_i_add6_gettanh26_bs5_b_6_5_backEN == 1'b1)
        begin
            redist23_i_add6_gettanh26_bs5_b_6_5_q <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_4_q);
        end
    end

    // SE_redist23_i_add6_gettanh26_bs5_b_6_5(STALLENABLE,754)
    // Valid signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_V0 = SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_0;
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_V1 = SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_1;
    // Stall signal propagation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_0 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_backStall & SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_0;
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_1 = SR_SE_i_mul3_gettanh24_im0_cma_backStall & SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_1;
    // Backward Enable generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_or0 = SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_0;
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_backEN = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_1 | SE_redist23_i_add6_gettanh26_bs5_b_6_5_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_v_s_0 = SE_redist23_i_add6_gettanh26_bs5_b_6_5_backEN & SE_redist23_i_add6_gettanh26_bs5_b_6_4_V0;
    // Backward Stall generation
    assign SE_redist23_i_add6_gettanh26_bs5_b_6_5_backStall = ~ (SE_redist23_i_add6_gettanh26_bs5_b_6_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_0 <= 1'b0;
            SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist23_i_add6_gettanh26_bs5_b_6_5_backEN == 1'b0)
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_0 & SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_0;
            end
            else
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_0 <= SE_redist23_i_add6_gettanh26_bs5_b_6_5_v_s_0;
            end

            if (SE_redist23_i_add6_gettanh26_bs5_b_6_5_backEN == 1'b0)
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_1 <= SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_1 & SE_redist23_i_add6_gettanh26_bs5_b_6_5_s_tv_1;
            end
            else
            begin
                SE_redist23_i_add6_gettanh26_bs5_b_6_5_R_v_1 <= SE_redist23_i_add6_gettanh26_bs5_b_6_5_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0(STALLREG,962)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid <= 1'b0;
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data1 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid <= SE_redist24_i_add6_gettanh26_bs5_b_12_0_backStall & (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid | SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_i_valid);

            if (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data0 <= $unsigned(redist23_i_add6_gettanh26_bs5_b_6_5_q);
                SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data1 <= $unsigned(redist25_i_add6_gettanh26_bs2_b_6_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_i_valid = SE_redist23_i_add6_gettanh26_bs5_b_6_5_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_backStall = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid | ~ (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_i_valid);

    // Valid
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_V = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid : SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_i_valid;

    // Data0
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_D0 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data0 : redist23_i_add6_gettanh26_bs5_b_6_5_q;
    // Data1
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_D1 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_r_data1 : redist25_i_add6_gettanh26_bs2_b_6_5_q;

    // redist26_i_add6_gettanh26_bs2_b_12_0(REG,477)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_0_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_0_backEN == 1'b1)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_0_q <= $unsigned(SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_D1);
        end
    end

    // redist26_i_add6_gettanh26_bs2_b_12_1(REG,478)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_1_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_1_backEN == 1'b1)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_1_q <= $unsigned(redist26_i_add6_gettanh26_bs2_b_12_0_q);
        end
    end

    // redist24_i_add6_gettanh26_bs5_b_12_0(REG,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_0_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_0_backEN == 1'b1)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_0_q <= $unsigned(SR_SE_redist24_i_add6_gettanh26_bs5_b_12_0_D0);
        end
    end

    // redist24_i_add6_gettanh26_bs5_b_12_1(REG,466)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_1_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_1_backEN == 1'b1)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_1_q <= $unsigned(redist24_i_add6_gettanh26_bs5_b_12_0_q);
        end
    end

    // SE_redist24_i_add6_gettanh26_bs5_b_12_1(STALLENABLE,756)
    // Valid signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_1_V0 = SE_redist24_i_add6_gettanh26_bs5_b_12_1_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_1_s_tv_0 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_backStall & SE_redist24_i_add6_gettanh26_bs5_b_12_1_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_1_backEN = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_1_v_s_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_1_backEN & SE_redist24_i_add6_gettanh26_bs5_b_12_0_V0;
    // Backward Stall generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_1_backStall = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_add6_gettanh26_bs5_b_12_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_add6_gettanh26_bs5_b_12_1_backEN == 1'b0)
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_1_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_1_R_v_0 & SE_redist24_i_add6_gettanh26_bs5_b_12_1_s_tv_0;
            end
            else
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_1_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_1_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2(STALLREG,963)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid <= 1'b0;
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data1 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid <= SE_redist24_i_add6_gettanh26_bs5_b_12_2_backStall & (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid | SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_i_valid);

            if (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data0 <= $unsigned(redist24_i_add6_gettanh26_bs5_b_12_1_q);
                SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data1 <= $unsigned(redist26_i_add6_gettanh26_bs2_b_12_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_i_valid = SE_redist24_i_add6_gettanh26_bs5_b_12_1_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_backStall = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid | ~ (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_i_valid);

    // Valid
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_V = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid : SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_i_valid;

    // Data0
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_D0 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data0 : redist24_i_add6_gettanh26_bs5_b_12_1_q;
    // Data1
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_D1 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_r_data1 : redist26_i_add6_gettanh26_bs2_b_12_1_q;

    // redist26_i_add6_gettanh26_bs2_b_12_2(REG,479)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_2_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_2_backEN == 1'b1)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_2_q <= $unsigned(SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_D1);
        end
    end

    // redist26_i_add6_gettanh26_bs2_b_12_3(REG,480)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_3_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_3_backEN == 1'b1)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_3_q <= $unsigned(redist26_i_add6_gettanh26_bs2_b_12_2_q);
        end
    end

    // redist24_i_add6_gettanh26_bs5_b_12_2(REG,467)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_2_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_2_backEN == 1'b1)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_2_q <= $unsigned(SR_SE_redist24_i_add6_gettanh26_bs5_b_12_2_D0);
        end
    end

    // redist24_i_add6_gettanh26_bs5_b_12_3(REG,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_3_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_3_backEN == 1'b1)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_3_q <= $unsigned(redist24_i_add6_gettanh26_bs5_b_12_2_q);
        end
    end

    // SE_redist24_i_add6_gettanh26_bs5_b_12_3(STALLENABLE,758)
    // Valid signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_3_V0 = SE_redist24_i_add6_gettanh26_bs5_b_12_3_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_3_s_tv_0 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_backStall & SE_redist24_i_add6_gettanh26_bs5_b_12_3_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_3_backEN = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_3_v_s_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_3_backEN & SE_redist24_i_add6_gettanh26_bs5_b_12_2_V0;
    // Backward Stall generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_3_backStall = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_add6_gettanh26_bs5_b_12_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_add6_gettanh26_bs5_b_12_3_backEN == 1'b0)
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_3_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_3_R_v_0 & SE_redist24_i_add6_gettanh26_bs5_b_12_3_s_tv_0;
            end
            else
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_3_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_3_v_s_0;
            end

        end
    end

    // SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4(STALLREG,964)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid <= 1'b0;
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data0 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data1 <= 18'bxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid <= SE_redist24_i_add6_gettanh26_bs5_b_12_4_backStall & (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid | SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_i_valid);

            if (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data0 <= $unsigned(redist24_i_add6_gettanh26_bs5_b_12_3_q);
                SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data1 <= $unsigned(redist26_i_add6_gettanh26_bs2_b_12_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_i_valid = SE_redist24_i_add6_gettanh26_bs5_b_12_3_V0;
    // Stall signal propagation
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_backStall = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid | ~ (SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_i_valid);

    // Valid
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_V = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid : SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_i_valid;

    // Data0
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_D0 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data0 : redist24_i_add6_gettanh26_bs5_b_12_3_q;
    // Data1
    assign SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_D1 = SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_valid == 1'b1 ? SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_r_data1 : redist26_i_add6_gettanh26_bs2_b_12_3_q;

    // redist24_i_add6_gettanh26_bs5_b_12_4(REG,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_4_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_4_backEN == 1'b1)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_4_q <= $unsigned(SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_D0);
        end
    end

    // redist24_i_add6_gettanh26_bs5_b_12_5(REG,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_5_q <= $unsigned(14'b00000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_5_backEN == 1'b1)
        begin
            redist24_i_add6_gettanh26_bs5_b_12_5_q <= $unsigned(redist24_i_add6_gettanh26_bs5_b_12_4_q);
        end
    end

    // redist26_i_add6_gettanh26_bs2_b_12_4(REG,481)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_4_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_4_backEN == 1'b1)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_4_q <= $unsigned(SR_SE_redist24_i_add6_gettanh26_bs5_b_12_4_D1);
        end
    end

    // redist26_i_add6_gettanh26_bs2_b_12_5(REG,482)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_5_q <= $unsigned(18'b000000000000000000);
        end
        else if (SE_redist24_i_add6_gettanh26_bs5_b_12_5_backEN == 1'b1)
        begin
            redist26_i_add6_gettanh26_bs2_b_12_5_q <= $unsigned(redist26_i_add6_gettanh26_bs2_b_12_4_q);
        end
    end

    // c_i32_351(CONSTANT,59)
    assign c_i32_351_q = $unsigned(32'b00000000000000000000000000000011);

    // i_mul3_gettanh24_sums_result_add_0_0_p2_of_2(ADD,293)@194 + 1
    assign i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D2;
    assign i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_D1}, i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_o <= 6'b0;
        end
        else if (SE_i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_q = i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_o[4:1];

    // redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_D0);
        end
    end

    // i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q(BITJOIN,294)@195
    assign i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_q = {i_mul3_gettanh24_sums_result_add_0_0_p2_of_2_q, redist10_i_mul3_gettanh24_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // i_mul3_gettanh24_extender_x(BITJOIN,37)@195
    assign i_mul3_gettanh24_extender_x_q = {GND_q, i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_q[62:0]};

    // bgTrunc_i_mul3_gettanh24_sel_x(BITSELECT,6)@195
    assign bgTrunc_i_mul3_gettanh24_sel_x_b = i_mul3_gettanh24_extender_x_q[31:0];

    // i_mul435_gettanh25(ADD,103)@195
    assign i_mul435_gettanh25_a = {1'b0, bgTrunc_i_mul3_gettanh24_sel_x_b};
    assign i_mul435_gettanh25_b = {1'b0, c_i32_351_q};
    assign i_mul435_gettanh25_o = $unsigned(i_mul435_gettanh25_a) + $unsigned(i_mul435_gettanh25_b);
    assign i_mul435_gettanh25_q = i_mul435_gettanh25_o[32:0];

    // bgTrunc_i_mul435_gettanh25_sel_x(BITSELECT,7)@195
    assign bgTrunc_i_mul435_gettanh25_sel_x_b = i_mul435_gettanh25_q[31:0];

    // redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0(REG,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_mul435_gettanh25_sel_x_b);
        end
    end

    // i_add6_gettanh26_bs1_merged_bit_select(BITSELECT,389)@196
    assign i_add6_gettanh26_bs1_merged_bit_select_b = redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_q[17:0];
    assign i_add6_gettanh26_bs1_merged_bit_select_c = redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_q[31:18];

    // SE_redist24_i_add6_gettanh26_bs5_b_12_5(STALLENABLE,760)
    // Valid signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_5_V0 = SE_redist24_i_add6_gettanh26_bs5_b_12_5_R_v_0;
    // Stall signal propagation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_5_s_tv_0 = SR_SE_i_add6_gettanh26_im0_cma_backStall & SE_redist24_i_add6_gettanh26_bs5_b_12_5_R_v_0;
    // Backward Enable generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_5_backEN = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_5_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_5_v_s_0 = SE_redist24_i_add6_gettanh26_bs5_b_12_5_backEN & SE_redist24_i_add6_gettanh26_bs5_b_12_4_V0;
    // Backward Stall generation
    assign SE_redist24_i_add6_gettanh26_bs5_b_12_5_backStall = ~ (SE_redist24_i_add6_gettanh26_bs5_b_12_5_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist24_i_add6_gettanh26_bs5_b_12_5_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist24_i_add6_gettanh26_bs5_b_12_5_backEN == 1'b0)
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_5_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_5_R_v_0 & SE_redist24_i_add6_gettanh26_bs5_b_12_5_s_tv_0;
            end
            else
            begin
                SE_redist24_i_add6_gettanh26_bs5_b_12_5_R_v_0 <= SE_redist24_i_add6_gettanh26_bs5_b_12_5_v_s_0;
            end

        end
    end

    // SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0(STALLENABLE,794)
    // Valid signal propagation
    assign SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_V0 = SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_s_tv_0 = SR_SE_i_add6_gettanh26_im0_cma_backStall & SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backEN = ~ (SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_v_s_0 = SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backEN & SE_i_mul3_gettanh24_sums_result_add_0_0_BitJoin_for_q_V0;
    // Backward Stall generation
    assign SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backStall = ~ (SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_R_v_0 <= SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_R_v_0 & SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_R_v_0 <= SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SR_SE_i_add6_gettanh26_im0_cma(STALLREG,965)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_add6_gettanh26_im0_cma_r_valid <= 1'b0;
            SR_SE_i_add6_gettanh26_im0_cma_r_data0 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_add6_gettanh26_im0_cma_r_data1 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_add6_gettanh26_im0_cma_r_data2 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_add6_gettanh26_im0_cma_r_data3 <= 18'bxxxxxxxxxxxxxxxxxx;
            SR_SE_i_add6_gettanh26_im0_cma_r_data4 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_add6_gettanh26_im0_cma_r_data5 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_add6_gettanh26_im0_cma_r_data6 <= 14'bxxxxxxxxxxxxxx;
            SR_SE_i_add6_gettanh26_im0_cma_r_data7 <= 14'bxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_add6_gettanh26_im0_cma_r_valid <= SE_i_add6_gettanh26_im0_cma_backStall & (SR_SE_i_add6_gettanh26_im0_cma_r_valid | SR_SE_i_add6_gettanh26_im0_cma_i_valid);

            if (SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_add6_gettanh26_im0_cma_r_data0 <= $unsigned(i_add6_gettanh26_bs1_merged_bit_select_b);
                SR_SE_i_add6_gettanh26_im0_cma_r_data1 <= $unsigned(i_add6_gettanh26_bs1_merged_bit_select_b);
                SR_SE_i_add6_gettanh26_im0_cma_r_data2 <= $unsigned(redist26_i_add6_gettanh26_bs2_b_12_5_q);
                SR_SE_i_add6_gettanh26_im0_cma_r_data3 <= $unsigned(redist26_i_add6_gettanh26_bs2_b_12_5_q);
                SR_SE_i_add6_gettanh26_im0_cma_r_data4 <= $unsigned(i_add6_gettanh26_bs1_merged_bit_select_c);
                SR_SE_i_add6_gettanh26_im0_cma_r_data5 <= $unsigned(i_add6_gettanh26_bs1_merged_bit_select_c);
                SR_SE_i_add6_gettanh26_im0_cma_r_data6 <= $unsigned(redist24_i_add6_gettanh26_bs5_b_12_5_q);
                SR_SE_i_add6_gettanh26_im0_cma_r_data7 <= $unsigned(redist24_i_add6_gettanh26_bs5_b_12_5_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_add6_gettanh26_im0_cma_and0 = SE_redist38_bgTrunc_i_mul435_gettanh25_sel_x_b_1_0_V0;
    assign SR_SE_i_add6_gettanh26_im0_cma_i_valid = SE_redist24_i_add6_gettanh26_bs5_b_12_5_V0 & SR_SE_i_add6_gettanh26_im0_cma_and0;
    // Stall signal propagation
    assign SR_SE_i_add6_gettanh26_im0_cma_backStall = SR_SE_i_add6_gettanh26_im0_cma_r_valid | ~ (SR_SE_i_add6_gettanh26_im0_cma_i_valid);

    // Valid
    assign SR_SE_i_add6_gettanh26_im0_cma_V = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_valid : SR_SE_i_add6_gettanh26_im0_cma_i_valid;

    // Data0
    assign SR_SE_i_add6_gettanh26_im0_cma_D0 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data0 : i_add6_gettanh26_bs1_merged_bit_select_b;
    // Data1
    assign SR_SE_i_add6_gettanh26_im0_cma_D1 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data1 : i_add6_gettanh26_bs1_merged_bit_select_b;
    // Data2
    assign SR_SE_i_add6_gettanh26_im0_cma_D2 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data2 : redist26_i_add6_gettanh26_bs2_b_12_5_q;
    // Data3
    assign SR_SE_i_add6_gettanh26_im0_cma_D3 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data3 : redist26_i_add6_gettanh26_bs2_b_12_5_q;
    // Data4
    assign SR_SE_i_add6_gettanh26_im0_cma_D4 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data4 : i_add6_gettanh26_bs1_merged_bit_select_c;
    // Data5
    assign SR_SE_i_add6_gettanh26_im0_cma_D5 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data5 : i_add6_gettanh26_bs1_merged_bit_select_c;
    // Data6
    assign SR_SE_i_add6_gettanh26_im0_cma_D6 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data6 : redist24_i_add6_gettanh26_bs5_b_12_5_q;
    // Data7
    assign SR_SE_i_add6_gettanh26_im0_cma_D7 = SR_SE_i_add6_gettanh26_im0_cma_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_im0_cma_r_data7 : redist24_i_add6_gettanh26_bs5_b_12_5_q;

    // i_add6_gettanh26_ma3_cma(CHAINMULTADD,256)@196 + 2
    assign i_add6_gettanh26_ma3_cma_reset = ~ (resetn);
    assign i_add6_gettanh26_ma3_cma_ena0 = SE_i_add6_gettanh26_im0_cma_backEN[0];
    assign i_add6_gettanh26_ma3_cma_ena1 = i_add6_gettanh26_ma3_cma_ena0;
    assign i_add6_gettanh26_ma3_cma_p[0] = i_add6_gettanh26_ma3_cma_a0[0] * i_add6_gettanh26_ma3_cma_c0[0];
    assign i_add6_gettanh26_ma3_cma_p[1] = i_add6_gettanh26_ma3_cma_a0[1] * i_add6_gettanh26_ma3_cma_c0[1];
    assign i_add6_gettanh26_ma3_cma_u[0] = {1'b0, i_add6_gettanh26_ma3_cma_p[0][31:0]};
    assign i_add6_gettanh26_ma3_cma_u[1] = {1'b0, i_add6_gettanh26_ma3_cma_p[1][31:0]};
    assign i_add6_gettanh26_ma3_cma_w[0] = i_add6_gettanh26_ma3_cma_u[0] + i_add6_gettanh26_ma3_cma_u[1];
    assign i_add6_gettanh26_ma3_cma_x[0] = i_add6_gettanh26_ma3_cma_w[0];
    assign i_add6_gettanh26_ma3_cma_y[0] = i_add6_gettanh26_ma3_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_ma3_cma_a0 <= '{default: '0};
            i_add6_gettanh26_ma3_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_add6_gettanh26_ma3_cma_ena0 == 1'b1)
            begin
                i_add6_gettanh26_ma3_cma_a0[0] <= SR_SE_i_add6_gettanh26_im0_cma_D5;
                i_add6_gettanh26_ma3_cma_a0[1] <= SR_SE_i_add6_gettanh26_im0_cma_D7;
                i_add6_gettanh26_ma3_cma_c0[0] <= SR_SE_i_add6_gettanh26_im0_cma_D3;
                i_add6_gettanh26_ma3_cma_c0[1] <= SR_SE_i_add6_gettanh26_im0_cma_D1;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_ma3_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_add6_gettanh26_ma3_cma_ena1 == 1'b1)
            begin
                i_add6_gettanh26_ma3_cma_s[0] <= i_add6_gettanh26_ma3_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(33), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_add6_gettanh26_ma3_cma_delay ( .xin(i_add6_gettanh26_ma3_cma_s[0]), .xout(i_add6_gettanh26_ma3_cma_qq), .ena(SE_i_add6_gettanh26_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_add6_gettanh26_ma3_cma_q = $unsigned(i_add6_gettanh26_ma3_cma_qq[32:0]);

    // bubble_join_i_add6_gettanh26_ma3_cma(BITJOIN,563)
    assign bubble_join_i_add6_gettanh26_ma3_cma_q = i_add6_gettanh26_ma3_cma_q;

    // i_add6_gettanh26_im8_cma(CHAINMULTADD,251)@196 + 2
    assign i_add6_gettanh26_im8_cma_reset = ~ (resetn);
    assign i_add6_gettanh26_im8_cma_ena0 = SE_i_add6_gettanh26_im0_cma_backEN[0];
    assign i_add6_gettanh26_im8_cma_ena1 = i_add6_gettanh26_im8_cma_ena0;
    assign i_add6_gettanh26_im8_cma_p[0] = i_add6_gettanh26_im8_cma_a0[0] * i_add6_gettanh26_im8_cma_c0[0];
    assign i_add6_gettanh26_im8_cma_u[0] = i_add6_gettanh26_im8_cma_p[0][27:0];
    assign i_add6_gettanh26_im8_cma_w[0] = i_add6_gettanh26_im8_cma_u[0];
    assign i_add6_gettanh26_im8_cma_x[0] = i_add6_gettanh26_im8_cma_w[0];
    assign i_add6_gettanh26_im8_cma_y[0] = i_add6_gettanh26_im8_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_im8_cma_a0 <= '{default: '0};
            i_add6_gettanh26_im8_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_add6_gettanh26_im8_cma_ena0 == 1'b1)
            begin
                i_add6_gettanh26_im8_cma_a0[0] <= SR_SE_i_add6_gettanh26_im0_cma_D4;
                i_add6_gettanh26_im8_cma_c0[0] <= SR_SE_i_add6_gettanh26_im0_cma_D6;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_im8_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_add6_gettanh26_im8_cma_ena1 == 1'b1)
            begin
                i_add6_gettanh26_im8_cma_s[0] <= i_add6_gettanh26_im8_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(28), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_add6_gettanh26_im8_cma_delay ( .xin(i_add6_gettanh26_im8_cma_s[0]), .xout(i_add6_gettanh26_im8_cma_qq), .ena(SE_i_add6_gettanh26_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_add6_gettanh26_im8_cma_q = $unsigned(i_add6_gettanh26_im8_cma_qq[27:0]);

    // bubble_join_i_add6_gettanh26_im8_cma(BITJOIN,548)
    assign bubble_join_i_add6_gettanh26_im8_cma_q = i_add6_gettanh26_im8_cma_q;

    // bubble_select_i_add6_gettanh26_im8_cma(BITSELECT,549)
    assign bubble_select_i_add6_gettanh26_im8_cma_b = $unsigned(bubble_out_i_add6_gettanh26_im8_cma_data_reg_data_out[27:0]);

    // bubble_select_i_add6_gettanh26_im0_cma(BITSELECT,546)
    assign bubble_select_i_add6_gettanh26_im0_cma_b = $unsigned(bubble_out_i_add6_gettanh26_im0_cma_data_reg_data_out[35:0]);

    // SE_out_bubble_out_i_add6_gettanh26_im0_cma_data(STALLENABLE,864)
    // Valid signal propagation
    assign SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_V0 = SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_backStall = SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_wireValid = bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_out;

    // SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0(STALLREG,967)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_data0 <= 36'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid <= SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backStall & (SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid | SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_i_valid);

            if (SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_add6_gettanh26_im0_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_i_valid = SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backStall = SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid | ~ (SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_V = SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid : SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_i_valid;

    assign SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_D0 = SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_r_data0 : bubble_select_i_add6_gettanh26_im0_cma_b;

    // SE_redist22_i_add6_gettanh26_im0_cma_q_1_0(STALLENABLE,748)
    // Valid signal propagation
    assign SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_V0 = SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_s_tv_0 = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backEN = ~ (SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_v_s_0 = SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backEN & SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backStall = ~ (SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_R_v_0 <= SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_R_v_0 & SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_R_v_0 <= SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(STALLENABLE,710)
    // Valid signal propagation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall = SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backStall | ~ (SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0 = SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V0;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_wireValid = SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_V0 & SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_and0;

    // SE_redist21_i_add6_gettanh26_im8_cma_q_1_0(STALLENABLE,747)
    // Valid signal propagation
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V0 = SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_0;
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V1 = SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_1;
    // Stall signal propagation
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_0 = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_backStall & SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_0;
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_1 = SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall & SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_1;
    // Backward Enable generation
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_or0 = SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_0;
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backEN = ~ (SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_1 | SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_v_s_0 = SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backEN & SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V;
    // Backward Stall generation
    assign SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backStall = ~ (SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_0 <= 1'b0;
            SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_0 <= SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_0 & SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_0 <= SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_v_s_0;
            end

            if (SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backEN == 1'b0)
            begin
                SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_1 <= SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_1 & SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_s_tv_1;
            end
            else
            begin
                SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_R_v_1 <= SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0(STALLREG,966)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_data0 <= 28'bxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid <= SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backStall & (SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid | SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_i_valid);

            if (SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_add6_gettanh26_im8_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_i_valid = SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backStall = SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid | ~ (SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V = SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid : SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_i_valid;

    assign SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_D0 = SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_r_data0 : bubble_select_i_add6_gettanh26_im8_cma_b;

    // SE_out_bubble_out_i_add6_gettanh26_im8_cma_data(STALLENABLE,868)
    // Valid signal propagation
    assign SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_V0 = SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_backStall = SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_wireValid = bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_out;

    // bubble_out_i_add6_gettanh26_im8_cma_data_reg(STALLFIFO,938)
    assign bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_in = SE_i_add6_gettanh26_im0_cma_V1;
    assign bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_in = SE_out_bubble_out_i_add6_gettanh26_im8_cma_data_backStall;
    assign bubble_out_i_add6_gettanh26_im8_cma_data_reg_data_in = bubble_join_i_add6_gettanh26_im8_cma_q;
    assign bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_in[0];
    assign bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_in[0];
    assign bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_out[0] = bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_out[0] = bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(28),
        .IMPL("zl_reg")
    ) thebubble_out_i_add6_gettanh26_im8_cma_data_reg (
        .valid_in(bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_add6_gettanh26_im8_cma_q),
        .valid_out(bubble_out_i_add6_gettanh26_im8_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_add6_gettanh26_im8_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_add6_gettanh26_im0_cma(CHAINMULTADD,250)@196 + 2
    assign i_add6_gettanh26_im0_cma_reset = ~ (resetn);
    assign i_add6_gettanh26_im0_cma_ena0 = SE_i_add6_gettanh26_im0_cma_backEN[0];
    assign i_add6_gettanh26_im0_cma_ena1 = i_add6_gettanh26_im0_cma_ena0;
    assign i_add6_gettanh26_im0_cma_p[0] = i_add6_gettanh26_im0_cma_a0[0] * i_add6_gettanh26_im0_cma_c0[0];
    assign i_add6_gettanh26_im0_cma_u[0] = i_add6_gettanh26_im0_cma_p[0][35:0];
    assign i_add6_gettanh26_im0_cma_w[0] = i_add6_gettanh26_im0_cma_u[0];
    assign i_add6_gettanh26_im0_cma_x[0] = i_add6_gettanh26_im0_cma_w[0];
    assign i_add6_gettanh26_im0_cma_y[0] = i_add6_gettanh26_im0_cma_x[0];
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_im0_cma_a0 <= '{default: '0};
            i_add6_gettanh26_im0_cma_c0 <= '{default: '0};
        end
        else
        begin
            if (i_add6_gettanh26_im0_cma_ena0 == 1'b1)
            begin
                i_add6_gettanh26_im0_cma_a0[0] <= SR_SE_i_add6_gettanh26_im0_cma_D0;
                i_add6_gettanh26_im0_cma_c0[0] <= SR_SE_i_add6_gettanh26_im0_cma_D2;
            end
        end
    end
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_im0_cma_s <= '{default: '0};
        end
        else
        begin
            if (i_add6_gettanh26_im0_cma_ena1 == 1'b1)
            begin
                i_add6_gettanh26_im0_cma_s[0] <= i_add6_gettanh26_im0_cma_y[0];
            end
        end
    end
    dspba_delay_ver #( .width(36), .depth(0), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_add6_gettanh26_im0_cma_delay ( .xin(i_add6_gettanh26_im0_cma_s[0]), .xout(i_add6_gettanh26_im0_cma_qq), .ena(SE_i_add6_gettanh26_im0_cma_backEN[0]), .clk(clock), .aclr(resetn) );
    assign i_add6_gettanh26_im0_cma_q = $unsigned(i_add6_gettanh26_im0_cma_qq[35:0]);

    // bubble_join_i_add6_gettanh26_im0_cma(BITJOIN,545)
    assign bubble_join_i_add6_gettanh26_im0_cma_q = i_add6_gettanh26_im0_cma_q;

    // bubble_out_i_add6_gettanh26_im0_cma_data_reg(STALLFIFO,937)
    assign bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_in = SE_i_add6_gettanh26_im0_cma_V0;
    assign bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_in = SE_out_bubble_out_i_add6_gettanh26_im0_cma_data_backStall;
    assign bubble_out_i_add6_gettanh26_im0_cma_data_reg_data_in = bubble_join_i_add6_gettanh26_im0_cma_q;
    assign bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_in[0];
    assign bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_in[0];
    assign bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_out[0] = bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_out[0] = bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(36),
        .IMPL("zl_reg")
    ) thebubble_out_i_add6_gettanh26_im0_cma_data_reg (
        .valid_in(bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_add6_gettanh26_im0_cma_q),
        .valid_out(bubble_out_i_add6_gettanh26_im0_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_add6_gettanh26_im0_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_add6_gettanh26_im0_cma(STALLENABLE,679)
    // Valid signal propagation
    assign SE_i_add6_gettanh26_im0_cma_V0 = SE_i_add6_gettanh26_im0_cma_R_v_0;
    assign SE_i_add6_gettanh26_im0_cma_V1 = SE_i_add6_gettanh26_im0_cma_R_v_1;
    assign SE_i_add6_gettanh26_im0_cma_V2 = SE_i_add6_gettanh26_im0_cma_R_v_2;
    // Stall signal propagation
    assign SE_i_add6_gettanh26_im0_cma_s_tv_0 = bubble_out_i_add6_gettanh26_im0_cma_data_reg_stall_out & SE_i_add6_gettanh26_im0_cma_R_v_0;
    assign SE_i_add6_gettanh26_im0_cma_s_tv_1 = bubble_out_i_add6_gettanh26_im8_cma_data_reg_stall_out & SE_i_add6_gettanh26_im0_cma_R_v_1;
    assign SE_i_add6_gettanh26_im0_cma_s_tv_2 = bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_out & SE_i_add6_gettanh26_im0_cma_R_v_2;
    // Backward Enable generation
    assign SE_i_add6_gettanh26_im0_cma_or0 = SE_i_add6_gettanh26_im0_cma_s_tv_0;
    assign SE_i_add6_gettanh26_im0_cma_or1 = SE_i_add6_gettanh26_im0_cma_s_tv_1 | SE_i_add6_gettanh26_im0_cma_or0;
    assign SE_i_add6_gettanh26_im0_cma_backEN = ~ (SE_i_add6_gettanh26_im0_cma_s_tv_2 | SE_i_add6_gettanh26_im0_cma_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_i_add6_gettanh26_im0_cma_v_s_0 = SE_i_add6_gettanh26_im0_cma_backEN & SR_SE_i_add6_gettanh26_im0_cma_V;
    // Backward Stall generation
    assign SE_i_add6_gettanh26_im0_cma_backStall = ~ (SE_i_add6_gettanh26_im0_cma_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add6_gettanh26_im0_cma_R_s_0 <= 1'b0;
            SE_i_add6_gettanh26_im0_cma_R_v_0 <= 1'b0;
            SE_i_add6_gettanh26_im0_cma_R_v_1 <= 1'b0;
            SE_i_add6_gettanh26_im0_cma_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_i_add6_gettanh26_im0_cma_backEN == 1'b1)
            begin
                SE_i_add6_gettanh26_im0_cma_R_s_0 <= SE_i_add6_gettanh26_im0_cma_v_s_0;
            end

            if (SE_i_add6_gettanh26_im0_cma_backEN == 1'b0)
            begin
                SE_i_add6_gettanh26_im0_cma_R_v_0 <= SE_i_add6_gettanh26_im0_cma_R_v_0 & SE_i_add6_gettanh26_im0_cma_s_tv_0;
            end
            else
            begin
                SE_i_add6_gettanh26_im0_cma_R_v_0 <= SE_i_add6_gettanh26_im0_cma_R_s_0;
            end

            if (SE_i_add6_gettanh26_im0_cma_backEN == 1'b0)
            begin
                SE_i_add6_gettanh26_im0_cma_R_v_1 <= SE_i_add6_gettanh26_im0_cma_R_v_1 & SE_i_add6_gettanh26_im0_cma_s_tv_1;
            end
            else
            begin
                SE_i_add6_gettanh26_im0_cma_R_v_1 <= SE_i_add6_gettanh26_im0_cma_R_s_0;
            end

            if (SE_i_add6_gettanh26_im0_cma_backEN == 1'b0)
            begin
                SE_i_add6_gettanh26_im0_cma_R_v_2 <= SE_i_add6_gettanh26_im0_cma_R_v_2 & SE_i_add6_gettanh26_im0_cma_s_tv_2;
            end
            else
            begin
                SE_i_add6_gettanh26_im0_cma_R_v_2 <= SE_i_add6_gettanh26_im0_cma_R_s_0;
            end

        end
    end

    // bubble_out_i_add6_gettanh26_ma3_cma_data_reg(STALLFIFO,943)
    assign bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_in = SE_i_add6_gettanh26_im0_cma_V2;
    assign bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_in = SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_backStall;
    assign bubble_out_i_add6_gettanh26_ma3_cma_data_reg_data_in = bubble_join_i_add6_gettanh26_ma3_cma_q;
    assign bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_in_bitsignaltemp = bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_in[0];
    assign bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_in_bitsignaltemp = bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_in[0];
    assign bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_out[0] = bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_out[0] = bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(1),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(1),
        .DATA_WIDTH(33),
        .IMPL("zl_reg")
    ) thebubble_out_i_add6_gettanh26_ma3_cma_data_reg (
        .valid_in(bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_in_bitsignaltemp),
        .data_in(bubble_join_i_add6_gettanh26_ma3_cma_q),
        .valid_out(bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_add6_gettanh26_ma3_cma_data_reg_stall_out_bitsignaltemp),
        .data_out(bubble_out_i_add6_gettanh26_ma3_cma_data_reg_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_select_i_add6_gettanh26_ma3_cma(BITSELECT,564)
    assign bubble_select_i_add6_gettanh26_ma3_cma_b = $unsigned(bubble_out_i_add6_gettanh26_ma3_cma_data_reg_data_out[32:0]);

    // SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data(STALLENABLE,888)
    // Valid signal propagation
    assign SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_V0 = SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_backStall = SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backStall | ~ (SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_wireValid = bubble_out_i_add6_gettanh26_ma3_cma_data_reg_valid_out;

    // SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0(STALLREG,968)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid <= 1'b0;
            SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_data0 <= 33'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid <= SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backStall & (SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid | SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_i_valid);

            if (SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_data0 <= $unsigned(bubble_select_i_add6_gettanh26_ma3_cma_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_i_valid = SE_out_bubble_out_i_add6_gettanh26_ma3_cma_data_V0;
    // Stall signal propagation
    assign SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backStall = SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid | ~ (SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_V = SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid : SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_i_valid;

    assign SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_D0 = SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_valid == 1'b1 ? SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_r_data0 : bubble_select_i_add6_gettanh26_ma3_cma_b;

    // redist16_i_add6_gettanh26_ma3_cma_q_1_0(REG,452)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_add6_gettanh26_ma3_cma_q_1_0_q <= $unsigned(33'b000000000000000000000000000000000);
        end
        else if (SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_backEN == 1'b1)
        begin
            redist16_i_add6_gettanh26_ma3_cma_q_1_0_q <= $unsigned(SR_SE_redist16_i_add6_gettanh26_ma3_cma_q_1_0_D0);
        end
    end

    // i_add6_gettanh26_sums_align_1(BITSHIFT,215)@199
    assign i_add6_gettanh26_sums_align_1_qint = { redist16_i_add6_gettanh26_ma3_cma_q_1_0_q, 18'b000000000000000000 };
    assign i_add6_gettanh26_sums_align_1_q = i_add6_gettanh26_sums_align_1_qint[50:0];

    // i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b(BITJOIN,364)@199
    assign i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q = {i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b, i_add6_gettanh26_sums_align_1_q};

    // redist21_i_add6_gettanh26_im8_cma_q_1_0(REG,457)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_i_add6_gettanh26_im8_cma_q_1_0_q <= $unsigned(28'b0000000000000000000000000000);
        end
        else if (SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_backEN == 1'b1)
        begin
            redist21_i_add6_gettanh26_im8_cma_q_1_0_q <= $unsigned(SR_SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_D0);
        end
    end

    // i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select(BITSELECT,394)@199
    assign i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b = $unsigned(redist21_i_add6_gettanh26_im8_cma_q_1_0_q[23:0]);
    assign i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c = $unsigned(redist21_i_add6_gettanh26_im8_cma_q_1_0_q[27:24]);

    // redist22_i_add6_gettanh26_im0_cma_q_1_0(REG,458)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_add6_gettanh26_im0_cma_q_1_0_q <= $unsigned(36'b000000000000000000000000000000000000);
        end
        else if (SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_backEN == 1'b1)
        begin
            redist22_i_add6_gettanh26_im0_cma_q_1_0_q <= $unsigned(SR_SE_redist22_i_add6_gettanh26_im0_cma_q_1_0_D0);
        end
    end

    // i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b(BITJOIN,358)@199
    assign i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q = {i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_b, redist22_i_add6_gettanh26_im0_cma_q_1_0_q};

    // i_add6_gettanh26_sums_result_add_0_0_p1_of_2(ADD,283)@199 + 1
    assign i_add6_gettanh26_sums_result_add_0_0_p1_of_2_a = {1'b0, i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_q};
    assign i_add6_gettanh26_sums_result_add_0_0_p1_of_2_b = {1'b0, i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_sums_result_add_0_0_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backEN == 1'b1)
        begin
            i_add6_gettanh26_sums_result_add_0_0_p1_of_2_o <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_p1_of_2_a) + $unsigned(i_add6_gettanh26_sums_result_add_0_0_p1_of_2_b);
        end
    end
    assign i_add6_gettanh26_sums_result_add_0_0_p1_of_2_c[0] = i_add6_gettanh26_sums_result_add_0_0_p1_of_2_o[60];
    assign i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q = i_add6_gettanh26_sums_result_add_0_0_p1_of_2_o[59:0];

    // i_add6_gettanh26_sums_result_add_0_0_UpperBits_for_b(CONSTANT,280)
    assign i_add6_gettanh26_sums_result_add_0_0_UpperBits_for_b_q = $unsigned(14'b00000000000000);

    // i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(BITSELECT,397)
    assign i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_b = $unsigned(i_add6_gettanh26_sums_result_add_0_0_UpperBits_for_b_q[8:0]);
    assign i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c = $unsigned(i_add6_gettanh26_sums_result_add_0_0_UpperBits_for_b_q[13:9]);

    // redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c);
        end
    end

    // i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c(BITJOIN,361)@200
    assign i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_q};

    // SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select(STALLENABLE,727)
    // Valid signal propagation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 = 1'b1;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V1 = 1'b1;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V2 = 1'b1;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V3 = 1'b1;

    // SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0(STALLENABLE,731)
    // Valid signal propagation
    assign SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 = SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0 = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backStall & SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN = ~ (SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0 = SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN & SE_redist21_i_add6_gettanh26_im8_cma_q_1_0_V1;
    // Backward Stall generation
    assign SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backStall = ~ (SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 & SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_R_v_0 <= SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0(STALLENABLE,737)
    // Valid signal propagation
    assign SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_V0 = SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_backStall & SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backEN = ~ (SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0 = SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backEN & SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backStall = ~ (SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 & SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_R_v_0 <= SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0(STALLREG,970)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid <= SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backStall & (SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_i_valid = SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backStall = SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_V = SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid : SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_D0 = SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_r_data0 : i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q;

    // SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2(STALLENABLE,694)
    // Valid signal propagation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_V0 = SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_V1 = SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_0 = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backStall & SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_0;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_1 = SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backStall & SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_or0 = SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_0;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backEN = ~ (SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_1 | SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_and0 = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_b_V0 & SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backEN;
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_v_s_0 = SE_i_add6_gettanh26_sums_align_1_V0 & SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backStall = ~ (SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_0 <= 1'b0;
            SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_0 & SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_0 <= SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_v_s_0;
            end

            if (SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_backEN == 1'b0)
            begin
                SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_1 & SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_R_v_1 <= SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2(STALLREG,969)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid <= SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backStall & (SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid | SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_i_valid);

            if (SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data0 <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data1 <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c);
                SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data2 <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_and0 = SE_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_V0;
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_and1 = SE_redist2_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_tessel0_1_merged_bit_select_c_1_0_V0 & SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_and0;
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_i_valid = SE_i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_V0 & SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backStall = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid | ~ (SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_V = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid : SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D0 = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data0 : i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D1 = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data1 : i_add6_gettanh26_sums_result_add_0_0_BitSelect_for_b_tessel0_1_merged_bit_select_c;
    // Data2
    assign SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D2 = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_valid == 1'b1 ? SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_r_data2 : i_add6_gettanh26_sums_result_add_0_0_p1_of_2_c;

    // i_add6_gettanh26_sums_result_add_0_0_p2_of_2(ADD,284)@200 + 1
    assign i_add6_gettanh26_sums_result_add_0_0_p2_of_2_cin = SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D2;
    assign i_add6_gettanh26_sums_result_add_0_0_p2_of_2_a = { {1'b0, SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D0}, 1'b1 };
    assign i_add6_gettanh26_sums_result_add_0_0_p2_of_2_b = { {1'b0, SR_SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_D1}, i_add6_gettanh26_sums_result_add_0_0_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add6_gettanh26_sums_result_add_0_0_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_backEN == 1'b1)
        begin
            i_add6_gettanh26_sums_result_add_0_0_p2_of_2_o <= $unsigned(i_add6_gettanh26_sums_result_add_0_0_p2_of_2_a) + $unsigned(i_add6_gettanh26_sums_result_add_0_0_p2_of_2_b);
        end
    end
    assign i_add6_gettanh26_sums_result_add_0_0_p2_of_2_q = i_add6_gettanh26_sums_result_add_0_0_p2_of_2_o[5:1];

    // redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0(REG,447)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_D0);
        end
    end

    // i_add6_gettanh26_sums_result_add_0_0_BitJoin_for_q(BITJOIN,285)@201
    assign i_add6_gettanh26_sums_result_add_0_0_BitJoin_for_q_q = {i_add6_gettanh26_sums_result_add_0_0_p2_of_2_q, redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_q};

    // bgTrunc_i_add6_gettanh26_sel_x(BITSELECT,2)@201
    assign bgTrunc_i_add6_gettanh26_sel_x_in = i_add6_gettanh26_sums_result_add_0_0_BitJoin_for_q_q[63:0];
    assign bgTrunc_i_add6_gettanh26_sel_x_b = bgTrunc_i_add6_gettanh26_sel_x_in[31:0];

    // c_i32_149_recast_x(CONSTANT,10)
    assign c_i32_149_recast_x_q = $unsigned(32'b00000000000000000000000000000001);

    // bubble_join_redist33_i_cmp2_gettanh20_c_17_fifo(BITJOIN,587)
    assign bubble_join_redist33_i_cmp2_gettanh20_c_17_fifo_q = redist33_i_cmp2_gettanh20_c_17_fifo_data_out;

    // bubble_select_redist33_i_cmp2_gettanh20_c_17_fifo(BITSELECT,588)
    assign bubble_select_redist33_i_cmp2_gettanh20_c_17_fifo_b = $unsigned(bubble_join_redist33_i_cmp2_gettanh20_c_17_fifo_q[0:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_acl_gettanh27(MUX,66)@201
    assign i_acl_gettanh27_s = bubble_select_redist33_i_cmp2_gettanh20_c_17_fifo_b;
    always @(i_acl_gettanh27_s or c_i32_149_recast_x_q or bgTrunc_i_add6_gettanh26_sel_x_b)
    begin
        unique case (i_acl_gettanh27_s)
            1'b0 : i_acl_gettanh27_q = c_i32_149_recast_x_q;
            1'b1 : i_acl_gettanh27_q = bgTrunc_i_add6_gettanh26_sel_x_b;
            default : i_acl_gettanh27_q = 32'b0;
        endcase
    end

    // redist32_i_first_cleanup_xor_gettanh2_q_83_fifo(STALLFIFO,489)
    assign redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_in = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_V1;
    assign redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_in = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_backStall;
    assign redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_data_in = bubble_select_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_b;
    assign redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_in_bitsignaltemp = redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_in[0];
    assign redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_in_bitsignaltemp = redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_in[0];
    assign redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_out[0] = redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_out_bitsignaltemp;
    assign redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_out[0] = redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(50),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist32_i_first_cleanup_xor_gettanh2_q_83_fifo (
        .valid_in(redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_in_bitsignaltemp),
        .stall_in(redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_b),
        .valid_out(redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_out_bitsignaltemp),
        .stall_out(redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_out_bitsignaltemp),
        .data_out(redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo(BITJOIN,584)
    assign bubble_join_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_q = redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_data_out;

    // bubble_select_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo(BITSELECT,585)
    assign bubble_select_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_b = $unsigned(bubble_join_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_q[0:0]);

    // bubble_join_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo(BITJOIN,590)
    assign bubble_join_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_q = redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_data_out;

    // bubble_select_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo(BITSELECT,591)
    assign bubble_select_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_b = $unsigned(bubble_join_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_q[63:0]);

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5(STALLENABLE,641)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed1 = (~ (SR_SE_i_next_initerations_gettanh6_vt_select_2_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_wireValid = i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_gettanh9(STALLENABLE,645)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_gettanh9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_gettanh9_wireValid = i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_gettanh9(BLACKBOX,95)@118
    // in in_stall_in@20000000
    // out out_data_out@119
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@119
    getTanh_i_llvm_fpga_push_i1_lastiniteration_gettanh0 thei_llvm_fpga_push_i1_lastiniteration_gettanh9 (
        .in_data_in(SR_SE_i_next_initerations_gettanh6_vt_select_2_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_gettanh4_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_gettanh6_vt_select_2_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_gettanh9_backStall),
        .in_valid_in(SE_i_next_initerations_gettanh6_vt_select_2_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_i_next_initerations_gettanh6_vt_select_2(STALLENABLE,662)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_gettanh6_vt_select_2_fromReg0 <= '0;
            SE_i_next_initerations_gettanh6_vt_select_2_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_gettanh6_vt_select_2_fromReg0 <= SE_i_next_initerations_gettanh6_vt_select_2_toReg0;
            // Successor 1
            SE_i_next_initerations_gettanh6_vt_select_2_fromReg1 <= SE_i_next_initerations_gettanh6_vt_select_2_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_gettanh6_vt_select_2_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_stall_out) & SE_i_next_initerations_gettanh6_vt_select_2_wireValid) | SE_i_next_initerations_gettanh6_vt_select_2_fromReg0;
    assign SE_i_next_initerations_gettanh6_vt_select_2_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_stall_out) & SE_i_next_initerations_gettanh6_vt_select_2_wireValid) | SE_i_next_initerations_gettanh6_vt_select_2_fromReg1;
    // Consuming
    assign SE_i_next_initerations_gettanh6_vt_select_2_StallValid = SE_i_next_initerations_gettanh6_vt_select_2_backStall & SE_i_next_initerations_gettanh6_vt_select_2_wireValid;
    assign SE_i_next_initerations_gettanh6_vt_select_2_toReg0 = SE_i_next_initerations_gettanh6_vt_select_2_StallValid & SE_i_next_initerations_gettanh6_vt_select_2_consumed0;
    assign SE_i_next_initerations_gettanh6_vt_select_2_toReg1 = SE_i_next_initerations_gettanh6_vt_select_2_StallValid & SE_i_next_initerations_gettanh6_vt_select_2_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_gettanh6_vt_select_2_or0 = SE_i_next_initerations_gettanh6_vt_select_2_consumed0;
    assign SE_i_next_initerations_gettanh6_vt_select_2_wireStall = ~ (SE_i_next_initerations_gettanh6_vt_select_2_consumed1 & SE_i_next_initerations_gettanh6_vt_select_2_or0);
    assign SE_i_next_initerations_gettanh6_vt_select_2_backStall = SE_i_next_initerations_gettanh6_vt_select_2_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_gettanh6_vt_select_2_V0 = SE_i_next_initerations_gettanh6_vt_select_2_wireValid & ~ (SE_i_next_initerations_gettanh6_vt_select_2_fromReg0);
    assign SE_i_next_initerations_gettanh6_vt_select_2_V1 = SE_i_next_initerations_gettanh6_vt_select_2_wireValid & ~ (SE_i_next_initerations_gettanh6_vt_select_2_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_gettanh6_vt_select_2_wireValid = SR_SE_i_next_initerations_gettanh6_vt_select_2_V;

    // SE_out_i_llvm_fpga_push_i4_initerations_push9_gettanh7(STALLENABLE,655)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_gettanh7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push9_gettanh7_wireValid = i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_valid_out;

    // i_llvm_fpga_push_i4_initerations_push9_gettanh7(BLACKBOX,100)@118
    // in in_stall_in@20000000
    // out out_data_out@119
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@119
    getTanh_i_llvm_fpga_push_i4_initerations_push9_gettanh0 thei_llvm_fpga_push_i4_initerations_push9_gettanh7 (
        .in_data_in(SR_SE_i_next_initerations_gettanh6_vt_select_2_D3),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_feedback_stall_out_9),
        .in_keep_going(SR_SE_i_next_initerations_gettanh6_vt_select_2_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push9_gettanh7_backStall),
        .in_valid_in(SE_i_next_initerations_gettanh6_vt_select_2_V1),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_feedback_valid_out_9),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_gettanh5(BLACKBOX,93)@117
    // in in_stall_in@20000000
    // out out_data_out@118
    // out out_feedback_stall_out_9@20000000
    // out out_stall_out@20000000
    // out out_valid_out@118
    getTanh_i_llvm_fpga_pop_i4_initerations_pop9_gettanh0 thei_llvm_fpga_pop_i4_initerations_pop9_gettanh5 (
        .in_data_in(c_i4_744_q),
        .in_dir(redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_gettanh7_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_backStall),
        .in_valid_in(SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V3),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_feedback_stall_out_9),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_notexitcond_gettanh36(STALLENABLE,649)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid = i_llvm_fpga_push_i1_notexitcond_gettanh36_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32(BITJOIN,524)
    assign bubble_join_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_q = i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32(BITSELECT,525)
    assign bubble_select_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_b = $unsigned(bubble_join_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_q[10:0]);

    // i_exitcond_gettanh33_cmp_nsign(LOGICAL,219)@118
    assign i_exitcond_gettanh33_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_b[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_gettanh36(BLACKBOX,97)@118
    // in in_stall_in@20000000
    // out out_data_out@119
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@119
    getTanh_i_llvm_fpga_push_i1_notexitcond_gettanh0 thei_llvm_fpga_push_i1_notexitcond_gettanh36 (
        .in_data_in(i_exitcond_gettanh33_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_gettanh4_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_gettanh1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_V0),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_gettanh36_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_gettanh36_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_gettanh36_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_gettanh36_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36(STALLENABLE,648)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond_gettanh36_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed1 = (~ (SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_wireValid = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_and0;

    // SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32(STALLENABLE,633)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg0 <= SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg1 <= SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg2 <= SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg3 <= SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid) | SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall) & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid) | SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed2 = (~ (SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_backStall) & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid) | SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed3 = (~ (SE_i_masked_gettanh43_backStall) & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid) | SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_StallValid = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_backStall & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg0 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_StallValid & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg1 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_StallValid & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed1;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg2 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_StallValid & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed2;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_toReg3 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_StallValid & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or0 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed0;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or1 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed1 & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or0;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or2 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed2 & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or1;
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireStall = ~ (SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_consumed3 & SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_or2);
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_backStall = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V0 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V1 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V2 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V3 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid & ~ (SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_wireValid = i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_valid_out;

    // SE_out_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41(STALLENABLE,643)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_wireValid = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_valid_out;

    // c_i11_154(CONSTANT,52)
    assign c_i11_154_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_gettanh40(ADD,79)@118
    assign i_fpga_indvars_iv_next_gettanh40_a = {1'b0, bubble_select_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_b};
    assign i_fpga_indvars_iv_next_gettanh40_b = {1'b0, c_i11_154_q};
    assign i_fpga_indvars_iv_next_gettanh40_o = $unsigned(i_fpga_indvars_iv_next_gettanh40_a) + $unsigned(i_fpga_indvars_iv_next_gettanh40_b);
    assign i_fpga_indvars_iv_next_gettanh40_q = i_fpga_indvars_iv_next_gettanh40_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_gettanh40_sel_x(BITSELECT,4)@118
    assign bgTrunc_i_fpga_indvars_iv_next_gettanh40_sel_x_b = i_fpga_indvars_iv_next_gettanh40_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41(BLACKBOX,94)@118
    // in in_stall_in@20000000
    // out out_data_out@119
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@119
    getTanh_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_gettanh40_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_feedback_stall_out_6),
        .in_keep_going(redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_V0),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_feedback_valid_out_6),
        .out_stall_out(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_99852(CONSTANT,53)
    assign c_i11_99852_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32(BLACKBOX,89)@117
    // in in_stall_in@20000000
    // out out_data_out@118
    // out out_feedback_stall_out_6@20000000
    // out out_stall_out@20000000
    // out out_valid_out@118
    getTanh_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32 (
        .in_data_in(c_i11_99852_q),
        .in_dir(redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_backStall),
        .in_valid_in(SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V0),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_feedback_stall_out_6),
        .out_stall_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0(REG,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backEN == 1'b1)
        begin
            redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_q <= $unsigned(bubble_select_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_b);
        end
    end

    // SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1(STALLREG,946)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid <= 1'b0;
            SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backStall & (SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid | SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_i_valid);

            if (SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_data0 <= $unsigned(redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_i_valid = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_V0;
    // Stall signal propagation
    assign SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backStall = SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid | ~ (SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_i_valid);

    // Valid
    assign SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V = SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid == 1'b1 ? SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid : SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_i_valid;

    assign SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_D0 = SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_valid == 1'b1 ? SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_r_data0 : redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_q;

    // SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1(STALLENABLE,793)
    // Valid signal propagation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V0 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_0;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V1 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_1;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V2 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_2;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V3 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_3;
    // Stall signal propagation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_0 = i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_out_stall_out & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_0;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_1 = i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_stall_out & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_1;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_2 = i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_stall_out & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_2;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_3 = i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_stall_out & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_3;
    // Backward Enable generation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or0 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_0;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or1 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_1 | SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or0;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or2 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_2 | SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or1;
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN = ~ (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_3 | SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_v_s_0 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN & SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V;
    // Backward Stall generation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backStall = ~ (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_0 <= 1'b0;
            SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_1 <= 1'b0;
            SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_2 <= 1'b0;
            SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN == 1'b0)
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_0 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_0 & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_0;
            end
            else
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_0 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_v_s_0;
            end

            if (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN == 1'b0)
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_1 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_1 & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_1;
            end
            else
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_1 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_v_s_0;
            end

            if (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN == 1'b0)
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_2 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_2 & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_2;
            end
            else
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_2 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_v_s_0;
            end

            if (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN == 1'b0)
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_3 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_3 & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_s_tv_3;
            end
            else
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_R_v_3 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i4_cleanups_push10_gettanh39(STALLENABLE,653)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_wireValid = i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_gettanh0_shift_x(BITSELECT,190)@118
    assign leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_gettanh0_shift_x_in = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b[2:0];
    assign leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_gettanh0_shift_x_b = leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_gettanh0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid192_i_cleanups_shl_gettanh0_shift_x(BITJOIN,191)@118
    assign leftShiftStage0Idx1_uid192_i_cleanups_shl_gettanh0_shift_x_q = {leftShiftStage0Idx1Rng1_uid191_i_cleanups_shl_gettanh0_shift_x_b, GND_q};

    // leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x(MUX,193)@118
    assign leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b or leftShiftStage0Idx1_uid192_i_cleanups_shl_gettanh0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_s)
            1'b0 : leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b;
            1'b1 : leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_q = leftShiftStage0Idx1_uid192_i_cleanups_shl_gettanh0_shift_x_q;
            default : leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_gettanh3_vt_select_3(BITSELECT,74)@118
    assign i_cleanups_shl_gettanh3_vt_select_3_b = leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_q[3:1];

    // i_cleanups_shl_gettanh3_vt_join(BITJOIN,73)@118
    assign i_cleanups_shl_gettanh3_vt_join_q = {i_cleanups_shl_gettanh3_vt_select_3_b, GND_q};

    // i_or_gettanh37(LOGICAL,113)@118
    assign i_or_gettanh37_q = i_notcmp_gettanh35_q | i_first_cleanup_xor_gettanh2_q;

    // i_next_cleanups_gettanh38(MUX,108)@118
    assign i_next_cleanups_gettanh38_s = i_or_gettanh37_q;
    always @(i_next_cleanups_gettanh38_s or bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b or i_cleanups_shl_gettanh3_vt_join_q)
    begin
        unique case (i_next_cleanups_gettanh38_s)
            1'b0 : i_next_cleanups_gettanh38_q = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b;
            1'b1 : i_next_cleanups_gettanh38_q = i_cleanups_shl_gettanh3_vt_join_q;
            default : i_next_cleanups_gettanh38_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_gettanh39(BLACKBOX,99)@118
    // in in_stall_in@20000000
    // out out_data_out@119
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@119
    getTanh_i_llvm_fpga_push_i4_cleanups_push10_gettanh0 thei_llvm_fpga_push_i4_cleanups_push10_gettanh39 (
        .in_data_in(i_next_cleanups_gettanh38_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_feedback_stall_out_10),
        .in_keep_going(redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_cleanups_push10_gettanh39_backStall),
        .in_valid_in(SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_feedback_valid_out_10),
        .out_stall_out(i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1(REG,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backEN == 1'b1)
        begin
            redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_q <= $unsigned(SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_D0);
        end
    end

    // c_i4_744(CONSTANT,61)
    assign c_i4_744_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0(BLACKBOX,92)@117
    // in in_stall_in@20000000
    // out out_data_out@118
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@118
    getTanh_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0 thei_llvm_fpga_pop_i4_cleanups_pop10_gettanh0 (
        .in_data_in(c_i4_744_q),
        .in_dir(redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_backStall),
        .in_valid_in(SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V2),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0(BITJOIN,534)
    assign bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_q = i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0(BITSELECT,535)
    assign bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_q[3:0]);

    // i_first_cleanup_gettanh1_sel_x(BITSELECT,23)@118
    assign i_first_cleanup_gettanh1_sel_x_b = bubble_select_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_b[0:0];

    // i_notcmp_gettanh35(LOGICAL,112)@118
    assign i_notcmp_gettanh35_q = i_exitcond_gettanh33_cmp_nsign_q ^ VCC_q;

    // SE_i_masked_gettanh43(STALLENABLE,656)
    // Valid signal propagation
    assign SE_i_masked_gettanh43_V0 = SE_i_masked_gettanh43_R_v_0;
    // Stall signal propagation
    assign SE_i_masked_gettanh43_s_tv_0 = SE_in_redist27_i_masked_gettanh43_q_114_fifo_backStall & SE_i_masked_gettanh43_R_v_0;
    // Backward Enable generation
    assign SE_i_masked_gettanh43_backEN = ~ (SE_i_masked_gettanh43_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked_gettanh43_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V2 & SE_i_masked_gettanh43_backEN;
    assign SE_i_masked_gettanh43_v_s_0 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V3 & SE_i_masked_gettanh43_and0;
    // Backward Stall generation
    assign SE_i_masked_gettanh43_backStall = ~ (SE_i_masked_gettanh43_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked_gettanh43_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked_gettanh43_backEN == 1'b0)
            begin
                SE_i_masked_gettanh43_R_v_0 <= SE_i_masked_gettanh43_R_v_0 & SE_i_masked_gettanh43_s_tv_0;
            end
            else
            begin
                SE_i_masked_gettanh43_R_v_0 <= SE_i_masked_gettanh43_v_s_0;
            end

        end
    end

    // i_masked_gettanh43(LOGICAL,101)@118 + 1
    assign i_masked_gettanh43_qi = i_notcmp_gettanh35_q & i_first_cleanup_gettanh1_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_gettanh43_delay ( .xin(i_masked_gettanh43_qi), .xout(i_masked_gettanh43_q), .ena(SE_i_masked_gettanh43_backEN[0]), .clk(clock), .aclr(resetn) );

    // SE_in_redist27_i_masked_gettanh43_q_114_fifo(STALLENABLE,773)
    // Valid signal propagation
    assign SE_in_redist27_i_masked_gettanh43_q_114_fifo_V0 = SE_in_redist27_i_masked_gettanh43_q_114_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist27_i_masked_gettanh43_q_114_fifo_backStall = redist27_i_masked_gettanh43_q_114_fifo_stall_out | ~ (SE_in_redist27_i_masked_gettanh43_q_114_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist27_i_masked_gettanh43_q_114_fifo_wireValid = SE_i_masked_gettanh43_V0;

    // redist27_i_masked_gettanh43_q_114_fifo(STALLFIFO,483)
    assign redist27_i_masked_gettanh43_q_114_fifo_valid_in = SE_in_redist27_i_masked_gettanh43_q_114_fifo_V0;
    assign redist27_i_masked_gettanh43_q_114_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall;
    assign redist27_i_masked_gettanh43_q_114_fifo_data_in = i_masked_gettanh43_q;
    assign redist27_i_masked_gettanh43_q_114_fifo_valid_in_bitsignaltemp = redist27_i_masked_gettanh43_q_114_fifo_valid_in[0];
    assign redist27_i_masked_gettanh43_q_114_fifo_stall_in_bitsignaltemp = redist27_i_masked_gettanh43_q_114_fifo_stall_in[0];
    assign redist27_i_masked_gettanh43_q_114_fifo_valid_out[0] = redist27_i_masked_gettanh43_q_114_fifo_valid_out_bitsignaltemp;
    assign redist27_i_masked_gettanh43_q_114_fifo_stall_out[0] = redist27_i_masked_gettanh43_q_114_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(114),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist27_i_masked_gettanh43_q_114_fifo (
        .valid_in(redist27_i_masked_gettanh43_q_114_fifo_valid_in_bitsignaltemp),
        .stall_in(redist27_i_masked_gettanh43_q_114_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked_gettanh43_q),
        .valid_out(redist27_i_masked_gettanh43_q_114_fifo_valid_out_bitsignaltemp),
        .stall_out(redist27_i_masked_gettanh43_q_114_fifo_stall_out_bitsignaltemp),
        .data_out(redist27_i_masked_gettanh43_q_114_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg(STALLFIFO,935)
    assign bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V0;
    assign bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(115),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg(STALLFIFO,936)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(115),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1(STALLENABLE,856)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and0 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and1 = bubble_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and2 = redist27_i_masked_gettanh43_q_114_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and3 = bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and4 = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_gettanh28_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_and4;

    // bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg(STALLFIFO,933)
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_in = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V0;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42(STALLENABLE,623)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V0 = SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall = bubble_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_1_reg_stall_out | ~ (SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid = i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_valid_out;

    // i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42(BLACKBOX,84)@201
    // in in_stall_in@20000000
    // out out_intel_reserved_ffwd_2_0@20000000
    // out out_stall_out@20000000
    getTanh_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh0 thei_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42 (
        .in_predicate_in(SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_D0),
        .in_src_data_in_2_0(SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_D1),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V0),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_intel_reserved_ffwd_2_0),
        .out_stall_out(i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42(STALLENABLE,622)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V0 = SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall = i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_stall_out | ~ (SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_wireValid = SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V;

    // SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42(STALLREG,971)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data1 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid <= SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall & (SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid | SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_i_valid);

            if (SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data0 <= $unsigned(bubble_select_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_b);
                SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data1 <= i_acl_gettanh27_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_and0 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_V0;
    assign SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_i_valid = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_V0 & SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall = SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid | ~ (SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_V = SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid : SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_D0 = SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data0 : bubble_select_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_D1 = SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_r_data1 : i_acl_gettanh27_q;

    // SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo(STALLENABLE,784)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg0 <= '0;
            SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg0 <= SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_toReg0;
            // Successor 1
            SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg1 <= SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall) & SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireValid) | SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg0;
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed1 = (~ (SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall) & SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireValid) | SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg1;
    // Consuming
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_StallValid = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_backStall & SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireValid;
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_toReg0 = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_StallValid & SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed0;
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_toReg1 = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_StallValid & SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_or0 = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed0;
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireStall = ~ (SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_consumed1 & SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_or0);
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_backStall = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_V0 = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireValid & ~ (SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg0);
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_V1 = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireValid & ~ (SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_wireValid = redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_valid_out;

    // SE_out_redist33_i_cmp2_gettanh20_c_17_fifo(STALLENABLE,786)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg0 <= '0;
            SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg0 <= SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_toReg0;
            // Successor 1
            SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg1 <= SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_backStall) & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireValid) | SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg0;
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed1 = (~ (SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall) & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireValid) | SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg1;
    // Consuming
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_StallValid = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_backStall & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireValid;
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_toReg0 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_StallValid & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed0;
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_toReg1 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_StallValid & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_or0 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed0;
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireStall = ~ (SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_consumed1 & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_or0);
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_backStall = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_V0 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireValid & ~ (SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg0);
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_V1 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireValid & ~ (SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_and0 = redist33_i_cmp2_gettanh20_c_17_fifo_valid_out;
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_and1 = SE_i_add6_gettanh26_sums_result_add_0_0_p2_of_2_V0 & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_and0;
    assign SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_wireValid = SE_redist11_i_add6_gettanh26_sums_result_add_0_0_p1_of_2_q_1_0_V0 & SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_and1;

    // redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo(STALLFIFO,492)
    assign redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_in = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_V1;
    assign redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_in = SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall;
    assign redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_data_in = i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b;
    assign redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_in_bitsignaltemp = redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_in[0];
    assign redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_in_bitsignaltemp = redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_in[0];
    assign redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_out[0] = redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_out_bitsignaltemp;
    assign redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_out[0] = redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(50),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo (
        .valid_in(redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_in_bitsignaltemp),
        .stall_in(redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_in_bitsignaltemp),
        .data_in(i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b),
        .valid_out(redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_out_bitsignaltemp),
        .stall_out(redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_out_bitsignaltemp),
        .data_out(redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo(STALLREG,972)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid <= 1'b0;
            SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data2 <= 32'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid <= SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall & (SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid | SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_i_valid);

            if (SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data0 <= $unsigned(bubble_select_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_b);
                SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data1 <= $unsigned(bubble_select_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_b);
                SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data2 <= i_acl_gettanh27_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_and0 = redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_valid_out;
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_and1 = SE_out_redist33_i_cmp2_gettanh20_c_17_fifo_V1 & SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_and0;
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_i_valid = SE_out_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_V1 & SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_and1;
    // Stall signal propagation
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_backStall = SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid | ~ (SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_V = SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid == 1'b1 ? SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid : SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D0 = SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid == 1'b1 ? SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data0 : bubble_select_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_b;
    // Data1
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D1 = SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid == 1'b1 ? SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data1 : bubble_select_redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_b;
    // Data2
    assign SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D2 = SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_valid == 1'b1 ? SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_r_data2 : i_acl_gettanh27_q;

    // i_llvm_fpga_mem_memdep_gettanh28(BLACKBOX,85)@201
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_getTanh_avm_address@20000000
    // out out_memdep_getTanh_avm_burstcount@20000000
    // out out_memdep_getTanh_avm_byteenable@20000000
    // out out_memdep_getTanh_avm_enable@20000000
    // out out_memdep_getTanh_avm_read@20000000
    // out out_memdep_getTanh_avm_write@20000000
    // out out_memdep_getTanh_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@232
    // out out_o_writeack@232
    getTanh_i_llvm_fpga_mem_memdep_gettanh0 thei_llvm_fpga_mem_memdep_gettanh28 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D0),
        .in_i_predicate(SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D1),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_gettanh28_backStall),
        .in_i_valid(SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_V0),
        .in_i_writedata(SR_SE_out_redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_D2),
        .in_memdep_getTanh_avm_readdata(in_memdep_getTanh_avm_readdata),
        .in_memdep_getTanh_avm_readdatavalid(in_memdep_getTanh_avm_readdatavalid),
        .in_memdep_getTanh_avm_waitrequest(in_memdep_getTanh_avm_waitrequest),
        .in_memdep_getTanh_avm_writeack(in_memdep_getTanh_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_gettanh28_out_lsu_memdep_o_active),
        .out_memdep_getTanh_avm_address(i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_address),
        .out_memdep_getTanh_avm_burstcount(i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_burstcount),
        .out_memdep_getTanh_avm_byteenable(i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_byteenable),
        .out_memdep_getTanh_avm_enable(i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_enable),
        .out_memdep_getTanh_avm_read(i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_read),
        .out_memdep_getTanh_avm_write(i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_write),
        .out_memdep_getTanh_avm_writedata(i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_gettanh28_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_gettanh28_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_gettanh28_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_gettanh28(BITJOIN,510)
    assign bubble_join_i_llvm_fpga_mem_memdep_gettanh28_q = i_llvm_fpga_mem_memdep_gettanh28_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_gettanh28(BITSELECT,511)
    assign bubble_select_i_llvm_fpga_mem_memdep_gettanh28_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_gettanh28_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29(BLACKBOX,96)@232
    // in in_stall_in@20000000
    // out out_data_out@233
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@233
    getTanh_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh0 thei_llvm_fpga_push_i1_memdep_phi_push8_gettanh29 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_gettanh28_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_feedback_stall_out_8),
        .in_keep_going(bubble_select_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_backStall),
        .in_valid_in(SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_V0),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_feedback_valid_out_8),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_gettanh28(STALLENABLE,625)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_gettanh28_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_gettanh28_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireValid) | SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed1 = (~ (SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireValid) | SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_StallValid = SE_out_i_llvm_fpga_mem_memdep_gettanh28_backStall & SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_toReg0 = SE_out_i_llvm_fpga_mem_memdep_gettanh28_StallValid & SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_toReg1 = SE_out_i_llvm_fpga_mem_memdep_gettanh28_StallValid & SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_or0 = SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_gettanh28_consumed1 & SE_out_i_llvm_fpga_mem_memdep_gettanh28_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_backStall = SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_V0 = SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_V1 = SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_gettanh28_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_gettanh28_wireValid = i_llvm_fpga_mem_memdep_gettanh28_out_o_valid;

    // SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo(STALLENABLE,780)
    // Valid signal propagation
    assign SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_V0 = SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_stall_out | ~ (SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_and0 = redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_out;
    assign SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_gettanh28_V1 & SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_and0;

    // redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo(STALLFIFO,487)
    assign redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_in = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V3;
    assign redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_in = SE_out_redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_backStall;
    assign redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_data_in = redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q;
    assign redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_in_bitsignaltemp = redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_in[0];
    assign redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_in_bitsignaltemp = redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_in[0];
    assign redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_out[0] = redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_out_bitsignaltemp;
    assign redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_out[0] = redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(115),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo (
        .valid_in(redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_in_bitsignaltemp),
        .stall_in(redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_in_bitsignaltemp),
        .data_in(redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q),
        .valid_out(redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_valid_out_bitsignaltemp),
        .stall_out(redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_out_bitsignaltemp),
        .data_out(redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x(STALLENABLE,669)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_V0 = SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_backStall = i_llvm_fpga_push_i4_cleanups_push10_gettanh39_out_stall_out | ~ (SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_and0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V0;
    assign SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_and1 = SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_V1 & SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_and0;
    assign SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_wireValid = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V2 & SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_and1;

    // rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gettanh0_shift_x(BITSELECT,197)@118
    assign rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gettanh0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_b[3:1];

    // rightShiftStage0Idx1_uid200_i_next_initerations_gettanh0_shift_x(BITJOIN,199)@118
    assign rightShiftStage0Idx1_uid200_i_next_initerations_gettanh0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid198_i_next_initerations_gettanh0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5(BITJOIN,537)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_q = i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5(BITSELECT,538)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_q[3:0]);

    // rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x(MUX,201)@118
    assign rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_b or rightShiftStage0Idx1_uid200_i_next_initerations_gettanh0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_s)
            1'b0 : rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_b;
            1'b1 : rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_q = rightShiftStage0Idx1_uid200_i_next_initerations_gettanh0_shift_x_q;
            default : rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_gettanh6_vt_select_2(BITSELECT,111)@118
    assign i_next_initerations_gettanh6_vt_select_2_b = rightShiftStage0_uid202_i_next_initerations_gettanh0_shift_x_q[2:0];

    // i_next_initerations_gettanh6_vt_join(BITJOIN,110)@118
    assign i_next_initerations_gettanh6_vt_join_q = {GND_q, i_next_initerations_gettanh6_vt_select_2_b};

    // i_last_initeration_gettanh8_sel_x(BITSELECT,24)@118
    assign i_last_initeration_gettanh8_sel_x_b = i_next_initerations_gettanh6_vt_join_q[0:0];

    // SR_SE_i_next_initerations_gettanh6_vt_select_2(STALLREG,974)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid <= 1'b0;
            SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data3 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid <= SE_i_next_initerations_gettanh6_vt_select_2_backStall & (SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid | SR_SE_i_next_initerations_gettanh6_vt_select_2_i_valid);

            if (SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data0 <= i_last_initeration_gettanh8_sel_x_b;
                SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data1 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q);
                SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data2 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q);
                SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data3 <= i_next_initerations_gettanh6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_V1;
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_i_valid = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V1 & SR_SE_i_next_initerations_gettanh6_vt_select_2_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_backStall = SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid | ~ (SR_SE_i_next_initerations_gettanh6_vt_select_2_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_V = SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid : SR_SE_i_next_initerations_gettanh6_vt_select_2_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_D0 = SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data0 : i_last_initeration_gettanh8_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_D1 = SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data1 : redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q;
    // Data2
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_D2 = SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data2 : redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_q;
    // Data3
    assign SR_SE_i_next_initerations_gettanh6_vt_select_2_D3 = SR_SE_i_next_initerations_gettanh6_vt_select_2_r_valid == 1'b1 ? SR_SE_i_next_initerations_gettanh6_vt_select_2_r_data3 : i_next_initerations_gettanh6_vt_join_q;

    // SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41(STALLENABLE,642)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_V0 = SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_backStall = i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_and0 = SE_out_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_gettanh32_V2;
    assign SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_wireValid = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V0 & SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_and0;

    // SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1(STALLENABLE,778)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V1 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_1;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V2 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_2;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V3 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_3;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_0 = SE_in_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_gettanh41_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_1 = SR_SE_i_next_initerations_gettanh6_vt_select_2_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_1;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_2 = SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_2;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_3 = redist30_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_116_fifo_stall_out & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_3;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or1 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_1 | SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or0;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or2 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_2 | SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or1;
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_3 | SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_v_s_0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN & SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backStall = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_2 <= 1'b0;
            SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_0 & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_v_s_0;
            end

            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_1 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_1 & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_1 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_v_s_0;
            end

            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_2 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_2 & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_2 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_v_s_0;
            end

            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_3 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_3 & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_s_tv_3;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_R_v_3 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_v_s_0;
            end

        end
    end

    // SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1(STALLREG,973)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backStall & (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid | SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_i_valid);

            if (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_data0 <= $unsigned(redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_i_valid = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backStall = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid | ~ (SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_V = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid : SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_i_valid;

    assign SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_D0 = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_r_data0 : redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_q;

    // SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0(STALLENABLE,777)
    // Valid signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_V0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_s_tv_0 = SR_SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_1_backStall & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backEN = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_v_s_0 = SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V2;
    // Backward Stall generation
    assign SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backStall = ~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_R_v_0 & SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_R_v_0 <= SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg(STALLFIFO,934)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(117),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4(STALLENABLE,631)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going_gettanh4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed1 = (~ (SE_bgTrunc_i_inc_gettanh30_sel_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed2 = (~ (SE_redist29_i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_or1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_wireValid = i_llvm_fpga_pipeline_keep_going_gettanh4_out_valid_out;

    // SE_bgTrunc_i_inc_gettanh30_sel_x(STALLENABLE,598)
    // Valid signal propagation
    assign SE_bgTrunc_i_inc_gettanh30_sel_x_V0 = SE_bgTrunc_i_inc_gettanh30_sel_x_wireValid;
    // Backward Stall generation
    assign SE_bgTrunc_i_inc_gettanh30_sel_x_backStall = i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_stall_out | ~ (SE_bgTrunc_i_inc_gettanh30_sel_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_bgTrunc_i_inc_gettanh30_sel_x_and0 = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_V1;
    assign SE_bgTrunc_i_inc_gettanh30_sel_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_V1 & SE_bgTrunc_i_inc_gettanh30_sel_x_and0;

    // SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,732)
    // Valid signal propagation
    assign SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backStall & SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_V1;
    // Backward Stall generation
    assign SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1(STALLENABLE,800)
    // Valid signal propagation
    assign SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_stall_out | ~ (SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_wireValid = bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12(BLACKBOX,83)@115
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@116
    // out out_stall_out@20000000
    // out out_valid_out@116
    getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast39431_gettanh0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_backStall),
        .in_valid_in(SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12(STALLENABLE,621)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed0 = (~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed1 = (~ (SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_valid_out;

    // SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2(STALLENABLE,691)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_1 = SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_and0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_V0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(STALLENABLE,720)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 = 1'b1;

    // SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,708)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V0;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_V0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10(STALLENABLE,637)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg0 <= SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg1 <= SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed0 = (~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_backStall) & SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed1 = (~ (SE_bgTrunc_i_inc_gettanh30_sel_x_backStall) & SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireValid) | SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_StallValid = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_backStall & SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireValid;
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_toReg0 = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_StallValid & SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_toReg1 = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_StallValid & SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_or0 = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed0;
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireStall = ~ (SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_consumed1 & SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_or0);
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_backStall = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_V0 = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_V1 = SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireValid & ~ (SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_wireValid = i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_036_push7_gettanh31(STALLENABLE,651)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_036_push7_gettanh31_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_036_push7_gettanh31_wireValid = i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10(BITJOIN,531)
    assign bubble_join_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_q = i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10(BITSELECT,532)
    assign bubble_select_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_q[31:0]);

    // i_inc_gettanh30(ADD,80)@116
    assign i_inc_gettanh30_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_b};
    assign i_inc_gettanh30_b = {1'b0, c_i32_149_recast_x_q};
    assign i_inc_gettanh30_o = $unsigned(i_inc_gettanh30_a) + $unsigned(i_inc_gettanh30_b);
    assign i_inc_gettanh30_q = i_inc_gettanh30_o[32:0];

    // bgTrunc_i_inc_gettanh30_sel_x(BITSELECT,5)@116
    assign bgTrunc_i_inc_gettanh30_sel_x_b = i_inc_gettanh30_q[31:0];

    // i_llvm_fpga_push_i32_i_036_push7_gettanh31(BLACKBOX,98)@116
    // in in_stall_in@20000000
    // out out_data_out@117
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@117
    getTanh_i_llvm_fpga_push_i32_i_036_push7_gettanh0 thei_llvm_fpga_push_i32_i_036_push7_gettanh31 (
        .in_data_in(bgTrunc_i_inc_gettanh30_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_feedback_stall_out_7),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_gettanh4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_036_push7_gettanh31_backStall),
        .in_valid_in(SE_bgTrunc_i_inc_gettanh30_sel_x_V0),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_feedback_valid_out_7),
        .out_stall_out(i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo(BITJOIN,593)
    assign bubble_join_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_q = redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_data_out;

    // bubble_select_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo(BITSELECT,594)
    assign bubble_select_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_b = $unsigned(bubble_join_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_q[0:0]);

    // c_i32_048(CONSTANT,56)
    assign c_i32_048_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_036_pop7_gettanh10(BLACKBOX,91)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_feedback_stall_out_7@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    getTanh_i_llvm_fpga_pop_i32_i_036_pop7_gettanh0 thei_llvm_fpga_pop_i32_i_036_pop7_gettanh10 (
        .in_data_in(c_i32_048_q),
        .in_dir(bubble_select_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_b),
        .in_feedback_in_7(i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_i_036_push7_gettanh31_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_backStall),
        .in_valid_in(SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V2),
        .out_data_out(i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_feedback_stall_out_7),
        .out_stall_out(i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gettanh4(BLACKBOX,88)@115
    // in in_stall_in@20000000
    // out out_data_out@116
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@116
    getTanh_i_llvm_fpga_pipeline_keep_going_gettanh0 thei_llvm_fpga_pipeline_keep_going_gettanh4 (
        .in_data_in(bubble_select_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_gettanh9_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_gettanh36_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_gettanh36_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_gettanh4_backStall),
        .in_valid_in(SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_gettanh4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0(STALLENABLE,792)
    // Valid signal propagation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_V0 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_R_v_0;
    // Stall signal propagation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_s_tv_0 = SR_SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_backStall & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_R_v_0;
    // Backward Enable generation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backEN = ~ (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_v_s_0 = SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backEN & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V0;
    // Backward Stall generation
    assign SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backStall = ~ (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backEN == 1'b0)
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_R_v_0 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_R_v_0 & SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_s_tv_0;
            end
            else
            begin
                SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_R_v_0 <= SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_v_s_0;
            end

        end
    end

    // SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo(STALLENABLE,791)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg0 <= '0;
            SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg1 <= '0;
            SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg0 <= SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg0;
            // Successor 1
            SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg1 <= SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg1;
            // Successor 2
            SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg2 <= SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed0 = (~ (SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_0_backStall) & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid) | SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg0;
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_gettanh4_out_stall_out) & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid) | SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg1;
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed2 = (~ (i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_out_stall_out) & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid) | SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg2;
    // Consuming
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_StallValid = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_backStall & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid;
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg0 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_StallValid & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed0;
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg1 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_StallValid & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed1;
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_toReg2 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_StallValid & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_or0 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed0;
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_or1 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed1 & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_or0;
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireStall = ~ (SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_consumed2 & SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_or1);
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_backStall = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V0 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid & ~ (SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg0);
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V1 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid & ~ (SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg1);
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_V2 = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid & ~ (SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_wireValid = redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_out;

    // redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo(STALLFIFO,493)
    assign redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_in = SE_out_getTanh_B3_merge_reg_aunroll_x_V2;
    assign redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_in = SE_out_redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_backStall;
    assign redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_data_in = bubble_select_getTanh_B3_merge_reg_aunroll_x_b;
    assign redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_in_bitsignaltemp = redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_in[0];
    assign redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_in_bitsignaltemp = redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_in[0];
    assign redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_out[0] = redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_out_bitsignaltemp;
    assign redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_out[0] = redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(115),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo (
        .valid_in(redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_in_bitsignaltemp),
        .stall_in(redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_getTanh_B3_merge_reg_aunroll_x_b),
        .valid_out(redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_valid_out_bitsignaltemp),
        .stall_out(redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_out_bitsignaltemp),
        .data_out(redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg(STALLFIFO,931)
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_in = SE_out_getTanh_B3_merge_reg_aunroll_x_V0;
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(115),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,665)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = getTanh_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,541)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,542)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // getTanh_B3_merge_reg_aunroll_x(BLACKBOX,18)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    getTanh_B3_merge_reg thegetTanh_B3_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_getTanh_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(getTanh_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(getTanh_B3_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_getTanh_B3_merge_reg_aunroll_x(STALLENABLE,603)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg0 <= SE_out_getTanh_B3_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg1 <= SE_out_getTanh_B3_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg2 <= SE_out_getTanh_B3_merge_reg_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_getTanh_B3_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid) | SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg0;
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid) | SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg1;
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_consumed2 = (~ (redist36_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_114_fifo_stall_out) & SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid) | SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_StallValid = SE_out_getTanh_B3_merge_reg_aunroll_x_backStall & SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid;
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_toReg0 = SE_out_getTanh_B3_merge_reg_aunroll_x_StallValid & SE_out_getTanh_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_toReg1 = SE_out_getTanh_B3_merge_reg_aunroll_x_StallValid & SE_out_getTanh_B3_merge_reg_aunroll_x_consumed1;
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_toReg2 = SE_out_getTanh_B3_merge_reg_aunroll_x_StallValid & SE_out_getTanh_B3_merge_reg_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_or0 = SE_out_getTanh_B3_merge_reg_aunroll_x_consumed0;
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_or1 = SE_out_getTanh_B3_merge_reg_aunroll_x_consumed1 & SE_out_getTanh_B3_merge_reg_aunroll_x_or0;
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_wireStall = ~ (SE_out_getTanh_B3_merge_reg_aunroll_x_consumed2 & SE_out_getTanh_B3_merge_reg_aunroll_x_or1);
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_backStall = SE_out_getTanh_B3_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_V0 = SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg0);
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_V1 = SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg1);
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_V2 = SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid & ~ (SE_out_getTanh_B3_merge_reg_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_getTanh_B3_merge_reg_aunroll_x_wireValid = getTanh_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg(STALLFIFO,932)
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_in = SE_out_getTanh_B3_merge_reg_aunroll_x_V1;
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(149),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2(STALLENABLE,802)
    // Valid signal propagation
    assign SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_stall_out | ~ (SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_wireValid = bubble_out_getTanh_B3_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17(BLACKBOX,82)@149
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@150
    // out out_stall_out@20000000
    // out out_valid_out@150
    getTanh_i_llvm_fpga_ffwd_dest_p1025i32_m0000itcast37412_gettanh0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_backStall),
        .in_valid_in(SE_out_bubble_out_getTanh_B3_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17(STALLENABLE,619)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed0 = (~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed1 = (~ (SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_or0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_wireValid = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_valid_out;

    // SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2(STALLENABLE,688)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_1 = SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_V1 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_V0 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,311)@150
    assign i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(bubble_select_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_b[31:31]);

    // bubble_join_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15(BITJOIN,514)
    assign bubble_join_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_q = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15(BITSELECT,515)
    assign bubble_select_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_q[31:0]);

    // i_mptr_bitcast_index38_gettanh0_c_i2_01_x(CONSTANT,28)
    assign i_mptr_bitcast_index38_gettanh0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,337)@150
    assign i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_b, i_mptr_bitcast_index38_gettanh0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17(BITJOIN,503)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17(BITSELECT,504)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_q[63:0]);

    // i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,392)@150
    assign i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_b[59:0]);
    assign i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast37412_gettanh17_b[63:60]);

    // i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2(ADD,265)@150 + 1
    assign i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q = i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_o[59:0];

    // SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0(STALLENABLE,734)
    // Valid signal propagation
    assign SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0 = SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backStall & SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN = ~ (SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0 = SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_V0;
    // Backward Stall generation
    assign SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall = ~ (SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b0)
            begin
                SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 & SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2(STALLENABLE,689)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_and1 = SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_v_s_0 = SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0(REG,444)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b1)
        begin
            redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel0_2_b);
        end
    end

    // i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,343)@151
    assign i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q};

    // redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,308)@151
    assign i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist4_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2(ADD,266)@151 + 1
    assign i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_cin = i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_q = i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_o[5:1];

    // redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0(REG,449)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q(BITJOIN,267)@152
    assign i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_q, redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x(BITSELECT,25)@152
    assign i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_q[63:0];

    // SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo(STALLENABLE,782)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg0 <= '0;
            SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg0 <= SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_toReg0;
            // Successor 1
            SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg1 <= SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed0 = (~ (SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall) & SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireValid) | SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg0;
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed1 = (~ (redist32_i_first_cleanup_xor_gettanh2_q_83_fifo_stall_out) & SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireValid) | SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg1;
    // Consuming
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_StallValid = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_backStall & SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireValid;
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_toReg0 = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_StallValid & SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed0;
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_toReg1 = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_StallValid & SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_or0 = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed0;
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireStall = ~ (SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_consumed1 & SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_or0);
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_backStall = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_V0 = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireValid & ~ (SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg0);
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_V1 = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireValid & ~ (SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_wireValid = redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_valid_out;

    // SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q(STALLENABLE,690)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg0 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg1 <= SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed0 = (~ (SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall) & SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed1 = (~ (redist35_i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b_49_fifo_stall_out) & SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_StallValid = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireValid;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_toReg0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_toReg1 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_or0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireStall = ~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_consumed1 & SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_or0);
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_backStall = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_V1 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index38_gettanh0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_wireValid = SE_redist13_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_and0;

    // SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo(STALLENABLE,776)
    // Valid signal propagation
    assign SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_V0 = SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_o_stall | ~ (SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_wireValid = SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_V;

    // SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo(STALLREG,947)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid <= 1'b0;
            SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data1 <= 1'bx;
            SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid <= SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall & (SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid | SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_i_valid);

            if (SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data0 <= i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b;
                SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data1 <= $unsigned(bubble_select_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_b);
                SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data2 <= $unsigned(bubble_select_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_and0 = redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_out;
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_and1 = SE_i_mptr_bitcast_index38_gettanh0_add_x_BitJoin_for_q_V0 & SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_and0;
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_i_valid = SE_out_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_V0 & SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_and1;
    // Stall signal propagation
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall = SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid | ~ (SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_V = SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid : SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D0 = SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data0 : i_mptr_bitcast_index38_gettanh0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D1 = SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data1 : bubble_select_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_b;
    // Data2
    assign SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_D2 = SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_valid == 1'b1 ? SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_r_data2 : bubble_select_redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_b;

    // redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo(STALLFIFO,484)
    assign redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_V1;
    assign redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_in = SR_SE_out_redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_backStall;
    assign redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_b;
    assign redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_in_bitsignaltemp = redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_in[0];
    assign redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_in_bitsignaltemp = redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_in[0];
    assign redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_out[0] = redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_out_bitsignaltemp;
    assign redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_out[0] = redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo (
        .valid_in(redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_b),
        .valid_out(redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14(BLACKBOX,90)@117
    // in in_stall_in@20000000
    // out out_data_out@118
    // out out_feedback_stall_out_8@20000000
    // out out_stall_out@20000000
    // out out_valid_out@118
    getTanh_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh0 thei_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14 (
        .in_data_in(GND_q),
        .in_dir(redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i1_memdep_phi_push8_gettanh29_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_backStall),
        .in_valid_in(SE_redist37_getTanh_B3_merge_reg_aunroll_x_out_data_out_0_tpl_116_1_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_feedback_stall_out_8),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14(STALLENABLE,635)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed0 = (~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed1 = (~ (redist28_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out_34_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_valid_out;

    // SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0(STALLENABLE,639)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg2 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg3 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg4 <= SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed0 = (~ (SE_leftShiftStage0_uid194_i_cleanups_shl_gettanh0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond_gettanh36_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed2 = (~ (SE_i_masked_gettanh43_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed3 = (~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed4 = (~ (redist31_i_first_cleanup_xor_gettanh2_q_34_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid) | SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_StallValid = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_backStall & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_toReg4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_StallValid & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed1 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or0;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed2 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or1;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed3 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or2;
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_consumed4 & SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_or3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_backStall = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V0 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V1 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V3 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V4 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_wireValid = i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_out_valid_out;

    // SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0(STALLENABLE,738)
    // Valid signal propagation
    assign SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_V0 = SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_backStall & SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backEN & SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_V1;
    // Backward Stall generation
    assign SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2(STALLENABLE,692)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_s_tv_0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_V0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backEN;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_and1 = SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_and0;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_V1 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_and1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q(STALLENABLE,693)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_stall | ~ (SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_V0;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and1 = SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_V0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and0;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i4_cleanups_pop10_gettanh0_V3 & SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and1;
    assign SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_V0 & SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_and2;

    // SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15(STALLENABLE,627)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg0 <= SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg1 <= SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed0 = (~ (SE_redist5_i_mptr_bitcast_index38_gettanh0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall) & SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg0;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed1 = (~ (SE_i_mptr_bitcast_index38_gettanh0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireValid) | SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_StallValid = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_backStall & SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireValid;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_toReg0 = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_StallValid & SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_toReg1 = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_StallValid & SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_or0 = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed0;
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireStall = ~ (SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_consumed1 & SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_or0);
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_backStall = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_V0 = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg0);
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_V1 = SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireValid & ~ (SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_wireValid = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_valid;

    // i_first_cleanup_xor_gettanh2(LOGICAL,78)@118
    assign i_first_cleanup_xor_gettanh2_q = i_first_cleanup_gettanh1_sel_x_b ^ VCC_q;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14(BITJOIN,528)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_q = i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14(BITSELECT,529)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_q[0:0]);

    // i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,390)
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_048_q[29:0];
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,352)@116
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, bubble_select_i_llvm_fpga_pop_i32_i_036_pop7_gettanh10_b, i_mptr_bitcast_index38_gettanh0_c_i2_01_x_q};

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12(BITJOIN,506)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_q = i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12(BITSELECT,507)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_q[63:0]);

    // i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,393)@116
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_b[59:0]);
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast39431_gettanh12_b[63:60]);

    // i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2(ADD,274)@116 + 1
    assign i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q = i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,355)@117
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,348)@117
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist3_i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2(ADD,275)@117 + 1
    assign i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_cin = i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index40_gettanh0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_q = i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_o[5:1];

    // redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0(REG,448)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_q <= $unsigned(i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q(BITJOIN,276)@118
    assign i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index40_gettanh0_add_x_p2_of_2_q, redist12_i_mptr_bitcast_index40_gettanh0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index40_gettanh0_dupName_0_trunc_sel_x(BITSELECT,31)@118
    assign i_mptr_bitcast_index40_gettanh0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_unnamed_gettanh7_gettanh15(BLACKBOX,86)@118
    // in in_i_stall@20000000
    // out out_o_readdata@150
    // out out_o_stall@20000000
    // out out_o_valid@150
    // out out_unnamed_getTanh7_getTanh_avm_address@20000000
    // out out_unnamed_getTanh7_getTanh_avm_burstcount@20000000
    // out out_unnamed_getTanh7_getTanh_avm_byteenable@20000000
    // out out_unnamed_getTanh7_getTanh_avm_enable@20000000
    // out out_unnamed_getTanh7_getTanh_avm_read@20000000
    // out out_unnamed_getTanh7_getTanh_avm_write@20000000
    // out out_unnamed_getTanh7_getTanh_avm_writedata@20000000
    getTanh_i_llvm_fpga_mem_unnamed_gettanh7_gettanh0 thei_llvm_fpga_mem_unnamed_gettanh7_gettanh15 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index40_gettanh0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop8_gettanh14_b),
        .in_i_predicate(i_first_cleanup_xor_gettanh2_q),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index40_gettanh0_add_x_BitJoin_for_q_V0),
        .in_unnamed_getTanh7_getTanh_avm_readdata(in_unnamed_getTanh7_getTanh_avm_readdata),
        .in_unnamed_getTanh7_getTanh_avm_readdatavalid(in_unnamed_getTanh7_getTanh_avm_readdatavalid),
        .in_unnamed_getTanh7_getTanh_avm_waitrequest(in_unnamed_getTanh7_getTanh_avm_waitrequest),
        .in_unnamed_getTanh7_getTanh_avm_writeack(in_unnamed_getTanh7_getTanh_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_o_valid),
        .out_unnamed_getTanh7_getTanh_avm_address(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_address),
        .out_unnamed_getTanh7_getTanh_avm_burstcount(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_burstcount),
        .out_unnamed_getTanh7_getTanh_avm_byteenable(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_byteenable),
        .out_unnamed_getTanh7_getTanh_avm_enable(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_enable),
        .out_unnamed_getTanh7_getTanh_avm_read(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_read),
        .out_unnamed_getTanh7_getTanh_avm_write(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_write),
        .out_unnamed_getTanh7_getTanh_avm_writedata(i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,12)
    assign out_unnamed_getTanh7_getTanh_avm_address = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_address;
    assign out_unnamed_getTanh7_getTanh_avm_enable = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_enable;
    assign out_unnamed_getTanh7_getTanh_avm_read = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_read;
    assign out_unnamed_getTanh7_getTanh_avm_write = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_write;
    assign out_unnamed_getTanh7_getTanh_avm_writedata = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_writedata;
    assign out_unnamed_getTanh7_getTanh_avm_byteenable = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_byteenable;
    assign out_unnamed_getTanh7_getTanh_avm_burstcount = i_llvm_fpga_mem_unnamed_gettanh7_gettanh15_out_unnamed_getTanh7_getTanh_avm_burstcount;

    // bubble_join_redist27_i_masked_gettanh43_q_114_fifo(BITJOIN,572)
    assign bubble_join_redist27_i_masked_gettanh43_q_114_fifo_q = redist27_i_masked_gettanh43_q_114_fifo_data_out;

    // bubble_select_redist27_i_masked_gettanh43_q_114_fifo(BITSELECT,573)
    assign bubble_select_redist27_i_masked_gettanh43_q_114_fifo_b = $unsigned(bubble_join_redist27_i_masked_gettanh43_q_114_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,13)@232
    assign out_masked = bubble_select_redist27_i_masked_gettanh43_q_114_fifo_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i4_initerations_pop9_gettanh5_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,15)
    assign out_unnamed_getTanh9_getTanh_avm_address = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_address;
    assign out_unnamed_getTanh9_getTanh_avm_enable = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_enable;
    assign out_unnamed_getTanh9_getTanh_avm_read = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_read;
    assign out_unnamed_getTanh9_getTanh_avm_write = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_write;
    assign out_unnamed_getTanh9_getTanh_avm_writedata = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_writedata;
    assign out_unnamed_getTanh9_getTanh_avm_byteenable = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_byteenable;
    assign out_unnamed_getTanh9_getTanh_avm_burstcount = i_llvm_fpga_mem_unnamed_gettanh9_gettanh19_out_unnamed_getTanh9_getTanh_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,16)
    assign out_memdep_getTanh_avm_address = i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_address;
    assign out_memdep_getTanh_avm_enable = i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_enable;
    assign out_memdep_getTanh_avm_read = i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_read;
    assign out_memdep_getTanh_avm_write = i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_write;
    assign out_memdep_getTanh_avm_writedata = i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_writedata;
    assign out_memdep_getTanh_avm_byteenable = i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_byteenable;
    assign out_memdep_getTanh_avm_burstcount = i_llvm_fpga_mem_memdep_gettanh28_out_memdep_getTanh_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,17)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_gettanh28_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,65)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_gettanh4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_gettanh4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_gettanh4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,164)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_gettanh4_out_pipeline_valid_out;

    // regfree_osync(GPOUT,168)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_gettanh10_gettanh42_out_intel_reserved_ffwd_2_0;

    // sync_out(GPOUT,172)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
