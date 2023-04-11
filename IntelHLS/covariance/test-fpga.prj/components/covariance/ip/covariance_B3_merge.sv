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

// SystemVerilog created from covariance_B3_merge
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B3_merge (
    input wire [0:0] in_forked74_0,
    input wire [0:0] in_forked74_1,
    input wire [31:0] in_lim_ext109_0,
    input wire [31:0] in_lim_ext109_1,
    input wire [0:0] in_memdep_phi1_pop16114_0,
    input wire [0:0] in_memdep_phi1_pop16114_1,
    input wire [0:0] in_memdep_phi2_pop17119_0,
    input wire [0:0] in_memdep_phi2_pop17119_1,
    input wire [0:0] in_memdep_phi4_pop18124_0,
    input wire [0:0] in_memdep_phi4_pop18124_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_forked74,
    output wire [31:0] out_lim_ext109,
    output wire [0:0] out_memdep_phi1_pop16114,
    output wire [0:0] out_memdep_phi2_pop17119,
    output wire [0:0] out_memdep_phi4_pop18124,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] forked74_mux_s;
    reg [0:0] forked74_mux_q;
    wire [0:0] lim_ext109_mux_s;
    reg [31:0] lim_ext109_mux_q;
    wire [0:0] memdep_phi1_pop16114_mux_s;
    reg [0:0] memdep_phi1_pop16114_mux_q;
    wire [0:0] memdep_phi2_pop17119_mux_s;
    reg [0:0] memdep_phi2_pop17119_mux_q;
    wire [0:0] memdep_phi4_pop18124_mux_s;
    reg [0:0] memdep_phi4_pop18124_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // forked74_mux(MUX,2)
    assign forked74_mux_s = in_valid_in_0;
    always @(forked74_mux_s or in_forked74_1 or in_forked74_0)
    begin
        unique case (forked74_mux_s)
            1'b0 : forked74_mux_q = in_forked74_1;
            1'b1 : forked74_mux_q = in_forked74_0;
            default : forked74_mux_q = 1'b0;
        endcase
    end

    // out_forked74(GPOUT,20)
    assign out_forked74 = forked74_mux_q;

    // lim_ext109_mux(MUX,16)
    assign lim_ext109_mux_s = in_valid_in_0;
    always @(lim_ext109_mux_s or in_lim_ext109_1 or in_lim_ext109_0)
    begin
        unique case (lim_ext109_mux_s)
            1'b0 : lim_ext109_mux_q = in_lim_ext109_1;
            1'b1 : lim_ext109_mux_q = in_lim_ext109_0;
            default : lim_ext109_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext109(GPOUT,21)
    assign out_lim_ext109 = lim_ext109_mux_q;

    // memdep_phi1_pop16114_mux(MUX,17)
    assign memdep_phi1_pop16114_mux_s = in_valid_in_0;
    always @(memdep_phi1_pop16114_mux_s or in_memdep_phi1_pop16114_1 or in_memdep_phi1_pop16114_0)
    begin
        unique case (memdep_phi1_pop16114_mux_s)
            1'b0 : memdep_phi1_pop16114_mux_q = in_memdep_phi1_pop16114_1;
            1'b1 : memdep_phi1_pop16114_mux_q = in_memdep_phi1_pop16114_0;
            default : memdep_phi1_pop16114_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi1_pop16114(GPOUT,22)
    assign out_memdep_phi1_pop16114 = memdep_phi1_pop16114_mux_q;

    // memdep_phi2_pop17119_mux(MUX,18)
    assign memdep_phi2_pop17119_mux_s = in_valid_in_0;
    always @(memdep_phi2_pop17119_mux_s or in_memdep_phi2_pop17119_1 or in_memdep_phi2_pop17119_0)
    begin
        unique case (memdep_phi2_pop17119_mux_s)
            1'b0 : memdep_phi2_pop17119_mux_q = in_memdep_phi2_pop17119_1;
            1'b1 : memdep_phi2_pop17119_mux_q = in_memdep_phi2_pop17119_0;
            default : memdep_phi2_pop17119_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi2_pop17119(GPOUT,23)
    assign out_memdep_phi2_pop17119 = memdep_phi2_pop17119_mux_q;

    // memdep_phi4_pop18124_mux(MUX,19)
    assign memdep_phi4_pop18124_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop18124_mux_s or in_memdep_phi4_pop18124_1 or in_memdep_phi4_pop18124_0)
    begin
        unique case (memdep_phi4_pop18124_mux_s)
            1'b0 : memdep_phi4_pop18124_mux_q = in_memdep_phi4_pop18124_1;
            1'b1 : memdep_phi4_pop18124_mux_q = in_memdep_phi4_pop18124_0;
            default : memdep_phi4_pop18124_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop18124(GPOUT,24)
    assign out_memdep_phi4_pop18124 = memdep_phi4_pop18124_mux_q;

    // valid_or(LOGICAL,30)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,28)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,25)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,29)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,26)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,27)
    assign out_valid_out = valid_or_q;

endmodule
