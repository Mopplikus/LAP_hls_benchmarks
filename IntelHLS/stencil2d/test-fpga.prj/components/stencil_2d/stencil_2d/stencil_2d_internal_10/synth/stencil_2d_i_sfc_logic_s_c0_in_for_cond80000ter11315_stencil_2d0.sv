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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond8_preheader_stencil_2ds_c0_enter11315_stencil_2d0
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_i_sfc_logic_s_c0_in_for_cond80000ter11315_stencil_2d0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi9_0_tpl,
    output wire [0:0] out_c0_exi9_1_tpl,
    output wire [0:0] out_c0_exi9_2_tpl,
    output wire [31:0] out_c0_exi9_3_tpl,
    output wire [31:0] out_c0_exi9_4_tpl,
    output wire [31:0] out_c0_exi9_5_tpl,
    output wire [0:0] out_c0_exi9_6_tpl,
    output wire [31:0] out_c0_exi9_7_tpl,
    output wire [31:0] out_c0_exi9_8_tpl,
    output wire [0:0] out_c0_exi9_9_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_stencil_2d1,
    input wire [0:0] in_c0_eni4_0_tpl,
    input wire [0:0] in_c0_eni4_1_tpl,
    input wire [31:0] in_c0_eni4_2_tpl,
    input wire [31:0] in_c0_eni4_3_tpl,
    input wire [0:0] in_c0_eni4_4_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_036_q;
    wire [31:0] c_i32_137_q;
    wire [5:0] c_i6_135_q;
    wire [5:0] c_i6_2633_q;
    wire [6:0] i_fpga_indvars_iv_next5_stencil_2d8_a;
    wire [6:0] i_fpga_indvars_iv_next5_stencil_2d8_b;
    logic [6:0] i_fpga_indvars_iv_next5_stencil_2d8_o;
    wire [6:0] i_fpga_indvars_iv_next5_stencil_2d8_q;
    wire [32:0] i_inc33_stencil_2d11_a;
    wire [32:0] i_inc33_stencil_2d11_b;
    logic [32:0] i_inc33_stencil_2d11_o;
    wire [32:0] i_inc33_stencil_2d11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17_out_feedback_stall_out_18;
    wire [31:0] i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10_out_feedback_stall_out_15;
    wire [31:0] i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15_out_feedback_stall_out_17;
    wire [31:0] i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13_out_feedback_stall_out_16;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_stencil_2d7_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond22_stencil_2d7_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_c_025_push15_stencil_2d12_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_c_025_push15_stencil_2d12_out_feedback_valid_out_15;
    wire [31:0] i_llvm_fpga_push_i32_mul2839_push17_stencil_2d16_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_mul2839_push17_stencil_2d16_out_feedback_valid_out_17;
    wire [31:0] i_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14_out_feedback_valid_out_16;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9_out_feedback_valid_out_14;
    wire [0:0] i_notcmp19_stencil_2d6_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next5_stencil_2d8_sel_x_b;
    wire [31:0] bgTrunc_i_inc33_stencil_2d11_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg5_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg7_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg8_q;
    wire [0:0] i_exitcond6_stencil_2d4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1_q;
    reg [31:0] redist2_sync_together53_aunroll_x_in_c0_eni4_2_tpl_1_q;
    reg [31:0] redist3_sync_together53_aunroll_x_in_c0_eni4_3_tpl_1_q;
    reg [0:0] redist4_sync_together53_aunroll_x_in_c0_eni4_4_tpl_1_q;


    // c_i6_135(CONSTANT,21)
    assign c_i6_135_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next5_stencil_2d8(ADD,25)@1
    assign i_fpga_indvars_iv_next5_stencil_2d8_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3_out_data_out};
    assign i_fpga_indvars_iv_next5_stencil_2d8_b = {1'b0, c_i6_135_q};
    assign i_fpga_indvars_iv_next5_stencil_2d8_o = $unsigned(i_fpga_indvars_iv_next5_stencil_2d8_a) + $unsigned(i_fpga_indvars_iv_next5_stencil_2d8_b);
    assign i_fpga_indvars_iv_next5_stencil_2d8_q = i_fpga_indvars_iv_next5_stencil_2d8_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next5_stencil_2d8_sel_x(BITSELECT,44)@1
    assign bgTrunc_i_fpga_indvars_iv_next5_stencil_2d8_sel_x_b = i_fpga_indvars_iv_next5_stencil_2d8_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9(BLACKBOX,38)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    stencil_2d_i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_0 thei_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next5_stencil_2d8_sel_x_b),
        .in_exitcond6(i_exitcond6_stencil_2d4_cmp_nsign_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3_out_feedback_stall_out_14),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2633(CONSTANT,22)
    assign c_i6_2633_q = $unsigned(6'b011010);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3(BLACKBOX,32)@1
    // out out_feedback_stall_out_14@20000000
    stencil_2d_i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3 (
        .in_data_in(c_i6_2633_q),
        .in_dir(in_c0_eni4_1_tpl),
        .in_feedback_in_14(i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i6_fpga_indvars_iv4_push14_stencil_2d9_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3_out_feedback_stall_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond6_stencil_2d4_cmp_nsign(LOGICAL,61)@1
    assign i_exitcond6_stencil_2d4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv4_pop14_stencil_2d3_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond22_stencil_2d7(BLACKBOX,34)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    stencil_2d_i_llvm_fpga_push_i1_notexitcond22_0 thei_llvm_fpga_push_i1_notexitcond22_stencil_2d7 (
        .in_data_in(i_exitcond6_stencil_2d4_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond22_stencil_2d7_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond22_stencil_2d7_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going21_stencil_2d2(BLACKBOX,27)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    stencil_2d_i_llvm_fpga_pipeline_keep_going21_0 thei_llvm_fpga_pipeline_keep_going21_stencil_2d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond22_stencil_2d7_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond22_stencil_2d7_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,23)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going21_stencil_2d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,42)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going21_stencil_2d2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,49)@1 + 1
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

    // redist4_sync_together53_aunroll_x_in_c0_eni4_4_tpl_1(DELAY,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist4_sync_together53_aunroll_x_in_c0_eni4_4_tpl_1_q <= '0;
        end
        else
        begin
            redist4_sync_together53_aunroll_x_in_c0_eni4_4_tpl_1_q <= $unsigned(in_c0_eni4_4_tpl);
        end
    end

    // redist3_sync_together53_aunroll_x_in_c0_eni4_3_tpl_1(DELAY,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist3_sync_together53_aunroll_x_in_c0_eni4_3_tpl_1_q <= '0;
        end
        else
        begin
            redist3_sync_together53_aunroll_x_in_c0_eni4_3_tpl_1_q <= $unsigned(in_c0_eni4_3_tpl);
        end
    end

    // redist2_sync_together53_aunroll_x_in_c0_eni4_2_tpl_1(DELAY,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together53_aunroll_x_in_c0_eni4_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together53_aunroll_x_in_c0_eni4_2_tpl_1_q <= $unsigned(in_c0_eni4_2_tpl);
        end
    end

    // valid_fanout_reg7(REG,56)@1 + 1
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

    // valid_fanout_reg8(REG,57)@1 + 1
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

    // i_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18(BLACKBOX,33)@2
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    stencil_2d_i_llvm_fpga_push_i1_notcmp2442_push18_0 thei_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18 (
        .in_data_in(i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17_out_data_out),
        .in_exitcond6(redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg8_q),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1(DELAY,63)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1_q <= $unsigned(in_c0_eni4_1_tpl);
        end
    end

    // i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17(BLACKBOX,28)@2
    // out out_feedback_stall_out_18@20000000
    stencil_2d_i_llvm_fpga_pop_i1_notcmp2442_pop18_0 thei_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17 (
        .in_data_in(redist4_sync_together53_aunroll_x_in_c0_eni4_4_tpl_1_q),
        .in_dir(redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i1_notcmp2442_push18_stencil_2d18_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg7_q),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg5(REG,54)@1 + 1
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

    // valid_fanout_reg6(REG,55)@1 + 1
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

    // i_llvm_fpga_push_i32_mul2839_push17_stencil_2d16(BLACKBOX,36)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    stencil_2d_i_llvm_fpga_push_i32_mul2839_push17_0 thei_llvm_fpga_push_i32_mul2839_push17_stencil_2d16 (
        .in_data_in(i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15_out_data_out),
        .in_exitcond6(redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg6_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_mul2839_push17_stencil_2d16_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_mul2839_push17_stencil_2d16_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15(BLACKBOX,30)@2
    // out out_feedback_stall_out_17@20000000
    stencil_2d_i_llvm_fpga_pop_i32_mul2839_pop17_0 thei_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15 (
        .in_data_in(redist3_sync_together53_aunroll_x_in_c0_eni4_3_tpl_1_q),
        .in_dir(redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_mul2839_push17_stencil_2d16_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_mul2839_push17_stencil_2d16_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg5_q),
        .out_data_out(i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg3(REG,52)@1 + 1
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

    // valid_fanout_reg4(REG,53)@1 + 1
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

    // i_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14(BLACKBOX,37)@2
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    stencil_2d_i_llvm_fpga_push_i32_r_026_pop1336_push16_0 thei_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14 (
        .in_data_in(i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13_out_data_out),
        .in_exitcond6(redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13(BLACKBOX,31)@2
    // out out_feedback_stall_out_16@20000000
    stencil_2d_i_llvm_fpga_pop_i32_r_026_pop1336_pop16_0 thei_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13 (
        .in_data_in(redist2_sync_together53_aunroll_x_in_c0_eni4_2_tpl_1_q),
        .in_dir(redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i32_r_026_pop1336_push16_stencil_2d14_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,50)@1 + 1
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

    // valid_fanout_reg2(REG,51)@1 + 1
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

    // c_i32_137(CONSTANT,20)
    assign c_i32_137_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc33_stencil_2d11(ADD,26)@2
    assign i_inc33_stencil_2d11_a = {1'b0, i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10_out_data_out};
    assign i_inc33_stencil_2d11_b = {1'b0, c_i32_137_q};
    assign i_inc33_stencil_2d11_o = $unsigned(i_inc33_stencil_2d11_a) + $unsigned(i_inc33_stencil_2d11_b);
    assign i_inc33_stencil_2d11_q = i_inc33_stencil_2d11_o[32:0];

    // bgTrunc_i_inc33_stencil_2d11_sel_x(BITSELECT,45)@2
    assign bgTrunc_i_inc33_stencil_2d11_sel_x_b = i_inc33_stencil_2d11_q[31:0];

    // i_llvm_fpga_push_i32_c_025_push15_stencil_2d12(BLACKBOX,35)@2
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    stencil_2d_i_llvm_fpga_push_i32_c_025_push15_0 thei_llvm_fpga_push_i32_c_025_push15_stencil_2d12 (
        .in_data_in(bgTrunc_i_inc33_stencil_2d11_sel_x_b),
        .in_exitcond6(redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10_out_feedback_stall_out_15),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_c_025_push15_stencil_2d12_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_c_025_push15_stencil_2d12_out_feedback_valid_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_036(CONSTANT,19)
    assign c_i32_036_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10(BLACKBOX,29)@2
    // out out_feedback_stall_out_15@20000000
    stencil_2d_i_llvm_fpga_pop_i32_c_025_pop15_0 thei_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10 (
        .in_data_in(c_i32_036_q),
        .in_dir(redist1_sync_together53_aunroll_x_in_c0_eni4_1_tpl_1_q),
        .in_feedback_in_15(i_llvm_fpga_push_i32_c_025_push15_stencil_2d12_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_c_025_push15_stencil_2d12_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10_out_feedback_stall_out_15),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp19_stencil_2d6(LOGICAL,39)@2
    assign i_notcmp19_stencil_2d6_q = redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1(DELAY,62)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q <= $unsigned(i_exitcond6_stencil_2d4_cmp_nsign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,47)@2
    assign out_c0_exi9_0_tpl = GND_q;
    assign out_c0_exi9_1_tpl = redist0_i_exitcond6_stencil_2d4_cmp_nsign_q_1_q;
    assign out_c0_exi9_2_tpl = i_notcmp19_stencil_2d6_q;
    assign out_c0_exi9_3_tpl = i_llvm_fpga_pop_i32_c_025_pop15_stencil_2d10_out_data_out;
    assign out_c0_exi9_4_tpl = i_llvm_fpga_pop_i32_r_026_pop1336_pop16_stencil_2d13_out_data_out;
    assign out_c0_exi9_5_tpl = i_llvm_fpga_pop_i32_mul2839_pop17_stencil_2d15_out_data_out;
    assign out_c0_exi9_6_tpl = i_llvm_fpga_pop_i1_notcmp2442_pop18_stencil_2d17_out_data_out;
    assign out_c0_exi9_7_tpl = redist2_sync_together53_aunroll_x_in_c0_eni4_2_tpl_1_q;
    assign out_c0_exi9_8_tpl = redist3_sync_together53_aunroll_x_in_c0_eni4_3_tpl_1_q;
    assign out_c0_exi9_9_tpl = redist4_sync_together53_aunroll_x_in_c0_eni4_4_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_stencil_2d1 = GND_q;

endmodule
