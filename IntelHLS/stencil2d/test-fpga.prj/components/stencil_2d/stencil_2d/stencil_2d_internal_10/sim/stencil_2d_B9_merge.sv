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

// SystemVerilog created from stencil_2d_B9_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B9_merge (
    input wire [31:0] in_c_025_pop16104_0,
    input wire [31:0] in_c_025_pop16104_1,
    input wire [31:0] in_c_025_pop1660_pop32126_0,
    input wire [31:0] in_c_025_pop1660_pop32126_1,
    input wire [31:0] in_dot_prod_add127_0,
    input wire [31:0] in_dot_prod_add127_1,
    input wire [0:0] in_exitcond1147_pop20116_0,
    input wire [0:0] in_exitcond1147_pop20116_1,
    input wire [0:0] in_exitcond1148_pop27131_0,
    input wire [0:0] in_exitcond1148_pop27131_1,
    input wire [0:0] in_exitcond1184_0,
    input wire [0:0] in_exitcond1184_1,
    input wire [0:0] in_exitcond5128_0,
    input wire [0:0] in_exitcond5128_1,
    input wire [0:0] in_exitcond856_pop30134_0,
    input wire [0:0] in_exitcond856_pop30134_1,
    input wire [0:0] in_exitcond898_0,
    input wire [0:0] in_exitcond898_1,
    input wire [0:0] in_forked37123_0,
    input wire [0:0] in_forked37123_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_memdep_phi1_pop1453_pop22122_0,
    input wire [0:0] in_memdep_phi1_pop1453_pop22122_1,
    input wire [0:0] in_memdep_phi1_pop1454_pop29133_0,
    input wire [0:0] in_memdep_phi1_pop1454_pop29133_1,
    input wire [0:0] in_memdep_phi1_pop1494_0,
    input wire [0:0] in_memdep_phi1_pop1494_1,
    input wire [0:0] in_memdep_phi_pop17107_0,
    input wire [0:0] in_memdep_phi_pop17107_1,
    input wire [0:0] in_memdep_phi_pop1762_pop33136_0,
    input wire [0:0] in_memdep_phi_pop1762_pop33136_1,
    input wire [31:0] in_mul13_add13124_0,
    input wire [31:0] in_mul13_add13124_1,
    input wire [31:0] in_mul2544_pop19113_0,
    input wire [31:0] in_mul2544_pop19113_1,
    input wire [31:0] in_mul2545_pop26130_0,
    input wire [31:0] in_mul2545_pop26130_1,
    input wire [31:0] in_mul2579_0,
    input wire [31:0] in_mul2579_1,
    input wire [0:0] in_notcmp19129_0,
    input wire [0:0] in_notcmp19129_1,
    input wire [0:0] in_notcmp24101_0,
    input wire [0:0] in_notcmp24101_1,
    input wire [0:0] in_notcmp2458_pop31135_0,
    input wire [0:0] in_notcmp2458_pop31135_1,
    input wire [0:0] in_notcmp2950_pop21119_0,
    input wire [0:0] in_notcmp2950_pop21119_1,
    input wire [0:0] in_notcmp2951_pop28132_0,
    input wire [0:0] in_notcmp2951_pop28132_1,
    input wire [0:0] in_notcmp2989_0,
    input wire [0:0] in_notcmp2989_1,
    input wire [31:0] in_r_026_pop1341_pop18110_0,
    input wire [31:0] in_r_026_pop1341_pop18110_1,
    input wire [31:0] in_r_026_pop1342_pop25125_0,
    input wire [31:0] in_r_026_pop1342_pop25125_1,
    input wire [31:0] in_r_026_pop1374_0,
    input wire [31:0] in_r_026_pop1374_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_025_pop16104,
    output wire [31:0] out_c_025_pop1660_pop32126,
    output wire [31:0] out_dot_prod_add127,
    output wire [0:0] out_exitcond1147_pop20116,
    output wire [0:0] out_exitcond1148_pop27131,
    output wire [0:0] out_exitcond1184,
    output wire [0:0] out_exitcond5128,
    output wire [0:0] out_exitcond856_pop30134,
    output wire [0:0] out_exitcond898,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked37123,
    output wire [0:0] out_memdep_phi1_pop1453_pop22122,
    output wire [0:0] out_memdep_phi1_pop1454_pop29133,
    output wire [0:0] out_memdep_phi1_pop1494,
    output wire [0:0] out_memdep_phi_pop17107,
    output wire [0:0] out_memdep_phi_pop1762_pop33136,
    output wire [31:0] out_mul13_add13124,
    output wire [31:0] out_mul2544_pop19113,
    output wire [31:0] out_mul2545_pop26130,
    output wire [31:0] out_mul2579,
    output wire [0:0] out_notcmp19129,
    output wire [0:0] out_notcmp24101,
    output wire [0:0] out_notcmp2458_pop31135,
    output wire [0:0] out_notcmp2950_pop21119,
    output wire [0:0] out_notcmp2951_pop28132,
    output wire [0:0] out_notcmp2989,
    output wire [31:0] out_r_026_pop1341_pop18110,
    output wire [31:0] out_r_026_pop1342_pop25125,
    output wire [31:0] out_r_026_pop1374,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_025_pop16104_mux_s;
    reg [31:0] c_025_pop16104_mux_q;
    wire [0:0] c_025_pop1660_pop32126_mux_s;
    reg [31:0] c_025_pop1660_pop32126_mux_q;
    wire [0:0] dot_prod_add127_mux_s;
    reg [31:0] dot_prod_add127_mux_q;
    wire [0:0] exitcond1147_pop20116_mux_s;
    reg [0:0] exitcond1147_pop20116_mux_q;
    wire [0:0] exitcond1148_pop27131_mux_s;
    reg [0:0] exitcond1148_pop27131_mux_q;
    wire [0:0] exitcond1184_mux_s;
    reg [0:0] exitcond1184_mux_q;
    wire [0:0] exitcond5128_mux_s;
    reg [0:0] exitcond5128_mux_q;
    wire [0:0] exitcond856_pop30134_mux_s;
    reg [0:0] exitcond856_pop30134_mux_q;
    wire [0:0] exitcond898_mux_s;
    reg [0:0] exitcond898_mux_q;
    wire [0:0] forked37123_mux_s;
    reg [0:0] forked37123_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] memdep_phi1_pop1453_pop22122_mux_s;
    reg [0:0] memdep_phi1_pop1453_pop22122_mux_q;
    wire [0:0] memdep_phi1_pop1454_pop29133_mux_s;
    reg [0:0] memdep_phi1_pop1454_pop29133_mux_q;
    wire [0:0] memdep_phi1_pop1494_mux_s;
    reg [0:0] memdep_phi1_pop1494_mux_q;
    wire [0:0] memdep_phi_pop17107_mux_s;
    reg [0:0] memdep_phi_pop17107_mux_q;
    wire [0:0] memdep_phi_pop1762_pop33136_mux_s;
    reg [0:0] memdep_phi_pop1762_pop33136_mux_q;
    wire [0:0] mul13_add13124_mux_s;
    reg [31:0] mul13_add13124_mux_q;
    wire [0:0] mul2544_pop19113_mux_s;
    reg [31:0] mul2544_pop19113_mux_q;
    wire [0:0] mul2545_pop26130_mux_s;
    reg [31:0] mul2545_pop26130_mux_q;
    wire [0:0] mul2579_mux_s;
    reg [31:0] mul2579_mux_q;
    wire [0:0] notcmp19129_mux_s;
    reg [0:0] notcmp19129_mux_q;
    wire [0:0] notcmp24101_mux_s;
    reg [0:0] notcmp24101_mux_q;
    wire [0:0] notcmp2458_pop31135_mux_s;
    reg [0:0] notcmp2458_pop31135_mux_q;
    wire [0:0] notcmp2950_pop21119_mux_s;
    reg [0:0] notcmp2950_pop21119_mux_q;
    wire [0:0] notcmp2951_pop28132_mux_s;
    reg [0:0] notcmp2951_pop28132_mux_q;
    wire [0:0] notcmp2989_mux_s;
    reg [0:0] notcmp2989_mux_q;
    wire [0:0] r_026_pop1341_pop18110_mux_s;
    reg [31:0] r_026_pop1341_pop18110_mux_q;
    wire [0:0] r_026_pop1342_pop25125_mux_s;
    reg [31:0] r_026_pop1342_pop25125_mux_q;
    wire [0:0] r_026_pop1374_mux_s;
    reg [31:0] r_026_pop1374_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_025_pop16104_mux(MUX,2)
    assign c_025_pop16104_mux_s = in_valid_in_0;
    always @(c_025_pop16104_mux_s or in_c_025_pop16104_1 or in_c_025_pop16104_0)
    begin
        unique case (c_025_pop16104_mux_s)
            1'b0 : c_025_pop16104_mux_q = in_c_025_pop16104_1;
            1'b1 : c_025_pop16104_mux_q = in_c_025_pop16104_0;
            default : c_025_pop16104_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop16104(GPOUT,89)
    assign out_c_025_pop16104 = c_025_pop16104_mux_q;

    // c_025_pop1660_pop32126_mux(MUX,3)
    assign c_025_pop1660_pop32126_mux_s = in_valid_in_0;
    always @(c_025_pop1660_pop32126_mux_s or in_c_025_pop1660_pop32126_1 or in_c_025_pop1660_pop32126_0)
    begin
        unique case (c_025_pop1660_pop32126_mux_s)
            1'b0 : c_025_pop1660_pop32126_mux_q = in_c_025_pop1660_pop32126_1;
            1'b1 : c_025_pop1660_pop32126_mux_q = in_c_025_pop1660_pop32126_0;
            default : c_025_pop1660_pop32126_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop1660_pop32126(GPOUT,90)
    assign out_c_025_pop1660_pop32126 = c_025_pop1660_pop32126_mux_q;

    // dot_prod_add127_mux(MUX,4)
    assign dot_prod_add127_mux_s = in_valid_in_0;
    always @(dot_prod_add127_mux_s or in_dot_prod_add127_1 or in_dot_prod_add127_0)
    begin
        unique case (dot_prod_add127_mux_s)
            1'b0 : dot_prod_add127_mux_q = in_dot_prod_add127_1;
            1'b1 : dot_prod_add127_mux_q = in_dot_prod_add127_0;
            default : dot_prod_add127_mux_q = 32'b0;
        endcase
    end

    // out_dot_prod_add127(GPOUT,91)
    assign out_dot_prod_add127 = dot_prod_add127_mux_q;

    // exitcond1147_pop20116_mux(MUX,5)
    assign exitcond1147_pop20116_mux_s = in_valid_in_0;
    always @(exitcond1147_pop20116_mux_s or in_exitcond1147_pop20116_1 or in_exitcond1147_pop20116_0)
    begin
        unique case (exitcond1147_pop20116_mux_s)
            1'b0 : exitcond1147_pop20116_mux_q = in_exitcond1147_pop20116_1;
            1'b1 : exitcond1147_pop20116_mux_q = in_exitcond1147_pop20116_0;
            default : exitcond1147_pop20116_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1147_pop20116(GPOUT,92)
    assign out_exitcond1147_pop20116 = exitcond1147_pop20116_mux_q;

    // exitcond1148_pop27131_mux(MUX,6)
    assign exitcond1148_pop27131_mux_s = in_valid_in_0;
    always @(exitcond1148_pop27131_mux_s or in_exitcond1148_pop27131_1 or in_exitcond1148_pop27131_0)
    begin
        unique case (exitcond1148_pop27131_mux_s)
            1'b0 : exitcond1148_pop27131_mux_q = in_exitcond1148_pop27131_1;
            1'b1 : exitcond1148_pop27131_mux_q = in_exitcond1148_pop27131_0;
            default : exitcond1148_pop27131_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1148_pop27131(GPOUT,93)
    assign out_exitcond1148_pop27131 = exitcond1148_pop27131_mux_q;

    // exitcond1184_mux(MUX,7)
    assign exitcond1184_mux_s = in_valid_in_0;
    always @(exitcond1184_mux_s or in_exitcond1184_1 or in_exitcond1184_0)
    begin
        unique case (exitcond1184_mux_s)
            1'b0 : exitcond1184_mux_q = in_exitcond1184_1;
            1'b1 : exitcond1184_mux_q = in_exitcond1184_0;
            default : exitcond1184_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1184(GPOUT,94)
    assign out_exitcond1184 = exitcond1184_mux_q;

    // exitcond5128_mux(MUX,8)
    assign exitcond5128_mux_s = in_valid_in_0;
    always @(exitcond5128_mux_s or in_exitcond5128_1 or in_exitcond5128_0)
    begin
        unique case (exitcond5128_mux_s)
            1'b0 : exitcond5128_mux_q = in_exitcond5128_1;
            1'b1 : exitcond5128_mux_q = in_exitcond5128_0;
            default : exitcond5128_mux_q = 1'b0;
        endcase
    end

    // out_exitcond5128(GPOUT,95)
    assign out_exitcond5128 = exitcond5128_mux_q;

    // exitcond856_pop30134_mux(MUX,9)
    assign exitcond856_pop30134_mux_s = in_valid_in_0;
    always @(exitcond856_pop30134_mux_s or in_exitcond856_pop30134_1 or in_exitcond856_pop30134_0)
    begin
        unique case (exitcond856_pop30134_mux_s)
            1'b0 : exitcond856_pop30134_mux_q = in_exitcond856_pop30134_1;
            1'b1 : exitcond856_pop30134_mux_q = in_exitcond856_pop30134_0;
            default : exitcond856_pop30134_mux_q = 1'b0;
        endcase
    end

    // out_exitcond856_pop30134(GPOUT,96)
    assign out_exitcond856_pop30134 = exitcond856_pop30134_mux_q;

    // exitcond898_mux(MUX,10)
    assign exitcond898_mux_s = in_valid_in_0;
    always @(exitcond898_mux_s or in_exitcond898_1 or in_exitcond898_0)
    begin
        unique case (exitcond898_mux_s)
            1'b0 : exitcond898_mux_q = in_exitcond898_1;
            1'b1 : exitcond898_mux_q = in_exitcond898_0;
            default : exitcond898_mux_q = 1'b0;
        endcase
    end

    // out_exitcond898(GPOUT,97)
    assign out_exitcond898 = exitcond898_mux_q;

    // forked_mux(MUX,12)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,98)
    assign out_forked = forked_mux_q;

    // forked37123_mux(MUX,11)
    assign forked37123_mux_s = in_valid_in_0;
    always @(forked37123_mux_s or in_forked37123_1 or in_forked37123_0)
    begin
        unique case (forked37123_mux_s)
            1'b0 : forked37123_mux_q = in_forked37123_1;
            1'b1 : forked37123_mux_q = in_forked37123_0;
            default : forked37123_mux_q = 1'b0;
        endcase
    end

    // out_forked37123(GPOUT,99)
    assign out_forked37123 = forked37123_mux_q;

    // memdep_phi1_pop1453_pop22122_mux(MUX,74)
    assign memdep_phi1_pop1453_pop22122_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1453_pop22122_mux_s or in_memdep_phi1_pop1453_pop22122_1 or in_memdep_phi1_pop1453_pop22122_0)
    begin
        unique case (memdep_phi1_pop1453_pop22122_mux_s)
            1'b0 : memdep_phi1_pop1453_pop22122_mux_q = in_memdep_phi1_pop1453_pop22122_1;
            1'b1 : memdep_phi1_pop1453_pop22122_mux_q = in_memdep_phi1_pop1453_pop22122_0;
            default : memdep_phi1_pop1453_pop22122_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1453_pop22122(GPOUT,100)
    assign out_memdep_phi1_pop1453_pop22122 = memdep_phi1_pop1453_pop22122_mux_q;

    // memdep_phi1_pop1454_pop29133_mux(MUX,75)
    assign memdep_phi1_pop1454_pop29133_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1454_pop29133_mux_s or in_memdep_phi1_pop1454_pop29133_1 or in_memdep_phi1_pop1454_pop29133_0)
    begin
        unique case (memdep_phi1_pop1454_pop29133_mux_s)
            1'b0 : memdep_phi1_pop1454_pop29133_mux_q = in_memdep_phi1_pop1454_pop29133_1;
            1'b1 : memdep_phi1_pop1454_pop29133_mux_q = in_memdep_phi1_pop1454_pop29133_0;
            default : memdep_phi1_pop1454_pop29133_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1454_pop29133(GPOUT,101)
    assign out_memdep_phi1_pop1454_pop29133 = memdep_phi1_pop1454_pop29133_mux_q;

    // memdep_phi1_pop1494_mux(MUX,76)
    assign memdep_phi1_pop1494_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1494_mux_s or in_memdep_phi1_pop1494_1 or in_memdep_phi1_pop1494_0)
    begin
        unique case (memdep_phi1_pop1494_mux_s)
            1'b0 : memdep_phi1_pop1494_mux_q = in_memdep_phi1_pop1494_1;
            1'b1 : memdep_phi1_pop1494_mux_q = in_memdep_phi1_pop1494_0;
            default : memdep_phi1_pop1494_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1494(GPOUT,102)
    assign out_memdep_phi1_pop1494 = memdep_phi1_pop1494_mux_q;

    // memdep_phi_pop17107_mux(MUX,77)
    assign memdep_phi_pop17107_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17107_mux_s or in_memdep_phi_pop17107_1 or in_memdep_phi_pop17107_0)
    begin
        unique case (memdep_phi_pop17107_mux_s)
            1'b0 : memdep_phi_pop17107_mux_q = in_memdep_phi_pop17107_1;
            1'b1 : memdep_phi_pop17107_mux_q = in_memdep_phi_pop17107_0;
            default : memdep_phi_pop17107_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17107(GPOUT,103)
    assign out_memdep_phi_pop17107 = memdep_phi_pop17107_mux_q;

    // memdep_phi_pop1762_pop33136_mux(MUX,78)
    assign memdep_phi_pop1762_pop33136_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1762_pop33136_mux_s or in_memdep_phi_pop1762_pop33136_1 or in_memdep_phi_pop1762_pop33136_0)
    begin
        unique case (memdep_phi_pop1762_pop33136_mux_s)
            1'b0 : memdep_phi_pop1762_pop33136_mux_q = in_memdep_phi_pop1762_pop33136_1;
            1'b1 : memdep_phi_pop1762_pop33136_mux_q = in_memdep_phi_pop1762_pop33136_0;
            default : memdep_phi_pop1762_pop33136_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1762_pop33136(GPOUT,104)
    assign out_memdep_phi_pop1762_pop33136 = memdep_phi_pop1762_pop33136_mux_q;

    // mul13_add13124_mux(MUX,79)
    assign mul13_add13124_mux_s = in_valid_in_0;
    always @(mul13_add13124_mux_s or in_mul13_add13124_1 or in_mul13_add13124_0)
    begin
        unique case (mul13_add13124_mux_s)
            1'b0 : mul13_add13124_mux_q = in_mul13_add13124_1;
            1'b1 : mul13_add13124_mux_q = in_mul13_add13124_0;
            default : mul13_add13124_mux_q = 32'b0;
        endcase
    end

    // out_mul13_add13124(GPOUT,105)
    assign out_mul13_add13124 = mul13_add13124_mux_q;

    // mul2544_pop19113_mux(MUX,80)
    assign mul2544_pop19113_mux_s = in_valid_in_0;
    always @(mul2544_pop19113_mux_s or in_mul2544_pop19113_1 or in_mul2544_pop19113_0)
    begin
        unique case (mul2544_pop19113_mux_s)
            1'b0 : mul2544_pop19113_mux_q = in_mul2544_pop19113_1;
            1'b1 : mul2544_pop19113_mux_q = in_mul2544_pop19113_0;
            default : mul2544_pop19113_mux_q = 32'b0;
        endcase
    end

    // out_mul2544_pop19113(GPOUT,106)
    assign out_mul2544_pop19113 = mul2544_pop19113_mux_q;

    // mul2545_pop26130_mux(MUX,81)
    assign mul2545_pop26130_mux_s = in_valid_in_0;
    always @(mul2545_pop26130_mux_s or in_mul2545_pop26130_1 or in_mul2545_pop26130_0)
    begin
        unique case (mul2545_pop26130_mux_s)
            1'b0 : mul2545_pop26130_mux_q = in_mul2545_pop26130_1;
            1'b1 : mul2545_pop26130_mux_q = in_mul2545_pop26130_0;
            default : mul2545_pop26130_mux_q = 32'b0;
        endcase
    end

    // out_mul2545_pop26130(GPOUT,107)
    assign out_mul2545_pop26130 = mul2545_pop26130_mux_q;

    // mul2579_mux(MUX,82)
    assign mul2579_mux_s = in_valid_in_0;
    always @(mul2579_mux_s or in_mul2579_1 or in_mul2579_0)
    begin
        unique case (mul2579_mux_s)
            1'b0 : mul2579_mux_q = in_mul2579_1;
            1'b1 : mul2579_mux_q = in_mul2579_0;
            default : mul2579_mux_q = 32'b0;
        endcase
    end

    // out_mul2579(GPOUT,108)
    assign out_mul2579 = mul2579_mux_q;

    // notcmp19129_mux(MUX,83)
    assign notcmp19129_mux_s = in_valid_in_0;
    always @(notcmp19129_mux_s or in_notcmp19129_1 or in_notcmp19129_0)
    begin
        unique case (notcmp19129_mux_s)
            1'b0 : notcmp19129_mux_q = in_notcmp19129_1;
            1'b1 : notcmp19129_mux_q = in_notcmp19129_0;
            default : notcmp19129_mux_q = 1'b0;
        endcase
    end

    // out_notcmp19129(GPOUT,109)
    assign out_notcmp19129 = notcmp19129_mux_q;

    // notcmp24101_mux(MUX,84)
    assign notcmp24101_mux_s = in_valid_in_0;
    always @(notcmp24101_mux_s or in_notcmp24101_1 or in_notcmp24101_0)
    begin
        unique case (notcmp24101_mux_s)
            1'b0 : notcmp24101_mux_q = in_notcmp24101_1;
            1'b1 : notcmp24101_mux_q = in_notcmp24101_0;
            default : notcmp24101_mux_q = 1'b0;
        endcase
    end

    // out_notcmp24101(GPOUT,110)
    assign out_notcmp24101 = notcmp24101_mux_q;

    // notcmp2458_pop31135_mux(MUX,85)
    assign notcmp2458_pop31135_mux_s = in_valid_in_0;
    always @(notcmp2458_pop31135_mux_s or in_notcmp2458_pop31135_1 or in_notcmp2458_pop31135_0)
    begin
        unique case (notcmp2458_pop31135_mux_s)
            1'b0 : notcmp2458_pop31135_mux_q = in_notcmp2458_pop31135_1;
            1'b1 : notcmp2458_pop31135_mux_q = in_notcmp2458_pop31135_0;
            default : notcmp2458_pop31135_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2458_pop31135(GPOUT,111)
    assign out_notcmp2458_pop31135 = notcmp2458_pop31135_mux_q;

    // notcmp2950_pop21119_mux(MUX,86)
    assign notcmp2950_pop21119_mux_s = in_valid_in_0;
    always @(notcmp2950_pop21119_mux_s or in_notcmp2950_pop21119_1 or in_notcmp2950_pop21119_0)
    begin
        unique case (notcmp2950_pop21119_mux_s)
            1'b0 : notcmp2950_pop21119_mux_q = in_notcmp2950_pop21119_1;
            1'b1 : notcmp2950_pop21119_mux_q = in_notcmp2950_pop21119_0;
            default : notcmp2950_pop21119_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2950_pop21119(GPOUT,112)
    assign out_notcmp2950_pop21119 = notcmp2950_pop21119_mux_q;

    // notcmp2951_pop28132_mux(MUX,87)
    assign notcmp2951_pop28132_mux_s = in_valid_in_0;
    always @(notcmp2951_pop28132_mux_s or in_notcmp2951_pop28132_1 or in_notcmp2951_pop28132_0)
    begin
        unique case (notcmp2951_pop28132_mux_s)
            1'b0 : notcmp2951_pop28132_mux_q = in_notcmp2951_pop28132_1;
            1'b1 : notcmp2951_pop28132_mux_q = in_notcmp2951_pop28132_0;
            default : notcmp2951_pop28132_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2951_pop28132(GPOUT,113)
    assign out_notcmp2951_pop28132 = notcmp2951_pop28132_mux_q;

    // notcmp2989_mux(MUX,88)
    assign notcmp2989_mux_s = in_valid_in_0;
    always @(notcmp2989_mux_s or in_notcmp2989_1 or in_notcmp2989_0)
    begin
        unique case (notcmp2989_mux_s)
            1'b0 : notcmp2989_mux_q = in_notcmp2989_1;
            1'b1 : notcmp2989_mux_q = in_notcmp2989_0;
            default : notcmp2989_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2989(GPOUT,114)
    assign out_notcmp2989 = notcmp2989_mux_q;

    // r_026_pop1341_pop18110_mux(MUX,121)
    assign r_026_pop1341_pop18110_mux_s = in_valid_in_0;
    always @(r_026_pop1341_pop18110_mux_s or in_r_026_pop1341_pop18110_1 or in_r_026_pop1341_pop18110_0)
    begin
        unique case (r_026_pop1341_pop18110_mux_s)
            1'b0 : r_026_pop1341_pop18110_mux_q = in_r_026_pop1341_pop18110_1;
            1'b1 : r_026_pop1341_pop18110_mux_q = in_r_026_pop1341_pop18110_0;
            default : r_026_pop1341_pop18110_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1341_pop18110(GPOUT,115)
    assign out_r_026_pop1341_pop18110 = r_026_pop1341_pop18110_mux_q;

    // r_026_pop1342_pop25125_mux(MUX,122)
    assign r_026_pop1342_pop25125_mux_s = in_valid_in_0;
    always @(r_026_pop1342_pop25125_mux_s or in_r_026_pop1342_pop25125_1 or in_r_026_pop1342_pop25125_0)
    begin
        unique case (r_026_pop1342_pop25125_mux_s)
            1'b0 : r_026_pop1342_pop25125_mux_q = in_r_026_pop1342_pop25125_1;
            1'b1 : r_026_pop1342_pop25125_mux_q = in_r_026_pop1342_pop25125_0;
            default : r_026_pop1342_pop25125_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1342_pop25125(GPOUT,116)
    assign out_r_026_pop1342_pop25125 = r_026_pop1342_pop25125_mux_q;

    // r_026_pop1374_mux(MUX,123)
    assign r_026_pop1374_mux_s = in_valid_in_0;
    always @(r_026_pop1374_mux_s or in_r_026_pop1374_1 or in_r_026_pop1374_0)
    begin
        unique case (r_026_pop1374_mux_s)
            1'b0 : r_026_pop1374_mux_q = in_r_026_pop1374_1;
            1'b1 : r_026_pop1374_mux_q = in_r_026_pop1374_0;
            default : r_026_pop1374_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1374(GPOUT,117)
    assign out_r_026_pop1374 = r_026_pop1374_mux_q;

    // valid_or(LOGICAL,126)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,124)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,118)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,125)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,119)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,120)
    assign out_valid_out = valid_or_q;

endmodule
