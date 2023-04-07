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

// SystemVerilog created from kernel_2mm_B9_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B9_merge (
    input wire [0:0] in_forked59_0,
    input wire [0:0] in_forked59_1,
    input wire [63:0] in_idxprom62_pop3181_0,
    input wire [63:0] in_idxprom62_pop3181_1,
    input wire [0:0] in_notcmp4254_pop2987_0,
    input wire [0:0] in_notcmp4254_pop2987_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked59,
    output wire [63:0] out_idxprom62_pop3181,
    output wire [0:0] out_notcmp4254_pop2987,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked59_mux_s;
    reg [0:0] forked59_mux_q;
    wire [0:0] idxprom62_pop3181_mux_s;
    reg [63:0] idxprom62_pop3181_mux_q;
    wire [0:0] notcmp4254_pop2987_mux_s;
    reg [0:0] notcmp4254_pop2987_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked59_mux(MUX,2)
    assign forked59_mux_s = in_valid_in_0;
    always @(forked59_mux_s or in_forked59_1 or in_forked59_0)
    begin
        unique case (forked59_mux_s)
            1'b0 : forked59_mux_q = in_forked59_1;
            1'b1 : forked59_mux_q = in_forked59_0;
            default : forked59_mux_q = 1'b0;
        endcase
    end

    // out_forked59(GPOUT,14)
    assign out_forked59 = forked59_mux_q;

    // idxprom62_pop3181_mux(MUX,3)
    assign idxprom62_pop3181_mux_s = in_valid_in_0;
    always @(idxprom62_pop3181_mux_s or in_idxprom62_pop3181_1 or in_idxprom62_pop3181_0)
    begin
        unique case (idxprom62_pop3181_mux_s)
            1'b0 : idxprom62_pop3181_mux_q = in_idxprom62_pop3181_1;
            1'b1 : idxprom62_pop3181_mux_q = in_idxprom62_pop3181_0;
            default : idxprom62_pop3181_mux_q = 64'b0;
        endcase
    end

    // out_idxprom62_pop3181(GPOUT,15)
    assign out_idxprom62_pop3181 = idxprom62_pop3181_mux_q;

    // notcmp4254_pop2987_mux(MUX,13)
    assign notcmp4254_pop2987_mux_s = in_valid_in_0;
    always @(notcmp4254_pop2987_mux_s or in_notcmp4254_pop2987_1 or in_notcmp4254_pop2987_0)
    begin
        unique case (notcmp4254_pop2987_mux_s)
            1'b0 : notcmp4254_pop2987_mux_q = in_notcmp4254_pop2987_1;
            1'b1 : notcmp4254_pop2987_mux_q = in_notcmp4254_pop2987_0;
            default : notcmp4254_pop2987_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4254_pop2987(GPOUT,16)
    assign out_notcmp4254_pop2987 = notcmp4254_pop2987_mux_q;

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
