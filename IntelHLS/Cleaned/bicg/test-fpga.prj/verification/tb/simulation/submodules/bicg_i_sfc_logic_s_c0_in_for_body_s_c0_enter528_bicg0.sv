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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_body_bicgs_c0_enter528_bicg0
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 12:13:36 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_i_sfc_logic_s_c0_in_for_body_s_c0_enter528_bicg0 (
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_bicg1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [5:0] bgTrunc_i_fpga_indvars_iv_next13_bicg8_sel_x_b;
    wire [5:0] c_i6_116_q;
    wire [5:0] c_i6_2814_q;
    wire [6:0] i_fpga_indvars_iv_next13_bicg8_a;
    wire [6:0] i_fpga_indvars_iv_next13_bicg8_b;
    logic [6:0] i_fpga_indvars_iv_next13_bicg8_o;
    wire [6:0] i_fpga_indvars_iv_next13_bicg8_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_bicg2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_bicg2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_bicg2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going22_bicg2_out_pipeline_valid_out;
    wire [5:0] i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3_out_feedback_stall_out_8;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_bicg7_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond23_bicg7_out_feedback_valid_out_5;
    wire [7:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9_out_feedback_out_8;
    wire [0:0] i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9_out_feedback_valid_out_8;
    wire [0:0] i_notcmp20_bicg6_q;
    wire [0:0] i_exitcond14_bicg4_cmp_nsign_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_notcmp20_bicg6(LOGICAL,25)@1
    assign i_notcmp20_bicg6_q = i_exitcond14_bicg4_cmp_nsign_q ^ VCC_q;

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,33)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // c_i6_116(CONSTANT,14)
    assign c_i6_116_q = $unsigned(6'b111111);

    // i_fpga_indvars_iv_next13_bicg8(ADD,20)@1
    assign i_fpga_indvars_iv_next13_bicg8_a = {1'b0, i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3_out_data_out};
    assign i_fpga_indvars_iv_next13_bicg8_b = {1'b0, c_i6_116_q};
    assign i_fpga_indvars_iv_next13_bicg8_o = $unsigned(i_fpga_indvars_iv_next13_bicg8_a) + $unsigned(i_fpga_indvars_iv_next13_bicg8_b);
    assign i_fpga_indvars_iv_next13_bicg8_q = i_fpga_indvars_iv_next13_bicg8_o[6:0];

    // bgTrunc_i_fpga_indvars_iv_next13_bicg8_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next13_bicg8_sel_x_b = i_fpga_indvars_iv_next13_bicg8_q[5:0];

    // i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9(BLACKBOX,24)@1
    // out out_feedback_out_8@20000000
    // out out_feedback_valid_out_8@20000000
    bicg_i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_0 thei_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next13_bicg8_sel_x_b),
        .in_exitcond14(i_exitcond14_bicg4_cmp_nsign_q),
        .in_feedback_stall_in_8(i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3_out_feedback_stall_out_8),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_8(i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9_out_feedback_out_8),
        .out_feedback_valid_out_8(i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9_out_feedback_valid_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i6_2814(CONSTANT,15)
    assign c_i6_2814_q = $unsigned(6'b011100);

    // i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3(BLACKBOX,22)@1
    // out out_feedback_stall_out_8@20000000
    bicg_i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_0 thei_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3 (
        .in_data_in(c_i6_2814_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_8(i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9_out_feedback_out_8),
        .in_feedback_valid_in_8(i_llvm_fpga_push_i6_fpga_indvars_iv12_push8_bicg9_out_feedback_valid_out_8),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3_out_data_out),
        .out_feedback_stall_out_8(i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3_out_feedback_stall_out_8),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond14_bicg4_cmp_nsign(LOGICAL,32)@1
    assign i_exitcond14_bicg4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i6_fpga_indvars_iv12_pop8_bicg3_out_data_out[5:5]));

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,7)@1
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = i_exitcond14_bicg4_cmp_nsign_q;
    assign out_c0_exi3_2_tpl = i_notcmp20_bicg6_q;
    assign out_c0_exi3_3_tpl = in_c0_eni1_1_tpl;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_bicg1 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond23_bicg7(BLACKBOX,23)@1
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    bicg_i_llvm_fpga_push_i1_notexitcond23_0 thei_llvm_fpga_push_i1_notexitcond23_bicg7 (
        .in_data_in(i_exitcond14_bicg4_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going22_bicg2_out_not_exitcond_stall_out),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond23_bicg7_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond23_bicg7_out_feedback_valid_out_5),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going22_bicg2(BLACKBOX,21)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_llvm_fpga_pipeline_keep_going22_0 thei_llvm_fpga_pipeline_keep_going22_bicg2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond23_bicg7_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond23_bicg7_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going22_bicg2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going22_bicg2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going22_bicg2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going22_bicg2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,18)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going22_bicg2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going22_bicg2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going22_bicg2_out_pipeline_valid_out;

endmodule
