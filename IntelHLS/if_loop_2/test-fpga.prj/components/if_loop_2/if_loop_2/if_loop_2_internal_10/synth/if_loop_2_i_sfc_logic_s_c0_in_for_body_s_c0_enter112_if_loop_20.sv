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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_2s_c0_enter112_if_loop_20
// Created for function/kernel if_loop_2
// SystemVerilog created on Tue Apr 18 14:45:24 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_2_i_sfc_logic_s_c0_in_for_body_s_c0_enter112_if_loop_20 (
    input wire [31:0] in_lm1_if_loop_2_avm_readdata,
    input wire [0:0] in_lm1_if_loop_2_avm_writeack,
    input wire [0:0] in_lm1_if_loop_2_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_2_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_26_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_26_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [32:0] in_intel_reserved_ffwd_1_0,
    output wire [31:0] out_intel_reserved_ffwd_2_0,
    output wire [31:0] out_lm1_if_loop_2_avm_address,
    output wire [0:0] out_lm1_if_loop_2_avm_enable,
    output wire [0:0] out_lm1_if_loop_2_avm_read,
    output wire [0:0] out_lm1_if_loop_2_avm_write,
    output wire [31:0] out_lm1_if_loop_2_avm_writedata,
    output wire [3:0] out_lm1_if_loop_2_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_2_avm_burstcount,
    output wire [0:0] out_c0_exi2_0_tpl,
    output wire [0:0] out_c0_exi2_1_tpl,
    output wire [0:0] out_c0_exi2_2_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_21,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_066_q;
    wire [31:0] c_i32_168_q;
    wire [32:0] c_i33_170_q;
    wire [32:0] c_i33_undef65_q;
    wire [3:0] c_i4_762_q;
    wire [63:0] c_if_loop_2_a_local_pmem_q;
    wire [0:0] i_add_if_loop_224_s;
    reg [31:0] i_add_if_loop_224_q;
    wire [1:0] i_arrayidx1_if_loop_219_vt_const_1_q;
    wire [63:0] i_arrayidx1_if_loop_219_vt_join_q;
    wire [61:0] i_arrayidx1_if_loop_219_vt_select_63_b;
    wire [3:0] i_cleanups_shl_if_loop_25_vt_join_q;
    wire [2:0] i_cleanups_shl_if_loop_25_vt_select_3_b;
    wire [33:0] i_cmp2_if_loop_222_a;
    wire [33:0] i_cmp2_if_loop_222_b;
    logic [33:0] i_cmp2_if_loop_222_o;
    wire [0:0] i_cmp2_if_loop_222_c;
    wire [0:0] i_first_cleanup_xor_if_loop_24_q;
    wire [0:0] i_first_cleanup_xor_or_if_loop_220_q;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_232_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_232_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_232_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_232_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_214_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_214_q;
    wire [63:0] i_idxprom_if_loop_218_vt_join_q;
    wire [31:0] i_idxprom_if_loop_218_vt_select_31_b;
    wire [32:0] i_inc_if_loop_228_a;
    wire [32:0] i_inc_if_loop_228_b;
    logic [32:0] i_inc_if_loop_228_o;
    wire [32:0] i_inc_if_loop_228_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_234_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_215_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_25_if_loop_212_out_dest_data_out_1_0;
    wire [31:0] i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_26_if_loop_241_out_intel_reserved_ffwd_2_0;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_221_out_o_readdata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225_out_feedback_stall_out_7;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_211_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_211_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_237_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_237_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_09_push8_if_loop_229_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_09_push8_if_loop_229_out_feedback_valid_out_8;
    wire [31:0] i_llvm_fpga_push_i32_sum_010_push7_if_loop_227_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_sum_010_push7_if_loop_227_out_feedback_valid_out_7;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_240_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_240_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_29_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_29_out_feedback_valid_out_9;
    wire [0:0] i_masked_if_loop_242_qi;
    reg [0:0] i_masked_if_loop_242_q;
    wire [0:0] i_next_cleanups_if_loop_239_s;
    reg [3:0] i_next_cleanups_if_loop_239_q;
    wire [3:0] i_next_initerations_if_loop_28_vt_join_q;
    wire [2:0] i_next_initerations_if_loop_28_vt_select_2_b;
    wire [0:0] i_notcmp_if_loop_236_q;
    wire [0:0] i_or_if_loop_238_q;
    wire [32:0] i_spec_select_if_loop_226_a;
    wire [32:0] i_spec_select_if_loop_226_b;
    logic [32:0] i_spec_select_if_loop_226_o;
    wire [32:0] i_spec_select_if_loop_226_q;
    wire [0:0] i_unnamed_if_loop_216_q;
    wire [0:0] i_unnamed_if_loop_235_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_232_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_228_sel_x_b;
    wire [31:0] bgTrunc_i_spec_select_if_loop_226_sel_x_b;
    wire [31:0] c_i32_1067_recast_x_q;
    wire [9:0] i_arrayidx1_if_loop_20_add_x_a;
    wire [9:0] i_arrayidx1_if_loop_20_add_x_b;
    logic [9:0] i_arrayidx1_if_loop_20_add_x_o;
    wire [9:0] i_arrayidx1_if_loop_20_add_x_q;
    wire [63:0] i_arrayidx1_if_loop_20_append_upper_bits_x_q;
    wire [6:0] i_arrayidx1_if_loop_20_narrow_x_b;
    wire [8:0] i_arrayidx1_if_loop_20_shift_join_x_q;
    wire [8:0] i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_if_loop_23_sel_x_b;
    wire [63:0] i_idxprom_if_loop_218_sel_x_b;
    wire [0:0] i_last_initeration_if_loop_210_sel_x_b;
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
    wire [0:0] i_exitcond_if_loop_230_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_if_loop_20_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_if_loop_20_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid147_i_cleanups_shl_if_loop_20_shift_x_q;
    wire [0:0] leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_s;
    reg [3:0] leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid153_i_next_initerations_if_loop_20_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid155_i_next_initerations_if_loop_20_shift_x_q;
    wire [0:0] rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_s;
    reg [3:0] rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_q;
    wire [54:0] i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_c;
    reg [0:0] redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_q;
    reg [0:0] redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_0;
    reg [0:0] redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_1;
    reg [0:0] redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_2;
    reg [0:0] redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_3;
    reg [0:0] redist2_sync_together89_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist3_sync_together89_aunroll_x_in_i_valid_5_q;
    reg [0:0] redist3_sync_together89_aunroll_x_in_i_valid_5_delay_0;
    reg [0:0] redist3_sync_together89_aunroll_x_in_i_valid_5_delay_1;
    reg [0:0] redist3_sync_together89_aunroll_x_in_i_valid_5_delay_2;
    reg [0:0] redist4_i_masked_if_loop_242_q_5_q;
    reg [0:0] redist4_i_masked_if_loop_242_q_5_delay_0;
    reg [0:0] redist4_i_masked_if_loop_242_q_5_delay_1;
    reg [0:0] redist4_i_masked_if_loop_242_q_5_delay_2;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_q;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_0;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_1;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_2;
    reg [0:0] redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_3;
    reg [0:0] redist7_i_first_cleanup_xor_if_loop_24_q_5_q;
    reg [0:0] redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_0;
    reg [0:0] redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_1;
    reg [0:0] redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_2;
    reg [0:0] redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_3;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist2_sync_together89_aunroll_x_in_i_valid_1(DELAY,161)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together89_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist2_sync_together89_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1(DELAY,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_if_loop_20_shift_x(BITSELECT,145)@2
    assign leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_if_loop_20_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_if_loop_20_shift_x_b = leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_if_loop_20_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid147_i_cleanups_shl_if_loop_20_shift_x(BITJOIN,146)@2
    assign leftShiftStage0Idx1_uid147_i_cleanups_shl_if_loop_20_shift_x_q = {leftShiftStage0Idx1Rng1_uid146_i_cleanups_shl_if_loop_20_shift_x_b, GND_q};

    // leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x(MUX,148)@2
    assign leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out or leftShiftStage0Idx1_uid147_i_cleanups_shl_if_loop_20_shift_x_q)
    begin
        unique case (leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_s)
            1'b0 : leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out;
            1'b1 : leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_q = leftShiftStage0Idx1_uid147_i_cleanups_shl_if_loop_20_shift_x_q;
            default : leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_if_loop_25_vt_select_3(BITSELECT,39)@2
    assign i_cleanups_shl_if_loop_25_vt_select_3_b = leftShiftStage0_uid149_i_cleanups_shl_if_loop_20_shift_x_q[3:1];

    // i_cleanups_shl_if_loop_25_vt_join(BITJOIN,38)@2
    assign i_cleanups_shl_if_loop_25_vt_join_q = {i_cleanups_shl_if_loop_25_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_if_loop_24(LOGICAL,43)@2
    assign i_first_cleanup_xor_if_loop_24_q = i_first_cleanup_if_loop_23_sel_x_b ^ VCC_q;

    // i_notcmp_if_loop_236(LOGICAL,76)@2
    assign i_notcmp_if_loop_236_q = i_unnamed_if_loop_235_q ^ VCC_q;

    // i_or_if_loop_238(LOGICAL,77)@2
    assign i_or_if_loop_238_q = i_notcmp_if_loop_236_q | i_first_cleanup_xor_if_loop_24_q;

    // i_next_cleanups_if_loop_239(MUX,72)@2
    assign i_next_cleanups_if_loop_239_s = i_or_if_loop_238_q;
    always @(i_next_cleanups_if_loop_239_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out or i_cleanups_shl_if_loop_25_vt_join_q)
    begin
        unique case (i_next_cleanups_if_loop_239_s)
            1'b0 : i_next_cleanups_if_loop_239_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out;
            1'b1 : i_next_cleanups_if_loop_239_q = i_cleanups_shl_if_loop_25_vt_join_q;
            default : i_next_cleanups_if_loop_239_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_if_loop_240(BLACKBOX,69)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    if_loop_2_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_if_loop_240 (
        .in_data_in(i_next_cleanups_if_loop_239_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_feedback_stall_out_10),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_240_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_240_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,159)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_762(CONSTANT,29)
    assign c_i4_762_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22(BLACKBOX,62)@2
    // out out_feedback_stall_out_10@20000000
    if_loop_2_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22 (
        .in_data_in(c_i4_762_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_240_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_240_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_if_loop_23_sel_x(BITSELECT,112)@2
    assign i_first_cleanup_if_loop_23_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_22_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_25_if_loop_212(BLACKBOX,55)@2
    if_loop_2_i_llvm_fpga_ffwd_dest_i33_unnamed_5_if_loop_20 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_25_if_loop_212 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_25_if_loop_212_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_170(CONSTANT,26)
    assign c_i33_170_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_232(ADD,45)@2
    assign i_fpga_indvars_iv_next_if_loop_232_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_214_q};
    assign i_fpga_indvars_iv_next_if_loop_232_b = {1'b0, c_i33_170_q};
    assign i_fpga_indvars_iv_next_if_loop_232_o = $unsigned(i_fpga_indvars_iv_next_if_loop_232_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_232_b);
    assign i_fpga_indvars_iv_next_if_loop_232_q = i_fpga_indvars_iv_next_if_loop_232_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_232_sel_x(BITSELECT,90)@2
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_232_sel_x_b = i_fpga_indvars_iv_next_if_loop_232_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233(BLACKBOX,68)@2
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    if_loop_2_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_if_loop_232_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213_out_feedback_stall_out_6),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef65(CONSTANT,27)
    assign c_i33_undef65_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213(BLACKBOX,61)@2
    // out out_feedback_stall_out_6@20000000
    if_loop_2_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213 (
        .in_data_in(c_i33_undef65_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_233_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_if_loop_214(MUX,46)@2
    assign i_fpga_indvars_iv_replace_phi_if_loop_214_s = redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q;
    always @(i_fpga_indvars_iv_replace_phi_if_loop_214_s or i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_25_if_loop_212_out_dest_data_out_1_0)
    begin
        unique case (i_fpga_indvars_iv_replace_phi_if_loop_214_s)
            1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_214_q = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_213_out_data_out;
            1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_214_q = i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_25_if_loop_212_out_dest_data_out_1_0;
            default : i_fpga_indvars_iv_replace_phi_if_loop_214_q = 33'b0;
        endcase
    end

    // i_exitcond_if_loop_230_cmp_nsign(LOGICAL,141)@2
    assign i_exitcond_if_loop_230_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_214_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_234(BLACKBOX,53)@2
    if_loop_2_i_llvm_fpga_ffwd_dest_i1_cmp83_0 thei_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_234 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_1_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_234_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_235(LOGICAL,80)@2
    assign i_unnamed_if_loop_235_q = i_llvm_fpga_ffwd_dest_i1_cmp83_if_loop_234_out_dest_data_out_0_0 & i_exitcond_if_loop_230_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond_if_loop_237(BLACKBOX,65)@2
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_2_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_237 (
        .in_data_in(i_unnamed_if_loop_235_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_if_loop_23_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist2_sync_together89_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_237_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_237_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,124)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid153_i_next_initerations_if_loop_20_shift_x(BITSELECT,152)@2
    assign rightShiftStage0Idx1Rng1_uid153_i_next_initerations_if_loop_20_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_data_out[3:1];

    // rightShiftStage0Idx1_uid155_i_next_initerations_if_loop_20_shift_x(BITJOIN,154)@2
    assign rightShiftStage0Idx1_uid155_i_next_initerations_if_loop_20_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid153_i_next_initerations_if_loop_20_shift_x_b};

    // valid_fanout_reg1(REG,122)@1 + 1
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

    // valid_fanout_reg2(REG,123)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push9_if_loop_29(BLACKBOX,70)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    if_loop_2_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_if_loop_29 (
        .in_data_in(i_next_initerations_if_loop_28_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_feedback_stall_out_9),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_29_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_29_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27(BLACKBOX,63)@2
    // out out_feedback_stall_out_9@20000000
    if_loop_2_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_if_loop_27 (
        .in_data_in(c_i4_762_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_29_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_29_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x(MUX,156)@2
    assign rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_data_out or rightShiftStage0Idx1_uid155_i_next_initerations_if_loop_20_shift_x_q)
    begin
        unique case (rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_s)
            1'b0 : rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_27_out_data_out;
            1'b1 : rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_q = rightShiftStage0Idx1_uid155_i_next_initerations_if_loop_20_shift_x_q;
            default : rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_if_loop_28_vt_select_2(BITSELECT,75)@2
    assign i_next_initerations_if_loop_28_vt_select_2_b = rightShiftStage0_uid157_i_next_initerations_if_loop_20_shift_x_q[2:0];

    // i_next_initerations_if_loop_28_vt_join(BITJOIN,74)@2
    assign i_next_initerations_if_loop_28_vt_join_q = {GND_q, i_next_initerations_if_loop_28_vt_select_2_b};

    // i_last_initeration_if_loop_210_sel_x(BITSELECT,114)@2
    assign i_last_initeration_if_loop_210_sel_x_b = i_next_initerations_if_loop_28_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_if_loop_211(BLACKBOX,64)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    if_loop_2_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_if_loop_211 (
        .in_data_in(i_last_initeration_if_loop_210_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_initeration_stall_out),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_211_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_211_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_if_loop_26(BLACKBOX,58)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_2_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_26 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_211_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_211_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_237_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_237_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,32)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_26_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_26_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_if_loop_26_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,84)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_26_out_pipeline_valid_out;

    // redist3_sync_together89_aunroll_x_in_i_valid_5(DELAY,162)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together89_aunroll_x_in_i_valid_5_delay_0 <= '0;
            redist3_sync_together89_aunroll_x_in_i_valid_5_delay_1 <= '0;
            redist3_sync_together89_aunroll_x_in_i_valid_5_delay_2 <= '0;
            redist3_sync_together89_aunroll_x_in_i_valid_5_q <= '0;
        end
        else
        begin
            redist3_sync_together89_aunroll_x_in_i_valid_5_delay_0 <= $unsigned(redist2_sync_together89_aunroll_x_in_i_valid_1_q);
            redist3_sync_together89_aunroll_x_in_i_valid_5_delay_1 <= redist3_sync_together89_aunroll_x_in_i_valid_5_delay_0;
            redist3_sync_together89_aunroll_x_in_i_valid_5_delay_2 <= redist3_sync_together89_aunroll_x_in_i_valid_5_delay_1;
            redist3_sync_together89_aunroll_x_in_i_valid_5_q <= redist3_sync_together89_aunroll_x_in_i_valid_5_delay_2;
        end
    end

    // valid_fanout_reg10(REG,131)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(redist3_sync_together89_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg7(REG,128)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist3_sync_together89_aunroll_x_in_i_valid_5_q);
        end
    end

    // valid_fanout_reg8(REG,129)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist3_sync_together89_aunroll_x_in_i_valid_5_q);
        end
    end

    // redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6(DELAY,165)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_0 <= '0;
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_1 <= '0;
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_2 <= '0;
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_3 <= '0;
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_q <= '0;
        end
        else
        begin
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_0 <= $unsigned(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q);
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_1 <= redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_0;
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_2 <= redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_1;
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_3 <= redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_2;
            redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_q <= redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_delay_3;
        end
    end

    // i_llvm_fpga_push_i32_sum_010_push7_if_loop_227(BLACKBOX,67)@7
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    if_loop_2_i_llvm_fpga_push_i32_sum_010_push7_0 thei_llvm_fpga_push_i32_sum_010_push7_if_loop_227 (
        .in_data_in(bgTrunc_i_spec_select_if_loop_226_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225_out_feedback_stall_out_7),
        .in_keep_going(redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_sum_010_push7_if_loop_227_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_sum_010_push7_if_loop_227_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6(DELAY,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_0 <= '0;
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_1 <= '0;
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_2 <= '0;
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_3 <= '0;
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_q <= '0;
        end
        else
        begin
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_0 <= $unsigned(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q);
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_1 <= redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_0;
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_2 <= redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_1;
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_3 <= redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_2;
            redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_q <= redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_delay_3;
        end
    end

    // c_i32_066(CONSTANT,24)
    assign c_i32_066_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225(BLACKBOX,60)@7
    // out out_feedback_stall_out_7@20000000
    if_loop_2_i_llvm_fpga_pop_i32_sum_010_pop7_0 thei_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225 (
        .in_data_in(c_i32_066_q),
        .in_dir(redist1_sync_together89_aunroll_x_in_c0_eni1_1_tpl_6_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_sum_010_push7_if_loop_227_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_sum_010_push7_if_loop_227_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg6(REG,127)@1 + 1
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

    // valid_fanout_reg4(REG,125)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_215(BLACKBOX,54)@2
    if_loop_2_i_llvm_fpga_ffwd_dest_i1_cmp84_0 thei_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_215 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_215_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_216(LOGICAL,79)@2
    assign i_unnamed_if_loop_216_q = i_llvm_fpga_ffwd_dest_i1_cmp84_if_loop_215_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_if_loop_220(LOGICAL,44)@2
    assign i_first_cleanup_xor_or_if_loop_220_q = i_unnamed_if_loop_216_q | i_first_cleanup_xor_if_loop_24_q;

    // c_if_loop_2_a_local_pmem(CONSTANT,30)
    assign c_if_loop_2_a_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select(BITSELECT,158)@2
    assign i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_b = c_if_loop_2_a_local_pmem_q[63:9];
    assign i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_c = c_if_loop_2_a_local_pmem_q[8:0];

    // valid_fanout_reg5(REG,126)@1 + 1
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

    // valid_fanout_reg9(REG,130)@1 + 1
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

    // c_i32_168(CONSTANT,25)
    assign c_i32_168_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_228(ADD,51)@2
    assign i_inc_if_loop_228_a = {1'b0, i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217_out_data_out};
    assign i_inc_if_loop_228_b = {1'b0, c_i32_168_q};
    assign i_inc_if_loop_228_o = $unsigned(i_inc_if_loop_228_a) + $unsigned(i_inc_if_loop_228_b);
    assign i_inc_if_loop_228_q = i_inc_if_loop_228_o[32:0];

    // bgTrunc_i_inc_if_loop_228_sel_x(BITSELECT,91)@2
    assign bgTrunc_i_inc_if_loop_228_sel_x_b = i_inc_if_loop_228_q[31:0];

    // i_llvm_fpga_push_i32_i_09_push8_if_loop_229(BLACKBOX,66)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    if_loop_2_i_llvm_fpga_push_i32_i_09_push8_0 thei_llvm_fpga_push_i32_i_09_push8_if_loop_229 (
        .in_data_in(bgTrunc_i_inc_if_loop_228_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217_out_feedback_stall_out_8),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_1_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_09_push8_if_loop_229_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_09_push8_if_loop_229_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217(BLACKBOX,59)@2
    // out out_feedback_stall_out_8@20000000
    if_loop_2_i_llvm_fpga_pop_i32_i_09_pop8_0 thei_llvm_fpga_pop_i32_i_09_pop8_if_loop_217 (
        .in_data_in(c_i32_066_q),
        .in_dir(redist0_sync_together89_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_09_push8_if_loop_229_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_09_push8_if_loop_229_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_if_loop_218_sel_x(BITSELECT,113)@2
    assign i_idxprom_if_loop_218_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_09_pop8_if_loop_217_out_data_out[31:0]};

    // i_idxprom_if_loop_218_vt_select_31(BITSELECT,50)@2
    assign i_idxprom_if_loop_218_vt_select_31_b = i_idxprom_if_loop_218_sel_x_b[31:0];

    // i_idxprom_if_loop_218_vt_join(BITJOIN,49)@2
    assign i_idxprom_if_loop_218_vt_join_q = {c_i32_066_q, i_idxprom_if_loop_218_vt_select_31_b};

    // i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x(BITSELECT,106)@2
    assign i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x_b = i_idxprom_if_loop_218_vt_join_q[8:0];

    // i_arrayidx1_if_loop_20_narrow_x(BITSELECT,99)@2
    assign i_arrayidx1_if_loop_20_narrow_x_b = i_arrayidx1_if_loop_20_dupName_0_trunc_sel_x_b[6:0];

    // i_arrayidx1_if_loop_20_shift_join_x(BITJOIN,100)@2
    assign i_arrayidx1_if_loop_20_shift_join_x_q = {i_arrayidx1_if_loop_20_narrow_x_b, i_arrayidx1_if_loop_219_vt_const_1_q};

    // i_arrayidx1_if_loop_20_add_x(ADD,96)@2
    assign i_arrayidx1_if_loop_20_add_x_a = {1'b0, i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx1_if_loop_20_add_x_b = {1'b0, i_arrayidx1_if_loop_20_shift_join_x_q};
    assign i_arrayidx1_if_loop_20_add_x_o = $unsigned(i_arrayidx1_if_loop_20_add_x_a) + $unsigned(i_arrayidx1_if_loop_20_add_x_b);
    assign i_arrayidx1_if_loop_20_add_x_q = i_arrayidx1_if_loop_20_add_x_o[9:0];

    // i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x(BITSELECT,107)@2
    assign i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x_b = i_arrayidx1_if_loop_20_add_x_q[8:0];

    // i_arrayidx1_if_loop_20_append_upper_bits_x(BITJOIN,97)@2
    assign i_arrayidx1_if_loop_20_append_upper_bits_x_q = {i_arrayidx1_if_loop_20_upper_bits_x_merged_bit_select_b, i_arrayidx1_if_loop_20_dupName_2_trunc_sel_x_b};

    // i_arrayidx1_if_loop_219_vt_select_63(BITSELECT,36)@2
    assign i_arrayidx1_if_loop_219_vt_select_63_b = i_arrayidx1_if_loop_20_append_upper_bits_x_q[63:2];

    // i_arrayidx1_if_loop_219_vt_const_1(CONSTANT,34)
    assign i_arrayidx1_if_loop_219_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx1_if_loop_219_vt_join(BITJOIN,35)@2
    assign i_arrayidx1_if_loop_219_vt_join_q = {i_arrayidx1_if_loop_219_vt_select_63_b, i_arrayidx1_if_loop_219_vt_const_1_q};

    // i_llvm_fpga_mem_lm1_if_loop_221(BLACKBOX,57)@2
    // in in_i_stall@20000000
    // out out_lm1_if_loop_2_avm_address@20000000
    // out out_lm1_if_loop_2_avm_burstcount@20000000
    // out out_lm1_if_loop_2_avm_byteenable@20000000
    // out out_lm1_if_loop_2_avm_enable@20000000
    // out out_lm1_if_loop_2_avm_read@20000000
    // out out_lm1_if_loop_2_avm_write@20000000
    // out out_lm1_if_loop_2_avm_writedata@20000000
    // out out_o_readdata@6
    // out out_o_stall@5
    // out out_o_valid@6
    if_loop_2_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_221 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx1_if_loop_219_vt_join_q),
        .in_i_predicate(i_first_cleanup_xor_or_if_loop_220_q),
        .in_i_stall(GND_q),
        .in_i_valid(valid_fanout_reg6_q),
        .in_lm1_if_loop_2_avm_readdata(in_lm1_if_loop_2_avm_readdata),
        .in_lm1_if_loop_2_avm_readdatavalid(in_lm1_if_loop_2_avm_readdatavalid),
        .in_lm1_if_loop_2_avm_waitrequest(in_lm1_if_loop_2_avm_waitrequest),
        .in_lm1_if_loop_2_avm_writeack(in_lm1_if_loop_2_avm_writeack),
        .out_lm1_if_loop_2_avm_address(i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_address),
        .out_lm1_if_loop_2_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_burstcount),
        .out_lm1_if_loop_2_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_byteenable),
        .out_lm1_if_loop_2_avm_enable(i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_enable),
        .out_lm1_if_loop_2_avm_read(i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_read),
        .out_lm1_if_loop_2_avm_write(i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_write),
        .out_lm1_if_loop_2_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_221_out_o_readdata),
        .out_o_stall(),
        .out_o_valid(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_1067_recast_x(CONSTANT,93)
    assign c_i32_1067_recast_x_q = $unsigned(32'b00000000000000000000000000001010);

    // i_cmp2_if_loop_222(COMPARE,40)@6
    assign i_cmp2_if_loop_222_a = $unsigned({{2{c_i32_1067_recast_x_q[31]}}, c_i32_1067_recast_x_q});
    assign i_cmp2_if_loop_222_b = $unsigned({{2{i_llvm_fpga_mem_lm1_if_loop_221_out_o_readdata[31]}}, i_llvm_fpga_mem_lm1_if_loop_221_out_o_readdata});
    assign i_cmp2_if_loop_222_o = $unsigned($signed(i_cmp2_if_loop_222_a) - $signed(i_cmp2_if_loop_222_b));
    assign i_cmp2_if_loop_222_c[0] = i_cmp2_if_loop_222_o[33];

    // i_add_if_loop_224(MUX,33)@6 + 1
    assign i_add_if_loop_224_s = i_cmp2_if_loop_222_c;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add_if_loop_224_q <= 32'b0;
        end
        else
        begin
            unique case (i_add_if_loop_224_s)
                1'b0 : i_add_if_loop_224_q <= c_i32_066_q;
                1'b1 : i_add_if_loop_224_q <= i_llvm_fpga_mem_lm1_if_loop_221_out_o_readdata;
                default : i_add_if_loop_224_q <= 32'b0;
            endcase
        end
    end

    // i_spec_select_if_loop_226(ADD,78)@7
    assign i_spec_select_if_loop_226_a = {1'b0, i_add_if_loop_224_q};
    assign i_spec_select_if_loop_226_b = {1'b0, i_llvm_fpga_pop_i32_sum_010_pop7_if_loop_225_out_data_out};
    assign i_spec_select_if_loop_226_o = $unsigned(i_spec_select_if_loop_226_a) + $unsigned(i_spec_select_if_loop_226_b);
    assign i_spec_select_if_loop_226_q = i_spec_select_if_loop_226_o[32:0];

    // bgTrunc_i_spec_select_if_loop_226_sel_x(BITSELECT,92)@7
    assign bgTrunc_i_spec_select_if_loop_226_sel_x_b = i_spec_select_if_loop_226_q[31:0];

    // redist7_i_first_cleanup_xor_if_loop_24_q_5(DELAY,166)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_0 <= '0;
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_1 <= '0;
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_2 <= '0;
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_3 <= '0;
            redist7_i_first_cleanup_xor_if_loop_24_q_5_q <= '0;
        end
        else
        begin
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_0 <= $unsigned(i_first_cleanup_xor_if_loop_24_q);
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_1 <= redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_0;
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_2 <= redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_1;
            redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_3 <= redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_2;
            redist7_i_first_cleanup_xor_if_loop_24_q_5_q <= redist7_i_first_cleanup_xor_if_loop_24_q_5_delay_3;
        end
    end

    // i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_26_if_loop_241(BLACKBOX,56)@7
    // out out_intel_reserved_ffwd_2_0@20000000
    if_loop_2_i_llvm_fpga_ffwd_source_i32_unnamed_6_if_loop_20 thei_llvm_fpga_ffwd_source_i32_unnamed_if_loop_26_if_loop_241 (
        .in_predicate_in(redist7_i_first_cleanup_xor_if_loop_24_q_5_q),
        .in_src_data_in_2_0(bgTrunc_i_spec_select_if_loop_226_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_intel_reserved_ffwd_2_0(i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_26_if_loop_241_out_intel_reserved_ffwd_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // regfree_osync(GPOUT,88)
    assign out_intel_reserved_ffwd_2_0 = i_llvm_fpga_ffwd_source_i32_unnamed_if_loop_26_if_loop_241_out_intel_reserved_ffwd_2_0;

    // dupName_0_ext_sig_sync_out_x(GPOUT,95)
    assign out_lm1_if_loop_2_avm_address = i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_address;
    assign out_lm1_if_loop_2_avm_enable = i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_enable;
    assign out_lm1_if_loop_2_avm_read = i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_read;
    assign out_lm1_if_loop_2_avm_write = i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_write;
    assign out_lm1_if_loop_2_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_writedata;
    assign out_lm1_if_loop_2_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_byteenable;
    assign out_lm1_if_loop_2_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_221_out_lm1_if_loop_2_avm_burstcount;

    // valid_fanout_reg0(REG,121)@6 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist3_sync_together89_aunroll_x_in_i_valid_5_q);
        end
    end

    // i_masked_if_loop_242(LOGICAL,71)@2 + 1
    assign i_masked_if_loop_242_qi = i_notcmp_if_loop_236_q & i_first_cleanup_if_loop_23_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_if_loop_242_delay ( .xin(i_masked_if_loop_242_qi), .xout(i_masked_if_loop_242_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist4_i_masked_if_loop_242_q_5(DELAY,163)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_masked_if_loop_242_q_5_delay_0 <= '0;
            redist4_i_masked_if_loop_242_q_5_delay_1 <= '0;
            redist4_i_masked_if_loop_242_q_5_delay_2 <= '0;
            redist4_i_masked_if_loop_242_q_5_q <= '0;
        end
        else
        begin
            redist4_i_masked_if_loop_242_q_5_delay_0 <= $unsigned(i_masked_if_loop_242_q);
            redist4_i_masked_if_loop_242_q_5_delay_1 <= redist4_i_masked_if_loop_242_q_5_delay_0;
            redist4_i_masked_if_loop_242_q_5_delay_2 <= redist4_i_masked_if_loop_242_q_5_delay_1;
            redist4_i_masked_if_loop_242_q_5_q <= redist4_i_masked_if_loop_242_q_5_delay_2;
        end
    end

    // sync_out_aunroll_x(GPOUT,119)@7
    assign out_c0_exi2_0_tpl = GND_q;
    assign out_c0_exi2_1_tpl = redist6_i_llvm_fpga_pipeline_keep_going_if_loop_26_out_data_out_6_q;
    assign out_c0_exi2_2_tpl = redist4_i_masked_if_loop_242_q_5_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_21 = GND_q;

endmodule
