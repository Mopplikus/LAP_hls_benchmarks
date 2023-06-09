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

// SystemVerilog created from i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram0
// Created for function/kernel histogram
// SystemVerilog created on Tue Jun 13 02:35:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_0 (
    output wire [32:0] out_data_out,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_feedback_in_6,
    input wire [0:0] in_feedback_valid_in_6,
    output wire [0:0] out_feedback_stall_out_6,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [32:0] in_data_in,
    input wire [0:0] in_dir,
    input wire [0:0] in_predicate,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [32:0] adapt_scalar_trunc4_in;
    wire [32:0] adapt_scalar_trunc4_q;
    wire [30:0] c_i31_03_q;
    wire [63:0] element_extension2_q;
    wire [63:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_data_in;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_dir;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_dir_bitsignaltemp;
    wire [63:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_in;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_valid_in;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_valid_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_predicate;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_predicate_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_in;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_in_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_in;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_stall_out;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_out;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_out_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_out;
    wire i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_out_bitsignaltemp;
    wire [32:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_valid_out;


    // c_i31_03(CONSTANT,4)
    assign c_i31_03_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension2(BITJOIN,5)
    assign element_extension2_q = {c_i31_03_q, in_data_in};

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1(EXTIFACE,8)
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_data_in = element_extension2_q;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_dir = in_dir;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_in = in_feedback_in_6;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_valid_in = in_feedback_valid_in_6;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_predicate = in_predicate;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_in = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_stall_out;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_in = in_valid_in;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_dir_bitsignaltemp = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_dir[0];
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_valid_in_bitsignaltemp = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_valid_in[0];
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_predicate_bitsignaltemp = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_predicate[0];
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_in_bitsignaltemp = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_in[0];
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_in_bitsignaltemp = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_in[0];
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_stall_out[0] = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_out[0] = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_out_bitsignaltemp;
    assign i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_out[0] = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_out_bitsignaltemp;
    acl_pop #(
        .INF_LOOP(0),
        .STYLE("REGULAR"),
        .ASYNC_RESET(1),
        .COALESCE_DISTANCE(1),
        .DATA_WIDTH(64),
        .SYNCHRONIZE_RESET(0)
    ) thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1 (
        .data_in(element_extension2_q),
        .dir(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_dir_bitsignaltemp),
        .feedback_in(in_feedback_in_6),
        .feedback_valid_in(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_valid_in_bitsignaltemp),
        .predicate(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_predicate_bitsignaltemp),
        .stall_in(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_in_bitsignaltemp),
        .valid_in(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_in_bitsignaltemp),
        .data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_data_out),
        .feedback_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_stall_out_bitsignaltemp),
        .stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_out_bitsignaltemp),
        .valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // adapt_scalar_trunc4(ROUND,3)
    assign adapt_scalar_trunc4_in = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_data_out[32:0];
    assign adapt_scalar_trunc4_q = adapt_scalar_trunc4_in[32:0];

    // i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg(BLACKBOX,9)@19999999
    // in in_stall_in@20000000
    // out out_data_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@20000000
    histogram_i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_11_reg thei_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg (
        .in_data_in(adapt_scalar_trunc4_q),
        .in_stall_in(in_stall_in),
        .in_valid_in(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_valid_out),
        .out_data_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_data_out),
        .out_stall_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_sync_out_x(GPOUT,2)@98
    assign out_data_out = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_data_out;
    assign out_valid_out = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram11_reg_out_valid_out;

    // feedback_sync_out(GPOUT,7)
    assign out_feedback_stall_out_6 = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_feedback_stall_out;

    // sync_out(GPOUT,11)@20000000
    assign out_stall_out = i_llvm_fpga_pop_i33_fpga_indvars_iv_pop6_histogram1_stall_out;

endmodule
