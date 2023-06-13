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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_1s_c0_enter142_if_loop_10
// Created for function/kernel if_loop_1
// SystemVerilog created on Tue Jun 13 02:40:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_1_i_sfc_logic_s_c0_in_for_body_s_c0_enter142_if_loop_10 (
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
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [32:0] in_intel_reserved_ffwd_2_0,
    output wire [31:0] out_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_135_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_131_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add3_if_loop_124_sel_x_b;
    wire [31:0] bgTrunc_i_spec_select_if_loop_129_sel_x_b;
    wire [31:0] c_i32_1072_recast_x_q;
    wire [0:0] i_first_cleanup_if_loop_13_sel_x_b;
    wire [0:0] i_last_initeration_if_loop_110_sel_x_b;
    wire [63:0] i_mptr_bitcast_index_if_loop_10_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index_if_loop_10_c_i2_01_x_q;
    wire [31:0] c_i32_070_q;
    wire [31:0] c_i32_173_q;
    wire [32:0] c_i33_175_q;
    wire [32:0] c_i33_undef69_q;
    wire [3:0] c_i4_766_q;
    wire [0:0] i_add_if_loop_127_s;
    reg [31:0] i_add_if_loop_127_q;
    wire [3:0] i_cleanups_shl_if_loop_15_vt_join_q;
    wire [2:0] i_cleanups_shl_if_loop_15_vt_select_3_b;
    wire [33:0] i_cmp1_if_loop_125_a;
    wire [33:0] i_cmp1_if_loop_125_b;
    logic [33:0] i_cmp1_if_loop_125_o;
    wire [0:0] i_cmp1_if_loop_125_c;
    wire [0:0] i_first_cleanup_xor_if_loop_14_q;
    wire [0:0] i_first_cleanup_xor_or_if_loop_121_q;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_135_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_135_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_135_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_135_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_114_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_114_q;
    wire [32:0] i_inc_if_loop_131_a;
    wire [32:0] i_inc_if_loop_131_b;
    logic [32:0] i_inc_if_loop_131_o;
    wire [32:0] i_inc_if_loop_131_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp125_if_loop_137_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp126_if_loop_115_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_112_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast157_if_loop_119_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_18_if_loop_144_out_intel_reserved_ffwd_3_0;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_122_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128_out_feedback_stall_out_7;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_140_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_140_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_013_push8_if_loop_132_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_013_push8_if_loop_132_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_sum_014_push7_if_loop_130_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_sum_014_push7_if_loop_130_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_143_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_143_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_19_out_feedback_valid_out_9;
    wire [0:0] i_masked_if_loop_145_qi;
    reg [0:0] i_masked_if_loop_145_q;
    wire [32:0] i_mul_add3_if_loop_124_a;
    wire [32:0] i_mul_add3_if_loop_124_b;
    logic [32:0] i_mul_add3_if_loop_124_o;
    wire [32:0] i_mul_add3_if_loop_124_q;
    wire [0:0] i_next_cleanups_if_loop_142_s;
    reg [3:0] i_next_cleanups_if_loop_142_q;
    wire [3:0] i_next_initerations_if_loop_18_vt_join_q;
    wire [2:0] i_next_initerations_if_loop_18_vt_select_2_b;
    wire [0:0] i_notcmp_if_loop_139_q;
    wire [0:0] i_or_if_loop_141_q;
    wire [32:0] i_spec_select_if_loop_129_a;
    wire [32:0] i_spec_select_if_loop_129_b;
    logic [32:0] i_spec_select_if_loop_129_o;
    wire [32:0] i_spec_select_if_loop_129_q;
    wire [0:0] i_unnamed_if_loop_116_q;
    wire [31:0] i_unnamed_if_loop_123_vt_join_q;
    wire [29:0] i_unnamed_if_loop_123_vt_select_31_b;
    wire [0:0] i_unnamed_if_loop_138_qi;
    reg [0:0] i_unnamed_if_loop_138_q;
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
    wire [2:0] leftShiftStage0Idx1Rng1_uid151_i_cleanups_shl_if_loop_10_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid151_i_cleanups_shl_if_loop_10_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid152_i_cleanups_shl_if_loop_10_shift_x_q;
    wire [0:0] leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_s;
    reg [3:0] leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid158_i_next_initerations_if_loop_10_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid160_i_next_initerations_if_loop_10_shift_x_q;
    wire [0:0] rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_s;
    reg [3:0] rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid167_i_unnamed_if_loop_10_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid167_i_unnamed_if_loop_10_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid168_i_unnamed_if_loop_10_shift_x_q;
    wire [0:0] leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_s;
    reg [31:0] leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_q;
    wire [0:0] i_exitcond_if_loop_133_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_if_loop_10_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [29:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [59:0] redist1_i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q_1_q;
    reg [0:0] redist2_i_masked_if_loop_145_q_9_q;
    reg [31:0] redist3_i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out_1_q;
    reg [0:0] redist4_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_2_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_3_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_12_q;
    reg [0:0] redist8_i_first_cleanup_xor_if_loop_14_q_1_q;
    reg [0:0] redist9_i_first_cleanup_xor_if_loop_14_q_9_q;
    reg [0:0] redist10_sync_together95_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist11_sync_together95_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist12_sync_together95_aunroll_x_in_c0_eni1_1_tpl_3_q;
    reg [0:0] redist13_sync_together95_aunroll_x_in_c0_eni1_1_tpl_12_q;
    reg [0:0] redist14_sync_together95_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist15_sync_together95_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist16_sync_together95_aunroll_x_in_i_valid_3_q;
    reg [0:0] redist17_sync_together95_aunroll_x_in_i_valid_11_q;
    reg [31:0] redist18_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_1_q;
    reg [31:0] redist19_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_2_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist14_sync_together95_aunroll_x_in_i_valid_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together95_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist14_sync_together95_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist15_sync_together95_aunroll_x_in_i_valid_2(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_sync_together95_aunroll_x_in_i_valid_2_q <= '0;
        end
        else
        begin
            redist15_sync_together95_aunroll_x_in_i_valid_2_q <= $unsigned(redist14_sync_together95_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist16_sync_together95_aunroll_x_in_i_valid_3(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_sync_together95_aunroll_x_in_i_valid_3_q <= '0;
        end
        else
        begin
            redist16_sync_together95_aunroll_x_in_i_valid_3_q <= $unsigned(redist15_sync_together95_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg7(REG,132)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist16_sync_together95_aunroll_x_in_i_valid_3_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_112(BLACKBOX,80)@3
    if_loop_1_i_llvm_fpga_ffwd_dest_i33_unnamed_6_if_loop_10 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_112 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together95_aunroll_x_in_i_valid_2_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_112_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_175(CONSTANT,59)
    assign c_i33_175_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_135(ADD,74)@3
    assign i_fpga_indvars_iv_next_if_loop_135_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_114_q};
    assign i_fpga_indvars_iv_next_if_loop_135_b = {1'b0, c_i33_175_q};
    assign i_fpga_indvars_iv_next_if_loop_135_o = $unsigned(i_fpga_indvars_iv_next_if_loop_135_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_135_b);
    assign i_fpga_indvars_iv_next_if_loop_135_q = i_fpga_indvars_iv_next_if_loop_135_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_135_sel_x(BITSELECT,2)@3
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_135_sel_x_b = i_fpga_indvars_iv_next_if_loop_135_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136(BLACKBOX,94)@3
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    if_loop_1_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_if_loop_135_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_feedback_stall_out_6),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together95_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef69(CONSTANT,60)
    assign c_i33_undef69_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113(BLACKBOX,87)@3
    // out out_feedback_stall_out_6@20000000
    if_loop_1_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113 (
        .in_data_in(c_i33_undef69_q),
        .in_dir(redist11_sync_together95_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_136_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together95_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_sync_together95_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,206)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist10_sync_together95_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist11_sync_together95_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,207)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together95_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else
        begin
            redist11_sync_together95_aunroll_x_in_c0_eni1_1_tpl_2_q <= $unsigned(redist10_sync_together95_aunroll_x_in_c0_eni1_1_tpl_1_q);
        end
    end

    // i_fpga_indvars_iv_replace_phi_if_loop_114(MUX,75)@3
    assign i_fpga_indvars_iv_replace_phi_if_loop_114_s = redist11_sync_together95_aunroll_x_in_c0_eni1_1_tpl_2_q;
    always @(i_fpga_indvars_iv_replace_phi_if_loop_114_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_112_out_dest_data_out_2_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_if_loop_114_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_114_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_113_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_114_q = i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_16_if_loop_112_out_dest_data_out_2_0;
            default : i_fpga_indvars_iv_replace_phi_if_loop_114_q = 33'b0;
        endcase
    end

    // i_exitcond_if_loop_133_cmp_nsign(LOGICAL,172)@3
    assign i_exitcond_if_loop_133_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_114_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp125_if_loop_137(BLACKBOX,78)@3
    if_loop_1_i_llvm_fpga_ffwd_dest_i1_cmp125_0 thei_llvm_fpga_ffwd_dest_i1_cmp125_if_loop_137 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist15_sync_together95_aunroll_x_in_i_valid_2_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp125_if_loop_137_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_138(LOGICAL,114)@3 + 1
    assign i_unnamed_if_loop_138_qi = i_llvm_fpga_ffwd_dest_i1_cmp125_if_loop_137_out_dest_data_out_0_0 & i_exitcond_if_loop_133_cmp_nsign_q;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_unnamed_if_loop_138_delay ( .xin(i_unnamed_if_loop_138_qi), .xout(i_unnamed_if_loop_138_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_push_i1_notexitcond_if_loop_140(BLACKBOX,91)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_1_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_140 (
        .in_data_in(i_unnamed_if_loop_138_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_if_loop_13_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together95_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_140_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_140_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,128)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid158_i_next_initerations_if_loop_10_shift_x(BITSELECT,157)@2
    assign rightShiftStage0Idx1Rng1_uid158_i_next_initerations_if_loop_10_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out[3:1];

    // rightShiftStage0Idx1_uid160_i_next_initerations_if_loop_10_shift_x(BITJOIN,159)@2
    assign rightShiftStage0Idx1_uid160_i_next_initerations_if_loop_10_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid158_i_next_initerations_if_loop_10_shift_x_b};

    // valid_fanout_reg1(REG,126)@1 + 1
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

    // valid_fanout_reg2(REG,127)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push9_if_loop_19(BLACKBOX,96)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    if_loop_1_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_if_loop_19 (
        .in_data_in(i_next_initerations_if_loop_18_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_feedback_stall_out_9),
        .in_keep_going(redist4_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q),
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

    // i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17(BLACKBOX,89)@2
    // out out_feedback_stall_out_9@20000000
    if_loop_1_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_if_loop_17 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist10_sync_together95_aunroll_x_in_c0_eni1_1_tpl_1_q),
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

    // rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x(MUX,161)@2
    assign rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out or rightShiftStage0Idx1_uid160_i_next_initerations_if_loop_10_shift_x_q)
    begin
        unique case (rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_s)
            1'b0 : rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_17_out_data_out;
            1'b1 : rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_q = rightShiftStage0Idx1_uid160_i_next_initerations_if_loop_10_shift_x_q;
            default : rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_if_loop_18_vt_select_2(BITSELECT,102)@2
    assign i_next_initerations_if_loop_18_vt_select_2_b = rightShiftStage0_uid162_i_next_initerations_if_loop_10_shift_x_q[2:0];

    // i_next_initerations_if_loop_18_vt_join(BITJOIN,101)@2
    assign i_next_initerations_if_loop_18_vt_join_q = {GND_q, i_next_initerations_if_loop_18_vt_select_2_b};

    // i_last_initeration_if_loop_110_sel_x(BITSELECT,14)@2
    assign i_last_initeration_if_loop_110_sel_x_b = i_next_initerations_if_loop_18_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_if_loop_111(BLACKBOX,90)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    if_loop_1_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_if_loop_111 (
        .in_data_in(i_last_initeration_if_loop_110_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_initeration_stall_out),
        .in_keep_going(redist4_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q),
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

    // i_llvm_fpga_pipeline_keep_going_if_loop_16(BLACKBOX,84)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_1_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_16 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_111_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_140_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_140_out_feedback_valid_out_3),
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

    // redist4_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1(DELAY,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_2(DELAY,201)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_2_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_2_q <= $unsigned(redist4_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_1_q);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_3(DELAY,202)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_3_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_3_q <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_2_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid151_i_cleanups_shl_if_loop_10_shift_x(BITSELECT,150)@4
    assign leftShiftStage0Idx1Rng1_uid151_i_cleanups_shl_if_loop_10_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid151_i_cleanups_shl_if_loop_10_shift_x_b = leftShiftStage0Idx1Rng1_uid151_i_cleanups_shl_if_loop_10_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid152_i_cleanups_shl_if_loop_10_shift_x(BITJOIN,151)@4
    assign leftShiftStage0Idx1_uid152_i_cleanups_shl_if_loop_10_shift_x_q = {leftShiftStage0Idx1Rng1_uid151_i_cleanups_shl_if_loop_10_shift_x_b, GND_q};

    // leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x(MUX,153)@4
    assign leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out or leftShiftStage0Idx1_uid152_i_cleanups_shl_if_loop_10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_s)
            1'b0 : leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out;
            1'b1 : leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_q = leftShiftStage0Idx1_uid152_i_cleanups_shl_if_loop_10_shift_x_q;
            default : leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_if_loop_15_vt_select_3(BITSELECT,68)@4
    assign i_cleanups_shl_if_loop_15_vt_select_3_b = leftShiftStage0_uid154_i_cleanups_shl_if_loop_10_shift_x_q[3:1];

    // i_cleanups_shl_if_loop_15_vt_join(BITJOIN,67)@4
    assign i_cleanups_shl_if_loop_15_vt_join_q = {i_cleanups_shl_if_loop_15_vt_select_3_b, GND_q};

    // i_notcmp_if_loop_139(LOGICAL,103)@4
    assign i_notcmp_if_loop_139_q = i_unnamed_if_loop_138_q ^ VCC_q;

    // i_or_if_loop_141(LOGICAL,104)@4
    assign i_or_if_loop_141_q = i_notcmp_if_loop_139_q | i_first_cleanup_xor_if_loop_14_q;

    // i_next_cleanups_if_loop_142(MUX,99)@4
    assign i_next_cleanups_if_loop_142_s = i_or_if_loop_141_q;
    always @(i_next_cleanups_if_loop_142_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out or i_cleanups_shl_if_loop_15_vt_join_q)
    begin
        unique case (i_next_cleanups_if_loop_142_s)
            1'b0 : i_next_cleanups_if_loop_142_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out;
            1'b1 : i_next_cleanups_if_loop_142_q = i_cleanups_shl_if_loop_15_vt_join_q;
            default : i_next_cleanups_if_loop_142_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_if_loop_143(BLACKBOX,95)@4
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    if_loop_1_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_if_loop_143 (
        .in_data_in(i_next_cleanups_if_loop_142_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_feedback_stall_out_10),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_3_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together95_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_143_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_143_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_sync_together95_aunroll_x_in_c0_eni1_1_tpl_3(DELAY,208)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together95_aunroll_x_in_c0_eni1_1_tpl_3_q <= '0;
        end
        else
        begin
            redist12_sync_together95_aunroll_x_in_c0_eni1_1_tpl_3_q <= $unsigned(redist11_sync_together95_aunroll_x_in_c0_eni1_1_tpl_2_q);
        end
    end

    // c_i4_766(CONSTANT,62)
    assign c_i4_766_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12(BLACKBOX,88)@4
    // out out_feedback_stall_out_10@20000000
    if_loop_1_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12 (
        .in_data_in(c_i4_766_q),
        .in_dir(redist12_sync_together95_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_143_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_143_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist16_sync_together95_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_if_loop_13_sel_x(BITSELECT,13)@4
    assign i_first_cleanup_if_loop_13_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_12_out_data_out[0:0];

    // i_first_cleanup_xor_if_loop_14(LOGICAL,72)@4
    assign i_first_cleanup_xor_if_loop_14_q = i_first_cleanup_if_loop_13_sel_x_b ^ VCC_q;

    // redist8_i_first_cleanup_xor_if_loop_14_q_1(DELAY,204)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_first_cleanup_xor_if_loop_14_q_1_q <= '0;
        end
        else
        begin
            redist8_i_first_cleanup_xor_if_loop_14_q_1_q <= $unsigned(i_first_cleanup_xor_if_loop_14_q);
        end
    end

    // valid_fanout_reg4(REG,129)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist16_sync_together95_aunroll_x_in_i_valid_3_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp126_if_loop_115(BLACKBOX,79)@5
    if_loop_1_i_llvm_fpga_ffwd_dest_i1_cmp126_0 thei_llvm_fpga_ffwd_dest_i1_cmp126_if_loop_115 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp126_if_loop_115_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_116(LOGICAL,106)@5
    assign i_unnamed_if_loop_116_q = i_llvm_fpga_ffwd_dest_i1_cmp126_if_loop_115_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_if_loop_121(LOGICAL,73)@5
    assign i_first_cleanup_xor_or_if_loop_121_q = i_unnamed_if_loop_116_q | redist8_i_first_cleanup_xor_if_loop_14_q_1_q;

    // c_i32_070(CONSTANT,56)
    assign c_i32_070_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,194)
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_070_q[29:0];
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // valid_fanout_reg5(REG,130)@1 + 1
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

    // valid_fanout_reg10(REG,135)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist14_sync_together95_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_173(CONSTANT,57)
    assign c_i32_173_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_131(ADD,76)@3
    assign i_inc_if_loop_131_a = {1'b0, redist3_i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out_1_q};
    assign i_inc_if_loop_131_b = {1'b0, c_i32_173_q};
    assign i_inc_if_loop_131_o = $unsigned(i_inc_if_loop_131_a) + $unsigned(i_inc_if_loop_131_b);
    assign i_inc_if_loop_131_q = i_inc_if_loop_131_o[32:0];

    // bgTrunc_i_inc_if_loop_131_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_inc_if_loop_131_sel_x_b = i_inc_if_loop_131_q[31:0];

    // i_llvm_fpga_push_i32_i_013_push8_if_loop_132(BLACKBOX,92)@3
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    if_loop_1_i_llvm_fpga_push_i32_i_013_push8_0 thei_llvm_fpga_push_i32_i_013_push8_if_loop_132 (
        .in_data_in(bgTrunc_i_inc_if_loop_131_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_feedback_stall_out_8),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_013_push8_if_loop_132_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_013_push8_if_loop_132_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117(BLACKBOX,85)@2
    // out out_feedback_stall_out_8@20000000
    if_loop_1_i_llvm_fpga_pop_i32_i_013_pop8_0 thei_llvm_fpga_pop_i32_i_013_pop8_if_loop_117 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist10_sync_together95_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_013_push8_if_loop_132_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_013_push8_if_loop_132_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist3_i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out_1(DELAY,199)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out_1_q <= '0;
        end
        else
        begin
            redist3_i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out);
        end
    end

    // i_mptr_bitcast_index_if_loop_10_c_i2_01_x(CONSTANT,18)
    assign i_mptr_bitcast_index_if_loop_10_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,190)@3
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist3_i_llvm_fpga_pop_i32_i_013_pop8_if_loop_117_out_data_out_1_q, i_mptr_bitcast_index_if_loop_10_c_i2_01_x_q};

    // valid_fanout_reg6(REG,131)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist14_sync_together95_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast157_if_loop_119(BLACKBOX,81)@3
    if_loop_1_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast157_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast157_if_loop_119 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast157_if_loop_119_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,195)@3
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast157_if_loop_119_out_dest_data_out_1_0[59:0]);
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast157_if_loop_119_out_dest_data_out_1_0[63:60]);

    // i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2(ADD,179)@3 + 1
    assign i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q = i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,193)@4
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist0_i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,186)@4
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2(ADD,180)@4 + 1
    assign i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_cin = i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index_if_loop_10_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_q = i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_o[5:1];

    // redist1_i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q_1(DELAY,197)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_if_loop_10_add_x_BitJoin_for_q(BITJOIN,181)@5
    assign i_mptr_bitcast_index_if_loop_10_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_if_loop_10_add_x_p2_of_2_q, redist1_i_mptr_bitcast_index_if_loop_10_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_if_loop_10_dupName_0_trunc_sel_x(BITSELECT,15)@5
    assign i_mptr_bitcast_index_if_loop_10_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_if_loop_10_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_lm1_if_loop_122(BLACKBOX,83)@5
    // in in_i_stall@20000000
    // out out_lm1_if_loop_1_avm_address@20000000
    // out out_lm1_if_loop_1_avm_burstcount@20000000
    // out out_lm1_if_loop_1_avm_byteenable@20000000
    // out out_lm1_if_loop_1_avm_enable@20000000
    // out out_lm1_if_loop_1_avm_read@20000000
    // out out_lm1_if_loop_1_avm_write@20000000
    // out out_lm1_if_loop_1_avm_writedata@20000000
    // out out_o_readdata@10
    // out out_o_stall@9
    // out out_o_valid@10
    if_loop_1_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_122 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index_if_loop_10_dupName_0_trunc_sel_x_b),
        .in_i_predicate(i_first_cleanup_xor_or_if_loop_121_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg7_q),
        .in_lm1_if_loop_1_avm_readdata(in_lm1_if_loop_1_avm_readdata),
        .in_lm1_if_loop_1_avm_readdatavalid(in_lm1_if_loop_1_avm_readdatavalid),
        .in_lm1_if_loop_1_avm_waitrequest(in_lm1_if_loop_1_avm_waitrequest),
        .in_lm1_if_loop_1_avm_writeack(in_lm1_if_loop_1_avm_writeack),
        .out_lm1_if_loop_1_avm_address(i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_address),
        .out_lm1_if_loop_1_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_burstcount),
        .out_lm1_if_loop_1_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_byteenable),
        .out_lm1_if_loop_1_avm_enable(i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_enable),
        .out_lm1_if_loop_1_avm_read(i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_read),
        .out_lm1_if_loop_1_avm_write(i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_write),
        .out_lm1_if_loop_1_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_122_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,8)
    assign out_lm1_if_loop_1_avm_address = i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_address;
    assign out_lm1_if_loop_1_avm_enable = i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_enable;
    assign out_lm1_if_loop_1_avm_read = i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_read;
    assign out_lm1_if_loop_1_avm_write = i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_write;
    assign out_lm1_if_loop_1_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_writedata;
    assign out_lm1_if_loop_1_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_byteenable;
    assign out_lm1_if_loop_1_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_122_out_lm1_if_loop_1_avm_burstcount;

    // redist17_sync_together95_aunroll_x_in_i_valid_11(DELAY,213)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist17_sync_together95_aunroll_x_in_i_valid_11 ( .xin(redist16_sync_together95_aunroll_x_in_i_valid_3_q), .xout(redist17_sync_together95_aunroll_x_in_i_valid_11_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // valid_fanout_reg0(REG,125)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist17_sync_together95_aunroll_x_in_i_valid_11_q);
        end
    end

    // i_masked_if_loop_145(LOGICAL,97)@4 + 1
    assign i_masked_if_loop_145_qi = i_notcmp_if_loop_139_q & i_first_cleanup_if_loop_13_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_if_loop_145_delay ( .xin(i_masked_if_loop_145_qi), .xout(i_masked_if_loop_145_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist2_i_masked_if_loop_145_q_9(DELAY,198)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist2_i_masked_if_loop_145_q_9 ( .xin(i_masked_if_loop_145_q), .xout(redist2_i_masked_if_loop_145_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_12(DELAY,203)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_12 ( .xin(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_3_q), .xout(redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // sync_out_aunroll_x(GPOUT,30)@13
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_12_q;
    assign out_c0_exi2_2_tpl = redist2_i_masked_if_loop_145_q_9_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_11 = GND_q;

    // ext_sig_sync_out(GPOUT,64)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_16_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_16_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,118)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_16_out_pipeline_valid_out;

    // valid_fanout_reg11(REG,136)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(redist17_sync_together95_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg8(REG,133)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist17_sync_together95_aunroll_x_in_i_valid_11_q);
        end
    end

    // valid_fanout_reg9(REG,134)@12 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg9_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg9_q <= $unsigned(redist17_sync_together95_aunroll_x_in_i_valid_11_q);
        end
    end

    // i_llvm_fpga_push_i32_sum_014_push7_if_loop_130(BLACKBOX,93)@13
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    if_loop_1_i_llvm_fpga_push_i32_sum_014_push7_0 thei_llvm_fpga_push_i32_sum_014_push7_if_loop_130 (
        .in_data_in(bgTrunc_i_spec_select_if_loop_129_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128_out_feedback_stall_out_7),
        .in_keep_going(redist7_i_llvm_fpga_pipeline_keep_going_if_loop_16_out_data_out_12_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_sum_014_push7_if_loop_130_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_sum_014_push7_if_loop_130_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist13_sync_together95_aunroll_x_in_c0_eni1_1_tpl_12(DELAY,209)
    dspba_delay_ver #( .width(1), .depth(9), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist13_sync_together95_aunroll_x_in_c0_eni1_1_tpl_12 ( .xin(redist12_sync_together95_aunroll_x_in_c0_eni1_1_tpl_3_q), .xout(redist13_sync_together95_aunroll_x_in_c0_eni1_1_tpl_12_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128(BLACKBOX,86)@13
    // out out_feedback_stall_out_7@20000000
    if_loop_1_i_llvm_fpga_pop_i32_sum_014_pop7_0 thei_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128 (
        .in_data_in(c_i32_070_q),
        .in_dir(redist13_sync_together95_aunroll_x_in_c0_eni1_1_tpl_12_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_sum_014_push7_if_loop_130_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_sum_014_push7_if_loop_130_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(i_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage0Idx1Rng2_uid167_i_unnamed_if_loop_10_shift_x(BITSELECT,166)@10
    assign leftShiftStage0Idx1Rng2_uid167_i_unnamed_if_loop_10_shift_x_in = i_llvm_fpga_mem_lm1_if_loop_122_out_o_readdata[29:0];
    assign leftShiftStage0Idx1Rng2_uid167_i_unnamed_if_loop_10_shift_x_b = leftShiftStage0Idx1Rng2_uid167_i_unnamed_if_loop_10_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid168_i_unnamed_if_loop_10_shift_x(BITJOIN,167)@10
    assign leftShiftStage0Idx1_uid168_i_unnamed_if_loop_10_shift_x_q = {leftShiftStage0Idx1Rng2_uid167_i_unnamed_if_loop_10_shift_x_b, i_mptr_bitcast_index_if_loop_10_c_i2_01_x_q};

    // leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x(MUX,169)@10
    assign leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_s or i_llvm_fpga_mem_lm1_if_loop_122_out_o_readdata or leftShiftStage0Idx1_uid168_i_unnamed_if_loop_10_shift_x_q)
    begin
        unique case (leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_s)
            1'b0 : leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_q = i_llvm_fpga_mem_lm1_if_loop_122_out_o_readdata;
            1'b1 : leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_q = leftShiftStage0Idx1_uid168_i_unnamed_if_loop_10_shift_x_q;
            default : leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_if_loop_123_vt_select_31(BITSELECT,113)@10
    assign i_unnamed_if_loop_123_vt_select_31_b = leftShiftStage0_uid170_i_unnamed_if_loop_10_shift_x_q[31:2];

    // i_unnamed_if_loop_123_vt_join(BITJOIN,112)@10
    assign i_unnamed_if_loop_123_vt_join_q = {i_unnamed_if_loop_123_vt_select_31_b, i_mptr_bitcast_index_if_loop_10_c_i2_01_x_q};

    // i_mul_add3_if_loop_124(ADD,98)@10
    assign i_mul_add3_if_loop_124_a = {1'b0, i_llvm_fpga_mem_lm1_if_loop_122_out_o_readdata};
    assign i_mul_add3_if_loop_124_b = {1'b0, i_unnamed_if_loop_123_vt_join_q};
    assign i_mul_add3_if_loop_124_o = $unsigned(i_mul_add3_if_loop_124_a) + $unsigned(i_mul_add3_if_loop_124_b);
    assign i_mul_add3_if_loop_124_q = i_mul_add3_if_loop_124_o[32:0];

    // bgTrunc_i_mul_add3_if_loop_124_sel_x(BITSELECT,4)@10
    assign bgTrunc_i_mul_add3_if_loop_124_sel_x_b = i_mul_add3_if_loop_124_q[31:0];

    // redist18_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_1(DELAY,214)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_1_q <= '0;
        end
        else
        begin
            redist18_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_1_q <= $unsigned(bgTrunc_i_mul_add3_if_loop_124_sel_x_b);
        end
    end

    // redist19_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_2(DELAY,215)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_2_q <= '0;
        end
        else
        begin
            redist19_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_2_q <= $unsigned(redist18_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_1_q);
        end
    end

    // c_i32_1072_recast_x(CONSTANT,6)
    assign c_i32_1072_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp1_if_loop_125(COMPARE,69)@11 + 1
    assign i_cmp1_if_loop_125_a = $unsigned({{2{c_i32_1072_recast_x_q[31]}}, c_i32_1072_recast_x_q});
    assign i_cmp1_if_loop_125_b = $unsigned({{2{redist18_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_1_q[31]}}, redist18_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_1_q});
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_cmp1_if_loop_125_o <= 34'b0;
        end
        else
        begin
            i_cmp1_if_loop_125_o <= $unsigned($signed(i_cmp1_if_loop_125_a) - $signed(i_cmp1_if_loop_125_b));
        end
    end
    assign i_cmp1_if_loop_125_c[0] = i_cmp1_if_loop_125_o[33];

    // i_add_if_loop_127(MUX,65)@12 + 1
    assign i_add_if_loop_127_s = i_cmp1_if_loop_125_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add_if_loop_127_q <= 32'b0;
        end
        else
        begin
            unique case (i_add_if_loop_127_s)
                1'b0 : i_add_if_loop_127_q <= c_i32_070_q;
                1'b1 : i_add_if_loop_127_q <= redist19_bgTrunc_i_mul_add3_if_loop_124_sel_x_b_2_q;
                default : i_add_if_loop_127_q <= 32'b0;
            endcase
        end
    end

    // i_spec_select_if_loop_129(ADD,105)@13
    assign i_spec_select_if_loop_129_a = {1'b0, i_add_if_loop_127_q};
    assign i_spec_select_if_loop_129_b = {1'b0, i_llvm_fpga_pop_i32_sum_014_pop7_if_loop_128_out_data_out};
    assign i_spec_select_if_loop_129_o = $unsigned(i_spec_select_if_loop_129_a) + $unsigned(i_spec_select_if_loop_129_b);
    assign i_spec_select_if_loop_129_q = i_spec_select_if_loop_129_o[32:0];

    // bgTrunc_i_spec_select_if_loop_129_sel_x(BITSELECT,5)@13
    assign bgTrunc_i_spec_select_if_loop_129_sel_x_b = i_spec_select_if_loop_129_q[31:0];

    // redist9_i_first_cleanup_xor_if_loop_14_q_9(DELAY,205)
    dspba_delay_ver #( .width(1), .depth(8), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist9_i_first_cleanup_xor_if_loop_14_q_9 ( .xin(redist8_i_first_cleanup_xor_if_loop_14_q_1_q), .xout(redist9_i_first_cleanup_xor_if_loop_14_q_9_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_18_if_loop_144(BLACKBOX,82)@13
    // out out_intel_reserved_ffwd_3_0@20000000
    if_loop_1_i_llvm_fpga_ffwd_source_i32_unnamed_8_if_loop_10 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_18_if_loop_144 (
        .in_predicate_in(redist9_i_first_cleanup_xor_if_loop_14_q_9_q),
        .in_src_data_in_3_0(bgTrunc_i_spec_select_if_loop_129_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_intel_reserved_ffwd_3_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_18_if_loop_144_out_intel_reserved_ffwd_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,123)
    assign out_intel_reserved_ffwd_3_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_18_if_loop_144_out_intel_reserved_ffwd_3_0;

endmodule
