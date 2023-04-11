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

// SystemVerilog created from kernel_3mm_B3_merge
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B3_merge (
    input wire [0:0] in_forked107_0,
    input wire [0:0] in_forked107_1,
    input wire [0:0] in_forked81138_0,
    input wire [0:0] in_forked81138_1,
    input wire [0:0] in_forked8183_pop24177_0,
    input wire [0:0] in_forked8183_pop24177_1,
    input wire [31:0] in_i_060_pop23167_0,
    input wire [31:0] in_i_060_pop23167_1,
    input wire [0:0] in_memdep_phi2_pop18152_0,
    input wire [0:0] in_memdep_phi2_pop18152_1,
    input wire [0:0] in_memdep_phi2_pop1891_pop26187_0,
    input wire [0:0] in_memdep_phi2_pop1891_pop26187_1,
    input wire [0:0] in_memdep_phi3_pop19159_0,
    input wire [0:0] in_memdep_phi3_pop19159_1,
    input wire [0:0] in_memdep_phi3_pop1995_pop27192_0,
    input wire [0:0] in_memdep_phi3_pop1995_pop27192_1,
    input wire [0:0] in_memdep_phi5_pop20166_0,
    input wire [0:0] in_memdep_phi5_pop20166_1,
    input wire [0:0] in_memdep_phi5_pop2099_pop28197_0,
    input wire [0:0] in_memdep_phi5_pop2099_pop28197_1,
    input wire [0:0] in_memdep_phi_pop17145_0,
    input wire [0:0] in_memdep_phi_pop17145_1,
    input wire [0:0] in_memdep_phi_pop1787_pop25182_0,
    input wire [0:0] in_memdep_phi_pop1787_pop25182_1,
    input wire [0:0] in_notcmp73172_0,
    input wire [0:0] in_notcmp73172_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked107,
    output wire [0:0] out_forked81138,
    output wire [0:0] out_forked8183_pop24177,
    output wire [31:0] out_i_060_pop23167,
    output wire [0:0] out_memdep_phi2_pop18152,
    output wire [0:0] out_memdep_phi2_pop1891_pop26187,
    output wire [0:0] out_memdep_phi3_pop19159,
    output wire [0:0] out_memdep_phi3_pop1995_pop27192,
    output wire [0:0] out_memdep_phi5_pop20166,
    output wire [0:0] out_memdep_phi5_pop2099_pop28197,
    output wire [0:0] out_memdep_phi_pop17145,
    output wire [0:0] out_memdep_phi_pop1787_pop25182,
    output wire [0:0] out_notcmp73172,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked107_mux_s;
    reg [0:0] forked107_mux_q;
    wire [0:0] forked81138_mux_s;
    reg [0:0] forked81138_mux_q;
    wire [0:0] forked8183_pop24177_mux_s;
    reg [0:0] forked8183_pop24177_mux_q;
    wire [0:0] i_060_pop23167_mux_s;
    reg [31:0] i_060_pop23167_mux_q;
    wire [0:0] memdep_phi2_pop18152_mux_s;
    reg [0:0] memdep_phi2_pop18152_mux_q;
    wire [0:0] memdep_phi2_pop1891_pop26187_mux_s;
    reg [0:0] memdep_phi2_pop1891_pop26187_mux_q;
    wire [0:0] memdep_phi3_pop19159_mux_s;
    reg [0:0] memdep_phi3_pop19159_mux_q;
    wire [0:0] memdep_phi3_pop1995_pop27192_mux_s;
    reg [0:0] memdep_phi3_pop1995_pop27192_mux_q;
    wire [0:0] memdep_phi5_pop20166_mux_s;
    reg [0:0] memdep_phi5_pop20166_mux_q;
    wire [0:0] memdep_phi5_pop2099_pop28197_mux_s;
    reg [0:0] memdep_phi5_pop2099_pop28197_mux_q;
    wire [0:0] memdep_phi_pop17145_mux_s;
    reg [0:0] memdep_phi_pop17145_mux_q;
    wire [0:0] memdep_phi_pop1787_pop25182_mux_s;
    reg [0:0] memdep_phi_pop1787_pop25182_mux_q;
    wire [0:0] notcmp73172_mux_s;
    reg [0:0] notcmp73172_mux_q;
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

    // out_forked107(GPOUT,44)
    assign out_forked107 = forked107_mux_q;

    // forked81138_mux(MUX,3)
    assign forked81138_mux_s = in_valid_in_0;
    always @(forked81138_mux_s or in_forked81138_1 or in_forked81138_0)
    begin
        unique case (forked81138_mux_s)
            1'b0 : forked81138_mux_q = in_forked81138_1;
            1'b1 : forked81138_mux_q = in_forked81138_0;
            default : forked81138_mux_q = 1'b0;
        endcase
    end

    // out_forked81138(GPOUT,45)
    assign out_forked81138 = forked81138_mux_q;

    // forked8183_pop24177_mux(MUX,4)
    assign forked8183_pop24177_mux_s = in_valid_in_0;
    always @(forked8183_pop24177_mux_s or in_forked8183_pop24177_1 or in_forked8183_pop24177_0)
    begin
        unique case (forked8183_pop24177_mux_s)
            1'b0 : forked8183_pop24177_mux_q = in_forked8183_pop24177_1;
            1'b1 : forked8183_pop24177_mux_q = in_forked8183_pop24177_0;
            default : forked8183_pop24177_mux_q = 1'b0;
        endcase
    end

    // out_forked8183_pop24177(GPOUT,46)
    assign out_forked8183_pop24177 = forked8183_pop24177_mux_q;

    // i_060_pop23167_mux(MUX,5)
    assign i_060_pop23167_mux_s = in_valid_in_0;
    always @(i_060_pop23167_mux_s or in_i_060_pop23167_1 or in_i_060_pop23167_0)
    begin
        unique case (i_060_pop23167_mux_s)
            1'b0 : i_060_pop23167_mux_q = in_i_060_pop23167_1;
            1'b1 : i_060_pop23167_mux_q = in_i_060_pop23167_0;
            default : i_060_pop23167_mux_q = 32'b0;
        endcase
    end

    // out_i_060_pop23167(GPOUT,47)
    assign out_i_060_pop23167 = i_060_pop23167_mux_q;

    // memdep_phi2_pop18152_mux(MUX,35)
    assign memdep_phi2_pop18152_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop18152_mux_s or in_memdep_phi2_pop18152_1 or in_memdep_phi2_pop18152_0)
    begin
        unique case (memdep_phi2_pop18152_mux_s)
            1'b0 : memdep_phi2_pop18152_mux_q = in_memdep_phi2_pop18152_1;
            1'b1 : memdep_phi2_pop18152_mux_q = in_memdep_phi2_pop18152_0;
            default : memdep_phi2_pop18152_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop18152(GPOUT,48)
    assign out_memdep_phi2_pop18152 = memdep_phi2_pop18152_mux_q;

    // memdep_phi2_pop1891_pop26187_mux(MUX,36)
    assign memdep_phi2_pop1891_pop26187_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1891_pop26187_mux_s or in_memdep_phi2_pop1891_pop26187_1 or in_memdep_phi2_pop1891_pop26187_0)
    begin
        unique case (memdep_phi2_pop1891_pop26187_mux_s)
            1'b0 : memdep_phi2_pop1891_pop26187_mux_q = in_memdep_phi2_pop1891_pop26187_1;
            1'b1 : memdep_phi2_pop1891_pop26187_mux_q = in_memdep_phi2_pop1891_pop26187_0;
            default : memdep_phi2_pop1891_pop26187_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1891_pop26187(GPOUT,49)
    assign out_memdep_phi2_pop1891_pop26187 = memdep_phi2_pop1891_pop26187_mux_q;

    // memdep_phi3_pop19159_mux(MUX,37)
    assign memdep_phi3_pop19159_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop19159_mux_s or in_memdep_phi3_pop19159_1 or in_memdep_phi3_pop19159_0)
    begin
        unique case (memdep_phi3_pop19159_mux_s)
            1'b0 : memdep_phi3_pop19159_mux_q = in_memdep_phi3_pop19159_1;
            1'b1 : memdep_phi3_pop19159_mux_q = in_memdep_phi3_pop19159_0;
            default : memdep_phi3_pop19159_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop19159(GPOUT,50)
    assign out_memdep_phi3_pop19159 = memdep_phi3_pop19159_mux_q;

    // memdep_phi3_pop1995_pop27192_mux(MUX,38)
    assign memdep_phi3_pop1995_pop27192_mux_s = in_valid_in_0;
    always @(memdep_phi3_pop1995_pop27192_mux_s or in_memdep_phi3_pop1995_pop27192_1 or in_memdep_phi3_pop1995_pop27192_0)
    begin
        unique case (memdep_phi3_pop1995_pop27192_mux_s)
            1'b0 : memdep_phi3_pop1995_pop27192_mux_q = in_memdep_phi3_pop1995_pop27192_1;
            1'b1 : memdep_phi3_pop1995_pop27192_mux_q = in_memdep_phi3_pop1995_pop27192_0;
            default : memdep_phi3_pop1995_pop27192_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi3_pop1995_pop27192(GPOUT,51)
    assign out_memdep_phi3_pop1995_pop27192 = memdep_phi3_pop1995_pop27192_mux_q;

    // memdep_phi5_pop20166_mux(MUX,39)
    assign memdep_phi5_pop20166_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop20166_mux_s or in_memdep_phi5_pop20166_1 or in_memdep_phi5_pop20166_0)
    begin
        unique case (memdep_phi5_pop20166_mux_s)
            1'b0 : memdep_phi5_pop20166_mux_q = in_memdep_phi5_pop20166_1;
            1'b1 : memdep_phi5_pop20166_mux_q = in_memdep_phi5_pop20166_0;
            default : memdep_phi5_pop20166_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop20166(GPOUT,52)
    assign out_memdep_phi5_pop20166 = memdep_phi5_pop20166_mux_q;

    // memdep_phi5_pop2099_pop28197_mux(MUX,40)
    assign memdep_phi5_pop2099_pop28197_mux_s = in_valid_in_0;
    always @(memdep_phi5_pop2099_pop28197_mux_s or in_memdep_phi5_pop2099_pop28197_1 or in_memdep_phi5_pop2099_pop28197_0)
    begin
        unique case (memdep_phi5_pop2099_pop28197_mux_s)
            1'b0 : memdep_phi5_pop2099_pop28197_mux_q = in_memdep_phi5_pop2099_pop28197_1;
            1'b1 : memdep_phi5_pop2099_pop28197_mux_q = in_memdep_phi5_pop2099_pop28197_0;
            default : memdep_phi5_pop2099_pop28197_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi5_pop2099_pop28197(GPOUT,53)
    assign out_memdep_phi5_pop2099_pop28197 = memdep_phi5_pop2099_pop28197_mux_q;

    // memdep_phi_pop17145_mux(MUX,41)
    assign memdep_phi_pop17145_mux_s = in_valid_in_0;
    always @(memdep_phi_pop17145_mux_s or in_memdep_phi_pop17145_1 or in_memdep_phi_pop17145_0)
    begin
        unique case (memdep_phi_pop17145_mux_s)
            1'b0 : memdep_phi_pop17145_mux_q = in_memdep_phi_pop17145_1;
            1'b1 : memdep_phi_pop17145_mux_q = in_memdep_phi_pop17145_0;
            default : memdep_phi_pop17145_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop17145(GPOUT,54)
    assign out_memdep_phi_pop17145 = memdep_phi_pop17145_mux_q;

    // memdep_phi_pop1787_pop25182_mux(MUX,42)
    assign memdep_phi_pop1787_pop25182_mux_s = in_valid_in_0;
    always @(memdep_phi_pop1787_pop25182_mux_s or in_memdep_phi_pop1787_pop25182_1 or in_memdep_phi_pop1787_pop25182_0)
    begin
        unique case (memdep_phi_pop1787_pop25182_mux_s)
            1'b0 : memdep_phi_pop1787_pop25182_mux_q = in_memdep_phi_pop1787_pop25182_1;
            1'b1 : memdep_phi_pop1787_pop25182_mux_q = in_memdep_phi_pop1787_pop25182_0;
            default : memdep_phi_pop1787_pop25182_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop1787_pop25182(GPOUT,55)
    assign out_memdep_phi_pop1787_pop25182 = memdep_phi_pop1787_pop25182_mux_q;

    // notcmp73172_mux(MUX,43)
    assign notcmp73172_mux_s = in_valid_in_0;
    always @(notcmp73172_mux_s or in_notcmp73172_1 or in_notcmp73172_0)
    begin
        unique case (notcmp73172_mux_s)
            1'b0 : notcmp73172_mux_q = in_notcmp73172_1;
            1'b1 : notcmp73172_mux_q = in_notcmp73172_0;
            default : notcmp73172_mux_q = 1'b0;
        endcase
    end

    // out_notcmp73172(GPOUT,56)
    assign out_notcmp73172 = notcmp73172_mux_q;

    // valid_or(LOGICAL,62)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,60)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,57)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,61)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,58)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,59)
    assign out_valid_out = valid_or_q;

endmodule
