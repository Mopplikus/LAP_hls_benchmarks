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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond33_preheader_covariances_c0_enter33238_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_cond30000ter33238_covariance0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi15_0_tpl,
    output wire [0:0] out_c0_exi15_1_tpl,
    output wire [0:0] out_c0_exi15_2_tpl,
    output wire [31:0] out_c0_exi15_3_tpl,
    output wire [31:0] out_c0_exi15_4_tpl,
    output wire [31:0] out_c0_exi15_5_tpl,
    output wire [0:0] out_c0_exi15_6_tpl,
    output wire [31:0] out_c0_exi15_7_tpl,
    output wire [0:0] out_c0_exi15_8_tpl,
    output wire [31:0] out_c0_exi15_9_tpl,
    output wire [31:0] out_c0_exi15_10_tpl,
    output wire [32:0] out_c0_exi15_11_tpl,
    output wire [0:0] out_c0_exi15_12_tpl,
    output wire [31:0] out_c0_exi15_13_tpl,
    output wire [31:0] out_c0_exi15_14_tpl,
    output wire [31:0] out_c0_exi15_15_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni8331_0_tpl,
    input wire [32:0] in_c0_eni8331_1_tpl,
    input wire [0:0] in_c0_eni8331_2_tpl,
    input wire [31:0] in_c0_eni8331_3_tpl,
    input wire [31:0] in_c0_eni8331_4_tpl,
    input wire [31:0] in_c0_eni8331_5_tpl,
    input wire [0:0] in_c0_eni8331_6_tpl,
    input wire [31:0] in_c0_eni8331_7_tpl,
    input wire [31:0] in_c0_eni8331_8_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_139_q;
    wire [32:0] c_i33_138_q;
    wire [33:0] i_fpga_indvars_iv_next17_covariance8_a;
    wire [33:0] i_fpga_indvars_iv_next17_covariance8_b;
    logic [33:0] i_fpga_indvars_iv_next17_covariance8_o;
    wire [33:0] i_fpga_indvars_iv_next17_covariance8_q;
    wire [32:0] i_inc56_covariance11_a;
    wire [32:0] i_inc56_covariance11_b;
    logic [32:0] i_inc56_covariance11_o;
    wire [32:0] i_inc56_covariance11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17_out_feedback_stall_out_61;
    wire [31:0] i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19_out_feedback_stall_out_62;
    wire [31:0] i_llvm_fpga_pop_i32_j28_033_pop58_covariance10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j28_033_pop58_covariance10_out_feedback_stall_out_58;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13_out_feedback_stall_out_59;
    wire [31:0] i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15_out_feedback_stall_out_60;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3_out_feedback_stall_out_57;
    wire [0:0] i_llvm_fpga_push_i1_notcmp27102_push61_covariance18_out_feedback_out_61;
    wire [0:0] i_llvm_fpga_push_i1_notcmp27102_push61_covariance18_out_feedback_valid_out_61;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond25_covariance7_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond25_covariance7_out_feedback_valid_out_4;
    wire [31:0] i_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20_out_feedback_out_62;
    wire [0:0] i_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20_out_feedback_valid_out_62;
    wire [31:0] i_llvm_fpga_push_i32_j28_033_push58_covariance12_out_feedback_out_58;
    wire [0:0] i_llvm_fpga_push_i32_j28_033_push58_covariance12_out_feedback_valid_out_58;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext79_push59_covariance14_out_feedback_out_59;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext79_push59_covariance14_out_feedback_valid_out_59;
    wire [31:0] i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16_out_feedback_out_60;
    wire [0:0] i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16_out_feedback_valid_out_60;
    wire [63:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9_out_feedback_out_57;
    wire [0:0] i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9_out_feedback_valid_out_57;
    wire [0:0] i_notcmp22_covariance6_q;
    wire [32:0] bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x_b;
    wire [31:0] bgTrunc_i_inc56_covariance11_sel_x_b;
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
    wire [0:0] i_exitcond18_covariance4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q;
    reg [32:0] redist1_sync_together58_aunroll_x_in_c0_eni8331_1_tpl_1_q;
    reg [0:0] redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q;
    reg [31:0] redist3_sync_together58_aunroll_x_in_c0_eni8331_3_tpl_1_q;
    reg [31:0] redist4_sync_together58_aunroll_x_in_c0_eni8331_4_tpl_1_q;
    reg [31:0] redist5_sync_together58_aunroll_x_in_c0_eni8331_5_tpl_1_q;
    reg [0:0] redist6_sync_together58_aunroll_x_in_c0_eni8331_6_tpl_1_q;
    reg [31:0] redist7_sync_together58_aunroll_x_in_c0_eni8331_7_tpl_1_q;
    reg [31:0] redist8_sync_together58_aunroll_x_in_c0_eni8331_8_tpl_1_q;


    // c_i33_138(CONSTANT,22)
    assign c_i33_138_q = $unsigned(33'b111111111111111111111111111111111);

    // i_fpga_indvars_iv_next17_covariance8(ADD,25)@1
    assign i_fpga_indvars_iv_next17_covariance8_a = {1'b0, i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3_out_data_out};
    assign i_fpga_indvars_iv_next17_covariance8_b = {1'b0, c_i33_138_q};
    assign i_fpga_indvars_iv_next17_covariance8_o = $unsigned(i_fpga_indvars_iv_next17_covariance8_a) + $unsigned(i_fpga_indvars_iv_next17_covariance8_b);
    assign i_fpga_indvars_iv_next17_covariance8_q = i_fpga_indvars_iv_next17_covariance8_o[33:0];

    // bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x(BITSELECT,46)@1
    assign bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x_b = i_fpga_indvars_iv_next17_covariance8_q[32:0];

    // i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9(BLACKBOX,40)@1
    // out out_feedback_out_57@20000000
    // out out_feedback_valid_out_57@20000000
    covariance_i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_0 thei_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next17_covariance8_sel_x_b),
        .in_exitcond18(i_exitcond18_covariance4_cmp_nsign_q),
        .in_feedback_stall_in_57(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3_out_feedback_stall_out_57),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_57(i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9_out_feedback_out_57),
        .out_feedback_valid_out_57(i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9_out_feedback_valid_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3(BLACKBOX,33)@1
    // out out_feedback_stall_out_57@20000000
    covariance_i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_0 thei_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3 (
        .in_data_in(in_c0_eni8331_1_tpl),
        .in_dir(in_c0_eni8331_2_tpl),
        .in_feedback_in_57(i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9_out_feedback_out_57),
        .in_feedback_valid_in_57(i_llvm_fpga_push_i33_fpga_indvars_iv16_push57_covariance9_out_feedback_valid_out_57),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3_out_data_out),
        .out_feedback_stall_out_57(i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3_out_feedback_stall_out_57),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond18_covariance4_cmp_nsign(LOGICAL,65)@1
    assign i_exitcond18_covariance4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i33_fpga_indvars_iv16_pop57_covariance3_out_data_out[32:32]));

    // i_llvm_fpga_push_i1_notexitcond25_covariance7(BLACKBOX,35)@1
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond25_0 thei_llvm_fpga_push_i1_notexitcond25_covariance7 (
        .in_data_in(i_exitcond18_covariance4_cmp_nsign_q),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going24_covariance2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_notexitcond25_covariance7_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_notexitcond25_covariance7_out_feedback_valid_out_4),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going24_covariance2(BLACKBOX,27)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going24_0 thei_llvm_fpga_pipeline_keep_going24_covariance2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond25_covariance7_out_feedback_out_4),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond25_covariance7_out_feedback_valid_out_4),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going24_covariance2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going24_covariance2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going24_covariance2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going24_covariance2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,23)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going24_covariance2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going24_covariance2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going24_covariance2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,44)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going24_covariance2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,51)@1 + 1
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

    // redist5_sync_together58_aunroll_x_in_c0_eni8331_5_tpl_1(DELAY,71)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_sync_together58_aunroll_x_in_c0_eni8331_5_tpl_1_q <= '0;
        end
        else
        begin
            redist5_sync_together58_aunroll_x_in_c0_eni8331_5_tpl_1_q <= $unsigned(in_c0_eni8331_5_tpl);
        end
    end

    // redist4_sync_together58_aunroll_x_in_c0_eni8331_4_tpl_1(DELAY,70)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together58_aunroll_x_in_c0_eni8331_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together58_aunroll_x_in_c0_eni8331_4_tpl_1_q <= $unsigned(in_c0_eni8331_4_tpl);
        end
    end

    // redist3_sync_together58_aunroll_x_in_c0_eni8331_3_tpl_1(DELAY,69)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together58_aunroll_x_in_c0_eni8331_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together58_aunroll_x_in_c0_eni8331_3_tpl_1_q <= $unsigned(in_c0_eni8331_3_tpl);
        end
    end

    // redist6_sync_together58_aunroll_x_in_c0_eni8331_6_tpl_1(DELAY,72)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_sync_together58_aunroll_x_in_c0_eni8331_6_tpl_1_q <= '0;
        end
        else
        begin
            redist6_sync_together58_aunroll_x_in_c0_eni8331_6_tpl_1_q <= $unsigned(in_c0_eni8331_6_tpl);
        end
    end

    // redist1_sync_together58_aunroll_x_in_c0_eni8331_1_tpl_1(DELAY,67)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together58_aunroll_x_in_c0_eni8331_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together58_aunroll_x_in_c0_eni8331_1_tpl_1_q <= $unsigned(in_c0_eni8331_1_tpl);
        end
    end

    // redist8_sync_together58_aunroll_x_in_c0_eni8331_8_tpl_1(DELAY,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_sync_together58_aunroll_x_in_c0_eni8331_8_tpl_1_q <= '0;
        end
        else
        begin
            redist8_sync_together58_aunroll_x_in_c0_eni8331_8_tpl_1_q <= $unsigned(in_c0_eni8331_8_tpl);
        end
    end

    // redist7_sync_together58_aunroll_x_in_c0_eni8331_7_tpl_1(DELAY,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_sync_together58_aunroll_x_in_c0_eni8331_7_tpl_1_q <= '0;
        end
        else
        begin
            redist7_sync_together58_aunroll_x_in_c0_eni8331_7_tpl_1_q <= $unsigned(in_c0_eni8331_7_tpl);
        end
    end

    // redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1(DELAY,68)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q <= $unsigned(in_c0_eni8331_2_tpl);
        end
    end

    // valid_fanout_reg9(REG,60)@1 + 1
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

    // valid_fanout_reg10(REG,61)@1 + 1
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

    // i_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20(BLACKBOX,36)@2
    // out out_feedback_out_62@20000000
    // out out_feedback_valid_out_62@20000000
    covariance_i_llvm_fpga_push_i32_i24_034_pop29104_push62_0 thei_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20 (
        .in_data_in(i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_62(i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19_out_feedback_stall_out_62),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg10_q),
        .out_data_out(),
        .out_feedback_out_62(i_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20_out_feedback_out_62),
        .out_feedback_valid_out_62(i_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20_out_feedback_valid_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19(BLACKBOX,29)@2
    // out out_feedback_stall_out_62@20000000
    covariance_i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_0 thei_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19 (
        .in_data_in(redist3_sync_together58_aunroll_x_in_c0_eni8331_3_tpl_1_q),
        .in_dir(redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q),
        .in_feedback_in_62(i_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20_out_feedback_out_62),
        .in_feedback_valid_in_62(i_llvm_fpga_push_i32_i24_034_pop29104_push62_covariance20_out_feedback_valid_out_62),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg9_q),
        .out_data_out(i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19_out_data_out),
        .out_feedback_stall_out_62(i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19_out_feedback_stall_out_62),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg7(REG,58)@1 + 1
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

    // valid_fanout_reg8(REG,59)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp27102_push61_covariance18(BLACKBOX,34)@2
    // out out_feedback_out_61@20000000
    // out out_feedback_valid_out_61@20000000
    covariance_i_llvm_fpga_push_i1_notcmp27102_push61_0 thei_llvm_fpga_push_i1_notcmp27102_push61_covariance18 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_61(i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17_out_feedback_stall_out_61),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_61(i_llvm_fpga_push_i1_notcmp27102_push61_covariance18_out_feedback_out_61),
        .out_feedback_valid_out_61(i_llvm_fpga_push_i1_notcmp27102_push61_covariance18_out_feedback_valid_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17(BLACKBOX,28)@2
    // out out_feedback_stall_out_61@20000000
    covariance_i_llvm_fpga_pop_i1_notcmp27102_pop61_0 thei_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17 (
        .in_data_in(redist6_sync_together58_aunroll_x_in_c0_eni8331_6_tpl_1_q),
        .in_dir(redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q),
        .in_feedback_in_61(i_llvm_fpga_push_i1_notcmp27102_push61_covariance18_out_feedback_out_61),
        .in_feedback_valid_in_61(i_llvm_fpga_push_i1_notcmp27102_push61_covariance18_out_feedback_valid_out_61),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17_out_data_out),
        .out_feedback_stall_out_61(i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17_out_feedback_stall_out_61),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,56)@1 + 1
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

    // valid_fanout_reg6(REG,57)@1 + 1
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

    // i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16(BLACKBOX,39)@2
    // out out_feedback_out_60@20000000
    // out out_feedback_valid_out_60@20000000
    covariance_i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_0 thei_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16 (
        .in_data_in(i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_60(i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15_out_feedback_stall_out_60),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_60(i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16_out_feedback_out_60),
        .out_feedback_valid_out_60(i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16_out_feedback_valid_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15(BLACKBOX,32)@2
    // out out_feedback_stall_out_60@20000000
    covariance_i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_0 thei_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15 (
        .in_data_in(redist5_sync_together58_aunroll_x_in_c0_eni8331_5_tpl_1_q),
        .in_dir(redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q),
        .in_feedback_in_60(i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16_out_feedback_out_60),
        .in_feedback_valid_in_60(i_llvm_fpga_push_i32_reorder_limiter_enter92_push60_covariance16_out_feedback_valid_out_60),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15_out_data_out),
        .out_feedback_stall_out_60(i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15_out_feedback_stall_out_60),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,54)@1 + 1
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

    // valid_fanout_reg4(REG,55)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext79_push59_covariance14(BLACKBOX,38)@2
    // out out_feedback_out_59@20000000
    // out out_feedback_valid_out_59@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext79_push59_0 thei_llvm_fpga_push_i32_lim_ext79_push59_covariance14 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13_out_data_out),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_59(i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13_out_feedback_stall_out_59),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_59(i_llvm_fpga_push_i32_lim_ext79_push59_covariance14_out_feedback_out_59),
        .out_feedback_valid_out_59(i_llvm_fpga_push_i32_lim_ext79_push59_covariance14_out_feedback_valid_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13(BLACKBOX,31)@2
    // out out_feedback_stall_out_59@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext79_pop59_0 thei_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13 (
        .in_data_in(redist4_sync_together58_aunroll_x_in_c0_eni8331_4_tpl_1_q),
        .in_dir(redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q),
        .in_feedback_in_59(i_llvm_fpga_push_i32_lim_ext79_push59_covariance14_out_feedback_out_59),
        .in_feedback_valid_in_59(i_llvm_fpga_push_i32_lim_ext79_push59_covariance14_out_feedback_valid_out_59),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13_out_data_out),
        .out_feedback_stall_out_59(i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13_out_feedback_stall_out_59),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,52)@1 + 1
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

    // valid_fanout_reg2(REG,53)@1 + 1
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

    // c_i32_139(CONSTANT,21)
    assign c_i32_139_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc56_covariance11(ADD,26)@2
    assign i_inc56_covariance11_a = {1'b0, i_llvm_fpga_pop_i32_j28_033_pop58_covariance10_out_data_out};
    assign i_inc56_covariance11_b = {1'b0, c_i32_139_q};
    assign i_inc56_covariance11_o = $unsigned(i_inc56_covariance11_a) + $unsigned(i_inc56_covariance11_b);
    assign i_inc56_covariance11_q = i_inc56_covariance11_o[32:0];

    // bgTrunc_i_inc56_covariance11_sel_x(BITSELECT,47)@2
    assign bgTrunc_i_inc56_covariance11_sel_x_b = i_inc56_covariance11_q[31:0];

    // i_llvm_fpga_push_i32_j28_033_push58_covariance12(BLACKBOX,37)@2
    // out out_feedback_out_58@20000000
    // out out_feedback_valid_out_58@20000000
    covariance_i_llvm_fpga_push_i32_j28_033_push58_0 thei_llvm_fpga_push_i32_j28_033_push58_covariance12 (
        .in_data_in(bgTrunc_i_inc56_covariance11_sel_x_b),
        .in_exitcond18(redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_58(i_llvm_fpga_pop_i32_j28_033_pop58_covariance10_out_feedback_stall_out_58),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_58(i_llvm_fpga_push_i32_j28_033_push58_covariance12_out_feedback_out_58),
        .out_feedback_valid_out_58(i_llvm_fpga_push_i32_j28_033_push58_covariance12_out_feedback_valid_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_j28_033_pop58_covariance10(BLACKBOX,30)@2
    // out out_feedback_stall_out_58@20000000
    covariance_i_llvm_fpga_pop_i32_j28_033_pop58_0 thei_llvm_fpga_pop_i32_j28_033_pop58_covariance10 (
        .in_data_in(redist3_sync_together58_aunroll_x_in_c0_eni8331_3_tpl_1_q),
        .in_dir(redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q),
        .in_feedback_in_58(i_llvm_fpga_push_i32_j28_033_push58_covariance12_out_feedback_out_58),
        .in_feedback_valid_in_58(i_llvm_fpga_push_i32_j28_033_push58_covariance12_out_feedback_valid_out_58),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j28_033_pop58_covariance10_out_data_out),
        .out_feedback_stall_out_58(i_llvm_fpga_pop_i32_j28_033_pop58_covariance10_out_feedback_stall_out_58),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp22_covariance6(LOGICAL,41)@2
    assign i_notcmp22_covariance6_q = redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond18_covariance4_cmp_nsign_q_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q <= $unsigned(i_exitcond18_covariance4_cmp_nsign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,49)@2
    assign out_c0_exi15_0_tpl = GND_q;
    assign out_c0_exi15_1_tpl = redist0_i_exitcond18_covariance4_cmp_nsign_q_1_q;
    assign out_c0_exi15_2_tpl = i_notcmp22_covariance6_q;
    assign out_c0_exi15_3_tpl = i_llvm_fpga_pop_i32_j28_033_pop58_covariance10_out_data_out;
    assign out_c0_exi15_4_tpl = i_llvm_fpga_pop_i32_lim_ext79_pop59_covariance13_out_data_out;
    assign out_c0_exi15_5_tpl = i_llvm_fpga_pop_i32_reorder_limiter_enter92_pop60_covariance15_out_data_out;
    assign out_c0_exi15_6_tpl = i_llvm_fpga_pop_i1_notcmp27102_pop61_covariance17_out_data_out;
    assign out_c0_exi15_7_tpl = i_llvm_fpga_pop_i32_i24_034_pop29104_pop62_covariance19_out_data_out;
    assign out_c0_exi15_8_tpl = redist2_sync_together58_aunroll_x_in_c0_eni8331_2_tpl_1_q;
    assign out_c0_exi15_9_tpl = redist7_sync_together58_aunroll_x_in_c0_eni8331_7_tpl_1_q;
    assign out_c0_exi15_10_tpl = redist8_sync_together58_aunroll_x_in_c0_eni8331_8_tpl_1_q;
    assign out_c0_exi15_11_tpl = redist1_sync_together58_aunroll_x_in_c0_eni8331_1_tpl_1_q;
    assign out_c0_exi15_12_tpl = redist6_sync_together58_aunroll_x_in_c0_eni8331_6_tpl_1_q;
    assign out_c0_exi15_13_tpl = redist3_sync_together58_aunroll_x_in_c0_eni8331_3_tpl_1_q;
    assign out_c0_exi15_14_tpl = redist4_sync_together58_aunroll_x_in_c0_eni8331_4_tpl_1_q;
    assign out_c0_exi15_15_tpl = redist5_sync_together58_aunroll_x_in_c0_eni8331_5_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

endmodule
