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

// SystemVerilog created from flt_i_sfc_logic_s_c0_in_for_body10_histograms_c0_enter633_histogram0_addBlock_typeSFloatIEEE_23_8_typeSFloatIEEE_23_8_typeSFloatIEEE_23_8_0_0_addFpArchSoleDatapath_correctRounding_344o0g8vgewck9cwbc36k3ikfkkllmlxj4ipavrs010i10u10j10k10w10f10x10m10t10j70270l70h70ue0fd0xd0af0oj07j0jl04j0mj0yk0bj0nj09p0zp054cz5iwt7hrliwt7ztlcx26154c2463b0c2463a0054c2a6344c246w65
// Created for function/kernel histogram
// SystemVerilog created on Tue Apr  4 22:51:31 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module histogram_flt_i_sfc_logic_s_c0_in_for_bo00003a0054c2a6344c246w65 (
    input wire [31:0] in_0,
    input wire [31:0] in_1,
    output wire [31:0] out_primWireOut,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire block_rsrvd_fix_impl_reset0;
    wire block_rsrvd_fix_impl_ena0;
    wire [31:0] block_rsrvd_fix_impl_ax0;
    wire [31:0] block_rsrvd_fix_impl_ay0;
    wire [31:0] block_rsrvd_fix_impl_q0;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // block_rsrvd_fix_impl(FPCOLUMN,6)@0 + 3
    assign block_rsrvd_fix_impl_ax0 = $unsigned(in_1);
    assign block_rsrvd_fix_impl_ay0 = in_0;
    assign block_rsrvd_fix_impl_reset0 = ~ (resetn);
    assign block_rsrvd_fix_impl_ena0 = 1'b1;
    twentynm_fp_mac #(
        .operation_mode("sp_add"),
        .ax_clock("0"),
        .ay_clock("0"),
        .adder_input_clock("0"),
        .output_clock("0")
    ) block_rsrvd_fix_impl_DSP0 (
        .clk({1'b0,1'b0,clock}),
        .ena({ 1'b0, 1'b0, block_rsrvd_fix_impl_ena0 }),
        .aclr({ block_rsrvd_fix_impl_reset0, block_rsrvd_fix_impl_reset0 }),
        .ax(block_rsrvd_fix_impl_ax0),
        .ay(block_rsrvd_fix_impl_ay0),
        .resulta(block_rsrvd_fix_impl_q0),
        .accumulate(),
        .az(),
        .chainin(),
        .chainout(),
        .chainin_overflow(),
        .chainin_underflow(),
        .chainin_inexact(),
        .chainin_invalid(),
        .overflow(),
        .underflow(),
        .inexact(),
        .invalid(),
        .chainout_overflow(),
        .chainout_underflow(),
        .chainout_inexact(),
        .chainout_invalid(),
        .dftout()
    );

    // out_primWireOut(GPOUT,5)@3
    assign out_primWireOut = block_rsrvd_fix_impl_q0;

endmodule
