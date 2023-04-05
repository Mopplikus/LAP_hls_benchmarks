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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond27_preheader_matvecs_c0_enter978_matvec0
// Created for function/kernel matvec
// SystemVerilog created on Wed Apr  5 15:28:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_i_sfc_logic_s_c0_in_for_cond27_pr0000_c0_enter978_matvec0 (
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_matvec2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_matvec2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    output wire [0:0] out_c0_exi3101_0_tpl,
    output wire [0:0] out_c0_exi3101_1_tpl,
    output wire [0:0] out_c0_exi3101_2_tpl,
    output wire [31:0] out_c0_exi3101_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_matvec1,
    input wire [0:0] in_c0_eni196_0_tpl,
    input wire [0:0] in_c0_eni196_1_tpl,
    input wire [0:0] in_i_valid,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] c_i32_024_q;
    wire [31:0] c_i32_125_q;
    wire [5:0] c_i6_123_q;
    wire [5:0] c_i6_2821_q;
    wire [6:0] i_fpga_indvars_iv_next12_matvec8_a;
    wire [6:0] i_fpga_indvars_iv_next12_matvec8_b;
    logic [6:0] i_fpga_indvars_iv_next12_matvec8_o;
    wire [6:0] i_fpga_indvars_iv_next12_matvec8_q;
    wire [32:0] i_inc42_matvec11_a;
    wire [32:0] i_inc42_matvec11_b;
    logic [32:0] i_inc42_matvec11_o;
    wire [32:0] i_inc42_matvec11_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_out_pipeline_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_131_pop17_matvec10_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_131_pop17_matvec10_out_feedback_stall_out_17;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond40_matvec7_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond40_matvec7_out_feedback_valid_out_7;
    wire [31:0] i_llvm_fpga_push_i32_i_131_push17_matvec12_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i32_i_131_push17_matvec12_out_feedback_valid_out_17;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9_out_feedback_valid_out_16;
    wire [0:0] i_notcmp37_matvec6_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next12_matvec8_sel_x_b;
    wire [31:0] bgTrunc_i_inc42_matvec11_sel_x_b;
    (* dont_merge *) reg [0:0] valid_fanout_reg0_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg1_q;
    (* dont_merge *) reg [0:0] valid_fanout_reg2_q;
    wire [0:0] i_exitcond13_matvec4_cmp_nsign_q;
    reg [0:0] redist0_i_exitcond13_matvec4_cmp_nsign_q_1_q;
    reg [0:0] redist1_sync_together35_aunroll_x_in_c0_eni196_1_tpl_1_q;


    // c_i6_123(CONSTANT,15)
    assign c_i6_123_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next12_matvec8(ADD,19)@1
    assign i_fpga_indvars_iv_next12_matvec8_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3_out_data_out};
    assign i_fpga_indvars_iv_next12_matvec8_b = {1'b0, c_i6_123_q};
    assign i_fpga_indvars_iv_next12_matvec8_o = $unsigned(i_fpga_indvars_iv_next12_matvec8_a) + $unsigned(i_fpga_indvars_iv_next12_matvec8_b);
    assign i_fpga_indvars_iv_next12_matvec8_q = i_fpga_indvars_iv_next12_matvec8_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next12_matvec8_sel_x(BITSELECT,32)@1
    assign bgTrunc_i_fpga_indvars_iv_next12_matvec8_sel_x_b = i_fpga_indvars_iv_next12_matvec8_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9(BLACKBOX,26)@1
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    matvec_i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_0 thei_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next12_matvec8_sel_x_b),
        .in_exitcond13(i_exitcond13_matvec4_cmp_nsign_q),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3_out_feedback_stall_out_16),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9_out_feedback_valid_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2821(CONSTANT,16)
    assign c_i6_2821_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3(BLACKBOX,23)@1
    // out out_feedback_stall_out_16@20000000
    matvec_i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3 (
        .in_data_in(c_i6_2821_q),
        .in_dir(in_c0_eni196_1_tpl),
        .in_feedback_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i6_fpga_indvars_iv11_push16_matvec9_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3_out_feedback_stall_out_16),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond13_matvec4_cmp_nsign(LOGICAL,43)@1
    assign i_exitcond13_matvec4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv11_pop16_matvec3_out_data_out[5:5]));

    // i_llvm_fpga_push_i1_notexitcond40_matvec7(BLACKBOX,24)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    matvec_i_llvm_fpga_push_i1_notexitcond40_0 thei_llvm_fpga_push_i1_notexitcond40_matvec7 (
        .in_data_in(i_exitcond13_matvec4_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going39_matvec2_out_not_exitcond_stall_out),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond40_matvec7_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond40_matvec7_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_llvm_fpga_pipeline_keep_going39_matvec2(BLACKBOX,21)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    matvec_i_llvm_fpga_pipeline_keep_going39_0 thei_llvm_fpga_pipeline_keep_going39_matvec2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond40_matvec7_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond40_matvec7_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(GND_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going39_matvec2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going39_matvec2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going39_matvec2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going39_matvec2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,17)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_matvec2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going39_matvec2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going39_matvec2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going39_matvec2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,30)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going39_matvec2_out_pipeline_valid_out;

    // valid_fanout_reg0(REG,37)@1 + 1
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

    // valid_fanout_reg1(REG,38)@1 + 1
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

    // valid_fanout_reg2(REG,39)@1 + 1
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

    // c_i32_125(CONSTANT,14)
    assign c_i32_125_q = $unsigned(32'b00000000000000000000000000000001);

    // i_inc42_matvec11(ADD,20)@2
    assign i_inc42_matvec11_a = {1'b0, i_llvm_fpga_pop_i32_i_131_pop17_matvec10_out_data_out};
    assign i_inc42_matvec11_b = {1'b0, c_i32_125_q};
    assign i_inc42_matvec11_o = $unsigned(i_inc42_matvec11_a) + $unsigned(i_inc42_matvec11_b);
    assign i_inc42_matvec11_q = i_inc42_matvec11_o[32:0];

    // bgTrunc_i_inc42_matvec11_sel_x(BITSELECT,33)@2
    assign bgTrunc_i_inc42_matvec11_sel_x_b = i_inc42_matvec11_q[31:0];

    // i_llvm_fpga_push_i32_i_131_push17_matvec12(BLACKBOX,25)@2
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    matvec_i_llvm_fpga_push_i32_i_131_push17_0 thei_llvm_fpga_push_i32_i_131_push17_matvec12 (
        .in_data_in(bgTrunc_i_inc42_matvec11_sel_x_b),
        .in_exitcond13(redist0_i_exitcond13_matvec4_cmp_nsign_q_1_q),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i32_i_131_pop17_matvec10_out_feedback_stall_out_17),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg2_q),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i32_i_131_push17_matvec12_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i32_i_131_push17_matvec12_out_feedback_valid_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_sync_together35_aunroll_x_in_c0_eni196_1_tpl_1(DELAY,45)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni196_1_tpl_1_q <= '0;
        end
        else
        begin
            redist1_sync_together35_aunroll_x_in_c0_eni196_1_tpl_1_q <= $unsigned(in_c0_eni196_1_tpl);
        end
    end

    // c_i32_024(CONSTANT,13)
    assign c_i32_024_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pop_i32_i_131_pop17_matvec10(BLACKBOX,22)@2
    // out out_feedback_stall_out_17@20000000
    matvec_i_llvm_fpga_pop_i32_i_131_pop17_0 thei_llvm_fpga_pop_i32_i_131_pop17_matvec10 (
        .in_data_in(c_i32_024_q),
        .in_dir(redist1_sync_together35_aunroll_x_in_c0_eni196_1_tpl_1_q),
        .in_feedback_in_17(i_llvm_fpga_push_i32_i_131_push17_matvec12_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i32_i_131_push17_matvec12_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(GND_q),
        .in_valid_in(valid_fanout_reg1_q),
        .out_data_out(i_llvm_fpga_pop_i32_i_131_pop17_matvec10_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i32_i_131_pop17_matvec10_out_feedback_stall_out_17),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_notcmp37_matvec6(LOGICAL,27)@2
    assign i_notcmp37_matvec6_q = redist0_i_exitcond13_matvec4_cmp_nsign_q_1_q ^ VCC_q;

    // redist0_i_exitcond13_matvec4_cmp_nsign_q_1(DELAY,44)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_exitcond13_matvec4_cmp_nsign_q_1_q <= '0;
        end
        else
        begin
            redist0_i_exitcond13_matvec4_cmp_nsign_q_1_q <= $unsigned(i_exitcond13_matvec4_cmp_nsign_q);
        end
    end

    // sync_out_aunroll_x(GPOUT,35)@2
    assign out_c0_exi3101_0_tpl = GND_q;
    assign out_c0_exi3101_1_tpl = redist0_i_exitcond13_matvec4_cmp_nsign_q_1_q;
    assign out_c0_exi3101_2_tpl = i_notcmp37_matvec6_q;
    assign out_c0_exi3101_3_tpl = i_llvm_fpga_pop_i32_i_131_pop17_matvec10_out_data_out;
    assign out_o_valid = valid_fanout_reg0_q;
    assign out_unnamed_matvec1 = GND_q;

endmodule
