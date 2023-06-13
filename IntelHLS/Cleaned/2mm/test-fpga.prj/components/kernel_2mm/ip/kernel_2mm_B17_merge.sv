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

// SystemVerilog created from kernel_2mm_B17_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B17_merge (
    input wire [0:0] in_exitcond21175_0,
    input wire [0:0] in_exitcond21175_1,
    input wire [0:0] in_exitcond24119_pop43179_0,
    input wire [0:0] in_exitcond24119_pop43179_1,
    input wire [0:0] in_exitcond24164_0,
    input wire [0:0] in_exitcond24164_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_i48_078_pop25115_pop41178_0,
    input wire [31:0] in_i48_078_pop25115_pop41178_1,
    input wire [31:0] in_i48_078_pop25158_0,
    input wire [31:0] in_i48_078_pop25158_1,
    input wire [31:0] in_j53_077_pop39171_0,
    input wire [31:0] in_j53_077_pop39171_1,
    input wire [63:0] in_mPtr_bitcast_index92173_0,
    input wire [63:0] in_mPtr_bitcast_index92173_1,
    input wire [0:0] in_memdep_phi3_pop26123_pop45181_0,
    input wire [0:0] in_memdep_phi3_pop26123_pop45181_1,
    input wire [0:0] in_memdep_phi3_pop26170_0,
    input wire [0:0] in_memdep_phi3_pop26170_1,
    input wire [0:0] in_memdep_phi_pop40177_0,
    input wire [0:0] in_memdep_phi_pop40177_1,
    input wire [31:0] in_mul59_add30117_pop42172_0,
    input wire [31:0] in_mul59_add30117_pop42172_1,
    input wire [31:0] in_mul59_add30161_0,
    input wire [31:0] in_mul59_add30161_1,
    input wire [31:0] in_mul62174_0,
    input wire [31:0] in_mul62174_1,
    input wire [0:0] in_notcmp41176_0,
    input wire [0:0] in_notcmp41176_1,
    input wire [0:0] in_notcmp46121_pop44180_0,
    input wire [0:0] in_notcmp46121_pop44180_1,
    input wire [0:0] in_notcmp46167_0,
    input wire [0:0] in_notcmp46167_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond21175,
    output wire [0:0] out_exitcond24119_pop43179,
    output wire [0:0] out_exitcond24164,
    output wire [0:0] out_forked,
    output wire [31:0] out_i48_078_pop25115_pop41178,
    output wire [31:0] out_i48_078_pop25158,
    output wire [31:0] out_j53_077_pop39171,
    output wire [63:0] out_mPtr_bitcast_index92173,
    output wire [0:0] out_memdep_phi3_pop26123_pop45181,
    output wire [0:0] out_memdep_phi3_pop26170,
    output wire [0:0] out_memdep_phi_pop40177,
    output wire [31:0] out_mul59_add30117_pop42172,
    output wire [31:0] out_mul59_add30161,
    output wire [31:0] out_mul62174,
    output wire [0:0] out_notcmp41176,
    output wire [0:0] out_notcmp46121_pop44180,
    output wire [0:0] out_notcmp46167,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond21175_mux_s;
    reg [0:0] exitcond21175_mux_q;
    wire [0:0] exitcond24119_pop43179_mux_s;
    reg [0:0] exitcond24119_pop43179_mux_q;
    wire [0:0] exitcond24164_mux_s;
    reg [0:0] exitcond24164_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] i48_078_pop25115_pop41178_mux_s;
    reg [31:0] i48_078_pop25115_pop41178_mux_q;
    wire [0:0] i48_078_pop25158_mux_s;
    reg [31:0] i48_078_pop25158_mux_q;
    wire [0:0] j53_077_pop39171_mux_s;
    reg [31:0] j53_077_pop39171_mux_q;
    wire [0:0] mPtr_bitcast_index92173_mux_s;
    reg [63:0] mPtr_bitcast_index92173_mux_q;
    wire [0:0] memdep_phi3_pop26123_pop45181_mux_s;
    reg [0:0] memdep_phi3_pop26123_pop45181_mux_q;
    wire [0:0] memdep_phi3_pop26170_mux_s;
    reg [0:0] memdep_phi3_pop26170_mux_q;
    wire [0:0] memdep_phi_pop40177_mux_s;
    reg [0:0] memdep_phi_pop40177_mux_q;
    wire [0:0] mul59_add30117_pop42172_mux_s;
    reg [31:0] mul59_add30117_pop42172_mux_q;
    wire [0:0] mul59_add30161_mux_s;
    reg [31:0] mul59_add30161_mux_q;
    wire [0:0] mul62174_mux_s;
    reg [31:0] mul62174_mux_q;
    wire [0:0] notcmp41176_mux_s;
    reg [0:0] notcmp41176_mux_q;
    wire [0:0] notcmp46121_pop44180_mux_s;
    reg [0:0] notcmp46121_pop44180_mux_q;
    wire [0:0] notcmp46167_mux_s;
    reg [0:0] notcmp46167_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond21175_mux(MUX,2)
    assign exitcond21175_mux_s = in_valid_in_0;
    always @(exitcond21175_mux_s or in_exitcond21175_1 or in_exitcond21175_0)
    begin
        unique case (exitcond21175_mux_s)
            1'b0 : exitcond21175_mux_q = in_exitcond21175_1;
            1'b1 : exitcond21175_mux_q = in_exitcond21175_0;
            default : exitcond21175_mux_q = 1'b0;
        endcase
    end

    // out_exitcond21175(GPOUT,56)
    assign out_exitcond21175 = exitcond21175_mux_q;

    // exitcond24119_pop43179_mux(MUX,3)
    assign exitcond24119_pop43179_mux_s = in_valid_in_0;
    always @(exitcond24119_pop43179_mux_s or in_exitcond24119_pop43179_1 or in_exitcond24119_pop43179_0)
    begin
        unique case (exitcond24119_pop43179_mux_s)
            1'b0 : exitcond24119_pop43179_mux_q = in_exitcond24119_pop43179_1;
            1'b1 : exitcond24119_pop43179_mux_q = in_exitcond24119_pop43179_0;
            default : exitcond24119_pop43179_mux_q = 1'b0;
        endcase
    end

    // out_exitcond24119_pop43179(GPOUT,57)
    assign out_exitcond24119_pop43179 = exitcond24119_pop43179_mux_q;

    // exitcond24164_mux(MUX,4)
    assign exitcond24164_mux_s = in_valid_in_0;
    always @(exitcond24164_mux_s or in_exitcond24164_1 or in_exitcond24164_0)
    begin
        unique case (exitcond24164_mux_s)
            1'b0 : exitcond24164_mux_q = in_exitcond24164_1;
            1'b1 : exitcond24164_mux_q = in_exitcond24164_0;
            default : exitcond24164_mux_q = 1'b0;
        endcase
    end

    // out_exitcond24164(GPOUT,58)
    assign out_exitcond24164 = exitcond24164_mux_q;

    // forked_mux(MUX,5)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,59)
    assign out_forked = forked_mux_q;

    // i48_078_pop25115_pop41178_mux(MUX,6)
    assign i48_078_pop25115_pop41178_mux_s = in_valid_in_0;
    always @(i48_078_pop25115_pop41178_mux_s or in_i48_078_pop25115_pop41178_1 or in_i48_078_pop25115_pop41178_0)
    begin
        unique case (i48_078_pop25115_pop41178_mux_s)
            1'b0 : i48_078_pop25115_pop41178_mux_q = in_i48_078_pop25115_pop41178_1;
            1'b1 : i48_078_pop25115_pop41178_mux_q = in_i48_078_pop25115_pop41178_0;
            default : i48_078_pop25115_pop41178_mux_q = 32'b0;
        endcase
    end

    // out_i48_078_pop25115_pop41178(GPOUT,60)
    assign out_i48_078_pop25115_pop41178 = i48_078_pop25115_pop41178_mux_q;

    // i48_078_pop25158_mux(MUX,7)
    assign i48_078_pop25158_mux_s = in_valid_in_0;
    always @(i48_078_pop25158_mux_s or in_i48_078_pop25158_1 or in_i48_078_pop25158_0)
    begin
        unique case (i48_078_pop25158_mux_s)
            1'b0 : i48_078_pop25158_mux_q = in_i48_078_pop25158_1;
            1'b1 : i48_078_pop25158_mux_q = in_i48_078_pop25158_0;
            default : i48_078_pop25158_mux_q = 32'b0;
        endcase
    end

    // out_i48_078_pop25158(GPOUT,61)
    assign out_i48_078_pop25158 = i48_078_pop25158_mux_q;

    // j53_077_pop39171_mux(MUX,45)
    assign j53_077_pop39171_mux_s = in_valid_in_0;
    always @(j53_077_pop39171_mux_s or in_j53_077_pop39171_1 or in_j53_077_pop39171_0)
    begin
        unique case (j53_077_pop39171_mux_s)
            1'b0 : j53_077_pop39171_mux_q = in_j53_077_pop39171_1;
            1'b1 : j53_077_pop39171_mux_q = in_j53_077_pop39171_0;
            default : j53_077_pop39171_mux_q = 32'b0;
        endcase
    end

    // out_j53_077_pop39171(GPOUT,62)
    assign out_j53_077_pop39171 = j53_077_pop39171_mux_q;

    // mPtr_bitcast_index92173_mux(MUX,46)
    assign mPtr_bitcast_index92173_mux_s = in_valid_in_0;
    always @(mPtr_bitcast_index92173_mux_s or in_mPtr_bitcast_index92173_1 or in_mPtr_bitcast_index92173_0)
    begin
        unique case (mPtr_bitcast_index92173_mux_s)
            1'b0 : mPtr_bitcast_index92173_mux_q = in_mPtr_bitcast_index92173_1;
            1'b1 : mPtr_bitcast_index92173_mux_q = in_mPtr_bitcast_index92173_0;
            default : mPtr_bitcast_index92173_mux_q = 64'b0;
        endcase
    end

    // out_mPtr_bitcast_index92173(GPOUT,63)
    assign out_mPtr_bitcast_index92173 = mPtr_bitcast_index92173_mux_q;

    // memdep_phi3_pop26123_pop45181_mux(MUX,47)
    assign memdep_phi3_pop26123_pop45181_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop26123_pop45181_mux_s or in_memdep_phi3_pop26123_pop45181_1 or in_memdep_phi3_pop26123_pop45181_0)
    begin
        unique case (memdep_phi3_pop26123_pop45181_mux_s)
            1'b0 : memdep_phi3_pop26123_pop45181_mux_q = in_memdep_phi3_pop26123_pop45181_1;
            1'b1 : memdep_phi3_pop26123_pop45181_mux_q = in_memdep_phi3_pop26123_pop45181_0;
            default : memdep_phi3_pop26123_pop45181_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop26123_pop45181(GPOUT,64)
    assign out_memdep_phi3_pop26123_pop45181 = memdep_phi3_pop26123_pop45181_mux_q;

    // memdep_phi3_pop26170_mux(MUX,48)
    assign memdep_phi3_pop26170_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop26170_mux_s or in_memdep_phi3_pop26170_1 or in_memdep_phi3_pop26170_0)
    begin
        unique case (memdep_phi3_pop26170_mux_s)
            1'b0 : memdep_phi3_pop26170_mux_q = in_memdep_phi3_pop26170_1;
            1'b1 : memdep_phi3_pop26170_mux_q = in_memdep_phi3_pop26170_0;
            default : memdep_phi3_pop26170_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop26170(GPOUT,65)
    assign out_memdep_phi3_pop26170 = memdep_phi3_pop26170_mux_q;

    // memdep_phi_pop40177_mux(MUX,49)
    assign memdep_phi_pop40177_mux_s = in_valid_in_0;
    always @(memdep_phi_pop40177_mux_s or in_memdep_phi_pop40177_1 or in_memdep_phi_pop40177_0)
    begin
        unique case (memdep_phi_pop40177_mux_s)
            1'b0 : memdep_phi_pop40177_mux_q = in_memdep_phi_pop40177_1;
            1'b1 : memdep_phi_pop40177_mux_q = in_memdep_phi_pop40177_0;
            default : memdep_phi_pop40177_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop40177(GPOUT,66)
    assign out_memdep_phi_pop40177 = memdep_phi_pop40177_mux_q;

    // mul59_add30117_pop42172_mux(MUX,50)
    assign mul59_add30117_pop42172_mux_s = in_valid_in_0;
    always @(mul59_add30117_pop42172_mux_s or in_mul59_add30117_pop42172_1 or in_mul59_add30117_pop42172_0)
    begin
        unique case (mul59_add30117_pop42172_mux_s)
            1'b0 : mul59_add30117_pop42172_mux_q = in_mul59_add30117_pop42172_1;
            1'b1 : mul59_add30117_pop42172_mux_q = in_mul59_add30117_pop42172_0;
            default : mul59_add30117_pop42172_mux_q = 32'b0;
        endcase
    end

    // out_mul59_add30117_pop42172(GPOUT,67)
    assign out_mul59_add30117_pop42172 = mul59_add30117_pop42172_mux_q;

    // mul59_add30161_mux(MUX,51)
    assign mul59_add30161_mux_s = in_valid_in_0;
    always @(mul59_add30161_mux_s or in_mul59_add30161_1 or in_mul59_add30161_0)
    begin
        unique case (mul59_add30161_mux_s)
            1'b0 : mul59_add30161_mux_q = in_mul59_add30161_1;
            1'b1 : mul59_add30161_mux_q = in_mul59_add30161_0;
            default : mul59_add30161_mux_q = 32'b0;
        endcase
    end

    // out_mul59_add30161(GPOUT,68)
    assign out_mul59_add30161 = mul59_add30161_mux_q;

    // mul62174_mux(MUX,52)
    assign mul62174_mux_s = in_valid_in_0;
    always @(mul62174_mux_s or in_mul62174_1 or in_mul62174_0)
    begin
        unique case (mul62174_mux_s)
            1'b0 : mul62174_mux_q = in_mul62174_1;
            1'b1 : mul62174_mux_q = in_mul62174_0;
            default : mul62174_mux_q = 32'b0;
        endcase
    end

    // out_mul62174(GPOUT,69)
    assign out_mul62174 = mul62174_mux_q;

    // notcmp41176_mux(MUX,53)
    assign notcmp41176_mux_s = in_valid_in_0;
    always @(notcmp41176_mux_s or in_notcmp41176_1 or in_notcmp41176_0)
    begin
        unique case (notcmp41176_mux_s)
            1'b0 : notcmp41176_mux_q = in_notcmp41176_1;
            1'b1 : notcmp41176_mux_q = in_notcmp41176_0;
            default : notcmp41176_mux_q = 1'b0;
        endcase
    end

    // out_notcmp41176(GPOUT,70)
    assign out_notcmp41176 = notcmp41176_mux_q;

    // notcmp46121_pop44180_mux(MUX,54)
    assign notcmp46121_pop44180_mux_s = in_valid_in_0;
    always @(notcmp46121_pop44180_mux_s or in_notcmp46121_pop44180_1 or in_notcmp46121_pop44180_0)
    begin
        unique case (notcmp46121_pop44180_mux_s)
            1'b0 : notcmp46121_pop44180_mux_q = in_notcmp46121_pop44180_1;
            1'b1 : notcmp46121_pop44180_mux_q = in_notcmp46121_pop44180_0;
            default : notcmp46121_pop44180_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46121_pop44180(GPOUT,71)
    assign out_notcmp46121_pop44180 = notcmp46121_pop44180_mux_q;

    // notcmp46167_mux(MUX,55)
    assign notcmp46167_mux_s = in_valid_in_0;
    always @(notcmp46167_mux_s or in_notcmp46167_1 or in_notcmp46167_0)
    begin
        unique case (notcmp46167_mux_s)
            1'b0 : notcmp46167_mux_q = in_notcmp46167_1;
            1'b1 : notcmp46167_mux_q = in_notcmp46167_0;
            default : notcmp46167_mux_q = 1'b0;
        endcase
    end

    // out_notcmp46167(GPOUT,72)
    assign out_notcmp46167 = notcmp46167_mux_q;

    // valid_or(LOGICAL,78)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,76)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,73)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,77)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,74)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,75)
    assign out_valid_out = valid_or_q;

endmodule
