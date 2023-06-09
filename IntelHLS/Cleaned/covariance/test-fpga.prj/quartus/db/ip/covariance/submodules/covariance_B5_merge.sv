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
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B5_merge (
    input wire [0:0] in_exitcond10123_0,
    input wire [0:0] in_exitcond10123_1,
    input wire [0:0] in_forked54_0,
    input wire [0:0] in_forked54_1,
    input wire [31:0] in_j_077_pop19125_0,
    input wire [31:0] in_j_077_pop19125_1,
    input wire [31:0] in_lim_ext117_0,
    input wire [31:0] in_lim_ext117_1,
    input wire [31:0] in_lim_ext79_pop21127_0,
    input wire [31:0] in_lim_ext79_pop21127_1,
    input wire [0:0] in_memdep_phi_pop20126_0,
    input wire [0:0] in_memdep_phi_pop20126_1,
    input wire [0:0] in_notcmp69124_0,
    input wire [0:0] in_notcmp69124_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [0:0] out_exitcond10123,
    output wire [0:0] out_forked54,
    output wire [31:0] out_j_077_pop19125,
    output wire [31:0] out_lim_ext117,
    output wire [31:0] out_lim_ext79_pop21127,
    output wire [0:0] out_memdep_phi_pop20126,
    output wire [0:0] out_notcmp69124,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] exitcond10123_mux_s;
    reg [0:0] exitcond10123_mux_q;
    wire [0:0] forked54_mux_s;
    reg [0:0] forked54_mux_q;
    wire [0:0] j_077_pop19125_mux_s;
    reg [31:0] j_077_pop19125_mux_q;
    wire [0:0] lim_ext117_mux_s;
    reg [31:0] lim_ext117_mux_q;
    wire [0:0] lim_ext79_pop21127_mux_s;
    reg [31:0] lim_ext79_pop21127_mux_q;
    wire [0:0] memdep_phi_pop20126_mux_s;
    reg [0:0] memdep_phi_pop20126_mux_q;
    wire [0:0] notcmp69124_mux_s;
    reg [0:0] notcmp69124_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // exitcond10123_mux(MUX,2)
    assign exitcond10123_mux_s = in_valid_in_0;
    always @(exitcond10123_mux_s or in_exitcond10123_1 or in_exitcond10123_0)
    begin
        unique case (exitcond10123_mux_s)
            1'b0 : exitcond10123_mux_q = in_exitcond10123_1;
            1'b1 : exitcond10123_mux_q = in_exitcond10123_0;
            default : exitcond10123_mux_q = 1'b0;
        endcase
    end

    // out_exitcond10123(GPOUT,26)
    assign out_exitcond10123 = exitcond10123_mux_q;

    // forked54_mux(MUX,3)
    assign forked54_mux_s = in_valid_in_0;
    always @(forked54_mux_s or in_forked54_1 or in_forked54_0)
    begin
        unique case (forked54_mux_s)
            1'b0 : forked54_mux_q = in_forked54_1;
            1'b1 : forked54_mux_q = in_forked54_0;
            default : forked54_mux_q = 1'b0;
        endcase
    end

    // out_forked54(GPOUT,27)
    assign out_forked54 = forked54_mux_q;

    // j_077_pop19125_mux(MUX,21)
    assign j_077_pop19125_mux_s = in_valid_in_0;
    always @(j_077_pop19125_mux_s or in_j_077_pop19125_1 or in_j_077_pop19125_0)
    begin
        unique case (j_077_pop19125_mux_s)
            1'b0 : j_077_pop19125_mux_q = in_j_077_pop19125_1;
            1'b1 : j_077_pop19125_mux_q = in_j_077_pop19125_0;
            default : j_077_pop19125_mux_q = 32'b0;
        endcase
    end

    // out_j_077_pop19125(GPOUT,28)
    assign out_j_077_pop19125 = j_077_pop19125_mux_q;

    // lim_ext117_mux(MUX,22)
    assign lim_ext117_mux_s = in_valid_in_0;
    always @(lim_ext117_mux_s or in_lim_ext117_1 or in_lim_ext117_0)
    begin
        unique case (lim_ext117_mux_s)
            1'b0 : lim_ext117_mux_q = in_lim_ext117_1;
            1'b1 : lim_ext117_mux_q = in_lim_ext117_0;
            default : lim_ext117_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext117(GPOUT,29)
    assign out_lim_ext117 = lim_ext117_mux_q;

    // lim_ext79_pop21127_mux(MUX,23)
    assign lim_ext79_pop21127_mux_s = in_valid_in_0;
    always @(lim_ext79_pop21127_mux_s or in_lim_ext79_pop21127_1 or in_lim_ext79_pop21127_0)
    begin
        unique case (lim_ext79_pop21127_mux_s)
            1'b0 : lim_ext79_pop21127_mux_q = in_lim_ext79_pop21127_1;
            1'b1 : lim_ext79_pop21127_mux_q = in_lim_ext79_pop21127_0;
            default : lim_ext79_pop21127_mux_q = 32'b0;
        endcase
    end

    // out_lim_ext79_pop21127(GPOUT,30)
    assign out_lim_ext79_pop21127 = lim_ext79_pop21127_mux_q;

    // memdep_phi_pop20126_mux(MUX,24)
    assign memdep_phi_pop20126_mux_s = in_valid_in_0;
    always @(memdep_phi_pop20126_mux_s or in_memdep_phi_pop20126_1 or in_memdep_phi_pop20126_0)
    begin
        unique case (memdep_phi_pop20126_mux_s)
            1'b0 : memdep_phi_pop20126_mux_q = in_memdep_phi_pop20126_1;
            1'b1 : memdep_phi_pop20126_mux_q = in_memdep_phi_pop20126_0;
            default : memdep_phi_pop20126_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi_pop20126(GPOUT,31)
    assign out_memdep_phi_pop20126 = memdep_phi_pop20126_mux_q;

    // notcmp69124_mux(MUX,25)
    assign notcmp69124_mux_s = in_valid_in_0;
    always @(notcmp69124_mux_s or in_notcmp69124_1 or in_notcmp69124_0)
    begin
        unique case (notcmp69124_mux_s)
            1'b0 : notcmp69124_mux_q = in_notcmp69124_1;
            1'b1 : notcmp69124_mux_q = in_notcmp69124_0;
            default : notcmp69124_mux_q = 1'b0;
        endcase
    end

    // out_notcmp69124(GPOUT,32)
    assign out_notcmp69124 = notcmp69124_mux_q;

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
