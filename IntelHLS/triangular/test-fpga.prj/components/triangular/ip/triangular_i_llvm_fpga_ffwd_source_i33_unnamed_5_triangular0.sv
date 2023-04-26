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

// SystemVerilog created from i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular0
// Created for function/kernel triangular
// SystemVerilog created on Tue Apr 25 22:47:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_i_llvm_fpga_ffwd_source_i33_unnamed_5_triangular0 (
    output wire [32:0] out_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_predicate_in,
    input wire [32:0] in_src_data_in_3_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [30:0] c_i31_03_q;
    wire [63:0] element_extension2_q;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_predicate_in;
    wire i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_predicate_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_source_in;
    wire [0:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_valid_in;
    wire i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_valid_in_bitsignaltemp;
    wire [63:0] i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_source_out;
    wire [32:0] adapt_scalar_trunc4_sel_x_b;


    // c_i31_03(CONSTANT,3)
    assign c_i31_03_q = $unsigned(31'b0000000000000000000000000000000);

    // element_extension2(BITJOIN,4)@13
    assign element_extension2_q = {c_i31_03_q, in_src_data_in_3_0};

    // i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1(EXTIFACE,5)@13
    assign i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_predicate_in = in_predicate_in;
    assign i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_source_in = element_extension2_q;
    assign i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_valid_in = in_valid_in;
    assign i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_predicate_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_predicate_in[0];
    assign i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_valid_in_bitsignaltemp = i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_valid_in[0];
    acl_ffwdsrc #(
        .MAX_LATENCY(1),
        .MIN_CAPACITY(1),
        .WIDTH(64)
    ) thei_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1 (
        .predicate_in(i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_predicate_in_bitsignaltemp),
        .source_in(element_extension2_q),
        .valid_in(i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_valid_in_bitsignaltemp),
        .source_out(i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_source_out),
        .clock(clock)
    );

    // adapt_scalar_trunc4_sel_x(BITSELECT,10)@20000000
    assign adapt_scalar_trunc4_sel_x_b = i_llvm_fpga_ffwd_source_i33_unnamed_triangular5_triangular1_source_out[32:0];

    // regfree_osync(GPOUT,6)
    assign out_intel_reserved_ffwd_3_0 = adapt_scalar_trunc4_sel_x_b;

    // sync_out(GPOUT,8)@13
    assign out_stall_out = in_stall_in;

    // dupName_0_sync_out_x(GPOUT,11)@13
    assign out_valid_out = in_valid_in;

endmodule
