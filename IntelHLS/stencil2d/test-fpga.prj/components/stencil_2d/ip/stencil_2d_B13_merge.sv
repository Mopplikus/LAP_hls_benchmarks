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

// SystemVerilog created from stencil_2d_B13_merge
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Apr  4 22:01:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B13_merge (
    input wire [31:0] in_c_035_pop27129_0,
    input wire [31:0] in_c_035_pop27129_1,
    input wire [31:0] in_c_035_pop2794_pop37142_0,
    input wire [31:0] in_c_035_pop2794_pop37142_1,
    input wire [31:0] in_dot_prod_add143_0,
    input wire [31:0] in_dot_prod_add143_1,
    input wire [0:0] in_exitcond10144_0,
    input wire [0:0] in_exitcond10144_1,
    input wire [0:0] in_forked79139_0,
    input wire [0:0] in_forked79139_1,
    input wire [0:0] in_forked_0,
    input wire [0:0] in_forked_1,
    input wire [31:0] in_mul33_add18140_0,
    input wire [31:0] in_mul33_add18140_1,
    input wire [31:0] in_mul50117_0,
    input wire [31:0] in_mul50117_1,
    input wire [31:0] in_mul5086_pop29135_0,
    input wire [31:0] in_mul5086_pop29135_1,
    input wire [31:0] in_mul5087_pop34146_0,
    input wire [31:0] in_mul5087_pop34146_1,
    input wire [0:0] in_notcmp29145_0,
    input wire [0:0] in_notcmp29145_1,
    input wire [0:0] in_notcmp34126_0,
    input wire [0:0] in_notcmp34126_1,
    input wire [0:0] in_notcmp3492_pop36148_0,
    input wire [0:0] in_notcmp3492_pop36148_1,
    input wire [0:0] in_notcmp39122_0,
    input wire [0:0] in_notcmp39122_1,
    input wire [0:0] in_notcmp3989_pop30138_0,
    input wire [0:0] in_notcmp3989_pop30138_1,
    input wire [0:0] in_notcmp3990_pop35147_0,
    input wire [0:0] in_notcmp3990_pop35147_1,
    input wire [31:0] in_r_036_pop25112_0,
    input wire [31:0] in_r_036_pop25112_1,
    input wire [31:0] in_r_036_pop2583_pop28132_0,
    input wire [31:0] in_r_036_pop2583_pop28132_1,
    input wire [31:0] in_r_036_pop2584_pop33141_0,
    input wire [31:0] in_r_036_pop2584_pop33141_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_c_035_pop27129,
    output wire [31:0] out_c_035_pop2794_pop37142,
    output wire [31:0] out_dot_prod_add143,
    output wire [0:0] out_exitcond10144,
    output wire [0:0] out_forked,
    output wire [0:0] out_forked79139,
    output wire [31:0] out_mul33_add18140,
    output wire [31:0] out_mul50117,
    output wire [31:0] out_mul5086_pop29135,
    output wire [31:0] out_mul5087_pop34146,
    output wire [0:0] out_notcmp29145,
    output wire [0:0] out_notcmp34126,
    output wire [0:0] out_notcmp3492_pop36148,
    output wire [0:0] out_notcmp39122,
    output wire [0:0] out_notcmp3989_pop30138,
    output wire [0:0] out_notcmp3990_pop35147,
    output wire [31:0] out_r_036_pop25112,
    output wire [31:0] out_r_036_pop2583_pop28132,
    output wire [31:0] out_r_036_pop2584_pop33141,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] c_035_pop27129_mux_s;
    reg [31:0] c_035_pop27129_mux_q;
    wire [0:0] c_035_pop2794_pop37142_mux_s;
    reg [31:0] c_035_pop2794_pop37142_mux_q;
    wire [0:0] dot_prod_add143_mux_s;
    reg [31:0] dot_prod_add143_mux_q;
    wire [0:0] exitcond10144_mux_s;
    reg [0:0] exitcond10144_mux_q;
    wire [0:0] forked79139_mux_s;
    reg [0:0] forked79139_mux_q;
    wire [0:0] forked_mux_s;
    reg [0:0] forked_mux_q;
    wire [0:0] mul33_add18140_mux_s;
    reg [31:0] mul33_add18140_mux_q;
    wire [0:0] mul50117_mux_s;
    reg [31:0] mul50117_mux_q;
    wire [0:0] mul5086_pop29135_mux_s;
    reg [31:0] mul5086_pop29135_mux_q;
    wire [0:0] mul5087_pop34146_mux_s;
    reg [31:0] mul5087_pop34146_mux_q;
    wire [0:0] notcmp29145_mux_s;
    reg [0:0] notcmp29145_mux_q;
    wire [0:0] notcmp34126_mux_s;
    reg [0:0] notcmp34126_mux_q;
    wire [0:0] notcmp3492_pop36148_mux_s;
    reg [0:0] notcmp3492_pop36148_mux_q;
    wire [0:0] notcmp39122_mux_s;
    reg [0:0] notcmp39122_mux_q;
    wire [0:0] notcmp3989_pop30138_mux_s;
    reg [0:0] notcmp3989_pop30138_mux_q;
    wire [0:0] notcmp3990_pop35147_mux_s;
    reg [0:0] notcmp3990_pop35147_mux_q;
    wire [0:0] r_036_pop25112_mux_s;
    reg [31:0] r_036_pop25112_mux_q;
    wire [0:0] r_036_pop2583_pop28132_mux_s;
    reg [31:0] r_036_pop2583_pop28132_mux_q;
    wire [0:0] r_036_pop2584_pop33141_mux_s;
    reg [31:0] r_036_pop2584_pop33141_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // c_035_pop27129_mux(MUX,2)
    assign c_035_pop27129_mux_s = in_valid_in_0;
    always @(c_035_pop27129_mux_s or in_c_035_pop27129_1 or in_c_035_pop27129_0)
    begin
        unique case (c_035_pop27129_mux_s)
            1'b0 : c_035_pop27129_mux_q = in_c_035_pop27129_1;
            1'b1 : c_035_pop27129_mux_q = in_c_035_pop27129_0;
            default : c_035_pop27129_mux_q = 32'b0;
        endcase
    end

    // out_c_035_pop27129(GPOUT,59)
    assign out_c_035_pop27129 = c_035_pop27129_mux_q;

    // c_035_pop2794_pop37142_mux(MUX,3)
    assign c_035_pop2794_pop37142_mux_s = in_valid_in_0;
    always @(c_035_pop2794_pop37142_mux_s or in_c_035_pop2794_pop37142_1 or in_c_035_pop2794_pop37142_0)
    begin
        unique case (c_035_pop2794_pop37142_mux_s)
            1'b0 : c_035_pop2794_pop37142_mux_q = in_c_035_pop2794_pop37142_1;
            1'b1 : c_035_pop2794_pop37142_mux_q = in_c_035_pop2794_pop37142_0;
            default : c_035_pop2794_pop37142_mux_q = 32'b0;
        endcase
    end

    // out_c_035_pop2794_pop37142(GPOUT,60)
    assign out_c_035_pop2794_pop37142 = c_035_pop2794_pop37142_mux_q;

    // dot_prod_add143_mux(MUX,4)
    assign dot_prod_add143_mux_s = in_valid_in_0;
    always @(dot_prod_add143_mux_s or in_dot_prod_add143_1 or in_dot_prod_add143_0)
    begin
        unique case (dot_prod_add143_mux_s)
            1'b0 : dot_prod_add143_mux_q = in_dot_prod_add143_1;
            1'b1 : dot_prod_add143_mux_q = in_dot_prod_add143_0;
            default : dot_prod_add143_mux_q = 32'b0;
        endcase
    end

    // out_dot_prod_add143(GPOUT,61)
    assign out_dot_prod_add143 = dot_prod_add143_mux_q;

    // exitcond10144_mux(MUX,5)
    assign exitcond10144_mux_s = in_valid_in_0;
    always @(exitcond10144_mux_s or in_exitcond10144_1 or in_exitcond10144_0)
    begin
        unique case (exitcond10144_mux_s)
            1'b0 : exitcond10144_mux_q = in_exitcond10144_1;
            1'b1 : exitcond10144_mux_q = in_exitcond10144_0;
            default : exitcond10144_mux_q = 1'b0;
        endcase
    end

    // out_exitcond10144(GPOUT,62)
    assign out_exitcond10144 = exitcond10144_mux_q;

    // forked_mux(MUX,7)
    assign forked_mux_s = in_valid_in_0;
    always @(forked_mux_s or in_forked_1 or in_forked_0)
    begin
        unique case (forked_mux_s)
            1'b0 : forked_mux_q = in_forked_1;
            1'b1 : forked_mux_q = in_forked_0;
            default : forked_mux_q = 1'b0;
        endcase
    end

    // out_forked(GPOUT,63)
    assign out_forked = forked_mux_q;

    // forked79139_mux(MUX,6)
    assign forked79139_mux_s = in_valid_in_0;
    always @(forked79139_mux_s or in_forked79139_1 or in_forked79139_0)
    begin
        unique case (forked79139_mux_s)
            1'b0 : forked79139_mux_q = in_forked79139_1;
            1'b1 : forked79139_mux_q = in_forked79139_0;
            default : forked79139_mux_q = 1'b0;
        endcase
    end

    // out_forked79139(GPOUT,64)
    assign out_forked79139 = forked79139_mux_q;

    // mul33_add18140_mux(MUX,49)
    assign mul33_add18140_mux_s = in_valid_in_0;
    always @(mul33_add18140_mux_s or in_mul33_add18140_1 or in_mul33_add18140_0)
    begin
        unique case (mul33_add18140_mux_s)
            1'b0 : mul33_add18140_mux_q = in_mul33_add18140_1;
            1'b1 : mul33_add18140_mux_q = in_mul33_add18140_0;
            default : mul33_add18140_mux_q = 32'b0;
        endcase
    end

    // out_mul33_add18140(GPOUT,65)
    assign out_mul33_add18140 = mul33_add18140_mux_q;

    // mul50117_mux(MUX,50)
    assign mul50117_mux_s = in_valid_in_0;
    always @(mul50117_mux_s or in_mul50117_1 or in_mul50117_0)
    begin
        unique case (mul50117_mux_s)
            1'b0 : mul50117_mux_q = in_mul50117_1;
            1'b1 : mul50117_mux_q = in_mul50117_0;
            default : mul50117_mux_q = 32'b0;
        endcase
    end

    // out_mul50117(GPOUT,66)
    assign out_mul50117 = mul50117_mux_q;

    // mul5086_pop29135_mux(MUX,51)
    assign mul5086_pop29135_mux_s = in_valid_in_0;
    always @(mul5086_pop29135_mux_s or in_mul5086_pop29135_1 or in_mul5086_pop29135_0)
    begin
        unique case (mul5086_pop29135_mux_s)
            1'b0 : mul5086_pop29135_mux_q = in_mul5086_pop29135_1;
            1'b1 : mul5086_pop29135_mux_q = in_mul5086_pop29135_0;
            default : mul5086_pop29135_mux_q = 32'b0;
        endcase
    end

    // out_mul5086_pop29135(GPOUT,67)
    assign out_mul5086_pop29135 = mul5086_pop29135_mux_q;

    // mul5087_pop34146_mux(MUX,52)
    assign mul5087_pop34146_mux_s = in_valid_in_0;
    always @(mul5087_pop34146_mux_s or in_mul5087_pop34146_1 or in_mul5087_pop34146_0)
    begin
        unique case (mul5087_pop34146_mux_s)
            1'b0 : mul5087_pop34146_mux_q = in_mul5087_pop34146_1;
            1'b1 : mul5087_pop34146_mux_q = in_mul5087_pop34146_0;
            default : mul5087_pop34146_mux_q = 32'b0;
        endcase
    end

    // out_mul5087_pop34146(GPOUT,68)
    assign out_mul5087_pop34146 = mul5087_pop34146_mux_q;

    // notcmp29145_mux(MUX,53)
    assign notcmp29145_mux_s = in_valid_in_0;
    always @(notcmp29145_mux_s or in_notcmp29145_1 or in_notcmp29145_0)
    begin
        unique case (notcmp29145_mux_s)
            1'b0 : notcmp29145_mux_q = in_notcmp29145_1;
            1'b1 : notcmp29145_mux_q = in_notcmp29145_0;
            default : notcmp29145_mux_q = 1'b0;
        endcase
    end

    // out_notcmp29145(GPOUT,69)
    assign out_notcmp29145 = notcmp29145_mux_q;

    // notcmp34126_mux(MUX,54)
    assign notcmp34126_mux_s = in_valid_in_0;
    always @(notcmp34126_mux_s or in_notcmp34126_1 or in_notcmp34126_0)
    begin
        unique case (notcmp34126_mux_s)
            1'b0 : notcmp34126_mux_q = in_notcmp34126_1;
            1'b1 : notcmp34126_mux_q = in_notcmp34126_0;
            default : notcmp34126_mux_q = 1'b0;
        endcase
    end

    // out_notcmp34126(GPOUT,70)
    assign out_notcmp34126 = notcmp34126_mux_q;

    // notcmp3492_pop36148_mux(MUX,55)
    assign notcmp3492_pop36148_mux_s = in_valid_in_0;
    always @(notcmp3492_pop36148_mux_s or in_notcmp3492_pop36148_1 or in_notcmp3492_pop36148_0)
    begin
        unique case (notcmp3492_pop36148_mux_s)
            1'b0 : notcmp3492_pop36148_mux_q = in_notcmp3492_pop36148_1;
            1'b1 : notcmp3492_pop36148_mux_q = in_notcmp3492_pop36148_0;
            default : notcmp3492_pop36148_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3492_pop36148(GPOUT,71)
    assign out_notcmp3492_pop36148 = notcmp3492_pop36148_mux_q;

    // notcmp39122_mux(MUX,56)
    assign notcmp39122_mux_s = in_valid_in_0;
    always @(notcmp39122_mux_s or in_notcmp39122_1 or in_notcmp39122_0)
    begin
        unique case (notcmp39122_mux_s)
            1'b0 : notcmp39122_mux_q = in_notcmp39122_1;
            1'b1 : notcmp39122_mux_q = in_notcmp39122_0;
            default : notcmp39122_mux_q = 1'b0;
        endcase
    end

    // out_notcmp39122(GPOUT,72)
    assign out_notcmp39122 = notcmp39122_mux_q;

    // notcmp3989_pop30138_mux(MUX,57)
    assign notcmp3989_pop30138_mux_s = in_valid_in_0;
    always @(notcmp3989_pop30138_mux_s or in_notcmp3989_pop30138_1 or in_notcmp3989_pop30138_0)
    begin
        unique case (notcmp3989_pop30138_mux_s)
            1'b0 : notcmp3989_pop30138_mux_q = in_notcmp3989_pop30138_1;
            1'b1 : notcmp3989_pop30138_mux_q = in_notcmp3989_pop30138_0;
            default : notcmp3989_pop30138_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3989_pop30138(GPOUT,73)
    assign out_notcmp3989_pop30138 = notcmp3989_pop30138_mux_q;

    // notcmp3990_pop35147_mux(MUX,58)
    assign notcmp3990_pop35147_mux_s = in_valid_in_0;
    always @(notcmp3990_pop35147_mux_s or in_notcmp3990_pop35147_1 or in_notcmp3990_pop35147_0)
    begin
        unique case (notcmp3990_pop35147_mux_s)
            1'b0 : notcmp3990_pop35147_mux_q = in_notcmp3990_pop35147_1;
            1'b1 : notcmp3990_pop35147_mux_q = in_notcmp3990_pop35147_0;
            default : notcmp3990_pop35147_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3990_pop35147(GPOUT,74)
    assign out_notcmp3990_pop35147 = notcmp3990_pop35147_mux_q;

    // r_036_pop25112_mux(MUX,81)
    assign r_036_pop25112_mux_s = in_valid_in_0;
    always @(r_036_pop25112_mux_s or in_r_036_pop25112_1 or in_r_036_pop25112_0)
    begin
        unique case (r_036_pop25112_mux_s)
            1'b0 : r_036_pop25112_mux_q = in_r_036_pop25112_1;
            1'b1 : r_036_pop25112_mux_q = in_r_036_pop25112_0;
            default : r_036_pop25112_mux_q = 32'b0;
        endcase
    end

    // out_r_036_pop25112(GPOUT,75)
    assign out_r_036_pop25112 = r_036_pop25112_mux_q;

    // r_036_pop2583_pop28132_mux(MUX,82)
    assign r_036_pop2583_pop28132_mux_s = in_valid_in_0;
    always @(r_036_pop2583_pop28132_mux_s or in_r_036_pop2583_pop28132_1 or in_r_036_pop2583_pop28132_0)
    begin
        unique case (r_036_pop2583_pop28132_mux_s)
            1'b0 : r_036_pop2583_pop28132_mux_q = in_r_036_pop2583_pop28132_1;
            1'b1 : r_036_pop2583_pop28132_mux_q = in_r_036_pop2583_pop28132_0;
            default : r_036_pop2583_pop28132_mux_q = 32'b0;
        endcase
    end

    // out_r_036_pop2583_pop28132(GPOUT,76)
    assign out_r_036_pop2583_pop28132 = r_036_pop2583_pop28132_mux_q;

    // r_036_pop2584_pop33141_mux(MUX,83)
    assign r_036_pop2584_pop33141_mux_s = in_valid_in_0;
    always @(r_036_pop2584_pop33141_mux_s or in_r_036_pop2584_pop33141_1 or in_r_036_pop2584_pop33141_0)
    begin
        unique case (r_036_pop2584_pop33141_mux_s)
            1'b0 : r_036_pop2584_pop33141_mux_q = in_r_036_pop2584_pop33141_1;
            1'b1 : r_036_pop2584_pop33141_mux_q = in_r_036_pop2584_pop33141_0;
            default : r_036_pop2584_pop33141_mux_q = 32'b0;
        endcase
    end

    // out_r_036_pop2584_pop33141(GPOUT,77)
    assign out_r_036_pop2584_pop33141 = r_036_pop2584_pop33141_mux_q;

    // valid_or(LOGICAL,86)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,84)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,78)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,85)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,79)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,80)
    assign out_valid_out = valid_or_q;

endmodule
