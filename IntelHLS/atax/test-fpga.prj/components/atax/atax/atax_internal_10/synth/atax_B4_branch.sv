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

// SystemVerilog created from atax_B4_branch
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:54 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B4_branch (
    input wire [0:0] in_c0_exe101288,
    input wire [0:0] in_c0_exe119,
    input wire [0:0] in_c0_exe1210,
    input wire [63:0] in_c0_exe21201,
    input wire [31:0] in_c0_exe31212,
    input wire [0:0] in_c0_exe51233,
    input wire [0:0] in_c0_exe61244,
    input wire [63:0] in_c0_exe81266,
    input wire [0:0] in_c0_exe91277,
    input wire [0:0] in_memdep_phi2_pop13,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe101288,
    output wire [0:0] out_c0_exe119,
    output wire [0:0] out_c0_exe1210,
    output wire [63:0] out_c0_exe21201,
    output wire [31:0] out_c0_exe31212,
    output wire [0:0] out_c0_exe51233,
    output wire [0:0] out_c0_exe61244,
    output wire [63:0] out_c0_exe81266,
    output wire [0:0] out_c0_exe91277,
    output wire [0:0] out_memdep_phi2_pop13,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe101288(GPOUT,14)
    assign out_c0_exe101288 = in_c0_exe101288;

    // out_c0_exe119(GPOUT,15)
    assign out_c0_exe119 = in_c0_exe119;

    // out_c0_exe1210(GPOUT,16)
    assign out_c0_exe1210 = in_c0_exe1210;

    // out_c0_exe21201(GPOUT,17)
    assign out_c0_exe21201 = in_c0_exe21201;

    // out_c0_exe31212(GPOUT,18)
    assign out_c0_exe31212 = in_c0_exe31212;

    // out_c0_exe51233(GPOUT,19)
    assign out_c0_exe51233 = in_c0_exe51233;

    // out_c0_exe61244(GPOUT,20)
    assign out_c0_exe61244 = in_c0_exe61244;

    // out_c0_exe81266(GPOUT,21)
    assign out_c0_exe81266 = in_c0_exe81266;

    // out_c0_exe91277(GPOUT,22)
    assign out_c0_exe91277 = in_c0_exe91277;

    // out_memdep_phi2_pop13(GPOUT,23)
    assign out_memdep_phi2_pop13 = in_memdep_phi2_pop13;

    // stall_out(LOGICAL,26)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,24)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,25)
    assign out_valid_out_0 = in_valid_in;

endmodule
