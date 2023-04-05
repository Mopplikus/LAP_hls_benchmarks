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

// SystemVerilog created from triangular_B9_merge
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_B9_merge (
    input wire [0:0] in_forked44_0,
    input wire [0:0] in_forked44_1,
    input wire [31:0] in_i20_039123_0,
    input wire [31:0] in_i20_039123_1,
    input wire [31:0] in_lim_ext94_pop33119_0,
    input wire [31:0] in_lim_ext94_pop33119_1,
    input wire [31:0] in_lim_ext95_pop25127_0,
    input wire [31:0] in_lim_ext95_pop25127_1,
    input wire [0:0] in_memdep_phi6_pop24126_0,
    input wire [0:0] in_memdep_phi6_pop24126_1,
    input wire [0:0] in_notcmp62125_0,
    input wire [0:0] in_notcmp62125_1,
    input wire [31:0] in_reorder_limiter_enter112_0,
    input wire [31:0] in_reorder_limiter_enter112_1,
    input wire [31:0] in_reorder_limiter_enter97_pop26128_0,
    input wire [31:0] in_reorder_limiter_enter97_pop26128_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sub25124_0,
    input wire [31:0] in_sub25124_1,
    input wire [32:0] in_unnamed_triangular13_0,
    input wire [32:0] in_unnamed_triangular13_1,
    input wire [0:0] in_unnamed_triangular14_0,
    input wire [0:0] in_unnamed_triangular14_1,
    input wire [0:0] in_unnamed_triangular15_0,
    input wire [0:0] in_unnamed_triangular15_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked44,
    output wire [31:0] out_i20_039123,
    output wire [31:0] out_lim_ext94_pop33119,
    output wire [31:0] out_lim_ext95_pop25127,
    output wire [0:0] out_memdep_phi6_pop24126,
    output wire [0:0] out_notcmp62125,
    output wire [31:0] out_reorder_limiter_enter112,
    output wire [31:0] out_reorder_limiter_enter97_pop26128,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sub25124,
    output wire [32:0] out_unnamed_triangular13,
    output wire [0:0] out_unnamed_triangular14,
    output wire [0:0] out_unnamed_triangular15,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked44_mux_s;
    reg [0:0] forked44_mux_q;
    wire [0:0] i20_039123_mux_s;
    reg [31:0] i20_039123_mux_q;
    wire [0:0] lim_ext94_pop33119_mux_s;
    reg [31:0] lim_ext94_pop33119_mux_q;
    wire [0:0] lim_ext95_pop25127_mux_s;
    reg [31:0] lim_ext95_pop25127_mux_q;
    wire [0:0] memdep_phi6_pop24126_mux_s;
    reg [0:0] memdep_phi6_pop24126_mux_q;
    wire [0:0] notcmp62125_mux_s;
    reg [0:0] notcmp62125_mux_q;
    wire [0:0] reorder_limiter_enter112_mux_s;
    reg [31:0] reorder_limiter_enter112_mux_q;
    wire [0:0] reorder_limiter_enter97_pop26128_mux_s;
    reg [31:0] reorder_limiter_enter97_pop26128_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sub25124_mux_s;
    reg [31:0] sub25124_mux_q;
    wire [0:0] unnamed_triangular13_mux_s;
    reg [32:0] unnamed_triangular13_mux_q;
    wire [0:0] unnamed_triangular14_mux_s;
    reg [0:0] unnamed_triangular14_mux_q;
    wire [0:0] unnamed_triangular15_mux_s;
    reg [0:0] unnamed_triangular15_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked44_mux(MUX,2)
    assign forked44_mux_s = in_valid_in_0;
    always @(forked44_mux_s or in_forked44_1 or in_forked44_0)
    begin
        unique case (forked44_mux_s)
            1'b0 : forked44_mux_q = in_forked44_1;
            1'b1 : forked44_mux_q = in_forked44_0;
            default : forked44_mux_q = 1'b0;
        endcase
    end

    // out_forked44(GPOUT,35)
    assign out_forked44 = forked44_mux_q;

    // i20_039123_mux(MUX,3)
    assign i20_039123_mux_s = in_valid_in_0;
    always @(i20_039123_mux_s or in_i20_039123_1 or in_i20_039123_0)
    begin
        unique case (i20_039123_mux_s)
            1'b0 : i20_039123_mux_q = in_i20_039123_1;
            1'b1 : i20_039123_mux_q = in_i20_039123_0;
            default : i20_039123_mux_q = 32'b0;
        endcase
    end

    // out_i20_039123(GPOUT,36)
    assign out_i20_039123 = i20_039123_mux_q;

    // lim_ext94_pop33119_mux(MUX,31)
    assign lim_ext94_pop33119_mux_s = in_valid_in_0;
    always @(lim_ext94_pop33119_mux_s or in_lim_ext94_pop33119_1 or in_lim_ext94_pop33119_0)
    begin
        unique case (lim_ext94_pop33119_mux_s)
            1'b0 : lim_ext94_pop33119_mux_q = in_lim_ext94_pop33119_1;
            1'b1 : lim_ext94_pop33119_mux_q = in_lim_ext94_pop33119_0;
            default : lim_ext94_pop33119_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext94_pop33119(GPOUT,37)
    assign out_lim_ext94_pop33119 = lim_ext94_pop33119_mux_q;

    // lim_ext95_pop25127_mux(MUX,32)
    assign lim_ext95_pop25127_mux_s = in_valid_in_0;
    always @(lim_ext95_pop25127_mux_s or in_lim_ext95_pop25127_1 or in_lim_ext95_pop25127_0)
    begin
        unique case (lim_ext95_pop25127_mux_s)
            1'b0 : lim_ext95_pop25127_mux_q = in_lim_ext95_pop25127_1;
            1'b1 : lim_ext95_pop25127_mux_q = in_lim_ext95_pop25127_0;
            default : lim_ext95_pop25127_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext95_pop25127(GPOUT,38)
    assign out_lim_ext95_pop25127 = lim_ext95_pop25127_mux_q;

    // memdep_phi6_pop24126_mux(MUX,33)
    assign memdep_phi6_pop24126_mux_s = in_valid_in_0;
    always @(memdep_phi6_pop24126_mux_s or in_memdep_phi6_pop24126_1 or in_memdep_phi6_pop24126_0)
    begin
        unique case (memdep_phi6_pop24126_mux_s)
            1'b0 : memdep_phi6_pop24126_mux_q = in_memdep_phi6_pop24126_1;
            1'b1 : memdep_phi6_pop24126_mux_q = in_memdep_phi6_pop24126_0;
            default : memdep_phi6_pop24126_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi6_pop24126(GPOUT,39)
    assign out_memdep_phi6_pop24126 = memdep_phi6_pop24126_mux_q;

    // notcmp62125_mux(MUX,34)
    assign notcmp62125_mux_s = in_valid_in_0;
    always @(notcmp62125_mux_s or in_notcmp62125_1 or in_notcmp62125_0)
    begin
        unique case (notcmp62125_mux_s)
            1'b0 : notcmp62125_mux_q = in_notcmp62125_1;
            1'b1 : notcmp62125_mux_q = in_notcmp62125_0;
            default : notcmp62125_mux_q = 1'b0;
        endcase
    end

    // out_notcmp62125(GPOUT,40)
    assign out_notcmp62125 = notcmp62125_mux_q;

    // reorder_limiter_enter112_mux(MUX,50)
    assign reorder_limiter_enter112_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter112_mux_s or in_reorder_limiter_enter112_1 or in_reorder_limiter_enter112_0)
    begin
        unique case (reorder_limiter_enter112_mux_s)
            1'b0 : reorder_limiter_enter112_mux_q = in_reorder_limiter_enter112_1;
            1'b1 : reorder_limiter_enter112_mux_q = in_reorder_limiter_enter112_0;
            default : reorder_limiter_enter112_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter112(GPOUT,41)
    assign out_reorder_limiter_enter112 = reorder_limiter_enter112_mux_q;

    // reorder_limiter_enter97_pop26128_mux(MUX,51)
    assign reorder_limiter_enter97_pop26128_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter97_pop26128_mux_s or in_reorder_limiter_enter97_pop26128_1 or in_reorder_limiter_enter97_pop26128_0)
    begin
        unique case (reorder_limiter_enter97_pop26128_mux_s)
            1'b0 : reorder_limiter_enter97_pop26128_mux_q = in_reorder_limiter_enter97_pop26128_1;
            1'b1 : reorder_limiter_enter97_pop26128_mux_q = in_reorder_limiter_enter97_pop26128_0;
            default : reorder_limiter_enter97_pop26128_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter97_pop26128(GPOUT,42)
    assign out_reorder_limiter_enter97_pop26128 = reorder_limiter_enter97_pop26128_mux_q;

    // valid_or(LOGICAL,58)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,52)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,53)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // sub25124_mux(MUX,54)
    assign sub25124_mux_s = in_valid_in_0;
    always @(sub25124_mux_s or in_sub25124_1 or in_sub25124_0)
    begin
        unique case (sub25124_mux_s)
            1'b0 : sub25124_mux_q = in_sub25124_1;
            1'b1 : sub25124_mux_q = in_sub25124_0;
            default : sub25124_mux_q = 32'b0;
        endcase
    end

    // out_sub25124(GPOUT,45)
    assign out_sub25124 = sub25124_mux_q;

    // unnamed_triangular13_mux(MUX,55)
    assign unnamed_triangular13_mux_s = in_valid_in_0;
    always @(unnamed_triangular13_mux_s or in_unnamed_triangular13_1 or in_unnamed_triangular13_0)
    begin
        unique case (unnamed_triangular13_mux_s)
            1'b0 : unnamed_triangular13_mux_q = in_unnamed_triangular13_1;
            1'b1 : unnamed_triangular13_mux_q = in_unnamed_triangular13_0;
            default : unnamed_triangular13_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_triangular13(GPOUT,46)
    assign out_unnamed_triangular13 = unnamed_triangular13_mux_q;

    // unnamed_triangular14_mux(MUX,56)
    assign unnamed_triangular14_mux_s = in_valid_in_0;
    always @(unnamed_triangular14_mux_s or in_unnamed_triangular14_1 or in_unnamed_triangular14_0)
    begin
        unique case (unnamed_triangular14_mux_s)
            1'b0 : unnamed_triangular14_mux_q = in_unnamed_triangular14_1;
            1'b1 : unnamed_triangular14_mux_q = in_unnamed_triangular14_0;
            default : unnamed_triangular14_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular14(GPOUT,47)
    assign out_unnamed_triangular14 = unnamed_triangular14_mux_q;

    // unnamed_triangular15_mux(MUX,57)
    assign unnamed_triangular15_mux_s = in_valid_in_0;
    always @(unnamed_triangular15_mux_s or in_unnamed_triangular15_1 or in_unnamed_triangular15_0)
    begin
        unique case (unnamed_triangular15_mux_s)
            1'b0 : unnamed_triangular15_mux_q = in_unnamed_triangular15_1;
            1'b1 : unnamed_triangular15_mux_q = in_unnamed_triangular15_0;
            default : unnamed_triangular15_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular15(GPOUT,48)
    assign out_unnamed_triangular15 = unnamed_triangular15_mux_q;

    // out_valid_out(GPOUT,49)
    assign out_valid_out = valid_or_q;

endmodule
