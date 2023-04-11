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

// SystemVerilog created from gaussian_B5_branch
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B5_branch (
    input wire [31:0] in_c0_exe11,
    input wire [31:0] in_c0_exe12,
    input wire [31:0] in_c0_exe13,
    input wire [0:0] in_c0_exe14,
    input wire [32:0] in_c0_exe15,
    input wire [31:0] in_c0_exe16,
    input wire [0:0] in_c0_exe17,
    input wire [0:0] in_c0_exe191,
    input wire [0:0] in_c0_exe292,
    input wire [0:0] in_c0_exe3,
    input wire [31:0] in_c0_exe4,
    input wire [0:0] in_c0_exe5,
    input wire [31:0] in_c0_exe6,
    input wire [31:0] in_c0_exe7,
    input wire [31:0] in_c0_exe8,
    input wire [31:0] in_c0_exe9,
    input wire [0:0] in_memdep_phi_pop10,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe11,
    output wire [31:0] out_c0_exe12,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [32:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe191,
    output wire [0:0] out_c0_exe292,
    output wire [0:0] out_c0_exe3,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe5,
    output wire [31:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [31:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_memdep_phi_pop10,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe11(GPOUT,21)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,22)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe13(GPOUT,23)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe14(GPOUT,24)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,25)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,26)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,27)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe191(GPOUT,28)
    assign out_c0_exe191 = in_c0_exe191;

    // out_c0_exe292(GPOUT,29)
    assign out_c0_exe292 = in_c0_exe292;

    // out_c0_exe3(GPOUT,30)
    assign out_c0_exe3 = in_c0_exe3;

    // out_c0_exe4(GPOUT,31)
    assign out_c0_exe4 = in_c0_exe4;

    // out_c0_exe5(GPOUT,32)
    assign out_c0_exe5 = in_c0_exe5;

    // out_c0_exe6(GPOUT,33)
    assign out_c0_exe6 = in_c0_exe6;

    // out_c0_exe7(GPOUT,34)
    assign out_c0_exe7 = in_c0_exe7;

    // out_c0_exe8(GPOUT,35)
    assign out_c0_exe8 = in_c0_exe8;

    // out_c0_exe9(GPOUT,36)
    assign out_c0_exe9 = in_c0_exe9;

    // out_memdep_phi_pop10(GPOUT,37)
    assign out_memdep_phi_pop10 = in_memdep_phi_pop10;

    // stall_out(LOGICAL,40)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,38)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,39)
    assign out_valid_out_0 = in_valid_in;

endmodule
