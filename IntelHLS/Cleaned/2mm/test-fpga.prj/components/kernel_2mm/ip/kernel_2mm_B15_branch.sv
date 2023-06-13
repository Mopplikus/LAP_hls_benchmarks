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

// SystemVerilog created from kernel_2mm_B15_branch
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B15_branch (
    input wire [31:0] in_c0_exe11314,
    input wire [31:0] in_c0_exe12315,
    input wire [31:0] in_c0_exe1304,
    input wire [0:0] in_c0_exe13316,
    input wire [0:0] in_c0_exe14,
    input wire [0:0] in_c0_exe15,
    input wire [31:0] in_c0_exe2305,
    input wire [63:0] in_c0_exe3306,
    input wire [0:0] in_c0_exe4307,
    input wire [0:0] in_c0_exe5308,
    input wire [31:0] in_c0_exe6309,
    input wire [0:0] in_c0_exe7310,
    input wire [0:0] in_c0_exe8311,
    input wire [0:0] in_c0_exe9312,
    input wire [31:0] in_c1_exe1322,
    input wire [0:0] in_memdep_phi_pop40,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe11314,
    output wire [31:0] out_c0_exe12315,
    output wire [31:0] out_c0_exe1304,
    output wire [0:0] out_c0_exe13316,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe15,
    output wire [31:0] out_c0_exe2305,
    output wire [63:0] out_c0_exe3306,
    output wire [0:0] out_c0_exe4307,
    output wire [0:0] out_c0_exe5308,
    output wire [31:0] out_c0_exe6309,
    output wire [0:0] out_c0_exe7310,
    output wire [0:0] out_c0_exe8311,
    output wire [0:0] out_c0_exe9312,
    output wire [31:0] out_c1_exe1322,
    output wire [0:0] out_memdep_phi_pop40,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe11314(GPOUT,20)
    assign out_c0_exe11314 = in_c0_exe11314;

    // out_c0_exe12315(GPOUT,21)
    assign out_c0_exe12315 = in_c0_exe12315;

    // out_c0_exe1304(GPOUT,22)
    assign out_c0_exe1304 = in_c0_exe1304;

    // out_c0_exe13316(GPOUT,23)
    assign out_c0_exe13316 = in_c0_exe13316;

    // out_c0_exe14(GPOUT,24)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,25)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe2305(GPOUT,26)
    assign out_c0_exe2305 = in_c0_exe2305;

    // out_c0_exe3306(GPOUT,27)
    assign out_c0_exe3306 = in_c0_exe3306;

    // out_c0_exe4307(GPOUT,28)
    assign out_c0_exe4307 = in_c0_exe4307;

    // out_c0_exe5308(GPOUT,29)
    assign out_c0_exe5308 = in_c0_exe5308;

    // out_c0_exe6309(GPOUT,30)
    assign out_c0_exe6309 = in_c0_exe6309;

    // out_c0_exe7310(GPOUT,31)
    assign out_c0_exe7310 = in_c0_exe7310;

    // out_c0_exe8311(GPOUT,32)
    assign out_c0_exe8311 = in_c0_exe8311;

    // out_c0_exe9312(GPOUT,33)
    assign out_c0_exe9312 = in_c0_exe9312;

    // out_c1_exe1322(GPOUT,34)
    assign out_c1_exe1322 = in_c1_exe1322;

    // out_memdep_phi_pop40(GPOUT,35)
    assign out_memdep_phi_pop40 = in_memdep_phi_pop40;

    // stall_out(LOGICAL,38)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,36)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,37)
    assign out_valid_out_0 = in_valid_in;

endmodule
