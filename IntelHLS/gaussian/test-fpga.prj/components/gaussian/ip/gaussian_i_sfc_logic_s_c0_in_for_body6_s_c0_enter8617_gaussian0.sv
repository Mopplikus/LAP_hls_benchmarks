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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body6_gaussians_c0_enter8617_gaussian0
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_i_sfc_logic_s_c0_in_for_body6_s_c0_enter8617_gaussian0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi17_0_tpl,
    output wire [0:0] out_c0_exi17_1_tpl,
    output wire [0:0] out_c0_exi17_2_tpl,
    output wire [0:0] out_c0_exi17_3_tpl,
    output wire [31:0] out_c0_exi17_4_tpl,
    output wire [0:0] out_c0_exi17_5_tpl,
    output wire [31:0] out_c0_exi17_6_tpl,
    output wire [31:0] out_c0_exi17_7_tpl,
    output wire [31:0] out_c0_exi17_8_tpl,
    output wire [31:0] out_c0_exi17_9_tpl,
    output wire [0:0] out_c0_exi17_10_tpl,
    output wire [31:0] out_c0_exi17_11_tpl,
    output wire [31:0] out_c0_exi17_12_tpl,
    output wire [31:0] out_c0_exi17_13_tpl,
    output wire [0:0] out_c0_exi17_14_tpl,
    output wire [32:0] out_c0_exi17_15_tpl,
    output wire [31:0] out_c0_exi17_16_tpl,
    output wire [0:0] out_c0_exi17_17_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_gaussian0,
    input wire [0:0] in_c0_eni8_0_tpl,
    input wire [32:0] in_c0_eni8_1_tpl,
    input wire [0:0] in_c0_eni8_2_tpl,
    input wire [0:0] in_c0_eni8_3_tpl,
    input wire [31:0] in_c0_eni8_4_tpl,
    input wire [0:0] in_c0_eni8_5_tpl,
    input wire [31:0] in_c0_eni8_6_tpl,
    input wire [31:0] in_c0_eni8_7_tpl,
    input wire [31:0] in_c0_eni8_8_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_148_q;
    wire [32:0] c_i33_147_q;
    wire [33:0] i_fpga_indvars_iv_next12_gaussian11_a;
    wire [33:0] i_fpga_indvars_iv_next12_gaussian11_b;
    logic [33:0] i_fpga_indvars_iv_next12_gaussian11_o;
    wire [33:0] i_fpga_indvars_iv_next12_gaussian11_q;
    wire [32:0] i_inc24_gaussian14_a;
    wire [32:0] i_inc24_gaussian14_b;
    logic [32:0] i_inc24_gaussian14_o;
    wire [32:0] i_inc24_gaussian14_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16_out_feedback_stall_out_11;
    wire [31:0] i_llvm_fpga_pop_i32_add36_pop15_gaussian24_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_add36_pop15_gaussian24_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20_out_feedback_stall_out_13;
    wire [31:0] i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18_out_feedback_stall_out_12;
    wire [31:0] i_llvm_fpga_pop_i32_i_017_pop9_gaussian13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_017_pop9_gaussian13_out_feedback_stall_out_9;
    wire [31:0] i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22_out_feedback_stall_out_14;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_cmp41638_push16_gaussian8_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_cmp41638_push16_gaussian8_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17_out_feedback_out_11;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17_out_feedback_valid_out_11;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond20_gaussian10_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond20_gaussian10_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_add36_push15_gaussian25_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_add36_push15_gaussian25_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21_out_feedback_out_13;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21_out_feedback_valid_out_13;
    wire [31:0] i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19_out_feedback_out_12;
    wire [0:0] i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19_out_feedback_valid_out_12;
    wire [31:0] i_llvm_fpga_push_i32_i_017_push9_gaussian15_out_feedback_out_9;
    wire [0:0] i_llvm_fpga_push_i32_i_017_push9_gaussian15_out_feedback_valid_out_9;
    wire [31:0] i_llvm_fpga_push_i32_j_01834_push14_gaussian23_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i32_j_01834_push14_gaussian23_out_feedback_valid_out_14;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12_out_feedback_valid_out_8;
    wire [0:0] i_notcmp17_gaussian9_q;
    wire [0:0] i_unnamed_gaussian7_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next12_gaussian11_sel_x_b;
    wire [31:0] bgTrunc_i_inc24_gaussian14_sel_x_b;
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
    wire [0:0] i_exitcond13_gaussian4_cmp_nsign_q;
    reg [32:0] redist0_sync_together71_aunroll_x_in_c0_eni8_1_tpl_1_q;
    reg [0:0] redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q;
    reg [0:0] redist2_sync_together71_aunroll_x_in_c0_eni8_3_tpl_1_q;
    reg [31:0] redist3_sync_together71_aunroll_x_in_c0_eni8_4_tpl_1_q;
    reg [0:0] redist4_sync_together71_aunroll_x_in_c0_eni8_5_tpl_1_q;
    reg [31:0] redist5_sync_together71_aunroll_x_in_c0_eni8_6_tpl_1_q;
    reg [31:0] redist6_sync_together71_aunroll_x_in_c0_eni8_7_tpl_1_q;
    reg [31:0] redist7_sync_together71_aunroll_x_in_c0_eni8_8_tpl_1_q;
    reg [0:0] redist8_i_unnamed_gaussian7_q_1_q;
    reg [0:0] redist9_i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out_1_q;


    // c_i33_147(CONSTANT,26)
    assign c_i33_147_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next12_gaussian11(ADD,29)@1
    assign i_fpga_indvars_iv_next12_gaussian11_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3_out_data_out};
    assign i_fpga_indvars_iv_next12_gaussian11_b = {1'b0, c_i33_147_q};
    assign i_fpga_indvars_iv_next12_gaussian11_o = $unsigned(i_fpga_indvars_iv_next12_gaussian11_a) + $unsigned(i_fpga_indvars_iv_next12_gaussian11_b);
    assign i_fpga_indvars_iv_next12_gaussian11_q = i_fpga_indvars_iv_next12_gaussian11_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next12_gaussian11_sel_x(BITSELECT,55)@1
    assign bgTrunc_i_fpga_indvars_iv_next12_gaussian11_sel_x_b = i_fpga_indvars_iv_next12_gaussian11_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12(BLACKBOX,48)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    gaussian_i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_0 thei_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_gaussian11_sel_x_b),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3_out_feedback_stall_out_8),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(i_unnamed_gaussian7_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3(BLACKBOX,39)@1
    // out out_feedback_stall_out_8@20000000
    gaussian_i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3 (
        .in_data_in(in_c0_eni8_1_tpl),
        .in_dir(in_c0_eni8_2_tpl),
        .in_feedback_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i33_fpga_indvars_iv11_push8_gaussian12_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_gaussian4_cmp_nsign(LOGICAL,76)@1
    assign i_exitcond13_gaussian4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv11_pop8_gaussian3_out_data_out[32:32]));

    // i_llvm_fpga_push_i1_cmp41638_push16_gaussian8(BLACKBOX,40)@1
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    gaussian_i_llvm_fpga_push_i1_cmp41638_push16_0 thei_llvm_fpga_push_i1_cmp41638_push16_gaussian8 (
        .in_data_in(i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(i_unnamed_gaussian7_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_cmp41638_push16_gaussian8_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_cmp41638_push16_gaussian8_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6(BLACKBOX,32)@1
    // out out_feedback_stall_out_16@20000000
    gaussian_i_llvm_fpga_pop_i1_cmp41638_pop16_0 thei_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6 (
        .in_data_in(in_c0_eni8_3_tpl),
        .in_dir(in_c0_eni8_2_tpl),
        .in_feedback_in_16(i_llvm_fpga_push_i1_cmp41638_push16_gaussian8_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_cmp41638_push16_gaussian8_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_unnamed_gaussian7(LOGICAL,50)@1
    assign i_unnamed_gaussian7_q = i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out & i_exitcond13_gaussian4_cmp_nsign_q;

    // i_llvm_fpga_push_i1_notexitcond20_gaussian10(BLACKBOX,42)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    gaussian_i_llvm_fpga_push_i1_notexitcond20_0 thei_llvm_fpga_push_i1_notexitcond20_gaussian10 (
        .in_data_in(i_unnamed_gaussian7_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going19_gaussian2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond20_gaussian10_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond20_gaussian10_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going19_gaussian2(BLACKBOX,31)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    gaussian_i_llvm_fpga_pipeline_keep_going19_0 thei_llvm_fpga_pipeline_keep_going19_gaussian2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond20_gaussian10_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond20_gaussian10_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going19_gaussian2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going19_gaussian2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going19_gaussian2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going19_gaussian2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,27)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going19_gaussian2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going19_gaussian2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going19_gaussian2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,53)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going19_gaussian2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,60)@1 + 1
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

    // redist2_sync_together71_aunroll_x_in_c0_eni8_3_tpl_1(DELAY,79)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together71_aunroll_x_in_c0_eni8_3_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together71_aunroll_x_in_c0_eni8_3_tpl_1_q <= $unsigned(in_c0_eni8_3_tpl);
        end
    end

    // redist3_sync_together71_aunroll_x_in_c0_eni8_4_tpl_1(DELAY,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together71_aunroll_x_in_c0_eni8_4_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together71_aunroll_x_in_c0_eni8_4_tpl_1_q <= $unsigned(in_c0_eni8_4_tpl);
        end
    end

    // redist0_sync_together71_aunroll_x_in_c0_eni8_1_tpl_1(DELAY,77)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_sync_together71_aunroll_x_in_c0_eni8_1_tpl_1_q <= '0;
        end
        else
        begin
            redist0_sync_together71_aunroll_x_in_c0_eni8_1_tpl_1_q <= $unsigned(in_c0_eni8_1_tpl);
        end
    end

    // redist4_sync_together71_aunroll_x_in_c0_eni8_5_tpl_1(DELAY,81)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together71_aunroll_x_in_c0_eni8_5_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together71_aunroll_x_in_c0_eni8_5_tpl_1_q <= $unsigned(in_c0_eni8_5_tpl);
        end
    end

    // redist7_sync_together71_aunroll_x_in_c0_eni8_8_tpl_1(DELAY,84)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together71_aunroll_x_in_c0_eni8_8_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together71_aunroll_x_in_c0_eni8_8_tpl_1_q <= $unsigned(in_c0_eni8_8_tpl);
        end
    end

    // redist6_sync_together71_aunroll_x_in_c0_eni8_7_tpl_1(DELAY,83)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together71_aunroll_x_in_c0_eni8_7_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together71_aunroll_x_in_c0_eni8_7_tpl_1_q <= $unsigned(in_c0_eni8_7_tpl);
        end
    end

    // redist5_sync_together71_aunroll_x_in_c0_eni8_6_tpl_1(DELAY,82)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together71_aunroll_x_in_c0_eni8_6_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together71_aunroll_x_in_c0_eni8_6_tpl_1_q <= $unsigned(in_c0_eni8_6_tpl);
        end
    end

    // redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1(DELAY,78)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q <= $unsigned(in_c0_eni8_2_tpl);
        end
    end

    // valid_fanout_reg11(REG,71)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg11_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg11_q <= $unsigned(in_i_valid);
        end
    end

    // valid_fanout_reg12(REG,72)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg12_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg12_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_add36_push15_gaussian25(BLACKBOX,43)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    gaussian_i_llvm_fpga_push_i32_add36_push15_0 thei_llvm_fpga_push_i32_add36_push15_gaussian25 (
        .in_data_in(i_llvm_fpga_pop_i32_add36_pop15_gaussian24_out_data_out),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_add36_pop15_gaussian24_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(redist8_i_unnamed_gaussian7_q_1_q),
        .in_valid_in(valid_fanout_reg12_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_add36_push15_gaussian25_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_add36_push15_gaussian25_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_add36_pop15_gaussian24(BLACKBOX,34)@2
    // out out_feedback_stall_out_15@20000000
    gaussian_i_llvm_fpga_pop_i32_add36_pop15_0 thei_llvm_fpga_pop_i32_add36_pop15_gaussian24 (
        .in_data_in(redist3_sync_together71_aunroll_x_in_c0_eni8_4_tpl_1_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_add36_push15_gaussian25_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_add36_push15_gaussian25_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg11_q),
        .out_data_out(i_llvm_fpga_pop_i32_add36_pop15_gaussian24_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_add36_pop15_gaussian24_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg9(REG,69)@1 + 1
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

    // valid_fanout_reg10(REG,70)@1 + 1
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            valid_fanout_reg10_q <= $unsigned(1'b0);
        end
        else
        begin
            valid_fanout_reg10_q <= $unsigned(in_i_valid);
        end
    end

    // i_llvm_fpga_push_i32_j_01834_push14_gaussian23(BLACKBOX,47)@2
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    gaussian_i_llvm_fpga_push_i32_j_01834_push14_0 thei_llvm_fpga_push_i32_j_01834_push14_gaussian23 (
        .in_data_in(i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22_out_data_out),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(redist8_i_unnamed_gaussian7_q_1_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i32_j_01834_push14_gaussian23_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i32_j_01834_push14_gaussian23_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22(BLACKBOX,38)@2
    // out out_feedback_stall_out_14@20000000
    gaussian_i_llvm_fpga_pop_i32_j_01834_pop14_0 thei_llvm_fpga_pop_i32_j_01834_pop14_gaussian22 (
        .in_data_in(redist7_sync_together71_aunroll_x_in_c0_eni8_8_tpl_1_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i32_j_01834_push14_gaussian23_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i32_j_01834_push14_gaussian23_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,67)@1 + 1
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

    // valid_fanout_reg8(REG,68)@1 + 1
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

    // i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21(BLACKBOX,44)@2
    // out out_feedback_out_13@20000000
    // out out_feedback_valid_out_13@20000000
    gaussian_i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_0 thei_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21 (
        .in_data_in(i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20_out_data_out),
        .in_feedback_stall_in_13(i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20_out_feedback_stall_out_13),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(redist8_i_unnamed_gaussian7_q_1_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_13(i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21_out_feedback_out_13),
        .out_feedback_valid_out_13(i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21_out_feedback_valid_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20(BLACKBOX,35)@2
    // out out_feedback_stall_out_13@20000000
    gaussian_i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_0 thei_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20 (
        .in_data_in(redist6_sync_together71_aunroll_x_in_c0_eni8_7_tpl_1_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_feedback_in_13(i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21_out_feedback_out_13),
        .in_feedback_valid_in_13(i_llvm_fpga_push_i32_fpga_indvars_iv732_push13_gaussian21_out_feedback_valid_out_13),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20_out_feedback_stall_out_13),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,65)@1 + 1
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

    // valid_fanout_reg6(REG,66)@1 + 1
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

    // i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19(BLACKBOX,45)@2
    // out out_feedback_out_12@20000000
    // out out_feedback_valid_out_12@20000000
    gaussian_i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_0 thei_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19 (
        .in_data_in(i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18_out_data_out),
        .in_feedback_stall_in_12(i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18_out_feedback_stall_out_12),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(redist8_i_unnamed_gaussian7_q_1_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_12(i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19_out_feedback_out_12),
        .out_feedback_valid_out_12(i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19_out_feedback_valid_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18(BLACKBOX,36)@2
    // out out_feedback_stall_out_12@20000000
    gaussian_i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_0 thei_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18 (
        .in_data_in(redist5_sync_together71_aunroll_x_in_c0_eni8_6_tpl_1_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_feedback_in_12(i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19_out_feedback_out_12),
        .in_feedback_valid_in_12(i_llvm_fpga_push_i32_fpga_indvars_iv930_push12_gaussian19_out_feedback_valid_out_12),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18_out_feedback_stall_out_12),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,63)@1 + 1
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

    // valid_fanout_reg4(REG,64)@1 + 1
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

    // i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17(BLACKBOX,41)@2
    // out out_feedback_out_11@20000000
    // out out_feedback_valid_out_11@20000000
    gaussian_i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_0 thei_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17 (
        .in_data_in(i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16_out_data_out),
        .in_feedback_stall_in_11(i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16_out_feedback_stall_out_11),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(redist8_i_unnamed_gaussian7_q_1_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_11(i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17_out_feedback_out_11),
        .out_feedback_valid_out_11(i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17_out_feedback_valid_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16(BLACKBOX,33)@2
    // out out_feedback_stall_out_11@20000000
    gaussian_i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16 (
        .in_data_in(redist4_sync_together71_aunroll_x_in_c0_eni8_5_tpl_1_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_feedback_in_11(i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17_out_feedback_out_11),
        .in_feedback_valid_in_11(i_llvm_fpga_push_i1_memdep_phi4_pop727_push11_gaussian17_out_feedback_valid_out_11),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16_out_feedback_stall_out_11),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,61)@1 + 1
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

    // valid_fanout_reg2(REG,62)@1 + 1
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

    // c_i32_148(CONSTANT,25)
    assign c_i32_148_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc24_gaussian14(ADD,30)@2
    assign i_inc24_gaussian14_a = {1'b0, i_llvm_fpga_pop_i32_i_017_pop9_gaussian13_out_data_out};
    assign i_inc24_gaussian14_b = {1'b0, c_i32_148_q};
    assign i_inc24_gaussian14_o = $unsigned(i_inc24_gaussian14_a) + $unsigned(i_inc24_gaussian14_b);
    assign i_inc24_gaussian14_q = i_inc24_gaussian14_o[32:0];

    // bgTrunc_i_inc24_gaussian14_sel_x(BITSELECT,56)@2
    assign bgTrunc_i_inc24_gaussian14_sel_x_b = i_inc24_gaussian14_q[31:0];

    // i_llvm_fpga_push_i32_i_017_push9_gaussian15(BLACKBOX,46)@2
    // out out_feedback_out_9@20000000
    // out out_feedback_valid_out_9@20000000
    gaussian_i_llvm_fpga_push_i32_i_017_push9_0 thei_llvm_fpga_push_i32_i_017_push9_gaussian15 (
        .in_data_in(bgTrunc_i_inc24_gaussian14_sel_x_b),
        .in_feedback_stall_in_9(i_llvm_fpga_pop_i32_i_017_pop9_gaussian13_out_feedback_stall_out_9),
        .in_stall_in(GND_q),
        .in_unnamed_gaussian7(redist8_i_unnamed_gaussian7_q_1_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_9(i_llvm_fpga_push_i32_i_017_push9_gaussian15_out_feedback_out_9),
        .out_feedback_valid_out_9(i_llvm_fpga_push_i32_i_017_push9_gaussian15_out_feedback_valid_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i_017_pop9_gaussian13(BLACKBOX,37)@2
    // out out_feedback_stall_out_9@20000000
    gaussian_i_llvm_fpga_pop_i32_i_017_pop9_0 thei_llvm_fpga_pop_i32_i_017_pop9_gaussian13 (
        .in_data_in(redist3_sync_together71_aunroll_x_in_c0_eni8_4_tpl_1_q),
        .in_dir(redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q),
        .in_feedback_in_9(i_llvm_fpga_push_i32_i_017_push9_gaussian15_out_feedback_out_9),
        .in_feedback_valid_in_9(i_llvm_fpga_push_i32_i_017_push9_gaussian15_out_feedback_valid_out_9),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_017_pop9_gaussian13_out_data_out),
        .out_feedback_stall_out_9(i_llvm_fpga_pop_i32_i_017_pop9_gaussian13_out_feedback_stall_out_9),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp17_gaussian9(LOGICAL,49)@2
    assign i_notcmp17_gaussian9_q = redist8_i_unnamed_gaussian7_q_1_q ^ VCC_q;

    // redist8_i_unnamed_gaussian7_q_1(DELAY,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_unnamed_gaussian7_q_1_q <= '0;
        end
        else
        begin
            redist8_i_unnamed_gaussian7_q_1_q <= $unsigned(i_unnamed_gaussian7_q);
        end
    end

    // redist9_i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out_1(DELAY,86)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out_1_q <= '0;
        end
        else
        begin
            redist9_i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out_1_q <= $unsigned(i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out);
        end
    end

    // sync_out_aunroll_x(GPOUT,58)@2
    assign out_c0_exi17_0_tpl = GND_q;
    assign out_c0_exi17_1_tpl = redist9_i_llvm_fpga_pop_i1_cmp41638_pop16_gaussian6_out_data_out_1_q;
    assign out_c0_exi17_2_tpl = redist8_i_unnamed_gaussian7_q_1_q;
    assign out_c0_exi17_3_tpl = i_notcmp17_gaussian9_q;
    assign out_c0_exi17_4_tpl = i_llvm_fpga_pop_i32_i_017_pop9_gaussian13_out_data_out;
    assign out_c0_exi17_5_tpl = i_llvm_fpga_pop_i1_memdep_phi4_pop727_pop11_gaussian16_out_data_out;
    assign out_c0_exi17_6_tpl = i_llvm_fpga_pop_i32_fpga_indvars_iv930_pop12_gaussian18_out_data_out;
    assign out_c0_exi17_7_tpl = i_llvm_fpga_pop_i32_fpga_indvars_iv732_pop13_gaussian20_out_data_out;
    assign out_c0_exi17_8_tpl = i_llvm_fpga_pop_i32_j_01834_pop14_gaussian22_out_data_out;
    assign out_c0_exi17_9_tpl = i_llvm_fpga_pop_i32_add36_pop15_gaussian24_out_data_out;
    assign out_c0_exi17_10_tpl = redist1_sync_together71_aunroll_x_in_c0_eni8_2_tpl_1_q;
    assign out_c0_exi17_11_tpl = redist5_sync_together71_aunroll_x_in_c0_eni8_6_tpl_1_q;
    assign out_c0_exi17_12_tpl = redist6_sync_together71_aunroll_x_in_c0_eni8_7_tpl_1_q;
    assign out_c0_exi17_13_tpl = redist7_sync_together71_aunroll_x_in_c0_eni8_8_tpl_1_q;
    assign out_c0_exi17_14_tpl = redist4_sync_together71_aunroll_x_in_c0_eni8_5_tpl_1_q;
    assign out_c0_exi17_15_tpl = redist0_sync_together71_aunroll_x_in_c0_eni8_1_tpl_1_q;
    assign out_c0_exi17_16_tpl = redist3_sync_together71_aunroll_x_in_c0_eni8_4_tpl_1_q;
    assign out_c0_exi17_17_tpl = redist2_sync_together71_aunroll_x_in_c0_eni8_3_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_gaussian0 = GND_q;

endmodule
