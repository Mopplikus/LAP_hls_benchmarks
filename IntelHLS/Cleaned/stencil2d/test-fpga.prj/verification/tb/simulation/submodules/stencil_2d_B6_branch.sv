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

// SystemVerilog created from stencil_2d_B6_branch
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B6_branch (
    input wire [0:0] in_c0_exe10208,
    input wire [0:0] in_c0_exe11209,
    input wire [31:0] in_c0_exe1199,
    input wire [0:0] in_c0_exe12210,
    input wire [0:0] in_c0_exe13211,
    input wire [0:0] in_c0_exe14212,
    input wire [31:0] in_c0_exe15,
    input wire [31:0] in_c0_exe16,
    input wire [0:0] in_c0_exe17,
    input wire [0:0] in_c0_exe18,
    input wire [0:0] in_c0_exe19,
    input wire [0:0] in_c0_exe20,
    input wire [0:0] in_c0_exe21,
    input wire [31:0] in_c0_exe22,
    input wire [31:0] in_c0_exe2200,
    input wire [0:0] in_c0_exe23,
    input wire [31:0] in_c0_exe24,
    input wire [31:0] in_c0_exe25,
    input wire [0:0] in_c0_exe26,
    input wire [0:0] in_c0_exe27,
    input wire [0:0] in_c0_exe28,
    input wire [31:0] in_c0_exe3201,
    input wire [31:0] in_c0_exe4202,
    input wire [0:0] in_c0_exe5203,
    input wire [0:0] in_c0_exe6204,
    input wire [31:0] in_c0_exe7205,
    input wire [0:0] in_c0_exe8206,
    input wire [0:0] in_c0_exe9207,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10208,
    output wire [0:0] out_c0_exe11209,
    output wire [31:0] out_c0_exe1199,
    output wire [0:0] out_c0_exe12210,
    output wire [0:0] out_c0_exe13211,
    output wire [0:0] out_c0_exe14212,
    output wire [31:0] out_c0_exe15,
    output wire [31:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [0:0] out_c0_exe20,
    output wire [0:0] out_c0_exe21,
    output wire [31:0] out_c0_exe22,
    output wire [31:0] out_c0_exe2200,
    output wire [0:0] out_c0_exe23,
    output wire [31:0] out_c0_exe24,
    output wire [31:0] out_c0_exe25,
    output wire [0:0] out_c0_exe26,
    output wire [0:0] out_c0_exe27,
    output wire [0:0] out_c0_exe28,
    output wire [31:0] out_c0_exe3201,
    output wire [31:0] out_c0_exe4202,
    output wire [0:0] out_c0_exe5203,
    output wire [0:0] out_c0_exe6204,
    output wire [31:0] out_c0_exe7205,
    output wire [0:0] out_c0_exe8206,
    output wire [0:0] out_c0_exe9207,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10208(GPOUT,32)
    assign out_c0_exe10208 = in_c0_exe10208;

    // out_c0_exe11209(GPOUT,33)
    assign out_c0_exe11209 = in_c0_exe11209;

    // out_c0_exe1199(GPOUT,34)
    assign out_c0_exe1199 = in_c0_exe1199;

    // out_c0_exe12210(GPOUT,35)
    assign out_c0_exe12210 = in_c0_exe12210;

    // out_c0_exe13211(GPOUT,36)
    assign out_c0_exe13211 = in_c0_exe13211;

    // out_c0_exe14212(GPOUT,37)
    assign out_c0_exe14212 = in_c0_exe14212;

    // out_c0_exe15(GPOUT,38)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,39)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,40)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe18(GPOUT,41)
    assign out_c0_exe18 = in_c0_exe18;

    // out_c0_exe19(GPOUT,42)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,43)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,44)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe22(GPOUT,45)
    assign out_c0_exe22 = in_c0_exe22;

    // out_c0_exe2200(GPOUT,46)
    assign out_c0_exe2200 = in_c0_exe2200;

    // out_c0_exe23(GPOUT,47)
    assign out_c0_exe23 = in_c0_exe23;

    // out_c0_exe24(GPOUT,48)
    assign out_c0_exe24 = in_c0_exe24;

    // out_c0_exe25(GPOUT,49)
    assign out_c0_exe25 = in_c0_exe25;

    // out_c0_exe26(GPOUT,50)
    assign out_c0_exe26 = in_c0_exe26;

    // out_c0_exe27(GPOUT,51)
    assign out_c0_exe27 = in_c0_exe27;

    // out_c0_exe28(GPOUT,52)
    assign out_c0_exe28 = in_c0_exe28;

    // out_c0_exe3201(GPOUT,53)
    assign out_c0_exe3201 = in_c0_exe3201;

    // out_c0_exe4202(GPOUT,54)
    assign out_c0_exe4202 = in_c0_exe4202;

    // out_c0_exe5203(GPOUT,55)
    assign out_c0_exe5203 = in_c0_exe5203;

    // out_c0_exe6204(GPOUT,56)
    assign out_c0_exe6204 = in_c0_exe6204;

    // out_c0_exe7205(GPOUT,57)
    assign out_c0_exe7205 = in_c0_exe7205;

    // out_c0_exe8206(GPOUT,58)
    assign out_c0_exe8206 = in_c0_exe8206;

    // out_c0_exe9207(GPOUT,59)
    assign out_c0_exe9207 = in_c0_exe9207;

    // stall_out(LOGICAL,62)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,60)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,61)
    assign out_valid_out_0 = in_valid_in;

endmodule
