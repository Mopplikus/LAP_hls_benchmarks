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

// SystemVerilog created from gaussian_B11_merge
// Created for function/kernel gaussian
// SystemVerilog created on Tue Apr  4 21:38:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B11_merge (
    input wire [31:0] in_add108_0,
    input wire [31:0] in_add108_1,
    input wire [31:0] in_add96_pop29112_0,
    input wire [31:0] in_add96_pop29112_1,
    input wire [0:0] in_forked45_0,
    input wire [0:0] in_forked45_1,
    input wire [31:0] in_i_034_replace_phi109_0,
    input wire [31:0] in_i_034_replace_phi109_1,
    input wire [0:0] in_memdep_phi_pop28111_0,
    input wire [0:0] in_memdep_phi_pop28111_1,
    input wire [0:0] in_notcmp63110_0,
    input wire [0:0] in_notcmp63110_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_gaussian13_0,
    input wire [0:0] in_unnamed_gaussian13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add108,
    output wire [31:0] out_add96_pop29112,
    output wire [0:0] out_forked45,
    output wire [31:0] out_i_034_replace_phi109,
    output wire [0:0] out_memdep_phi_pop28111,
    output wire [0:0] out_notcmp63110,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_gaussian13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add108_mux_s;
    reg [31:0] add108_mux_q;
    wire [0:0] add96_pop29112_mux_s;
    reg [31:0] add96_pop29112_mux_q;
    wire [0:0] forked45_mux_s;
    reg [0:0] forked45_mux_q;
    wire [0:0] i_034_replace_phi109_mux_s;
    reg [31:0] i_034_replace_phi109_mux_q;
    wire [0:0] memdep_phi_pop28111_mux_s;
    reg [0:0] memdep_phi_pop28111_mux_q;
    wire [0:0] notcmp63110_mux_s;
    reg [0:0] notcmp63110_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_gaussian13_mux_s;
    reg [0:0] unnamed_gaussian13_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add108_mux(MUX,2)
    assign add108_mux_s = in_valid_in_0;
    always @(add108_mux_s or in_add108_1 or in_add108_0)
    begin
        unique case (add108_mux_s)
            1'b0 : add108_mux_q = in_add108_1;
            1'b1 : add108_mux_q = in_add108_0;
            default : add108_mux_q = 32'b0;
        endcase
    end

    // out_add108(GPOUT,25)
    assign out_add108 = add108_mux_q;

    // add96_pop29112_mux(MUX,3)
    assign add96_pop29112_mux_s = in_valid_in_0;
    always @(add96_pop29112_mux_s or in_add96_pop29112_1 or in_add96_pop29112_0)
    begin
        unique case (add96_pop29112_mux_s)
            1'b0 : add96_pop29112_mux_q = in_add96_pop29112_1;
            1'b1 : add96_pop29112_mux_q = in_add96_pop29112_0;
            default : add96_pop29112_mux_q = 32'b0;
        endcase
    end

    // out_add96_pop29112(GPOUT,26)
    assign out_add96_pop29112 = add96_pop29112_mux_q;

    // forked45_mux(MUX,4)
    assign forked45_mux_s = in_valid_in_0;
    always @(forked45_mux_s or in_forked45_1 or in_forked45_0)
    begin
        unique case (forked45_mux_s)
            1'b0 : forked45_mux_q = in_forked45_1;
            1'b1 : forked45_mux_q = in_forked45_0;
            default : forked45_mux_q = 1'b0;
        endcase
    end

    // out_forked45(GPOUT,27)
    assign out_forked45 = forked45_mux_q;

    // i_034_replace_phi109_mux(MUX,5)
    assign i_034_replace_phi109_mux_s = in_valid_in_0;
    always @(i_034_replace_phi109_mux_s or in_i_034_replace_phi109_1 or in_i_034_replace_phi109_0)
    begin
        unique case (i_034_replace_phi109_mux_s)
            1'b0 : i_034_replace_phi109_mux_q = in_i_034_replace_phi109_1;
            1'b1 : i_034_replace_phi109_mux_q = in_i_034_replace_phi109_0;
            default : i_034_replace_phi109_mux_q = 32'b0;
        endcase
    end

    // out_i_034_replace_phi109(GPOUT,28)
    assign out_i_034_replace_phi109 = i_034_replace_phi109_mux_q;

    // memdep_phi_pop28111_mux(MUX,23)
    assign memdep_phi_pop28111_mux_s = in_valid_in_0;
    always @(memdep_phi_pop28111_mux_s or in_memdep_phi_pop28111_1 or in_memdep_phi_pop28111_0)
    begin
        unique case (memdep_phi_pop28111_mux_s)
            1'b0 : memdep_phi_pop28111_mux_q = in_memdep_phi_pop28111_1;
            1'b1 : memdep_phi_pop28111_mux_q = in_memdep_phi_pop28111_0;
            default : memdep_phi_pop28111_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop28111(GPOUT,29)
    assign out_memdep_phi_pop28111 = memdep_phi_pop28111_mux_q;

    // notcmp63110_mux(MUX,24)
    assign notcmp63110_mux_s = in_valid_in_0;
    always @(notcmp63110_mux_s or in_notcmp63110_1 or in_notcmp63110_0)
    begin
        unique case (notcmp63110_mux_s)
            1'b0 : notcmp63110_mux_q = in_notcmp63110_1;
            1'b1 : notcmp63110_mux_q = in_notcmp63110_0;
            default : notcmp63110_mux_q = 1'b0;
        endcase
    end

    // out_notcmp63110(GPOUT,30)
    assign out_notcmp63110 = notcmp63110_mux_q;

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

    // unnamed_gaussian13_mux(MUX,37)
    assign unnamed_gaussian13_mux_s = in_valid_in_0;
    always @(unnamed_gaussian13_mux_s or in_unnamed_gaussian13_1 or in_unnamed_gaussian13_0)
    begin
        unique case (unnamed_gaussian13_mux_s)
            1'b0 : unnamed_gaussian13_mux_q = in_unnamed_gaussian13_1;
            1'b1 : unnamed_gaussian13_mux_q = in_unnamed_gaussian13_0;
            default : unnamed_gaussian13_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_gaussian13(GPOUT,33)
    assign out_unnamed_gaussian13 = unnamed_gaussian13_mux_q;

    // out_valid_out(GPOUT,34)
    assign out_valid_out = valid_or_q;

endmodule
