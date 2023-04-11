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

// SystemVerilog created from kernel_2mm_B6_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Fri Apr  7 18:35:51 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B6_merge (
    input wire [63:0] in_arrayidx11178_0,
    input wire [63:0] in_arrayidx11178_1,
    input wire [0:0] in_forked22_0,
    input wire [0:0] in_forked22_1,
    input wire [31:0] in_i_040_pop1557_pop1975_0,
    input wire [31:0] in_i_040_pop1557_pop1975_1,
    input wire [31:0] in_i_040_pop1574_0,
    input wire [31:0] in_i_040_pop1574_1,
    input wire [63:0] in_idxprom1077_0,
    input wire [63:0] in_idxprom1077_1,
    input wire [63:0] in_idxprom76_0,
    input wire [63:0] in_idxprom76_1,
    input wire [0:0] in_notcmp3779_0,
    input wire [0:0] in_notcmp3779_1,
    input wire [0:0] in_notcmp4253_pop1880_0,
    input wire [0:0] in_notcmp4253_pop1880_1,
    input wire [0:0] in_notcmp4271_0,
    input wire [0:0] in_notcmp4271_1,
    input wire [0:0] in_stall_in,
    input wire [31:0] in_unnamed_kernel_2mm6_0,
    input wire [31:0] in_unnamed_kernel_2mm6_1,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [63:0] out_arrayidx11178,
    output wire [0:0] out_forked22,
    output wire [31:0] out_i_040_pop1557_pop1975,
    output wire [31:0] out_i_040_pop1574,
    output wire [63:0] out_idxprom1077,
    output wire [63:0] out_idxprom76,
    output wire [0:0] out_notcmp3779,
    output wire [0:0] out_notcmp4253_pop1880,
    output wire [0:0] out_notcmp4271,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [31:0] out_unnamed_kernel_2mm6,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] arrayidx11178_mux_s;
    reg [63:0] arrayidx11178_mux_q;
    wire [0:0] forked22_mux_s;
    reg [0:0] forked22_mux_q;
    wire [0:0] i_040_pop1557_pop1975_mux_s;
    reg [31:0] i_040_pop1557_pop1975_mux_q;
    wire [0:0] i_040_pop1574_mux_s;
    reg [31:0] i_040_pop1574_mux_q;
    wire [0:0] idxprom1077_mux_s;
    reg [63:0] idxprom1077_mux_q;
    wire [0:0] idxprom76_mux_s;
    reg [63:0] idxprom76_mux_q;
    wire [0:0] notcmp3779_mux_s;
    reg [0:0] notcmp3779_mux_q;
    wire [0:0] notcmp4253_pop1880_mux_s;
    reg [0:0] notcmp4253_pop1880_mux_q;
    wire [0:0] notcmp4271_mux_s;
    reg [0:0] notcmp4271_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] unnamed_kernel_2mm6_mux_s;
    reg [31:0] unnamed_kernel_2mm6_mux_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // arrayidx11178_mux(MUX,2)
    assign arrayidx11178_mux_s = in_valid_in_0;
    always @(arrayidx11178_mux_s or in_arrayidx11178_1 or in_arrayidx11178_0)
    begin
        unique case (arrayidx11178_mux_s)
            1'b0 : arrayidx11178_mux_q = in_arrayidx11178_1;
            1'b1 : arrayidx11178_mux_q = in_arrayidx11178_0;
            default : arrayidx11178_mux_q = 64'b0;
        endcase
    end

    // out_arrayidx11178(GPOUT,34)
    assign out_arrayidx11178 = arrayidx11178_mux_q;

    // forked22_mux(MUX,3)
    assign forked22_mux_s = in_valid_in_0;
    always @(forked22_mux_s or in_forked22_1 or in_forked22_0)
    begin
        unique case (forked22_mux_s)
            1'b0 : forked22_mux_q = in_forked22_1;
            1'b1 : forked22_mux_q = in_forked22_0;
            default : forked22_mux_q = 1'b0;
        endcase
    end

    // out_forked22(GPOUT,35)
    assign out_forked22 = forked22_mux_q;

    // i_040_pop1557_pop1975_mux(MUX,4)
    assign i_040_pop1557_pop1975_mux_s = in_valid_in_0;
    always @(i_040_pop1557_pop1975_mux_s or in_i_040_pop1557_pop1975_1 or in_i_040_pop1557_pop1975_0)
    begin
        unique case (i_040_pop1557_pop1975_mux_s)
            1'b0 : i_040_pop1557_pop1975_mux_q = in_i_040_pop1557_pop1975_1;
            1'b1 : i_040_pop1557_pop1975_mux_q = in_i_040_pop1557_pop1975_0;
            default : i_040_pop1557_pop1975_mux_q = 32'b0;
        endcase
    end

    // out_i_040_pop1557_pop1975(GPOUT,36)
    assign out_i_040_pop1557_pop1975 = i_040_pop1557_pop1975_mux_q;

    // i_040_pop1574_mux(MUX,5)
    assign i_040_pop1574_mux_s = in_valid_in_0;
    always @(i_040_pop1574_mux_s or in_i_040_pop1574_1 or in_i_040_pop1574_0)
    begin
        unique case (i_040_pop1574_mux_s)
            1'b0 : i_040_pop1574_mux_q = in_i_040_pop1574_1;
            1'b1 : i_040_pop1574_mux_q = in_i_040_pop1574_0;
            default : i_040_pop1574_mux_q = 32'b0;
        endcase
    end

    // out_i_040_pop1574(GPOUT,37)
    assign out_i_040_pop1574 = i_040_pop1574_mux_q;

    // idxprom1077_mux(MUX,6)
    assign idxprom1077_mux_s = in_valid_in_0;
    always @(idxprom1077_mux_s or in_idxprom1077_1 or in_idxprom1077_0)
    begin
        unique case (idxprom1077_mux_s)
            1'b0 : idxprom1077_mux_q = in_idxprom1077_1;
            1'b1 : idxprom1077_mux_q = in_idxprom1077_0;
            default : idxprom1077_mux_q = 64'b0;
        endcase
    end

    // out_idxprom1077(GPOUT,38)
    assign out_idxprom1077 = idxprom1077_mux_q;

    // idxprom76_mux(MUX,7)
    assign idxprom76_mux_s = in_valid_in_0;
    always @(idxprom76_mux_s or in_idxprom76_1 or in_idxprom76_0)
    begin
        unique case (idxprom76_mux_s)
            1'b0 : idxprom76_mux_q = in_idxprom76_1;
            1'b1 : idxprom76_mux_q = in_idxprom76_0;
            default : idxprom76_mux_q = 64'b0;
        endcase
    end

    // out_idxprom76(GPOUT,39)
    assign out_idxprom76 = idxprom76_mux_q;

    // notcmp3779_mux(MUX,31)
    assign notcmp3779_mux_s = in_valid_in_0;
    always @(notcmp3779_mux_s or in_notcmp3779_1 or in_notcmp3779_0)
    begin
        unique case (notcmp3779_mux_s)
            1'b0 : notcmp3779_mux_q = in_notcmp3779_1;
            1'b1 : notcmp3779_mux_q = in_notcmp3779_0;
            default : notcmp3779_mux_q = 1'b0;
        endcase
    end

    // out_notcmp3779(GPOUT,40)
    assign out_notcmp3779 = notcmp3779_mux_q;

    // notcmp4253_pop1880_mux(MUX,32)
    assign notcmp4253_pop1880_mux_s = in_valid_in_0;
    always @(notcmp4253_pop1880_mux_s or in_notcmp4253_pop1880_1 or in_notcmp4253_pop1880_0)
    begin
        unique case (notcmp4253_pop1880_mux_s)
            1'b0 : notcmp4253_pop1880_mux_q = in_notcmp4253_pop1880_1;
            1'b1 : notcmp4253_pop1880_mux_q = in_notcmp4253_pop1880_0;
            default : notcmp4253_pop1880_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4253_pop1880(GPOUT,41)
    assign out_notcmp4253_pop1880 = notcmp4253_pop1880_mux_q;

    // notcmp4271_mux(MUX,33)
    assign notcmp4271_mux_s = in_valid_in_0;
    always @(notcmp4271_mux_s or in_notcmp4271_1 or in_notcmp4271_0)
    begin
        unique case (notcmp4271_mux_s)
            1'b0 : notcmp4271_mux_q = in_notcmp4271_1;
            1'b1 : notcmp4271_mux_q = in_notcmp4271_0;
            default : notcmp4271_mux_q = 1'b0;
        endcase
    end

    // out_notcmp4271(GPOUT,42)
    assign out_notcmp4271 = notcmp4271_mux_q;

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

    // unnamed_kernel_2mm6_mux(MUX,49)
    assign unnamed_kernel_2mm6_mux_s = in_valid_in_0;
    always @(unnamed_kernel_2mm6_mux_s or in_unnamed_kernel_2mm6_1 or in_unnamed_kernel_2mm6_0)
    begin
        unique case (unnamed_kernel_2mm6_mux_s)
            1'b0 : unnamed_kernel_2mm6_mux_q = in_unnamed_kernel_2mm6_1;
            1'b1 : unnamed_kernel_2mm6_mux_q = in_unnamed_kernel_2mm6_0;
            default : unnamed_kernel_2mm6_mux_q = 32'b0;
        endcase
    end

    // out_unnamed_kernel_2mm6(GPOUT,45)
    assign out_unnamed_kernel_2mm6 = unnamed_kernel_2mm6_mux_q;

    // out_valid_out(GPOUT,46)
    assign out_valid_out = valid_or_q;

endmodule
