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

// SystemVerilog created from triangular_B4_merge
// Created for function/kernel triangular
// SystemVerilog created on Tue Jun 13 03:05:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_B4_merge (
    input wire [0:0] in_forked23_0,
    input wire [0:0] in_forked23_1,
    input wire [31:0] in_i_03650_0,
    input wire [31:0] in_i_03650_1,
    input wire [31:0] in_lim_ext35_pop1455_0,
    input wire [31:0] in_lim_ext35_pop1455_1,
    input wire [31:0] in_lim_ext46_0,
    input wire [31:0] in_lim_ext46_1,
    input wire [63:0] in_mPtr_bitcast_index52_0,
    input wire [63:0] in_mPtr_bitcast_index52_1,
    input wire [0:0] in_memdep_phi4_pop1354_0,
    input wire [0:0] in_memdep_phi4_pop1354_1,
    input wire [0:0] in_notcmp2753_0,
    input wire [0:0] in_notcmp2753_1,
    input wire [31:0] in_reorder_limiter_enter37_pop1556_0,
    input wire [31:0] in_reorder_limiter_enter37_pop1556_1,
    input wire [31:0] in_reorder_limiter_enter49_0,
    input wire [31:0] in_reorder_limiter_enter49_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sub151_0,
    input wire [31:0] in_sub151_1,
    input wire [32:0] in_unnamed_triangular11_0,
    input wire [32:0] in_unnamed_triangular11_1,
    input wire [0:0] in_unnamed_triangular12_0,
    input wire [0:0] in_unnamed_triangular12_1,
    input wire [0:0] in_unnamed_triangular13_0,
    input wire [0:0] in_unnamed_triangular13_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked23,
    output wire [31:0] out_i_03650,
    output wire [31:0] out_lim_ext35_pop1455,
    output wire [31:0] out_lim_ext46,
    output wire [63:0] out_mPtr_bitcast_index52,
    output wire [0:0] out_memdep_phi4_pop1354,
    output wire [0:0] out_notcmp2753,
    output wire [31:0] out_reorder_limiter_enter37_pop1556,
    output wire [31:0] out_reorder_limiter_enter49,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sub151,
    output wire [32:0] out_unnamed_triangular11,
    output wire [0:0] out_unnamed_triangular12,
    output wire [0:0] out_unnamed_triangular13,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked23_mux_s;
    reg [0:0] forked23_mux_q;
    wire [0:0] i_03650_mux_s;
    reg [31:0] i_03650_mux_q;
    wire [0:0] lim_ext35_pop1455_mux_s;
    reg [31:0] lim_ext35_pop1455_mux_q;
    wire [0:0] lim_ext46_mux_s;
    reg [31:0] lim_ext46_mux_q;
    wire [0:0] mPtr_bitcast_index52_mux_s;
    reg [63:0] mPtr_bitcast_index52_mux_q;
    wire [0:0] memdep_phi4_pop1354_mux_s;
    reg [0:0] memdep_phi4_pop1354_mux_q;
    wire [0:0] notcmp2753_mux_s;
    reg [0:0] notcmp2753_mux_q;
    wire [0:0] reorder_limiter_enter37_pop1556_mux_s;
    reg [31:0] reorder_limiter_enter37_pop1556_mux_q;
    wire [0:0] reorder_limiter_enter49_mux_s;
    reg [31:0] reorder_limiter_enter49_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sub151_mux_s;
    reg [31:0] sub151_mux_q;
    wire [0:0] unnamed_triangular11_mux_s;
    reg [32:0] unnamed_triangular11_mux_q;
    wire [0:0] unnamed_triangular12_mux_s;
    reg [0:0] unnamed_triangular12_mux_q;
    wire [0:0] unnamed_triangular13_mux_s;
    reg [0:0] unnamed_triangular13_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked23_mux(MUX,2)
    assign forked23_mux_s = in_valid_in_0;
    always @(forked23_mux_s or in_forked23_1 or in_forked23_0)
    begin
        unique case (forked23_mux_s)
            1'b0 : forked23_mux_q = in_forked23_1;
            1'b1 : forked23_mux_q = in_forked23_0;
            default : forked23_mux_q = 1'b0;
        endcase
    end

    // out_forked23(GPOUT,38)
    assign out_forked23 = forked23_mux_q;

    // i_03650_mux(MUX,3)
    assign i_03650_mux_s = in_valid_in_0;
    always @(i_03650_mux_s or in_i_03650_1 or in_i_03650_0)
    begin
        unique case (i_03650_mux_s)
            1'b0 : i_03650_mux_q = in_i_03650_1;
            1'b1 : i_03650_mux_q = in_i_03650_0;
            default : i_03650_mux_q = 32'b0;
        endcase
    end

    // out_i_03650(GPOUT,39)
    assign out_i_03650 = i_03650_mux_q;

    // lim_ext35_pop1455_mux(MUX,33)
    assign lim_ext35_pop1455_mux_s = in_valid_in_0;
    always @(lim_ext35_pop1455_mux_s or in_lim_ext35_pop1455_1 or in_lim_ext35_pop1455_0)
    begin
        unique case (lim_ext35_pop1455_mux_s)
            1'b0 : lim_ext35_pop1455_mux_q = in_lim_ext35_pop1455_1;
            1'b1 : lim_ext35_pop1455_mux_q = in_lim_ext35_pop1455_0;
            default : lim_ext35_pop1455_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext35_pop1455(GPOUT,40)
    assign out_lim_ext35_pop1455 = lim_ext35_pop1455_mux_q;

    // lim_ext46_mux(MUX,34)
    assign lim_ext46_mux_s = in_valid_in_0;
    always @(lim_ext46_mux_s or in_lim_ext46_1 or in_lim_ext46_0)
    begin
        unique case (lim_ext46_mux_s)
            1'b0 : lim_ext46_mux_q = in_lim_ext46_1;
            1'b1 : lim_ext46_mux_q = in_lim_ext46_0;
            default : lim_ext46_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext46(GPOUT,41)
    assign out_lim_ext46 = lim_ext46_mux_q;

    // mPtr_bitcast_index52_mux(MUX,35)
    assign mPtr_bitcast_index52_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index52_mux_s or in_mPtr_bitcast_index52_1 or in_mPtr_bitcast_index52_0)
    begin
        unique case (mPtr_bitcast_index52_mux_s)
            1'b0 : mPtr_bitcast_index52_mux_q = in_mPtr_bitcast_index52_1;
            1'b1 : mPtr_bitcast_index52_mux_q = in_mPtr_bitcast_index52_0;
            default : mPtr_bitcast_index52_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index52(GPOUT,42)
    assign out_mPtr_bitcast_index52 = mPtr_bitcast_index52_mux_q;

    // memdep_phi4_pop1354_mux(MUX,36)
    assign memdep_phi4_pop1354_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1354_mux_s or in_memdep_phi4_pop1354_1 or in_memdep_phi4_pop1354_0)
    begin
        unique case (memdep_phi4_pop1354_mux_s)
            1'b0 : memdep_phi4_pop1354_mux_q = in_memdep_phi4_pop1354_1;
            1'b1 : memdep_phi4_pop1354_mux_q = in_memdep_phi4_pop1354_0;
            default : memdep_phi4_pop1354_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1354(GPOUT,43)
    assign out_memdep_phi4_pop1354 = memdep_phi4_pop1354_mux_q;

    // notcmp2753_mux(MUX,37)
    assign notcmp2753_mux_s = in_valid_in_0;
    always @(notcmp2753_mux_s or in_notcmp2753_1 or in_notcmp2753_0)
    begin
        unique case (notcmp2753_mux_s)
            1'b0 : notcmp2753_mux_q = in_notcmp2753_1;
            1'b1 : notcmp2753_mux_q = in_notcmp2753_0;
            default : notcmp2753_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2753(GPOUT,44)
    assign out_notcmp2753 = notcmp2753_mux_q;

    // reorder_limiter_enter37_pop1556_mux(MUX,54)
    assign reorder_limiter_enter37_pop1556_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter37_pop1556_mux_s or in_reorder_limiter_enter37_pop1556_1 or in_reorder_limiter_enter37_pop1556_0)
    begin
        unique case (reorder_limiter_enter37_pop1556_mux_s)
            1'b0 : reorder_limiter_enter37_pop1556_mux_q = in_reorder_limiter_enter37_pop1556_1;
            1'b1 : reorder_limiter_enter37_pop1556_mux_q = in_reorder_limiter_enter37_pop1556_0;
            default : reorder_limiter_enter37_pop1556_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter37_pop1556(GPOUT,45)
    assign out_reorder_limiter_enter37_pop1556 = reorder_limiter_enter37_pop1556_mux_q;

    // reorder_limiter_enter49_mux(MUX,55)
    assign reorder_limiter_enter49_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter49_mux_s or in_reorder_limiter_enter49_1 or in_reorder_limiter_enter49_0)
    begin
        unique case (reorder_limiter_enter49_mux_s)
            1'b0 : reorder_limiter_enter49_mux_q = in_reorder_limiter_enter49_1;
            1'b1 : reorder_limiter_enter49_mux_q = in_reorder_limiter_enter49_0;
            default : reorder_limiter_enter49_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter49(GPOUT,46)
    assign out_reorder_limiter_enter49 = reorder_limiter_enter49_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,56)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,57)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // sub151_mux(MUX,58)
    assign sub151_mux_s = in_valid_in_0;
    always @(sub151_mux_s or in_sub151_1 or in_sub151_0)
    begin
        unique case (sub151_mux_s)
            1'b0 : sub151_mux_q = in_sub151_1;
            1'b1 : sub151_mux_q = in_sub151_0;
            default : sub151_mux_q = 32'b0;
        endcase
    end

    // out_sub151(GPOUT,49)
    assign out_sub151 = sub151_mux_q;

    // unnamed_triangular11_mux(MUX,59)
    assign unnamed_triangular11_mux_s = in_valid_in_0;
    always @(unnamed_triangular11_mux_s or in_unnamed_triangular11_1 or in_unnamed_triangular11_0)
    begin
        unique case (unnamed_triangular11_mux_s)
            1'b0 : unnamed_triangular11_mux_q = in_unnamed_triangular11_1;
            1'b1 : unnamed_triangular11_mux_q = in_unnamed_triangular11_0;
            default : unnamed_triangular11_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_triangular11(GPOUT,50)
    assign out_unnamed_triangular11 = unnamed_triangular11_mux_q;

    // unnamed_triangular12_mux(MUX,60)
    assign unnamed_triangular12_mux_s = in_valid_in_0;
    always @(unnamed_triangular12_mux_s or in_unnamed_triangular12_1 or in_unnamed_triangular12_0)
    begin
        unique case (unnamed_triangular12_mux_s)
            1'b0 : unnamed_triangular12_mux_q = in_unnamed_triangular12_1;
            1'b1 : unnamed_triangular12_mux_q = in_unnamed_triangular12_0;
            default : unnamed_triangular12_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular12(GPOUT,51)
    assign out_unnamed_triangular12 = unnamed_triangular12_mux_q;

    // unnamed_triangular13_mux(MUX,61)
    assign unnamed_triangular13_mux_s = in_valid_in_0;
    always @(unnamed_triangular13_mux_s or in_unnamed_triangular13_1 or in_unnamed_triangular13_0)
    begin
        unique case (unnamed_triangular13_mux_s)
            1'b0 : unnamed_triangular13_mux_q = in_unnamed_triangular13_1;
            1'b1 : unnamed_triangular13_mux_q = in_unnamed_triangular13_0;
            default : unnamed_triangular13_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular13(GPOUT,52)
    assign out_unnamed_triangular13 = unnamed_triangular13_mux_q;

    // out_valid_out(GPOUT,53)
    assign out_valid_out = valid_or_q;

endmodule
