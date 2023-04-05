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

// SystemVerilog created from stencil_2d_B8_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B8_merge (
    input wire [0:0] in_forked82_0,
    input wire [0:0] in_forked82_1,
    input wire [31:0] in_mul50114_0,
    input wire [31:0] in_mul50114_1,
    input wire [0:0] in_notcmp39119_0,
    input wire [0:0] in_notcmp39119_1,
    input wire [31:0] in_r_036_pop25109_0,
    input wire [31:0] in_r_036_pop25109_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked82,
    output wire [31:0] out_mul50114,
    output wire [0:0] out_notcmp39119,
    output wire [31:0] out_r_036_pop25109,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked82_mux_s;
    reg [0:0] forked82_mux_q;
    wire [0:0] mul50114_mux_s;
    reg [31:0] mul50114_mux_q;
    wire [0:0] notcmp39119_mux_s;
    reg [0:0] notcmp39119_mux_q;
    wire [0:0] r_036_pop25109_mux_s;
    reg [31:0] r_036_pop25109_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked82_mux(MUX,2)
    assign forked82_mux_s = in_valid_in_0;
    always @(forked82_mux_s or in_forked82_1 or in_forked82_0)
    begin
        unique case (forked82_mux_s)
            1'b0 : forked82_mux_q = in_forked82_1;
            1'b1 : forked82_mux_q = in_forked82_0;
            default : forked82_mux_q = 1'b0;
        endcase
    end

    // out_forked82(GPOUT,16)
    assign out_forked82 = forked82_mux_q;

    // mul50114_mux(MUX,14)
    assign mul50114_mux_s = in_valid_in_0;
    always @(mul50114_mux_s or in_mul50114_1 or in_mul50114_0)
    begin
        unique case (mul50114_mux_s)
            1'b0 : mul50114_mux_q = in_mul50114_1;
            1'b1 : mul50114_mux_q = in_mul50114_0;
            default : mul50114_mux_q = 32'b0;
        endcase
    end

    // out_mul50114(GPOUT,17)
    assign out_mul50114 = mul50114_mux_q;

    // notcmp39119_mux(MUX,15)
    assign notcmp39119_mux_s = in_valid_in_0;
    always @(notcmp39119_mux_s or in_notcmp39119_1 or in_notcmp39119_0)
    begin
        unique case (notcmp39119_mux_s)
            1'b0 : notcmp39119_mux_q = in_notcmp39119_1;
            1'b1 : notcmp39119_mux_q = in_notcmp39119_0;
            default : notcmp39119_mux_q = 1'b0;
        endcase
    end

    // out_notcmp39119(GPOUT,18)
    assign out_notcmp39119 = notcmp39119_mux_q;

    // r_036_pop25109_mux(MUX,23)
    assign r_036_pop25109_mux_s = in_valid_in_0;
    always @(r_036_pop25109_mux_s or in_r_036_pop25109_1 or in_r_036_pop25109_0)
    begin
        unique case (r_036_pop25109_mux_s)
            1'b0 : r_036_pop25109_mux_q = in_r_036_pop25109_1;
            1'b1 : r_036_pop25109_mux_q = in_r_036_pop25109_0;
            default : r_036_pop25109_mux_q = 32'b0;
        endcase
    end

    // out_r_036_pop25109(GPOUT,19)
    assign out_r_036_pop25109 = r_036_pop25109_mux_q;

    // valid_or(LOGICAL,26)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,24)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,20)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,25)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,21)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,22)
    assign out_valid_out = valid_or_q;

endmodule
