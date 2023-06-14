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

// SystemVerilog created from atax_B5_merge
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B5_merge (
    input wire [31:0] in_add773_0,
    input wire [31:0] in_add773_1,
    input wire [0:0] in_exitcond1250_pop2277_0,
    input wire [0:0] in_exitcond1250_pop2277_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_mPtr_bitcast778965_0,
    input wire [63:0] in_mPtr_bitcast778965_1,
    input wire [63:0] in_mPtr_bitcast_index8845_pop1975_0,
    input wire [63:0] in_mPtr_bitcast_index8845_pop1975_1,
    input wire [0:0] in_memdep_phi3_or71_0,
    input wire [0:0] in_memdep_phi3_or71_1,
    input wire [0:0] in_memdep_phi3_pop1354_pop2469_0,
    input wire [0:0] in_memdep_phi3_pop1354_pop2469_1,
    input wire [31:0] in_mul_add1448_pop2167_0,
    input wire [31:0] in_mul_add1448_pop2167_1,
    input wire [0:0] in_notcmp3552_pop2379_0,
    input wire [0:0] in_notcmp3552_pop2379_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add773,
    output wire [0:0] out_exitcond1250_pop2277,
    output wire [0:0] out_forked,
    output wire [63:0] out_mPtr_bitcast778965,
    output wire [63:0] out_mPtr_bitcast_index8845_pop1975,
    output wire [0:0] out_memdep_phi3_or71,
    output wire [0:0] out_memdep_phi3_pop1354_pop2469,
    output wire [31:0] out_mul_add1448_pop2167,
    output wire [0:0] out_notcmp3552_pop2379,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add773_mux_s;
    reg [31:0] add773_mux_q;
    wire [0:0] exitcond1250_pop2277_mux_s;
    reg [0:0] exitcond1250_pop2277_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] mPtr_bitcast778965_mux_s;
    reg [63:0] mPtr_bitcast778965_mux_q;
    wire [0:0] mPtr_bitcast_index8845_pop1975_mux_s;
    reg [63:0] mPtr_bitcast_index8845_pop1975_mux_q;
    wire [0:0] memdep_phi3_or71_mux_s;
    reg [0:0] memdep_phi3_or71_mux_q;
    wire [0:0] memdep_phi3_pop1354_pop2469_mux_s;
    reg [0:0] memdep_phi3_pop1354_pop2469_mux_q;
    wire [0:0] mul_add1448_pop2167_mux_s;
    reg [31:0] mul_add1448_pop2167_mux_q;
    wire [0:0] notcmp3552_pop2379_mux_s;
    reg [0:0] notcmp3552_pop2379_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add773_mux(MUX,2)
    assign add773_mux_s = in_valid_in_0;
    always @(add773_mux_s or in_add773_1 or in_add773_0)
    begin
        unique case (add773_mux_s)
            1'b0 : add773_mux_q = in_add773_1;
            1'b1 : add773_mux_q = in_add773_0;
            default : add773_mux_q = 32'b0;
        endcase
    end

    // out_add773(GPOUT,32)
    assign out_add773 = add773_mux_q;

    // exitcond1250_pop2277_mux(MUX,3)
    assign exitcond1250_pop2277_mux_s = in_valid_in_0;
    always @(exitcond1250_pop2277_mux_s or in_exitcond1250_pop2277_1 or in_exitcond1250_pop2277_0)
    begin
        unique case (exitcond1250_pop2277_mux_s)
            1'b0 : exitcond1250_pop2277_mux_q = in_exitcond1250_pop2277_1;
            1'b1 : exitcond1250_pop2277_mux_q = in_exitcond1250_pop2277_0;
            default : exitcond1250_pop2277_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1250_pop2277(GPOUT,33)
    assign out_exitcond1250_pop2277 = exitcond1250_pop2277_mux_q;

    // forked_mux(MUX,4)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,34)
    assign out_forked = forked_mux_q;

    // mPtr_bitcast778965_mux(MUX,26)
    assign mPtr_bitcast778965_mux_s = in_valid_in_0;
    always @(mPtr_bitcast778965_mux_s or in_mPtr_bitcast778965_1 or in_mPtr_bitcast778965_0)
    begin
        unique case (mPtr_bitcast778965_mux_s)
            1'b0 : mPtr_bitcast778965_mux_q = in_mPtr_bitcast778965_1;
            1'b1 : mPtr_bitcast778965_mux_q = in_mPtr_bitcast778965_0;
            default : mPtr_bitcast778965_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast778965(GPOUT,35)
    assign out_mPtr_bitcast778965 = mPtr_bitcast778965_mux_q;

    // mPtr_bitcast_index8845_pop1975_mux(MUX,27)
    assign mPtr_bitcast_index8845_pop1975_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index8845_pop1975_mux_s or in_mPtr_bitcast_index8845_pop1975_1 or in_mPtr_bitcast_index8845_pop1975_0)
    begin
        unique case (mPtr_bitcast_index8845_pop1975_mux_s)
            1'b0 : mPtr_bitcast_index8845_pop1975_mux_q = in_mPtr_bitcast_index8845_pop1975_1;
            1'b1 : mPtr_bitcast_index8845_pop1975_mux_q = in_mPtr_bitcast_index8845_pop1975_0;
            default : mPtr_bitcast_index8845_pop1975_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index8845_pop1975(GPOUT,36)
    assign out_mPtr_bitcast_index8845_pop1975 = mPtr_bitcast_index8845_pop1975_mux_q;

    // memdep_phi3_or71_mux(MUX,28)
    assign memdep_phi3_or71_mux_s = in_valid_in_0;
    always @(memdep_phi3_or71_mux_s or in_memdep_phi3_or71_1 or in_memdep_phi3_or71_0)
    begin
        unique case (memdep_phi3_or71_mux_s)
            1'b0 : memdep_phi3_or71_mux_q = in_memdep_phi3_or71_1;
            1'b1 : memdep_phi3_or71_mux_q = in_memdep_phi3_or71_0;
            default : memdep_phi3_or71_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_or71(GPOUT,37)
    assign out_memdep_phi3_or71 = memdep_phi3_or71_mux_q;

    // memdep_phi3_pop1354_pop2469_mux(MUX,29)
    assign memdep_phi3_pop1354_pop2469_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1354_pop2469_mux_s or in_memdep_phi3_pop1354_pop2469_1 or in_memdep_phi3_pop1354_pop2469_0)
    begin
        unique case (memdep_phi3_pop1354_pop2469_mux_s)
            1'b0 : memdep_phi3_pop1354_pop2469_mux_q = in_memdep_phi3_pop1354_pop2469_1;
            1'b1 : memdep_phi3_pop1354_pop2469_mux_q = in_memdep_phi3_pop1354_pop2469_0;
            default : memdep_phi3_pop1354_pop2469_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1354_pop2469(GPOUT,38)
    assign out_memdep_phi3_pop1354_pop2469 = memdep_phi3_pop1354_pop2469_mux_q;

    // mul_add1448_pop2167_mux(MUX,30)
    assign mul_add1448_pop2167_mux_s = in_valid_in_0;
    always @(mul_add1448_pop2167_mux_s or in_mul_add1448_pop2167_1 or in_mul_add1448_pop2167_0)
    begin
        unique case (mul_add1448_pop2167_mux_s)
            1'b0 : mul_add1448_pop2167_mux_q = in_mul_add1448_pop2167_1;
            1'b1 : mul_add1448_pop2167_mux_q = in_mul_add1448_pop2167_0;
            default : mul_add1448_pop2167_mux_q = 32'b0;
        endcase
    end

    // out_mul_add1448_pop2167(GPOUT,39)
    assign out_mul_add1448_pop2167 = mul_add1448_pop2167_mux_q;

    // notcmp3552_pop2379_mux(MUX,31)
    assign notcmp3552_pop2379_mux_s = in_valid_in_0;
    always @(notcmp3552_pop2379_mux_s or in_notcmp3552_pop2379_1 or in_notcmp3552_pop2379_0)
    begin
        unique case (notcmp3552_pop2379_mux_s)
            1'b0 : notcmp3552_pop2379_mux_q = in_notcmp3552_pop2379_1;
            1'b1 : notcmp3552_pop2379_mux_q = in_notcmp3552_pop2379_0;
            default : notcmp3552_pop2379_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3552_pop2379(GPOUT,40)
    assign out_notcmp3552_pop2379 = notcmp3552_pop2379_mux_q;

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
