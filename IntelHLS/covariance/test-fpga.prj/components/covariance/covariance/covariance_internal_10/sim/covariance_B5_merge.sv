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

// SystemVerilog created from covariance_B5_merge
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B5_merge (
    input wire [0:0] in_exitcond10134_0,
    input wire [0:0] in_exitcond10134_1,
    input wire [0:0] in_forked50_0,
    input wire [0:0] in_forked50_1,
    input wire [31:0] in_j_039_pop21136_0,
    input wire [31:0] in_j_039_pop21136_1,
    input wire [31:0] in_lim_ext113_0,
    input wire [31:0] in_lim_ext113_1,
    input wire [31:0] in_lim_ext75_pop23138_0,
    input wire [31:0] in_lim_ext75_pop23138_1,
    input wire [0:0] in_memdep_phi1_pop16118_0,
    input wire [0:0] in_memdep_phi1_pop16118_1,
    input wire [0:0] in_memdep_phi1_pop1681_pop24139_0,
    input wire [0:0] in_memdep_phi1_pop1681_pop24139_1,
    input wire [0:0] in_memdep_phi2_pop17123_0,
    input wire [0:0] in_memdep_phi2_pop17123_1,
    input wire [0:0] in_memdep_phi2_pop1784_pop25140_0,
    input wire [0:0] in_memdep_phi2_pop1784_pop25140_1,
    input wire [0:0] in_memdep_phi4_pop18128_0,
    input wire [0:0] in_memdep_phi4_pop18128_1,
    input wire [0:0] in_memdep_phi4_pop1887_pop26141_0,
    input wire [0:0] in_memdep_phi4_pop1887_pop26141_1,
    input wire [0:0] in_memdep_phi_pop22137_0,
    input wire [0:0] in_memdep_phi_pop22137_1,
    input wire [0:0] in_notcmp65135_0,
    input wire [0:0] in_notcmp65135_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond10134,
    output wire [0:0] out_forked50,
    output wire [31:0] out_j_039_pop21136,
    output wire [31:0] out_lim_ext113,
    output wire [31:0] out_lim_ext75_pop23138,
    output wire [0:0] out_memdep_phi1_pop16118,
    output wire [0:0] out_memdep_phi1_pop1681_pop24139,
    output wire [0:0] out_memdep_phi2_pop17123,
    output wire [0:0] out_memdep_phi2_pop1784_pop25140,
    output wire [0:0] out_memdep_phi4_pop18128,
    output wire [0:0] out_memdep_phi4_pop1887_pop26141,
    output wire [0:0] out_memdep_phi_pop22137,
    output wire [0:0] out_notcmp65135,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond10134_mux_s;
    reg [0:0] exitcond10134_mux_q;
    wire [0:0] forked50_mux_s;
    reg [0:0] forked50_mux_q;
    wire [0:0] j_039_pop21136_mux_s;
    reg [31:0] j_039_pop21136_mux_q;
    wire [0:0] lim_ext113_mux_s;
    reg [31:0] lim_ext113_mux_q;
    wire [0:0] lim_ext75_pop23138_mux_s;
    reg [31:0] lim_ext75_pop23138_mux_q;
    wire [0:0] memdep_phi1_pop16118_mux_s;
    reg [0:0] memdep_phi1_pop16118_mux_q;
    wire [0:0] memdep_phi1_pop1681_pop24139_mux_s;
    reg [0:0] memdep_phi1_pop1681_pop24139_mux_q;
    wire [0:0] memdep_phi2_pop17123_mux_s;
    reg [0:0] memdep_phi2_pop17123_mux_q;
    wire [0:0] memdep_phi2_pop1784_pop25140_mux_s;
    reg [0:0] memdep_phi2_pop1784_pop25140_mux_q;
    wire [0:0] memdep_phi4_pop18128_mux_s;
    reg [0:0] memdep_phi4_pop18128_mux_q;
    wire [0:0] memdep_phi4_pop1887_pop26141_mux_s;
    reg [0:0] memdep_phi4_pop1887_pop26141_mux_q;
    wire [0:0] memdep_phi_pop22137_mux_s;
    reg [0:0] memdep_phi_pop22137_mux_q;
    wire [0:0] notcmp65135_mux_s;
    reg [0:0] notcmp65135_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond10134_mux(MUX,2)
    assign exitcond10134_mux_s = in_valid_in_0;
    always @(exitcond10134_mux_s or in_exitcond10134_1 or in_exitcond10134_0)
    begin
        unique case (exitcond10134_mux_s)
            1'b0 : exitcond10134_mux_q = in_exitcond10134_1;
            1'b1 : exitcond10134_mux_q = in_exitcond10134_0;
            default : exitcond10134_mux_q = 1'b0;
        endcase
    end

    // out_exitcond10134(GPOUT,44)
    assign out_exitcond10134 = exitcond10134_mux_q;

    // forked50_mux(MUX,3)
    assign forked50_mux_s = in_valid_in_0;
    always @(forked50_mux_s or in_forked50_1 or in_forked50_0)
    begin
        unique case (forked50_mux_s)
            1'b0 : forked50_mux_q = in_forked50_1;
            1'b1 : forked50_mux_q = in_forked50_0;
            default : forked50_mux_q = 1'b0;
        endcase
    end

    // out_forked50(GPOUT,45)
    assign out_forked50 = forked50_mux_q;

    // j_039_pop21136_mux(MUX,33)
    assign j_039_pop21136_mux_s = in_valid_in_0;
    always @(j_039_pop21136_mux_s or in_j_039_pop21136_1 or in_j_039_pop21136_0)
    begin
        unique case (j_039_pop21136_mux_s)
            1'b0 : j_039_pop21136_mux_q = in_j_039_pop21136_1;
            1'b1 : j_039_pop21136_mux_q = in_j_039_pop21136_0;
            default : j_039_pop21136_mux_q = 32'b0;
        endcase
    end

    // out_j_039_pop21136(GPOUT,46)
    assign out_j_039_pop21136 = j_039_pop21136_mux_q;

    // lim_ext113_mux(MUX,34)
    assign lim_ext113_mux_s = in_valid_in_0;
    always @(lim_ext113_mux_s or in_lim_ext113_1 or in_lim_ext113_0)
    begin
        unique case (lim_ext113_mux_s)
            1'b0 : lim_ext113_mux_q = in_lim_ext113_1;
            1'b1 : lim_ext113_mux_q = in_lim_ext113_0;
            default : lim_ext113_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext113(GPOUT,47)
    assign out_lim_ext113 = lim_ext113_mux_q;

    // lim_ext75_pop23138_mux(MUX,35)
    assign lim_ext75_pop23138_mux_s = in_valid_in_0;
    always @(lim_ext75_pop23138_mux_s or in_lim_ext75_pop23138_1 or in_lim_ext75_pop23138_0)
    begin
        unique case (lim_ext75_pop23138_mux_s)
            1'b0 : lim_ext75_pop23138_mux_q = in_lim_ext75_pop23138_1;
            1'b1 : lim_ext75_pop23138_mux_q = in_lim_ext75_pop23138_0;
            default : lim_ext75_pop23138_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext75_pop23138(GPOUT,48)
    assign out_lim_ext75_pop23138 = lim_ext75_pop23138_mux_q;

    // memdep_phi1_pop16118_mux(MUX,36)
    assign memdep_phi1_pop16118_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop16118_mux_s or in_memdep_phi1_pop16118_1 or in_memdep_phi1_pop16118_0)
    begin
        unique case (memdep_phi1_pop16118_mux_s)
            1'b0 : memdep_phi1_pop16118_mux_q = in_memdep_phi1_pop16118_1;
            1'b1 : memdep_phi1_pop16118_mux_q = in_memdep_phi1_pop16118_0;
            default : memdep_phi1_pop16118_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop16118(GPOUT,49)
    assign out_memdep_phi1_pop16118 = memdep_phi1_pop16118_mux_q;

    // memdep_phi1_pop1681_pop24139_mux(MUX,37)
    assign memdep_phi1_pop1681_pop24139_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop1681_pop24139_mux_s or in_memdep_phi1_pop1681_pop24139_1 or in_memdep_phi1_pop1681_pop24139_0)
    begin
        unique case (memdep_phi1_pop1681_pop24139_mux_s)
            1'b0 : memdep_phi1_pop1681_pop24139_mux_q = in_memdep_phi1_pop1681_pop24139_1;
            1'b1 : memdep_phi1_pop1681_pop24139_mux_q = in_memdep_phi1_pop1681_pop24139_0;
            default : memdep_phi1_pop1681_pop24139_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop1681_pop24139(GPOUT,50)
    assign out_memdep_phi1_pop1681_pop24139 = memdep_phi1_pop1681_pop24139_mux_q;

    // memdep_phi2_pop17123_mux(MUX,38)
    assign memdep_phi2_pop17123_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop17123_mux_s or in_memdep_phi2_pop17123_1 or in_memdep_phi2_pop17123_0)
    begin
        unique case (memdep_phi2_pop17123_mux_s)
            1'b0 : memdep_phi2_pop17123_mux_q = in_memdep_phi2_pop17123_1;
            1'b1 : memdep_phi2_pop17123_mux_q = in_memdep_phi2_pop17123_0;
            default : memdep_phi2_pop17123_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop17123(GPOUT,51)
    assign out_memdep_phi2_pop17123 = memdep_phi2_pop17123_mux_q;

    // memdep_phi2_pop1784_pop25140_mux(MUX,39)
    assign memdep_phi2_pop1784_pop25140_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop1784_pop25140_mux_s or in_memdep_phi2_pop1784_pop25140_1 or in_memdep_phi2_pop1784_pop25140_0)
    begin
        unique case (memdep_phi2_pop1784_pop25140_mux_s)
            1'b0 : memdep_phi2_pop1784_pop25140_mux_q = in_memdep_phi2_pop1784_pop25140_1;
            1'b1 : memdep_phi2_pop1784_pop25140_mux_q = in_memdep_phi2_pop1784_pop25140_0;
            default : memdep_phi2_pop1784_pop25140_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop1784_pop25140(GPOUT,52)
    assign out_memdep_phi2_pop1784_pop25140 = memdep_phi2_pop1784_pop25140_mux_q;

    // memdep_phi4_pop18128_mux(MUX,40)
    assign memdep_phi4_pop18128_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop18128_mux_s or in_memdep_phi4_pop18128_1 or in_memdep_phi4_pop18128_0)
    begin
        unique case (memdep_phi4_pop18128_mux_s)
            1'b0 : memdep_phi4_pop18128_mux_q = in_memdep_phi4_pop18128_1;
            1'b1 : memdep_phi4_pop18128_mux_q = in_memdep_phi4_pop18128_0;
            default : memdep_phi4_pop18128_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop18128(GPOUT,53)
    assign out_memdep_phi4_pop18128 = memdep_phi4_pop18128_mux_q;

    // memdep_phi4_pop1887_pop26141_mux(MUX,41)
    assign memdep_phi4_pop1887_pop26141_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop1887_pop26141_mux_s or in_memdep_phi4_pop1887_pop26141_1 or in_memdep_phi4_pop1887_pop26141_0)
    begin
        unique case (memdep_phi4_pop1887_pop26141_mux_s)
            1'b0 : memdep_phi4_pop1887_pop26141_mux_q = in_memdep_phi4_pop1887_pop26141_1;
            1'b1 : memdep_phi4_pop1887_pop26141_mux_q = in_memdep_phi4_pop1887_pop26141_0;
            default : memdep_phi4_pop1887_pop26141_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop1887_pop26141(GPOUT,54)
    assign out_memdep_phi4_pop1887_pop26141 = memdep_phi4_pop1887_pop26141_mux_q;

    // memdep_phi_pop22137_mux(MUX,42)
    assign memdep_phi_pop22137_mux_s = in_valid_in_0;
    always @(memdep_phi_pop22137_mux_s or in_memdep_phi_pop22137_1 or in_memdep_phi_pop22137_0)
    begin
        unique case (memdep_phi_pop22137_mux_s)
            1'b0 : memdep_phi_pop22137_mux_q = in_memdep_phi_pop22137_1;
            1'b1 : memdep_phi_pop22137_mux_q = in_memdep_phi_pop22137_0;
            default : memdep_phi_pop22137_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop22137(GPOUT,55)
    assign out_memdep_phi_pop22137 = memdep_phi_pop22137_mux_q;

    // notcmp65135_mux(MUX,43)
    assign notcmp65135_mux_s = in_valid_in_0;
    always @(notcmp65135_mux_s or in_notcmp65135_1 or in_notcmp65135_0)
    begin
        unique case (notcmp65135_mux_s)
            1'b0 : notcmp65135_mux_q = in_notcmp65135_1;
            1'b1 : notcmp65135_mux_q = in_notcmp65135_0;
            default : notcmp65135_mux_q = 1'b0;
        endcase
    end

    // out_notcmp65135(GPOUT,56)
    assign out_notcmp65135 = notcmp65135_mux_q;

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
