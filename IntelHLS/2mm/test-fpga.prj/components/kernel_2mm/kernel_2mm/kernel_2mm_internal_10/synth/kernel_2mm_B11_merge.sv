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

// SystemVerilog created from kernel_2mm_B11_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B11_merge (
    input wire [63:0] in_arrayidx49496_0,
    input wire [63:0] in_arrayidx49496_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_idxprom4894_0,
    input wire [63:0] in_idxprom4894_1,
    input wire [63:0] in_idxprom60_pop2395_0,
    input wire [63:0] in_idxprom60_pop2395_1,
    input wire [63:0] in_idxprom62_pop3183_0,
    input wire [63:0] in_idxprom62_pop3183_1,
    input wire [31:0] in_mul5097_0,
    input wire [31:0] in_mul5097_1,
    input wire [0:0] in_notcmp1698_0,
    input wire [0:0] in_notcmp1698_1,
    input wire [0:0] in_notcmp4254_pop2989_0,
    input wire [0:0] in_notcmp4254_pop2989_1,
    input wire [0:0] in_notcmp4255_pop2299_0,
    input wire [0:0] in_notcmp4255_pop2299_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx49496,
    output wire [0:0] out_forked,
    output wire [63:0] out_idxprom4894,
    output wire [63:0] out_idxprom60_pop2395,
    output wire [63:0] out_idxprom62_pop3183,
    output wire [31:0] out_mul5097,
    output wire [0:0] out_notcmp1698,
    output wire [0:0] out_notcmp4254_pop2989,
    output wire [0:0] out_notcmp4255_pop2299,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx49496_mux_s;
    reg [63:0] arrayidx49496_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] idxprom4894_mux_s;
    reg [63:0] idxprom4894_mux_q;
    wire [0:0] idxprom60_pop2395_mux_s;
    reg [63:0] idxprom60_pop2395_mux_q;
    wire [0:0] idxprom62_pop3183_mux_s;
    reg [63:0] idxprom62_pop3183_mux_q;
    wire [0:0] mul5097_mux_s;
    reg [31:0] mul5097_mux_q;
    wire [0:0] notcmp1698_mux_s;
    reg [0:0] notcmp1698_mux_q;
    wire [0:0] notcmp4254_pop2989_mux_s;
    reg [0:0] notcmp4254_pop2989_mux_q;
    wire [0:0] notcmp4255_pop2299_mux_s;
    reg [0:0] notcmp4255_pop2299_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx49496_mux(MUX,2)
    assign arrayidx49496_mux_s = in_valid_in_0;
    always @(arrayidx49496_mux_s or in_arrayidx49496_1 or in_arrayidx49496_0)
    begin
        unique case (arrayidx49496_mux_s)
            1'b0 : arrayidx49496_mux_q = in_arrayidx49496_1;
            1'b1 : arrayidx49496_mux_q = in_arrayidx49496_0;
            default : arrayidx49496_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx49496(GPOUT,32)
    assign out_arrayidx49496 = arrayidx49496_mux_q;

    // forked_mux(MUX,3)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,33)
    assign out_forked = forked_mux_q;

    // idxprom4894_mux(MUX,4)
    assign idxprom4894_mux_s = in_valid_in_0;
    always @(idxprom4894_mux_s or in_idxprom4894_1 or in_idxprom4894_0)
    begin
        unique case (idxprom4894_mux_s)
            1'b0 : idxprom4894_mux_q = in_idxprom4894_1;
            1'b1 : idxprom4894_mux_q = in_idxprom4894_0;
            default : idxprom4894_mux_q = 64'b0;
        endcase
    end

    // out_idxprom4894(GPOUT,34)
    assign out_idxprom4894 = idxprom4894_mux_q;

    // idxprom60_pop2395_mux(MUX,5)
    assign idxprom60_pop2395_mux_s = in_valid_in_0;
    always @(idxprom60_pop2395_mux_s or in_idxprom60_pop2395_1 or in_idxprom60_pop2395_0)
    begin
        unique case (idxprom60_pop2395_mux_s)
            1'b0 : idxprom60_pop2395_mux_q = in_idxprom60_pop2395_1;
            1'b1 : idxprom60_pop2395_mux_q = in_idxprom60_pop2395_0;
            default : idxprom60_pop2395_mux_q = 64'b0;
        endcase
    end

    // out_idxprom60_pop2395(GPOUT,35)
    assign out_idxprom60_pop2395 = idxprom60_pop2395_mux_q;

    // idxprom62_pop3183_mux(MUX,6)
    assign idxprom62_pop3183_mux_s = in_valid_in_0;
    always @(idxprom62_pop3183_mux_s or in_idxprom62_pop3183_1 or in_idxprom62_pop3183_0)
    begin
        unique case (idxprom62_pop3183_mux_s)
            1'b0 : idxprom62_pop3183_mux_q = in_idxprom62_pop3183_1;
            1'b1 : idxprom62_pop3183_mux_q = in_idxprom62_pop3183_0;
            default : idxprom62_pop3183_mux_q = 64'b0;
        endcase
    end

    // out_idxprom62_pop3183(GPOUT,36)
    assign out_idxprom62_pop3183 = idxprom62_pop3183_mux_q;

    // mul5097_mux(MUX,28)
    assign mul5097_mux_s = in_valid_in_0;
    always @(mul5097_mux_s or in_mul5097_1 or in_mul5097_0)
    begin
        unique case (mul5097_mux_s)
            1'b0 : mul5097_mux_q = in_mul5097_1;
            1'b1 : mul5097_mux_q = in_mul5097_0;
            default : mul5097_mux_q = 32'b0;
        endcase
    end

    // out_mul5097(GPOUT,37)
    assign out_mul5097 = mul5097_mux_q;

    // notcmp1698_mux(MUX,29)
    assign notcmp1698_mux_s = in_valid_in_0;
    always @(notcmp1698_mux_s or in_notcmp1698_1 or in_notcmp1698_0)
    begin
        unique case (notcmp1698_mux_s)
            1'b0 : notcmp1698_mux_q = in_notcmp1698_1;
            1'b1 : notcmp1698_mux_q = in_notcmp1698_0;
            default : notcmp1698_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1698(GPOUT,38)
    assign out_notcmp1698 = notcmp1698_mux_q;

    // notcmp4254_pop2989_mux(MUX,30)
    assign notcmp4254_pop2989_mux_s = in_valid_in_0;
    always @(notcmp4254_pop2989_mux_s or in_notcmp4254_pop2989_1 or in_notcmp4254_pop2989_0)
    begin
        unique case (notcmp4254_pop2989_mux_s)
            1'b0 : notcmp4254_pop2989_mux_q = in_notcmp4254_pop2989_1;
            1'b1 : notcmp4254_pop2989_mux_q = in_notcmp4254_pop2989_0;
            default : notcmp4254_pop2989_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4254_pop2989(GPOUT,39)
    assign out_notcmp4254_pop2989 = notcmp4254_pop2989_mux_q;

    // notcmp4255_pop2299_mux(MUX,31)
    assign notcmp4255_pop2299_mux_s = in_valid_in_0;
    always @(notcmp4255_pop2299_mux_s or in_notcmp4255_pop2299_1 or in_notcmp4255_pop2299_0)
    begin
        unique case (notcmp4255_pop2299_mux_s)
            1'b0 : notcmp4255_pop2299_mux_q = in_notcmp4255_pop2299_1;
            1'b1 : notcmp4255_pop2299_mux_q = in_notcmp4255_pop2299_0;
            default : notcmp4255_pop2299_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4255_pop2299(GPOUT,40)
    assign out_notcmp4255_pop2299 = notcmp4255_pop2299_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,44)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,45)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,43)
    assign out_valid_out = valid_or_q;

endmodule
