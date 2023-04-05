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

// SystemVerilog created from bicg_B7_branch
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_B7_branch (
    input wire [63:0] in_c0_exe1119,
    input wire [63:0] in_c0_exe2120,
    input wire [31:0] in_c0_exe3121,
    input wire [0:0] in_c0_exe4122,
    input wire [0:0] in_c0_exe5123,
    input wire [0:0] in_memdep_phi_pop18,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [63:0] out_c0_exe1119,
    output wire [63:0] out_c0_exe2120,
    output wire [31:0] out_c0_exe3121,
    output wire [0:0] out_c0_exe4122,
    output wire [0:0] out_c0_exe5123,
    output wire [0:0] out_memdep_phi_pop18,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1119(GPOUT,10)
    assign out_c0_exe1119 = in_c0_exe1119;

    // out_c0_exe2120(GPOUT,11)
    assign out_c0_exe2120 = in_c0_exe2120;

    // out_c0_exe3121(GPOUT,12)
    assign out_c0_exe3121 = in_c0_exe3121;

    // out_c0_exe4122(GPOUT,13)
    assign out_c0_exe4122 = in_c0_exe4122;

    // out_c0_exe5123(GPOUT,14)
    assign out_c0_exe5123 = in_c0_exe5123;

    // out_memdep_phi_pop18(GPOUT,15)
    assign out_memdep_phi_pop18 = in_memdep_phi_pop18;

    // stall_out(LOGICAL,18)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,16)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,17)
    assign out_valid_out_0 = in_valid_in;

endmodule
