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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_examples_c0_enter82_example0
// Created for function/kernel example
// SystemVerilog created on Tue Mar 14 13:54:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module example_i_sfc_logic_s_c0_in_for_body_s_c0_enter82_example0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [0:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [63:0] out_c0_exi6_3_tpl,
    output wire [63:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_example1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_037_q;
    wire [31:0] c_i32_138_q;
    wire [3:0] c_i4_734_q;
    wire [7:0] c_i8_141_q;
    wire [7:0] c_i8_9839_q;
    wire [3:0] i_cleanups_shl_example5_vt_join_q;
    wire [2:0] i_cleanups_shl_example5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor_example4_q;
    wire [8:0] i_fpga_indvars_iv_next_example28_a;
    wire [8:0] i_fpga_indvars_iv_next_example28_b;
    logic [8:0] i_fpga_indvars_iv_next_example28_o;
    wire [8:0] i_fpga_indvars_iv_next_example28_q;
    wire [63:0] i_idxprom_example13_vt_join_q;
    wire [31:0] i_idxprom_example13_vt_select_31_b;
    wire [32:0] i_inc_example18_a;
    wire [32:0] i_inc_example18_b;
    logic [32:0] i_inc_example18_o;
    wire [32:0] i_inc_example18_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_a121_example14_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024f32_b132_example16_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_011_pop7_example12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_011_pop7_example12_out_feedback_stall_out_7;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20_out_feedback_stall_out_6;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_example24_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_example24_out_feedback_valid_out_3;
    wire [31:0] i_llvm_fpga_push_i32_i_011_push7_example19_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i32_i_011_push7_example19_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i4_cleanups_push10_example27_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_cleanups_push10_example27_out_feedback_valid_out_10;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29_out_feedback_out_6;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29_out_feedback_valid_out_6;
    wire [0:0] i_masked_example30_q;
    wire [0:0] i_next_cleanups_example26_s;
    reg [3:0] i_next_cleanups_example26_q;
    wire [3:0] i_next_initerations_example8_vt_join_q;
    wire [2:0] i_next_initerations_example8_vt_select_2_b;
    wire [0:0] i_notcmp_example23_q;
    wire [0:0] i_or_example25_q;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_example28_sel_x_b;
    wire [31:0] bgTrunc_i_inc_example18_sel_x_b;
    wire [64:0] i_arrayidx2_example0_add_x_a;
    wire [64:0] i_arrayidx2_example0_add_x_b;
    logic [64:0] i_arrayidx2_example0_add_x_o;
    wire [64:0] i_arrayidx2_example0_add_x_q;
    wire [1:0] i_arrayidx2_example0_c_i2_01_x_q;
    wire [61:0] i_arrayidx2_example0_narrow_x_b;
    wire [63:0] i_arrayidx2_example0_shift_join_x_q;
    wire [63:0] i_arrayidx2_example0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_example0_add_x_a;
    wire [64:0] i_arrayidx_example0_add_x_b;
    logic [64:0] i_arrayidx_example0_add_x_o;
    wire [64:0] i_arrayidx_example0_add_x_q;
    wire [63:0] i_arrayidx_example0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup_example3_sel_x_b;
    wire [63:0] i_idxprom_example13_sel_x_b;
    wire [0:0] i_last_initeration_example10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond_example21_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_example0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_example0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid116_i_cleanups_shl_example0_shift_x_q;
    wire [0:0] leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_s;
    reg [3:0] leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid122_i_next_initerations_example0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid124_i_next_initerations_example0_shift_x_q;
    wire [0:0] rightShiftStage0_uid126_i_next_initerations_example0_shift_x_s;
    reg [3:0] rightShiftStage0_uid126_i_next_initerations_example0_shift_x_q;
    reg [0:0] redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q;
    reg [0:0] redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
    reg [0:0] redist1_sync_together57_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_sync_together57_aunroll_x_in_i_valid_2_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // redist1_sync_together57_aunroll_x_in_i_valid_1(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together57_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together57_aunroll_x_in_i_valid_2(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together57_aunroll_x_in_i_valid_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_sync_together57_aunroll_x_in_i_valid_2_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,130)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_example0_shift_x(BITSELECT,114)@3
    assign leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_example0_shift_x_in = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_example0_shift_x_b = leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_example0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid116_i_cleanups_shl_example0_shift_x(BITJOIN,115)@3
    assign leftShiftStage0Idx1_uid116_i_cleanups_shl_example0_shift_x_q = {leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl_example0_shift_x_b, GND_q};

    // leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x(MUX,117)@3
    assign leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_s or i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out or leftShiftStage0Idx1_uid116_i_cleanups_shl_example0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_s)
            1'b0 : leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_q = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
            1'b1 : leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_q = leftShiftStage0Idx1_uid116_i_cleanups_shl_example0_shift_x_q;
            default : leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl_example5_vt_select_3(BITSELECT,17)@3
    assign i_cleanups_shl_example5_vt_select_3_b = leftShiftStage0_uid118_i_cleanups_shl_example0_shift_x_q[3:1];

    // i_cleanups_shl_example5_vt_join(BITJOIN,16)@3
    assign i_cleanups_shl_example5_vt_join_q = {i_cleanups_shl_example5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor_example4(LOGICAL,20)@3
    assign i_first_cleanup_xor_example4_q = i_first_cleanup_example3_sel_x_b ^ VCC_q;

    // i_notcmp_example23(LOGICAL,46)@3
    assign i_notcmp_example23_q = i_exitcond_example21_cmp_nsign_q ^ VCC_q;

    // i_or_example25(LOGICAL,47)@3
    assign i_or_example25_q = i_notcmp_example23_q | i_first_cleanup_xor_example4_q;

    // i_next_cleanups_example26(MUX,42)@3
    assign i_next_cleanups_example26_s = i_or_example25_q;
    always @(i_next_cleanups_example26_s or i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out or i_cleanups_shl_example5_vt_join_q)
    begin
        unique case (i_next_cleanups_example26_s)
            1'b0 : i_next_cleanups_example26_q = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out;
            1'b1 : i_next_cleanups_example26_q = i_cleanups_shl_example5_vt_join_q;
            default : i_next_cleanups_example26_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups_push10_example27(BLACKBOX,38)@3
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    example_i_llvm_fpga_push_i4_cleanups_push10_0 thei_llvm_fpga_push_i4_cleanups_push10_example27 (
        .in_data_in(i_next_cleanups_example26_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist2_sync_together57_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_cleanups_push10_example27_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_cleanups_push10_example27_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i4_734(CONSTANT,9)
    assign c_i4_734_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups_pop10_example2(BLACKBOX,32)@3
    // out out_feedback_stall_out_10@20000000
    example_i_llvm_fpga_pop_i4_cleanups_pop10_0 thei_llvm_fpga_pop_i4_cleanups_pop10_example2 (
        .in_data_in(c_i4_734_q),
        .in_dir(redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_cleanups_push10_example27_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_cleanups_push10_example27_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist2_sync_together57_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup_example3_sel_x(BITSELECT,85)@3
    assign i_first_cleanup_example3_sel_x_b = i_llvm_fpga_pop_i4_cleanups_pop10_example2_out_data_out[0:0];

    // c_i8_141(CONSTANT,10)
    assign c_i8_141_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_example28(ADD,21)@3
    assign i_fpga_indvars_iv_next_example28_a = {1'b0, i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20_out_data_out};
    assign i_fpga_indvars_iv_next_example28_b = {1'b0, c_i8_141_q};
    assign i_fpga_indvars_iv_next_example28_o = $unsigned(i_fpga_indvars_iv_next_example28_a) + $unsigned(i_fpga_indvars_iv_next_example28_b);
    assign i_fpga_indvars_iv_next_example28_q = i_fpga_indvars_iv_next_example28_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_example28_sel_x(BITSELECT,54)@3
    assign bgTrunc_i_fpga_indvars_iv_next_example28_sel_x_b = i_fpga_indvars_iv_next_example28_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29(BLACKBOX,40)@3
    // out out_feedback_out_6@20000000
    // out out_feedback_valid_out_6@20000000
    example_i_llvm_fpga_push_i8_fpga_indvars_iv_push6_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_example28_sel_x_b),
        .in_feedback_stall_in_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20_out_feedback_stall_out_6),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist2_sync_together57_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29_out_feedback_out_6),
        .out_feedback_valid_out_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29_out_feedback_valid_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9839(CONSTANT,11)
    assign c_i8_9839_q = $unsigned(8'b01100010);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20(BLACKBOX,34)@3
    // out out_feedback_stall_out_6@20000000
    example_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20 (
        .in_data_in(c_i8_9839_q),
        .in_dir(redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29_out_feedback_out_6),
        .in_feedback_valid_in_6(i_llvm_fpga_push_i8_fpga_indvars_iv_push6_example29_out_feedback_valid_out_6),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist2_sync_together57_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20_out_data_out),
        .out_feedback_stall_out_6(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20_out_feedback_stall_out_6),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_example21_cmp_nsign(LOGICAL,110)@3
    assign i_exitcond_example21_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i8_fpga_indvars_iv_pop6_example20_out_data_out[7:7]));

    // i_llvm_fpga_push_i1_notexitcond_example24(BLACKBOX,36)@3
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    example_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_example24 (
        .in_data_in(i_exitcond_example21_cmp_nsign_q),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out),
        .in_first_cleanup(i_first_cleanup_example3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist2_sync_together57_aunroll_x_in_i_valid_2_q),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_example24_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_example24_out_feedback_valid_out_3),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,97)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg3_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // rightShiftStage0Idx1Rng1_uid122_i_next_initerations_example0_shift_x(BITSELECT,121)@3
    assign rightShiftStage0Idx1Rng1_uid122_i_next_initerations_example0_shift_x_b = i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid124_i_next_initerations_example0_shift_x(BITJOIN,123)@3
    assign rightShiftStage0Idx1_uid124_i_next_initerations_example0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid122_i_next_initerations_example0_shift_x_b};

    // valid_fanout_reg1(REG,95)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg1_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg2(REG,96)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg2_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg2_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i4_initerations_push9_example9(BLACKBOX,39)@3
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    example_i_llvm_fpga_push_i4_initerations_push9_0 thei_llvm_fpga_push_i4_initerations_push9_example9 (
        .in_data_in(i_next_initerations_example8_vt_join_q),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations_pop9_example7(BLACKBOX,33)@3
    // out out_feedback_stall_out_9@20000000
    example_i_llvm_fpga_pop_i4_initerations_pop9_0 thei_llvm_fpga_pop_i4_initerations_pop9_example7 (
        .in_data_in(c_i4_734_q),
        .in_dir(redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i4_initerations_push9_example9_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i4_initerations_pop9_example7_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid126_i_next_initerations_example0_shift_x(MUX,125)@3
    assign rightShiftStage0_uid126_i_next_initerations_example0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid126_i_next_initerations_example0_shift_x_s or i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out or rightShiftStage0Idx1_uid124_i_next_initerations_example0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid126_i_next_initerations_example0_shift_x_s)
            1'b0 : rightShiftStage0_uid126_i_next_initerations_example0_shift_x_q = i_llvm_fpga_pop_i4_initerations_pop9_example7_out_data_out;
            1'b1 : rightShiftStage0_uid126_i_next_initerations_example0_shift_x_q = rightShiftStage0Idx1_uid124_i_next_initerations_example0_shift_x_q;
            default : rightShiftStage0_uid126_i_next_initerations_example0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_example8_vt_select_2(BITSELECT,45)@3
    assign i_next_initerations_example8_vt_select_2_b = rightShiftStage0_uid126_i_next_initerations_example0_shift_x_q[2:0];

    // i_next_initerations_example8_vt_join(BITJOIN,44)@3
    assign i_next_initerations_example8_vt_join_q = {GND_q, i_next_initerations_example8_vt_select_2_b};

    // i_last_initeration_example10_sel_x(BITSELECT,87)@3
    assign i_last_initeration_example10_sel_x_b = i_next_initerations_example8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_example11(BLACKBOX,35)@3
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    example_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_example11 (
        .in_data_in(i_last_initeration_example10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= '0;
            redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_delay_0 <= $unsigned(in_c0_eni1_1_tpl);
            redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q <= redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_delay_0;
        end
    end

    // i_llvm_fpga_pipeline_keep_going_example6(BLACKBOX,30)@3
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    example_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_example6 (
        .in_data_in(redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_example11_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_example24_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_example24_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist2_sync_together57_aunroll_x_in_i_valid_2_q),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_example6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_example6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_example6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_example6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_example6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,94)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_masked_example30(LOGICAL,41)@3
    assign i_masked_example30_q = i_notcmp_example23_q & i_first_cleanup_example3_sel_x_b;

    // c_i32_037(CONSTANT,6)
    assign c_i32_037_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,98)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg4_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg7(REG,101)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_138(CONSTANT,7)
    assign c_i32_138_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_example18(ADD,26)@3
    assign i_inc_example18_a = {1'b0, i_llvm_fpga_pop_i32_i_011_pop7_example12_out_data_out};
    assign i_inc_example18_b = {1'b0, c_i32_138_q};
    assign i_inc_example18_o = $unsigned(i_inc_example18_a) + $unsigned(i_inc_example18_b);
    assign i_inc_example18_q = i_inc_example18_o[32:0];

    // bgTrunc_i_inc_example18_sel_x(BITSELECT,55)@3
    assign bgTrunc_i_inc_example18_sel_x_b = i_inc_example18_q[31:0];

    // i_llvm_fpga_push_i32_i_011_push7_example19(BLACKBOX,37)@3
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    example_i_llvm_fpga_push_i32_i_011_push7_0 thei_llvm_fpga_push_i32_i_011_push7_example19 (
        .in_data_in(bgTrunc_i_inc_example18_sel_x_b),
        .in_feedback_stall_in_7(i_llvm_fpga_pop_i32_i_011_pop7_example12_out_feedback_stall_out_7),
        .in_keep_going(i_llvm_fpga_pipeline_keep_going_example6_out_data_out),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i32_i_011_push7_example19_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i32_i_011_push7_example19_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_011_pop7_example12(BLACKBOX,31)@3
    // out out_feedback_stall_out_7@20000000
    example_i_llvm_fpga_pop_i32_i_011_pop7_0 thei_llvm_fpga_pop_i32_i_011_pop7_example12 (
        .in_data_in(c_i32_037_q),
        .in_dir(redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q),
        .in_feedback_in_7(i_llvm_fpga_push_i32_i_011_push7_example19_out_feedback_out_7),
        .in_feedback_valid_in_7(i_llvm_fpga_push_i32_i_011_push7_example19_out_feedback_valid_out_7),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_011_pop7_example12_out_data_out),
        .out_feedback_stall_out_7(i_llvm_fpga_pop_i32_i_011_pop7_example12_out_feedback_stall_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_example13_sel_x(BITSELECT,86)@3
    assign i_idxprom_example13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_011_pop7_example12_out_data_out[31:0]};

    // i_idxprom_example13_vt_select_31(BITSELECT,25)@3
    assign i_idxprom_example13_vt_select_31_b = i_idxprom_example13_sel_x_b[31:0];

    // i_idxprom_example13_vt_join(BITJOIN,24)@3
    assign i_idxprom_example13_vt_join_q = {c_i32_037_q, i_idxprom_example13_vt_select_31_b};

    // i_arrayidx2_example0_narrow_x(BITSELECT,71)@3
    assign i_arrayidx2_example0_narrow_x_b = i_idxprom_example13_vt_join_q[61:0];

    // i_arrayidx2_example0_c_i2_01_x(CONSTANT,70)
    assign i_arrayidx2_example0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx2_example0_shift_join_x(BITJOIN,72)@3
    assign i_arrayidx2_example0_shift_join_x_q = {i_arrayidx2_example0_narrow_x_b, i_arrayidx2_example0_c_i2_01_x_q};

    // valid_fanout_reg6(REG,100)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_b132_example16(BLACKBOX,29)@3
    example_i_llvm_fpga_ffwd_dest_p1024f32_b132_0 thei_llvm_fpga_ffwd_dest_p1024f32_b132_example16 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024f32_b132_example16_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx2_example0_add_x(ADD,69)@3
    assign i_arrayidx2_example0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024f32_b132_example16_out_dest_data_out_1_0};
    assign i_arrayidx2_example0_add_x_b = {1'b0, i_arrayidx2_example0_shift_join_x_q};
    assign i_arrayidx2_example0_add_x_o = $unsigned(i_arrayidx2_example0_add_x_a) + $unsigned(i_arrayidx2_example0_add_x_b);
    assign i_arrayidx2_example0_add_x_q = i_arrayidx2_example0_add_x_o[64:0];

    // i_arrayidx2_example0_dupName_0_trunc_sel_x(BITSELECT,74)@3
    assign i_arrayidx2_example0_dupName_0_trunc_sel_x_b = i_arrayidx2_example0_add_x_q[63:0];

    // valid_fanout_reg5(REG,99)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg5_q <= $unsigned(redist1_sync_together57_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024f32_a121_example14(BLACKBOX,28)@3
    example_i_llvm_fpga_ffwd_dest_p1024f32_a121_0 thei_llvm_fpga_ffwd_dest_p1024f32_a121_example14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024f32_a121_example14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_example0_add_x(ADD,75)@3
    assign i_arrayidx_example0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024f32_a121_example14_out_dest_data_out_0_0};
    assign i_arrayidx_example0_add_x_b = {1'b0, i_arrayidx2_example0_shift_join_x_q};
    assign i_arrayidx_example0_add_x_o = $unsigned(i_arrayidx_example0_add_x_a) + $unsigned(i_arrayidx_example0_add_x_b);
    assign i_arrayidx_example0_add_x_q = i_arrayidx_example0_add_x_o[64:0];

    // i_arrayidx_example0_dupName_0_trunc_sel_x(BITSELECT,80)@3
    assign i_arrayidx_example0_dupName_0_trunc_sel_x_b = i_arrayidx_example0_add_x_q[63:0];

    // sync_out_aunroll_x(GPOUT,92)@3
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = i_first_cleanup_xor_example4_q;
    assign out_c0_exi6_2_tpl = i_llvm_fpga_pipeline_keep_going_example6_out_data_out;
    assign out_c0_exi6_3_tpl = i_arrayidx_example0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_4_tpl = i_arrayidx2_example0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_5_tpl = i_masked_example30_q;
    assign out_c0_exi6_6_tpl = redist0_sync_together57_aunroll_x_in_c0_eni1_1_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_example1 = GND_q;

endmodule
