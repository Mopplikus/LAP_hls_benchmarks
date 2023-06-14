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

// SystemVerilog created from covariance_B12_merge
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B12_merge (
    input wire [31:0] in_c0_exe1041520_0,
    input wire [0:0] in_c0_exe1141622_0,
    input wire [0:0] in_c0_exe1241723_0,
    input wire [0:0] in_c0_exe1341824_0,
    input wire [0:0] in_c0_exe1441925_0,
    input wire [0:0] in_c0_exe1542026_0,
    input wire [31:0] in_c0_exe541015_0,
    input wire [31:0] in_c0_exe841318_0,
    input wire [31:0] in_c0_exe941419_0,
    input wire [31:0] in_c1_exe143827_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_c0_exe1041520,
    output wire [0:0] out_c0_exe1141622,
    output wire [0:0] out_c0_exe1241723,
    output wire [0:0] out_c0_exe1341824,
    output wire [0:0] out_c0_exe1441925,
    output wire [0:0] out_c0_exe1542026,
    output wire [31:0] out_c0_exe541015,
    output wire [31:0] out_c0_exe841318,
    output wire [31:0] out_c0_exe941419,
    output wire [31:0] out_c1_exe143827,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1041520(GPOUT,14)
    assign out_c0_exe1041520 = in_c0_exe1041520_0;

    // out_c0_exe1141622(GPOUT,15)
    assign out_c0_exe1141622 = in_c0_exe1141622_0;

    // out_c0_exe1241723(GPOUT,16)
    assign out_c0_exe1241723 = in_c0_exe1241723_0;

    // out_c0_exe1341824(GPOUT,17)
    assign out_c0_exe1341824 = in_c0_exe1341824_0;

    // out_c0_exe1441925(GPOUT,18)
    assign out_c0_exe1441925 = in_c0_exe1441925_0;

    // out_c0_exe1542026(GPOUT,19)
    assign out_c0_exe1542026 = in_c0_exe1542026_0;

    // out_c0_exe541015(GPOUT,20)
    assign out_c0_exe541015 = in_c0_exe541015_0;

    // out_c0_exe841318(GPOUT,21)
    assign out_c0_exe841318 = in_c0_exe841318_0;

    // out_c0_exe941419(GPOUT,22)
    assign out_c0_exe941419 = in_c0_exe941419_0;

    // out_c1_exe143827(GPOUT,23)
    assign out_c1_exe143827 = in_c1_exe143827_0;

    // stall_out(LOGICAL,26)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,24)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,25)
    assign out_valid_out = in_valid_in_0;

endmodule
