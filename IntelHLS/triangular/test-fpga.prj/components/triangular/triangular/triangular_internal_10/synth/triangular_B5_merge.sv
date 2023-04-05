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

// SystemVerilog created from triangular_B5_merge
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_B5_merge (
    input wire [0:0] in_forked68_0,
    input wire [0:0] in_forked68_1,
    input wire [31:0] in_i_041_pop19114_0,
    input wire [31:0] in_i_041_pop19114_1,
    input wire [31:0] in_lim_ext109_0,
    input wire [31:0] in_lim_ext109_1,
    input wire [31:0] in_lim_ext93_pop20115_0,
    input wire [31:0] in_lim_ext93_pop20115_1,
    input wire [0:0] in_notcmp83113_0,
    input wire [0:0] in_notcmp83113_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked68,
    output wire [31:0] out_i_041_pop19114,
    output wire [31:0] out_lim_ext109,
    output wire [31:0] out_lim_ext93_pop20115,
    output wire [0:0] out_notcmp83113,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked68_mux_s;
    reg [0:0] forked68_mux_q;
    wire [0:0] i_041_pop19114_mux_s;
    reg [31:0] i_041_pop19114_mux_q;
    wire [0:0] lim_ext109_mux_s;
    reg [31:0] lim_ext109_mux_q;
    wire [0:0] lim_ext93_pop20115_mux_s;
    reg [31:0] lim_ext93_pop20115_mux_q;
    wire [0:0] notcmp83113_mux_s;
    reg [0:0] notcmp83113_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked68_mux(MUX,2)
    assign forked68_mux_s = in_valid_in_0;
    always @(forked68_mux_s or in_forked68_1 or in_forked68_0)
    begin
        unique case (forked68_mux_s)
            1'b0 : forked68_mux_q = in_forked68_1;
            1'b1 : forked68_mux_q = in_forked68_0;
            default : forked68_mux_q = 1'b0;
        endcase
    end

    // out_forked68(GPOUT,20)
    assign out_forked68 = forked68_mux_q;

    // i_041_pop19114_mux(MUX,3)
    assign i_041_pop19114_mux_s = in_valid_in_0;
    always @(i_041_pop19114_mux_s or in_i_041_pop19114_1 or in_i_041_pop19114_0)
    begin
        unique case (i_041_pop19114_mux_s)
            1'b0 : i_041_pop19114_mux_q = in_i_041_pop19114_1;
            1'b1 : i_041_pop19114_mux_q = in_i_041_pop19114_0;
            default : i_041_pop19114_mux_q = 32'b0;
        endcase
    end

    // out_i_041_pop19114(GPOUT,21)
    assign out_i_041_pop19114 = i_041_pop19114_mux_q;

    // lim_ext109_mux(MUX,17)
    assign lim_ext109_mux_s = in_valid_in_0;
    always @(lim_ext109_mux_s or in_lim_ext109_1 or in_lim_ext109_0)
    begin
        unique case (lim_ext109_mux_s)
            1'b0 : lim_ext109_mux_q = in_lim_ext109_1;
            1'b1 : lim_ext109_mux_q = in_lim_ext109_0;
            default : lim_ext109_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext109(GPOUT,22)
    assign out_lim_ext109 = lim_ext109_mux_q;

    // lim_ext93_pop20115_mux(MUX,18)
    assign lim_ext93_pop20115_mux_s = in_valid_in_0;
    always @(lim_ext93_pop20115_mux_s or in_lim_ext93_pop20115_1 or in_lim_ext93_pop20115_0)
    begin
        unique case (lim_ext93_pop20115_mux_s)
            1'b0 : lim_ext93_pop20115_mux_q = in_lim_ext93_pop20115_1;
            1'b1 : lim_ext93_pop20115_mux_q = in_lim_ext93_pop20115_0;
            default : lim_ext93_pop20115_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext93_pop20115(GPOUT,23)
    assign out_lim_ext93_pop20115 = lim_ext93_pop20115_mux_q;

    // notcmp83113_mux(MUX,19)
    assign notcmp83113_mux_s = in_valid_in_0;
    always @(notcmp83113_mux_s or in_notcmp83113_1 or in_notcmp83113_0)
    begin
        unique case (notcmp83113_mux_s)
            1'b0 : notcmp83113_mux_q = in_notcmp83113_1;
            1'b1 : notcmp83113_mux_q = in_notcmp83113_0;
            default : notcmp83113_mux_q = 1'b0;
        endcase
    end

    // out_notcmp83113(GPOUT,24)
    assign out_notcmp83113 = notcmp83113_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
