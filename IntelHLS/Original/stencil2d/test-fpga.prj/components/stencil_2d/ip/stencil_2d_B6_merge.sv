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
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B6_merge (
    input wire [31:0] in_c_025_pop1571_0,
    input wire [31:0] in_c_025_pop1571_1,
    input wire [31:0] in_mul2838_pop1777_0,
    input wire [31:0] in_mul2838_pop1777_1,
    input wire [31:0] in_mul2862_0,
    input wire [31:0] in_mul2862_1,
    input wire [0:0] in_notcmp1868_0,
    input wire [0:0] in_notcmp1868_1,
    input wire [0:0] in_notcmp2341_pop1880_0,
    input wire [0:0] in_notcmp2341_pop1880_1,
    input wire [0:0] in_notcmp2367_0,
    input wire [0:0] in_notcmp2367_1,
    input wire [31:0] in_r_026_pop1335_pop1674_0,
    input wire [31:0] in_r_026_pop1335_pop1674_1,
    input wire [31:0] in_r_026_pop1357_0,
    input wire [31:0] in_r_026_pop1357_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_025_pop1571,
    output wire [31:0] out_mul2838_pop1777,
    output wire [31:0] out_mul2862,
    output wire [0:0] out_notcmp1868,
    output wire [0:0] out_notcmp2341_pop1880,
    output wire [0:0] out_notcmp2367,
    output wire [31:0] out_r_026_pop1335_pop1674,
    output wire [31:0] out_r_026_pop1357,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_025_pop1571_mux_s;
    reg [31:0] c_025_pop1571_mux_q;
    wire [0:0] mul2838_pop1777_mux_s;
    reg [31:0] mul2838_pop1777_mux_q;
    wire [0:0] mul2862_mux_s;
    reg [31:0] mul2862_mux_q;
    wire [0:0] notcmp1868_mux_s;
    reg [0:0] notcmp1868_mux_q;
    wire [0:0] notcmp2341_pop1880_mux_s;
    reg [0:0] notcmp2341_pop1880_mux_q;
    wire [0:0] notcmp2367_mux_s;
    reg [0:0] notcmp2367_mux_q;
    wire [0:0] r_026_pop1335_pop1674_mux_s;
    reg [31:0] r_026_pop1335_pop1674_mux_q;
    wire [0:0] r_026_pop1357_mux_s;
    reg [31:0] r_026_pop1357_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_025_pop1571_mux(MUX,2)
    assign c_025_pop1571_mux_s = in_valid_in_0;
    always @(c_025_pop1571_mux_s or in_c_025_pop1571_1 or in_c_025_pop1571_0)
    begin
        unique case (c_025_pop1571_mux_s)
            1'b0 : c_025_pop1571_mux_q = in_c_025_pop1571_1;
            1'b1 : c_025_pop1571_mux_q = in_c_025_pop1571_0;
            default : c_025_pop1571_mux_q = 32'b0;
        endcase
    end

    // out_c_025_pop1571(GPOUT,27)
    assign out_c_025_pop1571 = c_025_pop1571_mux_q;

    // mul2838_pop1777_mux(MUX,22)
    assign mul2838_pop1777_mux_s = in_valid_in_0;
    always @(mul2838_pop1777_mux_s or in_mul2838_pop1777_1 or in_mul2838_pop1777_0)
    begin
        unique case (mul2838_pop1777_mux_s)
            1'b0 : mul2838_pop1777_mux_q = in_mul2838_pop1777_1;
            1'b1 : mul2838_pop1777_mux_q = in_mul2838_pop1777_0;
            default : mul2838_pop1777_mux_q = 32'b0;
        endcase
    end

    // out_mul2838_pop1777(GPOUT,28)
    assign out_mul2838_pop1777 = mul2838_pop1777_mux_q;

    // mul2862_mux(MUX,23)
    assign mul2862_mux_s = in_valid_in_0;
    always @(mul2862_mux_s or in_mul2862_1 or in_mul2862_0)
    begin
        unique case (mul2862_mux_s)
            1'b0 : mul2862_mux_q = in_mul2862_1;
            1'b1 : mul2862_mux_q = in_mul2862_0;
            default : mul2862_mux_q = 32'b0;
        endcase
    end

    // out_mul2862(GPOUT,29)
    assign out_mul2862 = mul2862_mux_q;

    // notcmp1868_mux(MUX,24)
    assign notcmp1868_mux_s = in_valid_in_0;
    always @(notcmp1868_mux_s or in_notcmp1868_1 or in_notcmp1868_0)
    begin
        unique case (notcmp1868_mux_s)
            1'b0 : notcmp1868_mux_q = in_notcmp1868_1;
            1'b1 : notcmp1868_mux_q = in_notcmp1868_0;
            default : notcmp1868_mux_q = 1'b0;
        endcase
    end

    // out_notcmp1868(GPOUT,30)
    assign out_notcmp1868 = notcmp1868_mux_q;

    // notcmp2341_pop1880_mux(MUX,25)
    assign notcmp2341_pop1880_mux_s = in_valid_in_0;
    always @(notcmp2341_pop1880_mux_s or in_notcmp2341_pop1880_1 or in_notcmp2341_pop1880_0)
    begin
        unique case (notcmp2341_pop1880_mux_s)
            1'b0 : notcmp2341_pop1880_mux_q = in_notcmp2341_pop1880_1;
            1'b1 : notcmp2341_pop1880_mux_q = in_notcmp2341_pop1880_0;
            default : notcmp2341_pop1880_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2341_pop1880(GPOUT,31)
    assign out_notcmp2341_pop1880 = notcmp2341_pop1880_mux_q;

    // notcmp2367_mux(MUX,26)
    assign notcmp2367_mux_s = in_valid_in_0;
    always @(notcmp2367_mux_s or in_notcmp2367_1 or in_notcmp2367_0)
    begin
        unique case (notcmp2367_mux_s)
            1'b0 : notcmp2367_mux_q = in_notcmp2367_1;
            1'b1 : notcmp2367_mux_q = in_notcmp2367_0;
            default : notcmp2367_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2367(GPOUT,32)
    assign out_notcmp2367 = notcmp2367_mux_q;

    // r_026_pop1335_pop1674_mux(MUX,38)
    assign r_026_pop1335_pop1674_mux_s = in_valid_in_0;
    always @(r_026_pop1335_pop1674_mux_s or in_r_026_pop1335_pop1674_1 or in_r_026_pop1335_pop1674_0)
    begin
        unique case (r_026_pop1335_pop1674_mux_s)
            1'b0 : r_026_pop1335_pop1674_mux_q = in_r_026_pop1335_pop1674_1;
            1'b1 : r_026_pop1335_pop1674_mux_q = in_r_026_pop1335_pop1674_0;
            default : r_026_pop1335_pop1674_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1335_pop1674(GPOUT,33)
    assign out_r_026_pop1335_pop1674 = r_026_pop1335_pop1674_mux_q;

    // r_026_pop1357_mux(MUX,39)
    assign r_026_pop1357_mux_s = in_valid_in_0;
    always @(r_026_pop1357_mux_s or in_r_026_pop1357_1 or in_r_026_pop1357_0)
    begin
        unique case (r_026_pop1357_mux_s)
            1'b0 : r_026_pop1357_mux_q = in_r_026_pop1357_1;
            1'b1 : r_026_pop1357_mux_q = in_r_026_pop1357_0;
            default : r_026_pop1357_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1357(GPOUT,34)
    assign out_r_026_pop1357 = r_026_pop1357_mux_q;

    // valid_or(LOGICAL,42)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,40)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,35)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,41)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,36)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,37)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,43)
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
