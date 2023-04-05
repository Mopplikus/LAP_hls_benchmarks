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

// SystemVerilog created from kernel_3mm_B16_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B16_merge (
    input wire [63:0] in_arrayidx14914225_0,
    input wire [63:0] in_arrayidx14914225_1,
    input wire [0:0] in_forked55_0,
    input wire [0:0] in_forked55_1,
    input wire [31:0] in_i_394_pop31163_pop47222_0,
    input wire [31:0] in_i_394_pop31163_pop47222_1,
    input wire [31:0] in_i_394_pop31221_0,
    input wire [31:0] in_i_394_pop31221_1,
    input wire [63:0] in_idxprom146223_0,
    input wire [63:0] in_idxprom146223_1,
    input wire [63:0] in_idxprom148224_0,
    input wire [63:0] in_idxprom148224_1,
    input wire [0:0] in_notcmp70226_0,
    input wire [0:0] in_notcmp70226_1,
    input wire [0:0] in_notcmp75161_pop46227_0,
    input wire [0:0] in_notcmp75161_pop46227_1,
    input wire [0:0] in_notcmp75218_0,
    input wire [0:0] in_notcmp75218_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm26_0,
    input wire [31:0] in_unnamed_kernel_3mm26_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx14914225,
    output wire [0:0] out_forked55,
    output wire [31:0] out_i_394_pop31163_pop47222,
    output wire [31:0] out_i_394_pop31221,
    output wire [63:0] out_idxprom146223,
    output wire [63:0] out_idxprom148224,
    output wire [0:0] out_notcmp70226,
    output wire [0:0] out_notcmp75161_pop46227,
    output wire [0:0] out_notcmp75218,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm26,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx14914225_mux_s;
    reg [63:0] arrayidx14914225_mux_q;
    wire [0:0] forked55_mux_s;
    reg [0:0] forked55_mux_q;
    wire [0:0] i_394_pop31163_pop47222_mux_s;
    reg [31:0] i_394_pop31163_pop47222_mux_q;
    wire [0:0] i_394_pop31221_mux_s;
    reg [31:0] i_394_pop31221_mux_q;
    wire [0:0] idxprom146223_mux_s;
    reg [63:0] idxprom146223_mux_q;
    wire [0:0] idxprom148224_mux_s;
    reg [63:0] idxprom148224_mux_q;
    wire [0:0] notcmp70226_mux_s;
    reg [0:0] notcmp70226_mux_q;
    wire [0:0] notcmp75161_pop46227_mux_s;
    reg [0:0] notcmp75161_pop46227_mux_q;
    wire [0:0] notcmp75218_mux_s;
    reg [0:0] notcmp75218_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm26_mux_s;
    reg [31:0] unnamed_kernel_3mm26_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx14914225_mux(MUX,2)
    assign arrayidx14914225_mux_s = in_valid_in_0;
    always @(arrayidx14914225_mux_s or in_arrayidx14914225_1 or in_arrayidx14914225_0)
    begin
        unique case (arrayidx14914225_mux_s)
            1'b0 : arrayidx14914225_mux_q = in_arrayidx14914225_1;
            1'b1 : arrayidx14914225_mux_q = in_arrayidx14914225_0;
            default : arrayidx14914225_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx14914225(GPOUT,34)
    assign out_arrayidx14914225 = arrayidx14914225_mux_q;

    // forked55_mux(MUX,3)
    assign forked55_mux_s = in_valid_in_0;
    always @(forked55_mux_s or in_forked55_1 or in_forked55_0)
    begin
        unique case (forked55_mux_s)
            1'b0 : forked55_mux_q = in_forked55_1;
            1'b1 : forked55_mux_q = in_forked55_0;
            default : forked55_mux_q = 1'b0;
        endcase
    end

    // out_forked55(GPOUT,35)
    assign out_forked55 = forked55_mux_q;

    // i_394_pop31163_pop47222_mux(MUX,4)
    assign i_394_pop31163_pop47222_mux_s = in_valid_in_0;
    always @(i_394_pop31163_pop47222_mux_s or in_i_394_pop31163_pop47222_1 or in_i_394_pop31163_pop47222_0)
    begin
        unique case (i_394_pop31163_pop47222_mux_s)
            1'b0 : i_394_pop31163_pop47222_mux_q = in_i_394_pop31163_pop47222_1;
            1'b1 : i_394_pop31163_pop47222_mux_q = in_i_394_pop31163_pop47222_0;
            default : i_394_pop31163_pop47222_mux_q = 32'b0;
        endcase
    end

    // out_i_394_pop31163_pop47222(GPOUT,36)
    assign out_i_394_pop31163_pop47222 = i_394_pop31163_pop47222_mux_q;

    // i_394_pop31221_mux(MUX,5)
    assign i_394_pop31221_mux_s = in_valid_in_0;
    always @(i_394_pop31221_mux_s or in_i_394_pop31221_1 or in_i_394_pop31221_0)
    begin
        unique case (i_394_pop31221_mux_s)
            1'b0 : i_394_pop31221_mux_q = in_i_394_pop31221_1;
            1'b1 : i_394_pop31221_mux_q = in_i_394_pop31221_0;
            default : i_394_pop31221_mux_q = 32'b0;
        endcase
    end

    // out_i_394_pop31221(GPOUT,37)
    assign out_i_394_pop31221 = i_394_pop31221_mux_q;

    // idxprom146223_mux(MUX,6)
    assign idxprom146223_mux_s = in_valid_in_0;
    always @(idxprom146223_mux_s or in_idxprom146223_1 or in_idxprom146223_0)
    begin
        unique case (idxprom146223_mux_s)
            1'b0 : idxprom146223_mux_q = in_idxprom146223_1;
            1'b1 : idxprom146223_mux_q = in_idxprom146223_0;
            default : idxprom146223_mux_q = 64'b0;
        endcase
    end

    // out_idxprom146223(GPOUT,38)
    assign out_idxprom146223 = idxprom146223_mux_q;

    // idxprom148224_mux(MUX,7)
    assign idxprom148224_mux_s = in_valid_in_0;
    always @(idxprom148224_mux_s or in_idxprom148224_1 or in_idxprom148224_0)
    begin
        unique case (idxprom148224_mux_s)
            1'b0 : idxprom148224_mux_q = in_idxprom148224_1;
            1'b1 : idxprom148224_mux_q = in_idxprom148224_0;
            default : idxprom148224_mux_q = 64'b0;
        endcase
    end

    // out_idxprom148224(GPOUT,39)
    assign out_idxprom148224 = idxprom148224_mux_q;

    // notcmp70226_mux(MUX,31)
    assign notcmp70226_mux_s = in_valid_in_0;
    always @(notcmp70226_mux_s or in_notcmp70226_1 or in_notcmp70226_0)
    begin
        unique case (notcmp70226_mux_s)
            1'b0 : notcmp70226_mux_q = in_notcmp70226_1;
            1'b1 : notcmp70226_mux_q = in_notcmp70226_0;
            default : notcmp70226_mux_q = 1'b0;
        endcase
    end

    // out_notcmp70226(GPOUT,40)
    assign out_notcmp70226 = notcmp70226_mux_q;

    // notcmp75161_pop46227_mux(MUX,32)
    assign notcmp75161_pop46227_mux_s = in_valid_in_0;
    always @(notcmp75161_pop46227_mux_s or in_notcmp75161_pop46227_1 or in_notcmp75161_pop46227_0)
    begin
        unique case (notcmp75161_pop46227_mux_s)
            1'b0 : notcmp75161_pop46227_mux_q = in_notcmp75161_pop46227_1;
            1'b1 : notcmp75161_pop46227_mux_q = in_notcmp75161_pop46227_0;
            default : notcmp75161_pop46227_mux_q = 1'b0;
        endcase
    end

    // out_notcmp75161_pop46227(GPOUT,41)
    assign out_notcmp75161_pop46227 = notcmp75161_pop46227_mux_q;

    // notcmp75218_mux(MUX,33)
    assign notcmp75218_mux_s = in_valid_in_0;
    always @(notcmp75218_mux_s or in_notcmp75218_1 or in_notcmp75218_0)
    begin
        unique case (notcmp75218_mux_s)
            1'b0 : notcmp75218_mux_q = in_notcmp75218_1;
            1'b1 : notcmp75218_mux_q = in_notcmp75218_0;
            default : notcmp75218_mux_q = 1'b0;
        endcase
    end

    // out_notcmp75218(GPOUT,42)
    assign out_notcmp75218 = notcmp75218_mux_q;

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

    // unnamed_kernel_3mm26_mux(MUX,49)
    assign unnamed_kernel_3mm26_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm26_mux_s or in_unnamed_kernel_3mm26_1 or in_unnamed_kernel_3mm26_0)
    begin
        unique case (unnamed_kernel_3mm26_mux_s)
            1'b0 : unnamed_kernel_3mm26_mux_q = in_unnamed_kernel_3mm26_1;
            1'b1 : unnamed_kernel_3mm26_mux_q = in_unnamed_kernel_3mm26_0;
            default : unnamed_kernel_3mm26_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm26(GPOUT,45)
    assign out_unnamed_kernel_3mm26 = unnamed_kernel_3mm26_mux_q;

    // out_valid_out(GPOUT,46)
    assign out_valid_out = valid_or_q;

endmodule
