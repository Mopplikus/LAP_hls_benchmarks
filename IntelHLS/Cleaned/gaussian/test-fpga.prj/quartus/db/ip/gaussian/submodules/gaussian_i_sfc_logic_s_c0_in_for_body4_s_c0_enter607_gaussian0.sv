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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body4_gaussians_c0_enter607_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Tue Jun 13 02:18:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body4_s_c0_enter607_gaussian0 (
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [31:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [0:0] out_c0_exi6_3_tpl,
    output wire [31:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [31:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian1,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [31:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_gaussian2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_gaussian2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [32:0] in_intel_reserved_ffwd_6_0,
    input wire [31:0] in_intel_reserved_ffwd_7_0,
    input wire [0:0] in_intel_reserved_ffwd_8_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next11_gaussian18_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_gaussian20_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add16_gaussian11_sel_x_b;
    wire [31:0] c_i32_143_q;
    wire [31:0] c_i32_undef37_q;
    wire [32:0] c_i33_142_q;
    wire [32:0] c_i33_undef38_q;
    wire [0:0] i_fpga_indvars_iv10_replace_phi_gaussian8_s;
    reg [32:0] i_fpga_indvars_iv10_replace_phi_gaussian8_q;
    wire [33:0] i_fpga_indvars_iv_next11_gaussian18_a;
    wire [33:0] i_fpga_indvars_iv_next11_gaussian18_b;
    logic [33:0] i_fpga_indvars_iv_next11_gaussian18_o;
    wire [33:0] i_fpga_indvars_iv_next11_gaussian18_q;
    wire [0:0] i_i_046_replace_phi_gaussian5_s;
    reg [31:0] i_i_046_replace_phi_gaussian5_q;
    wire [32:0] i_inc19_gaussian20_a;
    wire [32:0] i_inc19_gaussian20_b;
    logic [32:0] i_inc19_gaussian20_o;
    wire [32:0] i_inc19_gaussian20_q;
    wire [0:0] i_llvm_fpga_ffwd_dest_i1_cmp24527_gaussian14_out_dest_data_out_8_0;
    wire [31:0] i_llvm_fpga_ffwd_dest_i32_add24_gaussian3_out_dest_data_out_7_0;
    wire [32:0] i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian16_gaussian6_out_dest_data_out_6_0;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going36_gaussian2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_add43_pop11_gaussian22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add43_pop11_gaussian22_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_feedback_stall_out_9;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond37_gaussian17_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond37_gaussian17_out_feedback_valid_out_5;
    wire [31:0] i_llvm_fpga_push_i32_add43_push11_gaussian23_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i32_add43_push11_gaussian23_out_feedback_valid_out_11;
    wire [31:0] i_llvm_fpga_push_i32_i_046_push9_gaussian21_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_i_046_push9_gaussian21_out_feedback_valid_out_9;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19_out_feedback_valid_out_8;
    wire [32:0] i_mul_add16_gaussian11_a;
    wire [32:0] i_mul_add16_gaussian11_b;
    logic [32:0] i_mul_add16_gaussian11_o;
    wire [32:0] i_mul_add16_gaussian11_q;
    wire [1:0] i_mul_add16_gaussian11_vt_const_1_q;
    wire [31:0] i_mul_add16_gaussian11_vt_join_q;
    wire [29:0] i_mul_add16_gaussian11_vt_select_31_b;
    wire [0:0] i_notcmp35_gaussian16_q;
    wire [3:0] i_unnamed_gaussian10_vt_const_3_q;
    wire [31:0] i_unnamed_gaussian10_vt_join_q;
    wire [27:0] i_unnamed_gaussian10_vt_select_31_b;
    wire [0:0] i_unnamed_gaussian15_q;
    wire [31:0] i_unnamed_gaussian9_vt_join_q;
    wire [29:0] i_unnamed_gaussian9_vt_select_31_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    wire [29:0] leftShiftStage0Idx1Rng2_uid90_dupName_1_i_unnamed_gaussian0_shift_x_in;
    wire [29:0] leftShiftStage0Idx1Rng2_uid90_dupName_1_i_unnamed_gaussian0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid91_dupName_1_i_unnamed_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_s;
    reg [31:0] leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_q;
    wire [27:0] leftShiftStage0Idx1Rng4_uid98_dupName_2_i_unnamed_gaussian0_shift_x_in;
    wire [27:0] leftShiftStage0Idx1Rng4_uid98_dupName_2_i_unnamed_gaussian0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid99_dupName_2_i_unnamed_gaussian0_shift_x_q;
    wire [0:0] leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_s;
    reg [31:0] leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_q;
    wire [0:0] i_exitcond12_gaussian12_cmp_nsign_q;
    reg [0:0] redist0_i_unnamed_gaussian15_q_2_q;
    reg [0:0] redist0_i_unnamed_gaussian15_q_2_delay_0;
    reg [31:0] redist1_i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out_1_q;
    reg [0:0] redist2_sync_together59_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [0:0] redist3_sync_together59_aunroll_x_in_c0_eni2_1_tpl_2_q;
    reg [31:0] redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_q;
    reg [31:0] redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_delay_0;
    reg [0:0] redist5_sync_together59_aunroll_x_in_i_valid_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // redist5_sync_together59_aunroll_x_in_i_valid_1(DELAY,109)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together59_aunroll_x_in_i_valid_1_q <= '0;
        end
        else
        begin
            redist5_sync_together59_aunroll_x_in_i_valid_1_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg0(REG,75)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg0_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg0_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2(DELAY,108)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_delay_0 <= '0;
            redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_q <= '0;
        end
        else
        begin
            redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_delay_0 <= $unsigned(in_c0_eni2_2_tpl);
            redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_q <= redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_delay_0;
        end
    end

    // redist2_sync_together59_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together59_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // redist3_sync_together59_aunroll_x_in_c0_eni2_1_tpl_2(DELAY,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni2_1_tpl_2_q <= '0;
        end
        else
        begin
            redist3_sync_together59_aunroll_x_in_c0_eni2_1_tpl_2_q <= $unsigned(redist2_sync_together59_aunroll_x_in_c0_eni2_1_tpl_1_q);
        end
    end

    // valid_fanout_reg4(REG,79)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg4_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg4_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // valid_fanout_reg5(REG,80)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg5_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg5_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_push_i32_add43_push11_gaussian23(BLACKBOX,53)@3
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    gaussian_i_llvm_fpga_push_i32_add43_push11_0 thei_llvm_fpga_push_i32_add43_push11_gaussian23 (
        .in_data_in(i_llvm_fpga_pop_i32_add43_pop11_gaussian22_out_data_out),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i32_add43_pop11_gaussian22_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian20(redist0_i_unnamed_gaussian15_q_2_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i32_add43_push11_gaussian23_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i32_add43_push11_gaussian23_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add43_pop11_gaussian22(BLACKBOX,49)@3
    // out out_feedback_stall_out_11@20000000
    gaussian_i_llvm_fpga_pop_i32_add43_pop11_0 thei_llvm_fpga_pop_i32_add43_pop11_gaussian22 (
        .in_data_in(redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_q),
        .in_dir(redist3_sync_together59_aunroll_x_in_c0_eni2_1_tpl_2_q),
        .in_feedback_in_11(i_llvm_fpga_push_i32_add43_push11_gaussian23_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i32_add43_push11_gaussian23_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(i_llvm_fpga_pop_i32_add43_pop11_gaussian22_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i32_add43_pop11_gaussian22_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp35_gaussian16(LOGICAL,60)@3
    assign i_notcmp35_gaussian16_q = redist0_i_unnamed_gaussian15_q_2_q ^ VCC_q;

    // i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian16_gaussian6(BLACKBOX,47)@1
    gaussian_i_llvm_fpga_ffwd_dest_i33_unnamed_16_gaussian0 thei_llvm_fpga_ffwd_dest_i33_unnamed_gaussian16_gaussian6 (
        .in_intel_reserved_ffwd_6_0(in_intel_reserved_ffwd_6_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_6_0(i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian16_gaussian6_out_dest_data_out_6_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_142(CONSTANT,37)
    assign c_i33_142_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next11_gaussian18(ADD,42)@1
    assign i_fpga_indvars_iv_next11_gaussian18_a = {1'b0, i_fpga_indvars_iv10_replace_phi_gaussian8_q};
    assign i_fpga_indvars_iv_next11_gaussian18_b = {1'b0, c_i33_142_q};
    assign i_fpga_indvars_iv_next11_gaussian18_o = $unsigned(i_fpga_indvars_iv_next11_gaussian18_a) + $unsigned(i_fpga_indvars_iv_next11_gaussian18_b);
    assign i_fpga_indvars_iv_next11_gaussian18_q = i_fpga_indvars_iv_next11_gaussian18_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next11_gaussian18_sel_x(BITSELECT,10)@1
    assign bgTrunc_i_fpga_indvars_iv_next11_gaussian18_sel_x_b = i_fpga_indvars_iv_next11_gaussian18_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19(BLACKBOX,55)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    gaussian_i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_0 thei_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next11_gaussian18_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian20(i_unnamed_gaussian15_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef38(CONSTANT,38)
    assign c_i33_undef38_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7(BLACKBOX,51)@1
    // out out_feedback_stall_out_8@20000000
    gaussian_i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7 (
        .in_data_in(c_i33_undef38_q),
        .in_dir(in_c0_eni2_1_tpl),
        .in_feedback_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv10_push8_gaussian19_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_fpga_indvars_iv10_replace_phi_gaussian8(MUX,41)@1
    assign i_fpga_indvars_iv10_replace_phi_gaussian8_s = in_c0_eni2_1_tpl;
    always @(i_fpga_indvars_iv10_replace_phi_gaussian8_s or i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7_out_data_out or i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian16_gaussian6_out_dest_data_out_6_0)
    begin
        unique case (i_fpga_indvars_iv10_replace_phi_gaussian8_s)
            1'b0 : i_fpga_indvars_iv10_replace_phi_gaussian8_q = i_llvm_fpga_pop_i33_fpga_indvars_iv10_pop8_gaussian7_out_data_out;
            1'b1 : i_fpga_indvars_iv10_replace_phi_gaussian8_q = i_llvm_fpga_ffwd_dest_i33_unnamed_gaussian16_gaussian6_out_dest_data_out_6_0;
            default : i_fpga_indvars_iv10_replace_phi_gaussian8_q = 33'b0;
        endcase
    end

    // i_exitcond12_gaussian12_cmp_nsign(LOGICAL,103)@1
    assign i_exitcond12_gaussian12_cmp_nsign_q = $unsigned(~ (i_fpga_indvars_iv10_replace_phi_gaussian8_q[32:32]));

    // i_llvm_fpga_ffwd_dest_i1_cmp24527_gaussian14(BLACKBOX,45)@1
    gaussian_i_llvm_fpga_ffwd_dest_i1_cmp24527_0 thei_llvm_fpga_ffwd_dest_i1_cmp24527_gaussian14 (
        .in_intel_reserved_ffwd_8_0(in_intel_reserved_ffwd_8_0),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_dest_data_out_8_0(i_llvm_fpga_ffwd_dest_i1_cmp24527_gaussian14_out_dest_data_out_8_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_gaussian15(LOGICAL,64)@1
    assign i_unnamed_gaussian15_q = i_llvm_fpga_ffwd_dest_i1_cmp24527_gaussian14_out_dest_data_out_8_0 & i_exitcond12_gaussian12_cmp_nsign_q;

    // redist0_i_unnamed_gaussian15_q_2(DELAY,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_unnamed_gaussian15_q_2_delay_0 <= '0;
            redist0_i_unnamed_gaussian15_q_2_q <= '0;
        end
        else
        begin
            redist0_i_unnamed_gaussian15_q_2_delay_0 <= $unsigned(i_unnamed_gaussian15_q);
            redist0_i_unnamed_gaussian15_q_2_q <= redist0_i_unnamed_gaussian15_q_2_delay_0;
        end
    end

    // leftShiftStage0Idx1Rng4_uid98_dupName_2_i_unnamed_gaussian0_shift_x(BITSELECT,97)@3
    assign leftShiftStage0Idx1Rng4_uid98_dupName_2_i_unnamed_gaussian0_shift_x_in = i_i_046_replace_phi_gaussian5_q[27:0];
    assign leftShiftStage0Idx1Rng4_uid98_dupName_2_i_unnamed_gaussian0_shift_x_b = leftShiftStage0Idx1Rng4_uid98_dupName_2_i_unnamed_gaussian0_shift_x_in[27:0];

    // leftShiftStage0Idx1_uid99_dupName_2_i_unnamed_gaussian0_shift_x(BITJOIN,98)@3
    assign leftShiftStage0Idx1_uid99_dupName_2_i_unnamed_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng4_uid98_dupName_2_i_unnamed_gaussian0_shift_x_b, i_unnamed_gaussian10_vt_const_3_q};

    // valid_fanout_reg1(REG,76)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg1_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg1_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // i_llvm_fpga_ffwd_dest_i32_add24_gaussian3(BLACKBOX,46)@3
    gaussian_i_llvm_fpga_ffwd_dest_i32_add24_0 thei_llvm_fpga_ffwd_dest_i32_add24_gaussian3 (
        .in_intel_reserved_ffwd_7_0(in_intel_reserved_ffwd_7_0),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_dest_data_out_7_0(i_llvm_fpga_ffwd_dest_i32_add24_gaussian3_out_dest_data_out_7_0),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg2(REG,77)@1 + 1
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

    // valid_fanout_reg3(REG,78)@2 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg3_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg3_q <= $unsigned(redist5_sync_together59_aunroll_x_in_i_valid_1_q);
        end
    end

    // c_i32_143(CONSTANT,33)
    assign c_i32_143_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc19_gaussian20(ADD,44)@3
    assign i_inc19_gaussian20_a = {1'b0, i_i_046_replace_phi_gaussian5_q};
    assign i_inc19_gaussian20_b = {1'b0, c_i32_143_q};
    assign i_inc19_gaussian20_o = $unsigned(i_inc19_gaussian20_a) + $unsigned(i_inc19_gaussian20_b);
    assign i_inc19_gaussian20_q = i_inc19_gaussian20_o[32:0];

    // bgTrunc_i_inc19_gaussian20_sel_x(BITSELECT,11)@3
    assign bgTrunc_i_inc19_gaussian20_sel_x_b = i_inc19_gaussian20_q[31:0];

    // i_llvm_fpga_push_i32_i_046_push9_gaussian21(BLACKBOX,54)@3
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    gaussian_i_llvm_fpga_push_i32_i_046_push9_0 thei_llvm_fpga_push_i32_i_046_push9_gaussian21 (
        .in_data_in(bgTrunc_i_inc19_gaussian20_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian20(redist0_i_unnamed_gaussian15_q_2_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_i_046_push9_gaussian21_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_i_046_push9_gaussian21_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef37(CONSTANT,36)
    assign c_i32_undef37_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_046_pop9_gaussian4(BLACKBOX,50)@2
    // out out_feedback_stall_out_9@20000000
    gaussian_i_llvm_fpga_pop_i32_i_046_pop9_0 thei_llvm_fpga_pop_i32_i_046_pop9_gaussian4 (
        .in_data_in(c_i32_undef37_q),
        .in_dir(redist2_sync_together59_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_i_046_push9_gaussian21_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_i_046_push9_gaussian21_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out_1(DELAY,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out_1_q <= '0;
        end
        else
        begin
            redist1_i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out);
        end
    end

    // i_i_046_replace_phi_gaussian5(MUX,43)@3
    assign i_i_046_replace_phi_gaussian5_s = redist3_sync_together59_aunroll_x_in_c0_eni2_1_tpl_2_q;
    always @(i_i_046_replace_phi_gaussian5_s or redist1_i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out_1_q or i_llvm_fpga_ffwd_dest_i32_add24_gaussian3_out_dest_data_out_7_0)
    begin
        unique case (i_i_046_replace_phi_gaussian5_s)
            1'b0 : i_i_046_replace_phi_gaussian5_q = redist1_i_llvm_fpga_pop_i32_i_046_pop9_gaussian4_out_data_out_1_q;
            1'b1 : i_i_046_replace_phi_gaussian5_q = i_llvm_fpga_ffwd_dest_i32_add24_gaussian3_out_dest_data_out_7_0;
            default : i_i_046_replace_phi_gaussian5_q = 32'b0;
        endcase
    end

    // leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x(MUX,100)@3
    assign leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_s or i_i_046_replace_phi_gaussian5_q or leftShiftStage0Idx1_uid99_dupName_2_i_unnamed_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_q = i_i_046_replace_phi_gaussian5_q;
            1'b1 : leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_q = leftShiftStage0Idx1_uid99_dupName_2_i_unnamed_gaussian0_shift_x_q;
            default : leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_gaussian10_vt_select_31(BITSELECT,63)@3
    assign i_unnamed_gaussian10_vt_select_31_b = leftShiftStage0_uid101_dupName_2_i_unnamed_gaussian0_shift_x_q[31:4];

    // i_unnamed_gaussian10_vt_const_3(CONSTANT,61)
    assign i_unnamed_gaussian10_vt_const_3_q = $unsigned(4'b0000);

    // i_unnamed_gaussian10_vt_join(BITJOIN,62)@3
    assign i_unnamed_gaussian10_vt_join_q = {i_unnamed_gaussian10_vt_select_31_b, i_unnamed_gaussian10_vt_const_3_q};

    // leftShiftStage0Idx1Rng2_uid90_dupName_1_i_unnamed_gaussian0_shift_x(BITSELECT,89)@3
    assign leftShiftStage0Idx1Rng2_uid90_dupName_1_i_unnamed_gaussian0_shift_x_in = i_i_046_replace_phi_gaussian5_q[29:0];
    assign leftShiftStage0Idx1Rng2_uid90_dupName_1_i_unnamed_gaussian0_shift_x_b = leftShiftStage0Idx1Rng2_uid90_dupName_1_i_unnamed_gaussian0_shift_x_in[29:0];

    // leftShiftStage0Idx1_uid91_dupName_1_i_unnamed_gaussian0_shift_x(BITJOIN,90)@3
    assign leftShiftStage0Idx1_uid91_dupName_1_i_unnamed_gaussian0_shift_x_q = {leftShiftStage0Idx1Rng2_uid90_dupName_1_i_unnamed_gaussian0_shift_x_b, i_mul_add16_gaussian11_vt_const_1_q};

    // leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x(MUX,92)@3
    assign leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_s or i_i_046_replace_phi_gaussian5_q or leftShiftStage0Idx1_uid91_dupName_1_i_unnamed_gaussian0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_s)
            1'b0 : leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_q = i_i_046_replace_phi_gaussian5_q;
            1'b1 : leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_q = leftShiftStage0Idx1_uid91_dupName_1_i_unnamed_gaussian0_shift_x_q;
            default : leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_gaussian9_vt_select_31(BITSELECT,67)@3
    assign i_unnamed_gaussian9_vt_select_31_b = leftShiftStage0_uid93_dupName_1_i_unnamed_gaussian0_shift_x_q[31:2];

    // i_unnamed_gaussian9_vt_join(BITJOIN,66)@3
    assign i_unnamed_gaussian9_vt_join_q = {i_unnamed_gaussian9_vt_select_31_b, i_mul_add16_gaussian11_vt_const_1_q};

    // i_mul_add16_gaussian11(ADD,56)@3
    assign i_mul_add16_gaussian11_a = {1'b0, i_unnamed_gaussian9_vt_join_q};
    assign i_mul_add16_gaussian11_b = {1'b0, i_unnamed_gaussian10_vt_join_q};
    assign i_mul_add16_gaussian11_o = $unsigned(i_mul_add16_gaussian11_a) + $unsigned(i_mul_add16_gaussian11_b);
    assign i_mul_add16_gaussian11_q = i_mul_add16_gaussian11_o[32:0];

    // bgTrunc_i_mul_add16_gaussian11_sel_x(BITSELECT,12)@3
    assign bgTrunc_i_mul_add16_gaussian11_sel_x_b = i_mul_add16_gaussian11_q[31:0];

    // i_mul_add16_gaussian11_vt_select_31(BITSELECT,59)@3
    assign i_mul_add16_gaussian11_vt_select_31_b = bgTrunc_i_mul_add16_gaussian11_sel_x_b[31:2];

    // i_mul_add16_gaussian11_vt_const_1(CONSTANT,57)
    assign i_mul_add16_gaussian11_vt_const_1_q = $unsigned(2'b00);

    // i_mul_add16_gaussian11_vt_join(BITJOIN,58)@3
    assign i_mul_add16_gaussian11_vt_join_q = {i_mul_add16_gaussian11_vt_select_31_b, i_mul_add16_gaussian11_vt_const_1_q};

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,14)@3
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = i_mul_add16_gaussian11_vt_join_q;
    assign out_c0_exi6_2_tpl = redist0_i_unnamed_gaussian15_q_2_q;
    assign out_c0_exi6_3_tpl = i_notcmp35_gaussian16_q;
    assign out_c0_exi6_4_tpl = i_llvm_fpga_pop_i32_add43_pop11_gaussian22_out_data_out;
    assign out_c0_exi6_5_tpl = redist3_sync_together59_aunroll_x_in_c0_eni2_1_tpl_2_q;
    assign out_c0_exi6_6_tpl = redist4_sync_together59_aunroll_x_in_c0_eni2_2_tpl_2_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian1 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond37_gaussian17(BLACKBOX,52)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond37_0 thei_llvm_fpga_push_i1_notexitcond37_gaussian17 (
        .in_data_in(i_unnamed_gaussian15_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going36_gaussian2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond37_gaussian17_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond37_gaussian17_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going36_gaussian2(BLACKBOX,48)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going36_0 thei_llvm_fpga_pipeline_keep_going36_gaussian2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond37_gaussian17_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond37_gaussian17_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going36_gaussian2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going36_gaussian2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going36_gaussian2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going36_gaussian2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,39)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_gaussian2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going36_gaussian2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going36_gaussian2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going36_gaussian2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,70)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going36_gaussian2_out_pipeline_valid_out;

endmodule
