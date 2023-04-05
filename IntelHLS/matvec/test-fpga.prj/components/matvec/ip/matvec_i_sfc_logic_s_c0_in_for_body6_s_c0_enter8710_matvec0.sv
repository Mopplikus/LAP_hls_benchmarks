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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_matvecs_c0_enter8710_matvec0
// Created for function/kernel matvec
// SystemVerilog created on Wed Apr  5 15:28:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_i_sfc_logic_s_c0_in_for_body6_s_c0_enter8710_matvec0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_matvec6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_matvec6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [0:0] out_c0_exi7_2_tpl,
    output wire [63:0] out_c0_exi7_3_tpl,
    output wire [63:0] out_c0_exi7_4_tpl,
    output wire [63:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_matvec1,
    input wire [0:0] in_c0_eni3_0_tpl,
    input wire [0:0] in_c0_eni3_1_tpl,
    input wire [31:0] in_c0_eni3_2_tpl,
    input wire [0:0] in_c0_eni3_3_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [1:0] c_i2_138_q;
    wire [31:0] c_i32_040_q;
    wire [31:0] c_i32_141_q;
    wire [5:0] c_i6_144_q;
    wire [5:0] c_i6_2842_q;
    wire [63:0] c_matvec_M_local_pmem_q;
    wire [1:0] i_arrayidx121_matvec19_vt_const_1_q;
    wire [63:0] i_arrayidx121_matvec19_vt_join_q;
    wire [61:0] i_arrayidx121_matvec19_vt_select_63_b;
    wire [1:0] i_cleanups_shl50_matvec5_vt_join_q;
    wire [0:0] i_cleanups_shl50_matvec5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor52_matvec4_q;
    wire [6:0] i_fpga_indvars_iv_next_matvec30_a;
    wire [6:0] i_fpga_indvars_iv_next_matvec30_b;
    logic [6:0] i_fpga_indvars_iv_next_matvec30_o;
    wire [6:0] i_fpga_indvars_iv_next_matvec30_q;
    wire [63:0] i_idxprom7_matvec16_vt_join_q;
    wire [31:0] i_idxprom7_matvec16_vt_select_31_b;
    wire [63:0] i_idxprom_matvec14_vt_join_q;
    wire [31:0] i_idxprom_matvec14_vt_select_31_b;
    wire [32:0] i_inc_matvec20_a;
    wire [32:0] i_inc_matvec20_b;
    logic [32:0] i_inc_matvec20_o;
    wire [32:0] i_inc_matvec20_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a30i32_m3417_matvec17_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_feedback_stall_out_26;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_feedback_stall_out_25;
    wire [1:0] i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_feedback_stall_out_27;
    wire [31:0] i_llvm_fpga_pop_i32_j_032_pop23_matvec15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_032_pop23_matvec15_out_feedback_stall_out_23;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration48_matvec11_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration48_matvec11_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5869_push26_matvec34_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notcmp5869_push26_matvec34_out_feedback_valid_out_26;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond56_matvec26_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond56_matvec26_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i2_cleanups49_push25_matvec29_out_feedback_out_25;
    wire [0:0] i_llvm_fpga_push_i2_cleanups49_push25_matvec29_out_feedback_valid_out_25;
    wire [7:0] i_llvm_fpga_push_i2_initerations44_push24_matvec9_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i2_initerations44_push24_matvec9_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13_out_feedback_valid_out_27;
    wire [31:0] i_llvm_fpga_push_i32_j_032_push23_matvec21_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i32_j_032_push23_matvec21_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31_out_feedback_valid_out_22;
    wire [0:0] i_masked55_matvec32_qi;
    reg [0:0] i_masked55_matvec32_q;
    wire [0:0] i_next_cleanups54_matvec28_s;
    reg [1:0] i_next_cleanups54_matvec28_q;
    wire [1:0] i_next_initerations45_matvec8_vt_join_q;
    wire [0:0] i_next_initerations45_matvec8_vt_select_0_b;
    wire [0:0] i_notcmp42_matvec25_q;
    wire [0:0] i_or53_matvec27_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_matvec30_sel_x_b;
    wire [31:0] bgTrunc_i_inc_matvec20_sel_x_b;
    wire [12:0] i_arrayidx121_matvec0_add_x_a;
    wire [12:0] i_arrayidx121_matvec0_add_x_b;
    logic [12:0] i_arrayidx121_matvec0_add_x_o;
    wire [12:0] i_arrayidx121_matvec0_add_x_q;
    wire [63:0] i_arrayidx121_matvec0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx121_matvec0_narrow_x_b;
    wire [11:0] i_arrayidx121_matvec0_shift_join_x_q;
    wire [12:0] i_arrayidx121_matvec0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx121_matvec0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx121_matvec0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx121_matvec0_dupName_0_add_x_q;
    wire [23:0] i_arrayidx121_matvec0_mult_extender_x_q;
    wire [4:0] i_arrayidx121_matvec0_mult_multconst_x_q;
    wire [11:0] i_arrayidx121_matvec0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b;
    wire [11:0] i_arrayidx121_matvec0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx121_matvec0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx121_matvec0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx8_matvec0_add_x_a;
    wire [64:0] i_arrayidx8_matvec0_add_x_b;
    logic [64:0] i_arrayidx8_matvec0_add_x_o;
    wire [64:0] i_arrayidx8_matvec0_add_x_q;
    wire [61:0] i_arrayidx8_matvec0_narrow_x_b;
    wire [63:0] i_arrayidx8_matvec0_shift_join_x_q;
    wire [64:0] i_arrayidx8_matvec0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx8_matvec0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx8_matvec0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx8_matvec0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx8_matvec0_mult_extender_x_q;
    wire [56:0] i_arrayidx8_matvec0_mult_multconst_x_q;
    wire [63:0] i_arrayidx8_matvec0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_matvec0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_matvec0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup51_matvec3_sel_x_b;
    wire [63:0] i_idxprom7_matvec16_sel_x_b;
    wire [63:0] i_idxprom_matvec14_sel_x_b;
    wire [0:0] i_last_initeration47_matvec10_sel_x_b;
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
    wire [0:0] i_exitcond_matvec23_cmp_nsign_q;
    wire [12:0] xIfSign_mergedSignalTM_uid181_i_arrayidx121_matvec0_mult_x_q;
    wire [3:0] padACst_uid185_i_arrayidx121_matvec0_mult_x_q;
    wire [16:0] aPostPad_uid186_i_arrayidx121_matvec0_mult_x_q;
    wire [17:0] sub_uid187_i_arrayidx121_matvec0_mult_x_a;
    wire [17:0] sub_uid187_i_arrayidx121_matvec0_mult_x_b;
    logic [17:0] sub_uid187_i_arrayidx121_matvec0_mult_x_o;
    wire [17:0] sub_uid187_i_arrayidx121_matvec0_mult_x_q;
    wire [2:0] sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x_q;
    wire [15:0] sR_bottomRange_uid191_i_arrayidx121_matvec0_mult_x_in;
    wire [15:0] sR_bottomRange_uid191_i_arrayidx121_matvec0_mult_x_b;
    wire [18:0] sR_mergedSignalTM_uid192_i_arrayidx121_matvec0_mult_x_q;
    wire [9:0] i_arrayidx8_matvec0_mult_x_bs1_b;
    wire [53:0] i_arrayidx8_matvec0_mult_x_bs4_in;
    wire [17:0] i_arrayidx8_matvec0_mult_x_bs4_b;
    wire [35:0] i_arrayidx8_matvec0_mult_x_bs7_in;
    wire [17:0] i_arrayidx8_matvec0_mult_x_bs7_b;
    wire [17:0] i_arrayidx8_matvec0_mult_x_bs10_in;
    wire [17:0] i_arrayidx8_matvec0_mult_x_bs10_b;
    wire [35:0] i_arrayidx8_matvec0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx8_matvec0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx8_matvec0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx8_matvec0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx8_matvec0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx8_matvec0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx8_matvec0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx8_matvec0_mult_x_sums_join_4_q;
    wire [71:0] i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl50_matvec0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl50_matvec0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid235_i_cleanups_shl50_matvec0_shift_x_q;
    wire [0:0] leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_s;
    reg [1:0] leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid241_i_next_initerations45_matvec0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid243_i_next_initerations45_matvec0_shift_x_q;
    wire [0:0] rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_s;
    reg [1:0] rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_q;
    wire [10:0] xIfSign_mergedSignalTM_uid271_i_arrayidx8_matvec0_mult_x_im0_q;
    wire [14:0] aPostPad_uid276_i_arrayidx8_matvec0_mult_x_im0_q;
    wire [15:0] sub_uid277_i_arrayidx8_matvec0_mult_x_im0_a;
    wire [15:0] sub_uid277_i_arrayidx8_matvec0_mult_x_im0_b;
    logic [15:0] sub_uid277_i_arrayidx8_matvec0_mult_x_im0_o;
    wire [15:0] sub_uid277_i_arrayidx8_matvec0_mult_x_im0_q;
    wire [13:0] sR_bottomRange_uid281_i_arrayidx8_matvec0_mult_x_im0_in;
    wire [13:0] sR_bottomRange_uid281_i_arrayidx8_matvec0_mult_x_im0_b;
    wire [16:0] sR_mergedSignalTM_uid282_i_arrayidx8_matvec0_mult_x_im0_q;
    wire [18:0] xIfSign_mergedSignalTM_uid321_i_arrayidx8_matvec0_mult_x_im3_q;
    wire [22:0] aPostPad_uid326_i_arrayidx8_matvec0_mult_x_im3_q;
    wire [23:0] sub_uid327_i_arrayidx8_matvec0_mult_x_im3_a;
    wire [23:0] sub_uid327_i_arrayidx8_matvec0_mult_x_im3_b;
    logic [23:0] sub_uid327_i_arrayidx8_matvec0_mult_x_im3_o;
    wire [23:0] sub_uid327_i_arrayidx8_matvec0_mult_x_im3_q;
    wire [21:0] sR_bottomRange_uid331_i_arrayidx8_matvec0_mult_x_im3_in;
    wire [21:0] sR_bottomRange_uid331_i_arrayidx8_matvec0_mult_x_im3_b;
    wire [24:0] sR_mergedSignalTM_uid332_i_arrayidx8_matvec0_mult_x_im3_q;
    wire [18:0] xIfSign_mergedSignalTM_uid383_i_arrayidx8_matvec0_mult_x_im6_q;
    wire [22:0] aPostPad_uid388_i_arrayidx8_matvec0_mult_x_im6_q;
    wire [23:0] sub_uid389_i_arrayidx8_matvec0_mult_x_im6_a;
    wire [23:0] sub_uid389_i_arrayidx8_matvec0_mult_x_im6_b;
    logic [23:0] sub_uid389_i_arrayidx8_matvec0_mult_x_im6_o;
    wire [23:0] sub_uid389_i_arrayidx8_matvec0_mult_x_im6_q;
    wire [21:0] sR_bottomRange_uid393_i_arrayidx8_matvec0_mult_x_im6_in;
    wire [21:0] sR_bottomRange_uid393_i_arrayidx8_matvec0_mult_x_im6_b;
    wire [24:0] sR_mergedSignalTM_uid394_i_arrayidx8_matvec0_mult_x_im6_q;
    wire [18:0] xIfSign_mergedSignalTM_uid445_i_arrayidx8_matvec0_mult_x_im9_q;
    wire [22:0] aPostPad_uid450_i_arrayidx8_matvec0_mult_x_im9_q;
    wire [23:0] sub_uid451_i_arrayidx8_matvec0_mult_x_im9_a;
    wire [23:0] sub_uid451_i_arrayidx8_matvec0_mult_x_im9_b;
    logic [23:0] sub_uid451_i_arrayidx8_matvec0_mult_x_im9_o;
    wire [23:0] sub_uid451_i_arrayidx8_matvec0_mult_x_im9_q;
    wire [21:0] sR_bottomRange_uid455_i_arrayidx8_matvec0_mult_x_im9_in;
    wire [21:0] sR_bottomRange_uid455_i_arrayidx8_matvec0_mult_x_im9_b;
    wire [24:0] sR_mergedSignalTM_uid456_i_arrayidx8_matvec0_mult_x_im9_q;
    wire [51:0] i_arrayidx121_matvec0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx121_matvec0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_q;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_delay_0;
    reg [31:0] redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_1_q;
    reg [0:0] redist4_sync_together64_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together64_aunroll_x_in_i_valid_2_q;
    reg [63:0] redist6_i_arrayidx8_matvec0_trunc_sel_x_b_1_q;
    reg [11:0] redist7_i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b_1_q;
    reg [0:0] redist8_i_masked55_matvec32_q_2_q;
    reg [31:0] redist9_i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_q;
    reg [0:0] redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_delay_0;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_delay_0;
    reg [63:0] redist13_i_idxprom_matvec14_vt_join_q_1_q;
    reg [0:0] redist14_i_first_cleanup_xor52_matvec4_q_2_q;
    reg [0:0] redist14_i_first_cleanup_xor52_matvec4_q_2_delay_0;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,498)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist4_sync_together64_aunroll_x_in_i_valid_1(DELAY,487)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together64_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together64_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1(DELAY,494)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl50_matvec0_shift_x(BITSELECT,233)@2
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl50_matvec0_shift_x_in = i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl50_matvec0_shift_x_b = leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl50_matvec0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid235_i_cleanups_shl50_matvec0_shift_x(BITJOIN,234)@2
    assign leftShiftStage0Idx1_uid235_i_cleanups_shl50_matvec0_shift_x_q = {leftShiftStage0Idx1Rng1_uid234_i_cleanups_shl50_matvec0_shift_x_b, GND_q};

    // leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x(MUX,236)@2
    assign leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_s or i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out or leftShiftStage0Idx1_uid235_i_cleanups_shl50_matvec0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_s)
            1'b0 : leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_q = i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out;
            1'b1 : leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_q = leftShiftStage0Idx1_uid235_i_cleanups_shl50_matvec0_shift_x_q;
            default : leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl50_matvec5_vt_select_1(BITSELECT,20)@2
    assign i_cleanups_shl50_matvec5_vt_select_1_b = leftShiftStage0_uid237_i_cleanups_shl50_matvec0_shift_x_q[1:1];

    // i_cleanups_shl50_matvec5_vt_join(BITJOIN,19)@2
    assign i_cleanups_shl50_matvec5_vt_join_q = {i_cleanups_shl50_matvec5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor52_matvec4(LOGICAL,23)@2
    assign i_first_cleanup_xor52_matvec4_q = i_first_cleanup51_matvec3_sel_x_b ^ VCC_q;

    // i_notcmp42_matvec25(LOGICAL,56)@2
    assign i_notcmp42_matvec25_q = i_exitcond_matvec23_cmp_nsign_q ^ VCC_q;

    // i_or53_matvec27(LOGICAL,57)@2
    assign i_or53_matvec27_q = i_notcmp42_matvec25_q | i_first_cleanup_xor52_matvec4_q;

    // i_next_cleanups54_matvec28(MUX,52)@2
    assign i_next_cleanups54_matvec28_s = i_or53_matvec27_q;
    always @(i_next_cleanups54_matvec28_s or i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out or i_cleanups_shl50_matvec5_vt_join_q)
    begin
        unique case (i_next_cleanups54_matvec28_s)
            1'b0 : i_next_cleanups54_matvec28_q = i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out;
            1'b1 : i_next_cleanups54_matvec28_q = i_cleanups_shl50_matvec5_vt_join_q;
            default : i_next_cleanups54_matvec28_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups49_push25_matvec29(BLACKBOX,46)@2
    // out out_feedback_out_25@20000000
    // out out_feedback_valid_out_25@20000000
    matvec_i_llvm_fpga_push_i2_cleanups49_push25_0 thei_llvm_fpga_push_i2_cleanups49_push25_matvec29 (
        .in_data_in(i_next_cleanups54_matvec28_q),
        .in_feedback_stall_in_25(i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_feedback_stall_out_25),
        .in_keep_going46(redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_25(i_llvm_fpga_push_i2_cleanups49_push25_matvec29_out_feedback_out_25),
        .out_feedback_valid_out_25(i_llvm_fpga_push_i2_cleanups49_push25_matvec29_out_feedback_valid_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,483)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q <= $unsigned(in_c0_eni3_1_tpl);
        end
    end

    // c_i2_138(CONSTANT,6)
    assign c_i2_138_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2(BLACKBOX,38)@2
    // out out_feedback_stall_out_25@20000000
    matvec_i_llvm_fpga_pop_i2_cleanups49_pop25_0 thei_llvm_fpga_pop_i2_cleanups49_pop25_matvec2 (
        .in_data_in(c_i2_138_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_25(i_llvm_fpga_push_i2_cleanups49_push25_matvec29_out_feedback_out_25),
        .in_feedback_valid_in_25(i_llvm_fpga_push_i2_cleanups49_push25_matvec29_out_feedback_valid_out_25),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out),
        .out_feedback_stall_out_25(i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_feedback_stall_out_25),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup51_matvec3_sel_x(BITSELECT,125)@2
    assign i_first_cleanup51_matvec3_sel_x_b = i_llvm_fpga_pop_i2_cleanups49_pop25_matvec2_out_data_out[0:0];

    // c_i6_144(CONSTANT,9)
    assign c_i6_144_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_matvec30(ADD,24)@2
    assign i_fpga_indvars_iv_next_matvec30_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22_out_data_out};
    assign i_fpga_indvars_iv_next_matvec30_b = {1'b0, c_i6_144_q};
    assign i_fpga_indvars_iv_next_matvec30_o = $unsigned(i_fpga_indvars_iv_next_matvec30_a) + $unsigned(i_fpga_indvars_iv_next_matvec30_b);
    assign i_fpga_indvars_iv_next_matvec30_q = i_fpga_indvars_iv_next_matvec30_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_matvec30_sel_x(BITSELECT,63)@2
    assign bgTrunc_i_fpga_indvars_iv_next_matvec30_sel_x_b = i_fpga_indvars_iv_next_matvec30_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31(BLACKBOX,50)@2
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    matvec_i_llvm_fpga_push_i6_fpga_indvars_iv_push22_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_matvec30_sel_x_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22_out_feedback_stall_out_22),
        .in_keep_going46(redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2842(CONSTANT,10)
    assign c_i6_2842_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22(BLACKBOX,42)@2
    // out out_feedback_stall_out_22@20000000
    matvec_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22 (
        .in_data_in(c_i6_2842_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i6_fpga_indvars_iv_push22_matvec31_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_matvec23_cmp_nsign(LOGICAL,155)@2
    assign i_exitcond_matvec23_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop22_matvec22_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond56_matvec26(BLACKBOX,45)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    matvec_i_llvm_fpga_push_i1_notexitcond56_0 thei_llvm_fpga_push_i1_notexitcond56_matvec26 (
        .in_data_in(i_exitcond_matvec23_cmp_nsign_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pipeline_keep_going46_matvec6_out_not_exitcond_stall_out),
        .in_first_cleanup51(i_first_cleanup51_matvec3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i1_notexitcond56_matvec26_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i1_notexitcond56_matvec26_out_feedback_valid_out_9),
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
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(in_i_valid);
        end
    end

    // rightShiftStage0Idx1Rng1_uid241_i_next_initerations45_matvec0_shift_x(BITSELECT,240)@2
    assign rightShiftStage0Idx1Rng1_uid241_i_next_initerations45_matvec0_shift_x_b = i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid243_i_next_initerations45_matvec0_shift_x(BITJOIN,242)@2
    assign rightShiftStage0Idx1_uid243_i_next_initerations45_matvec0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid241_i_next_initerations45_matvec0_shift_x_b};

    // valid_fanout_reg1(REG,136)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
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
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i2_initerations44_push24_matvec9(BLACKBOX,47)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    matvec_i_llvm_fpga_push_i2_initerations44_push24_0 thei_llvm_fpga_push_i2_initerations44_push24_matvec9 (
        .in_data_in(i_next_initerations45_matvec8_vt_join_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_feedback_stall_out_24),
        .in_keep_going46(redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i2_initerations44_push24_matvec9_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i2_initerations44_push24_matvec9_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations44_pop24_matvec7(BLACKBOX,39)@2
    // out out_feedback_stall_out_24@20000000
    matvec_i_llvm_fpga_pop_i2_initerations44_pop24_0 thei_llvm_fpga_pop_i2_initerations44_pop24_matvec7 (
        .in_data_in(c_i2_138_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i2_initerations44_push24_matvec9_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i2_initerations44_push24_matvec9_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x(MUX,244)@2
    assign rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_s or i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_data_out or rightShiftStage0Idx1_uid243_i_next_initerations45_matvec0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_s)
            1'b0 : rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_q = i_llvm_fpga_pop_i2_initerations44_pop24_matvec7_out_data_out;
            1'b1 : rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_q = rightShiftStage0Idx1_uid243_i_next_initerations45_matvec0_shift_x_q;
            default : rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations45_matvec8_vt_select_0(BITSELECT,55)@2
    assign i_next_initerations45_matvec8_vt_select_0_b = rightShiftStage0_uid245_i_next_initerations45_matvec0_shift_x_q[0:0];

    // i_next_initerations45_matvec8_vt_join(BITJOIN,54)@2
    assign i_next_initerations45_matvec8_vt_join_q = {GND_q, i_next_initerations45_matvec8_vt_select_0_b};

    // i_last_initeration47_matvec10_sel_x(BITSELECT,128)@2
    assign i_last_initeration47_matvec10_sel_x_b = i_next_initerations45_matvec8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration48_matvec11(BLACKBOX,43)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    matvec_i_llvm_fpga_push_i1_lastiniteration48_0 thei_llvm_fpga_push_i1_lastiniteration48_matvec11 (
        .in_data_in(i_last_initeration47_matvec10_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pipeline_keep_going46_matvec6_out_initeration_stall_out),
        .in_keep_going46(redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i1_lastiniteration48_matvec11_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i1_lastiniteration48_matvec11_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going46_matvec6(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    matvec_i_llvm_fpga_pipeline_keep_going46_0 thei_llvm_fpga_pipeline_keep_going46_matvec6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration48_matvec11_out_feedback_out_8),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration48_matvec11_out_feedback_valid_out_8),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond56_matvec26_out_feedback_out_9),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond56_matvec26_out_feedback_valid_out_9),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going46_matvec6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going46_matvec6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going46_matvec6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going46_matvec6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going46_matvec6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_matvec6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going46_matvec6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going46_matvec6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going46_matvec6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going46_matvec6_out_pipeline_valid_out;

    // redist5_sync_together64_aunroll_x_in_i_valid_2(DELAY,488)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together64_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together64_aunroll_x_in_i_valid_2_q <= $unsigned(redist4_sync_together64_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg0(REG,135)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg9(REG,144)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg10(REG,145)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp5869_push26_matvec34(BLACKBOX,44)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    matvec_i_llvm_fpga_push_i1_notcmp5869_push26_0 thei_llvm_fpga_push_i1_notcmp5869_push26_matvec34 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_feedback_stall_out_26),
        .in_keep_going46(redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i1_notcmp5869_push26_matvec34_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i1_notcmp5869_push26_matvec34_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_1(DELAY,486)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_1_q <= $unsigned(in_c0_eni3_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33(BLACKBOX,37)@2
    // out out_feedback_stall_out_26@20000000
    matvec_i_llvm_fpga_pop_i1_notcmp5869_pop26_0 thei_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33 (
        .in_data_in(redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_1_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i1_notcmp5869_push26_matvec34_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i1_notcmp5869_push26_matvec34_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2(DELAY,493)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_delay_0 <= '0;
            redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out);
            redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_q <= redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_delay_0;
        end
    end

    // i_masked55_matvec32(LOGICAL,51)@2 + 1
    assign i_masked55_matvec32_qi = i_notcmp42_matvec25_q & i_first_cleanup51_matvec3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked55_matvec32_delay ( .xin(i_masked55_matvec32_qi), .xout(i_masked55_matvec32_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist8_i_masked55_matvec32_q_2(DELAY,491)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_masked55_matvec32_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_masked55_matvec32_q_2_q <= $unsigned(i_masked55_matvec32_q);
        end
    end

    // c_matvec_M_local_pmem(CONSTANT,11)
    assign c_matvec_M_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx121_matvec0_upper_bits_x_merged_bit_select(BITSELECT,482)@4
    assign i_arrayidx121_matvec0_upper_bits_x_merged_bit_select_b = c_matvec_M_local_pmem_q[63:12];
    assign i_arrayidx121_matvec0_upper_bits_x_merged_bit_select_c = c_matvec_M_local_pmem_q[11:0];

    // c_i32_040(CONSTANT,7)
    assign c_i32_040_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,141)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist5_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg8(REG,143)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist5_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // c_i32_141(CONSTANT,8)
    assign c_i32_141_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_matvec20(ADD,33)@4
    assign i_inc_matvec20_a = {1'b0, i_llvm_fpga_pop_i32_j_032_pop23_matvec15_out_data_out};
    assign i_inc_matvec20_b = {1'b0, c_i32_141_q};
    assign i_inc_matvec20_o = $unsigned(i_inc_matvec20_a) + $unsigned(i_inc_matvec20_b);
    assign i_inc_matvec20_q = i_inc_matvec20_o[32:0];

    // bgTrunc_i_inc_matvec20_sel_x(BITSELECT,64)@4
    assign bgTrunc_i_inc_matvec20_sel_x_b = i_inc_matvec20_q[31:0];

    // i_llvm_fpga_push_i32_j_032_push23_matvec21(BLACKBOX,49)@4
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    matvec_i_llvm_fpga_push_i32_j_032_push23_0 thei_llvm_fpga_push_i32_j_032_push23_matvec21 (
        .in_data_in(bgTrunc_i_inc_matvec20_sel_x_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i32_j_032_pop23_matvec15_out_feedback_stall_out_23),
        .in_keep_going46(redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i32_j_032_push23_matvec21_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i32_j_032_push23_matvec21_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3(DELAY,484)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_delay_0 <= '0;
            redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_delay_0 <= $unsigned(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q);
            redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_q <= redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_delay_0;
        end
    end

    // i_llvm_fpga_pop_i32_j_032_pop23_matvec15(BLACKBOX,41)@4
    // out out_feedback_stall_out_23@20000000
    matvec_i_llvm_fpga_pop_i32_j_032_pop23_0 thei_llvm_fpga_pop_i32_j_032_pop23_matvec15 (
        .in_data_in(c_i32_040_q),
        .in_dir(redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_q),
        .in_feedback_in_23(i_llvm_fpga_push_i32_j_032_push23_matvec21_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i32_j_032_push23_matvec21_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_032_pop23_matvec15_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i32_j_032_pop23_matvec15_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom7_matvec16_sel_x(BITSELECT,126)@4
    assign i_idxprom7_matvec16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_032_pop23_matvec15_out_data_out[31:0]};

    // i_idxprom7_matvec16_vt_select_31(BITSELECT,28)@4
    assign i_idxprom7_matvec16_vt_select_31_b = i_idxprom7_matvec16_sel_x_b[31:0];

    // i_idxprom7_matvec16_vt_join(BITJOIN,27)@4
    assign i_idxprom7_matvec16_vt_join_q = {c_i32_040_q, i_idxprom7_matvec16_vt_select_31_b};

    // i_arrayidx121_matvec0_dupName_3_trunc_sel_x(BITSELECT,103)@4
    assign i_arrayidx121_matvec0_dupName_3_trunc_sel_x_b = i_idxprom7_matvec16_vt_join_q[11:0];

    // i_arrayidx121_matvec0_narrow_x(BITSELECT,86)@4
    assign i_arrayidx121_matvec0_narrow_x_b = i_arrayidx121_matvec0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx121_matvec0_shift_join_x(BITJOIN,87)@4
    assign i_arrayidx121_matvec0_shift_join_x_q = {i_arrayidx121_matvec0_narrow_x_b, i_arrayidx121_matvec19_vt_const_1_q};

    // i_arrayidx121_matvec0_mult_multconst_x(CONSTANT,98)
    assign i_arrayidx121_matvec0_mult_multconst_x_q = $unsigned(5'b00000);

    // valid_fanout_reg4(REG,139)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
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
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13(BLACKBOX,48)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    matvec_i_llvm_fpga_push_i32_i_033_pop1570_push27_0 thei_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13 (
        .in_data_in(i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_feedback_stall_out_27),
        .in_keep_going46(redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,485)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1_q <= $unsigned(in_c0_eni3_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12(BLACKBOX,40)@2
    // out out_feedback_stall_out_27@20000000
    matvec_i_llvm_fpga_pop_i32_i_033_pop1570_pop27_0 thei_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12 (
        .in_data_in(redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_i_033_pop1570_push27_matvec13_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out_1(DELAY,492)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out);
        end
    end

    // i_idxprom_matvec14_sel_x(BITSELECT,127)@3
    assign i_idxprom_matvec14_sel_x_b = {32'b00000000000000000000000000000000, redist9_i_llvm_fpga_pop_i32_i_033_pop1570_pop27_matvec12_out_data_out_1_q[31:0]};

    // i_idxprom_matvec14_vt_select_31(BITSELECT,32)@3
    assign i_idxprom_matvec14_vt_select_31_b = i_idxprom_matvec14_sel_x_b[31:0];

    // i_idxprom_matvec14_vt_join(BITJOIN,31)@3
    assign i_idxprom_matvec14_vt_join_q = {c_i32_040_q, i_idxprom_matvec14_vt_select_31_b};

    // i_arrayidx121_matvec0_dupName_0_trunc_sel_x(BITSELECT,100)@3
    assign i_arrayidx121_matvec0_dupName_0_trunc_sel_x_b = i_idxprom_matvec14_vt_join_q[11:0];

    // xIfSign_mergedSignalTM_uid181_i_arrayidx121_matvec0_mult_x(BITJOIN,180)@3
    assign xIfSign_mergedSignalTM_uid181_i_arrayidx121_matvec0_mult_x_q = {GND_q, i_arrayidx121_matvec0_dupName_0_trunc_sel_x_b};

    // padACst_uid185_i_arrayidx121_matvec0_mult_x(CONSTANT,184)
    assign padACst_uid185_i_arrayidx121_matvec0_mult_x_q = $unsigned(4'b0000);

    // aPostPad_uid186_i_arrayidx121_matvec0_mult_x(BITJOIN,185)@3
    assign aPostPad_uid186_i_arrayidx121_matvec0_mult_x_q = {xIfSign_mergedSignalTM_uid181_i_arrayidx121_matvec0_mult_x_q, padACst_uid185_i_arrayidx121_matvec0_mult_x_q};

    // sub_uid187_i_arrayidx121_matvec0_mult_x(SUB,186)@3
    assign sub_uid187_i_arrayidx121_matvec0_mult_x_a = $unsigned({{1{aPostPad_uid186_i_arrayidx121_matvec0_mult_x_q[16]}}, aPostPad_uid186_i_arrayidx121_matvec0_mult_x_q});
    assign sub_uid187_i_arrayidx121_matvec0_mult_x_b = $unsigned({{5{xIfSign_mergedSignalTM_uid181_i_arrayidx121_matvec0_mult_x_q[12]}}, xIfSign_mergedSignalTM_uid181_i_arrayidx121_matvec0_mult_x_q});
    assign sub_uid187_i_arrayidx121_matvec0_mult_x_o = $unsigned($signed(sub_uid187_i_arrayidx121_matvec0_mult_x_a) - $signed(sub_uid187_i_arrayidx121_matvec0_mult_x_b));
    assign sub_uid187_i_arrayidx121_matvec0_mult_x_q = sub_uid187_i_arrayidx121_matvec0_mult_x_o[17:0];

    // sR_bottomRange_uid191_i_arrayidx121_matvec0_mult_x(BITSELECT,190)@3
    assign sR_bottomRange_uid191_i_arrayidx121_matvec0_mult_x_in = $unsigned(sub_uid187_i_arrayidx121_matvec0_mult_x_q[15:0]);
    assign sR_bottomRange_uid191_i_arrayidx121_matvec0_mult_x_b = $unsigned(sR_bottomRange_uid191_i_arrayidx121_matvec0_mult_x_in[15:0]);

    // sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x(CONSTANT,189)
    assign sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x_q = $unsigned(3'b000);

    // sR_mergedSignalTM_uid192_i_arrayidx121_matvec0_mult_x(BITJOIN,191)@3
    assign sR_mergedSignalTM_uid192_i_arrayidx121_matvec0_mult_x_q = {sR_bottomRange_uid191_i_arrayidx121_matvec0_mult_x_b, sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x_q};

    // i_arrayidx121_matvec0_mult_extender_x(BITJOIN,97)@3
    assign i_arrayidx121_matvec0_mult_extender_x_q = {i_arrayidx121_matvec0_mult_multconst_x_q, sR_mergedSignalTM_uid192_i_arrayidx121_matvec0_mult_x_q};

    // i_arrayidx121_matvec0_dupName_1_trunc_sel_x(BITSELECT,101)@3
    assign i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b = i_arrayidx121_matvec0_mult_extender_x_q[11:0];

    // redist7_i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b_1(DELAY,490)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx121_matvec0_add_x(ADD,81)@4
    assign i_arrayidx121_matvec0_add_x_a = {1'b0, i_arrayidx121_matvec0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx121_matvec0_add_x_b = {1'b0, redist7_i_arrayidx121_matvec0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx121_matvec0_add_x_o = $unsigned(i_arrayidx121_matvec0_add_x_a) + $unsigned(i_arrayidx121_matvec0_add_x_b);
    assign i_arrayidx121_matvec0_add_x_q = i_arrayidx121_matvec0_add_x_o[12:0];

    // i_arrayidx121_matvec0_dupName_2_trunc_sel_x(BITSELECT,102)@4
    assign i_arrayidx121_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx121_matvec0_add_x_q[11:0];

    // i_arrayidx121_matvec0_dupName_0_add_x(ADD,91)@4
    assign i_arrayidx121_matvec0_dupName_0_add_x_a = {1'b0, i_arrayidx121_matvec0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx121_matvec0_dupName_0_add_x_b = {1'b0, i_arrayidx121_matvec0_shift_join_x_q};
    assign i_arrayidx121_matvec0_dupName_0_add_x_o = $unsigned(i_arrayidx121_matvec0_dupName_0_add_x_a) + $unsigned(i_arrayidx121_matvec0_dupName_0_add_x_b);
    assign i_arrayidx121_matvec0_dupName_0_add_x_q = i_arrayidx121_matvec0_dupName_0_add_x_o[12:0];

    // i_arrayidx121_matvec0_dupName_5_trunc_sel_x(BITSELECT,104)@4
    assign i_arrayidx121_matvec0_dupName_5_trunc_sel_x_b = i_arrayidx121_matvec0_dupName_0_add_x_q[11:0];

    // i_arrayidx121_matvec0_append_upper_bits_x(BITJOIN,82)@4
    assign i_arrayidx121_matvec0_append_upper_bits_x_q = {i_arrayidx121_matvec0_upper_bits_x_merged_bit_select_b, i_arrayidx121_matvec0_dupName_5_trunc_sel_x_b};

    // i_arrayidx121_matvec19_vt_select_63(BITSELECT,17)@4
    assign i_arrayidx121_matvec19_vt_select_63_b = i_arrayidx121_matvec0_append_upper_bits_x_q[63:2];

    // i_arrayidx121_matvec19_vt_const_1(CONSTANT,15)
    assign i_arrayidx121_matvec19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx121_matvec19_vt_join(BITJOIN,16)@4
    assign i_arrayidx121_matvec19_vt_join_q = {i_arrayidx121_matvec19_vt_select_63_b, i_arrayidx121_matvec19_vt_const_1_q};

    // i_arrayidx8_matvec0_narrow_x(BITSELECT,109)@4
    assign i_arrayidx8_matvec0_narrow_x_b = i_idxprom7_matvec16_vt_join_q[61:0];

    // i_arrayidx8_matvec0_shift_join_x(BITJOIN,110)@4
    assign i_arrayidx8_matvec0_shift_join_x_q = {i_arrayidx8_matvec0_narrow_x_b, i_arrayidx121_matvec19_vt_const_1_q};

    // i_arrayidx8_matvec0_mult_multconst_x(CONSTANT,117)
    assign i_arrayidx8_matvec0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // i_arrayidx8_matvec0_mult_x_bs1(BITSELECT,213)@3
    assign i_arrayidx8_matvec0_mult_x_bs1_b = i_idxprom_matvec14_vt_join_q[63:54];

    // xIfSign_mergedSignalTM_uid271_i_arrayidx8_matvec0_mult_x_im0(BITJOIN,270)@3
    assign xIfSign_mergedSignalTM_uid271_i_arrayidx8_matvec0_mult_x_im0_q = {GND_q, i_arrayidx8_matvec0_mult_x_bs1_b};

    // aPostPad_uid276_i_arrayidx8_matvec0_mult_x_im0(BITJOIN,275)@3
    assign aPostPad_uid276_i_arrayidx8_matvec0_mult_x_im0_q = {xIfSign_mergedSignalTM_uid271_i_arrayidx8_matvec0_mult_x_im0_q, padACst_uid185_i_arrayidx121_matvec0_mult_x_q};

    // sub_uid277_i_arrayidx8_matvec0_mult_x_im0(SUB,276)@3
    assign sub_uid277_i_arrayidx8_matvec0_mult_x_im0_a = $unsigned({{1{aPostPad_uid276_i_arrayidx8_matvec0_mult_x_im0_q[14]}}, aPostPad_uid276_i_arrayidx8_matvec0_mult_x_im0_q});
    assign sub_uid277_i_arrayidx8_matvec0_mult_x_im0_b = $unsigned({{5{xIfSign_mergedSignalTM_uid271_i_arrayidx8_matvec0_mult_x_im0_q[10]}}, xIfSign_mergedSignalTM_uid271_i_arrayidx8_matvec0_mult_x_im0_q});
    assign sub_uid277_i_arrayidx8_matvec0_mult_x_im0_o = $unsigned($signed(sub_uid277_i_arrayidx8_matvec0_mult_x_im0_a) - $signed(sub_uid277_i_arrayidx8_matvec0_mult_x_im0_b));
    assign sub_uid277_i_arrayidx8_matvec0_mult_x_im0_q = sub_uid277_i_arrayidx8_matvec0_mult_x_im0_o[15:0];

    // sR_bottomRange_uid281_i_arrayidx8_matvec0_mult_x_im0(BITSELECT,280)@3
    assign sR_bottomRange_uid281_i_arrayidx8_matvec0_mult_x_im0_in = $unsigned(sub_uid277_i_arrayidx8_matvec0_mult_x_im0_q[13:0]);
    assign sR_bottomRange_uid281_i_arrayidx8_matvec0_mult_x_im0_b = $unsigned(sR_bottomRange_uid281_i_arrayidx8_matvec0_mult_x_im0_in[13:0]);

    // sR_mergedSignalTM_uid282_i_arrayidx8_matvec0_mult_x_im0(BITJOIN,281)@3
    assign sR_mergedSignalTM_uid282_i_arrayidx8_matvec0_mult_x_im0_q = {sR_bottomRange_uid281_i_arrayidx8_matvec0_mult_x_im0_b, sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x_q};

    // i_arrayidx8_matvec0_mult_x_sums_align_3(BITSHIFT,227)@3
    assign i_arrayidx8_matvec0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid282_i_arrayidx8_matvec0_mult_x_im0_q, 11'b00000000000 };
    assign i_arrayidx8_matvec0_mult_x_sums_align_3_q = i_arrayidx8_matvec0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx8_matvec0_mult_x_bs7(BITSELECT,219)@3
    assign i_arrayidx8_matvec0_mult_x_bs7_in = i_idxprom_matvec14_vt_join_q[35:0];
    assign i_arrayidx8_matvec0_mult_x_bs7_b = i_arrayidx8_matvec0_mult_x_bs7_in[35:18];

    // xIfSign_mergedSignalTM_uid383_i_arrayidx8_matvec0_mult_x_im6(BITJOIN,382)@3
    assign xIfSign_mergedSignalTM_uid383_i_arrayidx8_matvec0_mult_x_im6_q = {GND_q, i_arrayidx8_matvec0_mult_x_bs7_b};

    // aPostPad_uid388_i_arrayidx8_matvec0_mult_x_im6(BITJOIN,387)@3
    assign aPostPad_uid388_i_arrayidx8_matvec0_mult_x_im6_q = {xIfSign_mergedSignalTM_uid383_i_arrayidx8_matvec0_mult_x_im6_q, padACst_uid185_i_arrayidx121_matvec0_mult_x_q};

    // sub_uid389_i_arrayidx8_matvec0_mult_x_im6(SUB,388)@3
    assign sub_uid389_i_arrayidx8_matvec0_mult_x_im6_a = $unsigned({{1{aPostPad_uid388_i_arrayidx8_matvec0_mult_x_im6_q[22]}}, aPostPad_uid388_i_arrayidx8_matvec0_mult_x_im6_q});
    assign sub_uid389_i_arrayidx8_matvec0_mult_x_im6_b = $unsigned({{5{xIfSign_mergedSignalTM_uid383_i_arrayidx8_matvec0_mult_x_im6_q[18]}}, xIfSign_mergedSignalTM_uid383_i_arrayidx8_matvec0_mult_x_im6_q});
    assign sub_uid389_i_arrayidx8_matvec0_mult_x_im6_o = $unsigned($signed(sub_uid389_i_arrayidx8_matvec0_mult_x_im6_a) - $signed(sub_uid389_i_arrayidx8_matvec0_mult_x_im6_b));
    assign sub_uid389_i_arrayidx8_matvec0_mult_x_im6_q = sub_uid389_i_arrayidx8_matvec0_mult_x_im6_o[23:0];

    // sR_bottomRange_uid393_i_arrayidx8_matvec0_mult_x_im6(BITSELECT,392)@3
    assign sR_bottomRange_uid393_i_arrayidx8_matvec0_mult_x_im6_in = $unsigned(sub_uid389_i_arrayidx8_matvec0_mult_x_im6_q[21:0]);
    assign sR_bottomRange_uid393_i_arrayidx8_matvec0_mult_x_im6_b = $unsigned(sR_bottomRange_uid393_i_arrayidx8_matvec0_mult_x_im6_in[21:0]);

    // sR_mergedSignalTM_uid394_i_arrayidx8_matvec0_mult_x_im6(BITJOIN,393)@3
    assign sR_mergedSignalTM_uid394_i_arrayidx8_matvec0_mult_x_im6_q = {sR_bottomRange_uid393_i_arrayidx8_matvec0_mult_x_im6_b, sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x_q};

    // i_arrayidx8_matvec0_mult_x_sums_align_2(BITSHIFT,226)@3
    assign i_arrayidx8_matvec0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid394_i_arrayidx8_matvec0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx8_matvec0_mult_x_sums_align_2_q = i_arrayidx8_matvec0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx8_matvec0_mult_x_sums_join_4(BITJOIN,228)@3
    assign i_arrayidx8_matvec0_mult_x_sums_join_4_q = {i_arrayidx8_matvec0_mult_x_sums_align_3_q, i_arrayidx8_matvec0_mult_x_sums_align_2_q};

    // i_arrayidx8_matvec0_mult_x_bs4(BITSELECT,216)@3
    assign i_arrayidx8_matvec0_mult_x_bs4_in = i_idxprom_matvec14_vt_join_q[53:0];
    assign i_arrayidx8_matvec0_mult_x_bs4_b = i_arrayidx8_matvec0_mult_x_bs4_in[53:36];

    // xIfSign_mergedSignalTM_uid321_i_arrayidx8_matvec0_mult_x_im3(BITJOIN,320)@3
    assign xIfSign_mergedSignalTM_uid321_i_arrayidx8_matvec0_mult_x_im3_q = {GND_q, i_arrayidx8_matvec0_mult_x_bs4_b};

    // aPostPad_uid326_i_arrayidx8_matvec0_mult_x_im3(BITJOIN,325)@3
    assign aPostPad_uid326_i_arrayidx8_matvec0_mult_x_im3_q = {xIfSign_mergedSignalTM_uid321_i_arrayidx8_matvec0_mult_x_im3_q, padACst_uid185_i_arrayidx121_matvec0_mult_x_q};

    // sub_uid327_i_arrayidx8_matvec0_mult_x_im3(SUB,326)@3
    assign sub_uid327_i_arrayidx8_matvec0_mult_x_im3_a = $unsigned({{1{aPostPad_uid326_i_arrayidx8_matvec0_mult_x_im3_q[22]}}, aPostPad_uid326_i_arrayidx8_matvec0_mult_x_im3_q});
    assign sub_uid327_i_arrayidx8_matvec0_mult_x_im3_b = $unsigned({{5{xIfSign_mergedSignalTM_uid321_i_arrayidx8_matvec0_mult_x_im3_q[18]}}, xIfSign_mergedSignalTM_uid321_i_arrayidx8_matvec0_mult_x_im3_q});
    assign sub_uid327_i_arrayidx8_matvec0_mult_x_im3_o = $unsigned($signed(sub_uid327_i_arrayidx8_matvec0_mult_x_im3_a) - $signed(sub_uid327_i_arrayidx8_matvec0_mult_x_im3_b));
    assign sub_uid327_i_arrayidx8_matvec0_mult_x_im3_q = sub_uid327_i_arrayidx8_matvec0_mult_x_im3_o[23:0];

    // sR_bottomRange_uid331_i_arrayidx8_matvec0_mult_x_im3(BITSELECT,330)@3
    assign sR_bottomRange_uid331_i_arrayidx8_matvec0_mult_x_im3_in = $unsigned(sub_uid327_i_arrayidx8_matvec0_mult_x_im3_q[21:0]);
    assign sR_bottomRange_uid331_i_arrayidx8_matvec0_mult_x_im3_b = $unsigned(sR_bottomRange_uid331_i_arrayidx8_matvec0_mult_x_im3_in[21:0]);

    // sR_mergedSignalTM_uid332_i_arrayidx8_matvec0_mult_x_im3(BITJOIN,331)@3
    assign sR_mergedSignalTM_uid332_i_arrayidx8_matvec0_mult_x_im3_q = {sR_bottomRange_uid331_i_arrayidx8_matvec0_mult_x_im3_b, sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x_q};

    // i_arrayidx8_matvec0_mult_x_sums_align_0(BITSHIFT,224)@3
    assign i_arrayidx8_matvec0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid332_i_arrayidx8_matvec0_mult_x_im3_q, 11'b00000000000 };
    assign i_arrayidx8_matvec0_mult_x_sums_align_0_q = i_arrayidx8_matvec0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx8_matvec0_mult_x_bs10(BITSELECT,222)@3
    assign i_arrayidx8_matvec0_mult_x_bs10_in = i_idxprom_matvec14_vt_join_q[17:0];
    assign i_arrayidx8_matvec0_mult_x_bs10_b = i_arrayidx8_matvec0_mult_x_bs10_in[17:0];

    // xIfSign_mergedSignalTM_uid445_i_arrayidx8_matvec0_mult_x_im9(BITJOIN,444)@3
    assign xIfSign_mergedSignalTM_uid445_i_arrayidx8_matvec0_mult_x_im9_q = {GND_q, i_arrayidx8_matvec0_mult_x_bs10_b};

    // aPostPad_uid450_i_arrayidx8_matvec0_mult_x_im9(BITJOIN,449)@3
    assign aPostPad_uid450_i_arrayidx8_matvec0_mult_x_im9_q = {xIfSign_mergedSignalTM_uid445_i_arrayidx8_matvec0_mult_x_im9_q, padACst_uid185_i_arrayidx121_matvec0_mult_x_q};

    // sub_uid451_i_arrayidx8_matvec0_mult_x_im9(SUB,450)@3
    assign sub_uid451_i_arrayidx8_matvec0_mult_x_im9_a = $unsigned({{1{aPostPad_uid450_i_arrayidx8_matvec0_mult_x_im9_q[22]}}, aPostPad_uid450_i_arrayidx8_matvec0_mult_x_im9_q});
    assign sub_uid451_i_arrayidx8_matvec0_mult_x_im9_b = $unsigned({{5{xIfSign_mergedSignalTM_uid445_i_arrayidx8_matvec0_mult_x_im9_q[18]}}, xIfSign_mergedSignalTM_uid445_i_arrayidx8_matvec0_mult_x_im9_q});
    assign sub_uid451_i_arrayidx8_matvec0_mult_x_im9_o = $unsigned($signed(sub_uid451_i_arrayidx8_matvec0_mult_x_im9_a) - $signed(sub_uid451_i_arrayidx8_matvec0_mult_x_im9_b));
    assign sub_uid451_i_arrayidx8_matvec0_mult_x_im9_q = sub_uid451_i_arrayidx8_matvec0_mult_x_im9_o[23:0];

    // sR_bottomRange_uid455_i_arrayidx8_matvec0_mult_x_im9(BITSELECT,454)@3
    assign sR_bottomRange_uid455_i_arrayidx8_matvec0_mult_x_im9_in = $unsigned(sub_uid451_i_arrayidx8_matvec0_mult_x_im9_q[21:0]);
    assign sR_bottomRange_uid455_i_arrayidx8_matvec0_mult_x_im9_b = $unsigned(sR_bottomRange_uid455_i_arrayidx8_matvec0_mult_x_im9_in[21:0]);

    // sR_mergedSignalTM_uid456_i_arrayidx8_matvec0_mult_x_im9(BITJOIN,455)@3
    assign sR_mergedSignalTM_uid456_i_arrayidx8_matvec0_mult_x_im9_q = {sR_bottomRange_uid455_i_arrayidx8_matvec0_mult_x_im9_b, sR_bottomExtension_uid190_i_arrayidx121_matvec0_mult_x_q};

    // i_arrayidx8_matvec0_mult_x_sums_join_1(BITJOIN,225)@3
    assign i_arrayidx8_matvec0_mult_x_sums_join_1_q = {i_arrayidx8_matvec0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid456_i_arrayidx8_matvec0_mult_x_im9_q};

    // i_arrayidx8_matvec0_mult_x_sums_result_add_0_0(ADD,229)@3
    assign i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx8_matvec0_mult_x_sums_join_1_q};
    assign i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx8_matvec0_mult_x_sums_join_4_q};
    assign i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_q = i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_o[71:0];

    // i_arrayidx8_matvec0_mult_extender_x(BITJOIN,116)@3
    assign i_arrayidx8_matvec0_mult_extender_x_q = {i_arrayidx8_matvec0_mult_multconst_x_q, i_arrayidx8_matvec0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_arrayidx8_matvec0_trunc_sel_x(BITSELECT,118)@3
    assign i_arrayidx8_matvec0_trunc_sel_x_b = i_arrayidx8_matvec0_mult_extender_x_q[63:0];

    // redist6_i_arrayidx8_matvec0_trunc_sel_x_b_1(DELAY,489)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx8_matvec0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_arrayidx8_matvec0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx8_matvec0_trunc_sel_x_b);
        end
    end

    // valid_fanout_reg7(REG,142)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist5_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a30i32_m3417_matvec17(BLACKBOX,35)@4
    matvec_i_llvm_fpga_ffwd_dest_p1024a30i32_m3417_0 thei_llvm_fpga_ffwd_dest_p1024a30i32_m3417_matvec17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a30i32_m3417_matvec17_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx8_matvec0_add_x(ADD,105)@4
    assign i_arrayidx8_matvec0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a30i32_m3417_matvec17_out_dest_data_out_0_0};
    assign i_arrayidx8_matvec0_add_x_b = {1'b0, redist6_i_arrayidx8_matvec0_trunc_sel_x_b_1_q};
    assign i_arrayidx8_matvec0_add_x_o = $unsigned(i_arrayidx8_matvec0_add_x_a) + $unsigned(i_arrayidx8_matvec0_add_x_b);
    assign i_arrayidx8_matvec0_add_x_q = i_arrayidx8_matvec0_add_x_o[64:0];

    // i_arrayidx8_matvec0_dupName_0_trunc_sel_x(BITSELECT,119)@4
    assign i_arrayidx8_matvec0_dupName_0_trunc_sel_x_b = i_arrayidx8_matvec0_add_x_q[63:0];

    // i_arrayidx8_matvec0_dupName_0_add_x(ADD,113)@4
    assign i_arrayidx8_matvec0_dupName_0_add_x_a = {1'b0, i_arrayidx8_matvec0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx8_matvec0_dupName_0_add_x_b = {1'b0, i_arrayidx8_matvec0_shift_join_x_q};
    assign i_arrayidx8_matvec0_dupName_0_add_x_o = $unsigned(i_arrayidx8_matvec0_dupName_0_add_x_a) + $unsigned(i_arrayidx8_matvec0_dupName_0_add_x_b);
    assign i_arrayidx8_matvec0_dupName_0_add_x_q = i_arrayidx8_matvec0_dupName_0_add_x_o[64:0];

    // i_arrayidx8_matvec0_dupName_2_trunc_sel_x(BITSELECT,120)@4
    assign i_arrayidx8_matvec0_dupName_2_trunc_sel_x_b = i_arrayidx8_matvec0_dupName_0_add_x_q[63:0];

    // redist13_i_idxprom_matvec14_vt_join_q_1(DELAY,496)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_idxprom_matvec14_vt_join_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_idxprom_matvec14_vt_join_q_1_q <= $unsigned(i_idxprom_matvec14_vt_join_q);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3(DELAY,495)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_delay_0 <= '0;
            redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_delay_0 <= $unsigned(redist11_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_1_q);
            redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_q <= redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_delay_0;
        end
    end

    // redist14_i_first_cleanup_xor52_matvec4_q_2(DELAY,497)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_first_cleanup_xor52_matvec4_q_2_delay_0 <= '0;
            redist14_i_first_cleanup_xor52_matvec4_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_first_cleanup_xor52_matvec4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor52_matvec4_q);
            redist14_i_first_cleanup_xor52_matvec4_q_2_q <= redist14_i_first_cleanup_xor52_matvec4_q_2_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,133)@4
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist14_i_first_cleanup_xor52_matvec4_q_2_q;
    assign out_c0_exi7_2_tpl = redist12_i_llvm_fpga_pipeline_keep_going46_matvec6_out_data_out_3_q;
    assign out_c0_exi7_3_tpl = redist13_i_idxprom_matvec14_vt_join_q_1_q;
    assign out_c0_exi7_4_tpl = i_arrayidx8_matvec0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi7_5_tpl = i_arrayidx121_matvec19_vt_join_q;
    assign out_c0_exi7_6_tpl = redist8_i_masked55_matvec32_q_2_q;
    assign out_c0_exi7_7_tpl = redist10_i_llvm_fpga_pop_i1_notcmp5869_pop26_matvec33_out_data_out_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_matvec1 = GND_q;

endmodule
