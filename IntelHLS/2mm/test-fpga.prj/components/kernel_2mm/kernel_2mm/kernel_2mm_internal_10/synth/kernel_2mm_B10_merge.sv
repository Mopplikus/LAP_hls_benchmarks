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

// SystemVerilog created from kernel_2mm_B10_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B10_merge (
    input wire [63:0] in_arrayidx606152_0,
    input wire [63:0] in_arrayidx606152_1,
    input wire [0:0] in_forked66_0,
    input wire [0:0] in_forked66_1,
    input wire [31:0] in_i47_073_pop25126_pop37149_0,
    input wire [31:0] in_i47_073_pop25126_pop37149_1,
    input wire [31:0] in_i47_073_pop25148_0,
    input wire [31:0] in_i47_073_pop25148_1,
    input wire [63:0] in_idxprom57150_0,
    input wire [63:0] in_idxprom57150_1,
    input wire [63:0] in_idxprom59151_0,
    input wire [63:0] in_idxprom59151_1,
    input wire [0:0] in_notcmp81153_0,
    input wire [0:0] in_notcmp81153_1,
    input wire [0:0] in_notcmp86122_pop36154_0,
    input wire [0:0] in_notcmp86122_pop36154_1,
    input wire [0:0] in_notcmp86145_0,
    input wire [0:0] in_notcmp86145_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_2mm14_0,
    input wire [31:0] in_unnamed_kernel_2mm14_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx606152,
    output wire [0:0] out_forked66,
    output wire [31:0] out_i47_073_pop25126_pop37149,
    output wire [31:0] out_i47_073_pop25148,
    output wire [63:0] out_idxprom57150,
    output wire [63:0] out_idxprom59151,
    output wire [0:0] out_notcmp81153,
    output wire [0:0] out_notcmp86122_pop36154,
    output wire [0:0] out_notcmp86145,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm14,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx606152_mux_s;
    reg [63:0] arrayidx606152_mux_q;
    wire [0:0] forked66_mux_s;
    reg [0:0] forked66_mux_q;
    wire [0:0] i47_073_pop25126_pop37149_mux_s;
    reg [31:0] i47_073_pop25126_pop37149_mux_q;
    wire [0:0] i47_073_pop25148_mux_s;
    reg [31:0] i47_073_pop25148_mux_q;
    wire [0:0] idxprom57150_mux_s;
    reg [63:0] idxprom57150_mux_q;
    wire [0:0] idxprom59151_mux_s;
    reg [63:0] idxprom59151_mux_q;
    wire [0:0] notcmp81153_mux_s;
    reg [0:0] notcmp81153_mux_q;
    wire [0:0] notcmp86122_pop36154_mux_s;
    reg [0:0] notcmp86122_pop36154_mux_q;
    wire [0:0] notcmp86145_mux_s;
    reg [0:0] notcmp86145_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_2mm14_mux_s;
    reg [31:0] unnamed_kernel_2mm14_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx606152_mux(MUX,2)
    assign arrayidx606152_mux_s = in_valid_in_0;
    always @(arrayidx606152_mux_s or in_arrayidx606152_1 or in_arrayidx606152_0)
    begin
        unique case (arrayidx606152_mux_s)
            1'b0 : arrayidx606152_mux_q = in_arrayidx606152_1;
            1'b1 : arrayidx606152_mux_q = in_arrayidx606152_0;
            default : arrayidx606152_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx606152(GPOUT,34)
    assign out_arrayidx606152 = arrayidx606152_mux_q;

    // forked66_mux(MUX,3)
    assign forked66_mux_s = in_valid_in_0;
    always @(forked66_mux_s or in_forked66_1 or in_forked66_0)
    begin
        unique case (forked66_mux_s)
            1'b0 : forked66_mux_q = in_forked66_1;
            1'b1 : forked66_mux_q = in_forked66_0;
            default : forked66_mux_q = 1'b0;
        endcase
    end

    // out_forked66(GPOUT,35)
    assign out_forked66 = forked66_mux_q;

    // i47_073_pop25126_pop37149_mux(MUX,4)
    assign i47_073_pop25126_pop37149_mux_s = in_valid_in_0;
    always @(i47_073_pop25126_pop37149_mux_s or in_i47_073_pop25126_pop37149_1 or in_i47_073_pop25126_pop37149_0)
    begin
        unique case (i47_073_pop25126_pop37149_mux_s)
            1'b0 : i47_073_pop25126_pop37149_mux_q = in_i47_073_pop25126_pop37149_1;
            1'b1 : i47_073_pop25126_pop37149_mux_q = in_i47_073_pop25126_pop37149_0;
            default : i47_073_pop25126_pop37149_mux_q = 32'b0;
        endcase
    end

    // out_i47_073_pop25126_pop37149(GPOUT,36)
    assign out_i47_073_pop25126_pop37149 = i47_073_pop25126_pop37149_mux_q;

    // i47_073_pop25148_mux(MUX,5)
    assign i47_073_pop25148_mux_s = in_valid_in_0;
    always @(i47_073_pop25148_mux_s or in_i47_073_pop25148_1 or in_i47_073_pop25148_0)
    begin
        unique case (i47_073_pop25148_mux_s)
            1'b0 : i47_073_pop25148_mux_q = in_i47_073_pop25148_1;
            1'b1 : i47_073_pop25148_mux_q = in_i47_073_pop25148_0;
            default : i47_073_pop25148_mux_q = 32'b0;
        endcase
    end

    // out_i47_073_pop25148(GPOUT,37)
    assign out_i47_073_pop25148 = i47_073_pop25148_mux_q;

    // idxprom57150_mux(MUX,6)
    assign idxprom57150_mux_s = in_valid_in_0;
    always @(idxprom57150_mux_s or in_idxprom57150_1 or in_idxprom57150_0)
    begin
        unique case (idxprom57150_mux_s)
            1'b0 : idxprom57150_mux_q = in_idxprom57150_1;
            1'b1 : idxprom57150_mux_q = in_idxprom57150_0;
            default : idxprom57150_mux_q = 64'b0;
        endcase
    end

    // out_idxprom57150(GPOUT,38)
    assign out_idxprom57150 = idxprom57150_mux_q;

    // idxprom59151_mux(MUX,7)
    assign idxprom59151_mux_s = in_valid_in_0;
    always @(idxprom59151_mux_s or in_idxprom59151_1 or in_idxprom59151_0)
    begin
        unique case (idxprom59151_mux_s)
            1'b0 : idxprom59151_mux_q = in_idxprom59151_1;
            1'b1 : idxprom59151_mux_q = in_idxprom59151_0;
            default : idxprom59151_mux_q = 64'b0;
        endcase
    end

    // out_idxprom59151(GPOUT,39)
    assign out_idxprom59151 = idxprom59151_mux_q;

    // notcmp81153_mux(MUX,31)
    assign notcmp81153_mux_s = in_valid_in_0;
    always @(notcmp81153_mux_s or in_notcmp81153_1 or in_notcmp81153_0)
    begin
        unique case (notcmp81153_mux_s)
            1'b0 : notcmp81153_mux_q = in_notcmp81153_1;
            1'b1 : notcmp81153_mux_q = in_notcmp81153_0;
            default : notcmp81153_mux_q = 1'b0;
        endcase
    end

    // out_notcmp81153(GPOUT,40)
    assign out_notcmp81153 = notcmp81153_mux_q;

    // notcmp86122_pop36154_mux(MUX,32)
    assign notcmp86122_pop36154_mux_s = in_valid_in_0;
    always @(notcmp86122_pop36154_mux_s or in_notcmp86122_pop36154_1 or in_notcmp86122_pop36154_0)
    begin
        unique case (notcmp86122_pop36154_mux_s)
            1'b0 : notcmp86122_pop36154_mux_q = in_notcmp86122_pop36154_1;
            1'b1 : notcmp86122_pop36154_mux_q = in_notcmp86122_pop36154_0;
            default : notcmp86122_pop36154_mux_q = 1'b0;
        endcase
    end

    // out_notcmp86122_pop36154(GPOUT,41)
    assign out_notcmp86122_pop36154 = notcmp86122_pop36154_mux_q;

    // notcmp86145_mux(MUX,33)
    assign notcmp86145_mux_s = in_valid_in_0;
    always @(notcmp86145_mux_s or in_notcmp86145_1 or in_notcmp86145_0)
    begin
        unique case (notcmp86145_mux_s)
            1'b0 : notcmp86145_mux_q = in_notcmp86145_1;
            1'b1 : notcmp86145_mux_q = in_notcmp86145_0;
            default : notcmp86145_mux_q = 1'b0;
        endcase
    end

    // out_notcmp86145(GPOUT,42)
    assign out_notcmp86145 = notcmp86145_mux_q;

    // valid_or(LOGICAL,50)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,47)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,43)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,48)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,44)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // unnamed_kernel_2mm14_mux(MUX,49)
    assign unnamed_kernel_2mm14_mux_s = in_valid_in_0;
    always @(unnamed_kernel_2mm14_mux_s or in_unnamed_kernel_2mm14_1 or in_unnamed_kernel_2mm14_0)
    begin
        unique case (unnamed_kernel_2mm14_mux_s)
            1'b0 : unnamed_kernel_2mm14_mux_q = in_unnamed_kernel_2mm14_1;
            1'b1 : unnamed_kernel_2mm14_mux_q = in_unnamed_kernel_2mm14_0;
            default : unnamed_kernel_2mm14_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_2mm14(GPOUT,45)
    assign out_unnamed_kernel_2mm14 = unnamed_kernel_2mm14_mux_q;

    // out_valid_out(GPOUT,46)
    assign out_valid_out = valid_or_q;

endmodule
