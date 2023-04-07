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

// SystemVerilog created from kernel_3mm_B4_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B4_merge (
    input wire [63:0] in_arrayidx121205_0,
    input wire [63:0] in_arrayidx121205_1,
    input wire [0:0] in_forked53_0,
    input wire [0:0] in_forked53_1,
    input wire [0:0] in_forked81137_0,
    input wire [0:0] in_forked81137_1,
    input wire [0:0] in_forked8183_pop24181_0,
    input wire [0:0] in_forked8183_pop24181_1,
    input wire [0:0] in_forked8184_pop34208_0,
    input wire [0:0] in_forked8184_pop34208_1,
    input wire [31:0] in_i_060_pop23108_pop39202_0,
    input wire [31:0] in_i_060_pop23108_pop39202_1,
    input wire [31:0] in_i_060_pop23171_0,
    input wire [31:0] in_i_060_pop23171_1,
    input wire [63:0] in_idxprom11204_0,
    input wire [63:0] in_idxprom11204_1,
    input wire [63:0] in_idxprom203_0,
    input wire [63:0] in_idxprom203_1,
    input wire [0:0] in_memdep_phi2_pop18151_0,
    input wire [0:0] in_memdep_phi2_pop18151_1,
    input wire [0:0] in_memdep_phi2_pop1891_pop26191_0,
    input wire [0:0] in_memdep_phi2_pop1891_pop26191_1,
    input wire [0:0] in_memdep_phi2_pop1892_pop36209_0,
    input wire [0:0] in_memdep_phi2_pop1892_pop36209_1,
    input wire [0:0] in_memdep_phi3_pop19158_0,
    input wire [0:0] in_memdep_phi3_pop19158_1,
    input wire [0:0] in_memdep_phi3_pop1995_pop27196_0,
    input wire [0:0] in_memdep_phi3_pop1995_pop27196_1,
    input wire [0:0] in_memdep_phi3_pop1996_pop37210_0,
    input wire [0:0] in_memdep_phi3_pop1996_pop37210_1,
    input wire [0:0] in_memdep_phi5_pop20100_pop38211_0,
    input wire [0:0] in_memdep_phi5_pop20100_pop38211_1,
    input wire [0:0] in_memdep_phi5_pop20165_0,
    input wire [0:0] in_memdep_phi5_pop20165_1,
    input wire [0:0] in_memdep_phi5_pop2099_pop28201_0,
    input wire [0:0] in_memdep_phi5_pop2099_pop28201_1,
    input wire [0:0] in_memdep_phi_pop17144_0,
    input wire [0:0] in_memdep_phi_pop17144_1,
    input wire [0:0] in_memdep_phi_pop1787_pop25186_0,
    input wire [0:0] in_memdep_phi_pop1787_pop25186_1,
    input wire [0:0] in_memdep_phi_pop1788_pop35206_0,
    input wire [0:0] in_memdep_phi_pop1788_pop35206_1,
    input wire [0:0] in_notcmp68207_0,
    input wire [0:0] in_notcmp68207_1,
    input wire [0:0] in_notcmp73111_pop40212_0,
    input wire [0:0] in_notcmp73111_pop40212_1,
    input wire [0:0] in_notcmp73176_0,
    input wire [0:0] in_notcmp73176_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm3_0,
    input wire [31:0] in_unnamed_kernel_3mm3_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx121205,
    output wire [0:0] out_forked53,
    output wire [0:0] out_forked81137,
    output wire [0:0] out_forked8183_pop24181,
    output wire [0:0] out_forked8184_pop34208,
    output wire [31:0] out_i_060_pop23108_pop39202,
    output wire [31:0] out_i_060_pop23171,
    output wire [63:0] out_idxprom11204,
    output wire [63:0] out_idxprom203,
    output wire [0:0] out_memdep_phi2_pop18151,
    output wire [0:0] out_memdep_phi2_pop1891_pop26191,
    output wire [0:0] out_memdep_phi2_pop1892_pop36209,
    output wire [0:0] out_memdep_phi3_pop19158,
    output wire [0:0] out_memdep_phi3_pop1995_pop27196,
    output wire [0:0] out_memdep_phi3_pop1996_pop37210,
    output wire [0:0] out_memdep_phi5_pop20100_pop38211,
    output wire [0:0] out_memdep_phi5_pop20165,
    output wire [0:0] out_memdep_phi5_pop2099_pop28201,
    output wire [0:0] out_memdep_phi_pop17144,
    output wire [0:0] out_memdep_phi_pop1787_pop25186,
    output wire [0:0] out_memdep_phi_pop1788_pop35206,
    output wire [0:0] out_notcmp68207,
    output wire [0:0] out_notcmp73111_pop40212,
    output wire [0:0] out_notcmp73176,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm3,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx121205_mux_s;
    reg [63:0] arrayidx121205_mux_q;
    wire [0:0] forked53_mux_s;
    reg [0:0] forked53_mux_q;
    wire [0:0] forked81137_mux_s;
    reg [0:0] forked81137_mux_q;
    wire [0:0] forked8183_pop24181_mux_s;
    reg [0:0] forked8183_pop24181_mux_q;
    wire [0:0] forked8184_pop34208_mux_s;
    reg [0:0] forked8184_pop34208_mux_q;
    wire [0:0] i_060_pop23108_pop39202_mux_s;
    reg [31:0] i_060_pop23108_pop39202_mux_q;
    wire [0:0] i_060_pop23171_mux_s;
    reg [31:0] i_060_pop23171_mux_q;
    wire [0:0] idxprom11204_mux_s;
    reg [63:0] idxprom11204_mux_q;
    wire [0:0] idxprom203_mux_s;
    reg [63:0] idxprom203_mux_q;
    wire [0:0] memdep_phi2_pop18151_mux_s;
    reg [0:0] memdep_phi2_pop18151_mux_q;
    wire [0:0] memdep_phi2_pop1891_pop26191_mux_s;
    reg [0:0] memdep_phi2_pop1891_pop26191_mux_q;
    wire [0:0] memdep_phi2_pop1892_pop36209_mux_s;
    reg [0:0] memdep_phi2_pop1892_pop36209_mux_q;
    wire [0:0] memdep_phi3_pop19158_mux_s;
    reg [0:0] memdep_phi3_pop19158_mux_q;
    wire [0:0] memdep_phi3_pop1995_pop27196_mux_s;
    reg [0:0] memdep_phi3_pop1995_pop27196_mux_q;
    wire [0:0] memdep_phi3_pop1996_pop37210_mux_s;
    reg [0:0] memdep_phi3_pop1996_pop37210_mux_q;
    wire [0:0] memdep_phi5_pop20100_pop38211_mux_s;
    reg [0:0] memdep_phi5_pop20100_pop38211_mux_q;
    wire [0:0] memdep_phi5_pop20165_mux_s;
    reg [0:0] memdep_phi5_pop20165_mux_q;
    wire [0:0] memdep_phi5_pop2099_pop28201_mux_s;
    reg [0:0] memdep_phi5_pop2099_pop28201_mux_q;
    wire [0:0] memdep_phi_pop17144_mux_s;
    reg [0:0] memdep_phi_pop17144_mux_q;
    wire [0:0] memdep_phi_pop1787_pop25186_mux_s;
    reg [0:0] memdep_phi_pop1787_pop25186_mux_q;
    wire [0:0] memdep_phi_pop1788_pop35206_mux_s;
    reg [0:0] memdep_phi_pop1788_pop35206_mux_q;
    wire [0:0] notcmp68207_mux_s;
    reg [0:0] notcmp68207_mux_q;
    wire [0:0] notcmp73111_pop40212_mux_s;
    reg [0:0] notcmp73111_pop40212_mux_q;
    wire [0:0] notcmp73176_mux_s;
    reg [0:0] notcmp73176_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm3_mux_s;
    reg [31:0] unnamed_kernel_3mm3_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx121205_mux(MUX,2)
    assign arrayidx121205_mux_s = in_valid_in_0;
    always @(arrayidx121205_mux_s or in_arrayidx121205_1 or in_arrayidx121205_0)
    begin
        unique case (arrayidx121205_mux_s)
            1'b0 : arrayidx121205_mux_q = in_arrayidx121205_1;
            1'b1 : arrayidx121205_mux_q = in_arrayidx121205_0;
            default : arrayidx121205_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx121205(GPOUT,79)
    assign out_arrayidx121205 = arrayidx121205_mux_q;

    // forked53_mux(MUX,3)
    assign forked53_mux_s = in_valid_in_0;
    always @(forked53_mux_s or in_forked53_1 or in_forked53_0)
    begin
        unique case (forked53_mux_s)
            1'b0 : forked53_mux_q = in_forked53_1;
            1'b1 : forked53_mux_q = in_forked53_0;
            default : forked53_mux_q = 1'b0;
        endcase
    end

    // out_forked53(GPOUT,80)
    assign out_forked53 = forked53_mux_q;

    // forked81137_mux(MUX,4)
    assign forked81137_mux_s = in_valid_in_0;
    always @(forked81137_mux_s or in_forked81137_1 or in_forked81137_0)
    begin
        unique case (forked81137_mux_s)
            1'b0 : forked81137_mux_q = in_forked81137_1;
            1'b1 : forked81137_mux_q = in_forked81137_0;
            default : forked81137_mux_q = 1'b0;
        endcase
    end

    // out_forked81137(GPOUT,81)
    assign out_forked81137 = forked81137_mux_q;

    // forked8183_pop24181_mux(MUX,5)
    assign forked8183_pop24181_mux_s = in_valid_in_0;
    always @(forked8183_pop24181_mux_s or in_forked8183_pop24181_1 or in_forked8183_pop24181_0)
    begin
        unique case (forked8183_pop24181_mux_s)
            1'b0 : forked8183_pop24181_mux_q = in_forked8183_pop24181_1;
            1'b1 : forked8183_pop24181_mux_q = in_forked8183_pop24181_0;
            default : forked8183_pop24181_mux_q = 1'b0;
        endcase
    end

    // out_forked8183_pop24181(GPOUT,82)
    assign out_forked8183_pop24181 = forked8183_pop24181_mux_q;

    // forked8184_pop34208_mux(MUX,6)
    assign forked8184_pop34208_mux_s = in_valid_in_0;
    always @(forked8184_pop34208_mux_s or in_forked8184_pop34208_1 or in_forked8184_pop34208_0)
    begin
        unique case (forked8184_pop34208_mux_s)
            1'b0 : forked8184_pop34208_mux_q = in_forked8184_pop34208_1;
            1'b1 : forked8184_pop34208_mux_q = in_forked8184_pop34208_0;
            default : forked8184_pop34208_mux_q = 1'b0;
        endcase
    end

    // out_forked8184_pop34208(GPOUT,83)
    assign out_forked8184_pop34208 = forked8184_pop34208_mux_q;

    // i_060_pop23108_pop39202_mux(MUX,7)
    assign i_060_pop23108_pop39202_mux_s = in_valid_in_0;
    always @(i_060_pop23108_pop39202_mux_s or in_i_060_pop23108_pop39202_1 or in_i_060_pop23108_pop39202_0)
    begin
        unique case (i_060_pop23108_pop39202_mux_s)
            1'b0 : i_060_pop23108_pop39202_mux_q = in_i_060_pop23108_pop39202_1;
            1'b1 : i_060_pop23108_pop39202_mux_q = in_i_060_pop23108_pop39202_0;
            default : i_060_pop23108_pop39202_mux_q = 32'b0;
        endcase
    end

    // out_i_060_pop23108_pop39202(GPOUT,84)
    assign out_i_060_pop23108_pop39202 = i_060_pop23108_pop39202_mux_q;

    // i_060_pop23171_mux(MUX,8)
    assign i_060_pop23171_mux_s = in_valid_in_0;
    always @(i_060_pop23171_mux_s or in_i_060_pop23171_1 or in_i_060_pop23171_0)
    begin
        unique case (i_060_pop23171_mux_s)
            1'b0 : i_060_pop23171_mux_q = in_i_060_pop23171_1;
            1'b1 : i_060_pop23171_mux_q = in_i_060_pop23171_0;
            default : i_060_pop23171_mux_q = 32'b0;
        endcase
    end

    // out_i_060_pop23171(GPOUT,85)
    assign out_i_060_pop23171 = i_060_pop23171_mux_q;

    // idxprom11204_mux(MUX,9)
    assign idxprom11204_mux_s = in_valid_in_0;
    always @(idxprom11204_mux_s or in_idxprom11204_1 or in_idxprom11204_0)
    begin
        unique case (idxprom11204_mux_s)
            1'b0 : idxprom11204_mux_q = in_idxprom11204_1;
            1'b1 : idxprom11204_mux_q = in_idxprom11204_0;
            default : idxprom11204_mux_q = 64'b0;
        endcase
    end

    // out_idxprom11204(GPOUT,86)
    assign out_idxprom11204 = idxprom11204_mux_q;

    // idxprom203_mux(MUX,10)
    assign idxprom203_mux_s = in_valid_in_0;
    always @(idxprom203_mux_s or in_idxprom203_1 or in_idxprom203_0)
    begin
        unique case (idxprom203_mux_s)
            1'b0 : idxprom203_mux_q = in_idxprom203_1;
            1'b1 : idxprom203_mux_q = in_idxprom203_0;
            default : idxprom203_mux_q = 64'b0;
        endcase
    end

    // out_idxprom203(GPOUT,87)
    assign out_idxprom203 = idxprom203_mux_q;

    // memdep_phi2_pop18151_mux(MUX,64)
    assign memdep_phi2_pop18151_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop18151_mux_s or in_memdep_phi2_pop18151_1 or in_memdep_phi2_pop18151_0)
    begin
        unique case (memdep_phi2_pop18151_mux_s)
            1'b0 : memdep_phi2_pop18151_mux_q = in_memdep_phi2_pop18151_1;
            1'b1 : memdep_phi2_pop18151_mux_q = in_memdep_phi2_pop18151_0;
            default : memdep_phi2_pop18151_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop18151(GPOUT,88)
    assign out_memdep_phi2_pop18151 = memdep_phi2_pop18151_mux_q;

    // memdep_phi2_pop1891_pop26191_mux(MUX,65)
    assign memdep_phi2_pop1891_pop26191_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1891_pop26191_mux_s or in_memdep_phi2_pop1891_pop26191_1 or in_memdep_phi2_pop1891_pop26191_0)
    begin
        unique case (memdep_phi2_pop1891_pop26191_mux_s)
            1'b0 : memdep_phi2_pop1891_pop26191_mux_q = in_memdep_phi2_pop1891_pop26191_1;
            1'b1 : memdep_phi2_pop1891_pop26191_mux_q = in_memdep_phi2_pop1891_pop26191_0;
            default : memdep_phi2_pop1891_pop26191_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1891_pop26191(GPOUT,89)
    assign out_memdep_phi2_pop1891_pop26191 = memdep_phi2_pop1891_pop26191_mux_q;

    // memdep_phi2_pop1892_pop36209_mux(MUX,66)
    assign memdep_phi2_pop1892_pop36209_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1892_pop36209_mux_s or in_memdep_phi2_pop1892_pop36209_1 or in_memdep_phi2_pop1892_pop36209_0)
    begin
        unique case (memdep_phi2_pop1892_pop36209_mux_s)
            1'b0 : memdep_phi2_pop1892_pop36209_mux_q = in_memdep_phi2_pop1892_pop36209_1;
            1'b1 : memdep_phi2_pop1892_pop36209_mux_q = in_memdep_phi2_pop1892_pop36209_0;
            default : memdep_phi2_pop1892_pop36209_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1892_pop36209(GPOUT,90)
    assign out_memdep_phi2_pop1892_pop36209 = memdep_phi2_pop1892_pop36209_mux_q;

    // memdep_phi3_pop19158_mux(MUX,67)
    assign memdep_phi3_pop19158_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop19158_mux_s or in_memdep_phi3_pop19158_1 or in_memdep_phi3_pop19158_0)
    begin
        unique case (memdep_phi3_pop19158_mux_s)
            1'b0 : memdep_phi3_pop19158_mux_q = in_memdep_phi3_pop19158_1;
            1'b1 : memdep_phi3_pop19158_mux_q = in_memdep_phi3_pop19158_0;
            default : memdep_phi3_pop19158_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop19158(GPOUT,91)
    assign out_memdep_phi3_pop19158 = memdep_phi3_pop19158_mux_q;

    // memdep_phi3_pop1995_pop27196_mux(MUX,68)
    assign memdep_phi3_pop1995_pop27196_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1995_pop27196_mux_s or in_memdep_phi3_pop1995_pop27196_1 or in_memdep_phi3_pop1995_pop27196_0)
    begin
        unique case (memdep_phi3_pop1995_pop27196_mux_s)
            1'b0 : memdep_phi3_pop1995_pop27196_mux_q = in_memdep_phi3_pop1995_pop27196_1;
            1'b1 : memdep_phi3_pop1995_pop27196_mux_q = in_memdep_phi3_pop1995_pop27196_0;
            default : memdep_phi3_pop1995_pop27196_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1995_pop27196(GPOUT,92)
    assign out_memdep_phi3_pop1995_pop27196 = memdep_phi3_pop1995_pop27196_mux_q;

    // memdep_phi3_pop1996_pop37210_mux(MUX,69)
    assign memdep_phi3_pop1996_pop37210_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1996_pop37210_mux_s or in_memdep_phi3_pop1996_pop37210_1 or in_memdep_phi3_pop1996_pop37210_0)
    begin
        unique case (memdep_phi3_pop1996_pop37210_mux_s)
            1'b0 : memdep_phi3_pop1996_pop37210_mux_q = in_memdep_phi3_pop1996_pop37210_1;
            1'b1 : memdep_phi3_pop1996_pop37210_mux_q = in_memdep_phi3_pop1996_pop37210_0;
            default : memdep_phi3_pop1996_pop37210_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1996_pop37210(GPOUT,93)
    assign out_memdep_phi3_pop1996_pop37210 = memdep_phi3_pop1996_pop37210_mux_q;

    // memdep_phi5_pop20100_pop38211_mux(MUX,70)
    assign memdep_phi5_pop20100_pop38211_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop20100_pop38211_mux_s or in_memdep_phi5_pop20100_pop38211_1 or in_memdep_phi5_pop20100_pop38211_0)
    begin
        unique case (memdep_phi5_pop20100_pop38211_mux_s)
            1'b0 : memdep_phi5_pop20100_pop38211_mux_q = in_memdep_phi5_pop20100_pop38211_1;
            1'b1 : memdep_phi5_pop20100_pop38211_mux_q = in_memdep_phi5_pop20100_pop38211_0;
            default : memdep_phi5_pop20100_pop38211_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop20100_pop38211(GPOUT,94)
    assign out_memdep_phi5_pop20100_pop38211 = memdep_phi5_pop20100_pop38211_mux_q;

    // memdep_phi5_pop20165_mux(MUX,71)
    assign memdep_phi5_pop20165_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop20165_mux_s or in_memdep_phi5_pop20165_1 or in_memdep_phi5_pop20165_0)
    begin
        unique case (memdep_phi5_pop20165_mux_s)
            1'b0 : memdep_phi5_pop20165_mux_q = in_memdep_phi5_pop20165_1;
            1'b1 : memdep_phi5_pop20165_mux_q = in_memdep_phi5_pop20165_0;
            default : memdep_phi5_pop20165_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop20165(GPOUT,95)
    assign out_memdep_phi5_pop20165 = memdep_phi5_pop20165_mux_q;

    // memdep_phi5_pop2099_pop28201_mux(MUX,72)
    assign memdep_phi5_pop2099_pop28201_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop2099_pop28201_mux_s or in_memdep_phi5_pop2099_pop28201_1 or in_memdep_phi5_pop2099_pop28201_0)
    begin
        unique case (memdep_phi5_pop2099_pop28201_mux_s)
            1'b0 : memdep_phi5_pop2099_pop28201_mux_q = in_memdep_phi5_pop2099_pop28201_1;
            1'b1 : memdep_phi5_pop2099_pop28201_mux_q = in_memdep_phi5_pop2099_pop28201_0;
            default : memdep_phi5_pop2099_pop28201_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop2099_pop28201(GPOUT,96)
    assign out_memdep_phi5_pop2099_pop28201 = memdep_phi5_pop2099_pop28201_mux_q;

    // memdep_phi_pop17144_mux(MUX,73)
    assign memdep_phi_pop17144_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17144_mux_s or in_memdep_phi_pop17144_1 or in_memdep_phi_pop17144_0)
    begin
        unique case (memdep_phi_pop17144_mux_s)
            1'b0 : memdep_phi_pop17144_mux_q = in_memdep_phi_pop17144_1;
            1'b1 : memdep_phi_pop17144_mux_q = in_memdep_phi_pop17144_0;
            default : memdep_phi_pop17144_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17144(GPOUT,97)
    assign out_memdep_phi_pop17144 = memdep_phi_pop17144_mux_q;

    // memdep_phi_pop1787_pop25186_mux(MUX,74)
    assign memdep_phi_pop1787_pop25186_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1787_pop25186_mux_s or in_memdep_phi_pop1787_pop25186_1 or in_memdep_phi_pop1787_pop25186_0)
    begin
        unique case (memdep_phi_pop1787_pop25186_mux_s)
            1'b0 : memdep_phi_pop1787_pop25186_mux_q = in_memdep_phi_pop1787_pop25186_1;
            1'b1 : memdep_phi_pop1787_pop25186_mux_q = in_memdep_phi_pop1787_pop25186_0;
            default : memdep_phi_pop1787_pop25186_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1787_pop25186(GPOUT,98)
    assign out_memdep_phi_pop1787_pop25186 = memdep_phi_pop1787_pop25186_mux_q;

    // memdep_phi_pop1788_pop35206_mux(MUX,75)
    assign memdep_phi_pop1788_pop35206_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1788_pop35206_mux_s or in_memdep_phi_pop1788_pop35206_1 or in_memdep_phi_pop1788_pop35206_0)
    begin
        unique case (memdep_phi_pop1788_pop35206_mux_s)
            1'b0 : memdep_phi_pop1788_pop35206_mux_q = in_memdep_phi_pop1788_pop35206_1;
            1'b1 : memdep_phi_pop1788_pop35206_mux_q = in_memdep_phi_pop1788_pop35206_0;
            default : memdep_phi_pop1788_pop35206_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1788_pop35206(GPOUT,99)
    assign out_memdep_phi_pop1788_pop35206 = memdep_phi_pop1788_pop35206_mux_q;

    // notcmp68207_mux(MUX,76)
    assign notcmp68207_mux_s = in_valid_in_0;
    always @(notcmp68207_mux_s or in_notcmp68207_1 or in_notcmp68207_0)
    begin
        unique case (notcmp68207_mux_s)
            1'b0 : notcmp68207_mux_q = in_notcmp68207_1;
            1'b1 : notcmp68207_mux_q = in_notcmp68207_0;
            default : notcmp68207_mux_q = 1'b0;
        endcase
    end

    // out_notcmp68207(GPOUT,100)
    assign out_notcmp68207 = notcmp68207_mux_q;

    // notcmp73111_pop40212_mux(MUX,77)
    assign notcmp73111_pop40212_mux_s = in_valid_in_0;
    always @(notcmp73111_pop40212_mux_s or in_notcmp73111_pop40212_1 or in_notcmp73111_pop40212_0)
    begin
        unique case (notcmp73111_pop40212_mux_s)
            1'b0 : notcmp73111_pop40212_mux_q = in_notcmp73111_pop40212_1;
            1'b1 : notcmp73111_pop40212_mux_q = in_notcmp73111_pop40212_0;
            default : notcmp73111_pop40212_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73111_pop40212(GPOUT,101)
    assign out_notcmp73111_pop40212 = notcmp73111_pop40212_mux_q;

    // notcmp73176_mux(MUX,78)
    assign notcmp73176_mux_s = in_valid_in_0;
    always @(notcmp73176_mux_s or in_notcmp73176_1 or in_notcmp73176_0)
    begin
        unique case (notcmp73176_mux_s)
            1'b0 : notcmp73176_mux_q = in_notcmp73176_1;
            1'b1 : notcmp73176_mux_q = in_notcmp73176_0;
            default : notcmp73176_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73176(GPOUT,102)
    assign out_notcmp73176 = notcmp73176_mux_q;

    // valid_or(LOGICAL,110)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,107)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,103)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,108)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,104)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kernel_3mm3_mux(MUX,109)
    assign unnamed_kernel_3mm3_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm3_mux_s or in_unnamed_kernel_3mm3_1 or in_unnamed_kernel_3mm3_0)
    begin
        unique case (unnamed_kernel_3mm3_mux_s)
            1'b0 : unnamed_kernel_3mm3_mux_q = in_unnamed_kernel_3mm3_1;
            1'b1 : unnamed_kernel_3mm3_mux_q = in_unnamed_kernel_3mm3_0;
            default : unnamed_kernel_3mm3_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm3(GPOUT,105)
    assign out_unnamed_kernel_3mm3 = unnamed_kernel_3mm3_mux_q;

    // out_valid_out(GPOUT,106)
    assign out_valid_out = valid_or_q;

endmodule
