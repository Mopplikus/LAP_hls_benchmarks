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
// SystemVerilog created on Tue Jun 13 03:01:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B9_merge (
    input wire [31:0] in_c_043_pop16102_0,
    input wire [31:0] in_c_043_pop16102_1,
    input wire [31:0] in_c_043_pop1658_pop32124_0,
    input wire [31:0] in_c_043_pop1658_pop32124_1,
    input wire [31:0] in_dot_prod_add125_0,
    input wire [31:0] in_dot_prod_add125_1,
    input wire [0:0] in_exitcond1145_pop20114_0,
    input wire [0:0] in_exitcond1145_pop20114_1,
    input wire [0:0] in_exitcond1146_pop27129_0,
    input wire [0:0] in_exitcond1146_pop27129_1,
    input wire [0:0] in_exitcond1182_0,
    input wire [0:0] in_exitcond1182_1,
    input wire [0:0] in_exitcond5126_0,
    input wire [0:0] in_exitcond5126_1,
    input wire [0:0] in_exitcond854_pop30132_0,
    input wire [0:0] in_exitcond854_pop30132_1,
    input wire [0:0] in_exitcond896_0,
    input wire [0:0] in_exitcond896_1,
    input wire [0:0] in_forked35121_0,
    input wire [0:0] in_forked35121_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [0:0] in_memdep_phi1_pop1451_pop22120_0,
    input wire [0:0] in_memdep_phi1_pop1451_pop22120_1,
    input wire [0:0] in_memdep_phi1_pop1452_pop29131_0,
    input wire [0:0] in_memdep_phi1_pop1452_pop29131_1,
    input wire [0:0] in_memdep_phi1_pop1492_0,
    input wire [0:0] in_memdep_phi1_pop1492_1,
    input wire [0:0] in_memdep_phi_pop17105_0,
    input wire [0:0] in_memdep_phi_pop17105_1,
    input wire [0:0] in_memdep_phi_pop1760_pop33134_0,
    input wire [0:0] in_memdep_phi_pop1760_pop33134_1,
    input wire [31:0] in_mul13_add13122_0,
    input wire [31:0] in_mul13_add13122_1,
    input wire [31:0] in_mul2442_pop19111_0,
    input wire [31:0] in_mul2442_pop19111_1,
    input wire [31:0] in_mul2443_pop26128_0,
    input wire [31:0] in_mul2443_pop26128_1,
    input wire [31:0] in_mul2477_0,
    input wire [31:0] in_mul2477_1,
    input wire [0:0] in_notcmp17127_0,
    input wire [0:0] in_notcmp17127_1,
    input wire [0:0] in_notcmp2256_pop31133_0,
    input wire [0:0] in_notcmp2256_pop31133_1,
    input wire [0:0] in_notcmp2299_0,
    input wire [0:0] in_notcmp2299_1,
    input wire [0:0] in_notcmp2748_pop21117_0,
    input wire [0:0] in_notcmp2748_pop21117_1,
    input wire [0:0] in_notcmp2749_pop28130_0,
    input wire [0:0] in_notcmp2749_pop28130_1,
    input wire [0:0] in_notcmp2787_0,
    input wire [0:0] in_notcmp2787_1,
    input wire [31:0] in_r_044_pop1339_pop18108_0,
    input wire [31:0] in_r_044_pop1339_pop18108_1,
    input wire [31:0] in_r_044_pop1340_pop25123_0,
    input wire [31:0] in_r_044_pop1340_pop25123_1,
    input wire [31:0] in_r_044_pop1372_0,
    input wire [31:0] in_r_044_pop1372_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_043_pop16102,
    output wire [31:0] out_c_043_pop1658_pop32124,
    output wire [31:0] out_dot_prod_add125,
    output wire [0:0] out_exitcond1145_pop20114,
    output wire [0:0] out_exitcond1146_pop27129,
    output wire [0:0] out_exitcond1182,
    output wire [0:0] out_exitcond5126,
    output wire [0:0] out_exitcond854_pop30132,
    output wire [0:0] out_exitcond896,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked35121,
    output wire [0:0] out_memdep_phi1_pop1451_pop22120,
    output wire [0:0] out_memdep_phi1_pop1452_pop29131,
    output wire [0:0] out_memdep_phi1_pop1492,
    output wire [0:0] out_memdep_phi_pop17105,
    output wire [0:0] out_memdep_phi_pop1760_pop33134,
    output wire [31:0] out_mul13_add13122,
    output wire [31:0] out_mul2442_pop19111,
    output wire [31:0] out_mul2443_pop26128,
    output wire [31:0] out_mul2477,
    output wire [0:0] out_notcmp17127,
    output wire [0:0] out_notcmp2256_pop31133,
    output wire [0:0] out_notcmp2299,
    output wire [0:0] out_notcmp2748_pop21117,
    output wire [0:0] out_notcmp2749_pop28130,
    output wire [0:0] out_notcmp2787,
    output wire [31:0] out_r_044_pop1339_pop18108,
    output wire [31:0] out_r_044_pop1340_pop25123,
    output wire [31:0] out_r_044_pop1372,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_043_pop16102_mux_s;
    reg [31:0] c_043_pop16102_mux_q;
    wire [0:0] c_043_pop1658_pop32124_mux_s;
    reg [31:0] c_043_pop1658_pop32124_mux_q;
    wire [0:0] dot_prod_add125_mux_s;
    reg [31:0] dot_prod_add125_mux_q;
    wire [0:0] exitcond1145_pop20114_mux_s;
    reg [0:0] exitcond1145_pop20114_mux_q;
    wire [0:0] exitcond1146_pop27129_mux_s;
    reg [0:0] exitcond1146_pop27129_mux_q;
    wire [0:0] exitcond1182_mux_s;
    reg [0:0] exitcond1182_mux_q;
    wire [0:0] exitcond5126_mux_s;
    reg [0:0] exitcond5126_mux_q;
    wire [0:0] exitcond854_pop30132_mux_s;
    reg [0:0] exitcond854_pop30132_mux_q;
    wire [0:0] exitcond896_mux_s;
    reg [0:0] exitcond896_mux_q;
    wire [0:0] forked35121_mux_s;
    reg [0:0] forked35121_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] memdep_phi1_pop1451_pop22120_mux_s;
    reg [0:0] memdep_phi1_pop1451_pop22120_mux_q;
    wire [0:0] memdep_phi1_pop1452_pop29131_mux_s;
    reg [0:0] memdep_phi1_pop1452_pop29131_mux_q;
    wire [0:0] memdep_phi1_pop1492_mux_s;
    reg [0:0] memdep_phi1_pop1492_mux_q;
    wire [0:0] memdep_phi_pop17105_mux_s;
    reg [0:0] memdep_phi_pop17105_mux_q;
    wire [0:0] memdep_phi_pop1760_pop33134_mux_s;
    reg [0:0] memdep_phi_pop1760_pop33134_mux_q;
    wire [0:0] mul13_add13122_mux_s;
    reg [31:0] mul13_add13122_mux_q;
    wire [0:0] mul2442_pop19111_mux_s;
    reg [31:0] mul2442_pop19111_mux_q;
    wire [0:0] mul2443_pop26128_mux_s;
    reg [31:0] mul2443_pop26128_mux_q;
    wire [0:0] mul2477_mux_s;
    reg [31:0] mul2477_mux_q;
    wire [0:0] notcmp17127_mux_s;
    reg [0:0] notcmp17127_mux_q;
    wire [0:0] notcmp2256_pop31133_mux_s;
    reg [0:0] notcmp2256_pop31133_mux_q;
    wire [0:0] notcmp2299_mux_s;
    reg [0:0] notcmp2299_mux_q;
    wire [0:0] notcmp2748_pop21117_mux_s;
    reg [0:0] notcmp2748_pop21117_mux_q;
    wire [0:0] notcmp2749_pop28130_mux_s;
    reg [0:0] notcmp2749_pop28130_mux_q;
    wire [0:0] notcmp2787_mux_s;
    reg [0:0] notcmp2787_mux_q;
    wire [0:0] r_044_pop1339_pop18108_mux_s;
    reg [31:0] r_044_pop1339_pop18108_mux_q;
    wire [0:0] r_044_pop1340_pop25123_mux_s;
    reg [31:0] r_044_pop1340_pop25123_mux_q;
    wire [0:0] r_044_pop1372_mux_s;
    reg [31:0] r_044_pop1372_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_043_pop16102_mux(MUX,2)
    assign c_043_pop16102_mux_s = in_valid_in_0;
    always @(c_043_pop16102_mux_s or in_c_043_pop16102_1 or in_c_043_pop16102_0)
    begin
        unique case (c_043_pop16102_mux_s)
            1'b0 : c_043_pop16102_mux_q = in_c_043_pop16102_1;
            1'b1 : c_043_pop16102_mux_q = in_c_043_pop16102_0;
            default : c_043_pop16102_mux_q = 32'b0;
        endcase
    end

    // out_c_043_pop16102(GPOUT,89)
    assign out_c_043_pop16102 = c_043_pop16102_mux_q;

    // c_043_pop1658_pop32124_mux(MUX,3)
    assign c_043_pop1658_pop32124_mux_s = in_valid_in_0;
    always @(c_043_pop1658_pop32124_mux_s or in_c_043_pop1658_pop32124_1 or in_c_043_pop1658_pop32124_0)
    begin
        unique case (c_043_pop1658_pop32124_mux_s)
            1'b0 : c_043_pop1658_pop32124_mux_q = in_c_043_pop1658_pop32124_1;
            1'b1 : c_043_pop1658_pop32124_mux_q = in_c_043_pop1658_pop32124_0;
            default : c_043_pop1658_pop32124_mux_q = 32'b0;
        endcase
    end

    // out_c_043_pop1658_pop32124(GPOUT,90)
    assign out_c_043_pop1658_pop32124 = c_043_pop1658_pop32124_mux_q;

    // dot_prod_add125_mux(MUX,4)
    assign dot_prod_add125_mux_s = in_valid_in_0;
    always @(dot_prod_add125_mux_s or in_dot_prod_add125_1 or in_dot_prod_add125_0)
    begin
        unique case (dot_prod_add125_mux_s)
            1'b0 : dot_prod_add125_mux_q = in_dot_prod_add125_1;
            1'b1 : dot_prod_add125_mux_q = in_dot_prod_add125_0;
            default : dot_prod_add125_mux_q = 32'b0;
        endcase
    end

    // out_dot_prod_add125(GPOUT,91)
    assign out_dot_prod_add125 = dot_prod_add125_mux_q;

    // exitcond1145_pop20114_mux(MUX,5)
    assign exitcond1145_pop20114_mux_s = in_valid_in_0;
    always @(exitcond1145_pop20114_mux_s or in_exitcond1145_pop20114_1 or in_exitcond1145_pop20114_0)
    begin
        unique case (exitcond1145_pop20114_mux_s)
            1'b0 : exitcond1145_pop20114_mux_q = in_exitcond1145_pop20114_1;
            1'b1 : exitcond1145_pop20114_mux_q = in_exitcond1145_pop20114_0;
            default : exitcond1145_pop20114_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1145_pop20114(GPOUT,92)
    assign out_exitcond1145_pop20114 = exitcond1145_pop20114_mux_q;

    // exitcond1146_pop27129_mux(MUX,6)
    assign exitcond1146_pop27129_mux_s = in_valid_in_0;
    always @(exitcond1146_pop27129_mux_s or in_exitcond1146_pop27129_1 or in_exitcond1146_pop27129_0)
    begin
        unique case (exitcond1146_pop27129_mux_s)
            1'b0 : exitcond1146_pop27129_mux_q = in_exitcond1146_pop27129_1;
            1'b1 : exitcond1146_pop27129_mux_q = in_exitcond1146_pop27129_0;
            default : exitcond1146_pop27129_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1146_pop27129(GPOUT,93)
    assign out_exitcond1146_pop27129 = exitcond1146_pop27129_mux_q;

    // exitcond1182_mux(MUX,7)
    assign exitcond1182_mux_s = in_valid_in_0;
    always @(exitcond1182_mux_s or in_exitcond1182_1 or in_exitcond1182_0)
    begin
        unique case (exitcond1182_mux_s)
            1'b0 : exitcond1182_mux_q = in_exitcond1182_1;
            1'b1 : exitcond1182_mux_q = in_exitcond1182_0;
            default : exitcond1182_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1182(GPOUT,94)
    assign out_exitcond1182 = exitcond1182_mux_q;

    // exitcond5126_mux(MUX,8)
    assign exitcond5126_mux_s = in_valid_in_0;
    always @(exitcond5126_mux_s or in_exitcond5126_1 or in_exitcond5126_0)
    begin
        unique case (exitcond5126_mux_s)
            1'b0 : exitcond5126_mux_q = in_exitcond5126_1;
            1'b1 : exitcond5126_mux_q = in_exitcond5126_0;
            default : exitcond5126_mux_q = 1'b0;
        endcase
    end

    // out_exitcond5126(GPOUT,95)
    assign out_exitcond5126 = exitcond5126_mux_q;

    // exitcond854_pop30132_mux(MUX,9)
    assign exitcond854_pop30132_mux_s = in_valid_in_0;
    always @(exitcond854_pop30132_mux_s or in_exitcond854_pop30132_1 or in_exitcond854_pop30132_0)
    begin
        unique case (exitcond854_pop30132_mux_s)
            1'b0 : exitcond854_pop30132_mux_q = in_exitcond854_pop30132_1;
            1'b1 : exitcond854_pop30132_mux_q = in_exitcond854_pop30132_0;
            default : exitcond854_pop30132_mux_q = 1'b0;
        endcase
    end

    // out_exitcond854_pop30132(GPOUT,96)
    assign out_exitcond854_pop30132 = exitcond854_pop30132_mux_q;

    // exitcond896_mux(MUX,10)
    assign exitcond896_mux_s = in_valid_in_0;
    always @(exitcond896_mux_s or in_exitcond896_1 or in_exitcond896_0)
    begin
        unique case (exitcond896_mux_s)
            1'b0 : exitcond896_mux_q = in_exitcond896_1;
            1'b1 : exitcond896_mux_q = in_exitcond896_0;
            default : exitcond896_mux_q = 1'b0;
        endcase
    end

    // out_exitcond896(GPOUT,97)
    assign out_exitcond896 = exitcond896_mux_q;

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

    // forked35121_mux(MUX,11)
    assign forked35121_mux_s = in_valid_in_0;
    always @(forked35121_mux_s or in_forked35121_1 or in_forked35121_0)
    begin
        unique case (forked35121_mux_s)
            1'b0 : forked35121_mux_q = in_forked35121_1;
            1'b1 : forked35121_mux_q = in_forked35121_0;
            default : forked35121_mux_q = 1'b0;
        endcase
    end

    // out_forked35121(GPOUT,99)
    assign out_forked35121 = forked35121_mux_q;

    // memdep_phi1_pop1451_pop22120_mux(MUX,74)
    assign memdep_phi1_pop1451_pop22120_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1451_pop22120_mux_s or in_memdep_phi1_pop1451_pop22120_1 or in_memdep_phi1_pop1451_pop22120_0)
    begin
        unique case (memdep_phi1_pop1451_pop22120_mux_s)
            1'b0 : memdep_phi1_pop1451_pop22120_mux_q = in_memdep_phi1_pop1451_pop22120_1;
            1'b1 : memdep_phi1_pop1451_pop22120_mux_q = in_memdep_phi1_pop1451_pop22120_0;
            default : memdep_phi1_pop1451_pop22120_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1451_pop22120(GPOUT,100)
    assign out_memdep_phi1_pop1451_pop22120 = memdep_phi1_pop1451_pop22120_mux_q;

    // memdep_phi1_pop1452_pop29131_mux(MUX,75)
    assign memdep_phi1_pop1452_pop29131_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1452_pop29131_mux_s or in_memdep_phi1_pop1452_pop29131_1 or in_memdep_phi1_pop1452_pop29131_0)
    begin
        unique case (memdep_phi1_pop1452_pop29131_mux_s)
            1'b0 : memdep_phi1_pop1452_pop29131_mux_q = in_memdep_phi1_pop1452_pop29131_1;
            1'b1 : memdep_phi1_pop1452_pop29131_mux_q = in_memdep_phi1_pop1452_pop29131_0;
            default : memdep_phi1_pop1452_pop29131_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1452_pop29131(GPOUT,101)
    assign out_memdep_phi1_pop1452_pop29131 = memdep_phi1_pop1452_pop29131_mux_q;

    // memdep_phi1_pop1492_mux(MUX,76)
    assign memdep_phi1_pop1492_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1492_mux_s or in_memdep_phi1_pop1492_1 or in_memdep_phi1_pop1492_0)
    begin
        unique case (memdep_phi1_pop1492_mux_s)
            1'b0 : memdep_phi1_pop1492_mux_q = in_memdep_phi1_pop1492_1;
            1'b1 : memdep_phi1_pop1492_mux_q = in_memdep_phi1_pop1492_0;
            default : memdep_phi1_pop1492_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1492(GPOUT,102)
    assign out_memdep_phi1_pop1492 = memdep_phi1_pop1492_mux_q;

    // memdep_phi_pop17105_mux(MUX,77)
    assign memdep_phi_pop17105_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17105_mux_s or in_memdep_phi_pop17105_1 or in_memdep_phi_pop17105_0)
    begin
        unique case (memdep_phi_pop17105_mux_s)
            1'b0 : memdep_phi_pop17105_mux_q = in_memdep_phi_pop17105_1;
            1'b1 : memdep_phi_pop17105_mux_q = in_memdep_phi_pop17105_0;
            default : memdep_phi_pop17105_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17105(GPOUT,103)
    assign out_memdep_phi_pop17105 = memdep_phi_pop17105_mux_q;

    // memdep_phi_pop1760_pop33134_mux(MUX,78)
    assign memdep_phi_pop1760_pop33134_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1760_pop33134_mux_s or in_memdep_phi_pop1760_pop33134_1 or in_memdep_phi_pop1760_pop33134_0)
    begin
        unique case (memdep_phi_pop1760_pop33134_mux_s)
            1'b0 : memdep_phi_pop1760_pop33134_mux_q = in_memdep_phi_pop1760_pop33134_1;
            1'b1 : memdep_phi_pop1760_pop33134_mux_q = in_memdep_phi_pop1760_pop33134_0;
            default : memdep_phi_pop1760_pop33134_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1760_pop33134(GPOUT,104)
    assign out_memdep_phi_pop1760_pop33134 = memdep_phi_pop1760_pop33134_mux_q;

    // mul13_add13122_mux(MUX,79)
    assign mul13_add13122_mux_s = in_valid_in_0;
    always @(mul13_add13122_mux_s or in_mul13_add13122_1 or in_mul13_add13122_0)
    begin
        unique case (mul13_add13122_mux_s)
            1'b0 : mul13_add13122_mux_q = in_mul13_add13122_1;
            1'b1 : mul13_add13122_mux_q = in_mul13_add13122_0;
            default : mul13_add13122_mux_q = 32'b0;
        endcase
    end

    // out_mul13_add13122(GPOUT,105)
    assign out_mul13_add13122 = mul13_add13122_mux_q;

    // mul2442_pop19111_mux(MUX,80)
    assign mul2442_pop19111_mux_s = in_valid_in_0;
    always @(mul2442_pop19111_mux_s or in_mul2442_pop19111_1 or in_mul2442_pop19111_0)
    begin
        unique case (mul2442_pop19111_mux_s)
            1'b0 : mul2442_pop19111_mux_q = in_mul2442_pop19111_1;
            1'b1 : mul2442_pop19111_mux_q = in_mul2442_pop19111_0;
            default : mul2442_pop19111_mux_q = 32'b0;
        endcase
    end

    // out_mul2442_pop19111(GPOUT,106)
    assign out_mul2442_pop19111 = mul2442_pop19111_mux_q;

    // mul2443_pop26128_mux(MUX,81)
    assign mul2443_pop26128_mux_s = in_valid_in_0;
    always @(mul2443_pop26128_mux_s or in_mul2443_pop26128_1 or in_mul2443_pop26128_0)
    begin
        unique case (mul2443_pop26128_mux_s)
            1'b0 : mul2443_pop26128_mux_q = in_mul2443_pop26128_1;
            1'b1 : mul2443_pop26128_mux_q = in_mul2443_pop26128_0;
            default : mul2443_pop26128_mux_q = 32'b0;
        endcase
    end

    // out_mul2443_pop26128(GPOUT,107)
    assign out_mul2443_pop26128 = mul2443_pop26128_mux_q;

    // mul2477_mux(MUX,82)
    assign mul2477_mux_s = in_valid_in_0;
    always @(mul2477_mux_s or in_mul2477_1 or in_mul2477_0)
    begin
        unique case (mul2477_mux_s)
            1'b0 : mul2477_mux_q = in_mul2477_1;
            1'b1 : mul2477_mux_q = in_mul2477_0;
            default : mul2477_mux_q = 32'b0;
        endcase
    end

    // out_mul2477(GPOUT,108)
    assign out_mul2477 = mul2477_mux_q;

    // notcmp17127_mux(MUX,83)
    assign notcmp17127_mux_s = in_valid_in_0;
    always @(notcmp17127_mux_s or in_notcmp17127_1 or in_notcmp17127_0)
    begin
        unique case (notcmp17127_mux_s)
            1'b0 : notcmp17127_mux_q = in_notcmp17127_1;
            1'b1 : notcmp17127_mux_q = in_notcmp17127_0;
            default : notcmp17127_mux_q = 1'b0;
        endcase
    end

    // out_notcmp17127(GPOUT,109)
    assign out_notcmp17127 = notcmp17127_mux_q;

    // notcmp2256_pop31133_mux(MUX,84)
    assign notcmp2256_pop31133_mux_s = in_valid_in_0;
    always @(notcmp2256_pop31133_mux_s or in_notcmp2256_pop31133_1 or in_notcmp2256_pop31133_0)
    begin
        unique case (notcmp2256_pop31133_mux_s)
            1'b0 : notcmp2256_pop31133_mux_q = in_notcmp2256_pop31133_1;
            1'b1 : notcmp2256_pop31133_mux_q = in_notcmp2256_pop31133_0;
            default : notcmp2256_pop31133_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2256_pop31133(GPOUT,110)
    assign out_notcmp2256_pop31133 = notcmp2256_pop31133_mux_q;

    // notcmp2299_mux(MUX,85)
    assign notcmp2299_mux_s = in_valid_in_0;
    always @(notcmp2299_mux_s or in_notcmp2299_1 or in_notcmp2299_0)
    begin
        unique case (notcmp2299_mux_s)
            1'b0 : notcmp2299_mux_q = in_notcmp2299_1;
            1'b1 : notcmp2299_mux_q = in_notcmp2299_0;
            default : notcmp2299_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2299(GPOUT,111)
    assign out_notcmp2299 = notcmp2299_mux_q;

    // notcmp2748_pop21117_mux(MUX,86)
    assign notcmp2748_pop21117_mux_s = in_valid_in_0;
    always @(notcmp2748_pop21117_mux_s or in_notcmp2748_pop21117_1 or in_notcmp2748_pop21117_0)
    begin
        unique case (notcmp2748_pop21117_mux_s)
            1'b0 : notcmp2748_pop21117_mux_q = in_notcmp2748_pop21117_1;
            1'b1 : notcmp2748_pop21117_mux_q = in_notcmp2748_pop21117_0;
            default : notcmp2748_pop21117_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2748_pop21117(GPOUT,112)
    assign out_notcmp2748_pop21117 = notcmp2748_pop21117_mux_q;

    // notcmp2749_pop28130_mux(MUX,87)
    assign notcmp2749_pop28130_mux_s = in_valid_in_0;
    always @(notcmp2749_pop28130_mux_s or in_notcmp2749_pop28130_1 or in_notcmp2749_pop28130_0)
    begin
        unique case (notcmp2749_pop28130_mux_s)
            1'b0 : notcmp2749_pop28130_mux_q = in_notcmp2749_pop28130_1;
            1'b1 : notcmp2749_pop28130_mux_q = in_notcmp2749_pop28130_0;
            default : notcmp2749_pop28130_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2749_pop28130(GPOUT,113)
    assign out_notcmp2749_pop28130 = notcmp2749_pop28130_mux_q;

    // notcmp2787_mux(MUX,88)
    assign notcmp2787_mux_s = in_valid_in_0;
    always @(notcmp2787_mux_s or in_notcmp2787_1 or in_notcmp2787_0)
    begin
        unique case (notcmp2787_mux_s)
            1'b0 : notcmp2787_mux_q = in_notcmp2787_1;
            1'b1 : notcmp2787_mux_q = in_notcmp2787_0;
            default : notcmp2787_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2787(GPOUT,114)
    assign out_notcmp2787 = notcmp2787_mux_q;

    // r_044_pop1339_pop18108_mux(MUX,121)
    assign r_044_pop1339_pop18108_mux_s = in_valid_in_0;
    always @(r_044_pop1339_pop18108_mux_s or in_r_044_pop1339_pop18108_1 or in_r_044_pop1339_pop18108_0)
    begin
        unique case (r_044_pop1339_pop18108_mux_s)
            1'b0 : r_044_pop1339_pop18108_mux_q = in_r_044_pop1339_pop18108_1;
            1'b1 : r_044_pop1339_pop18108_mux_q = in_r_044_pop1339_pop18108_0;
            default : r_044_pop1339_pop18108_mux_q = 32'b0;
        endcase
    end

    // out_r_044_pop1339_pop18108(GPOUT,115)
    assign out_r_044_pop1339_pop18108 = r_044_pop1339_pop18108_mux_q;

    // r_044_pop1340_pop25123_mux(MUX,122)
    assign r_044_pop1340_pop25123_mux_s = in_valid_in_0;
    always @(r_044_pop1340_pop25123_mux_s or in_r_044_pop1340_pop25123_1 or in_r_044_pop1340_pop25123_0)
    begin
        unique case (r_044_pop1340_pop25123_mux_s)
            1'b0 : r_044_pop1340_pop25123_mux_q = in_r_044_pop1340_pop25123_1;
            1'b1 : r_044_pop1340_pop25123_mux_q = in_r_044_pop1340_pop25123_0;
            default : r_044_pop1340_pop25123_mux_q = 32'b0;
        endcase
    end

    // out_r_044_pop1340_pop25123(GPOUT,116)
    assign out_r_044_pop1340_pop25123 = r_044_pop1340_pop25123_mux_q;

    // r_044_pop1372_mux(MUX,123)
    assign r_044_pop1372_mux_s = in_valid_in_0;
    always @(r_044_pop1372_mux_s or in_r_044_pop1372_1 or in_r_044_pop1372_0)
    begin
        unique case (r_044_pop1372_mux_s)
            1'b0 : r_044_pop1372_mux_q = in_r_044_pop1372_1;
            1'b1 : r_044_pop1372_mux_q = in_r_044_pop1372_0;
            default : r_044_pop1372_mux_q = 32'b0;
        endcase
    end

    // out_r_044_pop1372(GPOUT,117)
    assign out_r_044_pop1372 = r_044_pop1372_mux_q;

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
