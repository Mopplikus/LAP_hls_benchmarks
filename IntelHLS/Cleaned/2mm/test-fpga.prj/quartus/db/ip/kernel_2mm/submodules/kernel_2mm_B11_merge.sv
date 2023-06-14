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

// SystemVerilog created from kernel_2mm_B11_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B11_merge (
    input wire [63:0] in_arrayidx243147_0,
    input wire [63:0] in_arrayidx243147_1,
    input wire [0:0] in_forked52_0,
    input wire [0:0] in_forked52_1,
    input wire [31:0] in_i11_082_pop23108_pop35145_0,
    input wire [31:0] in_i11_082_pop23108_pop35145_1,
    input wire [31:0] in_i11_082_pop23138_0,
    input wire [31:0] in_i11_082_pop23138_1,
    input wire [31:0] in_j16_081_pop34146_0,
    input wire [31:0] in_j16_081_pop34146_1,
    input wire [31:0] in_mul_add26110_pop36149_0,
    input wire [31:0] in_mul_add26110_pop36149_1,
    input wire [31:0] in_mul_add26141_0,
    input wire [31:0] in_mul_add26141_1,
    input wire [0:0] in_notcmp67148_0,
    input wire [0:0] in_notcmp67148_1,
    input wire [0:0] in_notcmp72112_pop37150_0,
    input wire [0:0] in_notcmp72112_pop37150_1,
    input wire [0:0] in_notcmp72144_0,
    input wire [0:0] in_notcmp72144_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_2mm12_0,
    input wire [31:0] in_unnamed_kernel_2mm12_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx243147,
    output wire [0:0] out_forked52,
    output wire [31:0] out_i11_082_pop23108_pop35145,
    output wire [31:0] out_i11_082_pop23138,
    output wire [31:0] out_j16_081_pop34146,
    output wire [31:0] out_mul_add26110_pop36149,
    output wire [31:0] out_mul_add26141,
    output wire [0:0] out_notcmp67148,
    output wire [0:0] out_notcmp72112_pop37150,
    output wire [0:0] out_notcmp72144,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm12,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx243147_mux_s;
    reg [63:0] arrayidx243147_mux_q;
    wire [0:0] forked52_mux_s;
    reg [0:0] forked52_mux_q;
    wire [0:0] i11_082_pop23108_pop35145_mux_s;
    reg [31:0] i11_082_pop23108_pop35145_mux_q;
    wire [0:0] i11_082_pop23138_mux_s;
    reg [31:0] i11_082_pop23138_mux_q;
    wire [0:0] j16_081_pop34146_mux_s;
    reg [31:0] j16_081_pop34146_mux_q;
    wire [0:0] mul_add26110_pop36149_mux_s;
    reg [31:0] mul_add26110_pop36149_mux_q;
    wire [0:0] mul_add26141_mux_s;
    reg [31:0] mul_add26141_mux_q;
    wire [0:0] notcmp67148_mux_s;
    reg [0:0] notcmp67148_mux_q;
    wire [0:0] notcmp72112_pop37150_mux_s;
    reg [0:0] notcmp72112_pop37150_mux_q;
    wire [0:0] notcmp72144_mux_s;
    reg [0:0] notcmp72144_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_2mm12_mux_s;
    reg [31:0] unnamed_kernel_2mm12_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx243147_mux(MUX,2)
    assign arrayidx243147_mux_s = in_valid_in_0;
    always @(arrayidx243147_mux_s or in_arrayidx243147_1 or in_arrayidx243147_0)
    begin
        unique case (arrayidx243147_mux_s)
            1'b0 : arrayidx243147_mux_q = in_arrayidx243147_1;
            1'b1 : arrayidx243147_mux_q = in_arrayidx243147_0;
            default : arrayidx243147_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx243147(GPOUT,37)
    assign out_arrayidx243147 = arrayidx243147_mux_q;

    // forked52_mux(MUX,3)
    assign forked52_mux_s = in_valid_in_0;
    always @(forked52_mux_s or in_forked52_1 or in_forked52_0)
    begin
        unique case (forked52_mux_s)
            1'b0 : forked52_mux_q = in_forked52_1;
            1'b1 : forked52_mux_q = in_forked52_0;
            default : forked52_mux_q = 1'b0;
        endcase
    end

    // out_forked52(GPOUT,38)
    assign out_forked52 = forked52_mux_q;

    // i11_082_pop23108_pop35145_mux(MUX,4)
    assign i11_082_pop23108_pop35145_mux_s = in_valid_in_0;
    always @(i11_082_pop23108_pop35145_mux_s or in_i11_082_pop23108_pop35145_1 or in_i11_082_pop23108_pop35145_0)
    begin
        unique case (i11_082_pop23108_pop35145_mux_s)
            1'b0 : i11_082_pop23108_pop35145_mux_q = in_i11_082_pop23108_pop35145_1;
            1'b1 : i11_082_pop23108_pop35145_mux_q = in_i11_082_pop23108_pop35145_0;
            default : i11_082_pop23108_pop35145_mux_q = 32'b0;
        endcase
    end

    // out_i11_082_pop23108_pop35145(GPOUT,39)
    assign out_i11_082_pop23108_pop35145 = i11_082_pop23108_pop35145_mux_q;

    // i11_082_pop23138_mux(MUX,5)
    assign i11_082_pop23138_mux_s = in_valid_in_0;
    always @(i11_082_pop23138_mux_s or in_i11_082_pop23138_1 or in_i11_082_pop23138_0)
    begin
        unique case (i11_082_pop23138_mux_s)
            1'b0 : i11_082_pop23138_mux_q = in_i11_082_pop23138_1;
            1'b1 : i11_082_pop23138_mux_q = in_i11_082_pop23138_0;
            default : i11_082_pop23138_mux_q = 32'b0;
        endcase
    end

    // out_i11_082_pop23138(GPOUT,40)
    assign out_i11_082_pop23138 = i11_082_pop23138_mux_q;

    // j16_081_pop34146_mux(MUX,31)
    assign j16_081_pop34146_mux_s = in_valid_in_0;
    always @(j16_081_pop34146_mux_s or in_j16_081_pop34146_1 or in_j16_081_pop34146_0)
    begin
        unique case (j16_081_pop34146_mux_s)
            1'b0 : j16_081_pop34146_mux_q = in_j16_081_pop34146_1;
            1'b1 : j16_081_pop34146_mux_q = in_j16_081_pop34146_0;
            default : j16_081_pop34146_mux_q = 32'b0;
        endcase
    end

    // out_j16_081_pop34146(GPOUT,41)
    assign out_j16_081_pop34146 = j16_081_pop34146_mux_q;

    // mul_add26110_pop36149_mux(MUX,32)
    assign mul_add26110_pop36149_mux_s = in_valid_in_0;
    always @(mul_add26110_pop36149_mux_s or in_mul_add26110_pop36149_1 or in_mul_add26110_pop36149_0)
    begin
        unique case (mul_add26110_pop36149_mux_s)
            1'b0 : mul_add26110_pop36149_mux_q = in_mul_add26110_pop36149_1;
            1'b1 : mul_add26110_pop36149_mux_q = in_mul_add26110_pop36149_0;
            default : mul_add26110_pop36149_mux_q = 32'b0;
        endcase
    end

    // out_mul_add26110_pop36149(GPOUT,42)
    assign out_mul_add26110_pop36149 = mul_add26110_pop36149_mux_q;

    // mul_add26141_mux(MUX,33)
    assign mul_add26141_mux_s = in_valid_in_0;
    always @(mul_add26141_mux_s or in_mul_add26141_1 or in_mul_add26141_0)
    begin
        unique case (mul_add26141_mux_s)
            1'b0 : mul_add26141_mux_q = in_mul_add26141_1;
            1'b1 : mul_add26141_mux_q = in_mul_add26141_0;
            default : mul_add26141_mux_q = 32'b0;
        endcase
    end

    // out_mul_add26141(GPOUT,43)
    assign out_mul_add26141 = mul_add26141_mux_q;

    // notcmp67148_mux(MUX,34)
    assign notcmp67148_mux_s = in_valid_in_0;
    always @(notcmp67148_mux_s or in_notcmp67148_1 or in_notcmp67148_0)
    begin
        unique case (notcmp67148_mux_s)
            1'b0 : notcmp67148_mux_q = in_notcmp67148_1;
            1'b1 : notcmp67148_mux_q = in_notcmp67148_0;
            default : notcmp67148_mux_q = 1'b0;
        endcase
    end

    // out_notcmp67148(GPOUT,44)
    assign out_notcmp67148 = notcmp67148_mux_q;

    // notcmp72112_pop37150_mux(MUX,35)
    assign notcmp72112_pop37150_mux_s = in_valid_in_0;
    always @(notcmp72112_pop37150_mux_s or in_notcmp72112_pop37150_1 or in_notcmp72112_pop37150_0)
    begin
        unique case (notcmp72112_pop37150_mux_s)
            1'b0 : notcmp72112_pop37150_mux_q = in_notcmp72112_pop37150_1;
            1'b1 : notcmp72112_pop37150_mux_q = in_notcmp72112_pop37150_0;
            default : notcmp72112_pop37150_mux_q = 1'b0;
        endcase
    end

    // out_notcmp72112_pop37150(GPOUT,45)
    assign out_notcmp72112_pop37150 = notcmp72112_pop37150_mux_q;

    // notcmp72144_mux(MUX,36)
    assign notcmp72144_mux_s = in_valid_in_0;
    always @(notcmp72144_mux_s or in_notcmp72144_1 or in_notcmp72144_0)
    begin
        unique case (notcmp72144_mux_s)
            1'b0 : notcmp72144_mux_q = in_notcmp72144_1;
            1'b1 : notcmp72144_mux_q = in_notcmp72144_0;
            default : notcmp72144_mux_q = 1'b0;
        endcase
    end

    // out_notcmp72144(GPOUT,46)
    assign out_notcmp72144 = notcmp72144_mux_q;

    // valid_or(LOGICAL,54)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,51)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,47)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,52)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,48)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kernel_2mm12_mux(MUX,53)
    assign unnamed_kernel_2mm12_mux_s = in_valid_in_0;
    always @(unnamed_kernel_2mm12_mux_s or in_unnamed_kernel_2mm12_1 or in_unnamed_kernel_2mm12_0)
    begin
        unique case (unnamed_kernel_2mm12_mux_s)
            1'b0 : unnamed_kernel_2mm12_mux_q = in_unnamed_kernel_2mm12_1;
            1'b1 : unnamed_kernel_2mm12_mux_q = in_unnamed_kernel_2mm12_0;
            default : unnamed_kernel_2mm12_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_2mm12(GPOUT,49)
    assign out_unnamed_kernel_2mm12 = unnamed_kernel_2mm12_mux_q;

    // out_valid_out(GPOUT,50)
    assign out_valid_out = valid_or_q;

endmodule
