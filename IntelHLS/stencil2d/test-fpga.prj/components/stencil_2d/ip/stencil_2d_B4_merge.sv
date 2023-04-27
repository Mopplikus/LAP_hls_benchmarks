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

// SystemVerilog created from stencil_2d_B4_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B4_merge (
    input wire [31:0] in_mul2858_0,
    input wire [31:0] in_mul2858_1,
    input wire [0:0] in_notcmp2363_0,
    input wire [0:0] in_notcmp2363_1,
    input wire [31:0] in_r_026_pop1353_0,
    input wire [31:0] in_r_026_pop1353_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_mul2858,
    output wire [0:0] out_notcmp2363,
    output wire [31:0] out_r_026_pop1353,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] mul2858_mux_s;
    reg [31:0] mul2858_mux_q;
    wire [0:0] notcmp2363_mux_s;
    reg [0:0] notcmp2363_mux_q;
    wire [0:0] r_026_pop1353_mux_s;
    reg [31:0] r_026_pop1353_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;
    reg [0:0] rst_sync_rst_sclrn;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // mul2858_mux(MUX,11)
    assign mul2858_mux_s = in_valid_in_0;
    always @(mul2858_mux_s or in_mul2858_1 or in_mul2858_0)
    begin
        unique case (mul2858_mux_s)
            1'b0 : mul2858_mux_q = in_mul2858_1;
            1'b1 : mul2858_mux_q = in_mul2858_0;
            default : mul2858_mux_q = 32'b0;
        endcase
    end

    // out_mul2858(GPOUT,13)
    assign out_mul2858 = mul2858_mux_q;

    // notcmp2363_mux(MUX,12)
    assign notcmp2363_mux_s = in_valid_in_0;
    always @(notcmp2363_mux_s or in_notcmp2363_1 or in_notcmp2363_0)
    begin
        unique case (notcmp2363_mux_s)
            1'b0 : notcmp2363_mux_q = in_notcmp2363_1;
            1'b1 : notcmp2363_mux_q = in_notcmp2363_0;
            default : notcmp2363_mux_q = 1'b0;
        endcase
    end

    // out_notcmp2363(GPOUT,14)
    assign out_notcmp2363 = notcmp2363_mux_q;

    // r_026_pop1353_mux(MUX,19)
    assign r_026_pop1353_mux_s = in_valid_in_0;
    always @(r_026_pop1353_mux_s or in_r_026_pop1353_1 or in_r_026_pop1353_0)
    begin
        unique case (r_026_pop1353_mux_s)
            1'b0 : r_026_pop1353_mux_q = in_r_026_pop1353_1;
            1'b1 : r_026_pop1353_mux_q = in_r_026_pop1353_0;
            default : r_026_pop1353_mux_q = 32'b0;
        endcase
    end

    // out_r_026_pop1353(GPOUT,15)
    assign out_r_026_pop1353 = r_026_pop1353_mux_q;

    // valid_or(LOGICAL,22)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,20)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,21)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,17)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,18)
    assign out_valid_out = valid_or_q;

    // rst_sync(RESETSYNC,23)
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
