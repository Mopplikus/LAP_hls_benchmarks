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

// SystemVerilog created from triangular_B5_merge
// Created for function/kernel triangular
// SystemVerilog created on Fri Apr  7 16:28:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_B5_merge (
    input wire [0:0] in_forked16_0,
    input wire [0:0] in_forked16_1,
    input wire [31:0] in_i_01841_0,
    input wire [31:0] in_i_01841_1,
    input wire [31:0] in_lim_ext28_pop1445_0,
    input wire [31:0] in_lim_ext28_pop1445_1,
    input wire [31:0] in_lim_ext37_0,
    input wire [31:0] in_lim_ext37_1,
    input wire [0:0] in_memdep_phi4_pop1344_0,
    input wire [0:0] in_memdep_phi4_pop1344_1,
    input wire [0:0] in_notcmp2043_0,
    input wire [0:0] in_notcmp2043_1,
    input wire [31:0] in_reorder_limiter_enter30_pop1546_0,
    input wire [31:0] in_reorder_limiter_enter30_pop1546_1,
    input wire [31:0] in_reorder_limiter_enter40_0,
    input wire [31:0] in_reorder_limiter_enter40_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sub342_0,
    input wire [31:0] in_sub342_1,
    input wire [32:0] in_unnamed_triangular10_0,
    input wire [32:0] in_unnamed_triangular10_1,
    input wire [0:0] in_unnamed_triangular11_0,
    input wire [0:0] in_unnamed_triangular11_1,
    input wire [0:0] in_unnamed_triangular12_0,
    input wire [0:0] in_unnamed_triangular12_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked16,
    output wire [31:0] out_i_01841,
    output wire [31:0] out_lim_ext28_pop1445,
    output wire [31:0] out_lim_ext37,
    output wire [0:0] out_memdep_phi4_pop1344,
    output wire [0:0] out_notcmp2043,
    output wire [31:0] out_reorder_limiter_enter30_pop1546,
    output wire [31:0] out_reorder_limiter_enter40,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sub342,
    output wire [32:0] out_unnamed_triangular10,
    output wire [0:0] out_unnamed_triangular11,
    output wire [0:0] out_unnamed_triangular12,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked16_mux_s;
    reg [0:0] forked16_mux_q;
    wire [0:0] i_01841_mux_s;
    reg [31:0] i_01841_mux_q;
    wire [0:0] lim_ext28_pop1445_mux_s;
    reg [31:0] lim_ext28_pop1445_mux_q;
    wire [0:0] lim_ext37_mux_s;
    reg [31:0] lim_ext37_mux_q;
    wire [0:0] memdep_phi4_pop1344_mux_s;
    reg [0:0] memdep_phi4_pop1344_mux_q;
    wire [0:0] notcmp2043_mux_s;
    reg [0:0] notcmp2043_mux_q;
    wire [0:0] reorder_limiter_enter30_pop1546_mux_s;
    reg [31:0] reorder_limiter_enter30_pop1546_mux_q;
    wire [0:0] reorder_limiter_enter40_mux_s;
    reg [31:0] reorder_limiter_enter40_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sub342_mux_s;
    reg [31:0] sub342_mux_q;
    wire [0:0] unnamed_triangular10_mux_s;
    reg [32:0] unnamed_triangular10_mux_q;
    wire [0:0] unnamed_triangular11_mux_s;
    reg [0:0] unnamed_triangular11_mux_q;
    wire [0:0] unnamed_triangular12_mux_s;
    reg [0:0] unnamed_triangular12_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked16_mux(MUX,2)
    assign forked16_mux_s = in_valid_in_0;
    always @(forked16_mux_s or in_forked16_1 or in_forked16_0)
    begin
        unique case (forked16_mux_s)
            1'b0 : forked16_mux_q = in_forked16_1;
            1'b1 : forked16_mux_q = in_forked16_0;
            default : forked16_mux_q = 1'b0;
        endcase
    end

    // out_forked16(GPOUT,35)
    assign out_forked16 = forked16_mux_q;

    // i_01841_mux(MUX,3)
    assign i_01841_mux_s = in_valid_in_0;
    always @(i_01841_mux_s or in_i_01841_1 or in_i_01841_0)
    begin
        unique case (i_01841_mux_s)
            1'b0 : i_01841_mux_q = in_i_01841_1;
            1'b1 : i_01841_mux_q = in_i_01841_0;
            default : i_01841_mux_q = 32'b0;
        endcase
    end

    // out_i_01841(GPOUT,36)
    assign out_i_01841 = i_01841_mux_q;

    // lim_ext28_pop1445_mux(MUX,31)
    assign lim_ext28_pop1445_mux_s = in_valid_in_0;
    always @(lim_ext28_pop1445_mux_s or in_lim_ext28_pop1445_1 or in_lim_ext28_pop1445_0)
    begin
        unique case (lim_ext28_pop1445_mux_s)
            1'b0 : lim_ext28_pop1445_mux_q = in_lim_ext28_pop1445_1;
            1'b1 : lim_ext28_pop1445_mux_q = in_lim_ext28_pop1445_0;
            default : lim_ext28_pop1445_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext28_pop1445(GPOUT,37)
    assign out_lim_ext28_pop1445 = lim_ext28_pop1445_mux_q;

    // lim_ext37_mux(MUX,32)
    assign lim_ext37_mux_s = in_valid_in_0;
    always @(lim_ext37_mux_s or in_lim_ext37_1 or in_lim_ext37_0)
    begin
        unique case (lim_ext37_mux_s)
            1'b0 : lim_ext37_mux_q = in_lim_ext37_1;
            1'b1 : lim_ext37_mux_q = in_lim_ext37_0;
            default : lim_ext37_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext37(GPOUT,38)
    assign out_lim_ext37 = lim_ext37_mux_q;

    // memdep_phi4_pop1344_mux(MUX,33)
    assign memdep_phi4_pop1344_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1344_mux_s or in_memdep_phi4_pop1344_1 or in_memdep_phi4_pop1344_0)
    begin
        unique case (memdep_phi4_pop1344_mux_s)
            1'b0 : memdep_phi4_pop1344_mux_q = in_memdep_phi4_pop1344_1;
            1'b1 : memdep_phi4_pop1344_mux_q = in_memdep_phi4_pop1344_0;
            default : memdep_phi4_pop1344_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1344(GPOUT,39)
    assign out_memdep_phi4_pop1344 = memdep_phi4_pop1344_mux_q;

    // notcmp2043_mux(MUX,34)
    assign notcmp2043_mux_s = in_valid_in_0;
    always @(notcmp2043_mux_s or in_notcmp2043_1 or in_notcmp2043_0)
    begin
        unique case (notcmp2043_mux_s)
            1'b0 : notcmp2043_mux_q = in_notcmp2043_1;
            1'b1 : notcmp2043_mux_q = in_notcmp2043_0;
            default : notcmp2043_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2043(GPOUT,40)
    assign out_notcmp2043 = notcmp2043_mux_q;

    // reorder_limiter_enter30_pop1546_mux(MUX,50)
    assign reorder_limiter_enter30_pop1546_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter30_pop1546_mux_s or in_reorder_limiter_enter30_pop1546_1 or in_reorder_limiter_enter30_pop1546_0)
    begin
        unique case (reorder_limiter_enter30_pop1546_mux_s)
            1'b0 : reorder_limiter_enter30_pop1546_mux_q = in_reorder_limiter_enter30_pop1546_1;
            1'b1 : reorder_limiter_enter30_pop1546_mux_q = in_reorder_limiter_enter30_pop1546_0;
            default : reorder_limiter_enter30_pop1546_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter30_pop1546(GPOUT,41)
    assign out_reorder_limiter_enter30_pop1546 = reorder_limiter_enter30_pop1546_mux_q;

    // reorder_limiter_enter40_mux(MUX,51)
    assign reorder_limiter_enter40_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter40_mux_s or in_reorder_limiter_enter40_1 or in_reorder_limiter_enter40_0)
    begin
        unique case (reorder_limiter_enter40_mux_s)
            1'b0 : reorder_limiter_enter40_mux_q = in_reorder_limiter_enter40_1;
            1'b1 : reorder_limiter_enter40_mux_q = in_reorder_limiter_enter40_0;
            default : reorder_limiter_enter40_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter40(GPOUT,42)
    assign out_reorder_limiter_enter40 = reorder_limiter_enter40_mux_q;

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

    // sub342_mux(MUX,54)
    assign sub342_mux_s = in_valid_in_0;
    always @(sub342_mux_s or in_sub342_1 or in_sub342_0)
    begin
        unique case (sub342_mux_s)
            1'b0 : sub342_mux_q = in_sub342_1;
            1'b1 : sub342_mux_q = in_sub342_0;
            default : sub342_mux_q = 32'b0;
        endcase
    end

    // out_sub342(GPOUT,45)
    assign out_sub342 = sub342_mux_q;

    // unnamed_triangular10_mux(MUX,55)
    assign unnamed_triangular10_mux_s = in_valid_in_0;
    always @(unnamed_triangular10_mux_s or in_unnamed_triangular10_1 or in_unnamed_triangular10_0)
    begin
        unique case (unnamed_triangular10_mux_s)
            1'b0 : unnamed_triangular10_mux_q = in_unnamed_triangular10_1;
            1'b1 : unnamed_triangular10_mux_q = in_unnamed_triangular10_0;
            default : unnamed_triangular10_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_triangular10(GPOUT,46)
    assign out_unnamed_triangular10 = unnamed_triangular10_mux_q;

    // unnamed_triangular11_mux(MUX,56)
    assign unnamed_triangular11_mux_s = in_valid_in_0;
    always @(unnamed_triangular11_mux_s or in_unnamed_triangular11_1 or in_unnamed_triangular11_0)
    begin
        unique case (unnamed_triangular11_mux_s)
            1'b0 : unnamed_triangular11_mux_q = in_unnamed_triangular11_1;
            1'b1 : unnamed_triangular11_mux_q = in_unnamed_triangular11_0;
            default : unnamed_triangular11_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular11(GPOUT,47)
    assign out_unnamed_triangular11 = unnamed_triangular11_mux_q;

    // unnamed_triangular12_mux(MUX,57)
    assign unnamed_triangular12_mux_s = in_valid_in_0;
    always @(unnamed_triangular12_mux_s or in_unnamed_triangular12_1 or in_unnamed_triangular12_0)
    begin
        unique case (unnamed_triangular12_mux_s)
            1'b0 : unnamed_triangular12_mux_q = in_unnamed_triangular12_1;
            1'b1 : unnamed_triangular12_mux_q = in_unnamed_triangular12_0;
            default : unnamed_triangular12_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular12(GPOUT,48)
    assign out_unnamed_triangular12 = unnamed_triangular12_mux_q;

    // out_valid_out(GPOUT,49)
    assign out_valid_out = valid_or_q;

endmodule
