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

// SystemVerilog created from kernel_3mm_B5_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:08 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B5_branch (
    input wire [0:0] in_c0_exe103958,
    input wire [31:0] in_c0_exe113969,
    input wire [0:0] in_c0_exe1239710,
    input wire [63:0] in_c0_exe1421,
    input wire [0:0] in_c0_exe1439912,
    input wire [0:0] in_c0_exe1540013,
    input wire [0:0] in_c0_exe1640114,
    input wire [0:0] in_c0_exe1740215,
    input wire [0:0] in_c0_exe1840316,
    input wire [0:0] in_c0_exe1940417,
    input wire [31:0] in_c0_exe2040518,
    input wire [0:0] in_c0_exe2140619,
    input wire [0:0] in_c0_exe2240720,
    input wire [0:0] in_c0_exe2340821,
    input wire [63:0] in_c0_exe23871,
    input wire [31:0] in_c0_exe2422,
    input wire [0:0] in_c0_exe2440922,
    input wire [0:0] in_c0_exe2541023,
    input wire [0:0] in_c0_exe2624,
    input wire [63:0] in_c0_exe33882,
    input wire [0:0] in_c0_exe63914,
    input wire [0:0] in_c0_exe73925,
    input wire [0:0] in_c0_exe83936,
    input wire [0:0] in_c0_exe93947,
    input wire [0:0] in_memdep,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe103958,
    output wire [31:0] out_c0_exe113969,
    output wire [0:0] out_c0_exe1239710,
    output wire [63:0] out_c0_exe1421,
    output wire [0:0] out_c0_exe1439912,
    output wire [0:0] out_c0_exe1540013,
    output wire [0:0] out_c0_exe1640114,
    output wire [0:0] out_c0_exe1740215,
    output wire [0:0] out_c0_exe1840316,
    output wire [0:0] out_c0_exe1940417,
    output wire [31:0] out_c0_exe2040518,
    output wire [0:0] out_c0_exe2140619,
    output wire [0:0] out_c0_exe2240720,
    output wire [0:0] out_c0_exe2340821,
    output wire [63:0] out_c0_exe23871,
    output wire [31:0] out_c0_exe2422,
    output wire [0:0] out_c0_exe2440922,
    output wire [0:0] out_c0_exe2541023,
    output wire [0:0] out_c0_exe2624,
    output wire [63:0] out_c0_exe33882,
    output wire [0:0] out_c0_exe63914,
    output wire [0:0] out_c0_exe73925,
    output wire [0:0] out_c0_exe83936,
    output wire [0:0] out_c0_exe93947,
    output wire [0:0] out_memdep,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe103958(GPOUT,29)
    assign out_c0_exe103958 = in_c0_exe103958;

    // out_c0_exe113969(GPOUT,30)
    assign out_c0_exe113969 = in_c0_exe113969;

    // out_c0_exe1239710(GPOUT,31)
    assign out_c0_exe1239710 = in_c0_exe1239710;

    // out_c0_exe1421(GPOUT,32)
    assign out_c0_exe1421 = in_c0_exe1421;

    // out_c0_exe1439912(GPOUT,33)
    assign out_c0_exe1439912 = in_c0_exe1439912;

    // out_c0_exe1540013(GPOUT,34)
    assign out_c0_exe1540013 = in_c0_exe1540013;

    // out_c0_exe1640114(GPOUT,35)
    assign out_c0_exe1640114 = in_c0_exe1640114;

    // out_c0_exe1740215(GPOUT,36)
    assign out_c0_exe1740215 = in_c0_exe1740215;

    // out_c0_exe1840316(GPOUT,37)
    assign out_c0_exe1840316 = in_c0_exe1840316;

    // out_c0_exe1940417(GPOUT,38)
    assign out_c0_exe1940417 = in_c0_exe1940417;

    // out_c0_exe2040518(GPOUT,39)
    assign out_c0_exe2040518 = in_c0_exe2040518;

    // out_c0_exe2140619(GPOUT,40)
    assign out_c0_exe2140619 = in_c0_exe2140619;

    // out_c0_exe2240720(GPOUT,41)
    assign out_c0_exe2240720 = in_c0_exe2240720;

    // out_c0_exe2340821(GPOUT,42)
    assign out_c0_exe2340821 = in_c0_exe2340821;

    // out_c0_exe23871(GPOUT,43)
    assign out_c0_exe23871 = in_c0_exe23871;

    // out_c0_exe2422(GPOUT,44)
    assign out_c0_exe2422 = in_c0_exe2422;

    // out_c0_exe2440922(GPOUT,45)
    assign out_c0_exe2440922 = in_c0_exe2440922;

    // out_c0_exe2541023(GPOUT,46)
    assign out_c0_exe2541023 = in_c0_exe2541023;

    // out_c0_exe2624(GPOUT,47)
    assign out_c0_exe2624 = in_c0_exe2624;

    // out_c0_exe33882(GPOUT,48)
    assign out_c0_exe33882 = in_c0_exe33882;

    // out_c0_exe63914(GPOUT,49)
    assign out_c0_exe63914 = in_c0_exe63914;

    // out_c0_exe73925(GPOUT,50)
    assign out_c0_exe73925 = in_c0_exe73925;

    // out_c0_exe83936(GPOUT,51)
    assign out_c0_exe83936 = in_c0_exe83936;

    // out_c0_exe93947(GPOUT,52)
    assign out_c0_exe93947 = in_c0_exe93947;

    // out_memdep(GPOUT,53)
    assign out_memdep = in_memdep;

    // stall_out(LOGICAL,56)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,54)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,55)
    assign out_valid_out_0 = in_valid_in;

endmodule
