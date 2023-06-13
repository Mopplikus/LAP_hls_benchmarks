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

// SystemVerilog created from i_sfc_logic_s_c0_in_for_cond1_preheader_jacobi_1ds_c0_enter7610_jacobi_1d0
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_i_sfc_logic_s_c0_in_for_cond1_0000enter7610_jacobi_1d0 (
    output wire [0:0] out_c0_exi3_0_tpl,
    output wire [0:0] out_c0_exi3_1_tpl,
    output wire [0:0] out_c0_exi3_2_tpl,
    output wire [0:0] out_c0_exi3_3_tpl,
    output wire [0:0] out_o_valid,
    output wire [0:0] out_unnamed_jacobi_1d1,
    input wire [0:0] in_c0_eni1_0_tpl,
    input wire [0:0] in_c0_eni1_1_tpl,
    input wire [0:0] in_enable,
    input wire [0:0] in_i_valid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [2:0] bgTrunc_i_fpga_indvars_iv_next16_jacobi_1d8_sel_x_b;
    wire [2:0] c_i3_114_q;
    wire [2:0] c_i3_116_q;
    wire [3:0] i_fpga_indvars_iv_next16_jacobi_1d8_a;
    wire [3:0] i_fpga_indvars_iv_next16_jacobi_1d8_b;
    logic [3:0] i_fpga_indvars_iv_next16_jacobi_1d8_o;
    wire [3:0] i_fpga_indvars_iv_next16_jacobi_1d8_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_pipeline_valid_out;
    wire [2:0] i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond42_jacobi_1d7_out_feedback_out_7;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond42_jacobi_1d7_out_feedback_valid_out_7;
    wire [7:0] i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9_out_feedback_out_10;
    wire [0:0] i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9_out_feedback_valid_out_10;
    wire [0:0] i_notcmp39_jacobi_1d6_q;
    wire [0:0] i_exitcond17_jacobi_1d4_cmp_nsign_q;
    wire [0:0] dupName_0_enable_stall_connector_x_not_enable_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_notcmp39_jacobi_1d6(LOGICAL,25)@1
    assign i_notcmp39_jacobi_1d6_q = i_exitcond17_jacobi_1d4_cmp_nsign_q ^ VCC_q;

    // dupName_0_enable_stall_connector_x_not_enable(LOGICAL,33)
    assign dupName_0_enable_stall_connector_x_not_enable_q = $unsigned(~ (in_enable));

    // c_i3_116(CONSTANT,15)
    assign c_i3_116_q = $unsigned(3'b111);

    // i_fpga_indvars_iv_next16_jacobi_1d8(ADD,20)@1
    assign i_fpga_indvars_iv_next16_jacobi_1d8_a = {1'b0, i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3_out_data_out};
    assign i_fpga_indvars_iv_next16_jacobi_1d8_b = {1'b0, c_i3_116_q};
    assign i_fpga_indvars_iv_next16_jacobi_1d8_o = $unsigned(i_fpga_indvars_iv_next16_jacobi_1d8_a) + $unsigned(i_fpga_indvars_iv_next16_jacobi_1d8_b);
    assign i_fpga_indvars_iv_next16_jacobi_1d8_q = i_fpga_indvars_iv_next16_jacobi_1d8_o[3:0];

    // bgTrunc_i_fpga_indvars_iv_next16_jacobi_1d8_sel_x(BITSELECT,2)@1
    assign bgTrunc_i_fpga_indvars_iv_next16_jacobi_1d8_sel_x_b = i_fpga_indvars_iv_next16_jacobi_1d8_q[2:0];

    // i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9(BLACKBOX,24)@1
    // out out_feedback_out_10@20000000
    // out out_feedback_valid_out_10@20000000
    jacobi_1d_i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_0 thei_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next16_jacobi_1d8_sel_x_b),
        .in_exitcond17(i_exitcond17_jacobi_1d4_cmp_nsign_q),
        .in_feedback_stall_in_10(i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3_out_feedback_stall_out_10),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_10(i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9_out_feedback_out_10),
        .out_feedback_valid_out_10(i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9_out_feedback_valid_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i3_114(CONSTANT,14)
    assign c_i3_114_q = $unsigned(3'b001);

    // i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3(BLACKBOX,22)@1
    // out out_feedback_stall_out_10@20000000
    jacobi_1d_i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_0 thei_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3 (
        .in_data_in(c_i3_114_q),
        .in_dir(in_c0_eni1_1_tpl),
        .in_feedback_in_10(i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9_out_feedback_out_10),
        .in_feedback_valid_in_10(i_llvm_fpga_push_i3_fpga_indvars_iv15_push10_jacobi_1d9_out_feedback_valid_out_10),
        .in_predicate(GND_q),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3_out_feedback_stall_out_10),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_exitcond17_jacobi_1d4_cmp_nsign(LOGICAL,32)@1
    assign i_exitcond17_jacobi_1d4_cmp_nsign_q = $unsigned(~ (i_llvm_fpga_pop_i3_fpga_indvars_iv15_pop10_jacobi_1d3_out_data_out[2:2]));

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // sync_out_aunroll_x(GPOUT,7)@1
    assign out_c0_exi3_0_tpl = GND_q;
    assign out_c0_exi3_1_tpl = i_exitcond17_jacobi_1d4_cmp_nsign_q;
    assign out_c0_exi3_2_tpl = i_notcmp39_jacobi_1d6_q;
    assign out_c0_exi3_3_tpl = in_c0_eni1_1_tpl;
    assign out_o_valid = in_i_valid;
    assign out_unnamed_jacobi_1d1 = GND_q;

    // i_llvm_fpga_push_i1_notexitcond42_jacobi_1d7(BLACKBOX,23)@1
    // out out_feedback_out_7@20000000
    // out out_feedback_valid_out_7@20000000
    jacobi_1d_i_llvm_fpga_push_i1_notexitcond42_0 thei_llvm_fpga_push_i1_notexitcond42_jacobi_1d7 (
        .in_data_in(i_exitcond17_jacobi_1d4_cmp_nsign_q),
        .in_feedback_stall_in_7(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_not_exitcond_stall_out),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_feedback_out_7(i_llvm_fpga_push_i1_notexitcond42_jacobi_1d7_out_feedback_out_7),
        .out_feedback_valid_out_7(i_llvm_fpga_push_i1_notexitcond42_jacobi_1d7_out_feedback_valid_out_7),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_jacobi_1d2(BLACKBOX,21)@1
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    jacobi_1d_i_llvm_fpga_pipeline_keep_going41_0 thei_llvm_fpga_pipeline_keep_going41_jacobi_1d2 (
        .in_data_in(VCC_q),
        .in_initeration_in(GND_q),
        .in_initeration_valid_in(GND_q),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond42_jacobi_1d7_out_feedback_out_7),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond42_jacobi_1d7_out_feedback_valid_out_7),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(dupName_0_enable_stall_connector_x_not_enable_q),
        .in_valid_in(in_i_valid),
        .out_data_out(),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_exiting_valid_out),
        .out_initeration_stall_out(),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_pipeline_valid_out),
        .out_stall_out(),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,18)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_valid_out = i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_exiting_stall_out = i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,28)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going41_jacobi_1d2_out_pipeline_valid_out;

endmodule
