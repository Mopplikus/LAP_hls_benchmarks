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
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B6_merge (
    input wire [31:0] in_c_025_pop1574_0,
    input wire [31:0] in_c_025_pop1574_1,
    input wire [0:0] in_forked32_0,
    input wire [0:0] in_forked32_1,
    input wire [31:0] in_mul2839_pop1780_0,
    input wire [31:0] in_mul2839_pop1780_1,
    input wire [31:0] in_mul2865_0,
    input wire [31:0] in_mul2865_1,
    input wire [0:0] in_notcmp1971_0,
    input wire [0:0] in_notcmp1971_1,
    input wire [0:0] in_notcmp2442_pop1883_0,
    input wire [0:0] in_notcmp2442_pop1883_1,
    input wire [0:0] in_notcmp2470_0,
    input wire [0:0] in_notcmp2470_1,
    input wire [31:0] in_r_026_pop1336_pop1677_0,
    input wire [31:0] in_r_026_pop1336_pop1677_1,
    input wire [31:0] in_r_026_pop1360_0,
    input wire [31:0] in_r_026_pop1360_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_025_pop1574,
    output wire [0:0] out_forked32,
    output wire [31:0] out_mul2839_pop1780,
    output wire [31:0] out_mul2865,
    output wire [0:0] out_notcmp1971,
    output wire [0:0] out_notcmp2442_pop1883,
    output wire [0:0] out_notcmp2470,
    output wire [31:0] out_r_026_pop1336_pop1677,
    output wire [31:0] out_r_026_pop1360,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_025_pop1574_mux_s;
    reg [31:0] c_025_pop1574_mux_q;
    wire [0:0] forked32_mux_s;
    reg [0:0] forked32_mux_q;
    wire [0:0] mul2839_pop1780_mux_s;
    reg [31:0] mul2839_pop1780_mux_q;
    wire [0:0] mul2865_mux_s;
    reg [31:0] mul2865_mux_q;
    wire [0:0] notcmp1971_mux_s;
    reg [0:0] notcmp1971_mux_q;
    wire [0:0] notcmp2442_pop1883_mux_s;
    reg [0:0] notcmp2442_pop1883_mux_q;
    wire [0:0] notcmp2470_mux_s;
    reg [0:0] notcmp2470_mux_q;
    wire [0:0] r_026_pop1336_pop1677_mux_s;
    reg [31:0] r_026_pop1336_pop1677_mux_q;
    wire [0:0] r_026_pop1360_mux_s;
    reg [31:0] r_026_pop1360_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_025_pop1574_mux(MUX,2)
    assign c_025_pop1574_mux_s = in_valid_in_0;
    always @(c_025_pop1574_mux_s or in_c_025_pop1574_1 or in_c_025_pop1574_0)
    begin
        unique case (c_025_pop1574_mux_s)
            1'b0 : c_025_pop1574_mux_q = in_c_025_pop1574_1;
            1'b1 : c_025_pop1574_mux_q = in_c_025_pop1574_0;
            default : c_025_pop1574_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop1574(GPOUT,30)
    assign out_c_025_pop1574 = c_025_pop1574_mux_q;

    // forked32_mux(MUX,3)
    assign forked32_mux_s = in_valid_in_0;
    always @(forked32_mux_s or in_forked32_1 or in_forked32_0)
    begin
        unique case (forked32_mux_s)
            1'b0 : forked32_mux_q = in_forked32_1;
            1'b1 : forked32_mux_q = in_forked32_0;
            default : forked32_mux_q = 1'b0;
        endcase
    end

    // out_forked32(GPOUT,31)
    assign out_forked32 = forked32_mux_q;

    // mul2839_pop1780_mux(MUX,25)
    assign mul2839_pop1780_mux_s = in_valid_in_0;
    always @(mul2839_pop1780_mux_s or in_mul2839_pop1780_1 or in_mul2839_pop1780_0)
    begin
        unique case (mul2839_pop1780_mux_s)
            1'b0 : mul2839_pop1780_mux_q = in_mul2839_pop1780_1;
            1'b1 : mul2839_pop1780_mux_q = in_mul2839_pop1780_0;
            default : mul2839_pop1780_mux_q = 32'b0;
        endcase
    end

    // out_mul2839_pop1780(GPOUT,32)
    assign out_mul2839_pop1780 = mul2839_pop1780_mux_q;

    // mul2865_mux(MUX,26)
    assign mul2865_mux_s = in_valid_in_0;
    always @(mul2865_mux_s or in_mul2865_1 or in_mul2865_0)
    begin
        unique case (mul2865_mux_s)
            1'b0 : mul2865_mux_q = in_mul2865_1;
            1'b1 : mul2865_mux_q = in_mul2865_0;
            default : mul2865_mux_q = 32'b0;
        endcase
    end

    // out_mul2865(GPOUT,33)
    assign out_mul2865 = mul2865_mux_q;

    // notcmp1971_mux(MUX,27)
    assign notcmp1971_mux_s = in_valid_in_0;
    always @(notcmp1971_mux_s or in_notcmp1971_1 or in_notcmp1971_0)
    begin
        unique case (notcmp1971_mux_s)
            1'b0 : notcmp1971_mux_q = in_notcmp1971_1;
            1'b1 : notcmp1971_mux_q = in_notcmp1971_0;
            default : notcmp1971_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1971(GPOUT,34)
    assign out_notcmp1971 = notcmp1971_mux_q;

    // notcmp2442_pop1883_mux(MUX,28)
    assign notcmp2442_pop1883_mux_s = in_valid_in_0;
    always @(notcmp2442_pop1883_mux_s or in_notcmp2442_pop1883_1 or in_notcmp2442_pop1883_0)
    begin
        unique case (notcmp2442_pop1883_mux_s)
            1'b0 : notcmp2442_pop1883_mux_q = in_notcmp2442_pop1883_1;
            1'b1 : notcmp2442_pop1883_mux_q = in_notcmp2442_pop1883_0;
            default : notcmp2442_pop1883_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2442_pop1883(GPOUT,35)
    assign out_notcmp2442_pop1883 = notcmp2442_pop1883_mux_q;

    // notcmp2470_mux(MUX,29)
    assign notcmp2470_mux_s = in_valid_in_0;
    always @(notcmp2470_mux_s or in_notcmp2470_1 or in_notcmp2470_0)
    begin
        unique case (notcmp2470_mux_s)
            1'b0 : notcmp2470_mux_q = in_notcmp2470_1;
            1'b1 : notcmp2470_mux_q = in_notcmp2470_0;
            default : notcmp2470_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2470(GPOUT,36)
    assign out_notcmp2470 = notcmp2470_mux_q;

    // r_026_pop1336_pop1677_mux(MUX,42)
    assign r_026_pop1336_pop1677_mux_s = in_valid_in_0;
    always @(r_026_pop1336_pop1677_mux_s or in_r_026_pop1336_pop1677_1 or in_r_026_pop1336_pop1677_0)
    begin
        unique case (r_026_pop1336_pop1677_mux_s)
            1'b0 : r_026_pop1336_pop1677_mux_q = in_r_026_pop1336_pop1677_1;
            1'b1 : r_026_pop1336_pop1677_mux_q = in_r_026_pop1336_pop1677_0;
            default : r_026_pop1336_pop1677_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1336_pop1677(GPOUT,37)
    assign out_r_026_pop1336_pop1677 = r_026_pop1336_pop1677_mux_q;

    // r_026_pop1360_mux(MUX,43)
    assign r_026_pop1360_mux_s = in_valid_in_0;
    always @(r_026_pop1360_mux_s or in_r_026_pop1360_1 or in_r_026_pop1360_0)
    begin
        unique case (r_026_pop1360_mux_s)
            1'b0 : r_026_pop1360_mux_q = in_r_026_pop1360_1;
            1'b1 : r_026_pop1360_mux_q = in_r_026_pop1360_0;
            default : r_026_pop1360_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1360(GPOUT,38)
    assign out_r_026_pop1360 = r_026_pop1360_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,44)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,39)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,45)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,40)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,41)
    assign out_valid_out = valid_or_q;

endmodule
