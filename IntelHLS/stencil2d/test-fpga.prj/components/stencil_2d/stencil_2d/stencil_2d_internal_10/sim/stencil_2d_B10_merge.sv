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

// SystemVerilog created from stencil_2d_B10_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B10_merge (
    input wire [31:0] in_c_035_pop27127_0,
    input wire [31:0] in_c_035_pop27127_1,
    input wire [0:0] in_forked79_0,
    input wire [0:0] in_forked79_1,
    input wire [31:0] in_mul50118_0,
    input wire [31:0] in_mul50118_1,
    input wire [31:0] in_mul5086_pop29133_0,
    input wire [31:0] in_mul5086_pop29133_1,
    input wire [0:0] in_notcmp34124_0,
    input wire [0:0] in_notcmp34124_1,
    input wire [0:0] in_notcmp39123_0,
    input wire [0:0] in_notcmp39123_1,
    input wire [0:0] in_notcmp3989_pop30136_0,
    input wire [0:0] in_notcmp3989_pop30136_1,
    input wire [31:0] in_r_036_pop25113_0,
    input wire [31:0] in_r_036_pop25113_1,
    input wire [31:0] in_r_036_pop2583_pop28130_0,
    input wire [31:0] in_r_036_pop2583_pop28130_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_035_pop27127,
    output wire [0:0] out_forked79,
    output wire [31:0] out_mul50118,
    output wire [31:0] out_mul5086_pop29133,
    output wire [0:0] out_notcmp34124,
    output wire [0:0] out_notcmp39123,
    output wire [0:0] out_notcmp3989_pop30136,
    output wire [31:0] out_r_036_pop25113,
    output wire [31:0] out_r_036_pop2583_pop28130,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_035_pop27127_mux_s;
    reg [31:0] c_035_pop27127_mux_q;
    wire [0:0] forked79_mux_s;
    reg [0:0] forked79_mux_q;
    wire [0:0] mul50118_mux_s;
    reg [31:0] mul50118_mux_q;
    wire [0:0] mul5086_pop29133_mux_s;
    reg [31:0] mul5086_pop29133_mux_q;
    wire [0:0] notcmp34124_mux_s;
    reg [0:0] notcmp34124_mux_q;
    wire [0:0] notcmp39123_mux_s;
    reg [0:0] notcmp39123_mux_q;
    wire [0:0] notcmp3989_pop30136_mux_s;
    reg [0:0] notcmp3989_pop30136_mux_q;
    wire [0:0] r_036_pop25113_mux_s;
    reg [31:0] r_036_pop25113_mux_q;
    wire [0:0] r_036_pop2583_pop28130_mux_s;
    reg [31:0] r_036_pop2583_pop28130_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_035_pop27127_mux(MUX,2)
    assign c_035_pop27127_mux_s = in_valid_in_0;
    always @(c_035_pop27127_mux_s or in_c_035_pop27127_1 or in_c_035_pop27127_0)
    begin
        unique case (c_035_pop27127_mux_s)
            1'b0 : c_035_pop27127_mux_q = in_c_035_pop27127_1;
            1'b1 : c_035_pop27127_mux_q = in_c_035_pop27127_0;
            default : c_035_pop27127_mux_q = 32'b0;
        endcase
    end

    // out_c_035_pop27127(GPOUT,30)
    assign out_c_035_pop27127 = c_035_pop27127_mux_q;

    // forked79_mux(MUX,3)
    assign forked79_mux_s = in_valid_in_0;
    always @(forked79_mux_s or in_forked79_1 or in_forked79_0)
    begin
        unique case (forked79_mux_s)
            1'b0 : forked79_mux_q = in_forked79_1;
            1'b1 : forked79_mux_q = in_forked79_0;
            default : forked79_mux_q = 1'b0;
        endcase
    end

    // out_forked79(GPOUT,31)
    assign out_forked79 = forked79_mux_q;

    // mul50118_mux(MUX,25)
    assign mul50118_mux_s = in_valid_in_0;
    always @(mul50118_mux_s or in_mul50118_1 or in_mul50118_0)
    begin
        unique case (mul50118_mux_s)
            1'b0 : mul50118_mux_q = in_mul50118_1;
            1'b1 : mul50118_mux_q = in_mul50118_0;
            default : mul50118_mux_q = 32'b0;
        endcase
    end

    // out_mul50118(GPOUT,32)
    assign out_mul50118 = mul50118_mux_q;

    // mul5086_pop29133_mux(MUX,26)
    assign mul5086_pop29133_mux_s = in_valid_in_0;
    always @(mul5086_pop29133_mux_s or in_mul5086_pop29133_1 or in_mul5086_pop29133_0)
    begin
        unique case (mul5086_pop29133_mux_s)
            1'b0 : mul5086_pop29133_mux_q = in_mul5086_pop29133_1;
            1'b1 : mul5086_pop29133_mux_q = in_mul5086_pop29133_0;
            default : mul5086_pop29133_mux_q = 32'b0;
        endcase
    end

    // out_mul5086_pop29133(GPOUT,33)
    assign out_mul5086_pop29133 = mul5086_pop29133_mux_q;

    // notcmp34124_mux(MUX,27)
    assign notcmp34124_mux_s = in_valid_in_0;
    always @(notcmp34124_mux_s or in_notcmp34124_1 or in_notcmp34124_0)
    begin
        unique case (notcmp34124_mux_s)
            1'b0 : notcmp34124_mux_q = in_notcmp34124_1;
            1'b1 : notcmp34124_mux_q = in_notcmp34124_0;
            default : notcmp34124_mux_q = 1'b0;
        endcase
    end

    // out_notcmp34124(GPOUT,34)
    assign out_notcmp34124 = notcmp34124_mux_q;

    // notcmp39123_mux(MUX,28)
    assign notcmp39123_mux_s = in_valid_in_0;
    always @(notcmp39123_mux_s or in_notcmp39123_1 or in_notcmp39123_0)
    begin
        unique case (notcmp39123_mux_s)
            1'b0 : notcmp39123_mux_q = in_notcmp39123_1;
            1'b1 : notcmp39123_mux_q = in_notcmp39123_0;
            default : notcmp39123_mux_q = 1'b0;
        endcase
    end

    // out_notcmp39123(GPOUT,35)
    assign out_notcmp39123 = notcmp39123_mux_q;

    // notcmp3989_pop30136_mux(MUX,29)
    assign notcmp3989_pop30136_mux_s = in_valid_in_0;
    always @(notcmp3989_pop30136_mux_s or in_notcmp3989_pop30136_1 or in_notcmp3989_pop30136_0)
    begin
        unique case (notcmp3989_pop30136_mux_s)
            1'b0 : notcmp3989_pop30136_mux_q = in_notcmp3989_pop30136_1;
            1'b1 : notcmp3989_pop30136_mux_q = in_notcmp3989_pop30136_0;
            default : notcmp3989_pop30136_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3989_pop30136(GPOUT,36)
    assign out_notcmp3989_pop30136 = notcmp3989_pop30136_mux_q;

    // r_036_pop25113_mux(MUX,42)
    assign r_036_pop25113_mux_s = in_valid_in_0;
    always @(r_036_pop25113_mux_s or in_r_036_pop25113_1 or in_r_036_pop25113_0)
    begin
        unique case (r_036_pop25113_mux_s)
            1'b0 : r_036_pop25113_mux_q = in_r_036_pop25113_1;
            1'b1 : r_036_pop25113_mux_q = in_r_036_pop25113_0;
            default : r_036_pop25113_mux_q = 32'b0;
        endcase
    end

    // out_r_036_pop25113(GPOUT,37)
    assign out_r_036_pop25113 = r_036_pop25113_mux_q;

    // r_036_pop2583_pop28130_mux(MUX,43)
    assign r_036_pop2583_pop28130_mux_s = in_valid_in_0;
    always @(r_036_pop2583_pop28130_mux_s or in_r_036_pop2583_pop28130_1 or in_r_036_pop2583_pop28130_0)
    begin
        unique case (r_036_pop2583_pop28130_mux_s)
            1'b0 : r_036_pop2583_pop28130_mux_q = in_r_036_pop2583_pop28130_1;
            1'b1 : r_036_pop2583_pop28130_mux_q = in_r_036_pop2583_pop28130_0;
            default : r_036_pop2583_pop28130_mux_q = 32'b0;
        endcase
    end

    // out_r_036_pop2583_pop28130(GPOUT,38)
    assign out_r_036_pop2583_pop28130 = r_036_pop2583_pop28130_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,44)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,45)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,41)
    assign out_valid_out = valid_or_q;

endmodule
