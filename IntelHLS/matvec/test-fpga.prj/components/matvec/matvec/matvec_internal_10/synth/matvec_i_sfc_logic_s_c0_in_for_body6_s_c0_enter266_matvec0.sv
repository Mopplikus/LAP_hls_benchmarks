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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_matvecs_c0_enter266_matvec0
// Created for function/kernel matvec
// SystemVerilog created on Fri Apr  7 16:55:33 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_i_sfc_logic_s_c0_in_for_body6_s_c0_enter266_matvec0 (
    input wire [31:0] in_unnamed_matvec3_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_writeack,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec3_matvec_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_unnamed_matvec4_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_writeack,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec4_matvec_avm_readdatavalid,
    output wire [31:0] out_unnamed_matvec3_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec3_matvec_avm_writedata,
    output wire [3:0] out_unnamed_matvec3_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec3_matvec_avm_burstcount,
    output wire [31:0] out_unnamed_matvec4_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec4_matvec_avm_writedata,
    output wire [3:0] out_unnamed_matvec4_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec4_matvec_avm_burstcount,
    output wire [0:0] out_c0_exi5_0_tpl,
    output wire [0:0] out_c0_exi5_1_tpl,
    output wire [63:0] out_c0_exi5_2_tpl,
    output wire [31:0] out_c0_exi5_3_tpl,
    output wire [0:0] out_c0_exi5_4_tpl,
    output wire [0:0] out_c0_exi5_5_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_matvec1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_160_q;
    wire [31:0] c_i32_062_q;
    wire [31:0] c_i32_163_q;
    wire [5:0] c_i6_166_q;
    wire [5:0] c_i6_2864_q;
    wire [63:0] c_matvec_M_local_pmem_q;
    wire [63:0] c_matvec_V_local_pmem_q;
    wire [32:0] i_add_matvec23_a;
    wire [32:0] i_add_matvec23_b;
    logic [32:0] i_add_matvec23_o;
    wire [32:0] i_add_matvec23_q;
    wire [1:0] i_arrayidx102_matvec19_vt_const_1_q;
    wire [63:0] i_arrayidx102_matvec19_vt_join_q;
    wire [61:0] i_arrayidx102_matvec19_vt_select_63_b;
    wire [63:0] i_arrayidx1_matvec17_vt_join_q;
    wire [61:0] i_arrayidx1_matvec17_vt_select_63_b;
    wire [1:0] i_cleanups_shl_matvec5_vt_join_q;
    wire [0:0] i_cleanups_shl_matvec5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor_matvec4_q;
    wire [6:0] i_fpga_indvars_iv_next_matvec35_a;
    wire [6:0] i_fpga_indvars_iv_next_matvec35_b;
    logic [6:0] i_fpga_indvars_iv_next_matvec35_o;
    wire [6:0] i_fpga_indvars_iv_next_matvec35_q;
    wire [63:0] i_idxprom7_matvec14_vt_join_q;
    wire [31:0] i_idxprom7_matvec14_vt_select_31_b;
    wire [63:0] i_idxprom_matvec16_vt_join_q;
    wire [31:0] i_idxprom_matvec16_vt_select_31_b;
    wire [32:0] i_inc_matvec25_a;
    wire [32:0] i_inc_matvec25_b;
    logic [32:0] i_inc_matvec25_o;
    wire [32:0] i_inc_matvec25_q;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_o_readdata;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_feedback_stall_out_14;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_feedback_stall_out_13;
    wire [1:0] i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_pop_i32_j_011_pop11_matvec15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_011_pop11_matvec15_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_tmp_012_pop10_matvec22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_tmp_012_pop10_matvec22_out_feedback_stall_out_10;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_out_1;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_valid_out_1;
    wire [0:0] i_llvm_fpga_push_i1_notcmp414_push14_matvec39_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notcmp414_push14_matvec39_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_valid_out_2;
    wire [7:0] i_llvm_fpga_push_i2_cleanups_push13_matvec34_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i2_cleanups_push13_matvec34_out_feedback_valid_out_13;
    wire [7:0] i_llvm_fpga_push_i2_initerations_push12_matvec9_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i2_initerations_push12_matvec9_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_i_013_pop815_push15_matvec13_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_i_013_pop815_push15_matvec13_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_i32_j_011_push11_matvec26_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_j_011_push11_matvec26_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_tmp_012_push10_matvec24_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i32_tmp_012_push10_matvec24_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36_out_feedback_valid_out_9;
    wire [0:0] i_masked_matvec37_qi;
    reg [0:0] i_masked_matvec37_q;
    wire [0:0] i_next_cleanups_matvec33_s;
    reg [1:0] i_next_cleanups_matvec33_q;
    wire [1:0] i_next_initerations_matvec8_vt_join_q;
    wire [0:0] i_next_initerations_matvec8_vt_select_0_b;
    wire [0:0] i_notcmp_matvec30_q;
    wire [0:0] i_or_matvec32_q;
    wire [31:0] bgTrunc_i_add_matvec23_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x_b;
    wire [31:0] bgTrunc_i_inc_matvec25_sel_x_b;
    wire [63:0] bgTrunc_i_mul_matvec21_sel_x_in;
    wire [31:0] bgTrunc_i_mul_matvec21_sel_x_b;
    wire [12:0] i_arrayidx102_matvec0_add_x_a;
    wire [12:0] i_arrayidx102_matvec0_add_x_b;
    logic [12:0] i_arrayidx102_matvec0_add_x_o;
    wire [12:0] i_arrayidx102_matvec0_add_x_q;
    wire [63:0] i_arrayidx102_matvec0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx102_matvec0_narrow_x_b;
    wire [11:0] i_arrayidx102_matvec0_shift_join_x_q;
    wire [12:0] i_arrayidx102_matvec0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx102_matvec0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx102_matvec0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx102_matvec0_dupName_0_add_x_q;
    wire [23:0] i_arrayidx102_matvec0_mult_extender_x_q;
    wire [4:0] i_arrayidx102_matvec0_mult_multconst_x_q;
    wire [11:0] i_arrayidx102_matvec0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx102_matvec0_dupName_5_trunc_sel_x_b;
    wire [7:0] i_arrayidx1_matvec0_add_x_a;
    wire [7:0] i_arrayidx1_matvec0_add_x_b;
    logic [7:0] i_arrayidx1_matvec0_add_x_o;
    wire [7:0] i_arrayidx1_matvec0_add_x_q;
    wire [63:0] i_arrayidx1_matvec0_append_upper_bits_x_q;
    wire [4:0] i_arrayidx1_matvec0_narrow_x_b;
    wire [6:0] i_arrayidx1_matvec0_shift_join_x_q;
    wire [6:0] i_arrayidx1_matvec0_dupName_0_trunc_sel_x_b;
    wire [6:0] i_arrayidx1_matvec0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_matvec3_sel_x_b;
    wire [63:0] i_idxprom7_matvec14_sel_x_b;
    wire [63:0] i_idxprom_matvec16_sel_x_b;
    wire [0:0] i_last_initeration_matvec10_sel_x_b;
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
    wire [0:0] i_exitcond_matvec28_cmp_nsign_q;
    wire [63:0] i_mul_matvec21_sums_join_0_q;
    wire [50:0] i_mul_matvec21_sums_align_1_q;
    wire [50:0] i_mul_matvec21_sums_align_1_qint;
    wire [64:0] i_mul_matvec21_sums_result_add_0_0_a;
    wire [64:0] i_mul_matvec21_sums_result_add_0_0_b;
    logic [64:0] i_mul_matvec21_sums_result_add_0_0_o;
    wire [64:0] i_mul_matvec21_sums_result_add_0_0_q;
    wire [12:0] xIfSign_mergedSignalTM_uid215_i_arrayidx102_matvec0_mult_x_q;
    wire [3:0] padACst_uid219_i_arrayidx102_matvec0_mult_x_q;
    wire [16:0] aPostPad_uid220_i_arrayidx102_matvec0_mult_x_q;
    wire [17:0] sub_uid221_i_arrayidx102_matvec0_mult_x_a;
    wire [17:0] sub_uid221_i_arrayidx102_matvec0_mult_x_b;
    logic [17:0] sub_uid221_i_arrayidx102_matvec0_mult_x_o;
    wire [17:0] sub_uid221_i_arrayidx102_matvec0_mult_x_q;
    wire [2:0] sR_bottomExtension_uid224_i_arrayidx102_matvec0_mult_x_q;
    wire [15:0] sR_bottomRange_uid225_i_arrayidx102_matvec0_mult_x_in;
    wire [15:0] sR_bottomRange_uid225_i_arrayidx102_matvec0_mult_x_b;
    wire [18:0] sR_mergedSignalTM_uid226_i_arrayidx102_matvec0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid250_i_cleanups_shl_matvec0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid250_i_cleanups_shl_matvec0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid251_i_cleanups_shl_matvec0_shift_x_q;
    wire [0:0] leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_s;
    reg [1:0] leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid257_i_next_initerations_matvec0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid259_i_next_initerations_matvec0_shift_x_q;
    wire [0:0] rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_s;
    reg [1:0] rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_q;
    wire i_mul_matvec21_im0_cma_reset;
    wire [13:0] i_mul_matvec21_im0_cma_a0;
    wire [13:0] i_mul_matvec21_im0_cma_c0;
    wire [27:0] i_mul_matvec21_im0_cma_s0;
    wire [27:0] i_mul_matvec21_im0_cma_qq;
    wire [27:0] i_mul_matvec21_im0_cma_q;
    wire i_mul_matvec21_im0_cma_ena0;
    wire i_mul_matvec21_im0_cma_ena1;
    wire i_mul_matvec21_im0_cma_ena2;
    wire i_mul_matvec21_im8_cma_reset;
    wire [17:0] i_mul_matvec21_im8_cma_a0;
    wire [17:0] i_mul_matvec21_im8_cma_c0;
    wire [35:0] i_mul_matvec21_im8_cma_s0;
    wire [35:0] i_mul_matvec21_im8_cma_qq;
    wire [35:0] i_mul_matvec21_im8_cma_q;
    wire i_mul_matvec21_im8_cma_ena0;
    wire i_mul_matvec21_im8_cma_ena1;
    wire i_mul_matvec21_im8_cma_ena2;
    wire i_mul_matvec21_ma3_cma_reset;
    wire [13:0] i_mul_matvec21_ma3_cma_a0;
    wire [17:0] i_mul_matvec21_ma3_cma_c0;
    wire [13:0] i_mul_matvec21_ma3_cma_a1;
    wire [17:0] i_mul_matvec21_ma3_cma_c1;
    wire [32:0] i_mul_matvec21_ma3_cma_s0;
    wire [32:0] i_mul_matvec21_ma3_cma_qq;
    wire [32:0] i_mul_matvec21_ma3_cma_q;
    wire i_mul_matvec21_ma3_cma_ena0;
    wire i_mul_matvec21_ma3_cma_ena1;
    wire i_mul_matvec21_ma3_cma_ena2;
    wire [51:0] i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_c;
    wire [56:0] i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_b;
    wire [6:0] i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_c;
    wire [13:0] i_mul_matvec21_bs2_merged_bit_select_b;
    wire [17:0] i_mul_matvec21_bs2_merged_bit_select_c;
    wire [13:0] i_mul_matvec21_bs1_merged_bit_select_b;
    wire [17:0] i_mul_matvec21_bs1_merged_bit_select_c;
    reg [0:0] redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together88_aunroll_x_in_c0_eni3_1_tpl_2_q;
    reg [0:0] redist2_sync_together88_aunroll_x_in_c0_eni3_1_tpl_10_q;
    reg [31:0] redist3_sync_together88_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist4_sync_together88_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist5_sync_together88_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist6_sync_together88_aunroll_x_in_i_valid_9_q;
    reg [11:0] redist7_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1_q;
    reg [31:0] redist8_bgTrunc_i_mul_matvec21_sel_x_b_1_q;
    reg [0:0] redist9_i_masked_matvec37_q_9_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out_9_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_10_q;
    reg [0:0] redist15_i_first_cleanup_xor_matvec4_q_1_q;
    wire redist14_i_idxprom7_matvec14_vt_join_q_9_mem_reset0;
    wire [63:0] redist14_i_idxprom7_matvec14_vt_join_q_9_mem_ia;
    wire [2:0] redist14_i_idxprom7_matvec14_vt_join_q_9_mem_aa;
    wire [2:0] redist14_i_idxprom7_matvec14_vt_join_q_9_mem_ab;
    wire [63:0] redist14_i_idxprom7_matvec14_vt_join_q_9_mem_iq;
    wire [63:0] redist14_i_idxprom7_matvec14_vt_join_q_9_mem_q;
    wire [2:0] redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_q;
    (* preserve *) reg [2:0] redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_i;
    reg [2:0] redist14_i_idxprom7_matvec14_vt_join_q_9_wraddr_q;
    wire [3:0] redist14_i_idxprom7_matvec14_vt_join_q_9_mem_last_q;
    wire [3:0] redist14_i_idxprom7_matvec14_vt_join_q_9_cmp_b;
    wire [0:0] redist14_i_idxprom7_matvec14_vt_join_q_9_cmp_q;
    (* dont_merge *) reg [0:0] redist14_i_idxprom7_matvec14_vt_join_q_9_cmpReg_q;
    wire [0:0] redist14_i_idxprom7_matvec14_vt_join_q_9_notEnable_q;
    wire [0:0] redist14_i_idxprom7_matvec14_vt_join_q_9_nor_q;
    (* dont_merge *) reg [0:0] redist14_i_idxprom7_matvec14_vt_join_q_9_sticky_ena_q;
    wire [0:0] redist14_i_idxprom7_matvec14_vt_join_q_9_enaAnd_q;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together88_aunroll_x_in_i_valid_1(DELAY,274)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together88_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist5_sync_together88_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1(DELAY,280)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid250_i_cleanups_shl_matvec0_shift_x(BITSELECT,249)@2
    assign leftShiftStage0Idx1Rng1_uid250_i_cleanups_shl_matvec0_shift_x_in = i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid250_i_cleanups_shl_matvec0_shift_x_b = leftShiftStage0Idx1Rng1_uid250_i_cleanups_shl_matvec0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid251_i_cleanups_shl_matvec0_shift_x(BITJOIN,250)@2
    assign leftShiftStage0Idx1_uid251_i_cleanups_shl_matvec0_shift_x_q = {leftShiftStage0Idx1Rng1_uid250_i_cleanups_shl_matvec0_shift_x_b, GND_q};

    // leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x(MUX,252)@2
    assign leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_s or i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out or leftShiftStage0Idx1_uid251_i_cleanups_shl_matvec0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_s)
            1'b0 : leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_q = i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out;
            1'b1 : leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_q = leftShiftStage0Idx1_uid251_i_cleanups_shl_matvec0_shift_x_q;
            default : leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl_matvec5_vt_select_1(BITSELECT,44)@2
    assign i_cleanups_shl_matvec5_vt_select_1_b = leftShiftStage0_uid253_i_cleanups_shl_matvec0_shift_x_q[1:1];

    // i_cleanups_shl_matvec5_vt_join(BITJOIN,43)@2
    assign i_cleanups_shl_matvec5_vt_join_q = {i_cleanups_shl_matvec5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor_matvec4(LOGICAL,47)@2
    assign i_first_cleanup_xor_matvec4_q = i_first_cleanup_matvec3_sel_x_b ^ VCC_q;

    // i_notcmp_matvec30(LOGICAL,84)@2
    assign i_notcmp_matvec30_q = i_exitcond_matvec28_cmp_nsign_q ^ VCC_q;

    // i_or_matvec32(LOGICAL,85)@2
    assign i_or_matvec32_q = i_notcmp_matvec30_q | i_first_cleanup_xor_matvec4_q;

    // i_next_cleanups_matvec33(MUX,80)@2
    assign i_next_cleanups_matvec33_s = i_or_matvec32_q;
    always @(i_next_cleanups_matvec33_s or i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out or i_cleanups_shl_matvec5_vt_join_q)
    begin
        unique case (i_next_cleanups_matvec33_s)
            1'b0 : i_next_cleanups_matvec33_q = i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out;
            1'b1 : i_next_cleanups_matvec33_q = i_cleanups_shl_matvec5_vt_join_q;
            default : i_next_cleanups_matvec33_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups_push13_matvec34(BLACKBOX,72)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    matvec_i_llvm_fpga_push_i2_cleanups_push13_0 thei_llvm_fpga_push_i2_cleanups_push13_matvec34 (
        .in_data_in(i_next_cleanups_matvec33_q),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_feedback_stall_out_13),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together88_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i2_cleanups_push13_matvec34_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i2_cleanups_push13_matvec34_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,269)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_160(CONSTANT,26)
    assign c_i2_160_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups_pop13_matvec2(BLACKBOX,63)@2
    // out out_feedback_stall_out_13@20000000
    matvec_i_llvm_fpga_pop_i2_cleanups_pop13_0 thei_llvm_fpga_pop_i2_cleanups_pop13_matvec2 (
        .in_data_in(c_i2_160_q),
        .in_dir(redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i2_cleanups_push13_matvec34_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i2_cleanups_push13_matvec34_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together88_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_matvec3_sel_x(BITSELECT,139)@2
    assign i_first_cleanup_matvec3_sel_x_b = i_llvm_fpga_pop_i2_cleanups_pop13_matvec2_out_data_out[0:0];

    // c_i6_166(CONSTANT,29)
    assign c_i6_166_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_matvec35(ADD,48)@2
    assign i_fpga_indvars_iv_next_matvec35_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27_out_data_out};
    assign i_fpga_indvars_iv_next_matvec35_b = {1'b0, c_i6_166_q};
    assign i_fpga_indvars_iv_next_matvec35_o = $unsigned(i_fpga_indvars_iv_next_matvec35_a) + $unsigned(i_fpga_indvars_iv_next_matvec35_b);
    assign i_fpga_indvars_iv_next_matvec35_q = i_fpga_indvars_iv_next_matvec35_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x(BITSELECT,92)@2
    assign bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x_b = i_fpga_indvars_iv_next_matvec35_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36(BLACKBOX,77)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    matvec_i_llvm_fpga_push_i6_fpga_indvars_iv_push9_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_matvec35_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27_out_feedback_stall_out_9),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together88_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2864(CONSTANT,30)
    assign c_i6_2864_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27(BLACKBOX,68)@2
    // out out_feedback_stall_out_9@20000000
    matvec_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27 (
        .in_data_in(c_i6_2864_q),
        .in_dir(redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i6_fpga_indvars_iv_push9_matvec36_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together88_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_matvec28_cmp_nsign(LOGICAL,174)@2
    assign i_exitcond_matvec28_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop9_matvec27_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond_matvec31(BLACKBOX,71)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    matvec_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_matvec31 (
        .in_data_in(i_exitcond_matvec28_cmp_nsign_q),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_matvec3_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist5_sync_together88_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,152)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid257_i_next_initerations_matvec0_shift_x(BITSELECT,256)@2
    assign rightShiftStage0Idx1Rng1_uid257_i_next_initerations_matvec0_shift_x_b = i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid259_i_next_initerations_matvec0_shift_x(BITJOIN,258)@2
    assign rightShiftStage0Idx1_uid259_i_next_initerations_matvec0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid257_i_next_initerations_matvec0_shift_x_b};

    // valid_fanout_reg1(REG,150)@1 + 1
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

    // valid_fanout_reg2(REG,151)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations_push12_matvec9(BLACKBOX,73)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    matvec_i_llvm_fpga_push_i2_initerations_push12_0 thei_llvm_fpga_push_i2_initerations_push12_matvec9 (
        .in_data_in(i_next_initerations_matvec8_vt_join_q),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_feedback_stall_out_12),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i2_initerations_push12_matvec9_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i2_initerations_push12_matvec9_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations_pop12_matvec7(BLACKBOX,64)@2
    // out out_feedback_stall_out_12@20000000
    matvec_i_llvm_fpga_pop_i2_initerations_pop12_0 thei_llvm_fpga_pop_i2_initerations_pop12_matvec7 (
        .in_data_in(c_i2_160_q),
        .in_dir(redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i2_initerations_push12_matvec9_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i2_initerations_push12_matvec9_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x(MUX,260)@2
    assign rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_s or i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_data_out or rightShiftStage0Idx1_uid259_i_next_initerations_matvec0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_s)
            1'b0 : rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_q = i_llvm_fpga_pop_i2_initerations_pop12_matvec7_out_data_out;
            1'b1 : rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_q = rightShiftStage0Idx1_uid259_i_next_initerations_matvec0_shift_x_q;
            default : rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations_matvec8_vt_select_0(BITSELECT,83)@2
    assign i_next_initerations_matvec8_vt_select_0_b = rightShiftStage0_uid261_i_next_initerations_matvec0_shift_x_q[0:0];

    // i_next_initerations_matvec8_vt_join(BITJOIN,82)@2
    assign i_next_initerations_matvec8_vt_join_q = {GND_q, i_next_initerations_matvec8_vt_select_0_b};

    // i_last_initeration_matvec10_sel_x(BITSELECT,142)@2
    assign i_last_initeration_matvec10_sel_x_b = i_next_initerations_matvec8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_matvec11(BLACKBOX,69)@2
    // out out_feedback_out_1@20000000
    // out out_feedback_valid_out_1@20000000
    matvec_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_matvec11 (
        .in_data_in(i_last_initeration_matvec10_sel_x_b),
        .in_feedback_stall_in_1(i_llvm_fpga_pipeline_keep_going_matvec6_out_initeration_stall_out),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_1(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_out_1),
        .out_feedback_valid_out_1(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_valid_out_1),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_matvec6(BLACKBOX,61)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    matvec_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_matvec6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_out_1),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_matvec11_out_feedback_valid_out_1),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_out_2),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_matvec31_out_feedback_valid_out_2),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_matvec6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,88)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_matvec6_out_pipeline_valid_out;

    // valid_fanout_reg7(REG,156)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together88_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist15_i_first_cleanup_xor_matvec4_q_1(DELAY,284)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_first_cleanup_xor_matvec4_q_1_q <= '0;
        end
        else
        begin
            redist15_i_first_cleanup_xor_matvec4_q_1_q <= $unsigned(i_first_cleanup_xor_matvec4_q);
        end
    end

    // c_matvec_V_local_pmem(CONSTANT,32)
    assign c_matvec_V_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx1_matvec0_upper_bits_x_merged_bit_select(BITSELECT,266)@3
    assign i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_V_local_pmem_q[63:7];
    assign i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_V_local_pmem_q[6:0];

    // c_i32_062(CONSTANT,27)
    assign c_i32_062_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,155)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together88_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg11(REG,160)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist5_sync_together88_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2(DELAY,281)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q <= '0;
        end
        else
        begin
            redist12_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q <= $unsigned(redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q);
        end
    end

    // c_i32_163(CONSTANT,28)
    assign c_i32_163_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_matvec25(ADD,57)@3
    assign i_inc_matvec25_a = {1'b0, i_llvm_fpga_pop_i32_j_011_pop11_matvec15_out_data_out};
    assign i_inc_matvec25_b = {1'b0, c_i32_163_q};
    assign i_inc_matvec25_o = $unsigned(i_inc_matvec25_a) + $unsigned(i_inc_matvec25_b);
    assign i_inc_matvec25_q = i_inc_matvec25_o[32:0];

    // bgTrunc_i_inc_matvec25_sel_x(BITSELECT,93)@3
    assign bgTrunc_i_inc_matvec25_sel_x_b = i_inc_matvec25_q[31:0];

    // i_llvm_fpga_push_i32_j_011_push11_matvec26(BLACKBOX,75)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    matvec_i_llvm_fpga_push_i32_j_011_push11_0 thei_llvm_fpga_push_i32_j_011_push11_matvec26 (
        .in_data_in(bgTrunc_i_inc_matvec25_sel_x_b),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_j_011_pop11_matvec15_out_feedback_stall_out_11),
        .in_keep_going(redist12_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_j_011_push11_matvec26_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_j_011_push11_matvec26_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together88_aunroll_x_in_c0_eni3_1_tpl_2(DELAY,270)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together88_aunroll_x_in_c0_eni3_1_tpl_2_q <= '0;
        end
        else
        begin
            redist1_sync_together88_aunroll_x_in_c0_eni3_1_tpl_2_q <= $unsigned(redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j_011_pop11_matvec15(BLACKBOX,66)@3
    // out out_feedback_stall_out_11@20000000
    matvec_i_llvm_fpga_pop_i32_j_011_pop11_0 thei_llvm_fpga_pop_i32_j_011_pop11_matvec15 (
        .in_data_in(c_i32_062_q),
        .in_dir(redist1_sync_together88_aunroll_x_in_c0_eni3_1_tpl_2_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_j_011_push11_matvec26_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_j_011_push11_matvec26_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_011_pop11_matvec15_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_j_011_pop11_matvec15_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_matvec16_sel_x(BITSELECT,141)@3
    assign i_idxprom_matvec16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_011_pop11_matvec15_out_data_out[31:0]};

    // i_idxprom_matvec16_vt_select_31(BITSELECT,56)@3
    assign i_idxprom_matvec16_vt_select_31_b = i_idxprom_matvec16_sel_x_b[31:0];

    // i_idxprom_matvec16_vt_join(BITJOIN,55)@3
    assign i_idxprom_matvec16_vt_join_q = {c_i32_062_q, i_idxprom_matvec16_vt_select_31_b};

    // i_arrayidx1_matvec0_dupName_0_trunc_sel_x(BITSELECT,133)@3
    assign i_arrayidx1_matvec0_dupName_0_trunc_sel_x_b = i_idxprom_matvec16_vt_join_q[6:0];

    // i_arrayidx1_matvec0_narrow_x(BITSELECT,126)@3
    assign i_arrayidx1_matvec0_narrow_x_b = i_arrayidx1_matvec0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx1_matvec0_shift_join_x(BITJOIN,127)@3
    assign i_arrayidx1_matvec0_shift_join_x_q = {i_arrayidx1_matvec0_narrow_x_b, i_arrayidx102_matvec19_vt_const_1_q};

    // i_arrayidx1_matvec0_add_x(ADD,123)@3
    assign i_arrayidx1_matvec0_add_x_a = {1'b0, i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_matvec0_add_x_b = {1'b0, i_arrayidx1_matvec0_shift_join_x_q};
    assign i_arrayidx1_matvec0_add_x_o = $unsigned(i_arrayidx1_matvec0_add_x_a) + $unsigned(i_arrayidx1_matvec0_add_x_b);
    assign i_arrayidx1_matvec0_add_x_q = i_arrayidx1_matvec0_add_x_o[7:0];

    // i_arrayidx1_matvec0_dupName_2_trunc_sel_x(BITSELECT,134)@3
    assign i_arrayidx1_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx1_matvec0_add_x_q[6:0];

    // i_arrayidx1_matvec0_append_upper_bits_x(BITJOIN,124)@3
    assign i_arrayidx1_matvec0_append_upper_bits_x_q = {i_arrayidx1_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx1_matvec0_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_matvec17_vt_select_63(BITSELECT,41)@3
    assign i_arrayidx1_matvec17_vt_select_63_b = i_arrayidx1_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx102_matvec19_vt_const_1(CONSTANT,36)
    assign i_arrayidx102_matvec19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_matvec17_vt_join(BITJOIN,40)@3
    assign i_arrayidx1_matvec17_vt_join_q = {i_arrayidx1_matvec17_vt_select_63_b, i_arrayidx102_matvec19_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_matvec3_matvec18(BLACKBOX,59)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_matvec3_matvec_avm_address@20000000
    // out out_unnamed_matvec3_matvec_avm_burstcount@20000000
    // out out_unnamed_matvec3_matvec_avm_byteenable@20000000
    // out out_unnamed_matvec3_matvec_avm_enable@20000000
    // out out_unnamed_matvec3_matvec_avm_read@20000000
    // out out_unnamed_matvec3_matvec_avm_write@20000000
    // out out_unnamed_matvec3_matvec_avm_writedata@20000000
    matvec_i_llvm_fpga_mem_unnamed_3_matvec0 thei_llvm_fpga_mem_unnamed_matvec3_matvec18 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_matvec17_vt_join_q),
        .in_i_predicate(redist15_i_first_cleanup_xor_matvec4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_unnamed_matvec3_matvec_avm_readdata(in_unnamed_matvec3_matvec_avm_readdata),
        .in_unnamed_matvec3_matvec_avm_readdatavalid(in_unnamed_matvec3_matvec_avm_readdatavalid),
        .in_unnamed_matvec3_matvec_avm_waitrequest(in_unnamed_matvec3_matvec_avm_waitrequest),
        .in_unnamed_matvec3_matvec_avm_writeack(in_unnamed_matvec3_matvec_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_matvec3_matvec_avm_address(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_address),
        .out_unnamed_matvec3_matvec_avm_burstcount(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_burstcount),
        .out_unnamed_matvec3_matvec_avm_byteenable(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_byteenable),
        .out_unnamed_matvec3_matvec_avm_enable(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_enable),
        .out_unnamed_matvec3_matvec_avm_read(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_read),
        .out_unnamed_matvec3_matvec_avm_write(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_write),
        .out_unnamed_matvec3_matvec_avm_writedata(i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,97)
    assign out_unnamed_matvec3_matvec_avm_address = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_address;
    assign out_unnamed_matvec3_matvec_avm_enable = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_enable;
    assign out_unnamed_matvec3_matvec_avm_read = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_read;
    assign out_unnamed_matvec3_matvec_avm_write = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_write;
    assign out_unnamed_matvec3_matvec_avm_writedata = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_writedata;
    assign out_unnamed_matvec3_matvec_avm_byteenable = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_byteenable;
    assign out_unnamed_matvec3_matvec_avm_burstcount = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_unnamed_matvec3_matvec_avm_burstcount;

    // valid_fanout_reg8(REG,157)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together88_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_matvec_M_local_pmem(CONSTANT,31)
    assign c_matvec_M_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx102_matvec0_upper_bits_x_merged_bit_select(BITSELECT,265)@3
    assign i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_M_local_pmem_q[63:12];
    assign i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_M_local_pmem_q[11:0];

    // i_arrayidx102_matvec0_dupName_3_trunc_sel_x(BITSELECT,121)@3
    assign i_arrayidx102_matvec0_dupName_3_trunc_sel_x_b = i_idxprom_matvec16_vt_join_q[11:0];

    // i_arrayidx102_matvec0_narrow_x(BITSELECT,104)@3
    assign i_arrayidx102_matvec0_narrow_x_b = i_arrayidx102_matvec0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx102_matvec0_shift_join_x(BITJOIN,105)@3
    assign i_arrayidx102_matvec0_shift_join_x_q = {i_arrayidx102_matvec0_narrow_x_b, i_arrayidx102_matvec19_vt_const_1_q};

    // i_arrayidx102_matvec0_mult_multconst_x(CONSTANT,116)
    assign i_arrayidx102_matvec0_mult_multconst_x_q = $unsigned(5'b00000);

    // valid_fanout_reg4(REG,153)@1 + 1
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

    // valid_fanout_reg5(REG,154)@1 + 1
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

    // i_llvm_fpga_push_i32_i_013_pop815_push15_matvec13(BLACKBOX,74)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    matvec_i_llvm_fpga_push_i32_i_013_pop815_push15_0 thei_llvm_fpga_push_i32_i_013_pop815_push15_matvec13 (
        .in_data_in(i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12_out_data_out),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12_out_feedback_stall_out_15),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_i_013_pop815_push15_matvec13_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_i_013_pop815_push15_matvec13_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together88_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,272)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together88_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together88_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12(BLACKBOX,65)@2
    // out out_feedback_stall_out_15@20000000
    matvec_i_llvm_fpga_pop_i32_i_013_pop815_pop15_0 thei_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12 (
        .in_data_in(redist3_sync_together88_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_i_013_pop815_push15_matvec13_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_i_013_pop815_push15_matvec13_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom7_matvec14_sel_x(BITSELECT,140)@2
    assign i_idxprom7_matvec14_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_013_pop815_pop15_matvec12_out_data_out[31:0]};

    // i_idxprom7_matvec14_vt_select_31(BITSELECT,52)@2
    assign i_idxprom7_matvec14_vt_select_31_b = i_idxprom7_matvec14_sel_x_b[31:0];

    // i_idxprom7_matvec14_vt_join(BITJOIN,51)@2
    assign i_idxprom7_matvec14_vt_join_q = {c_i32_062_q, i_idxprom7_matvec14_vt_select_31_b};

    // i_arrayidx102_matvec0_dupName_0_trunc_sel_x(BITSELECT,118)@2
    assign i_arrayidx102_matvec0_dupName_0_trunc_sel_x_b = i_idxprom7_matvec14_vt_join_q[11:0];

    // xIfSign_mergedSignalTM_uid215_i_arrayidx102_matvec0_mult_x(BITJOIN,214)@2
    assign xIfSign_mergedSignalTM_uid215_i_arrayidx102_matvec0_mult_x_q = {GND_q, i_arrayidx102_matvec0_dupName_0_trunc_sel_x_b};

    // padACst_uid219_i_arrayidx102_matvec0_mult_x(CONSTANT,218)
    assign padACst_uid219_i_arrayidx102_matvec0_mult_x_q = $unsigned(4'b0000);

    // aPostPad_uid220_i_arrayidx102_matvec0_mult_x(BITJOIN,219)@2
    assign aPostPad_uid220_i_arrayidx102_matvec0_mult_x_q = {xIfSign_mergedSignalTM_uid215_i_arrayidx102_matvec0_mult_x_q, padACst_uid219_i_arrayidx102_matvec0_mult_x_q};

    // sub_uid221_i_arrayidx102_matvec0_mult_x(SUB,220)@2
    assign sub_uid221_i_arrayidx102_matvec0_mult_x_a = $unsigned({{1{aPostPad_uid220_i_arrayidx102_matvec0_mult_x_q[16]}}, aPostPad_uid220_i_arrayidx102_matvec0_mult_x_q});
    assign sub_uid221_i_arrayidx102_matvec0_mult_x_b = $unsigned({{5{xIfSign_mergedSignalTM_uid215_i_arrayidx102_matvec0_mult_x_q[12]}}, xIfSign_mergedSignalTM_uid215_i_arrayidx102_matvec0_mult_x_q});
    assign sub_uid221_i_arrayidx102_matvec0_mult_x_o = $unsigned($signed(sub_uid221_i_arrayidx102_matvec0_mult_x_a) - $signed(sub_uid221_i_arrayidx102_matvec0_mult_x_b));
    assign sub_uid221_i_arrayidx102_matvec0_mult_x_q = sub_uid221_i_arrayidx102_matvec0_mult_x_o[17:0];

    // sR_bottomRange_uid225_i_arrayidx102_matvec0_mult_x(BITSELECT,224)@2
    assign sR_bottomRange_uid225_i_arrayidx102_matvec0_mult_x_in = $unsigned(sub_uid221_i_arrayidx102_matvec0_mult_x_q[15:0]);
    assign sR_bottomRange_uid225_i_arrayidx102_matvec0_mult_x_b = $unsigned(sR_bottomRange_uid225_i_arrayidx102_matvec0_mult_x_in[15:0]);

    // sR_bottomExtension_uid224_i_arrayidx102_matvec0_mult_x(CONSTANT,223)
    assign sR_bottomExtension_uid224_i_arrayidx102_matvec0_mult_x_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid226_i_arrayidx102_matvec0_mult_x(BITJOIN,225)@2
    assign sR_mergedSignalTM_uid226_i_arrayidx102_matvec0_mult_x_q = {sR_bottomRange_uid225_i_arrayidx102_matvec0_mult_x_b, sR_bottomExtension_uid224_i_arrayidx102_matvec0_mult_x_q};

    // i_arrayidx102_matvec0_mult_extender_x(BITJOIN,115)@2
    assign i_arrayidx102_matvec0_mult_extender_x_q = {i_arrayidx102_matvec0_mult_multconst_x_q, sR_mergedSignalTM_uid226_i_arrayidx102_matvec0_mult_x_q};

    // i_arrayidx102_matvec0_dupName_1_trunc_sel_x(BITSELECT,119)@2
    assign i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b = i_arrayidx102_matvec0_mult_extender_x_q[11:0];

    // redist7_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1(DELAY,276)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist7_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx102_matvec0_add_x(ADD,99)@3
    assign i_arrayidx102_matvec0_add_x_a = {1'b0, i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx102_matvec0_add_x_b = {1'b0, redist7_i_arrayidx102_matvec0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx102_matvec0_add_x_o = $unsigned(i_arrayidx102_matvec0_add_x_a) + $unsigned(i_arrayidx102_matvec0_add_x_b);
    assign i_arrayidx102_matvec0_add_x_q = i_arrayidx102_matvec0_add_x_o[12:0];

    // i_arrayidx102_matvec0_dupName_2_trunc_sel_x(BITSELECT,120)@3
    assign i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx102_matvec0_add_x_q[11:0];

    // i_arrayidx102_matvec0_dupName_0_add_x(ADD,109)@3
    assign i_arrayidx102_matvec0_dupName_0_add_x_a = {1'b0, i_arrayidx102_matvec0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx102_matvec0_dupName_0_add_x_b = {1'b0, i_arrayidx102_matvec0_shift_join_x_q};
    assign i_arrayidx102_matvec0_dupName_0_add_x_o = $unsigned(i_arrayidx102_matvec0_dupName_0_add_x_a) + $unsigned(i_arrayidx102_matvec0_dupName_0_add_x_b);
    assign i_arrayidx102_matvec0_dupName_0_add_x_q = i_arrayidx102_matvec0_dupName_0_add_x_o[12:0];

    // i_arrayidx102_matvec0_dupName_5_trunc_sel_x(BITSELECT,122)@3
    assign i_arrayidx102_matvec0_dupName_5_trunc_sel_x_b = i_arrayidx102_matvec0_dupName_0_add_x_q[11:0];

    // i_arrayidx102_matvec0_append_upper_bits_x(BITJOIN,100)@3
    assign i_arrayidx102_matvec0_append_upper_bits_x_q = {i_arrayidx102_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx102_matvec0_dupName_5_trunc_sel_x_b};

    // i_arrayidx102_matvec19_vt_select_63(BITSELECT,38)@3
    assign i_arrayidx102_matvec19_vt_select_63_b = i_arrayidx102_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx102_matvec19_vt_join(BITJOIN,37)@3
    assign i_arrayidx102_matvec19_vt_join_q = {i_arrayidx102_matvec19_vt_select_63_b, i_arrayidx102_matvec19_vt_const_1_q};

    // i_llvm_fpga_mem_unnamed_matvec4_matvec20(BLACKBOX,60)@3
    // in in_i_stall@20000000
    // out out_o_readdata@7
    // out out_o_stall@6
    // out out_o_valid@7
    // out out_unnamed_matvec4_matvec_avm_address@20000000
    // out out_unnamed_matvec4_matvec_avm_burstcount@20000000
    // out out_unnamed_matvec4_matvec_avm_byteenable@20000000
    // out out_unnamed_matvec4_matvec_avm_enable@20000000
    // out out_unnamed_matvec4_matvec_avm_read@20000000
    // out out_unnamed_matvec4_matvec_avm_write@20000000
    // out out_unnamed_matvec4_matvec_avm_writedata@20000000
    matvec_i_llvm_fpga_mem_unnamed_4_matvec0 thei_llvm_fpga_mem_unnamed_matvec4_matvec20 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx102_matvec19_vt_join_q),
        .in_i_predicate(redist15_i_first_cleanup_xor_matvec4_q_1_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg8_q),
        .in_unnamed_matvec4_matvec_avm_readdata(in_unnamed_matvec4_matvec_avm_readdata),
        .in_unnamed_matvec4_matvec_avm_readdatavalid(in_unnamed_matvec4_matvec_avm_readdatavalid),
        .in_unnamed_matvec4_matvec_avm_waitrequest(in_unnamed_matvec4_matvec_avm_waitrequest),
        .in_unnamed_matvec4_matvec_avm_writeack(in_unnamed_matvec4_matvec_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .out_unnamed_matvec4_matvec_avm_address(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_address),
        .out_unnamed_matvec4_matvec_avm_burstcount(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_burstcount),
        .out_unnamed_matvec4_matvec_avm_byteenable(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_byteenable),
        .out_unnamed_matvec4_matvec_avm_enable(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_enable),
        .out_unnamed_matvec4_matvec_avm_read(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_read),
        .out_unnamed_matvec4_matvec_avm_write(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_write),
        .out_unnamed_matvec4_matvec_avm_writedata(i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_1_ext_sig_sync_out_x(GPOUT,98)
    assign out_unnamed_matvec4_matvec_avm_address = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_address;
    assign out_unnamed_matvec4_matvec_avm_enable = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_enable;
    assign out_unnamed_matvec4_matvec_avm_read = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_read;
    assign out_unnamed_matvec4_matvec_avm_write = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_write;
    assign out_unnamed_matvec4_matvec_avm_writedata = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_writedata;
    assign out_unnamed_matvec4_matvec_avm_byteenable = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_byteenable;
    assign out_unnamed_matvec4_matvec_avm_burstcount = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_unnamed_matvec4_matvec_avm_burstcount;

    // redist6_sync_together88_aunroll_x_in_i_valid_9(DELAY,275)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together88_aunroll_x_in_i_valid_9 ( .xin(redist5_sync_together88_aunroll_x_in_i_valid_1_q), .xout(redist6_sync_together88_aunroll_x_in_i_valid_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,149)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together88_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg12(REG,161)@1 + 1
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

    // valid_fanout_reg13(REG,162)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp414_push14_matvec39(BLACKBOX,70)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    matvec_i_llvm_fpga_push_i1_notcmp414_push14_0 thei_llvm_fpga_push_i1_notcmp414_push14_matvec39 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_feedback_stall_out_14),
        .in_keep_going(redist11_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_notcmp414_push14_matvec39_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_notcmp414_push14_matvec39_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together88_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,273)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together88_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together88_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38(BLACKBOX,62)@2
    // out out_feedback_stall_out_14@20000000
    matvec_i_llvm_fpga_pop_i1_notcmp414_pop14_0 thei_llvm_fpga_pop_i1_notcmp414_pop14_matvec38 (
        .in_data_in(redist4_sync_together88_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together88_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i1_notcmp414_push14_matvec39_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i1_notcmp414_push14_matvec39_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out_9(DELAY,279)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out_9 ( .xin(i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out), .xout(redist10_i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_masked_matvec37(LOGICAL,78)@2 + 1
    assign i_masked_matvec37_qi = i_notcmp_matvec30_q & i_first_cleanup_matvec3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_matvec37_delay ( .xin(i_masked_matvec37_qi), .xout(i_masked_matvec37_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist9_i_masked_matvec37_q_9(DELAY,278)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_masked_matvec37_q_9 ( .xin(i_masked_matvec37_q), .xout(redist9_i_masked_matvec37_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg9(REG,158)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together88_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg10(REG,159)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist6_sync_together88_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i32_tmp_012_push10_matvec24(BLACKBOX,76)@11
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    matvec_i_llvm_fpga_push_i32_tmp_012_push10_0 thei_llvm_fpga_push_i32_tmp_012_push10_matvec24 (
        .in_data_in(bgTrunc_i_add_matvec23_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i32_tmp_012_pop10_matvec22_out_feedback_stall_out_10),
        .in_keep_going(redist13_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_10_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i32_tmp_012_push10_matvec24_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i32_tmp_012_push10_matvec24_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together88_aunroll_x_in_c0_eni3_1_tpl_10(DELAY,271)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_sync_together88_aunroll_x_in_c0_eni3_1_tpl_10 ( .xin(redist1_sync_together88_aunroll_x_in_c0_eni3_1_tpl_2_q), .xout(redist2_sync_together88_aunroll_x_in_c0_eni3_1_tpl_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_tmp_012_pop10_matvec22(BLACKBOX,67)@11
    // out out_feedback_stall_out_10@20000000
    matvec_i_llvm_fpga_pop_i32_tmp_012_pop10_0 thei_llvm_fpga_pop_i32_tmp_012_pop10_matvec22 (
        .in_data_in(c_i32_062_q),
        .in_dir(redist2_sync_together88_aunroll_x_in_c0_eni3_1_tpl_10_q),
        .in_feedback_in_10(i_llvm_fpga_push_i32_tmp_012_push10_matvec24_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i32_tmp_012_push10_matvec24_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_tmp_012_pop10_matvec22_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i32_tmp_012_pop10_matvec22_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_matvec21_bs2_merged_bit_select(BITSELECT,267)@7
    assign i_mul_matvec21_bs2_merged_bit_select_b = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_o_readdata[31:18];
    assign i_mul_matvec21_bs2_merged_bit_select_c = i_llvm_fpga_mem_unnamed_matvec3_matvec18_out_o_readdata[17:0];

    // i_mul_matvec21_bs1_merged_bit_select(BITSELECT,268)@7
    assign i_mul_matvec21_bs1_merged_bit_select_b = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_o_readdata[31:18];
    assign i_mul_matvec21_bs1_merged_bit_select_c = i_llvm_fpga_mem_unnamed_matvec4_matvec20_out_o_readdata[17:0];

    // i_mul_matvec21_ma3_cma(CHAINMULTADD,264)@7 + 3
    assign i_mul_matvec21_ma3_cma_reset = ~ (resetn);
    assign i_mul_matvec21_ma3_cma_ena0 = 1'b1;
    assign i_mul_matvec21_ma3_cma_ena1 = i_mul_matvec21_ma3_cma_ena0;
    assign i_mul_matvec21_ma3_cma_ena2 = i_mul_matvec21_ma3_cma_ena0;

    assign i_mul_matvec21_ma3_cma_a0 = i_mul_matvec21_bs1_merged_bit_select_b;
    assign i_mul_matvec21_ma3_cma_c0 = i_mul_matvec21_bs2_merged_bit_select_c;
    assign i_mul_matvec21_ma3_cma_a1 = i_mul_matvec21_bs2_merged_bit_select_b;
    assign i_mul_matvec21_ma3_cma_c1 = i_mul_matvec21_bs1_merged_bit_select_c;
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
    ) i_mul_matvec21_ma3_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_matvec21_ma3_cma_ena2, i_mul_matvec21_ma3_cma_ena1, i_mul_matvec21_ma3_cma_ena0 }),
        .aclr({ i_mul_matvec21_ma3_cma_reset, i_mul_matvec21_ma3_cma_reset }),
        .ay(i_mul_matvec21_ma3_cma_a1),
        .by(i_mul_matvec21_ma3_cma_a0),
        .ax(i_mul_matvec21_ma3_cma_c1),
        .bx(i_mul_matvec21_ma3_cma_c0),
        .resulta(i_mul_matvec21_ma3_cma_s0),
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
    i_mul_matvec21_ma3_cma_delay ( .xin(i_mul_matvec21_ma3_cma_s0), .xout(i_mul_matvec21_ma3_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_matvec21_ma3_cma_q = $unsigned(i_mul_matvec21_ma3_cma_qq[32:0]);

    // i_mul_matvec21_sums_align_1(BITSHIFT,187)@10
    assign i_mul_matvec21_sums_align_1_qint = { i_mul_matvec21_ma3_cma_q, 18'b000000000000000000 };
    assign i_mul_matvec21_sums_align_1_q = i_mul_matvec21_sums_align_1_qint[50:0];

    // i_mul_matvec21_im0_cma(CHAINMULTADD,262)@7 + 3
    assign i_mul_matvec21_im0_cma_reset = ~ (resetn);
    assign i_mul_matvec21_im0_cma_ena0 = 1'b1;
    assign i_mul_matvec21_im0_cma_ena1 = i_mul_matvec21_im0_cma_ena0;
    assign i_mul_matvec21_im0_cma_ena2 = i_mul_matvec21_im0_cma_ena0;

    assign i_mul_matvec21_im0_cma_a0 = i_mul_matvec21_bs1_merged_bit_select_b;
    assign i_mul_matvec21_im0_cma_c0 = i_mul_matvec21_bs2_merged_bit_select_b;
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
    ) i_mul_matvec21_im0_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_matvec21_im0_cma_ena2, i_mul_matvec21_im0_cma_ena1, i_mul_matvec21_im0_cma_ena0 }),
        .aclr({ i_mul_matvec21_im0_cma_reset, i_mul_matvec21_im0_cma_reset }),
        .ay(i_mul_matvec21_im0_cma_a0),
        .ax(i_mul_matvec21_im0_cma_c0),
        .resulta(i_mul_matvec21_im0_cma_s0),
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
    i_mul_matvec21_im0_cma_delay ( .xin(i_mul_matvec21_im0_cma_s0), .xout(i_mul_matvec21_im0_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_matvec21_im0_cma_q = $unsigned(i_mul_matvec21_im0_cma_qq[27:0]);

    // i_mul_matvec21_im8_cma(CHAINMULTADD,263)@7 + 3
    assign i_mul_matvec21_im8_cma_reset = ~ (resetn);
    assign i_mul_matvec21_im8_cma_ena0 = 1'b1;
    assign i_mul_matvec21_im8_cma_ena1 = i_mul_matvec21_im8_cma_ena0;
    assign i_mul_matvec21_im8_cma_ena2 = i_mul_matvec21_im8_cma_ena0;

    assign i_mul_matvec21_im8_cma_a0 = i_mul_matvec21_bs1_merged_bit_select_c;
    assign i_mul_matvec21_im8_cma_c0 = i_mul_matvec21_bs2_merged_bit_select_c;
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
    ) i_mul_matvec21_im8_cma_DSP0 (
        .clk({clock,clock,clock}),
        .ena({ i_mul_matvec21_im8_cma_ena2, i_mul_matvec21_im8_cma_ena1, i_mul_matvec21_im8_cma_ena0 }),
        .aclr({ i_mul_matvec21_im8_cma_reset, i_mul_matvec21_im8_cma_reset }),
        .ay(i_mul_matvec21_im8_cma_a0),
        .ax(i_mul_matvec21_im8_cma_c0),
        .resulta(i_mul_matvec21_im8_cma_s0),
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
    i_mul_matvec21_im8_cma_delay ( .xin(i_mul_matvec21_im8_cma_s0), .xout(i_mul_matvec21_im8_cma_qq), .clk(clock), .aclr(resetn), .ena(1'b1) );
    assign i_mul_matvec21_im8_cma_q = $unsigned(i_mul_matvec21_im8_cma_qq[35:0]);

    // i_mul_matvec21_sums_join_0(BITJOIN,186)@10
    assign i_mul_matvec21_sums_join_0_q = {i_mul_matvec21_im0_cma_q, i_mul_matvec21_im8_cma_q};

    // i_mul_matvec21_sums_result_add_0_0(ADD,189)@10
    assign i_mul_matvec21_sums_result_add_0_0_a = {1'b0, i_mul_matvec21_sums_join_0_q};
    assign i_mul_matvec21_sums_result_add_0_0_b = {14'b00000000000000, i_mul_matvec21_sums_align_1_q};
    assign i_mul_matvec21_sums_result_add_0_0_o = $unsigned(i_mul_matvec21_sums_result_add_0_0_a) + $unsigned(i_mul_matvec21_sums_result_add_0_0_b);
    assign i_mul_matvec21_sums_result_add_0_0_q = i_mul_matvec21_sums_result_add_0_0_o[64:0];

    // bgTrunc_i_mul_matvec21_sel_x(BITSELECT,94)@10
    assign bgTrunc_i_mul_matvec21_sel_x_in = i_mul_matvec21_sums_result_add_0_0_q[63:0];
    assign bgTrunc_i_mul_matvec21_sel_x_b = bgTrunc_i_mul_matvec21_sel_x_in[31:0];

    // redist8_bgTrunc_i_mul_matvec21_sel_x_b_1(DELAY,277)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_bgTrunc_i_mul_matvec21_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist8_bgTrunc_i_mul_matvec21_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_matvec21_sel_x_b);
        end
    end

    // i_add_matvec23(ADD,35)@11
    assign i_add_matvec23_a = {1'b0, redist8_bgTrunc_i_mul_matvec21_sel_x_b_1_q};
    assign i_add_matvec23_b = {1'b0, i_llvm_fpga_pop_i32_tmp_012_pop10_matvec22_out_data_out};
    assign i_add_matvec23_o = $unsigned(i_add_matvec23_a) + $unsigned(i_add_matvec23_b);
    assign i_add_matvec23_q = i_add_matvec23_o[32:0];

    // bgTrunc_i_add_matvec23_sel_x(BITSELECT,91)@11
    assign bgTrunc_i_add_matvec23_sel_x_b = i_add_matvec23_q[31:0];

    // redist14_i_idxprom7_matvec14_vt_join_q_9_notEnable(LOGICAL,291)
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_notEnable_q = $unsigned(~ (VCC_q));

    // redist14_i_idxprom7_matvec14_vt_join_q_9_nor(LOGICAL,292)
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_nor_q = ~ (redist14_i_idxprom7_matvec14_vt_join_q_9_notEnable_q | redist14_i_idxprom7_matvec14_vt_join_q_9_sticky_ena_q);

    // redist14_i_idxprom7_matvec14_vt_join_q_9_mem_last(CONSTANT,288)
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_mem_last_q = $unsigned(4'b0110);

    // redist14_i_idxprom7_matvec14_vt_join_q_9_cmp(LOGICAL,289)
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_cmp_b = {1'b0, redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_q};
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_cmp_q = $unsigned(redist14_i_idxprom7_matvec14_vt_join_q_9_mem_last_q == redist14_i_idxprom7_matvec14_vt_join_q_9_cmp_b ? 1'b1 : 1'b0);

    // redist14_i_idxprom7_matvec14_vt_join_q_9_cmpReg(REG,290)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_cmpReg_q <= $unsigned(1'b0);
        end
        else
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_cmpReg_q <= $unsigned(redist14_i_idxprom7_matvec14_vt_join_q_9_cmp_q);
        end
    end

    // redist14_i_idxprom7_matvec14_vt_join_q_9_sticky_ena(REG,293)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_sticky_ena_q <= $unsigned(1'b0);
        end
        else if (redist14_i_idxprom7_matvec14_vt_join_q_9_nor_q == 1'b1)
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_sticky_ena_q <= $unsigned(redist14_i_idxprom7_matvec14_vt_join_q_9_cmpReg_q);
        end
    end

    // redist14_i_idxprom7_matvec14_vt_join_q_9_enaAnd(LOGICAL,294)
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_enaAnd_q = redist14_i_idxprom7_matvec14_vt_join_q_9_sticky_ena_q & VCC_q;

    // redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt(COUNTER,286)
    // low=0, high=7, step=1, init=0
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_i <= 3'd0;
        end
        else
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_i <= $unsigned(redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_i) + $unsigned(3'd1);
        end
    end
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_q = redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_i[2:0];

    // redist14_i_idxprom7_matvec14_vt_join_q_9_wraddr(REG,287)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_wraddr_q <= $unsigned(3'b111);
        end
        else
        begin
            redist14_i_idxprom7_matvec14_vt_join_q_9_wraddr_q <= $unsigned(redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_q);
        end
    end

    // redist14_i_idxprom7_matvec14_vt_join_q_9_mem(DUALMEM,285)
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_mem_ia = $unsigned(i_idxprom7_matvec14_vt_join_q);
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_mem_aa = redist14_i_idxprom7_matvec14_vt_join_q_9_wraddr_q;
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_mem_ab = redist14_i_idxprom7_matvec14_vt_join_q_9_rdcnt_q;
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_mem_reset0 = ~ (resetn);
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
    ) redist14_i_idxprom7_matvec14_vt_join_q_9_mem_dmem (
        .clocken1(redist14_i_idxprom7_matvec14_vt_join_q_9_enaAnd_q[0]),
        .clocken0(1'b1),
        .clock0(clock),
        .aclr1(redist14_i_idxprom7_matvec14_vt_join_q_9_mem_reset0),
        .clock1(clock),
        .address_a(redist14_i_idxprom7_matvec14_vt_join_q_9_mem_aa),
        .data_a(redist14_i_idxprom7_matvec14_vt_join_q_9_mem_ia),
        .wren_a(VCC_q[0]),
        .address_b(redist14_i_idxprom7_matvec14_vt_join_q_9_mem_ab),
        .q_b(redist14_i_idxprom7_matvec14_vt_join_q_9_mem_iq),
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
    assign redist14_i_idxprom7_matvec14_vt_join_q_9_mem_q = redist14_i_idxprom7_matvec14_vt_join_q_9_mem_iq[63:0];

    // redist13_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_10(DELAY,282)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_10 ( .xin(redist12_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_2_q), .xout(redist13_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_10_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,147)@11
    assign out_c0_exi5_0_tpl = GND_q;
    assign out_c0_exi5_1_tpl = redist13_i_llvm_fpga_pipeline_keep_going_matvec6_out_data_out_10_q;
    assign out_c0_exi5_2_tpl = redist14_i_idxprom7_matvec14_vt_join_q_9_mem_q;
    assign out_c0_exi5_3_tpl = bgTrunc_i_add_matvec23_sel_x_b;
    assign out_c0_exi5_4_tpl = redist9_i_masked_matvec37_q_9_q;
    assign out_c0_exi5_5_tpl = redist10_i_llvm_fpga_pop_i1_notcmp414_pop14_matvec38_out_data_out_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_matvec1 = GND_q;

endmodule
