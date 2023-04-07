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

// SystemVerilog created from bicg_B5_merge
// Created for function/kernel bicg
// SystemVerilog created on Fri Apr  7 18:01:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_B5_merge (
    input wire [63:0] in_arrayidx134_0,
    input wire [63:0] in_arrayidx134_1,
    input wire [0:0] in_exitcond636_0,
    input wire [0:0] in_exitcond636_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [63:0] in_idxprom32_0,
    input wire [63:0] in_idxprom32_1,
    input wire [0:0] in_memdep_phi2_pop1138_0,
    input wire [0:0] in_memdep_phi2_pop1138_1,
    input wire [0:0] in_memdep_phi3_pop819_pop1339_0,
    input wire [0:0] in_memdep_phi3_pop819_pop1339_1,
    input wire [0:0] in_memdep_phi3_pop831_0,
    input wire [0:0] in_memdep_phi3_pop831_1,
    input wire [0:0] in_memdep_phi_pop717_pop1235_0,
    input wire [0:0] in_memdep_phi_pop717_pop1235_1,
    input wire [0:0] in_memdep_phi_pop728_0,
    input wire [0:0] in_memdep_phi_pop728_1,
    input wire [0:0] in_notcmp737_0,
    input wire [0:0] in_notcmp737_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_bicg4_0,
    input wire [31:0] in_unnamed_bicg4_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx134,
    output wire [0:0] out_exitcond636,
    output wire [0:0] out_forked,
    output wire [63:0] out_idxprom32,
    output wire [0:0] out_memdep_phi2_pop1138,
    output wire [0:0] out_memdep_phi3_pop819_pop1339,
    output wire [0:0] out_memdep_phi3_pop831,
    output wire [0:0] out_memdep_phi_pop717_pop1235,
    output wire [0:0] out_memdep_phi_pop728,
    output wire [0:0] out_notcmp737,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_bicg4,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx134_mux_s;
    reg [63:0] arrayidx134_mux_q;
    wire [0:0] exitcond636_mux_s;
    reg [0:0] exitcond636_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] idxprom32_mux_s;
    reg [63:0] idxprom32_mux_q;
    wire [0:0] memdep_phi2_pop1138_mux_s;
    reg [0:0] memdep_phi2_pop1138_mux_q;
    wire [0:0] memdep_phi3_pop819_pop1339_mux_s;
    reg [0:0] memdep_phi3_pop819_pop1339_mux_q;
    wire [0:0] memdep_phi3_pop831_mux_s;
    reg [0:0] memdep_phi3_pop831_mux_q;
    wire [0:0] memdep_phi_pop717_pop1235_mux_s;
    reg [0:0] memdep_phi_pop717_pop1235_mux_q;
    wire [0:0] memdep_phi_pop728_mux_s;
    reg [0:0] memdep_phi_pop728_mux_q;
    wire [0:0] notcmp737_mux_s;
    reg [0:0] notcmp737_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_bicg4_mux_s;
    reg [31:0] unnamed_bicg4_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx134_mux(MUX,2)
    assign arrayidx134_mux_s = in_valid_in_0;
    always @(arrayidx134_mux_s or in_arrayidx134_1 or in_arrayidx134_0)
    begin
        unique case (arrayidx134_mux_s)
            1'b0 : arrayidx134_mux_q = in_arrayidx134_1;
            1'b1 : arrayidx134_mux_q = in_arrayidx134_0;
            default : arrayidx134_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx134(GPOUT,37)
    assign out_arrayidx134 = arrayidx134_mux_q;

    // exitcond636_mux(MUX,3)
    assign exitcond636_mux_s = in_valid_in_0;
    always @(exitcond636_mux_s or in_exitcond636_1 or in_exitcond636_0)
    begin
        unique case (exitcond636_mux_s)
            1'b0 : exitcond636_mux_q = in_exitcond636_1;
            1'b1 : exitcond636_mux_q = in_exitcond636_0;
            default : exitcond636_mux_q = 1'b0;
        endcase
    end

    // out_exitcond636(GPOUT,38)
    assign out_exitcond636 = exitcond636_mux_q;

    // forked_mux(MUX,4)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,39)
    assign out_forked = forked_mux_q;

    // idxprom32_mux(MUX,5)
    assign idxprom32_mux_s = in_valid_in_0;
    always @(idxprom32_mux_s or in_idxprom32_1 or in_idxprom32_0)
    begin
        unique case (idxprom32_mux_s)
            1'b0 : idxprom32_mux_q = in_idxprom32_1;
            1'b1 : idxprom32_mux_q = in_idxprom32_0;
            default : idxprom32_mux_q = 64'b0;
        endcase
    end

    // out_idxprom32(GPOUT,40)
    assign out_idxprom32 = idxprom32_mux_q;

    // memdep_phi2_pop1138_mux(MUX,31)
    assign memdep_phi2_pop1138_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1138_mux_s or in_memdep_phi2_pop1138_1 or in_memdep_phi2_pop1138_0)
    begin
        unique case (memdep_phi2_pop1138_mux_s)
            1'b0 : memdep_phi2_pop1138_mux_q = in_memdep_phi2_pop1138_1;
            1'b1 : memdep_phi2_pop1138_mux_q = in_memdep_phi2_pop1138_0;
            default : memdep_phi2_pop1138_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1138(GPOUT,41)
    assign out_memdep_phi2_pop1138 = memdep_phi2_pop1138_mux_q;

    // memdep_phi3_pop819_pop1339_mux(MUX,32)
    assign memdep_phi3_pop819_pop1339_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop819_pop1339_mux_s or in_memdep_phi3_pop819_pop1339_1 or in_memdep_phi3_pop819_pop1339_0)
    begin
        unique case (memdep_phi3_pop819_pop1339_mux_s)
            1'b0 : memdep_phi3_pop819_pop1339_mux_q = in_memdep_phi3_pop819_pop1339_1;
            1'b1 : memdep_phi3_pop819_pop1339_mux_q = in_memdep_phi3_pop819_pop1339_0;
            default : memdep_phi3_pop819_pop1339_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop819_pop1339(GPOUT,42)
    assign out_memdep_phi3_pop819_pop1339 = memdep_phi3_pop819_pop1339_mux_q;

    // memdep_phi3_pop831_mux(MUX,33)
    assign memdep_phi3_pop831_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop831_mux_s or in_memdep_phi3_pop831_1 or in_memdep_phi3_pop831_0)
    begin
        unique case (memdep_phi3_pop831_mux_s)
            1'b0 : memdep_phi3_pop831_mux_q = in_memdep_phi3_pop831_1;
            1'b1 : memdep_phi3_pop831_mux_q = in_memdep_phi3_pop831_0;
            default : memdep_phi3_pop831_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop831(GPOUT,43)
    assign out_memdep_phi3_pop831 = memdep_phi3_pop831_mux_q;

    // memdep_phi_pop717_pop1235_mux(MUX,34)
    assign memdep_phi_pop717_pop1235_mux_s = in_valid_in_0;
    always @(memdep_phi_pop717_pop1235_mux_s or in_memdep_phi_pop717_pop1235_1 or in_memdep_phi_pop717_pop1235_0)
    begin
        unique case (memdep_phi_pop717_pop1235_mux_s)
            1'b0 : memdep_phi_pop717_pop1235_mux_q = in_memdep_phi_pop717_pop1235_1;
            1'b1 : memdep_phi_pop717_pop1235_mux_q = in_memdep_phi_pop717_pop1235_0;
            default : memdep_phi_pop717_pop1235_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop717_pop1235(GPOUT,44)
    assign out_memdep_phi_pop717_pop1235 = memdep_phi_pop717_pop1235_mux_q;

    // memdep_phi_pop728_mux(MUX,35)
    assign memdep_phi_pop728_mux_s = in_valid_in_0;
    always @(memdep_phi_pop728_mux_s or in_memdep_phi_pop728_1 or in_memdep_phi_pop728_0)
    begin
        unique case (memdep_phi_pop728_mux_s)
            1'b0 : memdep_phi_pop728_mux_q = in_memdep_phi_pop728_1;
            1'b1 : memdep_phi_pop728_mux_q = in_memdep_phi_pop728_0;
            default : memdep_phi_pop728_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop728(GPOUT,45)
    assign out_memdep_phi_pop728 = memdep_phi_pop728_mux_q;

    // notcmp737_mux(MUX,36)
    assign notcmp737_mux_s = in_valid_in_0;
    always @(notcmp737_mux_s or in_notcmp737_1 or in_notcmp737_0)
    begin
        unique case (notcmp737_mux_s)
            1'b0 : notcmp737_mux_q = in_notcmp737_1;
            1'b1 : notcmp737_mux_q = in_notcmp737_0;
            default : notcmp737_mux_q = 1'b0;
        endcase
    end

    // out_notcmp737(GPOUT,46)
    assign out_notcmp737 = notcmp737_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,51)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,52)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_bicg4_mux(MUX,53)
    assign unnamed_bicg4_mux_s = in_valid_in_0;
    always @(unnamed_bicg4_mux_s or in_unnamed_bicg4_1 or in_unnamed_bicg4_0)
    begin
        unique case (unnamed_bicg4_mux_s)
            1'b0 : unnamed_bicg4_mux_q = in_unnamed_bicg4_1;
            1'b1 : unnamed_bicg4_mux_q = in_unnamed_bicg4_0;
            default : unnamed_bicg4_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_bicg4(GPOUT,49)
    assign out_unnamed_bicg4 = unnamed_bicg4_mux_q;

    // out_valid_out(GPOUT,50)
    assign out_valid_out = valid_or_q;

endmodule
