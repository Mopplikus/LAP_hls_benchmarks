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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_covariances_c0_enter25532_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body60000ter25532_covariance0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi10_0_tpl,
    output wire [0:0] out_c0_exi10_1_tpl,
    output wire [0:0] out_c0_exi10_2_tpl,
    output wire [63:0] out_c0_exi10_3_tpl,
    output wire [63:0] out_c0_exi10_4_tpl,
    output wire [63:0] out_c0_exi10_5_tpl,
    output wire [63:0] out_c0_exi10_6_tpl,
    output wire [0:0] out_c0_exi10_7_tpl,
    output wire [31:0] out_c0_exi10_8_tpl,
    output wire [0:0] out_c0_exi10_9_tpl,
    output wire [31:0] out_c0_exi10_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni5_0_tpl,
    input wire [0:0] in_c0_eni5_1_tpl,
    input wire [31:0] in_c0_eni5_2_tpl,
    input wire [31:0] in_c0_eni5_3_tpl,
    input wire [0:0] in_c0_eni5_4_tpl,
    input wire [31:0] in_c0_eni5_5_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] c_covariance_cov_local_pmem_q;
    wire [63:0] c_covariance_data_local_pmem_q;
    wire [1:0] c_i2_143_q;
    wire [31:0] c_i32_045_q;
    wire [31:0] c_i32_146_q;
    wire [5:0] c_i6_149_q;
    wire [5:0] c_i6_3047_q;
    wire [1:0] i_arrayidx121_covariance19_vt_const_1_q;
    wire [63:0] i_arrayidx121_covariance19_vt_join_q;
    wire [61:0] i_arrayidx121_covariance19_vt_select_63_b;
    wire [63:0] i_arrayidx202_covariance22_vt_join_q;
    wire [61:0] i_arrayidx202_covariance22_vt_select_63_b;
    wire [1:0] i_cleanups_shl114_covariance5_vt_join_q;
    wire [0:0] i_cleanups_shl114_covariance5_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor116_covariance4_q;
    wire [6:0] i_fpga_indvars_iv_next_covariance33_a;
    wire [6:0] i_fpga_indvars_iv_next_covariance33_b;
    logic [6:0] i_fpga_indvars_iv_next_covariance33_o;
    wire [6:0] i_fpga_indvars_iv_next_covariance33_q;
    wire [63:0] i_idxprom7_covariance16_vt_join_q;
    wire [31:0] i_idxprom7_covariance16_vt_select_31_b;
    wire [63:0] i_idxprom_covariance14_vt_join_q;
    wire [31:0] i_idxprom_covariance14_vt_select_31_b;
    wire [32:0] i_inc_covariance23_a;
    wire [32:0] i_inc_covariance23_b;
    logic [32:0] i_inc_covariance23_o;
    wire [32:0] i_inc_covariance23_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a32i32_cov6636_covariance20_out_dest_data_out_1_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024a32i32_data6534_covariance17_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_feedback_stall_out_45;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_feedback_stall_out_43;
    wire [1:0] i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_feedback_stall_out_42;
    wire [31:0] i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_feedback_stall_out_46;
    wire [31:0] i_llvm_fpga_pop_i32_j_063_pop41_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_063_pop41_covariance15_out_feedback_stall_out_41;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_feedback_stall_out_44;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25_out_feedback_stall_out_40;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration112_covariance11_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration112_covariance11_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_notcmp122146_push45_covariance39_out_feedback_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notcmp122146_push45_covariance39_out_feedback_valid_out_45;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond120_covariance29_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond120_covariance29_out_feedback_valid_out_20;
    wire [7:0] i_llvm_fpga_push_i2_cleanups113_push43_covariance32_out_feedback_out_43;
    wire [0:0] i_llvm_fpga_push_i2_cleanups113_push43_covariance32_out_feedback_valid_out_43;
    wire [7:0] i_llvm_fpga_push_i2_initerations108_push42_covariance9_out_feedback_out_42;
    wire [0:0] i_llvm_fpga_push_i2_initerations108_push42_covariance9_out_feedback_valid_out_42;
    wire [31:0] i_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13_out_feedback_out_46;
    wire [0:0] i_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13_out_feedback_valid_out_46;
    wire [31:0] i_llvm_fpga_push_i32_j_063_push41_covariance24_out_feedback_out_41;
    wire [0:0] i_llvm_fpga_push_i32_j_063_push41_covariance24_out_feedback_valid_out_41;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext133_push44_covariance37_out_feedback_out_44;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext133_push44_covariance37_out_feedback_valid_out_44;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34_out_feedback_out_40;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34_out_feedback_valid_out_40;
    wire [0:0] i_masked119_covariance35_qi;
    reg [0:0] i_masked119_covariance35_q;
    wire [0:0] i_next_cleanups118_covariance31_s;
    reg [1:0] i_next_cleanups118_covariance31_q;
    wire [1:0] i_next_initerations109_covariance8_vt_join_q;
    wire [0:0] i_next_initerations109_covariance8_vt_select_0_b;
    wire [0:0] i_notcmp106_covariance28_q;
    wire [0:0] i_or117_covariance30_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next_covariance33_sel_x_b;
    wire [31:0] bgTrunc_i_inc_covariance23_sel_x_b;
    wire [12:0] i_arrayidx121_covariance0_add_x_a;
    wire [12:0] i_arrayidx121_covariance0_add_x_b;
    logic [12:0] i_arrayidx121_covariance0_add_x_o;
    wire [12:0] i_arrayidx121_covariance0_add_x_q;
    wire [63:0] i_arrayidx121_covariance0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx121_covariance0_c_i7_01_x_q;
    wire [4:0] i_arrayidx121_covariance0_narrow_x_b;
    wire [11:0] i_arrayidx121_covariance0_shift_join_x_q;
    wire [12:0] i_arrayidx121_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx121_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx121_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx121_covariance0_dupName_0_add_x_q;
    wire [9:0] i_arrayidx121_covariance0_dupName_0_narrow_x_b;
    wire [11:0] i_arrayidx121_covariance0_dupName_0_shift_join_x_q;
    wire [11:0] i_arrayidx121_covariance0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx121_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx121_covariance0_dupName_3_trunc_sel_x_b;
    wire [11:0] i_arrayidx121_covariance0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx16_covariance0_add_x_a;
    wire [64:0] i_arrayidx16_covariance0_add_x_b;
    logic [64:0] i_arrayidx16_covariance0_add_x_o;
    wire [64:0] i_arrayidx16_covariance0_add_x_q;
    wire [56:0] i_arrayidx16_covariance0_narrow_x_b;
    wire [63:0] i_arrayidx16_covariance0_shift_join_x_q;
    wire [64:0] i_arrayidx16_covariance0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx16_covariance0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx16_covariance0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx16_covariance0_dupName_0_add_x_q;
    wire [61:0] i_arrayidx16_covariance0_dupName_0_narrow_x_b;
    wire [63:0] i_arrayidx16_covariance0_dupName_0_shift_join_x_q;
    wire [63:0] i_arrayidx16_covariance0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx16_covariance0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx202_covariance0_add_x_a;
    wire [12:0] i_arrayidx202_covariance0_add_x_b;
    logic [12:0] i_arrayidx202_covariance0_add_x_o;
    wire [12:0] i_arrayidx202_covariance0_add_x_q;
    wire [63:0] i_arrayidx202_covariance0_append_upper_bits_x_q;
    wire [12:0] i_arrayidx202_covariance0_dupName_0_add_x_a;
    wire [12:0] i_arrayidx202_covariance0_dupName_0_add_x_b;
    logic [12:0] i_arrayidx202_covariance0_dupName_0_add_x_o;
    wire [12:0] i_arrayidx202_covariance0_dupName_0_add_x_q;
    wire [11:0] i_arrayidx202_covariance0_dupName_2_trunc_sel_x_b;
    wire [11:0] i_arrayidx202_covariance0_dupName_5_trunc_sel_x_b;
    wire [64:0] i_arrayidx8_covariance0_add_x_a;
    wire [64:0] i_arrayidx8_covariance0_add_x_b;
    logic [64:0] i_arrayidx8_covariance0_add_x_o;
    wire [64:0] i_arrayidx8_covariance0_add_x_q;
    wire [64:0] i_arrayidx8_covariance0_dupName_0_add_x_a;
    wire [64:0] i_arrayidx8_covariance0_dupName_0_add_x_b;
    logic [64:0] i_arrayidx8_covariance0_dupName_0_add_x_o;
    wire [64:0] i_arrayidx8_covariance0_dupName_0_add_x_q;
    wire [63:0] i_arrayidx8_covariance0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_arrayidx8_covariance0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup115_covariance3_sel_x_b;
    wire [63:0] i_idxprom7_covariance16_sel_x_b;
    wire [63:0] i_idxprom_covariance14_sel_x_b;
    wire [0:0] i_last_initeration111_covariance10_sel_x_b;
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
    wire [0:0] i_exitcond_covariance26_cmp_nsign_q;
    wire [0:0] leftShiftStage0Idx1Rng1_uid198_i_cleanups_shl114_covariance0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid198_i_cleanups_shl114_covariance0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid199_i_cleanups_shl114_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_s;
    reg [1:0] leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid205_i_next_initerations109_covariance0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid207_i_next_initerations109_covariance0_shift_x_q;
    wire [0:0] rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_s;
    reg [1:0] rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_q;
    wire [51:0] i_arrayidx202_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx202_covariance0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx121_covariance0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx121_covariance0_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q;
    reg [0:0] redist1_sync_together71_aunroll_x_in_c0_eni5_1_tpl_2_q;
    reg [31:0] redist2_sync_together71_aunroll_x_in_c0_eni5_2_tpl_1_q;
    reg [31:0] redist3_sync_together71_aunroll_x_in_c0_eni5_3_tpl_1_q;
    reg [0:0] redist4_sync_together71_aunroll_x_in_c0_eni5_4_tpl_1_q;
    reg [31:0] redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_q;
    reg [31:0] redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_delay_0;
    reg [0:0] redist6_sync_together71_aunroll_x_in_i_valid_1_q;
    reg [31:0] redist7_i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out_1_q;
    reg [31:0] redist8_i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out_1_q;
    reg [0:0] redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q;
    reg [0:0] redist11_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_2_q;
    reg [0:0] redist12_i_first_cleanup_xor116_covariance4_q_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,225)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist6_sync_together71_aunroll_x_in_i_valid_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together71_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_sync_together71_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid198_i_cleanups_shl114_covariance0_shift_x(BITSELECT,197)@2
    assign leftShiftStage0Idx1Rng1_uid198_i_cleanups_shl114_covariance0_shift_x_in = i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out[0:0];
    assign leftShiftStage0Idx1Rng1_uid198_i_cleanups_shl114_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid198_i_cleanups_shl114_covariance0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid199_i_cleanups_shl114_covariance0_shift_x(BITJOIN,198)@2
    assign leftShiftStage0Idx1_uid199_i_cleanups_shl114_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid198_i_cleanups_shl114_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x(MUX,200)@2
    assign leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_s or i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out or leftShiftStage0Idx1_uid199_i_cleanups_shl114_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_q = i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out;
            1'b1 : leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_q = leftShiftStage0Idx1_uid199_i_cleanups_shl114_covariance0_shift_x_q;
            default : leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl114_covariance5_vt_select_1(BITSELECT,24)@2
    assign i_cleanups_shl114_covariance5_vt_select_1_b = leftShiftStage0_uid201_i_cleanups_shl114_covariance0_shift_x_q[1:1];

    // i_cleanups_shl114_covariance5_vt_join(BITJOIN,23)@2
    assign i_cleanups_shl114_covariance5_vt_join_q = {i_cleanups_shl114_covariance5_vt_select_1_b, GND_q};

    // i_first_cleanup_xor116_covariance4(LOGICAL,27)@2
    assign i_first_cleanup_xor116_covariance4_q = i_first_cleanup115_covariance3_sel_x_b ^ VCC_q;

    // i_notcmp106_covariance28(LOGICAL,63)@2
    assign i_notcmp106_covariance28_q = i_exitcond_covariance26_cmp_nsign_q ^ VCC_q;

    // i_or117_covariance30(LOGICAL,64)@2
    assign i_or117_covariance30_q = i_notcmp106_covariance28_q | i_first_cleanup_xor116_covariance4_q;

    // i_next_cleanups118_covariance31(MUX,59)@2
    assign i_next_cleanups118_covariance31_s = i_or117_covariance30_q;
    always @(i_next_cleanups118_covariance31_s or i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out or i_cleanups_shl114_covariance5_vt_join_q)
    begin
        unique case (i_next_cleanups118_covariance31_s)
            1'b0 : i_next_cleanups118_covariance31_q = i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out;
            1'b1 : i_next_cleanups118_covariance31_q = i_cleanups_shl114_covariance5_vt_join_q;
            default : i_next_cleanups118_covariance31_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups113_push43_covariance32(BLACKBOX,52)@2
    // out out_feedback_out_43@20000000
    // out out_feedback_valid_out_43@20000000
    covariance_i_llvm_fpga_push_i2_cleanups113_push43_0 thei_llvm_fpga_push_i2_cleanups113_push43_covariance32 (
        .in_data_in(i_next_cleanups118_covariance31_q),
        .in_feedback_stall_in_43(i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_feedback_stall_out_43),
        .in_keep_going110(redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_43(i_llvm_fpga_push_i2_cleanups113_push43_covariance32_out_feedback_out_43),
        .out_feedback_valid_out_43(i_llvm_fpga_push_i2_cleanups113_push43_covariance32_out_feedback_valid_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q <= $unsigned(in_c0_eni5_1_tpl);
        end
    end

    // c_i2_143(CONSTANT,8)
    assign c_i2_143_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2(BLACKBOX,43)@2
    // out out_feedback_stall_out_43@20000000
    covariance_i_llvm_fpga_pop_i2_cleanups113_pop43_0 thei_llvm_fpga_pop_i2_cleanups113_pop43_covariance2 (
        .in_data_in(c_i2_143_q),
        .in_dir(redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_43(i_llvm_fpga_push_i2_cleanups113_push43_covariance32_out_feedback_out_43),
        .in_feedback_valid_in_43(i_llvm_fpga_push_i2_cleanups113_push43_covariance32_out_feedback_valid_out_43),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out),
        .out_feedback_stall_out_43(i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_feedback_stall_out_43),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup115_covariance3_sel_x(BITSELECT,160)@2
    assign i_first_cleanup115_covariance3_sel_x_b = i_llvm_fpga_pop_i2_cleanups113_pop43_covariance2_out_data_out[0:0];

    // c_i6_149(CONSTANT,11)
    assign c_i6_149_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next_covariance33(ADD,28)@2
    assign i_fpga_indvars_iv_next_covariance33_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25_out_data_out};
    assign i_fpga_indvars_iv_next_covariance33_b = {1'b0, c_i6_149_q};
    assign i_fpga_indvars_iv_next_covariance33_o = $unsigned(i_fpga_indvars_iv_next_covariance33_a) + $unsigned(i_fpga_indvars_iv_next_covariance33_b);
    assign i_fpga_indvars_iv_next_covariance33_q = i_fpga_indvars_iv_next_covariance33_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next_covariance33_sel_x(BITSELECT,71)@2
    assign bgTrunc_i_fpga_indvars_iv_next_covariance33_sel_x_b = i_fpga_indvars_iv_next_covariance33_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34(BLACKBOX,57)@2
    // out out_feedback_out_40@20000000
    // out out_feedback_valid_out_40@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv_push40_0 thei_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_covariance33_sel_x_b),
        .in_feedback_stall_in_40(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25_out_feedback_stall_out_40),
        .in_keep_going110(redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_40(i_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34_out_feedback_out_40),
        .out_feedback_valid_out_40(i_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34_out_feedback_valid_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3047(CONSTANT,12)
    assign c_i6_3047_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25(BLACKBOX,48)@2
    // out out_feedback_stall_out_40@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25 (
        .in_data_in(c_i6_3047_q),
        .in_dir(redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_40(i_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34_out_feedback_out_40),
        .in_feedback_valid_in_40(i_llvm_fpga_push_i6_fpga_indvars_iv_push40_covariance34_out_feedback_valid_out_40),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25_out_data_out),
        .out_feedback_stall_out_40(i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25_out_feedback_stall_out_40),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_covariance26_cmp_nsign(LOGICAL,193)@2
    assign i_exitcond_covariance26_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv_pop40_covariance25_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond120_covariance29(BLACKBOX,51)@2
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond120_0 thei_llvm_fpga_push_i1_notexitcond120_covariance29 (
        .in_data_in(i_exitcond_covariance26_cmp_nsign_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pipeline_keep_going110_covariance6_out_not_exitcond_stall_out),
        .in_first_cleanup115(i_first_cleanup115_covariance3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist6_sync_together71_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_notexitcond120_covariance29_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_notexitcond120_covariance29_out_feedback_valid_out_20),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,173)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid205_i_next_initerations109_covariance0_shift_x(BITSELECT,204)@2
    assign rightShiftStage0Idx1Rng1_uid205_i_next_initerations109_covariance0_shift_x_b = i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_data_out[1:1];

    // rightShiftStage0Idx1_uid207_i_next_initerations109_covariance0_shift_x(BITJOIN,206)@2
    assign rightShiftStage0Idx1_uid207_i_next_initerations109_covariance0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid205_i_next_initerations109_covariance0_shift_x_b};

    // valid_fanout_reg1(REG,171)@1 + 1
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

    // valid_fanout_reg2(REG,172)@1 + 1
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

    // i_llvm_fpga_push_i2_initerations108_push42_covariance9(BLACKBOX,53)@2
    // out out_feedback_out_42@20000000
    // out out_feedback_valid_out_42@20000000
    covariance_i_llvm_fpga_push_i2_initerations108_push42_0 thei_llvm_fpga_push_i2_initerations108_push42_covariance9 (
        .in_data_in(i_next_initerations109_covariance8_vt_join_q),
        .in_feedback_stall_in_42(i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_feedback_stall_out_42),
        .in_keep_going110(redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_42(i_llvm_fpga_push_i2_initerations108_push42_covariance9_out_feedback_out_42),
        .out_feedback_valid_out_42(i_llvm_fpga_push_i2_initerations108_push42_covariance9_out_feedback_valid_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_initerations108_pop42_covariance7(BLACKBOX,44)@2
    // out out_feedback_stall_out_42@20000000
    covariance_i_llvm_fpga_pop_i2_initerations108_pop42_0 thei_llvm_fpga_pop_i2_initerations108_pop42_covariance7 (
        .in_data_in(c_i2_143_q),
        .in_dir(redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_42(i_llvm_fpga_push_i2_initerations108_push42_covariance9_out_feedback_out_42),
        .in_feedback_valid_in_42(i_llvm_fpga_push_i2_initerations108_push42_covariance9_out_feedback_valid_out_42),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_data_out),
        .out_feedback_stall_out_42(i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_feedback_stall_out_42),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x(MUX,208)@2
    assign rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_s or i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_data_out or rightShiftStage0Idx1_uid207_i_next_initerations109_covariance0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_s)
            1'b0 : rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_q = i_llvm_fpga_pop_i2_initerations108_pop42_covariance7_out_data_out;
            1'b1 : rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_q = rightShiftStage0Idx1_uid207_i_next_initerations109_covariance0_shift_x_q;
            default : rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations109_covariance8_vt_select_0(BITSELECT,62)@2
    assign i_next_initerations109_covariance8_vt_select_0_b = rightShiftStage0_uid209_i_next_initerations109_covariance0_shift_x_q[0:0];

    // i_next_initerations109_covariance8_vt_join(BITJOIN,61)@2
    assign i_next_initerations109_covariance8_vt_join_q = {GND_q, i_next_initerations109_covariance8_vt_select_0_b};

    // i_last_initeration111_covariance10_sel_x(BITSELECT,163)@2
    assign i_last_initeration111_covariance10_sel_x_b = i_next_initerations109_covariance8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration112_covariance11(BLACKBOX,49)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    covariance_i_llvm_fpga_push_i1_lastiniteration112_0 thei_llvm_fpga_push_i1_lastiniteration112_covariance11 (
        .in_data_in(i_last_initeration111_covariance10_sel_x_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pipeline_keep_going110_covariance6_out_initeration_stall_out),
        .in_keep_going110(redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_lastiniteration112_covariance11_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_lastiniteration112_covariance11_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going110_covariance6(BLACKBOX,41)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going110_0 thei_llvm_fpga_pipeline_keep_going110_covariance6 (
        .in_data_in(in_c0_eni5_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration112_covariance11_out_feedback_out_19),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration112_covariance11_out_feedback_valid_out_19),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond120_covariance29_out_feedback_out_20),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond120_covariance29_out_feedback_valid_out_20),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going110_covariance6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going110_covariance6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going110_covariance6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going110_covariance6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going110_covariance6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,15)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going110_covariance6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going110_covariance6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going110_covariance6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,67)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going110_covariance6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,170)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist6_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_delay_0 <= '0;
            redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_delay_0 <= $unsigned(in_c0_eni5_5_tpl);
            redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_q <= redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_delay_0;
        end
    end

    // valid_fanout_reg12(REG,182)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg13(REG,183)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg13_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg13_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i1_notcmp122146_push45_covariance39(BLACKBOX,50)@2
    // out out_feedback_out_45@20000000
    // out out_feedback_valid_out_45@20000000
    covariance_i_llvm_fpga_push_i1_notcmp122146_push45_0 thei_llvm_fpga_push_i1_notcmp122146_push45_covariance39 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out),
        .in_feedback_stall_in_45(i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_feedback_stall_out_45),
        .in_keep_going110(redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg13_q),
        .out_data_out(),
        .out_feedback_out_45(i_llvm_fpga_push_i1_notcmp122146_push45_covariance39_out_feedback_out_45),
        .out_feedback_valid_out_45(i_llvm_fpga_push_i1_notcmp122146_push45_covariance39_out_feedback_valid_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_sync_together71_aunroll_x_in_c0_eni5_4_tpl_1(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together71_aunroll_x_in_c0_eni5_4_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist4_sync_together71_aunroll_x_in_c0_eni5_4_tpl_1_q <= $unsigned(in_c0_eni5_4_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38(BLACKBOX,42)@2
    // out out_feedback_stall_out_45@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp122146_pop45_0 thei_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38 (
        .in_data_in(redist4_sync_together71_aunroll_x_in_c0_eni5_4_tpl_1_q),
        .in_dir(redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_45(i_llvm_fpga_push_i1_notcmp122146_push45_covariance39_out_feedback_out_45),
        .in_feedback_valid_in_45(i_llvm_fpga_push_i1_notcmp122146_push45_covariance39_out_feedback_valid_out_45),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out),
        .out_feedback_stall_out_45(i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_feedback_stall_out_45),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist9_i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out_1(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out);
        end
    end

    // valid_fanout_reg10(REG,180)@1 + 1
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

    // valid_fanout_reg11(REG,181)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_lim_ext133_push44_covariance37(BLACKBOX,56)@2
    // out out_feedback_out_44@20000000
    // out out_feedback_valid_out_44@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext133_push44_0 thei_llvm_fpga_push_i32_lim_ext133_push44_covariance37 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out),
        .in_feedback_stall_in_44(i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_feedback_stall_out_44),
        .in_keep_going110(redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(),
        .out_feedback_out_44(i_llvm_fpga_push_i32_lim_ext133_push44_covariance37_out_feedback_out_44),
        .out_feedback_valid_out_44(i_llvm_fpga_push_i32_lim_ext133_push44_covariance37_out_feedback_valid_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_sync_together71_aunroll_x_in_c0_eni5_3_tpl_1(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together71_aunroll_x_in_c0_eni5_3_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist3_sync_together71_aunroll_x_in_c0_eni5_3_tpl_1_q <= $unsigned(in_c0_eni5_3_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36(BLACKBOX,47)@2
    // out out_feedback_stall_out_44@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext133_pop44_0 thei_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36 (
        .in_data_in(redist3_sync_together71_aunroll_x_in_c0_eni5_3_tpl_1_q),
        .in_dir(redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_44(i_llvm_fpga_push_i32_lim_ext133_push44_covariance37_out_feedback_out_44),
        .in_feedback_valid_in_44(i_llvm_fpga_push_i32_lim_ext133_push44_covariance37_out_feedback_valid_out_44),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out),
        .out_feedback_stall_out_44(i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_feedback_stall_out_44),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist7_i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out_1(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out);
        end
    end

    // i_masked119_covariance35(LOGICAL,58)@2 + 1
    assign i_masked119_covariance35_qi = i_notcmp106_covariance28_q & i_first_cleanup115_covariance3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked119_covariance35_delay ( .xin(i_masked119_covariance35_qi), .xout(i_masked119_covariance35_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // c_covariance_cov_local_pmem(CONSTANT,4)
    assign c_covariance_cov_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx202_covariance0_upper_bits_x_merged_bit_select(BITSELECT,210)@3
    assign i_arrayidx202_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_cov_local_pmem_q[63:12];
    assign i_arrayidx202_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_cov_local_pmem_q[11:0];

    // c_i32_045(CONSTANT,9)
    assign c_i32_045_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg6(REG,176)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist6_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg9(REG,179)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg9_q <= $unsigned(redist6_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_146(CONSTANT,10)
    assign c_i32_146_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_covariance23(ADD,37)@3
    assign i_inc_covariance23_a = {1'b0, i_llvm_fpga_pop_i32_j_063_pop41_covariance15_out_data_out};
    assign i_inc_covariance23_b = {1'b0, c_i32_146_q};
    assign i_inc_covariance23_o = $unsigned(i_inc_covariance23_a) + $unsigned(i_inc_covariance23_b);
    assign i_inc_covariance23_q = i_inc_covariance23_o[32:0];

    // bgTrunc_i_inc_covariance23_sel_x(BITSELECT,72)@3
    assign bgTrunc_i_inc_covariance23_sel_x_b = i_inc_covariance23_q[31:0];

    // i_llvm_fpga_push_i32_j_063_push41_covariance24(BLACKBOX,55)@3
    // out out_feedback_out_41@20000000
    // out out_feedback_valid_out_41@20000000
    covariance_i_llvm_fpga_push_i32_j_063_push41_0 thei_llvm_fpga_push_i32_j_063_push41_covariance24 (
        .in_data_in(bgTrunc_i_inc_covariance23_sel_x_b),
        .in_feedback_stall_in_41(i_llvm_fpga_pop_i32_j_063_pop41_covariance15_out_feedback_stall_out_41),
        .in_keep_going110(redist11_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_41(i_llvm_fpga_push_i32_j_063_push41_covariance24_out_feedback_out_41),
        .out_feedback_valid_out_41(i_llvm_fpga_push_i32_j_063_push41_covariance24_out_feedback_valid_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together71_aunroll_x_in_c0_eni5_1_tpl_2(DELAY,213)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together71_aunroll_x_in_c0_eni5_1_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together71_aunroll_x_in_c0_eni5_1_tpl_2_q <= $unsigned(redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q);
        end
    end

    // i_llvm_fpga_pop_i32_j_063_pop41_covariance15(BLACKBOX,46)@3
    // out out_feedback_stall_out_41@20000000
    covariance_i_llvm_fpga_pop_i32_j_063_pop41_0 thei_llvm_fpga_pop_i32_j_063_pop41_covariance15 (
        .in_data_in(c_i32_045_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni5_1_tpl_2_q),
        .in_feedback_in_41(i_llvm_fpga_push_i32_j_063_push41_covariance24_out_feedback_out_41),
        .in_feedback_valid_in_41(i_llvm_fpga_push_i32_j_063_push41_covariance24_out_feedback_valid_out_41),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_063_pop41_covariance15_out_data_out),
        .out_feedback_stall_out_41(i_llvm_fpga_pop_i32_j_063_pop41_covariance15_out_feedback_stall_out_41),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom7_covariance16_sel_x(BITSELECT,161)@3
    assign i_idxprom7_covariance16_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_j_063_pop41_covariance15_out_data_out[31:0]};

    // i_idxprom7_covariance16_vt_select_31(BITSELECT,32)@3
    assign i_idxprom7_covariance16_vt_select_31_b = i_idxprom7_covariance16_sel_x_b[31:0];

    // i_idxprom7_covariance16_vt_join(BITJOIN,31)@3
    assign i_idxprom7_covariance16_vt_join_q = {c_i32_045_q, i_idxprom7_covariance16_vt_select_31_b};

    // i_arrayidx121_covariance0_dupName_3_trunc_sel_x(BITSELECT,110)@3
    assign i_arrayidx121_covariance0_dupName_3_trunc_sel_x_b = i_idxprom7_covariance16_vt_join_q[11:0];

    // i_arrayidx121_covariance0_dupName_0_narrow_x(BITSELECT,101)@3
    assign i_arrayidx121_covariance0_dupName_0_narrow_x_b = i_arrayidx121_covariance0_dupName_3_trunc_sel_x_b[9:0];

    // i_arrayidx121_covariance0_dupName_0_shift_join_x(BITJOIN,102)@3
    assign i_arrayidx121_covariance0_dupName_0_shift_join_x_q = {i_arrayidx121_covariance0_dupName_0_narrow_x_b, i_arrayidx121_covariance19_vt_const_1_q};

    // valid_fanout_reg4(REG,174)@1 + 1
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

    // valid_fanout_reg5(REG,175)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist6_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13(BLACKBOX,54)@3
    // out out_feedback_out_46@20000000
    // out out_feedback_valid_out_46@20000000
    covariance_i_llvm_fpga_push_i32_i_064_pop27147_push46_0 thei_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13 (
        .in_data_in(redist8_i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out_1_q),
        .in_feedback_stall_in_46(i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_feedback_stall_out_46),
        .in_keep_going110(redist11_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_2_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_46(i_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13_out_feedback_out_46),
        .out_feedback_valid_out_46(i_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13_out_feedback_valid_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist2_sync_together71_aunroll_x_in_c0_eni5_2_tpl_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together71_aunroll_x_in_c0_eni5_2_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together71_aunroll_x_in_c0_eni5_2_tpl_1_q <= $unsigned(in_c0_eni5_2_tpl);
        end
    end

    // i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12(BLACKBOX,45)@2
    // out out_feedback_stall_out_46@20000000
    covariance_i_llvm_fpga_pop_i32_i_064_pop27147_pop46_0 thei_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12 (
        .in_data_in(redist2_sync_together71_aunroll_x_in_c0_eni5_2_tpl_1_q),
        .in_dir(redist0_sync_together71_aunroll_x_in_c0_eni5_1_tpl_1_q),
        .in_feedback_in_46(i_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13_out_feedback_out_46),
        .in_feedback_valid_in_46(i_llvm_fpga_push_i32_i_064_pop27147_push46_covariance13_out_feedback_valid_out_46),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out),
        .out_feedback_stall_out_46(i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_feedback_stall_out_46),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist8_i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out);
        end
    end

    // i_idxprom_covariance14_sel_x(BITSELECT,162)@3
    assign i_idxprom_covariance14_sel_x_b = {32'b00000000000000000000000000000000, redist8_i_llvm_fpga_pop_i32_i_064_pop27147_pop46_covariance12_out_data_out_1_q[31:0]};

    // i_idxprom_covariance14_vt_select_31(BITSELECT,36)@3
    assign i_idxprom_covariance14_vt_select_31_b = i_idxprom_covariance14_sel_x_b[31:0];

    // i_idxprom_covariance14_vt_join(BITJOIN,35)@3
    assign i_idxprom_covariance14_vt_join_q = {c_i32_045_q, i_idxprom_covariance14_vt_select_31_b};

    // i_arrayidx121_covariance0_dupName_0_trunc_sel_x(BITSELECT,108)@3
    assign i_arrayidx121_covariance0_dupName_0_trunc_sel_x_b = i_idxprom_covariance14_vt_join_q[11:0];

    // i_arrayidx121_covariance0_narrow_x(BITSELECT,96)@3
    assign i_arrayidx121_covariance0_narrow_x_b = i_arrayidx121_covariance0_dupName_0_trunc_sel_x_b[4:0];

    // i_arrayidx121_covariance0_c_i7_01_x(CONSTANT,95)
    assign i_arrayidx121_covariance0_c_i7_01_x_q = $unsigned(7'b0000000);

    // i_arrayidx121_covariance0_shift_join_x(BITJOIN,97)@3
    assign i_arrayidx121_covariance0_shift_join_x_q = {i_arrayidx121_covariance0_narrow_x_b, i_arrayidx121_covariance0_c_i7_01_x_q};

    // i_arrayidx202_covariance0_add_x(ADD,124)@3
    assign i_arrayidx202_covariance0_add_x_a = {1'b0, i_arrayidx202_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx202_covariance0_add_x_b = {1'b0, i_arrayidx121_covariance0_shift_join_x_q};
    assign i_arrayidx202_covariance0_add_x_o = $unsigned(i_arrayidx202_covariance0_add_x_a) + $unsigned(i_arrayidx202_covariance0_add_x_b);
    assign i_arrayidx202_covariance0_add_x_q = i_arrayidx202_covariance0_add_x_o[12:0];

    // i_arrayidx202_covariance0_dupName_2_trunc_sel_x(BITSELECT,141)@3
    assign i_arrayidx202_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx202_covariance0_add_x_q[11:0];

    // i_arrayidx202_covariance0_dupName_0_add_x(ADD,132)@3
    assign i_arrayidx202_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx202_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx202_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx121_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx202_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx202_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx202_covariance0_dupName_0_add_x_b);
    assign i_arrayidx202_covariance0_dupName_0_add_x_q = i_arrayidx202_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx202_covariance0_dupName_5_trunc_sel_x(BITSELECT,143)@3
    assign i_arrayidx202_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx202_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx202_covariance0_append_upper_bits_x(BITJOIN,125)@3
    assign i_arrayidx202_covariance0_append_upper_bits_x_q = {i_arrayidx202_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx202_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx202_covariance22_vt_select_63(BITSELECT,21)@3
    assign i_arrayidx202_covariance22_vt_select_63_b = i_arrayidx202_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx121_covariance19_vt_const_1(CONSTANT,16)
    assign i_arrayidx121_covariance19_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx202_covariance22_vt_join(BITJOIN,20)@3
    assign i_arrayidx202_covariance22_vt_join_q = {i_arrayidx202_covariance22_vt_select_63_b, i_arrayidx121_covariance19_vt_const_1_q};

    // i_arrayidx16_covariance0_dupName_0_narrow_x(BITSELECT,118)@3
    assign i_arrayidx16_covariance0_dupName_0_narrow_x_b = i_idxprom7_covariance16_vt_join_q[61:0];

    // i_arrayidx16_covariance0_dupName_0_shift_join_x(BITJOIN,119)@3
    assign i_arrayidx16_covariance0_dupName_0_shift_join_x_q = {i_arrayidx16_covariance0_dupName_0_narrow_x_b, i_arrayidx121_covariance19_vt_const_1_q};

    // i_arrayidx16_covariance0_narrow_x(BITSELECT,115)@3
    assign i_arrayidx16_covariance0_narrow_x_b = i_idxprom_covariance14_vt_join_q[56:0];

    // i_arrayidx16_covariance0_shift_join_x(BITJOIN,116)@3
    assign i_arrayidx16_covariance0_shift_join_x_q = {i_arrayidx16_covariance0_narrow_x_b, i_arrayidx121_covariance0_c_i7_01_x_q};

    // valid_fanout_reg8(REG,178)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg8_q <= $unsigned(redist6_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a32i32_cov6636_covariance20(BLACKBOX,39)@3
    covariance_i_llvm_fpga_ffwd_dest_p1024a32i32_cov6636_0 thei_llvm_fpga_ffwd_dest_p1024a32i32_cov6636_covariance20 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024a32i32_cov6636_covariance20_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx16_covariance0_add_x(ADD,112)@3
    assign i_arrayidx16_covariance0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a32i32_cov6636_covariance20_out_dest_data_out_1_0};
    assign i_arrayidx16_covariance0_add_x_b = {1'b0, i_arrayidx16_covariance0_shift_join_x_q};
    assign i_arrayidx16_covariance0_add_x_o = $unsigned(i_arrayidx16_covariance0_add_x_a) + $unsigned(i_arrayidx16_covariance0_add_x_b);
    assign i_arrayidx16_covariance0_add_x_q = i_arrayidx16_covariance0_add_x_o[64:0];

    // i_arrayidx16_covariance0_dupName_0_trunc_sel_x(BITSELECT,122)@3
    assign i_arrayidx16_covariance0_dupName_0_trunc_sel_x_b = i_arrayidx16_covariance0_add_x_q[63:0];

    // i_arrayidx16_covariance0_dupName_0_add_x(ADD,117)@3
    assign i_arrayidx16_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx16_covariance0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx16_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx16_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx16_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx16_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx16_covariance0_dupName_0_add_x_b);
    assign i_arrayidx16_covariance0_dupName_0_add_x_q = i_arrayidx16_covariance0_dupName_0_add_x_o[64:0];

    // i_arrayidx16_covariance0_dupName_2_trunc_sel_x(BITSELECT,123)@3
    assign i_arrayidx16_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx16_covariance0_dupName_0_add_x_q[63:0];

    // c_covariance_data_local_pmem(CONSTANT,5)
    assign c_covariance_data_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx121_covariance0_upper_bits_x_merged_bit_select(BITSELECT,211)@3
    assign i_arrayidx121_covariance0_upper_bits_x_merged_bit_select_b = c_covariance_data_local_pmem_q[63:12];
    assign i_arrayidx121_covariance0_upper_bits_x_merged_bit_select_c = c_covariance_data_local_pmem_q[11:0];

    // i_arrayidx121_covariance0_add_x(ADD,92)@3
    assign i_arrayidx121_covariance0_add_x_a = {1'b0, i_arrayidx121_covariance0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx121_covariance0_add_x_b = {1'b0, i_arrayidx121_covariance0_shift_join_x_q};
    assign i_arrayidx121_covariance0_add_x_o = $unsigned(i_arrayidx121_covariance0_add_x_a) + $unsigned(i_arrayidx121_covariance0_add_x_b);
    assign i_arrayidx121_covariance0_add_x_q = i_arrayidx121_covariance0_add_x_o[12:0];

    // i_arrayidx121_covariance0_dupName_2_trunc_sel_x(BITSELECT,109)@3
    assign i_arrayidx121_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx121_covariance0_add_x_q[11:0];

    // i_arrayidx121_covariance0_dupName_0_add_x(ADD,100)@3
    assign i_arrayidx121_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx121_covariance0_dupName_2_trunc_sel_x_b};
    assign i_arrayidx121_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx121_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx121_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx121_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx121_covariance0_dupName_0_add_x_b);
    assign i_arrayidx121_covariance0_dupName_0_add_x_q = i_arrayidx121_covariance0_dupName_0_add_x_o[12:0];

    // i_arrayidx121_covariance0_dupName_5_trunc_sel_x(BITSELECT,111)@3
    assign i_arrayidx121_covariance0_dupName_5_trunc_sel_x_b = i_arrayidx121_covariance0_dupName_0_add_x_q[11:0];

    // i_arrayidx121_covariance0_append_upper_bits_x(BITJOIN,93)@3
    assign i_arrayidx121_covariance0_append_upper_bits_x_q = {i_arrayidx121_covariance0_upper_bits_x_merged_bit_select_b, i_arrayidx121_covariance0_dupName_5_trunc_sel_x_b};

    // i_arrayidx121_covariance19_vt_select_63(BITSELECT,18)@3
    assign i_arrayidx121_covariance19_vt_select_63_b = i_arrayidx121_covariance0_append_upper_bits_x_q[63:2];

    // i_arrayidx121_covariance19_vt_join(BITJOIN,17)@3
    assign i_arrayidx121_covariance19_vt_join_q = {i_arrayidx121_covariance19_vt_select_63_b, i_arrayidx121_covariance19_vt_const_1_q};

    // valid_fanout_reg7(REG,177)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist6_sync_together71_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024a32i32_data6534_covariance17(BLACKBOX,40)@3
    covariance_i_llvm_fpga_ffwd_dest_p1024a32i32_data6534_0 thei_llvm_fpga_ffwd_dest_p1024a32i32_data6534_covariance17 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024a32i32_data6534_covariance17_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx8_covariance0_add_x(ADD,144)@3
    assign i_arrayidx8_covariance0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024a32i32_data6534_covariance17_out_dest_data_out_0_0};
    assign i_arrayidx8_covariance0_add_x_b = {1'b0, i_arrayidx16_covariance0_shift_join_x_q};
    assign i_arrayidx8_covariance0_add_x_o = $unsigned(i_arrayidx8_covariance0_add_x_a) + $unsigned(i_arrayidx8_covariance0_add_x_b);
    assign i_arrayidx8_covariance0_add_x_q = i_arrayidx8_covariance0_add_x_o[64:0];

    // i_arrayidx8_covariance0_dupName_0_trunc_sel_x(BITSELECT,154)@3
    assign i_arrayidx8_covariance0_dupName_0_trunc_sel_x_b = i_arrayidx8_covariance0_add_x_q[63:0];

    // i_arrayidx8_covariance0_dupName_0_add_x(ADD,149)@3
    assign i_arrayidx8_covariance0_dupName_0_add_x_a = {1'b0, i_arrayidx8_covariance0_dupName_0_trunc_sel_x_b};
    assign i_arrayidx8_covariance0_dupName_0_add_x_b = {1'b0, i_arrayidx16_covariance0_dupName_0_shift_join_x_q};
    assign i_arrayidx8_covariance0_dupName_0_add_x_o = $unsigned(i_arrayidx8_covariance0_dupName_0_add_x_a) + $unsigned(i_arrayidx8_covariance0_dupName_0_add_x_b);
    assign i_arrayidx8_covariance0_dupName_0_add_x_q = i_arrayidx8_covariance0_dupName_0_add_x_o[64:0];

    // i_arrayidx8_covariance0_dupName_2_trunc_sel_x(BITSELECT,155)@3
    assign i_arrayidx8_covariance0_dupName_2_trunc_sel_x_b = i_arrayidx8_covariance0_dupName_0_add_x_q[63:0];

    // redist11_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_2(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_2_q <= $unsigned(redist10_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_1_q);
        end
    end

    // redist12_i_first_cleanup_xor116_covariance4_q_1(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_first_cleanup_xor116_covariance4_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_first_cleanup_xor116_covariance4_q_1_q <= $unsigned(i_first_cleanup_xor116_covariance4_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,168)@3
    assign out_c0_exi10_0_tpl = GND_q;
    assign out_c0_exi10_1_tpl = redist12_i_first_cleanup_xor116_covariance4_q_1_q;
    assign out_c0_exi10_2_tpl = redist11_i_llvm_fpga_pipeline_keep_going110_covariance6_out_data_out_2_q;
    assign out_c0_exi10_3_tpl = i_arrayidx8_covariance0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi10_4_tpl = i_arrayidx121_covariance19_vt_join_q;
    assign out_c0_exi10_5_tpl = i_arrayidx16_covariance0_dupName_2_trunc_sel_x_b;
    assign out_c0_exi10_6_tpl = i_arrayidx202_covariance22_vt_join_q;
    assign out_c0_exi10_7_tpl = i_masked119_covariance35_q;
    assign out_c0_exi10_8_tpl = redist7_i_llvm_fpga_pop_i32_lim_ext133_pop44_covariance36_out_data_out_1_q;
    assign out_c0_exi10_9_tpl = redist9_i_llvm_fpga_pop_i1_notcmp122146_pop45_covariance38_out_data_out_1_q;
    assign out_c0_exi10_10_tpl = redist5_sync_together71_aunroll_x_in_c0_eni5_5_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
