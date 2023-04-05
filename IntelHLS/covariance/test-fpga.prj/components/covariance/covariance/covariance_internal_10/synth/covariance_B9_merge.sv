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

// SystemVerilog created from covariance_B9_merge
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B9_merge (
    input wire [0:0] in_exitcond16184_0,
    input wire [0:0] in_exitcond16184_1,
    input wire [0:0] in_forked86_0,
    input wire [0:0] in_forked86_1,
    input wire [31:0] in_j24_062_pop30186_0,
    input wire [31:0] in_j24_062_pop30186_1,
    input wire [31:0] in_lim_ext133_pop44175_0,
    input wire [31:0] in_lim_ext133_pop44175_1,
    input wire [31:0] in_lim_ext134_pop32188_0,
    input wire [31:0] in_lim_ext134_pop32188_1,
    input wire [0:0] in_memdep_phi_pop31187_0,
    input wire [0:0] in_memdep_phi_pop31187_1,
    input wire [0:0] in_notcmp101185_0,
    input wire [0:0] in_notcmp101185_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond16184,
    output wire [0:0] out_forked86,
    output wire [31:0] out_j24_062_pop30186,
    output wire [31:0] out_lim_ext133_pop44175,
    output wire [31:0] out_lim_ext134_pop32188,
    output wire [0:0] out_memdep_phi_pop31187,
    output wire [0:0] out_notcmp101185,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond16184_mux_s;
    reg [0:0] exitcond16184_mux_q;
    wire [0:0] forked86_mux_s;
    reg [0:0] forked86_mux_q;
    wire [0:0] j24_062_pop30186_mux_s;
    reg [31:0] j24_062_pop30186_mux_q;
    wire [0:0] lim_ext133_pop44175_mux_s;
    reg [31:0] lim_ext133_pop44175_mux_q;
    wire [0:0] lim_ext134_pop32188_mux_s;
    reg [31:0] lim_ext134_pop32188_mux_q;
    wire [0:0] memdep_phi_pop31187_mux_s;
    reg [0:0] memdep_phi_pop31187_mux_q;
    wire [0:0] notcmp101185_mux_s;
    reg [0:0] notcmp101185_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond16184_mux(MUX,2)
    assign exitcond16184_mux_s = in_valid_in_0;
    always @(exitcond16184_mux_s or in_exitcond16184_1 or in_exitcond16184_0)
    begin
        unique case (exitcond16184_mux_s)
            1'b0 : exitcond16184_mux_q = in_exitcond16184_1;
            1'b1 : exitcond16184_mux_q = in_exitcond16184_0;
            default : exitcond16184_mux_q = 1'b0;
        endcase
    end

    // out_exitcond16184(GPOUT,26)
    assign out_exitcond16184 = exitcond16184_mux_q;

    // forked86_mux(MUX,3)
    assign forked86_mux_s = in_valid_in_0;
    always @(forked86_mux_s or in_forked86_1 or in_forked86_0)
    begin
        unique case (forked86_mux_s)
            1'b0 : forked86_mux_q = in_forked86_1;
            1'b1 : forked86_mux_q = in_forked86_0;
            default : forked86_mux_q = 1'b0;
        endcase
    end

    // out_forked86(GPOUT,27)
    assign out_forked86 = forked86_mux_q;

    // j24_062_pop30186_mux(MUX,21)
    assign j24_062_pop30186_mux_s = in_valid_in_0;
    always @(j24_062_pop30186_mux_s or in_j24_062_pop30186_1 or in_j24_062_pop30186_0)
    begin
        unique case (j24_062_pop30186_mux_s)
            1'b0 : j24_062_pop30186_mux_q = in_j24_062_pop30186_1;
            1'b1 : j24_062_pop30186_mux_q = in_j24_062_pop30186_0;
            default : j24_062_pop30186_mux_q = 32'b0;
        endcase
    end

    // out_j24_062_pop30186(GPOUT,28)
    assign out_j24_062_pop30186 = j24_062_pop30186_mux_q;

    // lim_ext133_pop44175_mux(MUX,22)
    assign lim_ext133_pop44175_mux_s = in_valid_in_0;
    always @(lim_ext133_pop44175_mux_s or in_lim_ext133_pop44175_1 or in_lim_ext133_pop44175_0)
    begin
        unique case (lim_ext133_pop44175_mux_s)
            1'b0 : lim_ext133_pop44175_mux_q = in_lim_ext133_pop44175_1;
            1'b1 : lim_ext133_pop44175_mux_q = in_lim_ext133_pop44175_0;
            default : lim_ext133_pop44175_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext133_pop44175(GPOUT,29)
    assign out_lim_ext133_pop44175 = lim_ext133_pop44175_mux_q;

    // lim_ext134_pop32188_mux(MUX,23)
    assign lim_ext134_pop32188_mux_s = in_valid_in_0;
    always @(lim_ext134_pop32188_mux_s or in_lim_ext134_pop32188_1 or in_lim_ext134_pop32188_0)
    begin
        unique case (lim_ext134_pop32188_mux_s)
            1'b0 : lim_ext134_pop32188_mux_q = in_lim_ext134_pop32188_1;
            1'b1 : lim_ext134_pop32188_mux_q = in_lim_ext134_pop32188_0;
            default : lim_ext134_pop32188_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext134_pop32188(GPOUT,30)
    assign out_lim_ext134_pop32188 = lim_ext134_pop32188_mux_q;

    // memdep_phi_pop31187_mux(MUX,24)
    assign memdep_phi_pop31187_mux_s = in_valid_in_0;
    always @(memdep_phi_pop31187_mux_s or in_memdep_phi_pop31187_1 or in_memdep_phi_pop31187_0)
    begin
        unique case (memdep_phi_pop31187_mux_s)
            1'b0 : memdep_phi_pop31187_mux_q = in_memdep_phi_pop31187_1;
            1'b1 : memdep_phi_pop31187_mux_q = in_memdep_phi_pop31187_0;
            default : memdep_phi_pop31187_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop31187(GPOUT,31)
    assign out_memdep_phi_pop31187 = memdep_phi_pop31187_mux_q;

    // notcmp101185_mux(MUX,25)
    assign notcmp101185_mux_s = in_valid_in_0;
    always @(notcmp101185_mux_s or in_notcmp101185_1 or in_notcmp101185_0)
    begin
        unique case (notcmp101185_mux_s)
            1'b0 : notcmp101185_mux_q = in_notcmp101185_1;
            1'b1 : notcmp101185_mux_q = in_notcmp101185_0;
            default : notcmp101185_mux_q = 1'b0;
        endcase
    end

    // out_notcmp101185(GPOUT,32)
    assign out_notcmp101185 = notcmp101185_mux_q;

    // valid_or(LOGICAL,38)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,36)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,33)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,37)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,34)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,35)
    assign out_valid_out = valid_or_q;

endmodule
