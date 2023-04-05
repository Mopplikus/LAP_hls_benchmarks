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

// SystemVerilog created from stencil_2d_B6_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Wed Mar 29 16:57:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B6_merge (
    input wire [31:0] in_c_025_pop16102_0,
    input wire [31:0] in_c_025_pop16102_1,
    input wire [0:0] in_exitcond1147_pop20114_0,
    input wire [0:0] in_exitcond1147_pop20114_1,
    input wire [0:0] in_exitcond1185_0,
    input wire [0:0] in_exitcond1185_1,
    input wire [0:0] in_exitcond896_0,
    input wire [0:0] in_exitcond896_1,
    input wire [0:0] in_forked37_0,
    input wire [0:0] in_forked37_1,
    input wire [0:0] in_memdep_phi1_pop1453_pop22120_0,
    input wire [0:0] in_memdep_phi1_pop1453_pop22120_1,
    input wire [0:0] in_memdep_phi1_pop1495_0,
    input wire [0:0] in_memdep_phi1_pop1495_1,
    input wire [0:0] in_memdep_phi_pop17105_0,
    input wire [0:0] in_memdep_phi_pop17105_1,
    input wire [31:0] in_mul2544_pop19111_0,
    input wire [31:0] in_mul2544_pop19111_1,
    input wire [31:0] in_mul2580_0,
    input wire [31:0] in_mul2580_1,
    input wire [0:0] in_notcmp2499_0,
    input wire [0:0] in_notcmp2499_1,
    input wire [0:0] in_notcmp2950_pop21117_0,
    input wire [0:0] in_notcmp2950_pop21117_1,
    input wire [0:0] in_notcmp2990_0,
    input wire [0:0] in_notcmp2990_1,
    input wire [31:0] in_r_026_pop1341_pop18108_0,
    input wire [31:0] in_r_026_pop1341_pop18108_1,
    input wire [31:0] in_r_026_pop1375_0,
    input wire [31:0] in_r_026_pop1375_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_025_pop16102,
    output wire [0:0] out_exitcond1147_pop20114,
    output wire [0:0] out_exitcond1185,
    output wire [0:0] out_exitcond896,
    output wire [0:0] out_forked37,
    output wire [0:0] out_memdep_phi1_pop1453_pop22120,
    output wire [0:0] out_memdep_phi1_pop1495,
    output wire [0:0] out_memdep_phi_pop17105,
    output wire [31:0] out_mul2544_pop19111,
    output wire [31:0] out_mul2580,
    output wire [0:0] out_notcmp2499,
    output wire [0:0] out_notcmp2950_pop21117,
    output wire [0:0] out_notcmp2990,
    output wire [31:0] out_r_026_pop1341_pop18108,
    output wire [31:0] out_r_026_pop1375,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_025_pop16102_mux_s;
    reg [31:0] c_025_pop16102_mux_q;
    wire [0:0] exitcond1147_pop20114_mux_s;
    reg [0:0] exitcond1147_pop20114_mux_q;
    wire [0:0] exitcond1185_mux_s;
    reg [0:0] exitcond1185_mux_q;
    wire [0:0] exitcond896_mux_s;
    reg [0:0] exitcond896_mux_q;
    wire [0:0] forked37_mux_s;
    reg [0:0] forked37_mux_q;
    wire [0:0] memdep_phi1_pop1453_pop22120_mux_s;
    reg [0:0] memdep_phi1_pop1453_pop22120_mux_q;
    wire [0:0] memdep_phi1_pop1495_mux_s;
    reg [0:0] memdep_phi1_pop1495_mux_q;
    wire [0:0] memdep_phi_pop17105_mux_s;
    reg [0:0] memdep_phi_pop17105_mux_q;
    wire [0:0] mul2544_pop19111_mux_s;
    reg [31:0] mul2544_pop19111_mux_q;
    wire [0:0] mul2580_mux_s;
    reg [31:0] mul2580_mux_q;
    wire [0:0] notcmp2499_mux_s;
    reg [0:0] notcmp2499_mux_q;
    wire [0:0] notcmp2950_pop21117_mux_s;
    reg [0:0] notcmp2950_pop21117_mux_q;
    wire [0:0] notcmp2990_mux_s;
    reg [0:0] notcmp2990_mux_q;
    wire [0:0] r_026_pop1341_pop18108_mux_s;
    reg [31:0] r_026_pop1341_pop18108_mux_q;
    wire [0:0] r_026_pop1375_mux_s;
    reg [31:0] r_026_pop1375_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_025_pop16102_mux(MUX,2)
    assign c_025_pop16102_mux_s = in_valid_in_0;
    always @(c_025_pop16102_mux_s or in_c_025_pop16102_1 or in_c_025_pop16102_0)
    begin
        unique case (c_025_pop16102_mux_s)
            1'b0 : c_025_pop16102_mux_q = in_c_025_pop16102_1;
            1'b1 : c_025_pop16102_mux_q = in_c_025_pop16102_0;
            default : c_025_pop16102_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop16102(GPOUT,48)
    assign out_c_025_pop16102 = c_025_pop16102_mux_q;

    // exitcond1147_pop20114_mux(MUX,3)
    assign exitcond1147_pop20114_mux_s = in_valid_in_0;
    always @(exitcond1147_pop20114_mux_s or in_exitcond1147_pop20114_1 or in_exitcond1147_pop20114_0)
    begin
        unique case (exitcond1147_pop20114_mux_s)
            1'b0 : exitcond1147_pop20114_mux_q = in_exitcond1147_pop20114_1;
            1'b1 : exitcond1147_pop20114_mux_q = in_exitcond1147_pop20114_0;
            default : exitcond1147_pop20114_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1147_pop20114(GPOUT,49)
    assign out_exitcond1147_pop20114 = exitcond1147_pop20114_mux_q;

    // exitcond1185_mux(MUX,4)
    assign exitcond1185_mux_s = in_valid_in_0;
    always @(exitcond1185_mux_s or in_exitcond1185_1 or in_exitcond1185_0)
    begin
        unique case (exitcond1185_mux_s)
            1'b0 : exitcond1185_mux_q = in_exitcond1185_1;
            1'b1 : exitcond1185_mux_q = in_exitcond1185_0;
            default : exitcond1185_mux_q = 1'b0;
        endcase
    end

    // out_exitcond1185(GPOUT,50)
    assign out_exitcond1185 = exitcond1185_mux_q;

    // exitcond896_mux(MUX,5)
    assign exitcond896_mux_s = in_valid_in_0;
    always @(exitcond896_mux_s or in_exitcond896_1 or in_exitcond896_0)
    begin
        unique case (exitcond896_mux_s)
            1'b0 : exitcond896_mux_q = in_exitcond896_1;
            1'b1 : exitcond896_mux_q = in_exitcond896_0;
            default : exitcond896_mux_q = 1'b0;
        endcase
    end

    // out_exitcond896(GPOUT,51)
    assign out_exitcond896 = exitcond896_mux_q;

    // forked37_mux(MUX,6)
    assign forked37_mux_s = in_valid_in_0;
    always @(forked37_mux_s or in_forked37_1 or in_forked37_0)
    begin
        unique case (forked37_mux_s)
            1'b0 : forked37_mux_q = in_forked37_1;
            1'b1 : forked37_mux_q = in_forked37_0;
            default : forked37_mux_q = 1'b0;
        endcase
    end

    // out_forked37(GPOUT,52)
    assign out_forked37 = forked37_mux_q;

    // memdep_phi1_pop1453_pop22120_mux(MUX,40)
    assign memdep_phi1_pop1453_pop22120_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1453_pop22120_mux_s or in_memdep_phi1_pop1453_pop22120_1 or in_memdep_phi1_pop1453_pop22120_0)
    begin
        unique case (memdep_phi1_pop1453_pop22120_mux_s)
            1'b0 : memdep_phi1_pop1453_pop22120_mux_q = in_memdep_phi1_pop1453_pop22120_1;
            1'b1 : memdep_phi1_pop1453_pop22120_mux_q = in_memdep_phi1_pop1453_pop22120_0;
            default : memdep_phi1_pop1453_pop22120_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1453_pop22120(GPOUT,53)
    assign out_memdep_phi1_pop1453_pop22120 = memdep_phi1_pop1453_pop22120_mux_q;

    // memdep_phi1_pop1495_mux(MUX,41)
    assign memdep_phi1_pop1495_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1495_mux_s or in_memdep_phi1_pop1495_1 or in_memdep_phi1_pop1495_0)
    begin
        unique case (memdep_phi1_pop1495_mux_s)
            1'b0 : memdep_phi1_pop1495_mux_q = in_memdep_phi1_pop1495_1;
            1'b1 : memdep_phi1_pop1495_mux_q = in_memdep_phi1_pop1495_0;
            default : memdep_phi1_pop1495_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1495(GPOUT,54)
    assign out_memdep_phi1_pop1495 = memdep_phi1_pop1495_mux_q;

    // memdep_phi_pop17105_mux(MUX,42)
    assign memdep_phi_pop17105_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17105_mux_s or in_memdep_phi_pop17105_1 or in_memdep_phi_pop17105_0)
    begin
        unique case (memdep_phi_pop17105_mux_s)
            1'b0 : memdep_phi_pop17105_mux_q = in_memdep_phi_pop17105_1;
            1'b1 : memdep_phi_pop17105_mux_q = in_memdep_phi_pop17105_0;
            default : memdep_phi_pop17105_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17105(GPOUT,55)
    assign out_memdep_phi_pop17105 = memdep_phi_pop17105_mux_q;

    // mul2544_pop19111_mux(MUX,43)
    assign mul2544_pop19111_mux_s = in_valid_in_0;
    always @(mul2544_pop19111_mux_s or in_mul2544_pop19111_1 or in_mul2544_pop19111_0)
    begin
        unique case (mul2544_pop19111_mux_s)
            1'b0 : mul2544_pop19111_mux_q = in_mul2544_pop19111_1;
            1'b1 : mul2544_pop19111_mux_q = in_mul2544_pop19111_0;
            default : mul2544_pop19111_mux_q = 32'b0;
        endcase
    end

    // out_mul2544_pop19111(GPOUT,56)
    assign out_mul2544_pop19111 = mul2544_pop19111_mux_q;

    // mul2580_mux(MUX,44)
    assign mul2580_mux_s = in_valid_in_0;
    always @(mul2580_mux_s or in_mul2580_1 or in_mul2580_0)
    begin
        unique case (mul2580_mux_s)
            1'b0 : mul2580_mux_q = in_mul2580_1;
            1'b1 : mul2580_mux_q = in_mul2580_0;
            default : mul2580_mux_q = 32'b0;
        endcase
    end

    // out_mul2580(GPOUT,57)
    assign out_mul2580 = mul2580_mux_q;

    // notcmp2499_mux(MUX,45)
    assign notcmp2499_mux_s = in_valid_in_0;
    always @(notcmp2499_mux_s or in_notcmp2499_1 or in_notcmp2499_0)
    begin
        unique case (notcmp2499_mux_s)
            1'b0 : notcmp2499_mux_q = in_notcmp2499_1;
            1'b1 : notcmp2499_mux_q = in_notcmp2499_0;
            default : notcmp2499_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2499(GPOUT,58)
    assign out_notcmp2499 = notcmp2499_mux_q;

    // notcmp2950_pop21117_mux(MUX,46)
    assign notcmp2950_pop21117_mux_s = in_valid_in_0;
    always @(notcmp2950_pop21117_mux_s or in_notcmp2950_pop21117_1 or in_notcmp2950_pop21117_0)
    begin
        unique case (notcmp2950_pop21117_mux_s)
            1'b0 : notcmp2950_pop21117_mux_q = in_notcmp2950_pop21117_1;
            1'b1 : notcmp2950_pop21117_mux_q = in_notcmp2950_pop21117_0;
            default : notcmp2950_pop21117_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2950_pop21117(GPOUT,59)
    assign out_notcmp2950_pop21117 = notcmp2950_pop21117_mux_q;

    // notcmp2990_mux(MUX,47)
    assign notcmp2990_mux_s = in_valid_in_0;
    always @(notcmp2990_mux_s or in_notcmp2990_1 or in_notcmp2990_0)
    begin
        unique case (notcmp2990_mux_s)
            1'b0 : notcmp2990_mux_q = in_notcmp2990_1;
            1'b1 : notcmp2990_mux_q = in_notcmp2990_0;
            default : notcmp2990_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2990(GPOUT,60)
    assign out_notcmp2990 = notcmp2990_mux_q;

    // r_026_pop1341_pop18108_mux(MUX,66)
    assign r_026_pop1341_pop18108_mux_s = in_valid_in_0;
    always @(r_026_pop1341_pop18108_mux_s or in_r_026_pop1341_pop18108_1 or in_r_026_pop1341_pop18108_0)
    begin
        unique case (r_026_pop1341_pop18108_mux_s)
            1'b0 : r_026_pop1341_pop18108_mux_q = in_r_026_pop1341_pop18108_1;
            1'b1 : r_026_pop1341_pop18108_mux_q = in_r_026_pop1341_pop18108_0;
            default : r_026_pop1341_pop18108_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1341_pop18108(GPOUT,61)
    assign out_r_026_pop1341_pop18108 = r_026_pop1341_pop18108_mux_q;

    // r_026_pop1375_mux(MUX,67)
    assign r_026_pop1375_mux_s = in_valid_in_0;
    always @(r_026_pop1375_mux_s or in_r_026_pop1375_1 or in_r_026_pop1375_0)
    begin
        unique case (r_026_pop1375_mux_s)
            1'b0 : r_026_pop1375_mux_q = in_r_026_pop1375_1;
            1'b1 : r_026_pop1375_mux_q = in_r_026_pop1375_0;
            default : r_026_pop1375_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1375(GPOUT,62)
    assign out_r_026_pop1375 = r_026_pop1375_mux_q;

    // valid_or(LOGICAL,70)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,68)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,63)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,69)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,64)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,65)
    assign out_valid_out = valid_or_q;

endmodule
