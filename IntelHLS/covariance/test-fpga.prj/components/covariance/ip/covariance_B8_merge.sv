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

// SystemVerilog created from covariance_B8_merge
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B8_merge (
    input wire [0:0] in_forked90_0,
    input wire [0:0] in_forked90_1,
    input wire [31:0] in_lim_ext77_pop49160_0,
    input wire [31:0] in_lim_ext77_pop49160_1,
    input wire [31:0] in_reorder_limiter_enter129_0,
    input wire [31:0] in_reorder_limiter_enter129_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked90,
    output wire [31:0] out_lim_ext77_pop49160,
    output wire [31:0] out_reorder_limiter_enter129,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked90_mux_s;
    reg [0:0] forked90_mux_q;
    wire [0:0] lim_ext77_pop49160_mux_s;
    reg [31:0] lim_ext77_pop49160_mux_q;
    wire [0:0] reorder_limiter_enter129_mux_s;
    reg [31:0] reorder_limiter_enter129_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked90_mux(MUX,2)
    assign forked90_mux_s = in_valid_in_0;
    always @(forked90_mux_s or in_forked90_1 or in_forked90_0)
    begin
        unique case (forked90_mux_s)
            1'b0 : forked90_mux_q = in_forked90_1;
            1'b1 : forked90_mux_q = in_forked90_0;
            default : forked90_mux_q = 1'b0;
        endcase
    end

    // out_forked90(GPOUT,13)
    assign out_forked90 = forked90_mux_q;

    // lim_ext77_pop49160_mux(MUX,12)
    assign lim_ext77_pop49160_mux_s = in_valid_in_0;
    always @(lim_ext77_pop49160_mux_s or in_lim_ext77_pop49160_1 or in_lim_ext77_pop49160_0)
    begin
        unique case (lim_ext77_pop49160_mux_s)
            1'b0 : lim_ext77_pop49160_mux_q = in_lim_ext77_pop49160_1;
            1'b1 : lim_ext77_pop49160_mux_q = in_lim_ext77_pop49160_0;
            default : lim_ext77_pop49160_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext77_pop49160(GPOUT,14)
    assign out_lim_ext77_pop49160 = lim_ext77_pop49160_mux_q;

    // reorder_limiter_enter129_mux(MUX,19)
    assign reorder_limiter_enter129_mux_s = in_valid_in_0;
    always @(reorder_limiter_enter129_mux_s or in_reorder_limiter_enter129_1 or in_reorder_limiter_enter129_0)
    begin
        unique case (reorder_limiter_enter129_mux_s)
            1'b0 : reorder_limiter_enter129_mux_q = in_reorder_limiter_enter129_1;
            1'b1 : reorder_limiter_enter129_mux_q = in_reorder_limiter_enter129_0;
            default : reorder_limiter_enter129_mux_q = 32'b0;
        endcase
    end

    // out_reorder_limiter_enter129(GPOUT,15)
    assign out_reorder_limiter_enter129 = reorder_limiter_enter129_mux_q;

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

endmodule
