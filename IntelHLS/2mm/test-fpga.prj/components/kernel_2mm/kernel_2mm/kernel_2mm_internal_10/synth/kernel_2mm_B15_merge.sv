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

// SystemVerilog created from kernel_2mm_B15_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:28 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B15_merge (
    input wire [63:0] in_arrayidx1019170_0,
    input wire [63:0] in_arrayidx1019170_1,
    input wire [0:0] in_forked45_0,
    input wire [0:0] in_forked45_1,
    input wire [63:0] in_idxprom100168_0,
    input wire [63:0] in_idxprom100168_1,
    input wire [63:0] in_idxprom57129_pop41169_0,
    input wire [63:0] in_idxprom57129_pop41169_1,
    input wire [63:0] in_idxprom57133_pop55157_0,
    input wire [63:0] in_idxprom57133_pop55157_1,
    input wire [31:0] in_mul102171_0,
    input wire [31:0] in_mul102171_1,
    input wire [0:0] in_notcmp60172_0,
    input wire [0:0] in_notcmp60172_1,
    input wire [0:0] in_notcmp86123_pop53163_0,
    input wire [0:0] in_notcmp86123_pop53163_1,
    input wire [0:0] in_notcmp86124_pop40173_0,
    input wire [0:0] in_notcmp86124_pop40173_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx1019170,
    output wire [0:0] out_forked45,
    output wire [63:0] out_idxprom100168,
    output wire [63:0] out_idxprom57129_pop41169,
    output wire [63:0] out_idxprom57133_pop55157,
    output wire [31:0] out_mul102171,
    output wire [0:0] out_notcmp60172,
    output wire [0:0] out_notcmp86123_pop53163,
    output wire [0:0] out_notcmp86124_pop40173,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx1019170_mux_s;
    reg [63:0] arrayidx1019170_mux_q;
    wire [0:0] forked45_mux_s;
    reg [0:0] forked45_mux_q;
    wire [0:0] idxprom100168_mux_s;
    reg [63:0] idxprom100168_mux_q;
    wire [0:0] idxprom57129_pop41169_mux_s;
    reg [63:0] idxprom57129_pop41169_mux_q;
    wire [0:0] idxprom57133_pop55157_mux_s;
    reg [63:0] idxprom57133_pop55157_mux_q;
    wire [0:0] mul102171_mux_s;
    reg [31:0] mul102171_mux_q;
    wire [0:0] notcmp60172_mux_s;
    reg [0:0] notcmp60172_mux_q;
    wire [0:0] notcmp86123_pop53163_mux_s;
    reg [0:0] notcmp86123_pop53163_mux_q;
    wire [0:0] notcmp86124_pop40173_mux_s;
    reg [0:0] notcmp86124_pop40173_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx1019170_mux(MUX,2)
    assign arrayidx1019170_mux_s = in_valid_in_0;
    always @(arrayidx1019170_mux_s or in_arrayidx1019170_1 or in_arrayidx1019170_0)
    begin
        unique case (arrayidx1019170_mux_s)
            1'b0 : arrayidx1019170_mux_q = in_arrayidx1019170_1;
            1'b1 : arrayidx1019170_mux_q = in_arrayidx1019170_0;
            default : arrayidx1019170_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx1019170(GPOUT,32)
    assign out_arrayidx1019170 = arrayidx1019170_mux_q;

    // forked45_mux(MUX,3)
    assign forked45_mux_s = in_valid_in_0;
    always @(forked45_mux_s or in_forked45_1 or in_forked45_0)
    begin
        unique case (forked45_mux_s)
            1'b0 : forked45_mux_q = in_forked45_1;
            1'b1 : forked45_mux_q = in_forked45_0;
            default : forked45_mux_q = 1'b0;
        endcase
    end

    // out_forked45(GPOUT,33)
    assign out_forked45 = forked45_mux_q;

    // idxprom100168_mux(MUX,4)
    assign idxprom100168_mux_s = in_valid_in_0;
    always @(idxprom100168_mux_s or in_idxprom100168_1 or in_idxprom100168_0)
    begin
        unique case (idxprom100168_mux_s)
            1'b0 : idxprom100168_mux_q = in_idxprom100168_1;
            1'b1 : idxprom100168_mux_q = in_idxprom100168_0;
            default : idxprom100168_mux_q = 64'b0;
        endcase
    end

    // out_idxprom100168(GPOUT,34)
    assign out_idxprom100168 = idxprom100168_mux_q;

    // idxprom57129_pop41169_mux(MUX,5)
    assign idxprom57129_pop41169_mux_s = in_valid_in_0;
    always @(idxprom57129_pop41169_mux_s or in_idxprom57129_pop41169_1 or in_idxprom57129_pop41169_0)
    begin
        unique case (idxprom57129_pop41169_mux_s)
            1'b0 : idxprom57129_pop41169_mux_q = in_idxprom57129_pop41169_1;
            1'b1 : idxprom57129_pop41169_mux_q = in_idxprom57129_pop41169_0;
            default : idxprom57129_pop41169_mux_q = 64'b0;
        endcase
    end

    // out_idxprom57129_pop41169(GPOUT,35)
    assign out_idxprom57129_pop41169 = idxprom57129_pop41169_mux_q;

    // idxprom57133_pop55157_mux(MUX,6)
    assign idxprom57133_pop55157_mux_s = in_valid_in_0;
    always @(idxprom57133_pop55157_mux_s or in_idxprom57133_pop55157_1 or in_idxprom57133_pop55157_0)
    begin
        unique case (idxprom57133_pop55157_mux_s)
            1'b0 : idxprom57133_pop55157_mux_q = in_idxprom57133_pop55157_1;
            1'b1 : idxprom57133_pop55157_mux_q = in_idxprom57133_pop55157_0;
            default : idxprom57133_pop55157_mux_q = 64'b0;
        endcase
    end

    // out_idxprom57133_pop55157(GPOUT,36)
    assign out_idxprom57133_pop55157 = idxprom57133_pop55157_mux_q;

    // mul102171_mux(MUX,28)
    assign mul102171_mux_s = in_valid_in_0;
    always @(mul102171_mux_s or in_mul102171_1 or in_mul102171_0)
    begin
        unique case (mul102171_mux_s)
            1'b0 : mul102171_mux_q = in_mul102171_1;
            1'b1 : mul102171_mux_q = in_mul102171_0;
            default : mul102171_mux_q = 32'b0;
        endcase
    end

    // out_mul102171(GPOUT,37)
    assign out_mul102171 = mul102171_mux_q;

    // notcmp60172_mux(MUX,29)
    assign notcmp60172_mux_s = in_valid_in_0;
    always @(notcmp60172_mux_s or in_notcmp60172_1 or in_notcmp60172_0)
    begin
        unique case (notcmp60172_mux_s)
            1'b0 : notcmp60172_mux_q = in_notcmp60172_1;
            1'b1 : notcmp60172_mux_q = in_notcmp60172_0;
            default : notcmp60172_mux_q = 1'b0;
        endcase
    end

    // out_notcmp60172(GPOUT,38)
    assign out_notcmp60172 = notcmp60172_mux_q;

    // notcmp86123_pop53163_mux(MUX,30)
    assign notcmp86123_pop53163_mux_s = in_valid_in_0;
    always @(notcmp86123_pop53163_mux_s or in_notcmp86123_pop53163_1 or in_notcmp86123_pop53163_0)
    begin
        unique case (notcmp86123_pop53163_mux_s)
            1'b0 : notcmp86123_pop53163_mux_q = in_notcmp86123_pop53163_1;
            1'b1 : notcmp86123_pop53163_mux_q = in_notcmp86123_pop53163_0;
            default : notcmp86123_pop53163_mux_q = 1'b0;
        endcase
    end

    // out_notcmp86123_pop53163(GPOUT,39)
    assign out_notcmp86123_pop53163 = notcmp86123_pop53163_mux_q;

    // notcmp86124_pop40173_mux(MUX,31)
    assign notcmp86124_pop40173_mux_s = in_valid_in_0;
    always @(notcmp86124_pop40173_mux_s or in_notcmp86124_pop40173_1 or in_notcmp86124_pop40173_0)
    begin
        unique case (notcmp86124_pop40173_mux_s)
            1'b0 : notcmp86124_pop40173_mux_q = in_notcmp86124_pop40173_1;
            1'b1 : notcmp86124_pop40173_mux_q = in_notcmp86124_pop40173_0;
            default : notcmp86124_pop40173_mux_q = 1'b0;
        endcase
    end

    // out_notcmp86124_pop40173(GPOUT,40)
    assign out_notcmp86124_pop40173 = notcmp86124_pop40173_mux_q;

    // valid_or(LOGICAL,46)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,44)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,41)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,45)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,42)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,43)
    assign out_valid_out = valid_or_q;

endmodule
