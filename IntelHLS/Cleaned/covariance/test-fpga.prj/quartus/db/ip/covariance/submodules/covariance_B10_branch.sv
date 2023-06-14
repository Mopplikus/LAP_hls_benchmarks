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

// SystemVerilog created from covariance_B10_branch
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B10_branch (
    input wire [0:0] in_c0_exe10346,
    input wire [0:0] in_c0_exe11347,
    input wire [31:0] in_c0_exe12348,
    input wire [31:0] in_c0_exe13,
    input wire [0:0] in_c0_exe1337,
    input wire [31:0] in_c0_exe14,
    input wire [31:0] in_c0_exe15,
    input wire [32:0] in_c0_exe16,
    input wire [0:0] in_c0_exe17,
    input wire [0:0] in_c0_exe18,
    input wire [0:0] in_c0_exe19,
    input wire [31:0] in_c0_exe20,
    input wire [31:0] in_c0_exe21,
    input wire [0:0] in_c0_exe2338,
    input wire [31:0] in_c0_exe3339,
    input wire [31:0] in_c0_exe4340,
    input wire [31:0] in_c0_exe5341,
    input wire [31:0] in_c0_exe6342,
    input wire [31:0] in_c0_exe7343,
    input wire [0:0] in_c0_exe8344,
    input wire [0:0] in_c0_exe9345,
    input wire [0:0] in_memdep_phi2_pop50,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10346,
    output wire [0:0] out_c0_exe11347,
    output wire [31:0] out_c0_exe12348,
    output wire [31:0] out_c0_exe13,
    output wire [0:0] out_c0_exe1337,
    output wire [31:0] out_c0_exe14,
    output wire [31:0] out_c0_exe15,
    output wire [32:0] out_c0_exe16,
    output wire [0:0] out_c0_exe17,
    output wire [0:0] out_c0_exe18,
    output wire [0:0] out_c0_exe19,
    output wire [31:0] out_c0_exe20,
    output wire [31:0] out_c0_exe21,
    output wire [0:0] out_c0_exe2338,
    output wire [31:0] out_c0_exe3339,
    output wire [31:0] out_c0_exe4340,
    output wire [31:0] out_c0_exe5341,
    output wire [31:0] out_c0_exe6342,
    output wire [31:0] out_c0_exe7343,
    output wire [0:0] out_c0_exe8344,
    output wire [0:0] out_c0_exe9345,
    output wire [0:0] out_memdep_phi2_pop50,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10346(GPOUT,26)
    assign out_c0_exe10346 = in_c0_exe10346;

    // out_c0_exe11347(GPOUT,27)
    assign out_c0_exe11347 = in_c0_exe11347;

    // out_c0_exe12348(GPOUT,28)
    assign out_c0_exe12348 = in_c0_exe12348;

    // out_c0_exe13(GPOUT,29)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe1337(GPOUT,30)
    assign out_c0_exe1337 = in_c0_exe1337;

    // out_c0_exe14(GPOUT,31)
    assign out_c0_exe14 = in_c0_exe14;

    // out_c0_exe15(GPOUT,32)
    assign out_c0_exe15 = in_c0_exe15;

    // out_c0_exe16(GPOUT,33)
    assign out_c0_exe16 = in_c0_exe16;

    // out_c0_exe17(GPOUT,34)
    assign out_c0_exe17 = in_c0_exe17;

    // out_c0_exe18(GPOUT,35)
    assign out_c0_exe18 = in_c0_exe18;

    // out_c0_exe19(GPOUT,36)
    assign out_c0_exe19 = in_c0_exe19;

    // out_c0_exe20(GPOUT,37)
    assign out_c0_exe20 = in_c0_exe20;

    // out_c0_exe21(GPOUT,38)
    assign out_c0_exe21 = in_c0_exe21;

    // out_c0_exe2338(GPOUT,39)
    assign out_c0_exe2338 = in_c0_exe2338;

    // out_c0_exe3339(GPOUT,40)
    assign out_c0_exe3339 = in_c0_exe3339;

    // out_c0_exe4340(GPOUT,41)
    assign out_c0_exe4340 = in_c0_exe4340;

    // out_c0_exe5341(GPOUT,42)
    assign out_c0_exe5341 = in_c0_exe5341;

    // out_c0_exe6342(GPOUT,43)
    assign out_c0_exe6342 = in_c0_exe6342;

    // out_c0_exe7343(GPOUT,44)
    assign out_c0_exe7343 = in_c0_exe7343;

    // out_c0_exe8344(GPOUT,45)
    assign out_c0_exe8344 = in_c0_exe8344;

    // out_c0_exe9345(GPOUT,46)
    assign out_c0_exe9345 = in_c0_exe9345;

    // out_memdep_phi2_pop50(GPOUT,47)
    assign out_memdep_phi2_pop50 = in_memdep_phi2_pop50;

    // stall_out(LOGICAL,50)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,48)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,49)
    assign out_valid_out_0 = in_valid_in;

endmodule
