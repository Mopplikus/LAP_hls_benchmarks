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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body8_ataxs_c0_enter13818_atax0
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:56:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_i_sfc_logic_s_c0_in_for_body8_s_c0_enter13818_atax0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out,
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
    output wire [0:0] out_unnamed_atax1,
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
    wire [63:0] c_atax_A_local_pmem_q;
    wire [1:0] c_i2_138_q;
    wire [31:0] c_i32_040_q;
    wire [31:0] c_i32_141_q;
    wire [5:0] c_i6_144_q;
    wire [5:0] c_i6_1842_q;
    wire [1:0] i_arrayidx141_atax19_vt_const_1_q;
    wire [63:0] i_arrayidx141_atax19_vt_join_q;
    wire [61:0] i_arrayidx141_atax19_vt_select_63_b;
    wire [1:0] i_cleanups_shl75_atax5_vt_join_q;
    wire [0:0] i_cleanups_shl75_atax5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor77_atax4_q;
    wire [6:0] i_fpga_indvars_iv_next_atax30_a;
    wire [6:0] i_fpga_indvars_iv_next_atax30_b;
    logic [6:0] i_fpga_indvars_iv_next_atax30_o;
    wire [6:0] i_fpga_indvars_iv_next_atax30_q;
    wire [63:0] i_idxprom9_atax16_vt_join_q;
    wire [31:0] i_idxprom9_atax16_vt_select_31_b;
    wire [63:0] i_idxprom_atax14_vt_join_q;
    wire [31:0] i_idxprom_atax14_vt_select_31_b;
    wire [32:0] i_inc_atax20_a;
    wire [32:0] i_inc_atax20_b;
    logic [32:0] i_inc_atax20_o;
    wire [32:0] i_inc_atax20_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a20i32_a4824_atax17_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_atax6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_atax6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_atax6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_atax6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_atax6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33_out_feedback_stall_out_30;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_feedback_stall_out_29;
    wire [1:0] i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_feedback_stall_out_28;
    wire [31:0] i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_feedback_stall_out_31;
    wire [31:0] i_llvm_fpga_pop_i32_j_046_pop27_atax15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_046_pop27_atax15_out_feedback_stall_out_27;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22_out_feedback_stall_out_26;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration73_atax11_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration73_atax11_out_feedback_valid_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notcmp8394_push30_atax34_out_feedback_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notcmp8394_push30_atax34_out_feedback_valid_out_30;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond81_atax26_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond81_atax26_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i2_cleanups74_push29_atax29_out_feedback_out_29;
    wire [0:0] i_llvm_fpga_push_i2_cleanups74_push29_atax29_out_feedback_valid_out_29;
    wire [7:0] i_llvm_fpga_push_i2_initerations69_push28_atax9_out_feedback_out_28;
    wire [0:0] i_llvm_fpga_push_i2_initerations69_push28_atax9_out_feedback_valid_out_28;
    wire [31:0] i_llvm_fpga_push_i32_i_047_pop1795_push31_atax13_out_feedback_out_31;
    wire [0:0] i_llvm_fpga_push_i32_i_047_pop1795_push31_atax13_out_feedback_valid_out_31;
    wire [31:0] i_llvm_fpga_push_i32_j_046_push27_atax21_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_j_046_push27_atax21_out_feedback_valid_out_27;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31_out_feedback_valid_out_26;
    wire [0:0] i_masked80_atax32_qi;
    reg [0:0] i_masked80_atax32_q;
    wire [0:0] i_next_cleanups79_atax28_s;
    reg [1:0] i_next_cleanups79_atax28_q;
    wire [1:0] i_next_initerations70_atax8_vt_join_q;
    wire [0:0] i_next_initerations70_atax8_vt_select_0_b;
    wire [0:0] i_notcmp67_atax25_q;
    wire [0:0] i_or78_atax27_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_atax30_sel_x_b;
    wire [31:0] bgTrunc_i_inc_atax20_sel_x_b;
    wire [64:0] i_arrayidx10_atax0_add_x_a;
    wire [64:0] i_arrayidx10_atax0_add_x_b;
    logic [64:0] i_arrayidx10_atax0_add_x_o;
    wire [64:0] i_arrayidx10_atax0_add_x_q;
    wire [61:0] i_arrayidx10_atax0_narrow_x_b;
    wire [63:0] i_arrayidx10_atax0_shift_join_x_q;
    wire [64:0] i_arrayidx10_atax0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx10_atax0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx10_atax0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx10_atax0_dupName_0_add_x_q;
    wire [127:0] i_arrayidx10_atax0_mult_extender_x_q;
    wire [56:0] i_arrayidx10_atax0_mult_multconst_x_q;
    wire [63:0] i_arrayidx10_atax0_trunc_sel_x_b;
    wire [63:0] i_arrayidx10_atax0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx10_atax0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx141_atax0_add_x_a;
    wire [11:0] i_arrayidx141_atax0_add_x_b;
    logic [11:0] i_arrayidx141_atax0_add_x_o;
    wire [11:0] i_arrayidx141_atax0_add_x_q;
    wire [63:0] i_arrayidx141_atax0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx141_atax0_narrow_x_b;
    wire [10:0] i_arrayidx141_atax0_shift_join_x_q;
    wire [11:0] i_arrayidx141_atax0_dupName_0_add_x_a;
    wire [11:0] i_arrayidx141_atax0_dupName_0_add_x_b;
    logic [11:0] i_arrayidx141_atax0_dupName_0_add_x_o;
    wire [11:0] i_arrayidx141_atax0_dupName_0_add_x_q;
    wire [21:0] i_arrayidx141_atax0_mult_extender_x_q;
    wire [3:0] i_arrayidx141_atax0_mult_multconst_x_q;
    wire [10:0] i_arrayidx141_atax0_dupName_0_trunc_sel_x_b;
    wire [10:0] i_arrayidx141_atax0_dupName_1_trunc_sel_x_b;
    wire [10:0] i_arrayidx141_atax0_dupName_2_trunc_sel_x_b;
    wire [10:0] i_arrayidx141_atax0_dupName_3_trunc_sel_x_b;
    wire [10:0] i_arrayidx141_atax0_dupName_5_trunc_sel_x_b;
    wire [0:0] i_first_cleanup76_atax3_sel_x_b;
    wire [63:0] i_idxprom9_atax16_sel_x_b;
    wire [63:0] i_idxprom_atax14_sel_x_b;
    wire [0:0] i_last_initeration72_atax10_sel_x_b;
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
    wire [0:0] i_exitcond_atax23_cmp_nsign_q;
    wire [9:0] i_arrayidx10_atax0_mult_x_bs1_b;
    wire [53:0] i_arrayidx10_atax0_mult_x_bs4_in;
    wire [17:0] i_arrayidx10_atax0_mult_x_bs4_b;
    wire [35:0] i_arrayidx10_atax0_mult_x_bs7_in;
    wire [17:0] i_arrayidx10_atax0_mult_x_bs7_b;
    wire [17:0] i_arrayidx10_atax0_mult_x_bs10_in;
    wire [17:0] i_arrayidx10_atax0_mult_x_bs10_b;
    wire [35:0] i_arrayidx10_atax0_mult_x_sums_align_0_q;
    wire [35:0] i_arrayidx10_atax0_mult_x_sums_align_0_qint;
    wire [60:0] i_arrayidx10_atax0_mult_x_sums_join_1_q;
    wire [42:0] i_arrayidx10_atax0_mult_x_sums_align_2_q;
    wire [42:0] i_arrayidx10_atax0_mult_x_sums_align_2_qint;
    wire [27:0] i_arrayidx10_atax0_mult_x_sums_align_3_q;
    wire [27:0] i_arrayidx10_atax0_mult_x_sums_align_3_qint;
    wire [70:0] i_arrayidx10_atax0_mult_x_sums_join_4_q;
    wire [71:0] i_arrayidx10_atax0_mult_x_sums_result_add_0_0_a;
    wire [71:0] i_arrayidx10_atax0_mult_x_sums_result_add_0_0_b;
    logic [71:0] i_arrayidx10_atax0_mult_x_sums_result_add_0_0_o;
    wire [71:0] i_arrayidx10_atax0_mult_x_sums_result_add_0_0_q;
    wire [11:0] addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_a;
    wire [11:0] addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_b;
    logic [11:0] addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_o;
    wire [11:0] addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_q;
    wire [13:0] add_uid185_i_arrayidx141_atax0_mult_x_q;
    wire [17:0] sR_mergedSignalTM_uid190_i_arrayidx141_atax0_mult_x_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl75_atax0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl75_atax0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid225_i_cleanups_shl75_atax0_shift_x_q;
    wire [0:0] leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_s;
    reg [1:0] leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid231_i_next_initerations70_atax0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid233_i_next_initerations70_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_s;
    reg [1:0] rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_q;
    wire [10:0] addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_a;
    wire [10:0] addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_b;
    logic [10:0] addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_o;
    wire [10:0] addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_q;
    wire [12:0] add_uid247_i_arrayidx10_atax0_mult_x_im0_q;
    wire [16:0] sR_mergedSignalTM_uid252_i_arrayidx10_atax0_mult_x_im0_q;
    wire [18:0] addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_a;
    wire [18:0] addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_b;
    logic [18:0] addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_o;
    wire [18:0] addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_q;
    wire [20:0] add_uid293_i_arrayidx10_atax0_mult_x_im3_q;
    wire [24:0] sR_mergedSignalTM_uid298_i_arrayidx10_atax0_mult_x_im3_q;
    wire [18:0] addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_a;
    wire [18:0] addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_b;
    logic [18:0] addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_o;
    wire [18:0] addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_q;
    wire [20:0] add_uid351_i_arrayidx10_atax0_mult_x_im6_q;
    wire [24:0] sR_mergedSignalTM_uid356_i_arrayidx10_atax0_mult_x_im6_q;
    wire [18:0] addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_a;
    wire [18:0] addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_b;
    logic [18:0] addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_o;
    wire [18:0] addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_q;
    wire [20:0] add_uid409_i_arrayidx10_atax0_mult_x_im9_q;
    wire [24:0] sR_mergedSignalTM_uid414_i_arrayidx10_atax0_mult_x_im9_q;
    wire [52:0] i_arrayidx141_atax0_upper_bits_x_merged_bit_select_b;
    wire [10:0] i_arrayidx141_atax0_upper_bits_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid182_i_arrayidx141_atax0_mult_x_merged_bit_select_b;
    wire [8:0] lowRangeB_uid182_i_arrayidx141_atax0_mult_x_merged_bit_select_c;
    wire [1:0] lowRangeB_uid244_i_arrayidx10_atax0_mult_x_im0_merged_bit_select_b;
    wire [7:0] lowRangeB_uid244_i_arrayidx10_atax0_mult_x_im0_merged_bit_select_c;
    wire [1:0] lowRangeB_uid290_i_arrayidx10_atax0_mult_x_im3_merged_bit_select_b;
    wire [15:0] lowRangeB_uid290_i_arrayidx10_atax0_mult_x_im3_merged_bit_select_c;
    wire [1:0] lowRangeB_uid348_i_arrayidx10_atax0_mult_x_im6_merged_bit_select_b;
    wire [15:0] lowRangeB_uid348_i_arrayidx10_atax0_mult_x_im6_merged_bit_select_c;
    wire [1:0] lowRangeB_uid406_i_arrayidx10_atax0_mult_x_im9_merged_bit_select_b;
    wire [15:0] lowRangeB_uid406_i_arrayidx10_atax0_mult_x_im9_merged_bit_select_c;
    reg [0:0] redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_q;
    reg [0:0] redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_delay_0;
    reg [31:0] redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1_q;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_q;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_0;
    reg [0:0] redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_1;
    reg [0:0] redist4_sync_together64_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist5_sync_together64_aunroll_x_in_i_valid_2_q;
    reg [10:0] redist6_i_arrayidx141_atax0_dupName_1_trunc_sel_x_b_1_q;
    reg [63:0] redist7_i_arrayidx10_atax0_trunc_sel_x_b_1_q;
    reg [0:0] redist8_i_masked80_atax32_q_2_q;
    reg [31:0] redist9_i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_2_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_3_q;
    reg [63:0] redist13_i_idxprom_atax14_vt_join_q_1_q;
    reg [0:0] redist14_i_first_cleanup_xor77_atax4_q_2_q;
    reg [0:0] redist14_i_first_cleanup_xor77_atax4_q_2_delay_0;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,477)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist4_sync_together64_aunroll_x_in_i_valid_1(DELAY,466)
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

    // redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1(DELAY,472)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl75_atax0_shift_x(BITSELECT,223)@2
    assign leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl75_atax0_shift_x_in = i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl75_atax0_shift_x_b = leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl75_atax0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid225_i_cleanups_shl75_atax0_shift_x(BITJOIN,224)@2
    assign leftShiftStage0Idx1_uid225_i_cleanups_shl75_atax0_shift_x_q = {leftShiftStage0Idx1Rng1_uid224_i_cleanups_shl75_atax0_shift_x_b, GND_q};

    // leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x(MUX,226)@2
    assign leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_s or i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out or leftShiftStage0Idx1_uid225_i_cleanups_shl75_atax0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_s)
            1'b0 : leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_q = i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out;
            1'b1 : leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_q = leftShiftStage0Idx1_uid225_i_cleanups_shl75_atax0_shift_x_q;
            default : leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl75_atax5_vt_select_1(BITSELECT,20)@2
    assign i_cleanups_shl75_atax5_vt_select_1_b = leftShiftStage0_uid227_i_cleanups_shl75_atax0_shift_x_q[1:1];

    // i_cleanups_shl75_atax5_vt_join(BITJOIN,19)@2
    assign i_cleanups_shl75_atax5_vt_join_q = {i_cleanups_shl75_atax5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor77_atax4(LOGICAL,23)@2
    assign i_first_cleanup_xor77_atax4_q = i_first_cleanup76_atax3_sel_x_b ^ VCC_q;

    // i_notcmp67_atax25(LOGICAL,56)@2
    assign i_notcmp67_atax25_q = i_exitcond_atax23_cmp_nsign_q ^ VCC_q;

    // i_or78_atax27(LOGICAL,57)@2
    assign i_or78_atax27_q = i_notcmp67_atax25_q | i_first_cleanup_xor77_atax4_q;

    // i_next_cleanups79_atax28(MUX,52)@2
    assign i_next_cleanups79_atax28_s = i_or78_atax27_q;
    always @(i_next_cleanups79_atax28_s or i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out or i_cleanups_shl75_atax5_vt_join_q)
    begin
        unique case (i_next_cleanups79_atax28_s)
            1'b0 : i_next_cleanups79_atax28_q = i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out;
            1'b1 : i_next_cleanups79_atax28_q = i_cleanups_shl75_atax5_vt_join_q;
            default : i_next_cleanups79_atax28_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups74_push29_atax29(BLACKBOX,46)@2
    // out out_feedback_out_29@20000000
    // out out_feedback_valid_out_29@20000000
    atax_i_llvm_fpga_push_i2_cleanups74_push29_0 thei_llvm_fpga_push_i2_cleanups74_push29_atax29 (
        .in_data_in(i_next_cleanups79_atax28_q),
        .in_feedback_stall_in_29(i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_feedback_stall_out_29),
        .in_keep_going71(redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_29(i_llvm_fpga_push_i2_cleanups74_push29_atax29_out_feedback_out_29),
        .out_feedback_valid_out_29(i_llvm_fpga_push_i2_cleanups74_push29_atax29_out_feedback_valid_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1(DELAY,462)
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

    // c_i2_138(CONSTANT,7)
    assign c_i2_138_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups74_pop29_atax2(BLACKBOX,38)@2
    // out out_feedback_stall_out_29@20000000
    atax_i_llvm_fpga_pop_i2_cleanups74_pop29_0 thei_llvm_fpga_pop_i2_cleanups74_pop29_atax2 (
        .in_data_in(c_i2_138_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_29(i_llvm_fpga_push_i2_cleanups74_push29_atax29_out_feedback_out_29),
        .in_feedback_valid_in_29(i_llvm_fpga_push_i2_cleanups74_push29_atax29_out_feedback_valid_out_29),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out),
        .out_feedback_stall_out_29(i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_feedback_stall_out_29),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup76_atax3_sel_x(BITSELECT,125)@2
    assign i_first_cleanup76_atax3_sel_x_b = i_llvm_fpga_pop_i2_cleanups74_pop29_atax2_out_data_out[0:0];

    // c_i6_144(CONSTANT,10)
    assign c_i6_144_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_atax30(ADD,24)@2
    assign i_fpga_indvars_iv_next_atax30_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22_out_data_out};
    assign i_fpga_indvars_iv_next_atax30_b = {1'b0, c_i6_144_q};
    assign i_fpga_indvars_iv_next_atax30_o = $unsigned(i_fpga_indvars_iv_next_atax30_a) + $unsigned(i_fpga_indvars_iv_next_atax30_b);
    assign i_fpga_indvars_iv_next_atax30_q = i_fpga_indvars_iv_next_atax30_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_atax30_sel_x(BITSELECT,63)@2
    assign bgTrunc_i_fpga_indvars_iv_next_atax30_sel_x_b = i_fpga_indvars_iv_next_atax30_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31(BLACKBOX,50)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    atax_i_llvm_fpga_push_i6_fpga_indvars_iv_push26_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_atax30_sel_x_b),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22_out_feedback_stall_out_26),
        .in_keep_going71(redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_1842(CONSTANT,11)
    assign c_i6_1842_q = $unsigned(6'b010010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22(BLACKBOX,42)@2
    // out out_feedback_stall_out_26@20000000
    atax_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22 (
        .in_data_in(c_i6_1842_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i6_fpga_indvars_iv_push26_atax31_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_atax23_cmp_nsign(LOGICAL,155)@2
    assign i_exitcond_atax23_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop26_atax22_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond81_atax26(BLACKBOX,45)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    atax_i_llvm_fpga_push_i1_notexitcond81_0 thei_llvm_fpga_push_i1_notexitcond81_atax26 (
        .in_data_in(i_exitcond_atax23_cmp_nsign_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pipeline_keep_going71_atax6_out_not_exitcond_stall_out),
        .in_first_cleanup76(i_first_cleanup76_atax3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist4_sync_together64_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_notexitcond81_atax26_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_notexitcond81_atax26_out_feedback_valid_out_11),
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

    // rightShiftStage0Idx1Rng1_uid231_i_next_initerations70_atax0_shift_x(BITSELECT,230)@2
    assign rightShiftStage0Idx1Rng1_uid231_i_next_initerations70_atax0_shift_x_b = i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid233_i_next_initerations70_atax0_shift_x(BITJOIN,232)@2
    assign rightShiftStage0Idx1_uid233_i_next_initerations70_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid231_i_next_initerations70_atax0_shift_x_b};

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

    // i_llvm_fpga_push_i2_initerations69_push28_atax9(BLACKBOX,47)@2
    // out out_feedback_out_28@20000000
    // out out_feedback_valid_out_28@20000000
    atax_i_llvm_fpga_push_i2_initerations69_push28_0 thei_llvm_fpga_push_i2_initerations69_push28_atax9 (
        .in_data_in(i_next_initerations70_atax8_vt_join_q),
        .in_feedback_stall_in_28(i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_feedback_stall_out_28),
        .in_keep_going71(redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_28(i_llvm_fpga_push_i2_initerations69_push28_atax9_out_feedback_out_28),
        .out_feedback_valid_out_28(i_llvm_fpga_push_i2_initerations69_push28_atax9_out_feedback_valid_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations69_pop28_atax7(BLACKBOX,39)@2
    // out out_feedback_stall_out_28@20000000
    atax_i_llvm_fpga_pop_i2_initerations69_pop28_0 thei_llvm_fpga_pop_i2_initerations69_pop28_atax7 (
        .in_data_in(c_i2_138_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_28(i_llvm_fpga_push_i2_initerations69_push28_atax9_out_feedback_out_28),
        .in_feedback_valid_in_28(i_llvm_fpga_push_i2_initerations69_push28_atax9_out_feedback_valid_out_28),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_data_out),
        .out_feedback_stall_out_28(i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_feedback_stall_out_28),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x(MUX,234)@2
    assign rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_s or i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_data_out or rightShiftStage0Idx1_uid233_i_next_initerations70_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_q = i_llvm_fpga_pop_i2_initerations69_pop28_atax7_out_data_out;
            1'b1 : rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_q = rightShiftStage0Idx1_uid233_i_next_initerations70_atax0_shift_x_q;
            default : rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations70_atax8_vt_select_0(BITSELECT,55)@2
    assign i_next_initerations70_atax8_vt_select_0_b = rightShiftStage0_uid235_i_next_initerations70_atax0_shift_x_q[0:0];

    // i_next_initerations70_atax8_vt_join(BITJOIN,54)@2
    assign i_next_initerations70_atax8_vt_join_q = {GND_q, i_next_initerations70_atax8_vt_select_0_b};

    // i_last_initeration72_atax10_sel_x(BITSELECT,128)@2
    assign i_last_initeration72_atax10_sel_x_b = i_next_initerations70_atax8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration73_atax11(BLACKBOX,43)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    atax_i_llvm_fpga_push_i1_lastiniteration73_0 thei_llvm_fpga_push_i1_lastiniteration73_atax11 (
        .in_data_in(i_last_initeration72_atax10_sel_x_b),
        .in_feedback_stall_in_10(i_llvm_fpga_pipeline_keep_going71_atax6_out_initeration_stall_out),
        .in_keep_going71(redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i1_lastiniteration73_atax11_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i1_lastiniteration73_atax11_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_atax6(BLACKBOX,36)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_llvm_fpga_pipeline_keep_going71_0 thei_llvm_fpga_pipeline_keep_going71_atax6 (
        .in_data_in(in_c0_eni3_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration73_atax11_out_feedback_out_10),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration73_atax11_out_feedback_valid_out_10),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond81_atax26_out_feedback_out_11),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond81_atax26_out_feedback_valid_out_11),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going71_atax6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going71_atax6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going71_atax6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going71_atax6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going71_atax6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going71_atax6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going71_atax6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going71_atax6_out_pipeline_valid_out;

    // redist5_sync_together64_aunroll_x_in_i_valid_2(DELAY,467)
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

    // valid_fanout_reg9(REG,144)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(redist5_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg10(REG,145)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg10_q <= $unsigned(redist5_sync_together64_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_push_i1_notcmp8394_push30_atax34(BLACKBOX,44)@4
    // out out_feedback_out_30@20000000
    // out out_feedback_valid_out_30@20000000
    atax_i_llvm_fpga_push_i1_notcmp8394_push30_0 thei_llvm_fpga_push_i1_notcmp8394_push30_atax34 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33_out_data_out),
        .in_feedback_stall_in_30(i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33_out_feedback_stall_out_30),
        .in_keep_going71(redist12_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_30(i_llvm_fpga_push_i1_notcmp8394_push30_atax34_out_feedback_out_30),
        .out_feedback_valid_out_30(i_llvm_fpga_push_i1_notcmp8394_push30_atax34_out_feedback_valid_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3(DELAY,463)
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

    // redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3(DELAY,465)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_0 <= '0;
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_1 <= '0;
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_0 <= $unsigned(in_c0_eni3_3_tpl);
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_1 <= redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_0;
            redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_q <= redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_delay_1;
        end
    end

    // i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33(BLACKBOX,37)@4
    // out out_feedback_stall_out_30@20000000
    atax_i_llvm_fpga_pop_i1_notcmp8394_pop30_0 thei_llvm_fpga_pop_i1_notcmp8394_pop30_atax33 (
        .in_data_in(redist3_sync_together64_aunroll_x_in_c0_eni3_3_tpl_3_q),
        .in_dir(redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_q),
        .in_feedback_in_30(i_llvm_fpga_push_i1_notcmp8394_push30_atax34_out_feedback_out_30),
        .in_feedback_valid_in_30(i_llvm_fpga_push_i1_notcmp8394_push30_atax34_out_feedback_valid_out_30),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33_out_data_out),
        .out_feedback_stall_out_30(i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33_out_feedback_stall_out_30),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_masked80_atax32(LOGICAL,51)@2 + 1
    assign i_masked80_atax32_qi = i_notcmp67_atax25_q & i_first_cleanup76_atax3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked80_atax32_delay ( .xin(i_masked80_atax32_qi), .xout(i_masked80_atax32_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist8_i_masked80_atax32_q_2(DELAY,470)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_masked80_atax32_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_masked80_atax32_q_2_q <= $unsigned(i_masked80_atax32_q);
        end
    end

    // c_atax_A_local_pmem(CONSTANT,4)
    assign c_atax_A_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx141_atax0_upper_bits_x_merged_bit_select(BITSELECT,456)@4
    assign i_arrayidx141_atax0_upper_bits_x_merged_bit_select_b = c_atax_A_local_pmem_q[63:11];
    assign i_arrayidx141_atax0_upper_bits_x_merged_bit_select_c = c_atax_A_local_pmem_q[10:0];

    // c_i32_040(CONSTANT,8)
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

    // c_i32_141(CONSTANT,9)
    assign c_i32_141_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_atax20(ADD,33)@4
    assign i_inc_atax20_a = {1'b0, i_llvm_fpga_pop_i32_j_046_pop27_atax15_out_data_out};
    assign i_inc_atax20_b = {1'b0, c_i32_141_q};
    assign i_inc_atax20_o = $unsigned(i_inc_atax20_a) + $unsigned(i_inc_atax20_b);
    assign i_inc_atax20_q = i_inc_atax20_o[32:0];

    // bgTrunc_i_inc_atax20_sel_x(BITSELECT,64)@4
    assign bgTrunc_i_inc_atax20_sel_x_b = i_inc_atax20_q[31:0];

    // i_llvm_fpga_push_i32_j_046_push27_atax21(BLACKBOX,49)@4
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    atax_i_llvm_fpga_push_i32_j_046_push27_0 thei_llvm_fpga_push_i32_j_046_push27_atax21 (
        .in_data_in(bgTrunc_i_inc_atax20_sel_x_b),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_j_046_pop27_atax15_out_feedback_stall_out_27),
        .in_keep_going71(redist12_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_3_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_j_046_push27_atax21_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_j_046_push27_atax21_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_046_pop27_atax15(BLACKBOX,41)@4
    // out out_feedback_stall_out_27@20000000
    atax_i_llvm_fpga_pop_i32_j_046_pop27_0 thei_llvm_fpga_pop_i32_j_046_pop27_atax15 (
        .in_data_in(c_i32_040_q),
        .in_dir(redist1_sync_together64_aunroll_x_in_c0_eni3_1_tpl_3_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_j_046_push27_atax21_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_j_046_push27_atax21_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_046_pop27_atax15_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_j_046_pop27_atax15_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom9_atax16_sel_x(BITSELECT,126)@4
    assign i_idxprom9_atax16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_046_pop27_atax15_out_data_out[31:0]};

    // i_idxprom9_atax16_vt_select_31(BITSELECT,28)@4
    assign i_idxprom9_atax16_vt_select_31_b = i_idxprom9_atax16_sel_x_b[31:0];

    // i_idxprom9_atax16_vt_join(BITJOIN,27)@4
    assign i_idxprom9_atax16_vt_join_q = {c_i32_040_q, i_idxprom9_atax16_vt_select_31_b};

    // i_arrayidx141_atax0_dupName_3_trunc_sel_x(BITSELECT,119)@4
    assign i_arrayidx141_atax0_dupName_3_trunc_sel_x_b = i_idxprom9_atax16_vt_join_q[10:0];

    // i_arrayidx141_atax0_narrow_x(BITSELECT,102)@4
    assign i_arrayidx141_atax0_narrow_x_b = i_arrayidx141_atax0_dupName_3_trunc_sel_x_b[8:0];

    // i_arrayidx141_atax0_shift_join_x(BITJOIN,103)@4
    assign i_arrayidx141_atax0_shift_join_x_q = {i_arrayidx141_atax0_narrow_x_b, i_arrayidx141_atax19_vt_const_1_q};

    // i_arrayidx141_atax0_mult_multconst_x(CONSTANT,114)
    assign i_arrayidx141_atax0_mult_multconst_x_q = $unsigned(4'b0000);

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

    // valid_fanout_reg5(REG,140)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist4_sync_together64_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist11_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_2(DELAY,473)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_2_q <= $unsigned(redist10_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i_047_pop1795_push31_atax13(BLACKBOX,48)@3
    // out out_feedback_out_31@20000000
    // out out_feedback_valid_out_31@20000000
    atax_i_llvm_fpga_push_i32_i_047_pop1795_push31_0 thei_llvm_fpga_push_i32_i_047_pop1795_push31_atax13 (
        .in_data_in(redist9_i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out_1_q),
        .in_feedback_stall_in_31(i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_feedback_stall_out_31),
        .in_keep_going71(redist11_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_31(i_llvm_fpga_push_i32_i_047_pop1795_push31_atax13_out_feedback_out_31),
        .out_feedback_valid_out_31(i_llvm_fpga_push_i32_i_047_pop1795_push31_atax13_out_feedback_valid_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1(DELAY,464)
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

    // i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12(BLACKBOX,40)@2
    // out out_feedback_stall_out_31@20000000
    atax_i_llvm_fpga_pop_i32_i_047_pop1795_pop31_0 thei_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12 (
        .in_data_in(redist2_sync_together64_aunroll_x_in_c0_eni3_2_tpl_1_q),
        .in_dir(redist0_sync_together64_aunroll_x_in_c0_eni3_1_tpl_1_q),
        .in_feedback_in_31(i_llvm_fpga_push_i32_i_047_pop1795_push31_atax13_out_feedback_out_31),
        .in_feedback_valid_in_31(i_llvm_fpga_push_i32_i_047_pop1795_push31_atax13_out_feedback_valid_out_31),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out),
        .out_feedback_stall_out_31(i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_feedback_stall_out_31),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out_1(DELAY,471)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out);
        end
    end

    // i_idxprom_atax14_sel_x(BITSELECT,127)@3
    assign i_idxprom_atax14_sel_x_b = {32'b00000000000000000000000000000000, redist9_i_llvm_fpga_pop_i32_i_047_pop1795_pop31_atax12_out_data_out_1_q[31:0]};

    // i_idxprom_atax14_vt_select_31(BITSELECT,32)@3
    assign i_idxprom_atax14_vt_select_31_b = i_idxprom_atax14_sel_x_b[31:0];

    // i_idxprom_atax14_vt_join(BITJOIN,31)@3
    assign i_idxprom_atax14_vt_join_q = {c_i32_040_q, i_idxprom_atax14_vt_select_31_b};

    // i_arrayidx141_atax0_dupName_0_trunc_sel_x(BITSELECT,116)@3
    assign i_arrayidx141_atax0_dupName_0_trunc_sel_x_b = i_idxprom_atax14_vt_join_q[10:0];

    // addsumAHighB_uid184_i_arrayidx141_atax0_mult_x(ADD,183)@3
    assign addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_a = {1'b0, i_arrayidx141_atax0_dupName_0_trunc_sel_x_b};
    assign addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_b = {3'b000, lowRangeB_uid182_i_arrayidx141_atax0_mult_x_merged_bit_select_c};
    assign addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_o = $unsigned(addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_a) + $unsigned(addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_b);
    assign addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_q = addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_o[11:0];

    // lowRangeB_uid182_i_arrayidx141_atax0_mult_x_merged_bit_select(BITSELECT,457)@3
    assign lowRangeB_uid182_i_arrayidx141_atax0_mult_x_merged_bit_select_b = i_arrayidx141_atax0_dupName_0_trunc_sel_x_b[1:0];
    assign lowRangeB_uid182_i_arrayidx141_atax0_mult_x_merged_bit_select_c = i_arrayidx141_atax0_dupName_0_trunc_sel_x_b[10:2];

    // add_uid185_i_arrayidx141_atax0_mult_x(BITJOIN,184)@3
    assign add_uid185_i_arrayidx141_atax0_mult_x_q = {addsumAHighB_uid184_i_arrayidx141_atax0_mult_x_q, lowRangeB_uid182_i_arrayidx141_atax0_mult_x_merged_bit_select_b};

    // sR_mergedSignalTM_uid190_i_arrayidx141_atax0_mult_x(BITJOIN,189)@3
    assign sR_mergedSignalTM_uid190_i_arrayidx141_atax0_mult_x_q = {add_uid185_i_arrayidx141_atax0_mult_x_q, i_arrayidx141_atax0_mult_multconst_x_q};

    // i_arrayidx141_atax0_mult_extender_x(BITJOIN,113)@3
    assign i_arrayidx141_atax0_mult_extender_x_q = {i_arrayidx141_atax0_mult_multconst_x_q, sR_mergedSignalTM_uid190_i_arrayidx141_atax0_mult_x_q};

    // i_arrayidx141_atax0_dupName_1_trunc_sel_x(BITSELECT,117)@3
    assign i_arrayidx141_atax0_dupName_1_trunc_sel_x_b = i_arrayidx141_atax0_mult_extender_x_q[10:0];

    // redist6_i_arrayidx141_atax0_dupName_1_trunc_sel_x_b_1(DELAY,468)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_arrayidx141_atax0_dupName_1_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_arrayidx141_atax0_dupName_1_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx141_atax0_dupName_1_trunc_sel_x_b);
        end
    end

    // i_arrayidx141_atax0_add_x(ADD,97)@4
    assign i_arrayidx141_atax0_add_x_a = {1'b0, i_arrayidx141_atax0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx141_atax0_add_x_b = {1'b0, redist6_i_arrayidx141_atax0_dupName_1_trunc_sel_x_b_1_q};
    assign i_arrayidx141_atax0_add_x_o = $unsigned(i_arrayidx141_atax0_add_x_a) + $unsigned(i_arrayidx141_atax0_add_x_b);
    assign i_arrayidx141_atax0_add_x_q = i_arrayidx141_atax0_add_x_o[11:0];

    // i_arrayidx141_atax0_dupName_2_trunc_sel_x(BITSELECT,118)@4
    assign i_arrayidx141_atax0_dupName_2_trunc_sel_x_b = i_arrayidx141_atax0_add_x_q[10:0];

    // i_arrayidx141_atax0_dupName_0_add_x(ADD,107)@4
    assign i_arrayidx141_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx141_atax0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx141_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx141_atax0_shift_join_x_q};
    assign i_arrayidx141_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx141_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx141_atax0_dupName_0_add_x_b);
    assign i_arrayidx141_atax0_dupName_0_add_x_q = i_arrayidx141_atax0_dupName_0_add_x_o[11:0];

    // i_arrayidx141_atax0_dupName_5_trunc_sel_x(BITSELECT,120)@4
    assign i_arrayidx141_atax0_dupName_5_trunc_sel_x_b = i_arrayidx141_atax0_dupName_0_add_x_q[10:0];

    // i_arrayidx141_atax0_append_upper_bits_x(BITJOIN,98)@4
    assign i_arrayidx141_atax0_append_upper_bits_x_q = {i_arrayidx141_atax0_upper_bits_x_merged_bit_select_b, i_arrayidx141_atax0_dupName_5_trunc_sel_x_b};

    // i_arrayidx141_atax19_vt_select_63(BITSELECT,17)@4
    assign i_arrayidx141_atax19_vt_select_63_b = i_arrayidx141_atax0_append_upper_bits_x_q[63:2];

    // i_arrayidx141_atax19_vt_const_1(CONSTANT,15)
    assign i_arrayidx141_atax19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx141_atax19_vt_join(BITJOIN,16)@4
    assign i_arrayidx141_atax19_vt_join_q = {i_arrayidx141_atax19_vt_select_63_b, i_arrayidx141_atax19_vt_const_1_q};

    // i_arrayidx10_atax0_narrow_x(BITSELECT,85)@4
    assign i_arrayidx10_atax0_narrow_x_b = i_idxprom9_atax16_vt_join_q[61:0];

    // i_arrayidx10_atax0_shift_join_x(BITJOIN,86)@4
    assign i_arrayidx10_atax0_shift_join_x_q = {i_arrayidx10_atax0_narrow_x_b, i_arrayidx141_atax19_vt_const_1_q};

    // i_arrayidx10_atax0_mult_multconst_x(CONSTANT,93)
    assign i_arrayidx10_atax0_mult_multconst_x_q = $unsigned(57'b000000000000000000000000000000000000000000000000000000000);

    // i_arrayidx10_atax0_mult_x_bs1(BITSELECT,157)@3
    assign i_arrayidx10_atax0_mult_x_bs1_b = i_idxprom_atax14_vt_join_q[63:54];

    // addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0(ADD,245)@3
    assign addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_a = {1'b0, i_arrayidx10_atax0_mult_x_bs1_b};
    assign addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_b = {3'b000, lowRangeB_uid244_i_arrayidx10_atax0_mult_x_im0_merged_bit_select_c};
    assign addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_o = $unsigned(addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_a) + $unsigned(addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_b);
    assign addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_q = addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_o[10:0];

    // lowRangeB_uid244_i_arrayidx10_atax0_mult_x_im0_merged_bit_select(BITSELECT,458)@3
    assign lowRangeB_uid244_i_arrayidx10_atax0_mult_x_im0_merged_bit_select_b = i_arrayidx10_atax0_mult_x_bs1_b[1:0];
    assign lowRangeB_uid244_i_arrayidx10_atax0_mult_x_im0_merged_bit_select_c = i_arrayidx10_atax0_mult_x_bs1_b[9:2];

    // add_uid247_i_arrayidx10_atax0_mult_x_im0(BITJOIN,246)@3
    assign add_uid247_i_arrayidx10_atax0_mult_x_im0_q = {addsumAHighB_uid246_i_arrayidx10_atax0_mult_x_im0_q, lowRangeB_uid244_i_arrayidx10_atax0_mult_x_im0_merged_bit_select_b};

    // sR_mergedSignalTM_uid252_i_arrayidx10_atax0_mult_x_im0(BITJOIN,251)@3
    assign sR_mergedSignalTM_uid252_i_arrayidx10_atax0_mult_x_im0_q = {add_uid247_i_arrayidx10_atax0_mult_x_im0_q, i_arrayidx141_atax0_mult_multconst_x_q};

    // i_arrayidx10_atax0_mult_x_sums_align_3(BITSHIFT,171)@3
    assign i_arrayidx10_atax0_mult_x_sums_align_3_qint = { sR_mergedSignalTM_uid252_i_arrayidx10_atax0_mult_x_im0_q, 11'b00000000000 };
    assign i_arrayidx10_atax0_mult_x_sums_align_3_q = i_arrayidx10_atax0_mult_x_sums_align_3_qint[27:0];

    // i_arrayidx10_atax0_mult_x_bs7(BITSELECT,163)@3
    assign i_arrayidx10_atax0_mult_x_bs7_in = i_idxprom_atax14_vt_join_q[35:0];
    assign i_arrayidx10_atax0_mult_x_bs7_b = i_arrayidx10_atax0_mult_x_bs7_in[35:18];

    // addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6(ADD,349)@3
    assign addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_a = {1'b0, i_arrayidx10_atax0_mult_x_bs7_b};
    assign addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_b = {3'b000, lowRangeB_uid348_i_arrayidx10_atax0_mult_x_im6_merged_bit_select_c};
    assign addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_o = $unsigned(addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_a) + $unsigned(addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_b);
    assign addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_q = addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_o[18:0];

    // lowRangeB_uid348_i_arrayidx10_atax0_mult_x_im6_merged_bit_select(BITSELECT,460)@3
    assign lowRangeB_uid348_i_arrayidx10_atax0_mult_x_im6_merged_bit_select_b = i_arrayidx10_atax0_mult_x_bs7_b[1:0];
    assign lowRangeB_uid348_i_arrayidx10_atax0_mult_x_im6_merged_bit_select_c = i_arrayidx10_atax0_mult_x_bs7_b[17:2];

    // add_uid351_i_arrayidx10_atax0_mult_x_im6(BITJOIN,350)@3
    assign add_uid351_i_arrayidx10_atax0_mult_x_im6_q = {addsumAHighB_uid350_i_arrayidx10_atax0_mult_x_im6_q, lowRangeB_uid348_i_arrayidx10_atax0_mult_x_im6_merged_bit_select_b};

    // sR_mergedSignalTM_uid356_i_arrayidx10_atax0_mult_x_im6(BITJOIN,355)@3
    assign sR_mergedSignalTM_uid356_i_arrayidx10_atax0_mult_x_im6_q = {add_uid351_i_arrayidx10_atax0_mult_x_im6_q, i_arrayidx141_atax0_mult_multconst_x_q};

    // i_arrayidx10_atax0_mult_x_sums_align_2(BITSHIFT,170)@3
    assign i_arrayidx10_atax0_mult_x_sums_align_2_qint = { sR_mergedSignalTM_uid356_i_arrayidx10_atax0_mult_x_im6_q, 18'b000000000000000000 };
    assign i_arrayidx10_atax0_mult_x_sums_align_2_q = i_arrayidx10_atax0_mult_x_sums_align_2_qint[42:0];

    // i_arrayidx10_atax0_mult_x_sums_join_4(BITJOIN,172)@3
    assign i_arrayidx10_atax0_mult_x_sums_join_4_q = {i_arrayidx10_atax0_mult_x_sums_align_3_q, i_arrayidx10_atax0_mult_x_sums_align_2_q};

    // i_arrayidx10_atax0_mult_x_bs4(BITSELECT,160)@3
    assign i_arrayidx10_atax0_mult_x_bs4_in = i_idxprom_atax14_vt_join_q[53:0];
    assign i_arrayidx10_atax0_mult_x_bs4_b = i_arrayidx10_atax0_mult_x_bs4_in[53:36];

    // addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3(ADD,291)@3
    assign addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_a = {1'b0, i_arrayidx10_atax0_mult_x_bs4_b};
    assign addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_b = {3'b000, lowRangeB_uid290_i_arrayidx10_atax0_mult_x_im3_merged_bit_select_c};
    assign addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_o = $unsigned(addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_a) + $unsigned(addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_b);
    assign addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_q = addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_o[18:0];

    // lowRangeB_uid290_i_arrayidx10_atax0_mult_x_im3_merged_bit_select(BITSELECT,459)@3
    assign lowRangeB_uid290_i_arrayidx10_atax0_mult_x_im3_merged_bit_select_b = i_arrayidx10_atax0_mult_x_bs4_b[1:0];
    assign lowRangeB_uid290_i_arrayidx10_atax0_mult_x_im3_merged_bit_select_c = i_arrayidx10_atax0_mult_x_bs4_b[17:2];

    // add_uid293_i_arrayidx10_atax0_mult_x_im3(BITJOIN,292)@3
    assign add_uid293_i_arrayidx10_atax0_mult_x_im3_q = {addsumAHighB_uid292_i_arrayidx10_atax0_mult_x_im3_q, lowRangeB_uid290_i_arrayidx10_atax0_mult_x_im3_merged_bit_select_b};

    // sR_mergedSignalTM_uid298_i_arrayidx10_atax0_mult_x_im3(BITJOIN,297)@3
    assign sR_mergedSignalTM_uid298_i_arrayidx10_atax0_mult_x_im3_q = {add_uid293_i_arrayidx10_atax0_mult_x_im3_q, i_arrayidx141_atax0_mult_multconst_x_q};

    // i_arrayidx10_atax0_mult_x_sums_align_0(BITSHIFT,168)@3
    assign i_arrayidx10_atax0_mult_x_sums_align_0_qint = { sR_mergedSignalTM_uid298_i_arrayidx10_atax0_mult_x_im3_q, 11'b00000000000 };
    assign i_arrayidx10_atax0_mult_x_sums_align_0_q = i_arrayidx10_atax0_mult_x_sums_align_0_qint[35:0];

    // i_arrayidx10_atax0_mult_x_bs10(BITSELECT,166)@3
    assign i_arrayidx10_atax0_mult_x_bs10_in = i_idxprom_atax14_vt_join_q[17:0];
    assign i_arrayidx10_atax0_mult_x_bs10_b = i_arrayidx10_atax0_mult_x_bs10_in[17:0];

    // addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9(ADD,407)@3
    assign addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_a = {1'b0, i_arrayidx10_atax0_mult_x_bs10_b};
    assign addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_b = {3'b000, lowRangeB_uid406_i_arrayidx10_atax0_mult_x_im9_merged_bit_select_c};
    assign addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_o = $unsigned(addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_a) + $unsigned(addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_b);
    assign addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_q = addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_o[18:0];

    // lowRangeB_uid406_i_arrayidx10_atax0_mult_x_im9_merged_bit_select(BITSELECT,461)@3
    assign lowRangeB_uid406_i_arrayidx10_atax0_mult_x_im9_merged_bit_select_b = i_arrayidx10_atax0_mult_x_bs10_b[1:0];
    assign lowRangeB_uid406_i_arrayidx10_atax0_mult_x_im9_merged_bit_select_c = i_arrayidx10_atax0_mult_x_bs10_b[17:2];

    // add_uid409_i_arrayidx10_atax0_mult_x_im9(BITJOIN,408)@3
    assign add_uid409_i_arrayidx10_atax0_mult_x_im9_q = {addsumAHighB_uid408_i_arrayidx10_atax0_mult_x_im9_q, lowRangeB_uid406_i_arrayidx10_atax0_mult_x_im9_merged_bit_select_b};

    // sR_mergedSignalTM_uid414_i_arrayidx10_atax0_mult_x_im9(BITJOIN,413)@3
    assign sR_mergedSignalTM_uid414_i_arrayidx10_atax0_mult_x_im9_q = {add_uid409_i_arrayidx10_atax0_mult_x_im9_q, i_arrayidx141_atax0_mult_multconst_x_q};

    // i_arrayidx10_atax0_mult_x_sums_join_1(BITJOIN,169)@3
    assign i_arrayidx10_atax0_mult_x_sums_join_1_q = {i_arrayidx10_atax0_mult_x_sums_align_0_q, sR_mergedSignalTM_uid414_i_arrayidx10_atax0_mult_x_im9_q};

    // i_arrayidx10_atax0_mult_x_sums_result_add_0_0(ADD,173)@3
    assign i_arrayidx10_atax0_mult_x_sums_result_add_0_0_a = {11'b00000000000, i_arrayidx10_atax0_mult_x_sums_join_1_q};
    assign i_arrayidx10_atax0_mult_x_sums_result_add_0_0_b = {1'b0, i_arrayidx10_atax0_mult_x_sums_join_4_q};
    assign i_arrayidx10_atax0_mult_x_sums_result_add_0_0_o = $unsigned(i_arrayidx10_atax0_mult_x_sums_result_add_0_0_a) + $unsigned(i_arrayidx10_atax0_mult_x_sums_result_add_0_0_b);
    assign i_arrayidx10_atax0_mult_x_sums_result_add_0_0_q = i_arrayidx10_atax0_mult_x_sums_result_add_0_0_o[71:0];

    // i_arrayidx10_atax0_mult_extender_x(BITJOIN,92)@3
    assign i_arrayidx10_atax0_mult_extender_x_q = {i_arrayidx10_atax0_mult_multconst_x_q, i_arrayidx10_atax0_mult_x_sums_result_add_0_0_q[70:0]};

    // i_arrayidx10_atax0_trunc_sel_x(BITSELECT,94)@3
    assign i_arrayidx10_atax0_trunc_sel_x_b = i_arrayidx10_atax0_mult_extender_x_q[63:0];

    // redist7_i_arrayidx10_atax0_trunc_sel_x_b_1(DELAY,469)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_arrayidx10_atax0_trunc_sel_x_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_arrayidx10_atax0_trunc_sel_x_b_1_q <= $unsigned(i_arrayidx10_atax0_trunc_sel_x_b);
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

    // i_llvm_fpga_ffwd_dest_p1024a20i32_a4824_atax17(BLACKBOX,35)@4
    atax_i_llvm_fpga_ffwd_dest_p1024a20i32_a4824_0 thei_llvm_fpga_ffwd_dest_p1024a20i32_a4824_atax17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a20i32_a4824_atax17_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx10_atax0_add_x(ADD,81)@4
    assign i_arrayidx10_atax0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a20i32_a4824_atax17_out_dest_data_out_0_0};
    assign i_arrayidx10_atax0_add_x_b = {1'b0, redist7_i_arrayidx10_atax0_trunc_sel_x_b_1_q};
    assign i_arrayidx10_atax0_add_x_o = $unsigned(i_arrayidx10_atax0_add_x_a) + $unsigned(i_arrayidx10_atax0_add_x_b);
    assign i_arrayidx10_atax0_add_x_q = i_arrayidx10_atax0_add_x_o[64:0];

    // i_arrayidx10_atax0_dupName_0_trunc_sel_x(BITSELECT,95)@4
    assign i_arrayidx10_atax0_dupName_0_trunc_sel_x_b = i_arrayidx10_atax0_add_x_q[63:0];

    // i_arrayidx10_atax0_dupName_0_add_x(ADD,89)@4
    assign i_arrayidx10_atax0_dupName_0_add_x_a = {1'b0, i_arrayidx10_atax0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx10_atax0_dupName_0_add_x_b = {1'b0, i_arrayidx10_atax0_shift_join_x_q};
    assign i_arrayidx10_atax0_dupName_0_add_x_o = $unsigned(i_arrayidx10_atax0_dupName_0_add_x_a) + $unsigned(i_arrayidx10_atax0_dupName_0_add_x_b);
    assign i_arrayidx10_atax0_dupName_0_add_x_q = i_arrayidx10_atax0_dupName_0_add_x_o[64:0];

    // i_arrayidx10_atax0_dupName_2_trunc_sel_x(BITSELECT,96)@4
    assign i_arrayidx10_atax0_dupName_2_trunc_sel_x_b = i_arrayidx10_atax0_dupName_0_add_x_q[63:0];

    // redist13_i_idxprom_atax14_vt_join_q_1(DELAY,475)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_idxprom_atax14_vt_join_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_idxprom_atax14_vt_join_q_1_q <= $unsigned(i_idxprom_atax14_vt_join_q);
        end
    end

    // redist12_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_3(DELAY,474)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_3_q <= $unsigned(redist11_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_2_q);
        end
    end

    // redist14_i_first_cleanup_xor77_atax4_q_2(DELAY,476)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_first_cleanup_xor77_atax4_q_2_delay_0 <= '0;
            redist14_i_first_cleanup_xor77_atax4_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_first_cleanup_xor77_atax4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor77_atax4_q);
            redist14_i_first_cleanup_xor77_atax4_q_2_q <= redist14_i_first_cleanup_xor77_atax4_q_2_delay_0;
        end
    end

    // sync_out_aunroll_x(GPOUT,133)@4
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = redist14_i_first_cleanup_xor77_atax4_q_2_q;
    assign out_c0_exi7_2_tpl = redist12_i_llvm_fpga_pipeline_keep_going71_atax6_out_data_out_3_q;
    assign out_c0_exi7_3_tpl = redist13_i_idxprom_atax14_vt_join_q_1_q;
    assign out_c0_exi7_4_tpl = i_arrayidx10_atax0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi7_5_tpl = i_arrayidx141_atax19_vt_join_q;
    assign out_c0_exi7_6_tpl = redist8_i_masked80_atax32_q_2_q;
    assign out_c0_exi7_7_tpl = i_llvm_fpga_pop_i1_notcmp8394_pop30_atax33_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_atax1 = GND_q;

endmodule
