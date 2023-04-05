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

// SystemVerilog created from covariance_B8_merge
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:06 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B8_merge (
    input wire [63:0] in_c0_exe23084_0,
    input wire [31:0] in_c0_exe33095_0,
    input wire [31:0] in_c0_exe53116_0,
    input wire [0:0] in_c0_exe63127_0,
    input wire [0:0] in_c0_exe73138_0,
    input wire [31:0] in_c0_exe83149_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [63:0] out_c0_exe23084,
    output wire [31:0] out_c0_exe33095,
    output wire [31:0] out_c0_exe53116,
    output wire [0:0] out_c0_exe63127,
    output wire [0:0] out_c0_exe73138,
    output wire [31:0] out_c0_exe83149,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe23084(GPOUT,10)
    assign out_c0_exe23084 = in_c0_exe23084_0;

    // out_c0_exe33095(GPOUT,11)
    assign out_c0_exe33095 = in_c0_exe33095_0;

    // out_c0_exe53116(GPOUT,12)
    assign out_c0_exe53116 = in_c0_exe53116_0;

    // out_c0_exe63127(GPOUT,13)
    assign out_c0_exe63127 = in_c0_exe63127_0;

    // out_c0_exe73138(GPOUT,14)
    assign out_c0_exe73138 = in_c0_exe73138_0;

    // out_c0_exe83149(GPOUT,15)
    assign out_c0_exe83149 = in_c0_exe83149_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

endmodule
