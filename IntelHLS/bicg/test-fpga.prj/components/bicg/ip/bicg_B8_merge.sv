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

// SystemVerilog created from bicg_B8_merge
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_B8_merge (
    input wire [0:0] in_c0_exe21413_0,
    input wire [31:0] in_c0_exe31424_0,
    input wire [63:0] in_c0_exe51445_0,
    input wire [0:0] in_c0_exe61456_0,
    input wire [0:0] in_c0_exe71467_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_c0_exe21413,
    output wire [31:0] out_c0_exe31424,
    output wire [63:0] out_c0_exe51445,
    output wire [0:0] out_c0_exe61456,
    output wire [0:0] out_c0_exe71467,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe21413(GPOUT,9)
    assign out_c0_exe21413 = in_c0_exe21413_0;

    // out_c0_exe31424(GPOUT,10)
    assign out_c0_exe31424 = in_c0_exe31424_0;

    // out_c0_exe51445(GPOUT,11)
    assign out_c0_exe51445 = in_c0_exe51445_0;

    // out_c0_exe61456(GPOUT,12)
    assign out_c0_exe61456 = in_c0_exe61456_0;

    // out_c0_exe71467(GPOUT,13)
    assign out_c0_exe71467 = in_c0_exe71467_0;

    // stall_out(LOGICAL,16)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = in_valid_in_0;

endmodule
