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

// SystemVerilog created from kernel_3mm_B10_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B10_merge (
    input wire [63:0] in_arrayidx11211210_0,
    input wire [63:0] in_arrayidx11211210_1,
    input wire [0:0] in_forked81_0,
    input wire [0:0] in_forked81_1,
    input wire [31:0] in_i_1102_pop29155_pop59203_0,
    input wire [31:0] in_i_1102_pop29155_pop59203_1,
    input wire [31:0] in_i_1102_pop29184_0,
    input wire [31:0] in_i_1102_pop29184_1,
    input wire [63:0] in_idxprom74167_pop61198_0,
    input wire [63:0] in_idxprom74167_pop61198_1,
    input wire [63:0] in_idxprom76169_pop62200_0,
    input wire [63:0] in_idxprom76169_pop62200_1,
    input wire [0:0] in_notcmp112172_pop64208_0,
    input wire [0:0] in_notcmp112172_pop64208_1,
    input wire [0:0] in_notcmp117158_pop60205_0,
    input wire [0:0] in_notcmp117158_pop60205_1,
    input wire [0:0] in_notcmp117189_0,
    input wire [0:0] in_notcmp117189_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm22_0,
    input wire [31:0] in_unnamed_kernel_3mm22_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx11211210,
    output wire [0:0] out_forked81,
    output wire [31:0] out_i_1102_pop29155_pop59203,
    output wire [31:0] out_i_1102_pop29184,
    output wire [63:0] out_idxprom74167_pop61198,
    output wire [63:0] out_idxprom76169_pop62200,
    output wire [0:0] out_notcmp112172_pop64208,
    output wire [0:0] out_notcmp117158_pop60205,
    output wire [0:0] out_notcmp117189,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm22,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx11211210_mux_s;
    reg [63:0] arrayidx11211210_mux_q;
    wire [0:0] forked81_mux_s;
    reg [0:0] forked81_mux_q;
    wire [0:0] i_1102_pop29155_pop59203_mux_s;
    reg [31:0] i_1102_pop29155_pop59203_mux_q;
    wire [0:0] i_1102_pop29184_mux_s;
    reg [31:0] i_1102_pop29184_mux_q;
    wire [0:0] idxprom74167_pop61198_mux_s;
    reg [63:0] idxprom74167_pop61198_mux_q;
    wire [0:0] idxprom76169_pop62200_mux_s;
    reg [63:0] idxprom76169_pop62200_mux_q;
    wire [0:0] notcmp112172_pop64208_mux_s;
    reg [0:0] notcmp112172_pop64208_mux_q;
    wire [0:0] notcmp117158_pop60205_mux_s;
    reg [0:0] notcmp117158_pop60205_mux_q;
    wire [0:0] notcmp117189_mux_s;
    reg [0:0] notcmp117189_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm22_mux_s;
    reg [31:0] unnamed_kernel_3mm22_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx11211210_mux(MUX,2)
    assign arrayidx11211210_mux_s = in_valid_in_0;
    always @(arrayidx11211210_mux_s or in_arrayidx11211210_1 or in_arrayidx11211210_0)
    begin
        unique case (arrayidx11211210_mux_s)
            1'b0 : arrayidx11211210_mux_q = in_arrayidx11211210_1;
            1'b1 : arrayidx11211210_mux_q = in_arrayidx11211210_0;
            default : arrayidx11211210_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx11211210(GPOUT,34)
    assign out_arrayidx11211210 = arrayidx11211210_mux_q;

    // forked81_mux(MUX,3)
    assign forked81_mux_s = in_valid_in_0;
    always @(forked81_mux_s or in_forked81_1 or in_forked81_0)
    begin
        unique case (forked81_mux_s)
            1'b0 : forked81_mux_q = in_forked81_1;
            1'b1 : forked81_mux_q = in_forked81_0;
            default : forked81_mux_q = 1'b0;
        endcase
    end

    // out_forked81(GPOUT,35)
    assign out_forked81 = forked81_mux_q;

    // i_1102_pop29155_pop59203_mux(MUX,4)
    assign i_1102_pop29155_pop59203_mux_s = in_valid_in_0;
    always @(i_1102_pop29155_pop59203_mux_s or in_i_1102_pop29155_pop59203_1 or in_i_1102_pop29155_pop59203_0)
    begin
        unique case (i_1102_pop29155_pop59203_mux_s)
            1'b0 : i_1102_pop29155_pop59203_mux_q = in_i_1102_pop29155_pop59203_1;
            1'b1 : i_1102_pop29155_pop59203_mux_q = in_i_1102_pop29155_pop59203_0;
            default : i_1102_pop29155_pop59203_mux_q = 32'b0;
        endcase
    end

    // out_i_1102_pop29155_pop59203(GPOUT,36)
    assign out_i_1102_pop29155_pop59203 = i_1102_pop29155_pop59203_mux_q;

    // i_1102_pop29184_mux(MUX,5)
    assign i_1102_pop29184_mux_s = in_valid_in_0;
    always @(i_1102_pop29184_mux_s or in_i_1102_pop29184_1 or in_i_1102_pop29184_0)
    begin
        unique case (i_1102_pop29184_mux_s)
            1'b0 : i_1102_pop29184_mux_q = in_i_1102_pop29184_1;
            1'b1 : i_1102_pop29184_mux_q = in_i_1102_pop29184_0;
            default : i_1102_pop29184_mux_q = 32'b0;
        endcase
    end

    // out_i_1102_pop29184(GPOUT,37)
    assign out_i_1102_pop29184 = i_1102_pop29184_mux_q;

    // idxprom74167_pop61198_mux(MUX,6)
    assign idxprom74167_pop61198_mux_s = in_valid_in_0;
    always @(idxprom74167_pop61198_mux_s or in_idxprom74167_pop61198_1 or in_idxprom74167_pop61198_0)
    begin
        unique case (idxprom74167_pop61198_mux_s)
            1'b0 : idxprom74167_pop61198_mux_q = in_idxprom74167_pop61198_1;
            1'b1 : idxprom74167_pop61198_mux_q = in_idxprom74167_pop61198_0;
            default : idxprom74167_pop61198_mux_q = 64'b0;
        endcase
    end

    // out_idxprom74167_pop61198(GPOUT,38)
    assign out_idxprom74167_pop61198 = idxprom74167_pop61198_mux_q;

    // idxprom76169_pop62200_mux(MUX,7)
    assign idxprom76169_pop62200_mux_s = in_valid_in_0;
    always @(idxprom76169_pop62200_mux_s or in_idxprom76169_pop62200_1 or in_idxprom76169_pop62200_0)
    begin
        unique case (idxprom76169_pop62200_mux_s)
            1'b0 : idxprom76169_pop62200_mux_q = in_idxprom76169_pop62200_1;
            1'b1 : idxprom76169_pop62200_mux_q = in_idxprom76169_pop62200_0;
            default : idxprom76169_pop62200_mux_q = 64'b0;
        endcase
    end

    // out_idxprom76169_pop62200(GPOUT,39)
    assign out_idxprom76169_pop62200 = idxprom76169_pop62200_mux_q;

    // notcmp112172_pop64208_mux(MUX,31)
    assign notcmp112172_pop64208_mux_s = in_valid_in_0;
    always @(notcmp112172_pop64208_mux_s or in_notcmp112172_pop64208_1 or in_notcmp112172_pop64208_0)
    begin
        unique case (notcmp112172_pop64208_mux_s)
            1'b0 : notcmp112172_pop64208_mux_q = in_notcmp112172_pop64208_1;
            1'b1 : notcmp112172_pop64208_mux_q = in_notcmp112172_pop64208_0;
            default : notcmp112172_pop64208_mux_q = 1'b0;
        endcase
    end

    // out_notcmp112172_pop64208(GPOUT,40)
    assign out_notcmp112172_pop64208 = notcmp112172_pop64208_mux_q;

    // notcmp117158_pop60205_mux(MUX,32)
    assign notcmp117158_pop60205_mux_s = in_valid_in_0;
    always @(notcmp117158_pop60205_mux_s or in_notcmp117158_pop60205_1 or in_notcmp117158_pop60205_0)
    begin
        unique case (notcmp117158_pop60205_mux_s)
            1'b0 : notcmp117158_pop60205_mux_q = in_notcmp117158_pop60205_1;
            1'b1 : notcmp117158_pop60205_mux_q = in_notcmp117158_pop60205_0;
            default : notcmp117158_pop60205_mux_q = 1'b0;
        endcase
    end

    // out_notcmp117158_pop60205(GPOUT,41)
    assign out_notcmp117158_pop60205 = notcmp117158_pop60205_mux_q;

    // notcmp117189_mux(MUX,33)
    assign notcmp117189_mux_s = in_valid_in_0;
    always @(notcmp117189_mux_s or in_notcmp117189_1 or in_notcmp117189_0)
    begin
        unique case (notcmp117189_mux_s)
            1'b0 : notcmp117189_mux_q = in_notcmp117189_1;
            1'b1 : notcmp117189_mux_q = in_notcmp117189_0;
            default : notcmp117189_mux_q = 1'b0;
        endcase
    end

    // out_notcmp117189(GPOUT,42)
    assign out_notcmp117189 = notcmp117189_mux_q;

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

    // unnamed_kernel_3mm22_mux(MUX,49)
    assign unnamed_kernel_3mm22_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm22_mux_s or in_unnamed_kernel_3mm22_1 or in_unnamed_kernel_3mm22_0)
    begin
        unique case (unnamed_kernel_3mm22_mux_s)
            1'b0 : unnamed_kernel_3mm22_mux_q = in_unnamed_kernel_3mm22_1;
            1'b1 : unnamed_kernel_3mm22_mux_q = in_unnamed_kernel_3mm22_0;
            default : unnamed_kernel_3mm22_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm22(GPOUT,45)
    assign out_unnamed_kernel_3mm22 = unnamed_kernel_3mm22_mux_q;

    // out_valid_out(GPOUT,46)
    assign out_valid_out = valid_or_q;

endmodule
