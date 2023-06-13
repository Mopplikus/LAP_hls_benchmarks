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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_firs_c0_enter92_fir0
// Created for function/kernel fir
// SystemVerilog created on Tue Jun 13 02:11:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_sfc_logic_s_c0_in_for_body_s_c0_enter92_fir0 (
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [0:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [63:0] out_c0_exi6_3_tpl,
    output wire [63:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_fir1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_fir30_sel_x_b;
    wire [31:0] bgTrunc_i_inc_fir20_sel_x_b;
    wire [0:0] i_first_cleanup_fir3_sel_x_b;
    wire [0:0] i_last_initeration_fir10_sel_x_b;
    wire [63:0] i_mptr_bitcast_index22_fir0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index22_fir0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index_fir0_dupName_0_trunc_sel_x_b;
    wire [10:0] c_i11_144_q;
    wire [10:0] c_i11_99842_q;
    wire [31:0] c_i32_039_q;
    wire [31:0] c_i32_141_q;
    wire [31:0] c_i32_99940_q;
    wire [3:0] c_i4_736_q;
    wire [3:0] i_cleanups_shl_fir5_vt_join_q;
    wire [2:0] i_cleanups_shl_fir5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_fir4_q;
    wire [11:0] i_fpga_indvars_iv_next_fir30_a;
    wire [11:0] i_fpga_indvars_iv_next_fir30_b;
    logic [11:0] i_fpga_indvars_iv_next_fir30_o;
    wire [11:0] i_fpga_indvars_iv_next_fir30_q;
    wire [32:0] i_inc_fir20_a;
    wire [32:0] i_inc_fir20_b;
    logic [32:0] i_inc_fir20_o;
    wire [32:0] i_inc_fir20_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast21241_fir14_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast232_fir18_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22_out_feedback_stall_out_6;
    wire [31:0] i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_feedback_stall_out_8;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_feedback_stall_out_9;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31_out_feedback_valid_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir26_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_fir26_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_019_push8_fir21_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i32_i_019_push8_fir21_out_feedback_valid_out_8;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_fir29_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_fir29_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_fir9_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_fir9_out_feedback_valid_out_9;
    wire [0:0] i_masked_fir32_qi;
    reg [0:0] i_masked_fir32_q;
    wire [0:0] i_next_cleanups_fir28_s;
    reg [3:0] i_next_cleanups_fir28_q;
    wire [3:0] i_next_initerations_fir8_vt_join_q;
    wire [2:0] i_next_initerations_fir8_vt_select_2_b;
    wire [0:0] i_notcmp_fir25_q;
    wire [0:0] i_or_fir27_q;
    wire [32:0] i_sub_fir16_a;
    wire [32:0] i_sub_fir16_b;
    logic [32:0] i_sub_fir16_o;
    wire [32:0] i_sub_fir16_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid123_i_cleanups_shl_fir0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid123_i_cleanups_shl_fir0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid124_i_cleanups_shl_fir0_shift_x_q;
    wire [0:0] leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_s;
    reg [3:0] leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid130_i_next_initerations_fir0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid132_i_next_initerations_fir0_shift_x_q;
    wire [0:0] rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_s;
    reg [3:0] rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_q;
    wire [0:0] i_exitcond_fir23_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index22_fir0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index22_fir0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index22_fir0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index22_fir0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index22_fir0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index22_fir0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index22_fir0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index22_fir0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index22_fir0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index22_fir0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_fir0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_fir0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_fir0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_fir0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_fir0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_fir0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_fir0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_fir0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_fir0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_fir0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_fir0_add_x_BitJoin_for_q_q;
    wire [4:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [0:0] i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [29:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in;
    wire [25:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [59:0] i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    reg [3:0] redist0_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [3:0] redist1_i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q;
    reg [0:0] redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1_q;
    reg [59:0] redist6_i_mptr_bitcast_index_fir0_add_x_p1_of_2_q_1_q;
    reg [59:0] redist7_i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q_1_q;
    reg [0:0] redist8_valid_fanout_reg0_q_1_q;
    reg [0:0] redist9_i_masked_fir32_q_2_q;
    reg [31:0] redist10_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_1_q;
    reg [31:0] redist11_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_2_q;
    reg [0:0] redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q;
    reg [0:0] redist13_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q;
    reg [0:0] redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_3_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_q;
    reg [0:0] redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_delay_0;
    reg [0:0] redist16_i_first_cleanup_xor_fir4_q_2_q;
    reg [0:0] redist16_i_first_cleanup_xor_fir4_q_2_delay_0;
    reg [0:0] redist17_sync_together60_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_q;
    reg [0:0] redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
    reg [0:0] redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_q;
    reg [0:0] redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
    reg [0:0] redist20_sync_together60_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist21_sync_together60_aunroll_x_in_i_valid_2_q;
    reg [0:0] redist22_sync_together60_aunroll_x_in_i_valid_3_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // redist20_sync_together60_aunroll_x_in_i_valid_1(DELAY,230)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_sync_together60_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist20_sync_together60_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist21_sync_together60_aunroll_x_in_i_valid_2(DELAY,231)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist21_sync_together60_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist21_sync_together60_aunroll_x_in_i_valid_2_q <= $unsigned(redist20_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist22_sync_together60_aunroll_x_in_i_valid_3(DELAY,232)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_sync_together60_aunroll_x_in_i_valid_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist22_sync_together60_aunroll_x_in_i_valid_3_q <= $unsigned(redist21_sync_together60_aunroll_x_in_i_valid_2_q);
        end
    end

    // valid_fanout_reg0(REG,102)@4 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist22_sync_together60_aunroll_x_in_i_valid_3_q);
        end
    end

    // redist8_valid_fanout_reg0_q_1(DELAY,218)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_valid_fanout_reg0_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist8_valid_fanout_reg0_q_1_q <= $unsigned(valid_fanout_reg0_q);
        end
    end

    // redist17_sync_together60_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,227)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist17_sync_together60_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist17_sync_together60_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3(DELAY,228)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= '0;
            redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_delay_0 <= $unsigned(redist17_sync_together60_aunroll_x_in_c0_eni1_1_tpl_1_q);
            redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_q <= redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_delay_0;
        end
    end

    // redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5(DELAY,229)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= '0;
            redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_delay_0 <= $unsigned(redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_q);
            redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_q <= redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_delay_0;
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,233)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // c_i11_144(CONSTANT,47)
    assign c_i11_144_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_fir30(ADD,65)@4
    assign i_fpga_indvars_iv_next_fir30_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22_out_data_out};
    assign i_fpga_indvars_iv_next_fir30_b = {1'b0, c_i11_144_q};
    assign i_fpga_indvars_iv_next_fir30_o = $unsigned(i_fpga_indvars_iv_next_fir30_a) + $unsigned(i_fpga_indvars_iv_next_fir30_b);
    assign i_fpga_indvars_iv_next_fir30_q = i_fpga_indvars_iv_next_fir30_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_fir30_sel_x(BITSELECT,2)@4
    assign bgTrunc_i_fpga_indvars_iv_next_fir30_sel_x_b = i_fpga_indvars_iv_next_fir30_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31(BLACKBOX,75)@4
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    fir_i_llvm_fpga_push_i11_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_fir30_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22_out_feedback_stall_out_6),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_3_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist22_sync_together60_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_99842(CONSTANT,48)
    assign c_i11_99842_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22(BLACKBOX,71)@4
    // out out_feedback_stall_out_6@20000000
    fir_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22 (
        .in_data_in(c_i11_99842_q),
        .in_dir(redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i11_fpga_indvars_iv_push6_fir31_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist22_sync_together60_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_fir23_cmp_nsign(LOGICAL,136)@4
    assign i_exitcond_fir23_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop6_fir22_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond_fir26(BLACKBOX,77)@4
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    fir_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_fir26 (
        .in_data_in(i_exitcond_fir23_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_fir3_sel_x_b),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist22_sync_together60_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_fir26_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_fir26_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,105)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid130_i_next_initerations_fir0_shift_x(BITSELECT,129)@2
    assign rightShiftStage0Idx1Rng1_uid130_i_next_initerations_fir0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid132_i_next_initerations_fir0_shift_x(BITJOIN,131)@2
    assign rightShiftStage0Idx1_uid132_i_next_initerations_fir0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid130_i_next_initerations_fir0_shift_x_b};

    // valid_fanout_reg1(REG,103)@1 + 1
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

    // valid_fanout_reg2(REG,104)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations_push9_fir9(BLACKBOX,80)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    fir_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_fir9 (
        .in_data_in(i_next_initerations_fir8_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_feedback_stall_out_9),
        .in_keep_going(redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_fir9_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_fir9_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_fir7(BLACKBOX,74)@2
    // out out_feedback_stall_out_9@20000000
    fir_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_fir7 (
        .in_data_in(c_i4_736_q),
        .in_dir(redist17_sync_together60_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_fir9_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_fir9_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid134_i_next_initerations_fir0_shift_x(MUX,133)@2
    assign rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_data_out or rightShiftStage0Idx1_uid132_i_next_initerations_fir0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_s)
            1'b0 : rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_fir7_out_data_out;
            1'b1 : rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_q = rightShiftStage0Idx1_uid132_i_next_initerations_fir0_shift_x_q;
            default : rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_fir8_vt_select_2(BITSELECT,85)@2
    assign i_next_initerations_fir8_vt_select_2_b = rightShiftStage0_uid134_i_next_initerations_fir0_shift_x_q[2:0];

    // i_next_initerations_fir8_vt_join(BITJOIN,84)@2
    assign i_next_initerations_fir8_vt_join_q = {GND_q, i_next_initerations_fir8_vt_select_2_b};

    // i_last_initeration_fir10_sel_x(BITSELECT,23)@2
    assign i_last_initeration_fir10_sel_x_b = i_next_initerations_fir8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_fir11(BLACKBOX,76)@2
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    fir_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_fir11 (
        .in_data_in(i_last_initeration_fir10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out),
        .in_keep_going(redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_fir6(BLACKBOX,70)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    fir_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_fir6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_fir11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_fir26_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_fir26_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_fir6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_fir6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1(DELAY,222)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going_fir6_out_data_out);
        end
    end

    // redist13_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2(DELAY,223)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist13_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q <= $unsigned(redist12_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_1_q);
        end
    end

    // redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_3(DELAY,224)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_3_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_3_q <= $unsigned(redist13_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q);
        end
    end

    // leftShiftStage0Idx1Rng1_uid123_i_cleanups_shl_fir0_shift_x(BITSELECT,122)@4
    assign leftShiftStage0Idx1Rng1_uid123_i_cleanups_shl_fir0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid123_i_cleanups_shl_fir0_shift_x_b = leftShiftStage0Idx1Rng1_uid123_i_cleanups_shl_fir0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid124_i_cleanups_shl_fir0_shift_x(BITJOIN,123)@4
    assign leftShiftStage0Idx1_uid124_i_cleanups_shl_fir0_shift_x_q = {leftShiftStage0Idx1Rng1_uid123_i_cleanups_shl_fir0_shift_x_b, GND_q};

    // leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x(MUX,125)@4
    assign leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out or leftShiftStage0Idx1_uid124_i_cleanups_shl_fir0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_s)
            1'b0 : leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out;
            1'b1 : leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_q = leftShiftStage0Idx1_uid124_i_cleanups_shl_fir0_shift_x_q;
            default : leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_fir5_vt_select_3(BITSELECT,61)@4
    assign i_cleanups_shl_fir5_vt_select_3_b = leftShiftStage0_uid126_i_cleanups_shl_fir0_shift_x_q[3:1];

    // i_cleanups_shl_fir5_vt_join(BITJOIN,60)@4
    assign i_cleanups_shl_fir5_vt_join_q = {i_cleanups_shl_fir5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_fir4(LOGICAL,64)@4
    assign i_first_cleanup_xor_fir4_q = i_first_cleanup_fir3_sel_x_b ^ VCC_q;

    // i_or_fir27(LOGICAL,87)@4
    assign i_or_fir27_q = i_notcmp_fir25_q | i_first_cleanup_xor_fir4_q;

    // i_next_cleanups_fir28(MUX,82)@4
    assign i_next_cleanups_fir28_s = i_or_fir27_q;
    always @(i_next_cleanups_fir28_s or i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out or i_cleanups_shl_fir5_vt_join_q)
    begin
        unique case (i_next_cleanups_fir28_s)
            1'b0 : i_next_cleanups_fir28_q = i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out;
            1'b1 : i_next_cleanups_fir28_q = i_cleanups_shl_fir5_vt_join_q;
            default : i_next_cleanups_fir28_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_fir29(BLACKBOX,79)@4
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    fir_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_fir29 (
        .in_data_in(i_next_cleanups_fir28_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_feedback_stall_out_10),
        .in_keep_going(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_3_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist22_sync_together60_aunroll_x_in_i_valid_3_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_fir29_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_fir29_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_736(CONSTANT,55)
    assign c_i4_736_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_fir2(BLACKBOX,73)@4
    // out out_feedback_stall_out_10@20000000
    fir_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_fir2 (
        .in_data_in(c_i4_736_q),
        .in_dir(redist18_sync_together60_aunroll_x_in_c0_eni1_1_tpl_3_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_fir29_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_fir29_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(redist22_sync_together60_aunroll_x_in_i_valid_3_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_fir3_sel_x(BITSELECT,22)@4
    assign i_first_cleanup_fir3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_fir2_out_data_out[0:0];

    // i_notcmp_fir25(LOGICAL,86)@4
    assign i_notcmp_fir25_q = i_exitcond_fir23_cmp_nsign_q ^ VCC_q;

    // i_masked_fir32(LOGICAL,81)@4 + 1
    assign i_masked_fir32_qi = i_notcmp_fir25_q & i_first_cleanup_fir3_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked_fir32_delay ( .xin(i_masked_fir32_qi), .xout(i_masked_fir32_q), .ena(in_enable[0]), .clk(clock), .aclr(resetn) );

    // redist9_i_masked_fir32_q_2(DELAY,219)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_masked_fir32_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist9_i_masked_fir32_q_2_q <= $unsigned(i_masked_fir32_q);
        end
    end

    // valid_fanout_reg4(REG,106)@1 + 1
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

    // valid_fanout_reg7(REG,109)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist20_sync_together60_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_141(CONSTANT,52)
    assign c_i32_141_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_fir20(ADD,66)@3
    assign i_inc_fir20_a = {1'b0, redist10_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_1_q};
    assign i_inc_fir20_b = {1'b0, c_i32_141_q};
    assign i_inc_fir20_o = $unsigned(i_inc_fir20_a) + $unsigned(i_inc_fir20_b);
    assign i_inc_fir20_q = i_inc_fir20_o[32:0];

    // bgTrunc_i_inc_fir20_sel_x(BITSELECT,3)@3
    assign bgTrunc_i_inc_fir20_sel_x_b = i_inc_fir20_q[31:0];

    // i_llvm_fpga_push_i32_i_019_push8_fir21(BLACKBOX,78)@3
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    fir_i_llvm_fpga_push_i32_i_019_push8_0 thei_llvm_fpga_push_i32_i_019_push8_fir21 (
        .in_data_in(bgTrunc_i_inc_fir20_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_feedback_stall_out_8),
        .in_keep_going(redist13_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_2_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i32_i_019_push8_fir21_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i32_i_019_push8_fir21_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_039(CONSTANT,51)
    assign c_i32_039_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_019_pop8_fir12(BLACKBOX,72)@2
    // out out_feedback_stall_out_8@20000000
    fir_i_llvm_fpga_pop_i32_i_019_pop8_0 thei_llvm_fpga_pop_i32_i_019_pop8_fir12 (
        .in_data_in(c_i32_039_q),
        .in_dir(redist17_sync_together60_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i32_i_019_push8_fir21_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i32_i_019_push8_fir21_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist10_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_1(DELAY,220)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist10_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out);
        end
    end

    // c_i32_99940(CONSTANT,53)
    assign c_i32_99940_q = $unsigned(32'b00000000000000000000001111100111);

    // i_sub_fir16(SUB,88)@3 + 1
    assign i_sub_fir16_a = {1'b0, c_i32_99940_q};
    assign i_sub_fir16_b = {1'b0, redist10_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_1_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_sub_fir16_o <= 33'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_sub_fir16_o <= $unsigned(i_sub_fir16_a) - $unsigned(i_sub_fir16_b);
        end
    end
    assign i_sub_fir16_q = i_sub_fir16_o[32:0];

    // i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,174)@4
    assign i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(i_sub_fir16_q[31:31]);

    // i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,173)@4
    assign i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_sub_fir16_q[31:0]);

    // i_mptr_bitcast_index22_fir0_c_i2_01_x(CONSTANT,27)
    assign i_mptr_bitcast_index22_fir0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,200)@4
    assign i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_1_b, i_mptr_bitcast_index22_fir0_c_i2_01_x_q};

    // valid_fanout_reg6(REG,108)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist21_sync_together60_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast232_fir18(BLACKBOX,69)@4
    fir_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast232_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast232_fir18 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast232_fir18_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,209)@4
    assign i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast232_fir18_out_dest_data_out_1_0[59:0]);
    assign i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast232_fir18_out_dest_data_out_1_0[63:60]);

    // i_mptr_bitcast_index_fir0_add_x_p1_of_2(ADD,152)@4 + 1
    assign i_mptr_bitcast_index_fir0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index_fir0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_fir0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index_fir0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_fir0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_fir0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_fir0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_fir0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_fir0_add_x_p1_of_2_q = i_mptr_bitcast_index_fir0_add_x_p1_of_2_o[59:0];

    // redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1(DELAY,212)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1_q <= $unsigned(i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel0_2_b);
        end
    end

    // i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,206)@5
    assign i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1_q, redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1_q, redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1_q, redist2_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_tessel1_3_b_1_q};

    // redist0_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,210)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,171)@5
    assign i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index_fir0_add_x_p2_of_2(ADD,153)@5 + 1
    assign i_mptr_bitcast_index_fir0_add_x_p2_of_2_cin = i_mptr_bitcast_index_fir0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index_fir0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index_fir0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index_fir0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index_fir0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_fir0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index_fir0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_fir0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_fir0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_fir0_add_x_p2_of_2_q = i_mptr_bitcast_index_fir0_add_x_p2_of_2_o[5:1];

    // redist6_i_mptr_bitcast_index_fir0_add_x_p1_of_2_q_1(DELAY,216)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_mptr_bitcast_index_fir0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist6_i_mptr_bitcast_index_fir0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index_fir0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index_fir0_add_x_BitJoin_for_q(BITJOIN,154)@6
    assign i_mptr_bitcast_index_fir0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_fir0_add_x_p2_of_2_q, redist6_i_mptr_bitcast_index_fir0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index_fir0_dupName_0_trunc_sel_x(BITSELECT,30)@6
    assign i_mptr_bitcast_index_fir0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_fir0_add_x_BitJoin_for_q_q[63:0];

    // i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select(BITSELECT,207)
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in = c_i32_039_q[29:0];
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b = i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[25:0];
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c = i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_in[29:26];

    // redist11_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_2(DELAY,221)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist11_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_2_q <= $unsigned(redist10_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_1_q);
        end
    end

    // i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,163)@4
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_b, redist11_i_llvm_fpga_pop_i32_i_019_pop8_fir12_out_data_out_2_q, i_mptr_bitcast_index22_fir0_c_i2_01_x_q};

    // valid_fanout_reg5(REG,107)@3 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist21_sync_together60_aunroll_x_in_i_valid_2_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast21241_fir14(BLACKBOX,68)@4
    fir_i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast21241_0 thei_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast21241_fir14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast21241_fir14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,208)@4
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast21241_fir14_out_dest_data_out_0_0[59:0]);
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(i_llvm_fpga_ffwd_dest_p1025i32_mptr_bitcast21241_fir14_out_dest_data_out_0_0[63:60]);

    // i_mptr_bitcast_index22_fir0_add_x_p1_of_2(ADD,143)@4 + 1
    assign i_mptr_bitcast_index22_fir0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index22_fir0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index22_fir0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index22_fir0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index22_fir0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index22_fir0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index22_fir0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index22_fir0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q = i_mptr_bitcast_index22_fir0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,166)@5
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_tessel0_2_merged_bit_select_c};

    // redist1_i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1(DELAY,211)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q <= $unsigned(i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,159)@5
    assign i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_q};

    // i_mptr_bitcast_index22_fir0_add_x_p2_of_2(ADD,144)@5 + 1
    assign i_mptr_bitcast_index22_fir0_add_x_p2_of_2_cin = i_mptr_bitcast_index22_fir0_add_x_p1_of_2_c;
    assign i_mptr_bitcast_index22_fir0_add_x_p2_of_2_a = { {1'b0, i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_a_BitJoin_for_c_q}, 1'b1 };
    assign i_mptr_bitcast_index22_fir0_add_x_p2_of_2_b = { {1'b0, i_mptr_bitcast_index22_fir0_add_x_BitSelect_for_b_BitJoin_for_c_q}, i_mptr_bitcast_index22_fir0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index22_fir0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (in_enable == 1'b1)
        begin
            i_mptr_bitcast_index22_fir0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index22_fir0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index22_fir0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index22_fir0_add_x_p2_of_2_q = i_mptr_bitcast_index22_fir0_add_x_p2_of_2_o[5:1];

    // redist7_i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q_1(DELAY,217)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist7_i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q_1_q <= $unsigned(i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q);
        end
    end

    // i_mptr_bitcast_index22_fir0_add_x_BitJoin_for_q(BITJOIN,145)@6
    assign i_mptr_bitcast_index22_fir0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index22_fir0_add_x_p2_of_2_q, redist7_i_mptr_bitcast_index22_fir0_add_x_p1_of_2_q_1_q};

    // i_mptr_bitcast_index22_fir0_dupName_0_trunc_sel_x(BITSELECT,24)@6
    assign i_mptr_bitcast_index22_fir0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index22_fir0_add_x_BitJoin_for_q_q[63:0];

    // redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5(DELAY,225)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_delay_0 <= '0;
            redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_delay_0 <= $unsigned(redist14_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_3_q);
            redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_q <= redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_delay_0;
        end
    end

    // redist16_i_first_cleanup_xor_fir4_q_2(DELAY,226)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist16_i_first_cleanup_xor_fir4_q_2_delay_0 <= '0;
            redist16_i_first_cleanup_xor_fir4_q_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist16_i_first_cleanup_xor_fir4_q_2_delay_0 <= $unsigned(i_first_cleanup_xor_fir4_q);
            redist16_i_first_cleanup_xor_fir4_q_2_q <= redist16_i_first_cleanup_xor_fir4_q_2_delay_0;
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,42)@6
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = redist16_i_first_cleanup_xor_fir4_q_2_q;
    assign out_c0_exi6_2_tpl = redist15_i_llvm_fpga_pipeline_keep_going_fir6_out_data_out_5_q;
    assign out_c0_exi6_3_tpl = i_mptr_bitcast_index22_fir0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_4_tpl = i_mptr_bitcast_index_fir0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_5_tpl = redist9_i_masked_fir32_q_2_q;
    assign out_c0_exi6_6_tpl = redist19_sync_together60_aunroll_x_in_c0_eni1_1_tpl_5_q;
    assign out_o_valid = redist8_valid_fanout_reg0_q_1_q;
    assign out_unnamed_fir1 = GND_q;

    // ext_sig_sync_out(GPOUT,58)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_fir6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_fir6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,98)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_fir6_out_pipeline_valid_out;

endmodule
