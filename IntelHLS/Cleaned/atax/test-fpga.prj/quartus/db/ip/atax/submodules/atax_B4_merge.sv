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

// SystemVerilog created from atax_B4_merge
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B4_merge (
    input wire [0:0] in_exitcond1262_0,
    input wire [0:0] in_exitcond1262_1,
    input wire [0:0] in_forked20_0,
    input wire [0:0] in_forked20_1,
    input wire [63:0] in_mPtr_bitcast_index8859_0,
    input wire [63:0] in_mPtr_bitcast_index8859_1,
    input wire [0:0] in_memdep_phi3_pop1364_0,
    input wire [0:0] in_memdep_phi3_pop1364_1,
    input wire [0:0] in_memdep_phi_pop1260_0,
    input wire [0:0] in_memdep_phi_pop1260_1,
    input wire [31:0] in_mul_add1461_0,
    input wire [31:0] in_mul_add1461_1,
    input wire [0:0] in_notcmp3563_0,
    input wire [0:0] in_notcmp3563_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_atax9_0,
    input wire [31:0] in_unnamed_atax9_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond1262,
    output wire [0:0] out_forked20,
    output wire [63:0] out_mPtr_bitcast_index8859,
    output wire [0:0] out_memdep_phi3_pop1364,
    output wire [0:0] out_memdep_phi_pop1260,
    output wire [31:0] out_mul_add1461,
    output wire [0:0] out_notcmp3563,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax9,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond1262_mux_s;
    reg [0:0] exitcond1262_mux_q;
    wire [0:0] forked20_mux_s;
    reg [0:0] forked20_mux_q;
    wire [0:0] mPtr_bitcast_index8859_mux_s;
    reg [63:0] mPtr_bitcast_index8859_mux_q;
    wire [0:0] memdep_phi3_pop1364_mux_s;
    reg [0:0] memdep_phi3_pop1364_mux_q;
    wire [0:0] memdep_phi_pop1260_mux_s;
    reg [0:0] memdep_phi_pop1260_mux_q;
    wire [0:0] mul_add1461_mux_s;
    reg [31:0] mul_add1461_mux_q;
    wire [0:0] notcmp3563_mux_s;
    reg [0:0] notcmp3563_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_atax9_mux_s;
    reg [31:0] unnamed_atax9_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond1262_mux(MUX,2)
    assign exitcond1262_mux_s = in_valid_in_0;
    always @(exitcond1262_mux_s or in_exitcond1262_1 or in_exitcond1262_0)
    begin
        unique case (exitcond1262_mux_s)
            1'b0 : exitcond1262_mux_q = in_exitcond1262_1;
            1'b1 : exitcond1262_mux_q = in_exitcond1262_0;
            default : exitcond1262_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1262(GPOUT,28)
    assign out_exitcond1262 = exitcond1262_mux_q;

    // forked20_mux(MUX,3)
    assign forked20_mux_s = in_valid_in_0;
    always @(forked20_mux_s or in_forked20_1 or in_forked20_0)
    begin
        unique case (forked20_mux_s)
            1'b0 : forked20_mux_q = in_forked20_1;
            1'b1 : forked20_mux_q = in_forked20_0;
            default : forked20_mux_q = 1'b0;
        endcase
    end

    // out_forked20(GPOUT,29)
    assign out_forked20 = forked20_mux_q;

    // mPtr_bitcast_index8859_mux(MUX,23)
    assign mPtr_bitcast_index8859_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index8859_mux_s or in_mPtr_bitcast_index8859_1 or in_mPtr_bitcast_index8859_0)
    begin
        unique case (mPtr_bitcast_index8859_mux_s)
            1'b0 : mPtr_bitcast_index8859_mux_q = in_mPtr_bitcast_index8859_1;
            1'b1 : mPtr_bitcast_index8859_mux_q = in_mPtr_bitcast_index8859_0;
            default : mPtr_bitcast_index8859_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index8859(GPOUT,30)
    assign out_mPtr_bitcast_index8859 = mPtr_bitcast_index8859_mux_q;

    // memdep_phi3_pop1364_mux(MUX,24)
    assign memdep_phi3_pop1364_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1364_mux_s or in_memdep_phi3_pop1364_1 or in_memdep_phi3_pop1364_0)
    begin
        unique case (memdep_phi3_pop1364_mux_s)
            1'b0 : memdep_phi3_pop1364_mux_q = in_memdep_phi3_pop1364_1;
            1'b1 : memdep_phi3_pop1364_mux_q = in_memdep_phi3_pop1364_0;
            default : memdep_phi3_pop1364_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1364(GPOUT,31)
    assign out_memdep_phi3_pop1364 = memdep_phi3_pop1364_mux_q;

    // memdep_phi_pop1260_mux(MUX,25)
    assign memdep_phi_pop1260_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1260_mux_s or in_memdep_phi_pop1260_1 or in_memdep_phi_pop1260_0)
    begin
        unique case (memdep_phi_pop1260_mux_s)
            1'b0 : memdep_phi_pop1260_mux_q = in_memdep_phi_pop1260_1;
            1'b1 : memdep_phi_pop1260_mux_q = in_memdep_phi_pop1260_0;
            default : memdep_phi_pop1260_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1260(GPOUT,32)
    assign out_memdep_phi_pop1260 = memdep_phi_pop1260_mux_q;

    // mul_add1461_mux(MUX,26)
    assign mul_add1461_mux_s = in_valid_in_0;
    always @(mul_add1461_mux_s or in_mul_add1461_1 or in_mul_add1461_0)
    begin
        unique case (mul_add1461_mux_s)
            1'b0 : mul_add1461_mux_q = in_mul_add1461_1;
            1'b1 : mul_add1461_mux_q = in_mul_add1461_0;
            default : mul_add1461_mux_q = 32'b0;
        endcase
    end

    // out_mul_add1461(GPOUT,33)
    assign out_mul_add1461 = mul_add1461_mux_q;

    // notcmp3563_mux(MUX,27)
    assign notcmp3563_mux_s = in_valid_in_0;
    always @(notcmp3563_mux_s or in_notcmp3563_1 or in_notcmp3563_0)
    begin
        unique case (notcmp3563_mux_s)
            1'b0 : notcmp3563_mux_q = in_notcmp3563_1;
            1'b1 : notcmp3563_mux_q = in_notcmp3563_0;
            default : notcmp3563_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3563(GPOUT,34)
    assign out_notcmp3563 = notcmp3563_mux_q;

    // valid_or(LOGICAL,42)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,39)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,40)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,36)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_atax9_mux(MUX,41)
    assign unnamed_atax9_mux_s = in_valid_in_0;
    always @(unnamed_atax9_mux_s or in_unnamed_atax9_1 or in_unnamed_atax9_0)
    begin
        unique case (unnamed_atax9_mux_s)
            1'b0 : unnamed_atax9_mux_q = in_unnamed_atax9_1;
            1'b1 : unnamed_atax9_mux_q = in_unnamed_atax9_0;
            default : unnamed_atax9_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_atax9(GPOUT,37)
    assign out_unnamed_atax9 = unnamed_atax9_mux_q;

    // out_valid_out(GPOUT,38)
    assign out_valid_out = valid_or_q;

endmodule
