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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond31_preheader_lr_ph_covariances_c0_enter28230_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond30000ter28230_covariance0 (
    output wire [0:0] out_c0_exi10295_0_tpl,
    output wire [31:0] out_c0_exi10295_1_tpl,
    output wire [31:0] out_c0_exi10295_2_tpl,
    output wire [32:0] out_c0_exi10295_3_tpl,
    output wire [0:0] out_c0_exi10295_4_tpl,
    output wire [0:0] out_c0_exi10295_5_tpl,
    output wire [31:0] out_c0_exi10295_6_tpl,
    output wire [31:0] out_c0_exi10295_7_tpl,
    output wire [0:0] out_c0_exi10295_8_tpl,
    output wire [31:0] out_c0_exi10295_9_tpl,
    output wire [31:0] out_c0_exi10295_10_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni3281_0_tpl,
    input wire [0:0] in_c0_eni3281_1_tpl,
    input wire [31:0] in_c0_eni3281_2_tpl,
    input wire [31:0] in_c0_eni3281_3_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next15_covariance6_sel_x_b;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next20_covariance13_sel_x_b;
    wire [31:0] bgTrunc_i_inc54_covariance15_sel_x_b;
    wire [31:0] c_i32_035_q;
    wire [31:0] c_i32_142_q;
    wire [32:0] c_i33_138_q;
    wire [32:0] c_i33_3037_q;
    wire [5:0] c_i6_141_q;
    wire [5:0] c_i6_3039_q;
    wire [33:0] i_fpga_indvars_iv_next15_covariance6_a;
    wire [33:0] i_fpga_indvars_iv_next15_covariance6_b;
    logic [33:0] i_fpga_indvars_iv_next15_covariance6_o;
    wire [33:0] i_fpga_indvars_iv_next15_covariance6_q;
    wire [6:0] i_fpga_indvars_iv_next20_covariance13_a;
    wire [6:0] i_fpga_indvars_iv_next20_covariance13_b;
    logic [6:0] i_fpga_indvars_iv_next20_covariance13_o;
    wire [6:0] i_fpga_indvars_iv_next20_covariance13_q;
    wire [32:0] i_inc54_covariance15_a;
    wire [32:0] i_inc54_covariance15_b;
    logic [32:0] i_inc54_covariance15_o;
    wire [32:0] i_inc54_covariance15_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_feedback_stall_out_24;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17_out_feedback_stall_out_26;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19_out_feedback_stall_out_27;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5_out_feedback_stall_out_23;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond34_covariance12_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond34_covariance12_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_i21_072_push24_covariance16_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i32_i21_072_push24_covariance16_out_feedback_valid_out_24;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext82_push26_covariance18_out_feedback_out_26;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext82_push26_covariance18_out_feedback_valid_out_26;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20_out_feedback_out_27;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20_out_feedback_valid_out_27;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10_out_feedback_valid_out_23;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14_out_feedback_valid_out_22;
    wire [4:0] i_mul47_covariance4_vt_const_4_q;
    wire [31:0] i_mul47_covariance4_vt_join_q;
    wire [26:0] i_mul47_covariance4_vt_select_31_b;
    wire [0:0] i_notcmp31_covariance11_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid79_i_mul47_covariance0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid79_i_mul47_covariance0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid80_i_mul47_covariance0_shift_x_q;
    wire [0:0] leftShiftStage0_uid82_i_mul47_covariance0_shift_x_s;
    reg [31:0] leftShiftStage0_uid82_i_mul47_covariance0_shift_x_q;
    wire [3:0] leftShiftStage1Idx1Pad4_uid83_i_mul47_covariance0_shift_x_q;
    wire [27:0] leftShiftStage1Idx1Rng4_uid84_i_mul47_covariance0_shift_x_in;
    wire [27:0] leftShiftStage1Idx1Rng4_uid84_i_mul47_covariance0_shift_x_b;
    wire [31:0] leftShiftStage1Idx1_uid85_i_mul47_covariance0_shift_x_q;
    wire [0:0] leftShiftStage1_uid87_i_mul47_covariance0_shift_x_s;
    reg [31:0] leftShiftStage1_uid87_i_mul47_covariance0_shift_x_q;
    wire [0:0] i_exitcond21_covariance8_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q;
    reg [31:0] redist2_sync_together59_aunroll_x_in_c0_eni3281_2_tpl_1_q;
    reg [31:0] redist3_sync_together59_aunroll_x_in_c0_eni3281_3_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,62)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(in_i_valid);
        end
    end

    // redist2_sync_together59_aunroll_x_in_c0_eni3281_2_tpl_1(DELAY,92)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni3281_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni3281_2_tpl_1_q <= $unsigned(in_c0_eni3281_2_tpl);
        end
    end

    // redist3_sync_together59_aunroll_x_in_c0_eni3281_3_tpl_1(DELAY,93)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni3281_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni3281_3_tpl_1_q <= $unsigned(in_c0_eni3281_3_tpl);
        end
    end

    // redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1(DELAY,91)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q <= $unsigned(in_c0_eni3281_1_tpl);
        end
    end

    // valid_fanout_reg7(REG,69)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg7_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg7_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg8(REG,70)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg8_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg8_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20(BLACKBOX,51)@2
    // out out_feedback_out_27@20000000
    // out out_feedback_valid_out_27@20000000
    covariance_i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_0 thei_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19_out_data_out),
        .in_exitcond21(redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q),
        .in_feedback_stall_in_27(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19_out_feedback_stall_out_27),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_27(i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20_out_feedback_out_27),
        .out_feedback_valid_out_27(i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20_out_feedback_valid_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19(BLACKBOX,45)@2
    // out out_feedback_stall_out_27@20000000
    covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19 (
        .in_data_in(redist3_sync_together59_aunroll_x_in_c0_eni3281_3_tpl_1_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q),
        .in_feedback_in_27(i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20_out_feedback_out_27),
        .in_feedback_valid_in_27(i_llvm_fpga_push_i32_reorder_limiter_enter86_push27_covariance20_out_feedback_valid_out_27),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19_out_data_out),
        .out_feedback_stall_out_27(i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19_out_feedback_stall_out_27),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,67)@1 + 1
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

    // valid_fanout_reg6(REG,68)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext82_push26_covariance18(BLACKBOX,50)@2
    // out out_feedback_out_26@20000000
    // out out_feedback_valid_out_26@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext82_push26_0 thei_llvm_fpga_push_i32_lim_ext82_push26_covariance18 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17_out_data_out),
        .in_exitcond21(redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q),
        .in_feedback_stall_in_26(i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17_out_feedback_stall_out_26),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_26(i_llvm_fpga_push_i32_lim_ext82_push26_covariance18_out_feedback_out_26),
        .out_feedback_valid_out_26(i_llvm_fpga_push_i32_lim_ext82_push26_covariance18_out_feedback_valid_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17(BLACKBOX,44)@2
    // out out_feedback_stall_out_26@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext82_pop26_0 thei_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17 (
        .in_data_in(redist2_sync_together59_aunroll_x_in_c0_eni3281_2_tpl_1_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q),
        .in_feedback_in_26(i_llvm_fpga_push_i32_lim_ext82_push26_covariance18_out_feedback_out_26),
        .in_feedback_valid_in_26(i_llvm_fpga_push_i32_lim_ext82_push26_covariance18_out_feedback_valid_out_26),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17_out_data_out),
        .out_feedback_stall_out_26(i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17_out_feedback_stall_out_26),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp31_covariance11(LOGICAL,57)@2
    assign i_notcmp31_covariance11_q = redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q ^ VCC_q;

    // c_i6_141(CONSTANT,35)
    assign c_i6_141_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next20_covariance13(ADD,40)@1
    assign i_fpga_indvars_iv_next20_covariance13_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7_out_data_out};
    assign i_fpga_indvars_iv_next20_covariance13_b = {1'b0, c_i6_141_q};
    assign i_fpga_indvars_iv_next20_covariance13_o = $unsigned(i_fpga_indvars_iv_next20_covariance13_a) + $unsigned(i_fpga_indvars_iv_next20_covariance13_b);
    assign i_fpga_indvars_iv_next20_covariance13_q = i_fpga_indvars_iv_next20_covariance13_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next20_covariance13_sel_x(BITSELECT,3)@1
    assign bgTrunc_i_fpga_indvars_iv_next20_covariance13_sel_x_b = i_fpga_indvars_iv_next20_covariance13_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14(BLACKBOX,53)@1
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_0 thei_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next20_covariance13_sel_x_b),
        .in_exitcond21(i_exitcond21_covariance8_cmp_nsign_q),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7_out_feedback_stall_out_22),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14_out_feedback_valid_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3039(CONSTANT,36)
    assign c_i6_3039_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7(BLACKBOX,47)@1
    // out out_feedback_stall_out_22@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7 (
        .in_data_in(c_i6_3039_q),
        .in_dir(in_c0_eni3281_1_tpl),
        .in_feedback_in_22(i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i6_fpga_indvars_iv19_push22_covariance14_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7_out_feedback_stall_out_22),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond21_covariance8_cmp_nsign(LOGICAL,89)@1
    assign i_exitcond21_covariance8_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv19_pop22_covariance7_out_data_out[5:5]));

    // redist0_i_exitcond21_covariance8_cmp_nsign_q_1(DELAY,90)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q <= $unsigned(i_exitcond21_covariance8_cmp_nsign_q);
        end
    end

    // valid_fanout_reg2(REG,64)@1 + 1
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

    // valid_fanout_reg3(REG,65)@1 + 1
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

    // c_i33_138(CONSTANT,33)
    assign c_i33_138_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next15_covariance6(ADD,39)@2
    assign i_fpga_indvars_iv_next15_covariance6_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5_out_data_out};
    assign i_fpga_indvars_iv_next15_covariance6_b = {1'b0, c_i33_138_q};
    assign i_fpga_indvars_iv_next15_covariance6_o = $unsigned(i_fpga_indvars_iv_next15_covariance6_a) + $unsigned(i_fpga_indvars_iv_next15_covariance6_b);
    assign i_fpga_indvars_iv_next15_covariance6_q = i_fpga_indvars_iv_next15_covariance6_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next15_covariance6_sel_x(BITSELECT,2)@2
    assign bgTrunc_i_fpga_indvars_iv_next15_covariance6_sel_x_b = i_fpga_indvars_iv_next15_covariance6_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10(BLACKBOX,52)@2
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    covariance_i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_0 thei_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next15_covariance6_sel_x_b),
        .in_exitcond21(redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5_out_feedback_stall_out_23),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10_out_feedback_valid_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_3037(CONSTANT,34)
    assign c_i33_3037_q = $unsigned(33'b000000000000000000000000000011110);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5(BLACKBOX,46)@2
    // out out_feedback_stall_out_23@20000000
    covariance_i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5 (
        .in_data_in(c_i33_3037_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q),
        .in_feedback_in_23(i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i33_fpga_indvars_iv14_push23_covariance10_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5_out_feedback_stall_out_23),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // leftShiftStage1Idx1Rng4_uid84_i_mul47_covariance0_shift_x(BITSELECT,83)@2
    assign leftShiftStage1Idx1Rng4_uid84_i_mul47_covariance0_shift_x_in = leftShiftStage0_uid82_i_mul47_covariance0_shift_x_q[27:0];
    assign leftShiftStage1Idx1Rng4_uid84_i_mul47_covariance0_shift_x_b = leftShiftStage1Idx1Rng4_uid84_i_mul47_covariance0_shift_x_in[27:0];

    // leftShiftStage1Idx1Pad4_uid83_i_mul47_covariance0_shift_x(CONSTANT,82)
    assign leftShiftStage1Idx1Pad4_uid83_i_mul47_covariance0_shift_x_q = $unsigned(4'b0000);

    // leftShiftStage1Idx1_uid85_i_mul47_covariance0_shift_x(BITJOIN,84)@2
    assign leftShiftStage1Idx1_uid85_i_mul47_covariance0_shift_x_q = {leftShiftStage1Idx1Rng4_uid84_i_mul47_covariance0_shift_x_b, leftShiftStage1Idx1Pad4_uid83_i_mul47_covariance0_shift_x_q};

    // leftShiftStage0Idx1Rng1_uid79_i_mul47_covariance0_shift_x(BITSELECT,78)@2
    assign leftShiftStage0Idx1Rng1_uid79_i_mul47_covariance0_shift_x_in = i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_data_out[30:0];
    assign leftShiftStage0Idx1Rng1_uid79_i_mul47_covariance0_shift_x_b = leftShiftStage0Idx1Rng1_uid79_i_mul47_covariance0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid80_i_mul47_covariance0_shift_x(BITJOIN,79)@2
    assign leftShiftStage0Idx1_uid80_i_mul47_covariance0_shift_x_q = {leftShiftStage0Idx1Rng1_uid79_i_mul47_covariance0_shift_x_b, GND_q};

    // leftShiftStage0_uid82_i_mul47_covariance0_shift_x(MUX,81)@2
    assign leftShiftStage0_uid82_i_mul47_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid82_i_mul47_covariance0_shift_x_s or i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_data_out or leftShiftStage0Idx1_uid80_i_mul47_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid82_i_mul47_covariance0_shift_x_s)
            1'b0 : leftShiftStage0_uid82_i_mul47_covariance0_shift_x_q = i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_data_out;
            1'b1 : leftShiftStage0_uid82_i_mul47_covariance0_shift_x_q = leftShiftStage0Idx1_uid80_i_mul47_covariance0_shift_x_q;
            default : leftShiftStage0_uid82_i_mul47_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // leftShiftStage1_uid87_i_mul47_covariance0_shift_x(MUX,86)@2
    assign leftShiftStage1_uid87_i_mul47_covariance0_shift_x_s = VCC_q;
    always @(leftShiftStage1_uid87_i_mul47_covariance0_shift_x_s or leftShiftStage0_uid82_i_mul47_covariance0_shift_x_q or leftShiftStage1Idx1_uid85_i_mul47_covariance0_shift_x_q)
    begin
        unique case (leftShiftStage1_uid87_i_mul47_covariance0_shift_x_s)
            1'b0 : leftShiftStage1_uid87_i_mul47_covariance0_shift_x_q = leftShiftStage0_uid82_i_mul47_covariance0_shift_x_q;
            1'b1 : leftShiftStage1_uid87_i_mul47_covariance0_shift_x_q = leftShiftStage1Idx1_uid85_i_mul47_covariance0_shift_x_q;
            default : leftShiftStage1_uid87_i_mul47_covariance0_shift_x_q = 32'b0;
        endcase
    end

    // i_mul47_covariance4_vt_select_31(BITSELECT,56)@2
    assign i_mul47_covariance4_vt_select_31_b = leftShiftStage1_uid87_i_mul47_covariance0_shift_x_q[31:5];

    // i_mul47_covariance4_vt_const_4(CONSTANT,54)
    assign i_mul47_covariance4_vt_const_4_q = $unsigned(5'b00000);

    // i_mul47_covariance4_vt_join(BITJOIN,55)@2
    assign i_mul47_covariance4_vt_join_q = {i_mul47_covariance4_vt_select_31_b, i_mul47_covariance4_vt_const_4_q};

    // valid_fanout_reg1(REG,63)@1 + 1
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

    // valid_fanout_reg4(REG,66)@1 + 1
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

    // c_i32_142(CONSTANT,31)
    assign c_i32_142_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc54_covariance15(ADD,41)@2
    assign i_inc54_covariance15_a = {1'b0, i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_data_out};
    assign i_inc54_covariance15_b = {1'b0, c_i32_142_q};
    assign i_inc54_covariance15_o = $unsigned(i_inc54_covariance15_a) + $unsigned(i_inc54_covariance15_b);
    assign i_inc54_covariance15_q = i_inc54_covariance15_o[32:0];

    // bgTrunc_i_inc54_covariance15_sel_x(BITSELECT,4)@2
    assign bgTrunc_i_inc54_covariance15_sel_x_b = i_inc54_covariance15_q[31:0];

    // i_llvm_fpga_push_i32_i21_072_push24_covariance16(BLACKBOX,49)@2
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    covariance_i_llvm_fpga_push_i32_i21_072_push24_0 thei_llvm_fpga_push_i32_i21_072_push24_covariance16 (
        .in_data_in(bgTrunc_i_inc54_covariance15_sel_x_b),
        .in_exitcond21(redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_feedback_stall_out_24),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i32_i21_072_push24_covariance16_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i32_i21_072_push24_covariance16_out_feedback_valid_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_035(CONSTANT,30)
    assign c_i32_035_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i21_072_pop24_covariance3(BLACKBOX,43)@2
    // out out_feedback_stall_out_24@20000000
    covariance_i_llvm_fpga_pop_i32_i21_072_pop24_0 thei_llvm_fpga_pop_i32_i21_072_pop24_covariance3 (
        .in_data_in(c_i32_035_q),
        .in_dir(redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q),
        .in_feedback_in_24(i_llvm_fpga_push_i32_i21_072_push24_covariance16_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i32_i21_072_push24_covariance16_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_feedback_stall_out_24),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,10)@2
    assign out_c0_exi10295_0_tpl = GND_q;
    assign out_c0_exi10295_1_tpl = i_llvm_fpga_pop_i32_i21_072_pop24_covariance3_out_data_out;
    assign out_c0_exi10295_2_tpl = i_mul47_covariance4_vt_join_q;
    assign out_c0_exi10295_3_tpl = i_llvm_fpga_pop_i33_fpga_indvars_iv14_pop23_covariance5_out_data_out;
    assign out_c0_exi10295_4_tpl = redist0_i_exitcond21_covariance8_cmp_nsign_q_1_q;
    assign out_c0_exi10295_5_tpl = i_notcmp31_covariance11_q;
    assign out_c0_exi10295_6_tpl = i_llvm_fpga_pop_i32_lim_ext82_pop26_covariance17_out_data_out;
    assign out_c0_exi10295_7_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter86_pop27_covariance19_out_data_out;
    assign out_c0_exi10295_8_tpl = redist1_sync_together59_aunroll_x_in_c0_eni3281_1_tpl_1_q;
    assign out_c0_exi10295_9_tpl = redist3_sync_together59_aunroll_x_in_c0_eni3281_3_tpl_1_q;
    assign out_c0_exi10295_10_tpl = redist2_sync_together59_aunroll_x_in_c0_eni3281_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond34_covariance12(BLACKBOX,48)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond34_0 thei_llvm_fpga_push_i1_notexitcond34_covariance12 (
        .in_data_in(i_exitcond21_covariance8_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going33_covariance2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond34_covariance12_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond34_covariance12_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going33_covariance2(BLACKBOX,42)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going33_0 thei_llvm_fpga_pipeline_keep_going33_covariance2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond34_covariance12_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond34_covariance12_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going33_covariance2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going33_covariance2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going33_covariance2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going33_covariance2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,37)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going33_covariance2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going33_covariance2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going33_covariance2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,60)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going33_covariance2_out_pipeline_valid_out;

endmodule
