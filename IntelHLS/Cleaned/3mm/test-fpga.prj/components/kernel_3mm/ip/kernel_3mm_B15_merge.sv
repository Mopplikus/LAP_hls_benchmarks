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

// SystemVerilog created from kernel_3mm_B15_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B15_merge (
    input wire [0:0] in_exitcond34233_0,
    input wire [0:0] in_exitcond34233_1,
    input wire [0:0] in_forked146_0,
    input wire [0:0] in_forked146_1,
    input wire [0:0] in_memdep_phi9_pop30239_0,
    input wire [0:0] in_memdep_phi9_pop30239_1,
    input wire [31:0] in_mul64_add44230_0,
    input wire [31:0] in_mul64_add44230_1,
    input wire [0:0] in_notcmp64236_0,
    input wire [0:0] in_notcmp64236_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond34233,
    output wire [0:0] out_forked146,
    output wire [0:0] out_memdep_phi9_pop30239,
    output wire [31:0] out_mul64_add44230,
    output wire [0:0] out_notcmp64236,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond34233_mux_s;
    reg [0:0] exitcond34233_mux_q;
    wire [0:0] forked146_mux_s;
    reg [0:0] forked146_mux_q;
    wire [0:0] memdep_phi9_pop30239_mux_s;
    reg [0:0] memdep_phi9_pop30239_mux_q;
    wire [0:0] mul64_add44230_mux_s;
    reg [31:0] mul64_add44230_mux_q;
    wire [0:0] notcmp64236_mux_s;
    reg [0:0] notcmp64236_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond34233_mux(MUX,2)
    assign exitcond34233_mux_s = in_valid_in_0;
    always @(exitcond34233_mux_s or in_exitcond34233_1 or in_exitcond34233_0)
    begin
        unique case (exitcond34233_mux_s)
            1'b0 : exitcond34233_mux_q = in_exitcond34233_1;
            1'b1 : exitcond34233_mux_q = in_exitcond34233_0;
            default : exitcond34233_mux_q = 1'b0;
        endcase
    end

    // out_exitcond34233(GPOUT,20)
    assign out_exitcond34233 = exitcond34233_mux_q;

    // forked146_mux(MUX,3)
    assign forked146_mux_s = in_valid_in_0;
    always @(forked146_mux_s or in_forked146_1 or in_forked146_0)
    begin
        unique case (forked146_mux_s)
            1'b0 : forked146_mux_q = in_forked146_1;
            1'b1 : forked146_mux_q = in_forked146_0;
            default : forked146_mux_q = 1'b0;
        endcase
    end

    // out_forked146(GPOUT,21)
    assign out_forked146 = forked146_mux_q;

    // memdep_phi9_pop30239_mux(MUX,17)
    assign memdep_phi9_pop30239_mux_s = in_valid_in_0;
    always @(memdep_phi9_pop30239_mux_s or in_memdep_phi9_pop30239_1 or in_memdep_phi9_pop30239_0)
    begin
        unique case (memdep_phi9_pop30239_mux_s)
            1'b0 : memdep_phi9_pop30239_mux_q = in_memdep_phi9_pop30239_1;
            1'b1 : memdep_phi9_pop30239_mux_q = in_memdep_phi9_pop30239_0;
            default : memdep_phi9_pop30239_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi9_pop30239(GPOUT,22)
    assign out_memdep_phi9_pop30239 = memdep_phi9_pop30239_mux_q;

    // mul64_add44230_mux(MUX,18)
    assign mul64_add44230_mux_s = in_valid_in_0;
    always @(mul64_add44230_mux_s or in_mul64_add44230_1 or in_mul64_add44230_0)
    begin
        unique case (mul64_add44230_mux_s)
            1'b0 : mul64_add44230_mux_q = in_mul64_add44230_1;
            1'b1 : mul64_add44230_mux_q = in_mul64_add44230_0;
            default : mul64_add44230_mux_q = 32'b0;
        endcase
    end

    // out_mul64_add44230(GPOUT,23)
    assign out_mul64_add44230 = mul64_add44230_mux_q;

    // notcmp64236_mux(MUX,19)
    assign notcmp64236_mux_s = in_valid_in_0;
    always @(notcmp64236_mux_s or in_notcmp64236_1 or in_notcmp64236_0)
    begin
        unique case (notcmp64236_mux_s)
            1'b0 : notcmp64236_mux_q = in_notcmp64236_1;
            1'b1 : notcmp64236_mux_q = in_notcmp64236_0;
            default : notcmp64236_mux_q = 1'b0;
        endcase
    end

    // out_notcmp64236(GPOUT,24)
    assign out_notcmp64236 = notcmp64236_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
