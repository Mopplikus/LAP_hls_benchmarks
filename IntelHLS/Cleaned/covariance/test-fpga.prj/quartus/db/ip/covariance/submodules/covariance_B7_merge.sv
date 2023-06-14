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

// SystemVerilog created from covariance_B7_merge
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B7_merge (
    input wire [0:0] in_exitcond1089_pop34136_0,
    input wire [0:0] in_exitcond1089_pop34136_1,
    input wire [0:0] in_forked38_0,
    input wire [0:0] in_forked38_1,
    input wire [31:0] in_j_077_pop1993_pop36131_0,
    input wire [31:0] in_j_077_pop1993_pop36131_1,
    input wire [31:0] in_lim_ext115_0,
    input wire [31:0] in_lim_ext115_1,
    input wire [31:0] in_lim_ext80_pop33134_0,
    input wire [31:0] in_lim_ext80_pop33134_1,
    input wire [63:0] in_mPtr_bitcast8286129_0,
    input wire [63:0] in_mPtr_bitcast8286129_1,
    input wire [31:0] in_mul6128_0,
    input wire [31:0] in_mul6128_1,
    input wire [0:0] in_notcmp6991_pop35138_0,
    input wire [0:0] in_notcmp6991_pop35138_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1089_pop34136,
    output wire [0:0] out_forked38,
    output wire [31:0] out_j_077_pop1993_pop36131,
    output wire [31:0] out_lim_ext115,
    output wire [31:0] out_lim_ext80_pop33134,
    output wire [63:0] out_mPtr_bitcast8286129,
    output wire [31:0] out_mul6128,
    output wire [0:0] out_notcmp6991_pop35138,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1089_pop34136_mux_s;
    reg [0:0] exitcond1089_pop34136_mux_q;
    wire [0:0] forked38_mux_s;
    reg [0:0] forked38_mux_q;
    wire [0:0] j_077_pop1993_pop36131_mux_s;
    reg [31:0] j_077_pop1993_pop36131_mux_q;
    wire [0:0] lim_ext115_mux_s;
    reg [31:0] lim_ext115_mux_q;
    wire [0:0] lim_ext80_pop33134_mux_s;
    reg [31:0] lim_ext80_pop33134_mux_q;
    wire [0:0] mPtr_bitcast8286129_mux_s;
    reg [63:0] mPtr_bitcast8286129_mux_q;
    wire [0:0] mul6128_mux_s;
    reg [31:0] mul6128_mux_q;
    wire [0:0] notcmp6991_pop35138_mux_s;
    reg [0:0] notcmp6991_pop35138_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1089_pop34136_mux(MUX,2)
    assign exitcond1089_pop34136_mux_s = in_valid_in_0;
    always @(exitcond1089_pop34136_mux_s or in_exitcond1089_pop34136_1 or in_exitcond1089_pop34136_0)
    begin
        unique case (exitcond1089_pop34136_mux_s)
            1'b0 : exitcond1089_pop34136_mux_q = in_exitcond1089_pop34136_1;
            1'b1 : exitcond1089_pop34136_mux_q = in_exitcond1089_pop34136_0;
            default : exitcond1089_pop34136_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1089_pop34136(GPOUT,29)
    assign out_exitcond1089_pop34136 = exitcond1089_pop34136_mux_q;

    // forked38_mux(MUX,3)
    assign forked38_mux_s = in_valid_in_0;
    always @(forked38_mux_s or in_forked38_1 or in_forked38_0)
    begin
        unique case (forked38_mux_s)
            1'b0 : forked38_mux_q = in_forked38_1;
            1'b1 : forked38_mux_q = in_forked38_0;
            default : forked38_mux_q = 1'b0;
        endcase
    end

    // out_forked38(GPOUT,30)
    assign out_forked38 = forked38_mux_q;

    // j_077_pop1993_pop36131_mux(MUX,23)
    assign j_077_pop1993_pop36131_mux_s = in_valid_in_0;
    always @(j_077_pop1993_pop36131_mux_s or in_j_077_pop1993_pop36131_1 or in_j_077_pop1993_pop36131_0)
    begin
        unique case (j_077_pop1993_pop36131_mux_s)
            1'b0 : j_077_pop1993_pop36131_mux_q = in_j_077_pop1993_pop36131_1;
            1'b1 : j_077_pop1993_pop36131_mux_q = in_j_077_pop1993_pop36131_0;
            default : j_077_pop1993_pop36131_mux_q = 32'b0;
        endcase
    end

    // out_j_077_pop1993_pop36131(GPOUT,31)
    assign out_j_077_pop1993_pop36131 = j_077_pop1993_pop36131_mux_q;

    // lim_ext115_mux(MUX,24)
    assign lim_ext115_mux_s = in_valid_in_0;
    always @(lim_ext115_mux_s or in_lim_ext115_1 or in_lim_ext115_0)
    begin
        unique case (lim_ext115_mux_s)
            1'b0 : lim_ext115_mux_q = in_lim_ext115_1;
            1'b1 : lim_ext115_mux_q = in_lim_ext115_0;
            default : lim_ext115_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext115(GPOUT,32)
    assign out_lim_ext115 = lim_ext115_mux_q;

    // lim_ext80_pop33134_mux(MUX,25)
    assign lim_ext80_pop33134_mux_s = in_valid_in_0;
    always @(lim_ext80_pop33134_mux_s or in_lim_ext80_pop33134_1 or in_lim_ext80_pop33134_0)
    begin
        unique case (lim_ext80_pop33134_mux_s)
            1'b0 : lim_ext80_pop33134_mux_q = in_lim_ext80_pop33134_1;
            1'b1 : lim_ext80_pop33134_mux_q = in_lim_ext80_pop33134_0;
            default : lim_ext80_pop33134_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext80_pop33134(GPOUT,33)
    assign out_lim_ext80_pop33134 = lim_ext80_pop33134_mux_q;

    // mPtr_bitcast8286129_mux(MUX,26)
    assign mPtr_bitcast8286129_mux_s = in_valid_in_0;
    always @(mPtr_bitcast8286129_mux_s or in_mPtr_bitcast8286129_1 or in_mPtr_bitcast8286129_0)
    begin
        unique case (mPtr_bitcast8286129_mux_s)
            1'b0 : mPtr_bitcast8286129_mux_q = in_mPtr_bitcast8286129_1;
            1'b1 : mPtr_bitcast8286129_mux_q = in_mPtr_bitcast8286129_0;
            default : mPtr_bitcast8286129_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast8286129(GPOUT,34)
    assign out_mPtr_bitcast8286129 = mPtr_bitcast8286129_mux_q;

    // mul6128_mux(MUX,27)
    assign mul6128_mux_s = in_valid_in_0;
    always @(mul6128_mux_s or in_mul6128_1 or in_mul6128_0)
    begin
        unique case (mul6128_mux_s)
            1'b0 : mul6128_mux_q = in_mul6128_1;
            1'b1 : mul6128_mux_q = in_mul6128_0;
            default : mul6128_mux_q = 32'b0;
        endcase
    end

    // out_mul6128(GPOUT,35)
    assign out_mul6128 = mul6128_mux_q;

    // notcmp6991_pop35138_mux(MUX,28)
    assign notcmp6991_pop35138_mux_s = in_valid_in_0;
    always @(notcmp6991_pop35138_mux_s or in_notcmp6991_pop35138_1 or in_notcmp6991_pop35138_0)
    begin
        unique case (notcmp6991_pop35138_mux_s)
            1'b0 : notcmp6991_pop35138_mux_q = in_notcmp6991_pop35138_1;
            1'b1 : notcmp6991_pop35138_mux_q = in_notcmp6991_pop35138_0;
            default : notcmp6991_pop35138_mux_q = 1'b0;
        endcase
    end

    // out_notcmp6991_pop35138(GPOUT,36)
    assign out_notcmp6991_pop35138 = notcmp6991_pop35138_mux_q;

    // valid_or(LOGICAL,42)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,40)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,37)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,41)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,38)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,39)
    assign out_valid_out = valid_or_q;

endmodule
