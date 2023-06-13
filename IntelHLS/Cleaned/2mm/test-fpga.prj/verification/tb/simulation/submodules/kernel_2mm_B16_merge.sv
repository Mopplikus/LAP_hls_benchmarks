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

// SystemVerilog created from kernel_2mm_B16_merge
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_B16_merge (
    input wire [0:0] in_c0_exe1037113_0,
    input wire [0:0] in_c0_exe1137214_0,
    input wire [0:0] in_c0_exe73689_0,
    input wire [0:0] in_c0_exe836911_0,
    input wire [63:0] in_c0_exe937012_0,
    input wire [31:0] in_c1_exe139015_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe1037113,
    output wire [0:0] out_c0_exe1137214,
    output wire [0:0] out_c0_exe73689,
    output wire [0:0] out_c0_exe836911,
    output wire [63:0] out_c0_exe937012,
    output wire [31:0] out_c1_exe139015,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1037113(GPOUT,10)
    assign out_c0_exe1037113 = in_c0_exe1037113_0;

    // out_c0_exe1137214(GPOUT,11)
    assign out_c0_exe1137214 = in_c0_exe1137214_0;

    // out_c0_exe73689(GPOUT,12)
    assign out_c0_exe73689 = in_c0_exe73689_0;

    // out_c0_exe836911(GPOUT,13)
    assign out_c0_exe836911 = in_c0_exe836911_0;

    // out_c0_exe937012(GPOUT,14)
    assign out_c0_exe937012 = in_c0_exe937012_0;

    // out_c1_exe139015(GPOUT,15)
    assign out_c1_exe139015 = in_c1_exe139015_0;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,16)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,17)
    assign out_valid_out = in_valid_in_0;

endmodule
