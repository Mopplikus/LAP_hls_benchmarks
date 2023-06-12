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
// SystemVerilog created on Tue Apr 25 22:47:05 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_B5_merge (
    input wire [31:0] in_i_01838_0,
    input wire [31:0] in_i_01838_1,
    input wire [31:0] in_lim_ext25_pop1442_0,
    input wire [31:0] in_lim_ext25_pop1442_1,
    input wire [31:0] in_lim_ext34_0,
    input wire [31:0] in_lim_ext34_1,
    input wire [0:0] in_memdep_phi4_pop1341_0,
    input wire [0:0] in_memdep_phi4_pop1341_1,
    input wire [0:0] in_notcmp1740_0,
    input wire [0:0] in_notcmp1740_1,
    input wire [31:0] in_reorder_limiter_enter27_pop1543_0,
    input wire [31:0] in_reorder_limiter_enter27_pop1543_1,
    input wire [31:0] in_reorder_limiter_enter37_0,
    input wire [31:0] in_reorder_limiter_enter37_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_sub339_0,
    input wire [31:0] in_sub339_1,
    input wire [32:0] in_unnamed_triangular12_0,
    input wire [32:0] in_unnamed_triangular12_1,
    input wire [0:0] in_unnamed_triangular13_0,
    input wire [0:0] in_unnamed_triangular13_1,
    input wire [0:0] in_unnamed_triangular14_0,
    input wire [0:0] in_unnamed_triangular14_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_i_01838,
    output wire [31:0] out_lim_ext25_pop1442,
    output wire [31:0] out_lim_ext34,
    output wire [0:0] out_memdep_phi4_pop1341,
    output wire [0:0] out_notcmp1740,
    output wire [31:0] out_reorder_limiter_enter27_pop1543,
    output wire [31:0] out_reorder_limiter_enter37,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_sub339,
    output wire [32:0] out_unnamed_triangular12,
    output wire [0:0] out_unnamed_triangular13,
    output wire [0:0] out_unnamed_triangular14,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] i_01838_mux_s;
    reg [31:0] i_01838_mux_q;
    wire [0:0] lim_ext25_pop1442_mux_s;
    reg [31:0] lim_ext25_pop1442_mux_q;
    wire [0:0] lim_ext34_mux_s;
    reg [31:0] lim_ext34_mux_q;
    wire [0:0] memdep_phi4_pop1341_mux_s;
    reg [0:0] memdep_phi4_pop1341_mux_q;
    wire [0:0] notcmp1740_mux_s;
    reg [0:0] notcmp1740_mux_q;
    wire [0:0] reorder_limiter_enter27_pop1543_mux_s;
    reg [31:0] reorder_limiter_enter27_pop1543_mux_q;
    wire [0:0] reorder_limiter_enter37_mux_s;
    reg [31:0] reorder_limiter_enter37_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] sub339_mux_s;
    reg [31:0] sub339_mux_q;
    wire [0:0] unnamed_triangular12_mux_s;
    reg [32:0] unnamed_triangular12_mux_q;
    wire [0:0] unnamed_triangular13_mux_s;
    reg [0:0] unnamed_triangular13_mux_q;
    wire [0:0] unnamed_triangular14_mux_s;
    reg [0:0] unnamed_triangular14_mux_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // i_01838_mux(MUX,2)
    assign i_01838_mux_s = in_valid_in_0;
    always @(i_01838_mux_s or in_i_01838_1 or in_i_01838_0)
    begin
        unique case (i_01838_mux_s)
            1'b0 : i_01838_mux_q = in_i_01838_1;
            1'b1 : i_01838_mux_q = in_i_01838_0;
            default : i_01838_mux_q = 32'b0;
        endcase
    end

    // out_i_01838(GPOUT,32)
    assign out_i_01838 = i_01838_mux_q;

    // lim_ext25_pop1442_mux(MUX,28)
    assign lim_ext25_pop1442_mux_s = in_valid_in_0;
    always @(lim_ext25_pop1442_mux_s or in_lim_ext25_pop1442_1 or in_lim_ext25_pop1442_0)
    begin
        unique case (lim_ext25_pop1442_mux_s)
            1'b0 : lim_ext25_pop1442_mux_q = in_lim_ext25_pop1442_1;
            1'b1 : lim_ext25_pop1442_mux_q = in_lim_ext25_pop1442_0;
            default : lim_ext25_pop1442_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext25_pop1442(GPOUT,33)
    assign out_lim_ext25_pop1442 = lim_ext25_pop1442_mux_q;

    // lim_ext34_mux(MUX,29)
    assign lim_ext34_mux_s = in_valid_in_0;
    always @(lim_ext34_mux_s or in_lim_ext34_1 or in_lim_ext34_0)
    begin
        unique case (lim_ext34_mux_s)
            1'b0 : lim_ext34_mux_q = in_lim_ext34_1;
            1'b1 : lim_ext34_mux_q = in_lim_ext34_0;
            default : lim_ext34_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext34(GPOUT,34)
    assign out_lim_ext34 = lim_ext34_mux_q;

    // memdep_phi4_pop1341_mux(MUX,30)
    assign memdep_phi4_pop1341_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1341_mux_s or in_memdep_phi4_pop1341_1 or in_memdep_phi4_pop1341_0)
    begin
        unique case (memdep_phi4_pop1341_mux_s)
            1'b0 : memdep_phi4_pop1341_mux_q = in_memdep_phi4_pop1341_1;
            1'b1 : memdep_phi4_pop1341_mux_q = in_memdep_phi4_pop1341_0;
            default : memdep_phi4_pop1341_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1341(GPOUT,35)
    assign out_memdep_phi4_pop1341 = memdep_phi4_pop1341_mux_q;

    // notcmp1740_mux(MUX,31)
    assign notcmp1740_mux_s = in_valid_in_0;
    always @(notcmp1740_mux_s or in_notcmp1740_1 or in_notcmp1740_0)
    begin
        unique case (notcmp1740_mux_s)
            1'b0 : notcmp1740_mux_q = in_notcmp1740_1;
            1'b1 : notcmp1740_mux_q = in_notcmp1740_0;
            default : notcmp1740_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1740(GPOUT,36)
    assign out_notcmp1740 = notcmp1740_mux_q;

    // reorder_limiter_enter27_pop1543_mux(MUX,46)
    assign reorder_limiter_enter27_pop1543_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter27_pop1543_mux_s or in_reorder_limiter_enter27_pop1543_1 or in_reorder_limiter_enter27_pop1543_0)
    begin
        unique case (reorder_limiter_enter27_pop1543_mux_s)
            1'b0 : reorder_limiter_enter27_pop1543_mux_q = in_reorder_limiter_enter27_pop1543_1;
            1'b1 : reorder_limiter_enter27_pop1543_mux_q = in_reorder_limiter_enter27_pop1543_0;
            default : reorder_limiter_enter27_pop1543_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter27_pop1543(GPOUT,37)
    assign out_reorder_limiter_enter27_pop1543 = reorder_limiter_enter27_pop1543_mux_q;

    // reorder_limiter_enter37_mux(MUX,47)
    assign reorder_limiter_enter37_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter37_mux_s or in_reorder_limiter_enter37_1 or in_reorder_limiter_enter37_0)
    begin
        unique case (reorder_limiter_enter37_mux_s)
            1'b0 : reorder_limiter_enter37_mux_q = in_reorder_limiter_enter37_1;
            1'b1 : reorder_limiter_enter37_mux_q = in_reorder_limiter_enter37_0;
            default : reorder_limiter_enter37_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter37(GPOUT,38)
    assign out_reorder_limiter_enter37 = reorder_limiter_enter37_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,48)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,49)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // sub339_mux(MUX,50)
    assign sub339_mux_s = in_valid_in_0;
    always @(sub339_mux_s or in_sub339_1 or in_sub339_0)
    begin
        unique case (sub339_mux_s)
            1'b0 : sub339_mux_q = in_sub339_1;
            1'b1 : sub339_mux_q = in_sub339_0;
            default : sub339_mux_q = 32'b0;
        endcase
    end

    // out_sub339(GPOUT,41)
    assign out_sub339 = sub339_mux_q;

    // unnamed_triangular12_mux(MUX,51)
    assign unnamed_triangular12_mux_s = in_valid_in_0;
    always @(unnamed_triangular12_mux_s or in_unnamed_triangular12_1 or in_unnamed_triangular12_0)
    begin
        unique case (unnamed_triangular12_mux_s)
            1'b0 : unnamed_triangular12_mux_q = in_unnamed_triangular12_1;
            1'b1 : unnamed_triangular12_mux_q = in_unnamed_triangular12_0;
            default : unnamed_triangular12_mux_q = 33'b0;
        endcase
    end

    // out_unnamed_triangular12(GPOUT,42)
    assign out_unnamed_triangular12 = unnamed_triangular12_mux_q;

    // unnamed_triangular13_mux(MUX,52)
    assign unnamed_triangular13_mux_s = in_valid_in_0;
    always @(unnamed_triangular13_mux_s or in_unnamed_triangular13_1 or in_unnamed_triangular13_0)
    begin
        unique case (unnamed_triangular13_mux_s)
            1'b0 : unnamed_triangular13_mux_q = in_unnamed_triangular13_1;
            1'b1 : unnamed_triangular13_mux_q = in_unnamed_triangular13_0;
            default : unnamed_triangular13_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular13(GPOUT,43)
    assign out_unnamed_triangular13 = unnamed_triangular13_mux_q;

    // unnamed_triangular14_mux(MUX,53)
    assign unnamed_triangular14_mux_s = in_valid_in_0;
    always @(unnamed_triangular14_mux_s or in_unnamed_triangular14_1 or in_unnamed_triangular14_0)
    begin
        unique case (unnamed_triangular14_mux_s)
            1'b0 : unnamed_triangular14_mux_q = in_unnamed_triangular14_1;
            1'b1 : unnamed_triangular14_mux_q = in_unnamed_triangular14_0;
            default : unnamed_triangular14_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_triangular14(GPOUT,44)
    assign out_unnamed_triangular14 = unnamed_triangular14_mux_q;

    // out_valid_out(GPOUT,45)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,55)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
