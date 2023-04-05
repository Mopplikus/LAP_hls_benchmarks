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

// SystemVerilog created from covariance_B20_merge
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B20_merge (
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i56_152_pop39243_0,
    input wire [31:0] in_i56_152_pop39243_1,
    input wire [0:0] in_notcmp37242_0,
    input wire [0:0] in_notcmp37242_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked,
    output wire [31:0] out_i56_152_pop39243,
    output wire [0:0] out_notcmp37242,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] i56_152_pop39243_mux_s;
    reg [31:0] i56_152_pop39243_mux_q;
    wire [0:0] notcmp37242_mux_s;
    reg [0:0] notcmp37242_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked_mux(MUX,2)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,14)
    assign out_forked = forked_mux_q;

    // i56_152_pop39243_mux(MUX,3)
    assign i56_152_pop39243_mux_s = in_valid_in_0;
    always @(i56_152_pop39243_mux_s or in_i56_152_pop39243_1 or in_i56_152_pop39243_0)
    begin
        unique case (i56_152_pop39243_mux_s)
            1'b0 : i56_152_pop39243_mux_q = in_i56_152_pop39243_1;
            1'b1 : i56_152_pop39243_mux_q = in_i56_152_pop39243_0;
            default : i56_152_pop39243_mux_q = 32'b0;
        endcase
    end

    // out_i56_152_pop39243(GPOUT,15)
    assign out_i56_152_pop39243 = i56_152_pop39243_mux_q;

    // notcmp37242_mux(MUX,13)
    assign notcmp37242_mux_s = in_valid_in_0;
    always @(notcmp37242_mux_s or in_notcmp37242_1 or in_notcmp37242_0)
    begin
        unique case (notcmp37242_mux_s)
            1'b0 : notcmp37242_mux_q = in_notcmp37242_1;
            1'b1 : notcmp37242_mux_q = in_notcmp37242_0;
            default : notcmp37242_mux_q = 1'b0;
        endcase
    end

    // out_notcmp37242(GPOUT,16)
    assign out_notcmp37242 = notcmp37242_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,20)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,17)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,21)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,18)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,19)
    assign out_valid_out = valid_or_q;

endmodule
