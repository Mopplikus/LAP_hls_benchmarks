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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_firs_c0_enter292_fir0
// Created for function/kernel fir
// SystemVerilog created on Wed Apr  5 16:46:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_i_sfc_logic_s_c0_in_for_body_s_c0_enter292_fir0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [0:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [63:0] out_c0_exi6_3_tpl,
    output wire [63:0] out_c0_exi6_4_tpl,
    output wire [63:0] out_c0_exi6_5_tpl,
    output wire [0:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_fir1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [10:0] c_i11_141_q;
    wire [10:0] c_i11_99839_q;
    wire [31:0] c_i32_037_q;
    wire [31:0] c_i32_138_q;
    wire [3:0] c_i4_734_q;
    wire [3:0] i_cleanups_shl17_fir5_vt_join_q;
    wire [2:0] i_cleanups_shl17_fir5_vt_select_3_b;
    wire [0:0] i_first_cleanup_xor19_fir4_q;
    wire [11:0] i_fpga_indvars_iv_next_fir28_a;
    wire [11:0] i_fpga_indvars_iv_next_fir28_b;
    logic [11:0] i_fpga_indvars_iv_next_fir28_o;
    wire [11:0] i_fpga_indvars_iv_next_fir28_q;
    wire [63:0] i_idxprom_fir13_vt_join_q;
    wire [31:0] i_idxprom_fir13_vt_select_31_b;
    wire [32:0] i_inc_fir18_a;
    wire [32:0] i_inc_fir18_b;
    logic [32:0] i_inc_fir18_o;
    wire [32:0] i_inc_fir18_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_d_i165_fir14_out_dest_data_out_0_0;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1024i32_idx176_fir16_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_fir6_out_pipeline_valid_out;
    wire [10:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20_out_feedback_stall_out_8;
    wire [31:0] i_llvm_fpga_pop_i32_i_015_pop9_fir12_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_015_pop9_fir12_out_feedback_stall_out_9;
    wire [3:0] i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_feedback_stall_out_11;
    wire [3:0] i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_feedback_stall_out_10;
    wire [15:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29_out_feedback_valid_out_8;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration15_fir11_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration15_fir11_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_fir24_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_fir24_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_i_015_push9_fir19_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_i_015_push9_fir19_out_feedback_valid_out_9;
    wire [7:0] i_llvm_fpga_push_i4_cleanups16_push11_fir27_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i4_cleanups16_push11_fir27_out_feedback_valid_out_11;
    wire [7:0] i_llvm_fpga_push_i4_initerations11_push10_fir9_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i4_initerations11_push10_fir9_out_feedback_valid_out_10;
    wire [0:0] i_masked22_fir30_q;
    wire [0:0] i_next_cleanups21_fir26_s;
    reg [3:0] i_next_cleanups21_fir26_q;
    wire [3:0] i_next_initerations12_fir8_vt_join_q;
    wire [2:0] i_next_initerations12_fir8_vt_select_2_b;
    wire [0:0] i_notcmp9_fir23_q;
    wire [0:0] i_or20_fir25_q;
    wire [10:0] bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x_b;
    wire [31:0] bgTrunc_i_inc_fir18_sel_x_b;
    wire [64:0] i_arrayidx6_fir0_add_x_a;
    wire [64:0] i_arrayidx6_fir0_add_x_b;
    logic [64:0] i_arrayidx6_fir0_add_x_o;
    wire [64:0] i_arrayidx6_fir0_add_x_q;
    wire [1:0] i_arrayidx6_fir0_c_i2_01_x_q;
    wire [61:0] i_arrayidx6_fir0_narrow_x_b;
    wire [63:0] i_arrayidx6_fir0_shift_join_x_q;
    wire [63:0] i_arrayidx6_fir0_dupName_0_trunc_sel_x_b;
    wire [64:0] i_arrayidx_fir0_add_x_a;
    wire [64:0] i_arrayidx_fir0_add_x_b;
    logic [64:0] i_arrayidx_fir0_add_x_o;
    wire [64:0] i_arrayidx_fir0_add_x_q;
    wire [63:0] i_arrayidx_fir0_dupName_0_trunc_sel_x_b;
    wire [0:0] i_first_cleanup18_fir3_sel_x_b;
    wire [63:0] i_idxprom_fir13_sel_x_b;
    wire [0:0] i_last_initeration14_fir10_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    wire [0:0] i_exitcond_fir21_cmp_nsign_q;
    wire [2:0] leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl17_fir0_shift_x_in;
    wire [2:0] leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl17_fir0_shift_x_b;
    wire [3:0] leftShiftStage0Idx1_uid116_i_cleanups_shl17_fir0_shift_x_q;
    wire [0:0] leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_s;
    reg [3:0] leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_q;
    wire [2:0] rightShiftStage0Idx1Rng1_uid122_i_next_initerations12_fir0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid124_i_next_initerations12_fir0_shift_x_q;
    wire [0:0] rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_s;
    reg [3:0] rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_q;
    reg [0:0] redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1_q;
    reg [0:0] redist1_sync_together58_aunroll_x_in_i_valid_1_q;
    reg [0:0] redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q;
    wire [0:0] enable_stall_connector_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // enable_stall_connector_not_enable(LOGICAL,130)
    assign enable_stall_connector_not_enable_q = $unsigned(~ (in_enable));

    // redist1_sync_together58_aunroll_x_in_i_valid_1(DELAY,128)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together58_aunroll_x_in_i_valid_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist1_sync_together58_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1(DELAY,129)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out);
        end
    end

    // leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl17_fir0_shift_x(BITSELECT,114)@2
    assign leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl17_fir0_shift_x_in = i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out[2:0];
    assign leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl17_fir0_shift_x_b = leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl17_fir0_shift_x_in[2:0];

    // leftShiftStage0Idx1_uid116_i_cleanups_shl17_fir0_shift_x(BITJOIN,115)@2
    assign leftShiftStage0Idx1_uid116_i_cleanups_shl17_fir0_shift_x_q = {leftShiftStage0Idx1Rng1_uid115_i_cleanups_shl17_fir0_shift_x_b, GND_q};

    // leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x(MUX,117)@2
    assign leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_s or i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out or leftShiftStage0Idx1_uid116_i_cleanups_shl17_fir0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_s)
            1'b0 : leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_q = i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out;
            1'b1 : leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_q = leftShiftStage0Idx1_uid116_i_cleanups_shl17_fir0_shift_x_q;
            default : leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_cleanups_shl17_fir5_vt_select_3(BITSELECT,17)@2
    assign i_cleanups_shl17_fir5_vt_select_3_b = leftShiftStage0_uid118_i_cleanups_shl17_fir0_shift_x_q[3:1];

    // i_cleanups_shl17_fir5_vt_join(BITJOIN,16)@2
    assign i_cleanups_shl17_fir5_vt_join_q = {i_cleanups_shl17_fir5_vt_select_3_b, GND_q};

    // i_first_cleanup_xor19_fir4(LOGICAL,20)@2
    assign i_first_cleanup_xor19_fir4_q = i_first_cleanup18_fir3_sel_x_b ^ VCC_q;

    // i_notcmp9_fir23(LOGICAL,46)@2
    assign i_notcmp9_fir23_q = i_exitcond_fir21_cmp_nsign_q ^ VCC_q;

    // i_or20_fir25(LOGICAL,47)@2
    assign i_or20_fir25_q = i_notcmp9_fir23_q | i_first_cleanup_xor19_fir4_q;

    // i_next_cleanups21_fir26(MUX,42)@2
    assign i_next_cleanups21_fir26_s = i_or20_fir25_q;
    always @(i_next_cleanups21_fir26_s or i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out or i_cleanups_shl17_fir5_vt_join_q)
    begin
        unique case (i_next_cleanups21_fir26_s)
            1'b0 : i_next_cleanups21_fir26_q = i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out;
            1'b1 : i_next_cleanups21_fir26_q = i_cleanups_shl17_fir5_vt_join_q;
            default : i_next_cleanups21_fir26_q = 4'b0;
        endcase
    end

    // i_llvm_fpga_push_i4_cleanups16_push11_fir27(BLACKBOX,39)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    fir_i_llvm_fpga_push_i4_cleanups16_push11_0 thei_llvm_fpga_push_i4_cleanups16_push11_fir27 (
        .in_data_in(i_next_cleanups21_fir26_q),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_feedback_stall_out_11),
        .in_keep_going13(redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together58_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i4_cleanups16_push11_fir27_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i4_cleanups16_push11_fir27_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1(DELAY,127)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1_q <= '0;
        end
        else if (in_enable == 1'b1)
        begin
            redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1_q <= $unsigned(in_c0_eni1_1_tpl);
        end
    end

    // c_i4_734(CONSTANT,11)
    assign c_i4_734_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_cleanups16_pop11_fir2(BLACKBOX,33)@2
    // out out_feedback_stall_out_11@20000000
    fir_i_llvm_fpga_pop_i4_cleanups16_pop11_0 thei_llvm_fpga_pop_i4_cleanups16_pop11_fir2 (
        .in_data_in(c_i4_734_q),
        .in_dir(redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i4_cleanups16_push11_fir27_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i4_cleanups16_push11_fir27_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together58_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_first_cleanup18_fir3_sel_x(BITSELECT,85)@2
    assign i_first_cleanup18_fir3_sel_x_b = i_llvm_fpga_pop_i4_cleanups16_pop11_fir2_out_data_out[0:0];

    // c_i11_141(CONSTANT,4)
    assign c_i11_141_q = $unsigned(11'b11111111111);

    // i_fpga_indvars_iv_next_fir28(ADD,21)@2
    assign i_fpga_indvars_iv_next_fir28_a = {1'b0, i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20_out_data_out};
    assign i_fpga_indvars_iv_next_fir28_b = {1'b0, c_i11_141_q};
    assign i_fpga_indvars_iv_next_fir28_o = $unsigned(i_fpga_indvars_iv_next_fir28_a) + $unsigned(i_fpga_indvars_iv_next_fir28_b);
    assign i_fpga_indvars_iv_next_fir28_q = i_fpga_indvars_iv_next_fir28_o[11:0];

    // bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x(BITSELECT,54)@2
    assign bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x_b = i_fpga_indvars_iv_next_fir28_q[10:0];

    // i_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29(BLACKBOX,35)@2
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    fir_i_llvm_fpga_push_i11_fpga_indvars_iv_push8_0 thei_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_fir28_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20_out_feedback_stall_out_8),
        .in_keep_going13(redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together58_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i11_99839(CONSTANT,5)
    assign c_i11_99839_q = $unsigned(11'b01111100110);

    // i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20(BLACKBOX,31)@2
    // out out_feedback_stall_out_8@20000000
    fir_i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_0 thei_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20 (
        .in_data_in(c_i11_99839_q),
        .in_dir(redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i11_fpga_indvars_iv_push8_fir29_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together58_aunroll_x_in_i_valid_1_q),
        .out_data_out(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond_fir21_cmp_nsign(LOGICAL,110)@2
    assign i_exitcond_fir21_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i11_fpga_indvars_iv_pop8_fir20_out_data_out[10:10]));

    // i_llvm_fpga_push_i1_notexitcond23_fir24(BLACKBOX,37)@2
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    fir_i_llvm_fpga_push_i1_notexitcond23_0 thei_llvm_fpga_push_i1_notexitcond23_fir24 (
        .in_data_in(i_exitcond_fir21_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going13_fir6_out_not_exitcond_stall_out),
        .in_first_cleanup18(i_first_cleanup18_fir3_sel_x_b),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(redist1_sync_together58_aunroll_x_in_i_valid_1_q),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond23_fir24_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond23_fir24_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,97)@1 + 1
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

    // rightShiftStage0Idx1Rng1_uid122_i_next_initerations12_fir0_shift_x(BITSELECT,121)@2
    assign rightShiftStage0Idx1Rng1_uid122_i_next_initerations12_fir0_shift_x_b = i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_data_out[3:1];

    // rightShiftStage0Idx1_uid124_i_next_initerations12_fir0_shift_x(BITJOIN,123)@2
    assign rightShiftStage0Idx1_uid124_i_next_initerations12_fir0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid122_i_next_initerations12_fir0_shift_x_b};

    // valid_fanout_reg1(REG,95)@1 + 1
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

    // valid_fanout_reg2(REG,96)@1 + 1
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

    // i_llvm_fpga_push_i4_initerations11_push10_fir9(BLACKBOX,40)@2
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    fir_i_llvm_fpga_push_i4_initerations11_push10_0 thei_llvm_fpga_push_i4_initerations11_push10_fir9 (
        .in_data_in(i_next_initerations12_fir8_vt_join_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_feedback_stall_out_10),
        .in_keep_going13(redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i4_initerations11_push10_fir9_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i4_initerations11_push10_fir9_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i4_initerations11_pop10_fir7(BLACKBOX,34)@2
    // out out_feedback_stall_out_10@20000000
    fir_i_llvm_fpga_pop_i4_initerations11_pop10_0 thei_llvm_fpga_pop_i4_initerations11_pop10_fir7 (
        .in_data_in(c_i4_734_q),
        .in_dir(redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_10(i_llvm_fpga_push_i4_initerations11_push10_fir9_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i4_initerations11_push10_fir9_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x(MUX,125)@2
    assign rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_s or i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_data_out or rightShiftStage0Idx1_uid124_i_next_initerations12_fir0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_s)
            1'b0 : rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_q = i_llvm_fpga_pop_i4_initerations11_pop10_fir7_out_data_out;
            1'b1 : rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_q = rightShiftStage0Idx1_uid124_i_next_initerations12_fir0_shift_x_q;
            default : rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations12_fir8_vt_select_2(BITSELECT,45)@2
    assign i_next_initerations12_fir8_vt_select_2_b = rightShiftStage0_uid126_i_next_initerations12_fir0_shift_x_q[2:0];

    // i_next_initerations12_fir8_vt_join(BITJOIN,44)@2
    assign i_next_initerations12_fir8_vt_join_q = {GND_q, i_next_initerations12_fir8_vt_select_2_b};

    // i_last_initeration14_fir10_sel_x(BITSELECT,87)@2
    assign i_last_initeration14_fir10_sel_x_b = i_next_initerations12_fir8_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration15_fir11(BLACKBOX,36)@2
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    fir_i_llvm_fpga_push_i1_lastiniteration15_0 thei_llvm_fpga_push_i1_lastiniteration15_fir11 (
        .in_data_in(i_last_initeration14_fir10_sel_x_b),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going13_fir6_out_initeration_stall_out),
        .in_keep_going13(redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration15_fir11_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration15_fir11_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_fir6(BLACKBOX,30)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    fir_i_llvm_fpga_pipeline_keep_going13_0 thei_llvm_fpga_pipeline_keep_going13_fir6 (
        .in_data_in(in_c0_eni1_1_tpl),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration15_fir11_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration15_fir11_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond23_fir24_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond23_fir24_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going13_fir6_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going13_fir6_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going13_fir6_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going13_fir6_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going13_fir6_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,14)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out = i_llvm_fpga_pipeline_keep_going13_fir6_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out = i_llvm_fpga_pipeline_keep_going13_fir6_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,50)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going13_fir6_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,94)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // i_masked22_fir30(LOGICAL,41)@2
    assign i_masked22_fir30_q = i_notcmp9_fir23_q & i_first_cleanup18_fir3_sel_x_b;

    // i_arrayidx6_fir0_narrow_x(BITSELECT,71)@2
    assign i_arrayidx6_fir0_narrow_x_b = i_idxprom_fir13_vt_join_q[61:0];

    // i_arrayidx6_fir0_c_i2_01_x(CONSTANT,70)
    assign i_arrayidx6_fir0_c_i2_01_x_q = $unsigned(2'b00);

    // i_arrayidx6_fir0_shift_join_x(BITJOIN,72)@2
    assign i_arrayidx6_fir0_shift_join_x_q = {i_arrayidx6_fir0_narrow_x_b, i_arrayidx6_fir0_c_i2_01_x_q};

    // valid_fanout_reg6(REG,100)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg6_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg6_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_ffwd_dest_p1024i32_idx176_fir16(BLACKBOX,29)@2
    fir_i_llvm_fpga_ffwd_dest_p1024i32_idx176_0 thei_llvm_fpga_ffwd_dest_p1024i32_idx176_fir16 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1024i32_idx176_fir16_out_dest_data_out_1_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx6_fir0_add_x(ADD,69)@2
    assign i_arrayidx6_fir0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_idx176_fir16_out_dest_data_out_1_0};
    assign i_arrayidx6_fir0_add_x_b = {1'b0, i_arrayidx6_fir0_shift_join_x_q};
    assign i_arrayidx6_fir0_add_x_o = $unsigned(i_arrayidx6_fir0_add_x_a) + $unsigned(i_arrayidx6_fir0_add_x_b);
    assign i_arrayidx6_fir0_add_x_q = i_arrayidx6_fir0_add_x_o[64:0];

    // i_arrayidx6_fir0_dupName_0_trunc_sel_x(BITSELECT,74)@2
    assign i_arrayidx6_fir0_dupName_0_trunc_sel_x_b = i_arrayidx6_fir0_add_x_q[63:0];

    // valid_fanout_reg5(REG,99)@1 + 1
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

    // i_llvm_fpga_ffwd_dest_p1024i32_d_i165_fir14(BLACKBOX,28)@2
    fir_i_llvm_fpga_ffwd_dest_p1024i32_d_i165_0 thei_llvm_fpga_ffwd_dest_p1024i32_d_i165_fir14 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1024i32_d_i165_fir14_out_dest_data_out_0_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_arrayidx_fir0_add_x(ADD,75)@2
    assign i_arrayidx_fir0_add_x_a = {1'b0, i_llvm_fpga_ffwd_dest_p1024i32_d_i165_fir14_out_dest_data_out_0_0};
    assign i_arrayidx_fir0_add_x_b = {1'b0, i_arrayidx6_fir0_shift_join_x_q};
    assign i_arrayidx_fir0_add_x_o = $unsigned(i_arrayidx_fir0_add_x_a) + $unsigned(i_arrayidx_fir0_add_x_b);
    assign i_arrayidx_fir0_add_x_q = i_arrayidx_fir0_add_x_o[64:0];

    // i_arrayidx_fir0_dupName_0_trunc_sel_x(BITSELECT,80)@2
    assign i_arrayidx_fir0_dupName_0_trunc_sel_x_b = i_arrayidx_fir0_add_x_q[63:0];

    // c_i32_037(CONSTANT,8)
    assign c_i32_037_q = $unsigned(32'b00000000000000000000000000000000);

    // valid_fanout_reg4(REG,98)@1 + 1
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

    // valid_fanout_reg7(REG,101)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else if (in_enable == 1'b1)
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // c_i32_138(CONSTANT,9)
    assign c_i32_138_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc_fir18(ADD,26)@2
    assign i_inc_fir18_a = {1'b0, i_llvm_fpga_pop_i32_i_015_pop9_fir12_out_data_out};
    assign i_inc_fir18_b = {1'b0, c_i32_138_q};
    assign i_inc_fir18_o = $unsigned(i_inc_fir18_a) + $unsigned(i_inc_fir18_b);
    assign i_inc_fir18_q = i_inc_fir18_o[32:0];

    // bgTrunc_i_inc_fir18_sel_x(BITSELECT,55)@2
    assign bgTrunc_i_inc_fir18_sel_x_b = i_inc_fir18_q[31:0];

    // i_llvm_fpga_push_i32_i_015_push9_fir19(BLACKBOX,38)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    fir_i_llvm_fpga_push_i32_i_015_push9_0 thei_llvm_fpga_push_i32_i_015_push9_fir19 (
        .in_data_in(bgTrunc_i_inc_fir18_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_i_015_pop9_fir12_out_feedback_stall_out_9),
        .in_keep_going13(redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_i_015_push9_fir19_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_i_015_push9_fir19_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_015_pop9_fir12(BLACKBOX,32)@2
    // out out_feedback_stall_out_9@20000000
    fir_i_llvm_fpga_pop_i32_i_015_pop9_0 thei_llvm_fpga_pop_i32_i_015_pop9_fir12 (
        .in_data_in(c_i32_037_q),
        .in_dir(redist0_sync_together58_aunroll_x_in_c0_eni1_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_i_015_push9_fir19_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_i_015_push9_fir19_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(enable_stall_connector_not_enable_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_015_pop9_fir12_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_i_015_pop9_fir12_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_idxprom_fir13_sel_x(BITSELECT,86)@2
    assign i_idxprom_fir13_sel_x_b = {32'b00000000000000000000000000000000, i_llvm_fpga_pop_i32_i_015_pop9_fir12_out_data_out[31:0]};

    // i_idxprom_fir13_vt_select_31(BITSELECT,25)@2
    assign i_idxprom_fir13_vt_select_31_b = i_idxprom_fir13_sel_x_b[31:0];

    // i_idxprom_fir13_vt_join(BITJOIN,24)@2
    assign i_idxprom_fir13_vt_join_q = {c_i32_037_q, i_idxprom_fir13_vt_select_31_b};

    // sync_out_aunroll_x(GPOUT,92)@2
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = i_first_cleanup_xor19_fir4_q;
    assign out_c0_exi6_2_tpl = redist2_i_llvm_fpga_pipeline_keep_going13_fir6_out_data_out_1_q;
    assign out_c0_exi6_3_tpl = i_idxprom_fir13_vt_join_q;
    assign out_c0_exi6_4_tpl = i_arrayidx_fir0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_5_tpl = i_arrayidx6_fir0_dupName_0_trunc_sel_x_b;
    assign out_c0_exi6_6_tpl = i_masked22_fir30_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_fir1 = GND_q;

endmodule
