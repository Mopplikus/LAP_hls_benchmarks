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

// SystemVerilog created from gaussian_B7_merge
// Created for function/kernel gaussian
// SystemVerilog created on Wed Mar 29 19:22:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B7_merge (
    input wire [31:0] in_add39_pop1150_0,
    input wire [31:0] in_add39_pop1150_1,
    input wire [0:0] in_forked27_0,
    input wire [0:0] in_forked27_1,
    input wire [31:0] in_i_019_replace_phi47_0,
    input wire [31:0] in_i_019_replace_phi47_1,
    input wire [0:0] in_memdep_phi_pop1049_0,
    input wire [0:0] in_memdep_phi_pop1049_1,
    input wire [0:0] in_notcmp3148_0,
    input wire [0:0] in_notcmp3148_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_unnamed_gaussian15_0,
    input wire [0:0] in_unnamed_gaussian15_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_add39_pop1150,
    output wire [0:0] out_forked27,
    output wire [31:0] out_i_019_replace_phi47,
    output wire [0:0] out_memdep_phi_pop1049,
    output wire [0:0] out_notcmp3148,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_unnamed_gaussian15,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] add39_pop1150_mux_s;
    reg [31:0] add39_pop1150_mux_q;
    wire [0:0] forked27_mux_s;
    reg [0:0] forked27_mux_q;
    wire [0:0] i_019_replace_phi47_mux_s;
    reg [31:0] i_019_replace_phi47_mux_q;
    wire [0:0] memdep_phi_pop1049_mux_s;
    reg [0:0] memdep_phi_pop1049_mux_q;
    wire [0:0] notcmp3148_mux_s;
    reg [0:0] notcmp3148_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_gaussian15_mux_s;
    reg [0:0] unnamed_gaussian15_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // add39_pop1150_mux(MUX,2)
    assign add39_pop1150_mux_s = in_valid_in_0;
    always @(add39_pop1150_mux_s or in_add39_pop1150_1 or in_add39_pop1150_0)
    begin
        unique case (add39_pop1150_mux_s)
            1'b0 : add39_pop1150_mux_q = in_add39_pop1150_1;
            1'b1 : add39_pop1150_mux_q = in_add39_pop1150_0;
            default : add39_pop1150_mux_q = 32'b0;
        endcase
    end

    // out_add39_pop1150(GPOUT,22)
    assign out_add39_pop1150 = add39_pop1150_mux_q;

    // forked27_mux(MUX,3)
    assign forked27_mux_s = in_valid_in_0;
    always @(forked27_mux_s or in_forked27_1 or in_forked27_0)
    begin
        unique case (forked27_mux_s)
            1'b0 : forked27_mux_q = in_forked27_1;
            1'b1 : forked27_mux_q = in_forked27_0;
            default : forked27_mux_q = 1'b0;
        endcase
    end

    // out_forked27(GPOUT,23)
    assign out_forked27 = forked27_mux_q;

    // i_019_replace_phi47_mux(MUX,4)
    assign i_019_replace_phi47_mux_s = in_valid_in_0;
    always @(i_019_replace_phi47_mux_s or in_i_019_replace_phi47_1 or in_i_019_replace_phi47_0)
    begin
        unique case (i_019_replace_phi47_mux_s)
            1'b0 : i_019_replace_phi47_mux_q = in_i_019_replace_phi47_1;
            1'b1 : i_019_replace_phi47_mux_q = in_i_019_replace_phi47_0;
            default : i_019_replace_phi47_mux_q = 32'b0;
        endcase
    end

    // out_i_019_replace_phi47(GPOUT,24)
    assign out_i_019_replace_phi47 = i_019_replace_phi47_mux_q;

    // memdep_phi_pop1049_mux(MUX,20)
    assign memdep_phi_pop1049_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1049_mux_s or in_memdep_phi_pop1049_1 or in_memdep_phi_pop1049_0)
    begin
        unique case (memdep_phi_pop1049_mux_s)
            1'b0 : memdep_phi_pop1049_mux_q = in_memdep_phi_pop1049_1;
            1'b1 : memdep_phi_pop1049_mux_q = in_memdep_phi_pop1049_0;
            default : memdep_phi_pop1049_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1049(GPOUT,25)
    assign out_memdep_phi_pop1049 = memdep_phi_pop1049_mux_q;

    // notcmp3148_mux(MUX,21)
    assign notcmp3148_mux_s = in_valid_in_0;
    always @(notcmp3148_mux_s or in_notcmp3148_1 or in_notcmp3148_0)
    begin
        unique case (notcmp3148_mux_s)
            1'b0 : notcmp3148_mux_q = in_notcmp3148_1;
            1'b1 : notcmp3148_mux_q = in_notcmp3148_0;
            default : notcmp3148_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3148(GPOUT,26)
    assign out_notcmp3148 = notcmp3148_mux_q;

    // valid_or(LOGICAL,34)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,31)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,27)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,32)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,28)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_gaussian15_mux(MUX,33)
    assign unnamed_gaussian15_mux_s = in_valid_in_0;
    always @(unnamed_gaussian15_mux_s or in_unnamed_gaussian15_1 or in_unnamed_gaussian15_0)
    begin
        unique case (unnamed_gaussian15_mux_s)
            1'b0 : unnamed_gaussian15_mux_q = in_unnamed_gaussian15_1;
            1'b1 : unnamed_gaussian15_mux_q = in_unnamed_gaussian15_0;
            default : unnamed_gaussian15_mux_q = 1'b0;
        endcase
    end

    // out_unnamed_gaussian15(GPOUT,29)
    assign out_unnamed_gaussian15 = unnamed_gaussian15_mux_q;

    // out_valid_out(GPOUT,30)
    assign out_valid_out = valid_or_q;

endmodule
