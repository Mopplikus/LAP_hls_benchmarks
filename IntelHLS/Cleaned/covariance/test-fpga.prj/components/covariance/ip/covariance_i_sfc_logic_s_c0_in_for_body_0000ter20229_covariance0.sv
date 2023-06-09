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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_covariances_c0_enter20229_covariance0
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_i_sfc_logic_s_c0_in_for_body_0000ter20229_covariance0 (
    output wire [0:0] out_c0_exi6_0_tpl,
    output wire [0:0] out_c0_exi6_1_tpl,
    output wire [0:0] out_c0_exi6_2_tpl,
    output wire [31:0] out_c0_exi6_3_tpl,
    output wire [31:0] out_c0_exi6_4_tpl,
    output wire [0:0] out_c0_exi6_5_tpl,
    output wire [31:0] out_c0_exi6_6_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_covariance0,
    input wire [0:0] in_c0_eni2_0_tpl,
    input wire [0:0] in_c0_eni2_1_tpl,
    input wire [31:0] in_c0_eni2_2_tpl,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next9_covariance8_sel_x_b;
    wire [31:0] bgTrunc_i_inc19_covariance11_sel_x_b;
    wire [31:0] c_i32_028_q;
    wire [31:0] c_i32_129_q;
    wire [5:0] c_i6_127_q;
    wire [5:0] c_i6_3025_q;
    wire [6:0] i_fpga_indvars_iv_next9_covariance8_a;
    wire [6:0] i_fpga_indvars_iv_next9_covariance8_b;
    logic [6:0] i_fpga_indvars_iv_next9_covariance8_o;
    wire [6:0] i_fpga_indvars_iv_next9_covariance8_q;
    wire [32:0] i_inc19_covariance11_a;
    wire [32:0] i_inc19_covariance11_b;
    logic [32:0] i_inc19_covariance11_o;
    wire [32:0] i_inc19_covariance11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_j_077_pop19_covariance10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_j_077_pop19_covariance10_out_feedback_stall_out_19;
    wire [31:0] i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13_out_feedback_stall_out_21;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond72_covariance7_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond72_covariance7_out_feedback_valid_out_14;
    wire [31:0] i_llvm_fpga_push_i32_j_077_push19_covariance12_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i32_j_077_push19_covariance12_out_feedback_valid_out_19;
    wire [31:0] i_llvm_fpga_push_i32_lim_ext79_push21_covariance14_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i32_lim_ext79_push21_covariance14_out_feedback_valid_out_21;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9_out_feedback_valid_out_18;
    wire [0:0] i_notcmp69_covariance6_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg3_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg4_q;
    wire [0:0] i_exitcond10_covariance4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond10_covariance4_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q;
    reg [31:0] redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // valid_fanout_reg0(REG,41)@1 + 1
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

    // redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1(DELAY,52)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q <= '0;
        end
        else
        begin
            redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q <= $unsigned(in_c0_eni2_2_tpl);
        end
    end

    // redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1(DELAY,51)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q <= $unsigned(in_c0_eni2_1_tpl);
        end
    end

    // valid_fanout_reg3(REG,44)@1 + 1
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

    // valid_fanout_reg4(REG,45)@1 + 1
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

    // i_llvm_fpga_push_i32_lim_ext79_push21_covariance14(BLACKBOX,34)@2
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    covariance_i_llvm_fpga_push_i32_lim_ext79_push21_0 thei_llvm_fpga_push_i32_lim_ext79_push21_covariance14 (
        .in_data_in(i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13_out_data_out),
        .in_exitcond10(redist0_i_exitcond10_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13_out_feedback_stall_out_21),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg4_q),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i32_lim_ext79_push21_covariance14_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i32_lim_ext79_push21_covariance14_out_feedback_valid_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13(BLACKBOX,30)@2
    // out out_feedback_stall_out_21@20000000
    covariance_i_llvm_fpga_pop_i32_lim_ext79_pop21_0 thei_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13 (
        .in_data_in(redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_21(i_llvm_fpga_push_i32_lim_ext79_push21_covariance14_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i32_lim_ext79_push21_covariance14_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg3_q),
        .out_data_out(i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13_out_feedback_stall_out_21),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // valid_fanout_reg1(REG,42)@1 + 1
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

    // valid_fanout_reg2(REG,43)@1 + 1
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

    // c_i32_129(CONSTANT,21)
    assign c_i32_129_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc19_covariance11(ADD,27)@2
    assign i_inc19_covariance11_a = {1'b0, i_llvm_fpga_pop_i32_j_077_pop19_covariance10_out_data_out};
    assign i_inc19_covariance11_b = {1'b0, c_i32_129_q};
    assign i_inc19_covariance11_o = $unsigned(i_inc19_covariance11_a) + $unsigned(i_inc19_covariance11_b);
    assign i_inc19_covariance11_q = i_inc19_covariance11_o[32:0];

    // bgTrunc_i_inc19_covariance11_sel_x(BITSELECT,3)@2
    assign bgTrunc_i_inc19_covariance11_sel_x_b = i_inc19_covariance11_q[31:0];

    // i_llvm_fpga_push_i32_j_077_push19_covariance12(BLACKBOX,33)@2
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    covariance_i_llvm_fpga_push_i32_j_077_push19_0 thei_llvm_fpga_push_i32_j_077_push19_covariance12 (
        .in_data_in(bgTrunc_i_inc19_covariance11_sel_x_b),
        .in_exitcond10(redist0_i_exitcond10_covariance4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i32_j_077_pop19_covariance10_out_feedback_stall_out_19),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i32_j_077_push19_covariance12_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i32_j_077_push19_covariance12_out_feedback_valid_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_028(CONSTANT,20)
    assign c_i32_028_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_j_077_pop19_covariance10(BLACKBOX,29)@2
    // out out_feedback_stall_out_19@20000000
    covariance_i_llvm_fpga_pop_i32_j_077_pop19_0 thei_llvm_fpga_pop_i32_j_077_pop19_covariance10 (
        .in_data_in(c_i32_028_q),
        .in_dir(redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i32_j_077_push19_covariance12_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i32_j_077_push19_covariance12_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_j_077_pop19_covariance10_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i32_j_077_pop19_covariance10_out_feedback_stall_out_19),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp69_covariance6(LOGICAL,36)@2
    assign i_notcmp69_covariance6_q = redist0_i_exitcond10_covariance4_cmp_nsign_q_1_q ^ VCC_q;

    // c_i6_127(CONSTANT,22)
    assign c_i6_127_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next9_covariance8(ADD,26)@1
    assign i_fpga_indvars_iv_next9_covariance8_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3_out_data_out};
    assign i_fpga_indvars_iv_next9_covariance8_b = {1'b0, c_i6_127_q};
    assign i_fpga_indvars_iv_next9_covariance8_o = $unsigned(i_fpga_indvars_iv_next9_covariance8_a) + $unsigned(i_fpga_indvars_iv_next9_covariance8_b);
    assign i_fpga_indvars_iv_next9_covariance8_q = i_fpga_indvars_iv_next9_covariance8_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next9_covariance8_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next9_covariance8_sel_x_b = i_fpga_indvars_iv_next9_covariance8_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9(BLACKBOX,35)@1
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    covariance_i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_0 thei_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next9_covariance8_sel_x_b),
        .in_exitcond10(i_exitcond10_covariance4_cmp_nsign_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3_out_feedback_stall_out_18),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9_out_feedback_valid_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_3025(CONSTANT,23)
    assign c_i6_3025_q = $unsigned(6'b011110);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3(BLACKBOX,31)@1
    // out out_feedback_stall_out_18@20000000
    covariance_i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3 (
        .in_data_in(c_i6_3025_q),
        .in_dir(in_c0_eni2_1_tpl),
        .in_feedback_in_18(i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i6_fpga_indvars_iv8_push18_covariance9_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3_out_feedback_stall_out_18),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond10_covariance4_cmp_nsign(LOGICAL,49)@1
    assign i_exitcond10_covariance4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv8_pop18_covariance3_out_data_out[5:5]));

    // redist0_i_exitcond10_covariance4_cmp_nsign_q_1(DELAY,50)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond10_covariance4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond10_covariance4_cmp_nsign_q_1_q <= $unsigned(i_exitcond10_covariance4_cmp_nsign_q);
        end
    end

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,5)@2
    assign out_c0_exi6_0_tpl = GND_q;
    assign out_c0_exi6_1_tpl = redist0_i_exitcond10_covariance4_cmp_nsign_q_1_q;
    assign out_c0_exi6_2_tpl = i_notcmp69_covariance6_q;
    assign out_c0_exi6_3_tpl = i_llvm_fpga_pop_i32_j_077_pop19_covariance10_out_data_out;
    assign out_c0_exi6_4_tpl = i_llvm_fpga_pop_i32_lim_ext79_pop21_covariance13_out_data_out;
    assign out_c0_exi6_5_tpl = redist1_sync_together41_aunroll_x_in_c0_eni2_1_tpl_1_q;
    assign out_c0_exi6_6_tpl = redist2_sync_together41_aunroll_x_in_c0_eni2_2_tpl_1_q;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_covariance0 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond72_covariance7(BLACKBOX,32)@1
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    covariance_i_llvm_fpga_push_i1_notexitcond72_0 thei_llvm_fpga_push_i1_notexitcond72_covariance7 (
        .in_data_in(i_exitcond10_covariance4_cmp_nsign_q),
        .in_feedback_stall_in_14(i_llvm_fpga_pipeline_keep_going71_covariance2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i1_notexitcond72_covariance7_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i1_notexitcond72_covariance7_out_feedback_valid_out_14),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_covariance2(BLACKBOX,28)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    covariance_i_llvm_fpga_pipeline_keep_going71_0 thei_llvm_fpga_pipeline_keep_going71_covariance2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond72_covariance7_out_feedback_out_14),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond72_covariance7_out_feedback_valid_out_14),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going71_covariance2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going71_covariance2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going71_covariance2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going71_covariance2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,24)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going71_covariance2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_covariance2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going71_covariance2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,39)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going71_covariance2_out_pipeline_valid_out;

endmodule
