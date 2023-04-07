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

// SystemVerilog created from gaussian_B4_merge
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B4_merge (
    input wire [31:0] in_fpga_indvars_iv7_0,
    input wire [31:0] in_fpga_indvars_iv7_1,
    input wire [31:0] in_fpga_indvars_iv9_0,
    input wire [31:0] in_fpga_indvars_iv9_1,
    input wire [31:0] in_j_018_0,
    input wire [31:0] in_j_018_1,
    input wire [0:0] in_memdep_phi4_pop729_0,
    input wire [0:0] in_memdep_phi4_pop729_1,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    input wire [0:0] in_valid_in_1,
    output wire [31:0] out_fpga_indvars_iv7,
    output wire [31:0] out_fpga_indvars_iv9,
    output wire [31:0] out_j_018,
    output wire [0:0] out_memdep_phi4_pop729,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_stall_out_1,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] VCC_q;
    wire [0:0] fpga_indvars_iv7_mux_s;
    reg [31:0] fpga_indvars_iv7_mux_q;
    wire [0:0] fpga_indvars_iv9_mux_s;
    reg [31:0] fpga_indvars_iv9_mux_q;
    wire [0:0] j_018_mux_s;
    reg [31:0] j_018_mux_q;
    wire [0:0] memdep_phi4_pop729_mux_s;
    reg [0:0] memdep_phi4_pop729_mux_q;
    wire [0:0] stall_out_q;
    wire [0:0] stall_out_1_specific_q;
    wire [0:0] valid_or_q;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // fpga_indvars_iv7_mux(MUX,2)
    assign fpga_indvars_iv7_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv7_mux_s or in_fpga_indvars_iv7_1 or in_fpga_indvars_iv7_0)
    begin
        unique case (fpga_indvars_iv7_mux_s)
            1'b0 : fpga_indvars_iv7_mux_q = in_fpga_indvars_iv7_1;
            1'b1 : fpga_indvars_iv7_mux_q = in_fpga_indvars_iv7_0;
            default : fpga_indvars_iv7_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv7(GPOUT,17)
    assign out_fpga_indvars_iv7 = fpga_indvars_iv7_mux_q;

    // fpga_indvars_iv9_mux(MUX,3)
    assign fpga_indvars_iv9_mux_s = in_valid_in_0;
    always @(fpga_indvars_iv9_mux_s or in_fpga_indvars_iv9_1 or in_fpga_indvars_iv9_0)
    begin
        unique case (fpga_indvars_iv9_mux_s)
            1'b0 : fpga_indvars_iv9_mux_q = in_fpga_indvars_iv9_1;
            1'b1 : fpga_indvars_iv9_mux_q = in_fpga_indvars_iv9_0;
            default : fpga_indvars_iv9_mux_q = 32'b0;
        endcase
    end

    // out_fpga_indvars_iv9(GPOUT,18)
    assign out_fpga_indvars_iv9 = fpga_indvars_iv9_mux_q;

    // j_018_mux(MUX,15)
    assign j_018_mux_s = in_valid_in_0;
    always @(j_018_mux_s or in_j_018_1 or in_j_018_0)
    begin
        unique case (j_018_mux_s)
            1'b0 : j_018_mux_q = in_j_018_1;
            1'b1 : j_018_mux_q = in_j_018_0;
            default : j_018_mux_q = 32'b0;
        endcase
    end

    // out_j_018(GPOUT,19)
    assign out_j_018 = j_018_mux_q;

    // memdep_phi4_pop729_mux(MUX,16)
    assign memdep_phi4_pop729_mux_s = in_valid_in_0;
    always @(memdep_phi4_pop729_mux_s or in_memdep_phi4_pop729_1 or in_memdep_phi4_pop729_0)
    begin
        unique case (memdep_phi4_pop729_mux_s)
            1'b0 : memdep_phi4_pop729_mux_q = in_memdep_phi4_pop729_1;
            1'b1 : memdep_phi4_pop729_mux_q = in_memdep_phi4_pop729_0;
            default : memdep_phi4_pop729_mux_q = 1'b0;
        endcase
    end

    // out_memdep_phi4_pop729(GPOUT,20)
    assign out_memdep_phi4_pop729 = memdep_phi4_pop729_mux_q;

    // valid_or(LOGICAL,26)
    assign valid_or_q = in_valid_in_0 | in_valid_in_1;

    // stall_out(LOGICAL,24)
    assign stall_out_q = valid_or_q & in_stall_in;

    // out_stall_out_0(GPOUT,21)
    assign out_stall_out_0 = stall_out_q;

    // stall_out_1_specific(LOGICAL,25)
    assign stall_out_1_specific_q = in_valid_in_0 | stall_out_q;

    // out_stall_out_1(GPOUT,22)
    assign out_stall_out_1 = stall_out_1_specific_q;

    // out_valid_out(GPOUT,23)
    assign out_valid_out = valid_or_q;

endmodule
