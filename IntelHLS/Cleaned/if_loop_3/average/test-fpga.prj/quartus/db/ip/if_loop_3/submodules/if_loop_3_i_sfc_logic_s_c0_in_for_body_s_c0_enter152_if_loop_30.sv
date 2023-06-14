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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_30
// Created for function/kernel if_loop_3
// SystemVerilog created on Tue Jun 13 03:11:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_i_sfc_logic_s_c0_in_for_body_s_c0_enter152_if_loop_30 (
    output wire [0:0] out_c0_exi7_0_tpl,
    output wire [0:0] out_c0_exi7_1_tpl,
    output wire [0:0] out_c0_exi7_2_tpl,
    output wire [63:0] out_c0_exi7_3_tpl,
    output wire [0:0] out_c0_exi7_4_tpl,
    output wire [63:0] out_c0_exi7_5_tpl,
    output wire [0:0] out_c0_exi7_6_tpl,
    output wire [0:0] out_c0_exi7_7_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_if_loop_31,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next_if_loop_328_sel_x_b;
    wire [31:0] bgTrunc_i_inc_if_loop_324_sel_x_b;
    wire [0:0] i_first_cleanup_if_loop_33_sel_x_b;
    wire [0:0] i_last_initeration_if_loop_310_sel_x_b;
    wire [63:0] i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b;
    wire [31:0] c_i32_059_q;
    wire [31:0] c_i32_160_q;
    wire [32:0] c_i33_162_q;
    wire [32:0] c_i33_undef58_q;
    wire [3:0] c_i4_755_q;
    wire [3:0] i_cleanups_shl_if_loop_35_vt_join_q;
    wire [2:0] i_cleanups_shl_if_loop_35_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_if_loop_34_q;
    wire [0:0] i_first_cleanup_xor_or_if_loop_321_q;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_328_a;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_328_b;
    logic [33:0] i_fpga_indvars_iv_next_if_loop_328_o;
    wire [33:0] i_fpga_indvars_iv_next_if_loop_328_q;
    wire [0:0] i_fpga_indvars_iv_replace_phi_if_loop_314_s;
    reg [32:0] i_fpga_indvars_iv_replace_phi_if_loop_314_q;
    wire [32:0] i_inc_if_loop_324_a;
    wire [32:0] i_inc_if_loop_324_b;
    logic [32:0] i_inc_if_loop_324_o;
    wire [32:0] i_inc_if_loop_324_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_330_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315_out_dest_data_out_0_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast24277_if_loop_322_out_dest_data_out_2_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_feedback_stall_out_8;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_333_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_if_loop_333_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_325_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_022_push8_if_loop_325_out_feedback_valid_out_8;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329_out_feedback_valid_out_6;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_336_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_if_loop_336_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_valid_out_9;
    wire [0:0] i_masked_if_loop_337_q;
    wire [0:0] i_next_cleanups_if_loop_335_s;
    reg [3:0] i_next_cleanups_if_loop_335_q;
    wire [3:0] i_next_initerations_if_loop_38_vt_join_q;
    wire [2:0] i_next_initerations_if_loop_38_vt_select_2_b;
    wire [0:0] i_notcmp_if_loop_332_q;
    wire [0:0] i_or_if_loop_334_q;
    wire [0:0] i_unnamed_if_loop_316_q;
    wire [0:0] i_unnamed_if_loop_331_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl_if_loop_30_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl_if_loop_30_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid125_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [0:0] leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_s;
    reg [3:0] leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid131_i_next_initerations_if_loop_30_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid133_i_next_initerations_if_loop_30_shift_x_q;
    wire [0:0] rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_s;
    reg [3:0] rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_q;
    wire [0:0] i_exitcond_if_loop_326_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [59:0] redist2_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q;
    reg [59:0] redist3_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q;
    reg [31:0] redist4_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q;
    reg [0:0] redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0;
    reg [0:0] redist6_sync_together80_aunroll_x_in_c0_eni1_1_tpl_7_q;
    reg [0:0] redist7_sync_together80_aunroll_x_in_c0_eni1_1_tpl_8_q;
    reg [0:0] redist8_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q;
    reg [0:0] redist9_sync_together80_aunroll_x_in_c0_eni1_1_tpl_10_q;
    reg [0:0] redist10_sync_together80_aunroll_x_in_i_valid_6_q;
    reg [0:0] redist11_sync_together80_aunroll_x_in_i_valid_7_q;
    reg [0:0] redist12_sync_together80_aunroll_x_in_i_valid_8_q;
    reg [0:0] redist13_sync_together80_aunroll_x_in_i_valid_9_q;
    reg [0:0] redist14_sync_together80_aunroll_x_in_i_valid_10_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist10_sync_together80_aunroll_x_in_i_valid_6(DELAY,192)
    dspba_delay_ver #( .width(1), .depth(6), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist10_sync_together80_aunroll_x_in_i_valid_6 ( .xin(in_i_valid), .xout(redist10_sync_together80_aunroll_x_in_i_valid_6_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist11_sync_together80_aunroll_x_in_i_valid_7(DELAY,193)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_sync_together80_aunroll_x_in_i_valid_7_q <= '0;
        end
        else
        begin
            redist11_sync_together80_aunroll_x_in_i_valid_7_q <= $unsigned(redist10_sync_together80_aunroll_x_in_i_valid_6_q);
        end
    end

    // redist12_sync_together80_aunroll_x_in_i_valid_8(DELAY,194)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_sync_together80_aunroll_x_in_i_valid_8_q <= '0;
        end
        else
        begin
            redist12_sync_together80_aunroll_x_in_i_valid_8_q <= $unsigned(redist11_sync_together80_aunroll_x_in_i_valid_7_q);
        end
    end

    // redist13_sync_together80_aunroll_x_in_i_valid_9(DELAY,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_sync_together80_aunroll_x_in_i_valid_9_q <= '0;
        end
        else
        begin
            redist13_sync_together80_aunroll_x_in_i_valid_9_q <= $unsigned(redist12_sync_together80_aunroll_x_in_i_valid_8_q);
        end
    end

    // valid_fanout_reg0(REG,104)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist13_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // redist6_sync_together80_aunroll_x_in_c0_eni1_1_tpl_7(DELAY,188)
    dspba_delay_ver #( .width(1), .depth(7), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    redist6_sync_together80_aunroll_x_in_c0_eni1_1_tpl_7 ( .xin(in_c0_eni1_1_tpl), .xout(redist6_sync_together80_aunroll_x_in_c0_eni1_1_tpl_7_q), .clk(clock), .aclr(resetn), .ena(1'b1) );

    // redist7_sync_together80_aunroll_x_in_c0_eni1_1_tpl_8(DELAY,189)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together80_aunroll_x_in_c0_eni1_1_tpl_8_q <= '0;
        end
        else
        begin
            redist7_sync_together80_aunroll_x_in_c0_eni1_1_tpl_8_q <= $unsigned(redist6_sync_together80_aunroll_x_in_c0_eni1_1_tpl_7_q);
        end
    end

    // redist8_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9(DELAY,190)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q <= '0;
        end
        else
        begin
            redist8_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q <= $unsigned(redist7_sync_together80_aunroll_x_in_c0_eni1_1_tpl_8_q);
        end
    end

    // redist9_sync_together80_aunroll_x_in_c0_eni1_1_tpl_10(DELAY,191)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_sync_together80_aunroll_x_in_c0_eni1_1_tpl_10_q <= '0;
        end
        else
        begin
            redist9_sync_together80_aunroll_x_in_c0_eni1_1_tpl_10_q <= $unsigned(redist8_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q);
        end
    end

    // redist14_sync_together80_aunroll_x_in_i_valid_10(DELAY,196)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_sync_together80_aunroll_x_in_i_valid_10_q <= '0;
        end
        else
        begin
            redist14_sync_together80_aunroll_x_in_i_valid_10_q <= $unsigned(redist13_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl_if_loop_30_shift_x(BITSELECT,123)@11
    assign leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl_if_loop_30_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl_if_loop_30_shift_x_b = leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl_if_loop_30_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid125_i_cleanups_shl_if_loop_30_shift_x(BITJOIN,124)@11
    assign leftShiftStage0Idx1_uid125_i_cleanups_shl_if_loop_30_shift_x_q = {leftShiftStage0Idx1Rng1_uid124_i_cleanups_shl_if_loop_30_shift_x_b, GND_q};

    // leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x(MUX,126)@11
    assign leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or leftShiftStage0Idx1_uid125_i_cleanups_shl_if_loop_30_shift_x_q)
    begin
        unique case (leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_s)
            1'b0 : leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_q = leftShiftStage0Idx1_uid125_i_cleanups_shl_if_loop_30_shift_x_q;
            default : leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_if_loop_35_vt_select_3(BITSELECT,58)@11
    assign i_cleanups_shl_if_loop_35_vt_select_3_b = leftShiftStage0_uid127_i_cleanups_shl_if_loop_30_shift_x_q[3:1];

    // i_cleanups_shl_if_loop_35_vt_join(BITJOIN,57)@11
    assign i_cleanups_shl_if_loop_35_vt_join_q = {i_cleanups_shl_if_loop_35_vt_select_3_b, GND_q};

    // i_or_if_loop_334(LOGICAL,89)@11
    assign i_or_if_loop_334_q = i_notcmp_if_loop_332_q | i_first_cleanup_xor_if_loop_34_q;

    // i_next_cleanups_if_loop_335(MUX,84)@11
    assign i_next_cleanups_if_loop_335_s = i_or_if_loop_334_q;
    always @(i_next_cleanups_if_loop_335_s or i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out or i_cleanups_shl_if_loop_35_vt_join_q)
    begin
        unique case (i_next_cleanups_if_loop_335_s)
            1'b0 : i_next_cleanups_if_loop_335_q = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out;
            1'b1 : i_next_cleanups_if_loop_335_q = i_cleanups_shl_if_loop_35_vt_join_q;
            default : i_next_cleanups_if_loop_335_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_if_loop_336(BLACKBOX,81)@11
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    if_loop_3_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_if_loop_336 (
        .in_data_in(i_next_cleanups_if_loop_335_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together80_aunroll_x_in_i_valid_10_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_336_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_336_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_755(CONSTANT,54)
    assign c_i4_755_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32(BLACKBOX,75)@11
    // out out_feedback_stall_out_10@20000000
    if_loop_3_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32 (
        .in_data_in(c_i4_755_q),
        .in_dir(redist9_sync_together80_aunroll_x_in_c0_eni1_1_tpl_10_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_336_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_if_loop_336_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together80_aunroll_x_in_i_valid_10_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_if_loop_33_sel_x(BITSELECT,9)@11
    assign i_first_cleanup_if_loop_33_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_if_loop_32_out_data_out[0:0];

    // i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312(BLACKBOX,69)@10
    if_loop_3_i_llvm_fpga_ffwd_dest_i33_unnamed_7_if_loop_30 thei_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312 (
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together80_aunroll_x_in_i_valid_9_q),
        .out_dest_data_out_3_0(i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_162(CONSTANT,51)
    assign c_i33_162_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next_if_loop_328(ADD,63)@11
    assign i_fpga_indvars_iv_next_if_loop_328_a = {1'b0, i_fpga_indvars_iv_replace_phi_if_loop_314_q};
    assign i_fpga_indvars_iv_next_if_loop_328_b = {1'b0, c_i33_162_q};
    assign i_fpga_indvars_iv_next_if_loop_328_o = $unsigned(i_fpga_indvars_iv_next_if_loop_328_a) + $unsigned(i_fpga_indvars_iv_next_if_loop_328_b);
    assign i_fpga_indvars_iv_next_if_loop_328_q = i_fpga_indvars_iv_next_if_loop_328_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next_if_loop_328_sel_x(BITSELECT,2)@11
    assign bgTrunc_i_fpga_indvars_iv_next_if_loop_328_sel_x_b = i_fpga_indvars_iv_next_if_loop_328_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329(BLACKBOX,80)@11
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    if_loop_3_i_llvm_fpga_push_i33_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_if_loop_328_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together80_aunroll_x_in_i_valid_10_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef58(CONSTANT,52)
    assign c_i33_undef58_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313(BLACKBOX,74)@10
    // out out_feedback_stall_out_6@20000000
    if_loop_3_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313 (
        .in_data_in(c_i33_undef58_q),
        .in_dir(redist8_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q),
        .in_feedback_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i33_fpga_indvars_iv_push6_if_loop_329_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(redist13_sync_together80_aunroll_x_in_i_valid_9_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv_replace_phi_if_loop_314(MUX,64)@10 + 1
    assign i_fpga_indvars_iv_replace_phi_if_loop_314_s = redist8_sync_together80_aunroll_x_in_c0_eni1_1_tpl_9_q;
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_fpga_indvars_iv_replace_phi_if_loop_314_q <= 33'b0;
        end
        else
        begin
            unique case (i_fpga_indvars_iv_replace_phi_if_loop_314_s)
                1'b0 : i_fpga_indvars_iv_replace_phi_if_loop_314_q <= i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_if_loop_313_out_data_out;
                1'b1 : i_fpga_indvars_iv_replace_phi_if_loop_314_q <= i_llvm_fpga_ffwd_dest_i33_unnamed_if_loop_37_if_loop_312_out_dest_data_out_3_0;
                default : i_fpga_indvars_iv_replace_phi_if_loop_314_q <= 33'b0;
            endcase
        end
    end

    // i_exitcond_if_loop_326_cmp_nsign(LOGICAL,137)@11
    assign i_exitcond_if_loop_326_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv_replace_phi_if_loop_314_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_330(BLACKBOX,67)@11
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp214_0 thei_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_330 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together80_aunroll_x_in_i_valid_10_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_330_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_331(LOGICAL,95)@11
    assign i_unnamed_if_loop_331_q = i_llvm_fpga_ffwd_dest_i1_cmp214_if_loop_330_out_dest_data_out_0_0 & i_exitcond_if_loop_326_cmp_nsign_q;

    // i_notcmp_if_loop_332(LOGICAL,88)@11
    assign i_notcmp_if_loop_332_q = i_unnamed_if_loop_331_q ^ VCC_q;

    // i_masked_if_loop_337(LOGICAL,83)@11
    assign i_masked_if_loop_337_q = i_notcmp_if_loop_332_q & i_first_cleanup_if_loop_33_sel_x_b;

    // c_i32_059(CONSTANT,49)
    assign c_i32_059_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2(BITSELECT,163)
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2_b = c_i32_059_q[25:0];

    // valid_fanout_reg5(REG,109)@7 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist10_sync_together80_aunroll_x_in_i_valid_6_q);
        end
    end

    // valid_fanout_reg8(REG,112)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(redist11_sync_together80_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_push_i1_notexitcond_if_loop_333(BLACKBOX,78)@11
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    if_loop_3_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_if_loop_333 (
        .in_data_in(i_unnamed_if_loop_331_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_if_loop_33_sel_x_b),
        .in_stall_in(GND_q),
        .in_valid_in(redist14_sync_together80_aunroll_x_in_i_valid_10_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_333_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_if_loop_333_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,107)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist13_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid131_i_next_initerations_if_loop_30_shift_x(BITSELECT,130)@11
    assign rightShiftStage0Idx1Rng1_uid131_i_next_initerations_if_loop_30_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out[3:1];

    // rightShiftStage0Idx1_uid133_i_next_initerations_if_loop_30_shift_x(BITJOIN,132)@11
    assign rightShiftStage0Idx1_uid133_i_next_initerations_if_loop_30_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid131_i_next_initerations_if_loop_30_shift_x_b};

    // valid_fanout_reg1(REG,105)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist13_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // valid_fanout_reg2(REG,106)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg2_q <= $unsigned(redist13_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push9_if_loop_39(BLACKBOX,82)@11
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    if_loop_3_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_if_loop_39 (
        .in_data_in(i_next_initerations_if_loop_38_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37(BLACKBOX,76)@11
    // out out_feedback_stall_out_9@20000000
    if_loop_3_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_if_loop_37 (
        .in_data_in(c_i4_755_q),
        .in_dir(redist9_sync_together80_aunroll_x_in_c0_eni1_1_tpl_10_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_if_loop_39_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x(MUX,134)@11
    assign rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out or rightShiftStage0Idx1_uid133_i_next_initerations_if_loop_30_shift_x_q)
    begin
        unique case (rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_s)
            1'b0 : rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_if_loop_37_out_data_out;
            1'b1 : rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_q = rightShiftStage0Idx1_uid133_i_next_initerations_if_loop_30_shift_x_q;
            default : rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_if_loop_38_vt_select_2(BITSELECT,87)@11
    assign i_next_initerations_if_loop_38_vt_select_2_b = rightShiftStage0_uid135_i_next_initerations_if_loop_30_shift_x_q[2:0];

    // i_next_initerations_if_loop_38_vt_join(BITJOIN,86)@11
    assign i_next_initerations_if_loop_38_vt_join_q = {GND_q, i_next_initerations_if_loop_38_vt_select_2_b};

    // i_last_initeration_if_loop_310_sel_x(BITSELECT,10)@11
    assign i_last_initeration_if_loop_310_sel_x_b = i_next_initerations_if_loop_38_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_if_loop_311(BLACKBOX,77)@11
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    if_loop_3_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_if_loop_311 (
        .in_data_in(i_last_initeration_if_loop_310_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out),
        .in_keep_going(redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_if_loop_36(BLACKBOX,72)@9
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_if_loop_36 (
        .in_data_in(redist7_sync_together80_aunroll_x_in_c0_eni1_1_tpl_8_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_if_loop_311_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_if_loop_333_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_if_loop_333_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(redist12_sync_together80_aunroll_x_in_i_valid_8_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_160(CONSTANT,50)
    assign c_i32_160_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_if_loop_324(ADD,65)@9
    assign i_inc_if_loop_324_a = {1'b0, redist4_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q};
    assign i_inc_if_loop_324_b = {1'b0, c_i32_160_q};
    assign i_inc_if_loop_324_o = $unsigned(i_inc_if_loop_324_a) + $unsigned(i_inc_if_loop_324_b);
    assign i_inc_if_loop_324_q = i_inc_if_loop_324_o[32:0];

    // bgTrunc_i_inc_if_loop_324_sel_x(BITSELECT,3)@9
    assign bgTrunc_i_inc_if_loop_324_sel_x_b = i_inc_if_loop_324_q[31:0];

    // i_llvm_fpga_push_i32_i_022_push8_if_loop_325(BLACKBOX,79)@9
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    if_loop_3_i_llvm_fpga_push_i32_i_022_push8_0 thei_llvm_fpga_push_i32_i_022_push8_if_loop_325 (
        .in_data_in(bgTrunc_i_inc_if_loop_324_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_feedback_stall_out_8),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_325_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_325_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317(BLACKBOX,73)@8
    // out out_feedback_stall_out_8@20000000
    if_loop_3_i_llvm_fpga_pop_i32_i_022_pop8_0 thei_llvm_fpga_pop_i32_i_022_pop8_if_loop_317 (
        .in_data_in(c_i32_059_q),
        .in_dir(redist6_sync_together80_aunroll_x_in_c0_eni1_1_tpl_7_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_325_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_022_push8_if_loop_325_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist4_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1(DELAY,186)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q <= '0;
        end
        else
        begin
            redist4_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out);
        end
    end

    // i_mptr_bitcast_index25_if_loop_30_c_i2_01_x(CONSTANT,14)
    assign i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,164)@9
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel0_2_b, redist4_i_llvm_fpga_pop_i32_i_022_pop8_if_loop_317_out_data_out_1_q, i_mptr_bitcast_index25_if_loop_30_c_i2_01_x_q};

    // valid_fanout_reg7(REG,111)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(redist11_sync_together80_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast24277_if_loop_322(BLACKBOX,70)@9
    if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast24277_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast24277_if_loop_322 (
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_dest_data_out_2_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast24277_if_loop_322_out_dest_data_out_2_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,180)@9
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast24277_if_loop_322_out_dest_data_out_2_0[59:0]);
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast24277_if_loop_322_out_dest_data_out_2_0[63:60]);

    // i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2(ADD,144)@9 + 1
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_c[0] = i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q = i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0(BITSELECT,165)
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0_b = c_i32_059_q[29:26];

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,167)@10
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_tessel1_0_b};

    // redist1_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist1_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,160)@10
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2(ADD,145)@10 + 1
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_cin = i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_q = i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_o[5:1];

    // redist3_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1(DELAY,185)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist3_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q(BITJOIN,146)@11
    assign i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index25_if_loop_30_add_x_p2_of_2_q, redist3_i_mptr_bitcast_index25_if_loop_30_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,11)@11
    assign i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index25_if_loop_30_add_x_BitJoin_for_q_q[63:0];

    // valid_fanout_reg4(REG,108)@10 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist13_sync_together80_aunroll_x_in_i_valid_9_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315(BLACKBOX,68)@11
    if_loop_3_i_llvm_fpga_ffwd_dest_i1_cmp215_0 thei_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_if_loop_316(LOGICAL,90)@11
    assign i_unnamed_if_loop_316_q = i_llvm_fpga_ffwd_dest_i1_cmp215_if_loop_315_out_dest_data_out_0_0 ^ VCC_q;

    // i_first_cleanup_xor_or_if_loop_321(LOGICAL,62)@11
    assign i_first_cleanup_xor_or_if_loop_321_q = i_unnamed_if_loop_316_q | i_first_cleanup_xor_if_loop_34_q;

    // valid_fanout_reg6(REG,110)@8 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg6_q <= $unsigned(redist11_sync_together80_aunroll_x_in_i_valid_7_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319(BLACKBOX,71)@9
    if_loop_3_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,181)@9
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0[59:0]);
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast266_if_loop_319_out_dest_data_out_1_0[63:60]);

    // i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2(ADD,153)@9 + 1
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o <= 61'b0;
        end
        else
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q = i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_o[59:0];

    // redist0_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,182)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else
        begin
            redist0_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,172)@10
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2(ADD,154)@10 + 1
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_cin = i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_if_loop_30_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index25_if_loop_30_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o <= 7'b0;
        end
        else
        begin
            i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_q = i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_o[5:1];

    // redist2_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1(DELAY,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q <= '0;
        end
        else
        begin
            redist2_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q(BITJOIN,155)@11
    assign i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_if_loop_30_add_x_p2_of_2_q, redist2_i_mptr_bitcast_index_if_loop_30_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x(BITSELECT,17)@11
    assign i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_if_loop_30_add_x_BitJoin_for_q_q[63:0];

    // redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2(DELAY,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0 <= '0;
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q <= '0;
        end
        else
        begin
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0 <= $unsigned(i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out);
            redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q <= redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_delay_0;
        end
    end

    // i_first_cleanup_xor_if_loop_34(LOGICAL,61)@11
    assign i_first_cleanup_xor_if_loop_34_q = i_first_cleanup_if_loop_33_sel_x_b ^ VCC_q;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,28)@11
    assign out_c0_exi7_0_tpl = GND_q;
    assign out_c0_exi7_1_tpl = i_first_cleanup_xor_if_loop_34_q;
    assign out_c0_exi7_2_tpl = redist5_i_llvm_fpga_pipeline_keep_going_if_loop_36_out_data_out_2_q;
    assign out_c0_exi7_3_tpl = i_mptr_bitcast_index_if_loop_30_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_4_tpl = i_first_cleanup_xor_or_if_loop_321_q;
    assign out_c0_exi7_5_tpl = i_mptr_bitcast_index25_if_loop_30_dupName_0_trunc_sel_x_b;
    assign out_c0_exi7_6_tpl = i_masked_if_loop_337_q;
    assign out_c0_exi7_7_tpl = redist9_sync_together80_aunroll_x_in_c0_eni1_1_tpl_10_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_if_loop_31 = GND_q;

    // ext_sig_sync_out(GPOUT,55)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,98)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_if_loop_36_out_pipeline_valid_out;

endmodule
