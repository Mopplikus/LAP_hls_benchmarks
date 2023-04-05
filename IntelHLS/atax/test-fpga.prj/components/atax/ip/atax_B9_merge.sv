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

// SystemVerilog created from atax_B9_merge
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:56:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B9_merge (
    input wire [63:0] in_arrayidx365113_0,
    input wire [63:0] in_arrayidx365113_1,
    input wire [0:0] in_exitcond20114_0,
    input wire [0:0] in_exitcond20114_1,
    input wire [0:0] in_forked47_0,
    input wire [0:0] in_forked47_1,
    input wire [0:0] in_forked93111_0,
    input wire [0:0] in_forked93111_1,
    input wire [63:0] in_idxprom35112_0,
    input wire [63:0] in_idxprom35112_1,
    input wire [0:0] in_notcmp62115_0,
    input wire [0:0] in_notcmp62115_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_atax12_0,
    input wire [31:0] in_unnamed_atax12_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx365113,
    output wire [0:0] out_exitcond20114,
    output wire [0:0] out_forked47,
    output wire [0:0] out_forked93111,
    output wire [63:0] out_idxprom35112,
    output wire [0:0] out_notcmp62115,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_atax12,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx365113_mux_s;
    reg [63:0] arrayidx365113_mux_q;
    wire [0:0] exitcond20114_mux_s;
    reg [0:0] exitcond20114_mux_q;
    wire [0:0] forked47_mux_s;
    reg [0:0] forked47_mux_q;
    wire [0:0] forked93111_mux_s;
    reg [0:0] forked93111_mux_q;
    wire [0:0] idxprom35112_mux_s;
    reg [63:0] idxprom35112_mux_q;
    wire [0:0] notcmp62115_mux_s;
    reg [0:0] notcmp62115_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_atax12_mux_s;
    reg [31:0] unnamed_atax12_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx365113_mux(MUX,2)
    assign arrayidx365113_mux_s = in_valid_in_0;
    always @(arrayidx365113_mux_s or in_arrayidx365113_1 or in_arrayidx365113_0)
    begin
        unique case (arrayidx365113_mux_s)
            1'b0 : arrayidx365113_mux_q = in_arrayidx365113_1;
            1'b1 : arrayidx365113_mux_q = in_arrayidx365113_0;
            default : arrayidx365113_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx365113(GPOUT,25)
    assign out_arrayidx365113 = arrayidx365113_mux_q;

    // exitcond20114_mux(MUX,3)
    assign exitcond20114_mux_s = in_valid_in_0;
    always @(exitcond20114_mux_s or in_exitcond20114_1 or in_exitcond20114_0)
    begin
        unique case (exitcond20114_mux_s)
            1'b0 : exitcond20114_mux_q = in_exitcond20114_1;
            1'b1 : exitcond20114_mux_q = in_exitcond20114_0;
            default : exitcond20114_mux_q = 1'b0;
        endcase
    end

    // out_exitcond20114(GPOUT,26)
    assign out_exitcond20114 = exitcond20114_mux_q;

    // forked47_mux(MUX,4)
    assign forked47_mux_s = in_valid_in_0;
    always @(forked47_mux_s or in_forked47_1 or in_forked47_0)
    begin
        unique case (forked47_mux_s)
            1'b0 : forked47_mux_q = in_forked47_1;
            1'b1 : forked47_mux_q = in_forked47_0;
            default : forked47_mux_q = 1'b0;
        endcase
    end

    // out_forked47(GPOUT,27)
    assign out_forked47 = forked47_mux_q;

    // forked93111_mux(MUX,5)
    assign forked93111_mux_s = in_valid_in_0;
    always @(forked93111_mux_s or in_forked93111_1 or in_forked93111_0)
    begin
        unique case (forked93111_mux_s)
            1'b0 : forked93111_mux_q = in_forked93111_1;
            1'b1 : forked93111_mux_q = in_forked93111_0;
            default : forked93111_mux_q = 1'b0;
        endcase
    end

    // out_forked93111(GPOUT,28)
    assign out_forked93111 = forked93111_mux_q;

    // idxprom35112_mux(MUX,6)
    assign idxprom35112_mux_s = in_valid_in_0;
    always @(idxprom35112_mux_s or in_idxprom35112_1 or in_idxprom35112_0)
    begin
        unique case (idxprom35112_mux_s)
            1'b0 : idxprom35112_mux_q = in_idxprom35112_1;
            1'b1 : idxprom35112_mux_q = in_idxprom35112_0;
            default : idxprom35112_mux_q = 64'b0;
        endcase
    end

    // out_idxprom35112(GPOUT,29)
    assign out_idxprom35112 = idxprom35112_mux_q;

    // notcmp62115_mux(MUX,24)
    assign notcmp62115_mux_s = in_valid_in_0;
    always @(notcmp62115_mux_s or in_notcmp62115_1 or in_notcmp62115_0)
    begin
        unique case (notcmp62115_mux_s)
            1'b0 : notcmp62115_mux_q = in_notcmp62115_1;
            1'b1 : notcmp62115_mux_q = in_notcmp62115_0;
            default : notcmp62115_mux_q = 1'b0;
        endcase
    end

    // out_notcmp62115(GPOUT,30)
    assign out_notcmp62115 = notcmp62115_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,35)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,31)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,36)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,32)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_atax12_mux(MUX,37)
    assign unnamed_atax12_mux_s = in_valid_in_0;
    always @(unnamed_atax12_mux_s or in_unnamed_atax12_1 or in_unnamed_atax12_0)
    begin
        unique case (unnamed_atax12_mux_s)
            1'b0 : unnamed_atax12_mux_q = in_unnamed_atax12_1;
            1'b1 : unnamed_atax12_mux_q = in_unnamed_atax12_0;
            default : unnamed_atax12_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_atax12(GPOUT,33)
    assign out_unnamed_atax12 = unnamed_atax12_mux_q;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = valid_or_q;

endmodule
