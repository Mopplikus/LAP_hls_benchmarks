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

// SystemVerilog created from stencil_2d_B4_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B4_merge (
    input wire [0:0] in_forked35_0,
    input wire [0:0] in_forked35_1,
    input wire [31:0] in_mul2861_0,
    input wire [31:0] in_mul2861_1,
    input wire [0:0] in_notcmp2466_0,
    input wire [0:0] in_notcmp2466_1,
    input wire [31:0] in_r_026_pop1356_0,
    input wire [31:0] in_r_026_pop1356_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked35,
    output wire [31:0] out_mul2861,
    output wire [0:0] out_notcmp2466,
    output wire [31:0] out_r_026_pop1356,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked35_mux_s;
    reg [0:0] forked35_mux_q;
    wire [0:0] mul2861_mux_s;
    reg [31:0] mul2861_mux_q;
    wire [0:0] notcmp2466_mux_s;
    reg [0:0] notcmp2466_mux_q;
    wire [0:0] r_026_pop1356_mux_s;
    reg [31:0] r_026_pop1356_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked35_mux(MUX,2)
    assign forked35_mux_s = in_valid_in_0;
    always @(forked35_mux_s or in_forked35_1 or in_forked35_0)
    begin
        unique case (forked35_mux_s)
            1'b0 : forked35_mux_q = in_forked35_1;
            1'b1 : forked35_mux_q = in_forked35_0;
            default : forked35_mux_q = 1'b0;
        endcase
    end

    // out_forked35(GPOUT,16)
    assign out_forked35 = forked35_mux_q;

    // mul2861_mux(MUX,14)
    assign mul2861_mux_s = in_valid_in_0;
    always @(mul2861_mux_s or in_mul2861_1 or in_mul2861_0)
    begin
        unique case (mul2861_mux_s)
            1'b0 : mul2861_mux_q = in_mul2861_1;
            1'b1 : mul2861_mux_q = in_mul2861_0;
            default : mul2861_mux_q = 32'b0;
        endcase
    end

    // out_mul2861(GPOUT,17)
    assign out_mul2861 = mul2861_mux_q;

    // notcmp2466_mux(MUX,15)
    assign notcmp2466_mux_s = in_valid_in_0;
    always @(notcmp2466_mux_s or in_notcmp2466_1 or in_notcmp2466_0)
    begin
        unique case (notcmp2466_mux_s)
            1'b0 : notcmp2466_mux_q = in_notcmp2466_1;
            1'b1 : notcmp2466_mux_q = in_notcmp2466_0;
            default : notcmp2466_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2466(GPOUT,18)
    assign out_notcmp2466 = notcmp2466_mux_q;

    // r_026_pop1356_mux(MUX,23)
    assign r_026_pop1356_mux_s = in_valid_in_0;
    always @(r_026_pop1356_mux_s or in_r_026_pop1356_1 or in_r_026_pop1356_0)
    begin
        unique case (r_026_pop1356_mux_s)
            1'b0 : r_026_pop1356_mux_q = in_r_026_pop1356_1;
            1'b1 : r_026_pop1356_mux_q = in_r_026_pop1356_0;
            default : r_026_pop1356_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1356(GPOUT,19)
    assign out_r_026_pop1356 = r_026_pop1356_mux_q;

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
