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

// SystemVerilog created from kernel_2mm_B9_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B9_merge (
    input wire [0:0] in_forked107_0,
    input wire [0:0] in_forked107_1,
    input wire [31:0] in_i11_082_pop23136_0,
    input wire [31:0] in_i11_082_pop23136_1,
    input wire [31:0] in_mul_add26139_0,
    input wire [31:0] in_mul_add26139_1,
    input wire [0:0] in_notcmp72142_0,
    input wire [0:0] in_notcmp72142_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked107,
    output wire [31:0] out_i11_082_pop23136,
    output wire [31:0] out_mul_add26139,
    output wire [0:0] out_notcmp72142,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked107_mux_s;
    reg [0:0] forked107_mux_q;
    wire [0:0] i11_082_pop23136_mux_s;
    reg [31:0] i11_082_pop23136_mux_q;
    wire [0:0] mul_add26139_mux_s;
    reg [31:0] mul_add26139_mux_q;
    wire [0:0] notcmp72142_mux_s;
    reg [0:0] notcmp72142_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked107_mux(MUX,2)
    assign forked107_mux_s = in_valid_in_0;
    always @(forked107_mux_s or in_forked107_1 or in_forked107_0)
    begin
        unique case (forked107_mux_s)
            1'b0 : forked107_mux_q = in_forked107_1;
            1'b1 : forked107_mux_q = in_forked107_0;
            default : forked107_mux_q = 1'b0;
        endcase
    end

    // out_forked107(GPOUT,17)
    assign out_forked107 = forked107_mux_q;

    // i11_082_pop23136_mux(MUX,3)
    assign i11_082_pop23136_mux_s = in_valid_in_0;
    always @(i11_082_pop23136_mux_s or in_i11_082_pop23136_1 or in_i11_082_pop23136_0)
    begin
        unique case (i11_082_pop23136_mux_s)
            1'b0 : i11_082_pop23136_mux_q = in_i11_082_pop23136_1;
            1'b1 : i11_082_pop23136_mux_q = in_i11_082_pop23136_0;
            default : i11_082_pop23136_mux_q = 32'b0;
        endcase
    end

    // out_i11_082_pop23136(GPOUT,18)
    assign out_i11_082_pop23136 = i11_082_pop23136_mux_q;

    // mul_add26139_mux(MUX,15)
    assign mul_add26139_mux_s = in_valid_in_0;
    always @(mul_add26139_mux_s or in_mul_add26139_1 or in_mul_add26139_0)
    begin
        unique case (mul_add26139_mux_s)
            1'b0 : mul_add26139_mux_q = in_mul_add26139_1;
            1'b1 : mul_add26139_mux_q = in_mul_add26139_0;
            default : mul_add26139_mux_q = 32'b0;
        endcase
    end

    // out_mul_add26139(GPOUT,19)
    assign out_mul_add26139 = mul_add26139_mux_q;

    // notcmp72142_mux(MUX,16)
    assign notcmp72142_mux_s = in_valid_in_0;
    always @(notcmp72142_mux_s or in_notcmp72142_1 or in_notcmp72142_0)
    begin
        unique case (notcmp72142_mux_s)
            1'b0 : notcmp72142_mux_q = in_notcmp72142_1;
            1'b1 : notcmp72142_mux_q = in_notcmp72142_0;
            default : notcmp72142_mux_q = 1'b0;
        endcase
    end

    // out_notcmp72142(GPOUT,20)
    assign out_notcmp72142 = notcmp72142_mux_q;

    // valid_or(LOGICAL,26)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,24)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,25)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = valid_or_q;

endmodule
