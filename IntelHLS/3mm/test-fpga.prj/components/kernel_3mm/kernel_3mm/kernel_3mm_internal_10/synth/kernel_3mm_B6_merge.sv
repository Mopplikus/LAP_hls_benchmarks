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

// SystemVerilog created from kernel_3mm_B6_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B6_merge (
    input wire [63:0] in_arrayidx444236_0,
    input wire [63:0] in_arrayidx444236_1,
    input wire [0:0] in_forked37_0,
    input wire [0:0] in_forked37_1,
    input wire [0:0] in_forked81135_0,
    input wire [0:0] in_forked81135_1,
    input wire [0:0] in_forked8183_pop24179_0,
    input wire [0:0] in_forked8183_pop24179_1,
    input wire [0:0] in_forked8185_pop51218_0,
    input wire [0:0] in_forked8185_pop51218_1,
    input wire [31:0] in_i_060_pop23109_pop56228_0,
    input wire [31:0] in_i_060_pop23109_pop56228_1,
    input wire [31:0] in_i_060_pop23169_0,
    input wire [31:0] in_i_060_pop23169_1,
    input wire [63:0] in_idxprom11121_pop59215_0,
    input wire [63:0] in_idxprom11121_pop59215_1,
    input wire [63:0] in_idxprom119_pop58213_0,
    input wire [63:0] in_idxprom119_pop58213_1,
    input wire [0:0] in_memdep_235_0,
    input wire [0:0] in_memdep_235_1,
    input wire [0:0] in_memdep_phi2_pop18149_0,
    input wire [0:0] in_memdep_phi2_pop18149_1,
    input wire [0:0] in_memdep_phi2_pop1891_pop26189_0,
    input wire [0:0] in_memdep_phi2_pop1891_pop26189_1,
    input wire [0:0] in_memdep_phi2_pop1893_pop53222_0,
    input wire [0:0] in_memdep_phi2_pop1893_pop53222_1,
    input wire [0:0] in_memdep_phi3_pop19156_0,
    input wire [0:0] in_memdep_phi3_pop19156_1,
    input wire [0:0] in_memdep_phi3_pop1995_pop27194_0,
    input wire [0:0] in_memdep_phi3_pop1995_pop27194_1,
    input wire [0:0] in_memdep_phi3_pop1997_pop54224_0,
    input wire [0:0] in_memdep_phi3_pop1997_pop54224_1,
    input wire [0:0] in_memdep_phi5_pop20101_pop55226_0,
    input wire [0:0] in_memdep_phi5_pop20101_pop55226_1,
    input wire [0:0] in_memdep_phi5_pop20163_0,
    input wire [0:0] in_memdep_phi5_pop20163_1,
    input wire [0:0] in_memdep_phi5_pop2099_pop28199_0,
    input wire [0:0] in_memdep_phi5_pop2099_pop28199_1,
    input wire [0:0] in_memdep_phi_pop17142_0,
    input wire [0:0] in_memdep_phi_pop17142_1,
    input wire [0:0] in_memdep_phi_pop1787_pop25184_0,
    input wire [0:0] in_memdep_phi_pop1787_pop25184_1,
    input wire [0:0] in_memdep_phi_pop1789_pop52220_0,
    input wire [0:0] in_memdep_phi_pop1789_pop52220_1,
    input wire [0:0] in_notcmp68124_pop61233_0,
    input wire [0:0] in_notcmp68124_pop61233_1,
    input wire [0:0] in_notcmp73112_pop57230_0,
    input wire [0:0] in_notcmp73112_pop57230_1,
    input wire [0:0] in_notcmp73174_0,
    input wire [0:0] in_notcmp73174_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_3mm7_0,
    input wire [31:0] in_unnamed_kernel_3mm7_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx444236,
    output wire [0:0] out_forked37,
    output wire [0:0] out_forked81135,
    output wire [0:0] out_forked8183_pop24179,
    output wire [0:0] out_forked8185_pop51218,
    output wire [31:0] out_i_060_pop23109_pop56228,
    output wire [31:0] out_i_060_pop23169,
    output wire [63:0] out_idxprom11121_pop59215,
    output wire [63:0] out_idxprom119_pop58213,
    output wire [0:0] out_memdep_235,
    output wire [0:0] out_memdep_phi2_pop18149,
    output wire [0:0] out_memdep_phi2_pop1891_pop26189,
    output wire [0:0] out_memdep_phi2_pop1893_pop53222,
    output wire [0:0] out_memdep_phi3_pop19156,
    output wire [0:0] out_memdep_phi3_pop1995_pop27194,
    output wire [0:0] out_memdep_phi3_pop1997_pop54224,
    output wire [0:0] out_memdep_phi5_pop20101_pop55226,
    output wire [0:0] out_memdep_phi5_pop20163,
    output wire [0:0] out_memdep_phi5_pop2099_pop28199,
    output wire [0:0] out_memdep_phi_pop17142,
    output wire [0:0] out_memdep_phi_pop1787_pop25184,
    output wire [0:0] out_memdep_phi_pop1789_pop52220,
    output wire [0:0] out_notcmp68124_pop61233,
    output wire [0:0] out_notcmp73112_pop57230,
    output wire [0:0] out_notcmp73174,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_3mm7,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx444236_mux_s;
    reg [63:0] arrayidx444236_mux_q;
    wire [0:0] forked37_mux_s;
    reg [0:0] forked37_mux_q;
    wire [0:0] forked81135_mux_s;
    reg [0:0] forked81135_mux_q;
    wire [0:0] forked8183_pop24179_mux_s;
    reg [0:0] forked8183_pop24179_mux_q;
    wire [0:0] forked8185_pop51218_mux_s;
    reg [0:0] forked8185_pop51218_mux_q;
    wire [0:0] i_060_pop23109_pop56228_mux_s;
    reg [31:0] i_060_pop23109_pop56228_mux_q;
    wire [0:0] i_060_pop23169_mux_s;
    reg [31:0] i_060_pop23169_mux_q;
    wire [0:0] idxprom11121_pop59215_mux_s;
    reg [63:0] idxprom11121_pop59215_mux_q;
    wire [0:0] idxprom119_pop58213_mux_s;
    reg [63:0] idxprom119_pop58213_mux_q;
    wire [0:0] memdep_235_mux_s;
    reg [0:0] memdep_235_mux_q;
    wire [0:0] memdep_phi2_pop18149_mux_s;
    reg [0:0] memdep_phi2_pop18149_mux_q;
    wire [0:0] memdep_phi2_pop1891_pop26189_mux_s;
    reg [0:0] memdep_phi2_pop1891_pop26189_mux_q;
    wire [0:0] memdep_phi2_pop1893_pop53222_mux_s;
    reg [0:0] memdep_phi2_pop1893_pop53222_mux_q;
    wire [0:0] memdep_phi3_pop19156_mux_s;
    reg [0:0] memdep_phi3_pop19156_mux_q;
    wire [0:0] memdep_phi3_pop1995_pop27194_mux_s;
    reg [0:0] memdep_phi3_pop1995_pop27194_mux_q;
    wire [0:0] memdep_phi3_pop1997_pop54224_mux_s;
    reg [0:0] memdep_phi3_pop1997_pop54224_mux_q;
    wire [0:0] memdep_phi5_pop20101_pop55226_mux_s;
    reg [0:0] memdep_phi5_pop20101_pop55226_mux_q;
    wire [0:0] memdep_phi5_pop20163_mux_s;
    reg [0:0] memdep_phi5_pop20163_mux_q;
    wire [0:0] memdep_phi5_pop2099_pop28199_mux_s;
    reg [0:0] memdep_phi5_pop2099_pop28199_mux_q;
    wire [0:0] memdep_phi_pop17142_mux_s;
    reg [0:0] memdep_phi_pop17142_mux_q;
    wire [0:0] memdep_phi_pop1787_pop25184_mux_s;
    reg [0:0] memdep_phi_pop1787_pop25184_mux_q;
    wire [0:0] memdep_phi_pop1789_pop52220_mux_s;
    reg [0:0] memdep_phi_pop1789_pop52220_mux_q;
    wire [0:0] notcmp68124_pop61233_mux_s;
    reg [0:0] notcmp68124_pop61233_mux_q;
    wire [0:0] notcmp73112_pop57230_mux_s;
    reg [0:0] notcmp73112_pop57230_mux_q;
    wire [0:0] notcmp73174_mux_s;
    reg [0:0] notcmp73174_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_3mm7_mux_s;
    reg [31:0] unnamed_kernel_3mm7_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx444236_mux(MUX,2)
    assign arrayidx444236_mux_s = in_valid_in_0;
    always @(arrayidx444236_mux_s or in_arrayidx444236_1 or in_arrayidx444236_0)
    begin
        unique case (arrayidx444236_mux_s)
            1'b0 : arrayidx444236_mux_q = in_arrayidx444236_1;
            1'b1 : arrayidx444236_mux_q = in_arrayidx444236_0;
            default : arrayidx444236_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx444236(GPOUT,82)
    assign out_arrayidx444236 = arrayidx444236_mux_q;

    // forked37_mux(MUX,3)
    assign forked37_mux_s = in_valid_in_0;
    always @(forked37_mux_s or in_forked37_1 or in_forked37_0)
    begin
        unique case (forked37_mux_s)
            1'b0 : forked37_mux_q = in_forked37_1;
            1'b1 : forked37_mux_q = in_forked37_0;
            default : forked37_mux_q = 1'b0;
        endcase
    end

    // out_forked37(GPOUT,83)
    assign out_forked37 = forked37_mux_q;

    // forked81135_mux(MUX,4)
    assign forked81135_mux_s = in_valid_in_0;
    always @(forked81135_mux_s or in_forked81135_1 or in_forked81135_0)
    begin
        unique case (forked81135_mux_s)
            1'b0 : forked81135_mux_q = in_forked81135_1;
            1'b1 : forked81135_mux_q = in_forked81135_0;
            default : forked81135_mux_q = 1'b0;
        endcase
    end

    // out_forked81135(GPOUT,84)
    assign out_forked81135 = forked81135_mux_q;

    // forked8183_pop24179_mux(MUX,5)
    assign forked8183_pop24179_mux_s = in_valid_in_0;
    always @(forked8183_pop24179_mux_s or in_forked8183_pop24179_1 or in_forked8183_pop24179_0)
    begin
        unique case (forked8183_pop24179_mux_s)
            1'b0 : forked8183_pop24179_mux_q = in_forked8183_pop24179_1;
            1'b1 : forked8183_pop24179_mux_q = in_forked8183_pop24179_0;
            default : forked8183_pop24179_mux_q = 1'b0;
        endcase
    end

    // out_forked8183_pop24179(GPOUT,85)
    assign out_forked8183_pop24179 = forked8183_pop24179_mux_q;

    // forked8185_pop51218_mux(MUX,6)
    assign forked8185_pop51218_mux_s = in_valid_in_0;
    always @(forked8185_pop51218_mux_s or in_forked8185_pop51218_1 or in_forked8185_pop51218_0)
    begin
        unique case (forked8185_pop51218_mux_s)
            1'b0 : forked8185_pop51218_mux_q = in_forked8185_pop51218_1;
            1'b1 : forked8185_pop51218_mux_q = in_forked8185_pop51218_0;
            default : forked8185_pop51218_mux_q = 1'b0;
        endcase
    end

    // out_forked8185_pop51218(GPOUT,86)
    assign out_forked8185_pop51218 = forked8185_pop51218_mux_q;

    // i_060_pop23109_pop56228_mux(MUX,7)
    assign i_060_pop23109_pop56228_mux_s = in_valid_in_0;
    always @(i_060_pop23109_pop56228_mux_s or in_i_060_pop23109_pop56228_1 or in_i_060_pop23109_pop56228_0)
    begin
        unique case (i_060_pop23109_pop56228_mux_s)
            1'b0 : i_060_pop23109_pop56228_mux_q = in_i_060_pop23109_pop56228_1;
            1'b1 : i_060_pop23109_pop56228_mux_q = in_i_060_pop23109_pop56228_0;
            default : i_060_pop23109_pop56228_mux_q = 32'b0;
        endcase
    end

    // out_i_060_pop23109_pop56228(GPOUT,87)
    assign out_i_060_pop23109_pop56228 = i_060_pop23109_pop56228_mux_q;

    // i_060_pop23169_mux(MUX,8)
    assign i_060_pop23169_mux_s = in_valid_in_0;
    always @(i_060_pop23169_mux_s or in_i_060_pop23169_1 or in_i_060_pop23169_0)
    begin
        unique case (i_060_pop23169_mux_s)
            1'b0 : i_060_pop23169_mux_q = in_i_060_pop23169_1;
            1'b1 : i_060_pop23169_mux_q = in_i_060_pop23169_0;
            default : i_060_pop23169_mux_q = 32'b0;
        endcase
    end

    // out_i_060_pop23169(GPOUT,88)
    assign out_i_060_pop23169 = i_060_pop23169_mux_q;

    // idxprom11121_pop59215_mux(MUX,9)
    assign idxprom11121_pop59215_mux_s = in_valid_in_0;
    always @(idxprom11121_pop59215_mux_s or in_idxprom11121_pop59215_1 or in_idxprom11121_pop59215_0)
    begin
        unique case (idxprom11121_pop59215_mux_s)
            1'b0 : idxprom11121_pop59215_mux_q = in_idxprom11121_pop59215_1;
            1'b1 : idxprom11121_pop59215_mux_q = in_idxprom11121_pop59215_0;
            default : idxprom11121_pop59215_mux_q = 64'b0;
        endcase
    end

    // out_idxprom11121_pop59215(GPOUT,89)
    assign out_idxprom11121_pop59215 = idxprom11121_pop59215_mux_q;

    // idxprom119_pop58213_mux(MUX,10)
    assign idxprom119_pop58213_mux_s = in_valid_in_0;
    always @(idxprom119_pop58213_mux_s or in_idxprom119_pop58213_1 or in_idxprom119_pop58213_0)
    begin
        unique case (idxprom119_pop58213_mux_s)
            1'b0 : idxprom119_pop58213_mux_q = in_idxprom119_pop58213_1;
            1'b1 : idxprom119_pop58213_mux_q = in_idxprom119_pop58213_0;
            default : idxprom119_pop58213_mux_q = 64'b0;
        endcase
    end

    // out_idxprom119_pop58213(GPOUT,90)
    assign out_idxprom119_pop58213 = idxprom119_pop58213_mux_q;

    // memdep_235_mux(MUX,66)
    assign memdep_235_mux_s = in_valid_in_0;
    always @(memdep_235_mux_s or in_memdep_235_1 or in_memdep_235_0)
    begin
        unique case (memdep_235_mux_s)
            1'b0 : memdep_235_mux_q = in_memdep_235_1;
            1'b1 : memdep_235_mux_q = in_memdep_235_0;
            default : memdep_235_mux_q = 1'b0;
        endcase
    end

    // out_memdep_235(GPOUT,91)
    assign out_memdep_235 = memdep_235_mux_q;

    // memdep_phi2_pop18149_mux(MUX,67)
    assign memdep_phi2_pop18149_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop18149_mux_s or in_memdep_phi2_pop18149_1 or in_memdep_phi2_pop18149_0)
    begin
        unique case (memdep_phi2_pop18149_mux_s)
            1'b0 : memdep_phi2_pop18149_mux_q = in_memdep_phi2_pop18149_1;
            1'b1 : memdep_phi2_pop18149_mux_q = in_memdep_phi2_pop18149_0;
            default : memdep_phi2_pop18149_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop18149(GPOUT,92)
    assign out_memdep_phi2_pop18149 = memdep_phi2_pop18149_mux_q;

    // memdep_phi2_pop1891_pop26189_mux(MUX,68)
    assign memdep_phi2_pop1891_pop26189_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1891_pop26189_mux_s or in_memdep_phi2_pop1891_pop26189_1 or in_memdep_phi2_pop1891_pop26189_0)
    begin
        unique case (memdep_phi2_pop1891_pop26189_mux_s)
            1'b0 : memdep_phi2_pop1891_pop26189_mux_q = in_memdep_phi2_pop1891_pop26189_1;
            1'b1 : memdep_phi2_pop1891_pop26189_mux_q = in_memdep_phi2_pop1891_pop26189_0;
            default : memdep_phi2_pop1891_pop26189_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1891_pop26189(GPOUT,93)
    assign out_memdep_phi2_pop1891_pop26189 = memdep_phi2_pop1891_pop26189_mux_q;

    // memdep_phi2_pop1893_pop53222_mux(MUX,69)
    assign memdep_phi2_pop1893_pop53222_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1893_pop53222_mux_s or in_memdep_phi2_pop1893_pop53222_1 or in_memdep_phi2_pop1893_pop53222_0)
    begin
        unique case (memdep_phi2_pop1893_pop53222_mux_s)
            1'b0 : memdep_phi2_pop1893_pop53222_mux_q = in_memdep_phi2_pop1893_pop53222_1;
            1'b1 : memdep_phi2_pop1893_pop53222_mux_q = in_memdep_phi2_pop1893_pop53222_0;
            default : memdep_phi2_pop1893_pop53222_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1893_pop53222(GPOUT,94)
    assign out_memdep_phi2_pop1893_pop53222 = memdep_phi2_pop1893_pop53222_mux_q;

    // memdep_phi3_pop19156_mux(MUX,70)
    assign memdep_phi3_pop19156_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop19156_mux_s or in_memdep_phi3_pop19156_1 or in_memdep_phi3_pop19156_0)
    begin
        unique case (memdep_phi3_pop19156_mux_s)
            1'b0 : memdep_phi3_pop19156_mux_q = in_memdep_phi3_pop19156_1;
            1'b1 : memdep_phi3_pop19156_mux_q = in_memdep_phi3_pop19156_0;
            default : memdep_phi3_pop19156_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop19156(GPOUT,95)
    assign out_memdep_phi3_pop19156 = memdep_phi3_pop19156_mux_q;

    // memdep_phi3_pop1995_pop27194_mux(MUX,71)
    assign memdep_phi3_pop1995_pop27194_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1995_pop27194_mux_s or in_memdep_phi3_pop1995_pop27194_1 or in_memdep_phi3_pop1995_pop27194_0)
    begin
        unique case (memdep_phi3_pop1995_pop27194_mux_s)
            1'b0 : memdep_phi3_pop1995_pop27194_mux_q = in_memdep_phi3_pop1995_pop27194_1;
            1'b1 : memdep_phi3_pop1995_pop27194_mux_q = in_memdep_phi3_pop1995_pop27194_0;
            default : memdep_phi3_pop1995_pop27194_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1995_pop27194(GPOUT,96)
    assign out_memdep_phi3_pop1995_pop27194 = memdep_phi3_pop1995_pop27194_mux_q;

    // memdep_phi3_pop1997_pop54224_mux(MUX,72)
    assign memdep_phi3_pop1997_pop54224_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1997_pop54224_mux_s or in_memdep_phi3_pop1997_pop54224_1 or in_memdep_phi3_pop1997_pop54224_0)
    begin
        unique case (memdep_phi3_pop1997_pop54224_mux_s)
            1'b0 : memdep_phi3_pop1997_pop54224_mux_q = in_memdep_phi3_pop1997_pop54224_1;
            1'b1 : memdep_phi3_pop1997_pop54224_mux_q = in_memdep_phi3_pop1997_pop54224_0;
            default : memdep_phi3_pop1997_pop54224_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1997_pop54224(GPOUT,97)
    assign out_memdep_phi3_pop1997_pop54224 = memdep_phi3_pop1997_pop54224_mux_q;

    // memdep_phi5_pop20101_pop55226_mux(MUX,73)
    assign memdep_phi5_pop20101_pop55226_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop20101_pop55226_mux_s or in_memdep_phi5_pop20101_pop55226_1 or in_memdep_phi5_pop20101_pop55226_0)
    begin
        unique case (memdep_phi5_pop20101_pop55226_mux_s)
            1'b0 : memdep_phi5_pop20101_pop55226_mux_q = in_memdep_phi5_pop20101_pop55226_1;
            1'b1 : memdep_phi5_pop20101_pop55226_mux_q = in_memdep_phi5_pop20101_pop55226_0;
            default : memdep_phi5_pop20101_pop55226_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop20101_pop55226(GPOUT,98)
    assign out_memdep_phi5_pop20101_pop55226 = memdep_phi5_pop20101_pop55226_mux_q;

    // memdep_phi5_pop20163_mux(MUX,74)
    assign memdep_phi5_pop20163_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop20163_mux_s or in_memdep_phi5_pop20163_1 or in_memdep_phi5_pop20163_0)
    begin
        unique case (memdep_phi5_pop20163_mux_s)
            1'b0 : memdep_phi5_pop20163_mux_q = in_memdep_phi5_pop20163_1;
            1'b1 : memdep_phi5_pop20163_mux_q = in_memdep_phi5_pop20163_0;
            default : memdep_phi5_pop20163_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop20163(GPOUT,99)
    assign out_memdep_phi5_pop20163 = memdep_phi5_pop20163_mux_q;

    // memdep_phi5_pop2099_pop28199_mux(MUX,75)
    assign memdep_phi5_pop2099_pop28199_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop2099_pop28199_mux_s or in_memdep_phi5_pop2099_pop28199_1 or in_memdep_phi5_pop2099_pop28199_0)
    begin
        unique case (memdep_phi5_pop2099_pop28199_mux_s)
            1'b0 : memdep_phi5_pop2099_pop28199_mux_q = in_memdep_phi5_pop2099_pop28199_1;
            1'b1 : memdep_phi5_pop2099_pop28199_mux_q = in_memdep_phi5_pop2099_pop28199_0;
            default : memdep_phi5_pop2099_pop28199_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop2099_pop28199(GPOUT,100)
    assign out_memdep_phi5_pop2099_pop28199 = memdep_phi5_pop2099_pop28199_mux_q;

    // memdep_phi_pop17142_mux(MUX,76)
    assign memdep_phi_pop17142_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17142_mux_s or in_memdep_phi_pop17142_1 or in_memdep_phi_pop17142_0)
    begin
        unique case (memdep_phi_pop17142_mux_s)
            1'b0 : memdep_phi_pop17142_mux_q = in_memdep_phi_pop17142_1;
            1'b1 : memdep_phi_pop17142_mux_q = in_memdep_phi_pop17142_0;
            default : memdep_phi_pop17142_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17142(GPOUT,101)
    assign out_memdep_phi_pop17142 = memdep_phi_pop17142_mux_q;

    // memdep_phi_pop1787_pop25184_mux(MUX,77)
    assign memdep_phi_pop1787_pop25184_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1787_pop25184_mux_s or in_memdep_phi_pop1787_pop25184_1 or in_memdep_phi_pop1787_pop25184_0)
    begin
        unique case (memdep_phi_pop1787_pop25184_mux_s)
            1'b0 : memdep_phi_pop1787_pop25184_mux_q = in_memdep_phi_pop1787_pop25184_1;
            1'b1 : memdep_phi_pop1787_pop25184_mux_q = in_memdep_phi_pop1787_pop25184_0;
            default : memdep_phi_pop1787_pop25184_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1787_pop25184(GPOUT,102)
    assign out_memdep_phi_pop1787_pop25184 = memdep_phi_pop1787_pop25184_mux_q;

    // memdep_phi_pop1789_pop52220_mux(MUX,78)
    assign memdep_phi_pop1789_pop52220_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1789_pop52220_mux_s or in_memdep_phi_pop1789_pop52220_1 or in_memdep_phi_pop1789_pop52220_0)
    begin
        unique case (memdep_phi_pop1789_pop52220_mux_s)
            1'b0 : memdep_phi_pop1789_pop52220_mux_q = in_memdep_phi_pop1789_pop52220_1;
            1'b1 : memdep_phi_pop1789_pop52220_mux_q = in_memdep_phi_pop1789_pop52220_0;
            default : memdep_phi_pop1789_pop52220_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1789_pop52220(GPOUT,103)
    assign out_memdep_phi_pop1789_pop52220 = memdep_phi_pop1789_pop52220_mux_q;

    // notcmp68124_pop61233_mux(MUX,79)
    assign notcmp68124_pop61233_mux_s = in_valid_in_0;
    always @(notcmp68124_pop61233_mux_s or in_notcmp68124_pop61233_1 or in_notcmp68124_pop61233_0)
    begin
        unique case (notcmp68124_pop61233_mux_s)
            1'b0 : notcmp68124_pop61233_mux_q = in_notcmp68124_pop61233_1;
            1'b1 : notcmp68124_pop61233_mux_q = in_notcmp68124_pop61233_0;
            default : notcmp68124_pop61233_mux_q = 1'b0;
        endcase
    end

    // out_notcmp68124_pop61233(GPOUT,104)
    assign out_notcmp68124_pop61233 = notcmp68124_pop61233_mux_q;

    // notcmp73112_pop57230_mux(MUX,80)
    assign notcmp73112_pop57230_mux_s = in_valid_in_0;
    always @(notcmp73112_pop57230_mux_s or in_notcmp73112_pop57230_1 or in_notcmp73112_pop57230_0)
    begin
        unique case (notcmp73112_pop57230_mux_s)
            1'b0 : notcmp73112_pop57230_mux_q = in_notcmp73112_pop57230_1;
            1'b1 : notcmp73112_pop57230_mux_q = in_notcmp73112_pop57230_0;
            default : notcmp73112_pop57230_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73112_pop57230(GPOUT,105)
    assign out_notcmp73112_pop57230 = notcmp73112_pop57230_mux_q;

    // notcmp73174_mux(MUX,81)
    assign notcmp73174_mux_s = in_valid_in_0;
    always @(notcmp73174_mux_s or in_notcmp73174_1 or in_notcmp73174_0)
    begin
        unique case (notcmp73174_mux_s)
            1'b0 : notcmp73174_mux_q = in_notcmp73174_1;
            1'b1 : notcmp73174_mux_q = in_notcmp73174_0;
            default : notcmp73174_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73174(GPOUT,106)
    assign out_notcmp73174 = notcmp73174_mux_q;

    // valid_or(LOGICAL,114)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,111)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,107)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,112)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,108)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kernel_3mm7_mux(MUX,113)
    assign unnamed_kernel_3mm7_mux_s = in_valid_in_0;
    always @(unnamed_kernel_3mm7_mux_s or in_unnamed_kernel_3mm7_1 or in_unnamed_kernel_3mm7_0)
    begin
        unique case (unnamed_kernel_3mm7_mux_s)
            1'b0 : unnamed_kernel_3mm7_mux_q = in_unnamed_kernel_3mm7_1;
            1'b1 : unnamed_kernel_3mm7_mux_q = in_unnamed_kernel_3mm7_0;
            default : unnamed_kernel_3mm7_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_3mm7(GPOUT,109)
    assign out_unnamed_kernel_3mm7 = unnamed_kernel_3mm7_mux_q;

    // out_valid_out(GPOUT,110)
    assign out_valid_out = valid_or_q;

endmodule
