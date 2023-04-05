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

// SystemVerilog created from kernel_3mm_B8_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B8_merge (
    input wire [63:0] in_arrayidx778195_0,
    input wire [63:0] in_arrayidx778195_1,
    input wire [0:0] in_forked97_0,
    input wire [0:0] in_forked97_1,
    input wire [31:0] in_i_1102_pop29154_pop42192_0,
    input wire [31:0] in_i_1102_pop29154_pop42192_1,
    input wire [31:0] in_i_1102_pop29186_0,
    input wire [31:0] in_i_1102_pop29186_1,
    input wire [63:0] in_idxprom74193_0,
    input wire [63:0] in_idxprom74193_1,
    input wire [63:0] in_idxprom76194_0,
    input wire [63:0] in_idxprom76194_1,
    input wire [0:0] in_notcmp112196_0,
    input wire [0:0] in_notcmp112196_1,
    input wire [0:0] in_notcmp117157_pop43197_0,
    input wire [0:0] in_notcmp117157_pop43197_1,
    input wire [0:0] in_notcmp117191_0,
    input wire [0:0] in_notcmp117191_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm18_0,
    input wire [31:0] in_unnamed_kernel_3mm18_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx778195,
    output wire [0:0] out_forked97,
    output wire [31:0] out_i_1102_pop29154_pop42192,
    output wire [31:0] out_i_1102_pop29186,
    output wire [63:0] out_idxprom74193,
    output wire [63:0] out_idxprom76194,
    output wire [0:0] out_notcmp112196,
    output wire [0:0] out_notcmp117157_pop43197,
    output wire [0:0] out_notcmp117191,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm18,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx778195_mux_s;
    reg [63:0] arrayidx778195_mux_q;
    wire [0:0] forked97_mux_s;
    reg [0:0] forked97_mux_q;
    wire [0:0] i_1102_pop29154_pop42192_mux_s;
    reg [31:0] i_1102_pop29154_pop42192_mux_q;
    wire [0:0] i_1102_pop29186_mux_s;
    reg [31:0] i_1102_pop29186_mux_q;
    wire [0:0] idxprom74193_mux_s;
    reg [63:0] idxprom74193_mux_q;
    wire [0:0] idxprom76194_mux_s;
    reg [63:0] idxprom76194_mux_q;
    wire [0:0] notcmp112196_mux_s;
    reg [0:0] notcmp112196_mux_q;
    wire [0:0] notcmp117157_pop43197_mux_s;
    reg [0:0] notcmp117157_pop43197_mux_q;
    wire [0:0] notcmp117191_mux_s;
    reg [0:0] notcmp117191_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm18_mux_s;
    reg [31:0] unnamed_kernel_3mm18_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx778195_mux(MUX,2)
    assign arrayidx778195_mux_s = in_valid_in_0;
    always @(arrayidx778195_mux_s or in_arrayidx778195_1 or in_arrayidx778195_0)
    begin
        unique case (arrayidx778195_mux_s)
            1'b0 : arrayidx778195_mux_q = in_arrayidx778195_1;
            1'b1 : arrayidx778195_mux_q = in_arrayidx778195_0;
            default : arrayidx778195_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx778195(GPOUT,34)
    assign out_arrayidx778195 = arrayidx778195_mux_q;

    // forked97_mux(MUX,3)
    assign forked97_mux_s = in_valid_in_0;
    always @(forked97_mux_s or in_forked97_1 or in_forked97_0)
    begin
        unique case (forked97_mux_s)
            1'b0 : forked97_mux_q = in_forked97_1;
            1'b1 : forked97_mux_q = in_forked97_0;
            default : forked97_mux_q = 1'b0;
        endcase
    end

    // out_forked97(GPOUT,35)
    assign out_forked97 = forked97_mux_q;

    // i_1102_pop29154_pop42192_mux(MUX,4)
    assign i_1102_pop29154_pop42192_mux_s = in_valid_in_0;
    always @(i_1102_pop29154_pop42192_mux_s or in_i_1102_pop29154_pop42192_1 or in_i_1102_pop29154_pop42192_0)
    begin
        unique case (i_1102_pop29154_pop42192_mux_s)
            1'b0 : i_1102_pop29154_pop42192_mux_q = in_i_1102_pop29154_pop42192_1;
            1'b1 : i_1102_pop29154_pop42192_mux_q = in_i_1102_pop29154_pop42192_0;
            default : i_1102_pop29154_pop42192_mux_q = 32'b0;
        endcase
    end

    // out_i_1102_pop29154_pop42192(GPOUT,36)
    assign out_i_1102_pop29154_pop42192 = i_1102_pop29154_pop42192_mux_q;

    // i_1102_pop29186_mux(MUX,5)
    assign i_1102_pop29186_mux_s = in_valid_in_0;
    always @(i_1102_pop29186_mux_s or in_i_1102_pop29186_1 or in_i_1102_pop29186_0)
    begin
        unique case (i_1102_pop29186_mux_s)
            1'b0 : i_1102_pop29186_mux_q = in_i_1102_pop29186_1;
            1'b1 : i_1102_pop29186_mux_q = in_i_1102_pop29186_0;
            default : i_1102_pop29186_mux_q = 32'b0;
        endcase
    end

    // out_i_1102_pop29186(GPOUT,37)
    assign out_i_1102_pop29186 = i_1102_pop29186_mux_q;

    // idxprom74193_mux(MUX,6)
    assign idxprom74193_mux_s = in_valid_in_0;
    always @(idxprom74193_mux_s or in_idxprom74193_1 or in_idxprom74193_0)
    begin
        unique case (idxprom74193_mux_s)
            1'b0 : idxprom74193_mux_q = in_idxprom74193_1;
            1'b1 : idxprom74193_mux_q = in_idxprom74193_0;
            default : idxprom74193_mux_q = 64'b0;
        endcase
    end

    // out_idxprom74193(GPOUT,38)
    assign out_idxprom74193 = idxprom74193_mux_q;

    // idxprom76194_mux(MUX,7)
    assign idxprom76194_mux_s = in_valid_in_0;
    always @(idxprom76194_mux_s or in_idxprom76194_1 or in_idxprom76194_0)
    begin
        unique case (idxprom76194_mux_s)
            1'b0 : idxprom76194_mux_q = in_idxprom76194_1;
            1'b1 : idxprom76194_mux_q = in_idxprom76194_0;
            default : idxprom76194_mux_q = 64'b0;
        endcase
    end

    // out_idxprom76194(GPOUT,39)
    assign out_idxprom76194 = idxprom76194_mux_q;

    // notcmp112196_mux(MUX,31)
    assign notcmp112196_mux_s = in_valid_in_0;
    always @(notcmp112196_mux_s or in_notcmp112196_1 or in_notcmp112196_0)
    begin
        unique case (notcmp112196_mux_s)
            1'b0 : notcmp112196_mux_q = in_notcmp112196_1;
            1'b1 : notcmp112196_mux_q = in_notcmp112196_0;
            default : notcmp112196_mux_q = 1'b0;
        endcase
    end

    // out_notcmp112196(GPOUT,40)
    assign out_notcmp112196 = notcmp112196_mux_q;

    // notcmp117157_pop43197_mux(MUX,32)
    assign notcmp117157_pop43197_mux_s = in_valid_in_0;
    always @(notcmp117157_pop43197_mux_s or in_notcmp117157_pop43197_1 or in_notcmp117157_pop43197_0)
    begin
        unique case (notcmp117157_pop43197_mux_s)
            1'b0 : notcmp117157_pop43197_mux_q = in_notcmp117157_pop43197_1;
            1'b1 : notcmp117157_pop43197_mux_q = in_notcmp117157_pop43197_0;
            default : notcmp117157_pop43197_mux_q = 1'b0;
        endcase
    end

    // out_notcmp117157_pop43197(GPOUT,41)
    assign out_notcmp117157_pop43197 = notcmp117157_pop43197_mux_q;

    // notcmp117191_mux(MUX,33)
    assign notcmp117191_mux_s = in_valid_in_0;
    always @(notcmp117191_mux_s or in_notcmp117191_1 or in_notcmp117191_0)
    begin
        unique case (notcmp117191_mux_s)
            1'b0 : notcmp117191_mux_q = in_notcmp117191_1;
            1'b1 : notcmp117191_mux_q = in_notcmp117191_0;
            default : notcmp117191_mux_q = 1'b0;
        endcase
    end

    // out_notcmp117191(GPOUT,42)
    assign out_notcmp117191 = notcmp117191_mux_q;

    // valid_or(LOGICAL,50)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,47)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,48)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kernel_3mm18_mux(MUX,49)
    assign unnamed_kernel_3mm18_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm18_mux_s or in_unnamed_kernel_3mm18_1 or in_unnamed_kernel_3mm18_0)
    begin
        unique case (unnamed_kernel_3mm18_mux_s)
            1'b0 : unnamed_kernel_3mm18_mux_q = in_unnamed_kernel_3mm18_1;
            1'b1 : unnamed_kernel_3mm18_mux_q = in_unnamed_kernel_3mm18_0;
            default : unnamed_kernel_3mm18_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm18(GPOUT,45)
    assign out_unnamed_kernel_3mm18 = unnamed_kernel_3mm18_mux_q;

    // out_valid_out(GPOUT,46)
    assign out_valid_out = valid_or_q;

endmodule
