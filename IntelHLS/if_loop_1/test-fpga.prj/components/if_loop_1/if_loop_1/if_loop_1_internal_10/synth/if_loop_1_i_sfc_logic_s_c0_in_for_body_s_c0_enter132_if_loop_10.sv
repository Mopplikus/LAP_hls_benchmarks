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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_1s_c0_enter132_if_loop_10
// Created for function/kernel if_loop_1
// SystemVerilog created on Tue Apr 18 14:38:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_1_i_sfc_logic_s_c0_in_for_body_s_c0_enter132_if_loop_10 (
    input wire [31:0] in_lm1_if_loop_1_avm_readdata,
    input wire [0:0] in_lm1_if_loop_1_avm_writeack,
    input wire [0:0] in_lm1_if_loop_1_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_1_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_16_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_16_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_lm1_if_loop_1_avm_address,
    output wire [0:0] out_lm1_if_loop_1_avm_enable,
    output wire [0:0] out_lm1_if_loop_1_avm_read,
    output wire [0:0] out_lm1_if_loop_1_avm_write,
    output wire [31:0] out_lm1_if_loop_1_avm_writedata,
    output wire [3:0] out_lm1_if_loop_1_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_1_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_11,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_068_q;
    wire [31:0] c_i32_171_q;
    wire [32:0] c_i33_173_q;
    wire [32:0] c_i33_undef67_q;
    wire [3:0] c_i4_764_q;
    wire [63:0] c_if_loop_1_a_local_pmem_q;
    wire [0:0] i_add_if_loop_126_s;
    reg [31:0] i_add_if_loop_126_q;
    wire [1:0] i_arrayidx1_if_loop_119_vt_const_1_q;
    wire [63:0] i_arrayidx1_if_loop_119_vt_join_q;
    wire [61:0] i_arrayidx1_if_loop_119_vt_select_63_b;
    wire [3:0] i_cleanups_shl_if_loop_15_vt_join_q;
    wire [2:0] i_cleanups_shl_if_loop_15_vt_select_3_b;
    wire [33:0] i_cmp2_if_loop_124_a;
    wire [33:0] i_cmp2_if_loop_124_b;
    logic [33:0] i_cmp2_if_loop_124_o;
    wire [0:0] i_cmp2_if_loop_124_c;
    wire [0:0] i_first_cleanup_xor_if_loop_14_q;
    wire [0:0] i_first_cleanup_xor_or_if_loop_120_q;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_134_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_134_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_134_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_134_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_114_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_114_q;
    wire [63:0] i_idxprom_if_loop_118_vt_join_q;
    wire [31:0] i_idxprom_if_loop_118_vt_select_31_b;
    wire [32:0] i_inc_if_loop_130_a;
    wire [32:0] i_inc_if_loop_130_b;
    logic [32:0] i_inc_if_loop_130_o;
    wire [32:0] i_inc_if_loop_130_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_136_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_115_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_15_if_loop_112_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_16_if_loop_143_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_121_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127_out_feedback_stall_out_7;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_139_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_139_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_131_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_010_push8_if_loop_131_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_129_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_sum_011_push7_if_loop_129_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_142_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_142_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_valid_out_9;
    wire [0:0] i_masked_if_loop_144_qi;
    reg [0:0] i_masked_if_loop_144_q;
    wire [32:0] i_mul_add3_if_loop_123_a;
    wire [32:0] i_mul_add3_if_loop_123_b;
    logic [32:0] i_mul_add3_if_loop_123_o;
    wire [32:0] i_mul_add3_if_loop_123_q;
    wire [0:0] i_next_cleanups_if_loop_141_s;
    reg [3:0] i_next_cleanups_if_loop_141_q;
    wire [3:0] i_next_initerations_if_loop_18_vt_join_q;
    wire [2:0] i_next_initerations_if_loop_18_vt_select_2_b;
    wire [0:0] i_notcmp_if_loop_138_q;
    wire [0:0] i_or_if_loop_140_q;
    wire [32:0] i_spec_select_if_loop_128_a;
    wire [32:0] i_spec_select_if_loop_128_b;
    logic [32:0] i_spec_select_if_loop_128_o;
    wire [32:0] i_spec_select_if_loop_128_q;
    wire [0:0] i_unnamed_if_loop_116_q;
    wire [31:0] i_unnamed_if_loop_122_vt_join_q;
    wire [29:0] i_unnamed_if_loop_122_vt_select_31_b;
    wire [0:0] i_unnamed_if_loop_137_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_134_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_130_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add3_if_loop_123_sel_x_b;
    wire [31:0] bgTrunc_i_spec_select_if_loop_128_sel_x_b;
    wire [31:0] c_i32_1070_recast_x_q;
    wire [9:0] i_arrayidx1_if_loop_10_add_x_a;
    wire [9:0] i_arrayidx1_if_loop_10_add_x_b;
    logic [9:0] i_arrayidx1_if_loop_10_add_x_o;
    wire [9:0] i_arrayidx1_if_loop_10_add_x_q;
    wire [63:0] i_arrayidx1_if_loop_10_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1_if_loop_10_narrow_x_b;
    wire [8:0] i_arrayidx1_if_loop_10_shift_join_x_q;
    wire [8:0] i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_if_loop_13_sel_x_b;
    wire [63:0] i_idxprom_if_loop_118_sel_x_b;
    wire [0:0] i_last_initeration_if_loop_110_sel_x_b;
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
    wire [0:0] i_exitcond_if_loop_132_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl_if_loop_10_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl_if_loop_10_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid160_i_cleanups_shl_if_loop_10_shift_x_q;
    wire [0:0] leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_s;
    reg [3:0] leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid166_i_next_initerations_if_loop_10_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid168_i_next_initerations_if_loop_10_shift_x_q;
    wire [0:0] rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_s;
    reg [3:0] rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid175_i_unnamed_if_loop_10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid175_i_unnamed_if_loop_10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid176_i_unnamed_if_loop_10_shift_x_q;
    wire [0:0] leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_s;
    reg [31:0] leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_q;
    wire [54:0] i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_q;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_0;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_1;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_2;
    reg [0:0] redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_3;
    reg [0:0] redist2_sync_together92_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together92_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist3_sync_together92_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist3_sync_together92_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist3_sync_together92_aunroll_x_in_i_valid_5_delay_2;
    reg [31:0] redist4_bgTrunc_i_mul_add3_if_loop_123_sel_x_b_1_q;
    reg [0:0] redist5_i_masked_if_loop_144_q_5_q;
    reg [0:0] redist5_i_masked_if_loop_144_q_5_delay_0;
    reg [0:0] redist5_i_masked_if_loop_144_q_5_delay_1;
    reg [0:0] redist5_i_masked_if_loop_144_q_5_delay_2;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_0;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_1;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_2;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_3;
    reg [0:0] redist8_i_first_cleanup_xor_if_loop_14_q_5_q;
    reg [0:0] redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_0;
    reg [0:0] redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_1;
    reg [0:0] redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_2;
    reg [0:0] redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_3;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together92_aunroll_x_in_i_valid_1(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together92_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together92_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl_if_loop_10_shift_x(BITSELECT,158)@2
    assign leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl_if_loop_10_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl_if_loop_10_shift_x_b = leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl_if_loop_10_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid160_i_cleanups_shl_if_loop_10_shift_x(BITJOIN,159)@2
    assign leftShiftStage0Idx1_uid160_i_cleanups_shl_if_loop_10_shift_x_q = {leftShiftStage0Idx1Rng1_uid159_i_cleanups_shl_if_loop_10_shift_x_b, GND_q};

    // leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x(MUX,161)@2
    assign leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out or leftShiftStage0Idx1_uid160_i_cleanups_shl_if_loop_10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_s)
            1'b0 : leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out;
            1'b1 : leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_q = leftShiftStage0Idx1_uid160_i_cleanups_shl_if_loop_10_shift_x_q;
            default : leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_if_loop_15_vt_select_3(BITSELECT,41)@2
    assign i_cleanups_shl_if_loop_15_vt_select_3_b = leftShiftStage0_uid162_i_cleanups_shl_if_loop_10_shift_x_q[3:1];

    // i_cleanups_shl_if_loop_15_vt_join(BITJOIN,40)@2
    assign i_cleanups_shl_if_loop_15_vt_join_q = {i_cleanups_shl_if_loop_15_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_if_loop_14(LOGICAL,45)@2
    assign i_first_cleanup_xor_if_loop_14_q = i_first_cleanup_if_loop_13_sel_x_b ^ VCC_q;

    // i_notcmp_if_loop_138(LOGICAL,79)@2
    assign i_notcmp_if_loop_138_q = i_unnamed_if_loop_137_q ^ VCC_q;

    // i_or_if_loop_140(LOGICAL,80)@2
    assign i_or_if_loop_140_q = i_notcmp_if_loop_138_q | i_first_cleanup_xor_if_loop_14_q;

    // i_next_cleanups_if_loop_141(MUX,75)@2
    assign i_next_cleanups_if_loop_141_s = i_or_if_loop_140_q;
    always @(i_next_cleanups_if_loop_141_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out or i_cleanups_shl_if_loop_15_vt_join_q)
    begin
        unique case (i_next_cleanups_if_loop_141_s)
            1'b0 : i_next_cleanups_if_loop_141_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out;
            1'b1 : i_next_cleanups_if_loop_141_q = i_cleanups_shl_if_loop_15_vt_join_q;
            default : i_next_cleanups_if_loop_141_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_if_loop_142(BLACKBOX,71)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    if_loop_1_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_if_loop_142 (
        .in_data_in(i_next_cleanups_if_loop_141_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_feedback_stall_out_10),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_142_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_142_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_764(CONSTANT,31)
    assign c_i4_764_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12(BLACKBOX,64)@2
    // out out_feedback_stall_out_10@20000000
    if_loop_1_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12 (
        .in_data_in(c_i4_764_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_142_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_142_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_if_loop_13_sel_x(BITSELECT,119)@2
    assign i_first_cleanup_if_loop_13_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_15_if_loop_112(BLACKBOX,57)@2
    if_loop_1_i_llvm_fpga_ffwd_dest_i33_unnamed_5_if_loop_10 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_15_if_loop_112 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_15_if_loop_112_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_173(CONSTANT,28)
    assign c_i33_173_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_134(ADD,47)@2
    assign i_fpga_indvars_iv_next_if_loop_134_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_114_q};
    assign i_fpga_indvars_iv_next_if_loop_134_b = {1'b0, c_i33_173_q};
    assign i_fpga_indvars_iv_next_if_loop_134_o = $unsigned(i_fpga_indvars_iv_next_if_loop_134_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_134_b);
    assign i_fpga_indvars_iv_next_if_loop_134_q = i_fpga_indvars_iv_next_if_loop_134_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_134_sel_x(BITSELECT,96)@2
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_134_sel_x_b = i_fpga_indvars_iv_next_if_loop_134_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135(BLACKBOX,70)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    if_loop_1_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_if_loop_134_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_feedback_stall_out_6),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef67(CONSTANT,29)
    assign c_i33_undef67_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113(BLACKBOX,63)@2
    // out out_feedback_stall_out_6@20000000
    if_loop_1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113 (
        .in_data_in(c_i33_undef67_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_135_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_if_loop_114(MUX,48)@2
    assign i_fpga_indvars_iv_replace_phi_if_loop_114_s = redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_if_loop_114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_15_if_loop_112_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_if_loop_114_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_15_if_loop_112_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_if_loop_114_q = 33'b0;
        endcase
    end

    // i_exitcond_if_loop_132_cmp_nsign(LOGICAL,154)@2
    assign i_exitcond_if_loop_132_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_114_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_136(BLACKBOX,55)@2
    if_loop_1_i_llvm_fpga_ffwd_dest_i1_cmp95_0 thei_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_136 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_136_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_137(LOGICAL,86)@2
    assign i_unnamed_if_loop_137_q = i_llvm_fpga_ffwd_dest_i1_cmp95_if_loop_136_out_dest_data_out_0_0 & i_exitcond_if_loop_132_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_139(BLACKBOX,67)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_139 (
        .in_data_in(i_unnamed_if_loop_137_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_if_loop_13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together92_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_139_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_139_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,135)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid166_i_next_initerations_if_loop_10_shift_x(BITSELECT,165)@2
    assign rightShiftStage0Idx1Rng1_uid166_i_next_initerations_if_loop_10_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out[3:1];

    // rightShiftStage0Idx1_uid168_i_next_initerations_if_loop_10_shift_x(BITJOIN,167)@2
    assign rightShiftStage0Idx1_uid168_i_next_initerations_if_loop_10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid166_i_next_initerations_if_loop_10_shift_x_b};

    // valid_fanout_reg1(REG,133)@1 + 1
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

    // valid_fanout_reg2(REG,134)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push9_if_loop_19(BLACKBOX,72)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    if_loop_1_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_if_loop_19 (
        .in_data_in(i_next_initerations_if_loop_18_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_feedback_stall_out_9),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17(BLACKBOX,65)@2
    // out out_feedback_stall_out_9@20000000
    if_loop_1_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_if_loop_17 (
        .in_data_in(c_i4_764_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x(MUX,169)@2
    assign rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out or rightShiftStage0Idx1_uid168_i_next_initerations_if_loop_10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_s)
            1'b0 : rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out;
            1'b1 : rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_q = rightShiftStage0Idx1_uid168_i_next_initerations_if_loop_10_shift_x_q;
            default : rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_if_loop_18_vt_select_2(BITSELECT,78)@2
    assign i_next_initerations_if_loop_18_vt_select_2_b = rightShiftStage0_uid170_i_next_initerations_if_loop_10_shift_x_q[2:0];

    // i_next_initerations_if_loop_18_vt_join(BITJOIN,77)@2
    assign i_next_initerations_if_loop_18_vt_join_q = {GND_q, i_next_initerations_if_loop_18_vt_select_2_b};

    // i_last_initeration_if_loop_110_sel_x(BITSELECT,121)@2
    assign i_last_initeration_if_loop_110_sel_x_b = i_next_initerations_if_loop_18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_if_loop_111(BLACKBOX,66)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    if_loop_1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_if_loop_111 (
        .in_data_in(i_last_initeration_if_loop_110_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_initeration_stall_out),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_if_loop_16(BLACKBOX,60)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_16 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_139_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_139_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,34)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,90)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out;

    // redist3_sync_together92_aunroll_x_in_i_valid_5(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together92_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist3_sync_together92_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist3_sync_together92_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist3_sync_together92_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist3_sync_together92_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist2_sync_together92_aunroll_x_in_i_valid_1_q);
            redist3_sync_together92_aunroll_x_in_i_valid_5_delay_1 <= redist3_sync_together92_aunroll_x_in_i_valid_5_delay_0;
            redist3_sync_together92_aunroll_x_in_i_valid_5_delay_2 <= redist3_sync_together92_aunroll_x_in_i_valid_5_delay_1;
            redist3_sync_together92_aunroll_x_in_i_valid_5_q <= redist3_sync_together92_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // valid_fanout_reg10(REG,142)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist3_sync_together92_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg7(REG,139)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together92_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg8(REG,140)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together92_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_0 <= '0;
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_1 <= '0;
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_2 <= '0;
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_3 <= '0;
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_q <= '0;
        end
        else
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_0 <= $unsigned(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q);
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_1 <= redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_0;
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_2 <= redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_1;
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_3 <= redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_2;
            redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_q <= redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_delay_3;
        end
    end

    // i_llvm_fpga_push_i32_sum_011_push7_if_loop_129(BLACKBOX,69)@7
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    if_loop_1_i_llvm_fpga_push_i32_sum_011_push7_0 thei_llvm_fpga_push_i32_sum_011_push7_if_loop_129 (
        .in_data_in(bgTrunc_i_spec_select_if_loop_128_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127_out_feedback_stall_out_7),
        .in_keep_going(redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_129_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_129_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6(DELAY,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_0 <= '0;
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_1 <= '0;
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_2 <= '0;
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_3 <= '0;
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_q <= '0;
        end
        else
        begin
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_0 <= $unsigned(redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q);
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_1 <= redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_0;
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_2 <= redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_1;
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_3 <= redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_2;
            redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_q <= redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_delay_3;
        end
    end

    // c_i32_068(CONSTANT,25)
    assign c_i32_068_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127(BLACKBOX,62)@7
    // out out_feedback_stall_out_7@20000000
    if_loop_1_i_llvm_fpga_pop_i32_sum_011_pop7_0 thei_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127 (
        .in_data_in(c_i32_068_q),
        .in_dir(redist1_sync_together92_aunroll_x_in_c0_eni1_1_tpl_6_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_129_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_sum_011_push7_if_loop_129_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng2_uid175_i_unnamed_if_loop_10_shift_x(BITSELECT,174)@6
    assign leftShiftStage0Idx1Rng2_uid175_i_unnamed_if_loop_10_shift_x_in = i_llvm_fpga_mem_lm1_if_loop_121_out_o_readdata[29:0];
    assign leftShiftStage0Idx1Rng2_uid175_i_unnamed_if_loop_10_shift_x_b = leftShiftStage0Idx1Rng2_uid175_i_unnamed_if_loop_10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid176_i_unnamed_if_loop_10_shift_x(BITJOIN,175)@6
    assign leftShiftStage0Idx1_uid176_i_unnamed_if_loop_10_shift_x_q = {leftShiftStage0Idx1Rng2_uid175_i_unnamed_if_loop_10_shift_x_b, i_arrayidx1_if_loop_119_vt_const_1_q};

    // leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x(MUX,177)@6
    assign leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_s or i_llvm_fpga_mem_lm1_if_loop_121_out_o_readdata or leftShiftStage0Idx1_uid176_i_unnamed_if_loop_10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_s)
            1'b0 : leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_q = i_llvm_fpga_mem_lm1_if_loop_121_out_o_readdata;
            1'b1 : leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_q = leftShiftStage0Idx1_uid176_i_unnamed_if_loop_10_shift_x_q;
            default : leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_if_loop_122_vt_select_31(BITSELECT,85)@6
    assign i_unnamed_if_loop_122_vt_select_31_b = leftShiftStage0_uid178_i_unnamed_if_loop_10_shift_x_q[31:2];

    // i_arrayidx1_if_loop_119_vt_const_1(CONSTANT,36)
    assign i_arrayidx1_if_loop_119_vt_const_1_q = $unsigned(2'b00);

    // i_unnamed_if_loop_122_vt_join(BITJOIN,84)@6
    assign i_unnamed_if_loop_122_vt_join_q = {i_unnamed_if_loop_122_vt_select_31_b, i_arrayidx1_if_loop_119_vt_const_1_q};

    // valid_fanout_reg6(REG,138)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg4(REG,136)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_115(BLACKBOX,56)@2
    if_loop_1_i_llvm_fpga_ffwd_dest_i1_cmp96_0 thei_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_115 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_115_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_116(LOGICAL,82)@2
    assign i_unnamed_if_loop_116_q = i_llvm_fpga_ffwd_dest_i1_cmp96_if_loop_115_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_if_loop_120(LOGICAL,46)@2
    assign i_first_cleanup_xor_or_if_loop_120_q = i_unnamed_if_loop_116_q | i_first_cleanup_xor_if_loop_14_q;

    // c_if_loop_1_a_local_pmem(CONSTANT,32)
    assign c_if_loop_1_a_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select(BITSELECT,179)@2
    assign i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_b = c_if_loop_1_a_local_pmem_q[63:9];
    assign i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_c = c_if_loop_1_a_local_pmem_q[8:0];

    // valid_fanout_reg5(REG,137)@1 + 1
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

    // valid_fanout_reg9(REG,141)@1 + 1
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

    // c_i32_171(CONSTANT,26)
    assign c_i32_171_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_130(ADD,53)@2
    assign i_inc_if_loop_130_a = {1'b0, i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117_out_data_out};
    assign i_inc_if_loop_130_b = {1'b0, c_i32_171_q};
    assign i_inc_if_loop_130_o = $unsigned(i_inc_if_loop_130_a) + $unsigned(i_inc_if_loop_130_b);
    assign i_inc_if_loop_130_q = i_inc_if_loop_130_o[32:0];

    // bgTrunc_i_inc_if_loop_130_sel_x(BITSELECT,97)@2
    assign bgTrunc_i_inc_if_loop_130_sel_x_b = i_inc_if_loop_130_q[31:0];

    // i_llvm_fpga_push_i32_i_010_push8_if_loop_131(BLACKBOX,68)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    if_loop_1_i_llvm_fpga_push_i32_i_010_push8_0 thei_llvm_fpga_push_i32_i_010_push8_if_loop_131 (
        .in_data_in(bgTrunc_i_inc_if_loop_130_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117_out_feedback_stall_out_8),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_131_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_131_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117(BLACKBOX,61)@2
    // out out_feedback_stall_out_8@20000000
    if_loop_1_i_llvm_fpga_pop_i32_i_010_pop8_0 thei_llvm_fpga_pop_i32_i_010_pop8_if_loop_117 (
        .in_data_in(c_i32_068_q),
        .in_dir(redist0_sync_together92_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_131_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_010_push8_if_loop_131_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_if_loop_118_sel_x(BITSELECT,120)@2
    assign i_idxprom_if_loop_118_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_010_pop8_if_loop_117_out_data_out[31:0]};

    // i_idxprom_if_loop_118_vt_select_31(BITSELECT,52)@2
    assign i_idxprom_if_loop_118_vt_select_31_b = i_idxprom_if_loop_118_sel_x_b[31:0];

    // i_idxprom_if_loop_118_vt_join(BITJOIN,51)@2
    assign i_idxprom_if_loop_118_vt_join_q = {c_i32_068_q, i_idxprom_if_loop_118_vt_select_31_b};

    // i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x(BITSELECT,113)@2
    assign i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x_b = i_idxprom_if_loop_118_vt_join_q[8:0];

    // i_arrayidx1_if_loop_10_narrow_x(BITSELECT,106)@2
    assign i_arrayidx1_if_loop_10_narrow_x_b = i_arrayidx1_if_loop_10_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx1_if_loop_10_shift_join_x(BITJOIN,107)@2
    assign i_arrayidx1_if_loop_10_shift_join_x_q = {i_arrayidx1_if_loop_10_narrow_x_b, i_arrayidx1_if_loop_119_vt_const_1_q};

    // i_arrayidx1_if_loop_10_add_x(ADD,103)@2
    assign i_arrayidx1_if_loop_10_add_x_a = {1'b0, i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_if_loop_10_add_x_b = {1'b0, i_arrayidx1_if_loop_10_shift_join_x_q};
    assign i_arrayidx1_if_loop_10_add_x_o = $unsigned(i_arrayidx1_if_loop_10_add_x_a) + $unsigned(i_arrayidx1_if_loop_10_add_x_b);
    assign i_arrayidx1_if_loop_10_add_x_q = i_arrayidx1_if_loop_10_add_x_o[9:0];

    // i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x(BITSELECT,114)@2
    assign i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x_b = i_arrayidx1_if_loop_10_add_x_q[8:0];

    // i_arrayidx1_if_loop_10_append_upper_bits_x(BITJOIN,104)@2
    assign i_arrayidx1_if_loop_10_append_upper_bits_x_q = {i_arrayidx1_if_loop_10_upper_bits_x_merged_bit_select_b, i_arrayidx1_if_loop_10_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_if_loop_119_vt_select_63(BITSELECT,38)@2
    assign i_arrayidx1_if_loop_119_vt_select_63_b = i_arrayidx1_if_loop_10_append_upper_bits_x_q[63:2];

    // i_arrayidx1_if_loop_119_vt_join(BITJOIN,37)@2
    assign i_arrayidx1_if_loop_119_vt_join_q = {i_arrayidx1_if_loop_119_vt_select_63_b, i_arrayidx1_if_loop_119_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_if_loop_121(BLACKBOX,59)@2
    // in in_i_stall@20000000
    // out out_lm1_if_loop_1_avm_address@20000000
    // out out_lm1_if_loop_1_avm_burstcount@20000000
    // out out_lm1_if_loop_1_avm_byteenable@20000000
    // out out_lm1_if_loop_1_avm_enable@20000000
    // out out_lm1_if_loop_1_avm_read@20000000
    // out out_lm1_if_loop_1_avm_write@20000000
    // out out_lm1_if_loop_1_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    if_loop_1_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_121 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_if_loop_119_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_if_loop_120_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_lm1_if_loop_1_avm_readdata(in_lm1_if_loop_1_avm_readdata),
        .in_lm1_if_loop_1_avm_readdatavalid(in_lm1_if_loop_1_avm_readdatavalid),
        .in_lm1_if_loop_1_avm_waitrequest(in_lm1_if_loop_1_avm_waitrequest),
        .in_lm1_if_loop_1_avm_writeack(in_lm1_if_loop_1_avm_writeack),
        .out_lm1_if_loop_1_avm_address(i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_address),
        .out_lm1_if_loop_1_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_burstcount),
        .out_lm1_if_loop_1_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_byteenable),
        .out_lm1_if_loop_1_avm_enable(i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_enable),
        .out_lm1_if_loop_1_avm_read(i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_read),
        .out_lm1_if_loop_1_avm_write(i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_write),
        .out_lm1_if_loop_1_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_121_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mul_add3_if_loop_123(ADD,74)@6
    assign i_mul_add3_if_loop_123_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_121_out_o_readdata};
    assign i_mul_add3_if_loop_123_b = {1'b0, i_unnamed_if_loop_122_vt_join_q};
    assign i_mul_add3_if_loop_123_o = $unsigned(i_mul_add3_if_loop_123_a) + $unsigned(i_mul_add3_if_loop_123_b);
    assign i_mul_add3_if_loop_123_q = i_mul_add3_if_loop_123_o[32:0];

    // bgTrunc_i_mul_add3_if_loop_123_sel_x(BITSELECT,98)@6
    assign bgTrunc_i_mul_add3_if_loop_123_sel_x_b = i_mul_add3_if_loop_123_q[31:0];

    // redist4_bgTrunc_i_mul_add3_if_loop_123_sel_x_b_1(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_bgTrunc_i_mul_add3_if_loop_123_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist4_bgTrunc_i_mul_add3_if_loop_123_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_add3_if_loop_123_sel_x_b);
        end
    end

    // c_i32_1070_recast_x(CONSTANT,100)
    assign c_i32_1070_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp2_if_loop_124(COMPARE,42)@6 + 1
    assign i_cmp2_if_loop_124_a = $unsigned({{2{c_i32_1070_recast_x_q[31]}}, c_i32_1070_recast_x_q});
    assign i_cmp2_if_loop_124_b = $unsigned({{2{bgTrunc_i_mul_add3_if_loop_123_sel_x_b[31]}}, bgTrunc_i_mul_add3_if_loop_123_sel_x_b});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp2_if_loop_124_o <= 34'b0;
        end
        else
        begin
            i_cmp2_if_loop_124_o <= $unsigned($signed(i_cmp2_if_loop_124_a) - $signed(i_cmp2_if_loop_124_b));
        end
    end
    assign i_cmp2_if_loop_124_c[0] = i_cmp2_if_loop_124_o[33];

    // i_add_if_loop_126(MUX,35)@7
    assign i_add_if_loop_126_s = i_cmp2_if_loop_124_c;
    always @(i_add_if_loop_126_s or c_i32_068_q or redist4_bgTrunc_i_mul_add3_if_loop_123_sel_x_b_1_q)
    begin
        unique case (i_add_if_loop_126_s)
            1'b0 : i_add_if_loop_126_q = c_i32_068_q;
            1'b1 : i_add_if_loop_126_q = redist4_bgTrunc_i_mul_add3_if_loop_123_sel_x_b_1_q;
            default : i_add_if_loop_126_q = 32'b0;
        endcase
    end

    // i_spec_select_if_loop_128(ADD,81)@7
    assign i_spec_select_if_loop_128_a = {1'b0, i_add_if_loop_126_q};
    assign i_spec_select_if_loop_128_b = {1'b0, i_llvm_fpga_pop_i32_sum_011_pop7_if_loop_127_out_data_out};
    assign i_spec_select_if_loop_128_o = $unsigned(i_spec_select_if_loop_128_a) + $unsigned(i_spec_select_if_loop_128_b);
    assign i_spec_select_if_loop_128_q = i_spec_select_if_loop_128_o[32:0];

    // bgTrunc_i_spec_select_if_loop_128_sel_x(BITSELECT,99)@7
    assign bgTrunc_i_spec_select_if_loop_128_sel_x_b = i_spec_select_if_loop_128_q[31:0];

    // redist8_i_first_cleanup_xor_if_loop_14_q_5(DELAY,188)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_0 <= '0;
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_1 <= '0;
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_2 <= '0;
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_3 <= '0;
            redist8_i_first_cleanup_xor_if_loop_14_q_5_q <= '0;
        end
        else
        begin
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_0 <= $unsigned(i_first_cleanup_xor_if_loop_14_q);
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_1 <= redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_0;
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_2 <= redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_1;
            redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_3 <= redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_2;
            redist8_i_first_cleanup_xor_if_loop_14_q_5_q <= redist8_i_first_cleanup_xor_if_loop_14_q_5_delay_3;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_16_if_loop_143(BLACKBOX,58)@7
    // out out_intel_reserved_ffwd_2_0@20000000
    if_loop_1_i_llvm_fpga_ffwd_source_i32_unnamed_6_if_loop_10 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_16_if_loop_143 (
        .in_predicate_in(redist8_i_first_cleanup_xor_if_loop_14_q_5_q),
        .in_src_data_in_2_0(bgTrunc_i_spec_select_if_loop_128_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_16_if_loop_143_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,94)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_16_if_loop_143_out_intel_reserved_ffwd_2_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,102)
    assign out_lm1_if_loop_1_avm_address = i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_address;
    assign out_lm1_if_loop_1_avm_enable = i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_enable;
    assign out_lm1_if_loop_1_avm_read = i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_read;
    assign out_lm1_if_loop_1_avm_write = i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_write;
    assign out_lm1_if_loop_1_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_writedata;
    assign out_lm1_if_loop_1_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_byteenable;
    assign out_lm1_if_loop_1_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_121_out_lm1_if_loop_1_avm_burstcount;

    // valid_fanout_reg0(REG,132)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together92_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_masked_if_loop_144(LOGICAL,73)@2 + 1
    assign i_masked_if_loop_144_qi = i_notcmp_if_loop_138_q & i_first_cleanup_if_loop_13_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_if_loop_144_delay ( .xin(i_masked_if_loop_144_qi), .xout(i_masked_if_loop_144_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist5_i_masked_if_loop_144_q_5(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_masked_if_loop_144_q_5_delay_0 <= '0;
            redist5_i_masked_if_loop_144_q_5_delay_1 <= '0;
            redist5_i_masked_if_loop_144_q_5_delay_2 <= '0;
            redist5_i_masked_if_loop_144_q_5_q <= '0;
        end
        else
        begin
            redist5_i_masked_if_loop_144_q_5_delay_0 <= $unsigned(i_masked_if_loop_144_q);
            redist5_i_masked_if_loop_144_q_5_delay_1 <= redist5_i_masked_if_loop_144_q_5_delay_0;
            redist5_i_masked_if_loop_144_q_5_delay_2 <= redist5_i_masked_if_loop_144_q_5_delay_1;
            redist5_i_masked_if_loop_144_q_5_q <= redist5_i_masked_if_loop_144_q_5_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,130)@7
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_6_q;
    assign out_c0_exi2_2_tpl = redist5_i_masked_if_loop_144_q_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_11 = GND_q;

endmodule
