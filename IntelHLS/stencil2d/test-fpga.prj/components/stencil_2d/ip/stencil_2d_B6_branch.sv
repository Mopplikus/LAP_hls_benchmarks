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
// SystemVerilog created on Tue Apr  4 22:01:35 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_B6_branch (
    input wire [31:0] in_c0_exe1179,
    input wire [31:0] in_c0_exe2180,
    input wire [0:0] in_c0_exe4,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1179,
    output wire [31:0] out_c0_exe2180,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1179(GPOUT,7)
    assign out_c0_exe1179 = in_c0_exe1179;

    // out_c0_exe2180(GPOUT,8)
    assign out_c0_exe2180 = in_c0_exe2180;

    // out_c0_exe4(GPOUT,9)
    assign out_c0_exe4 = in_c0_exe4;

    // stall_out(LOGICAL,12)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,10)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,11)
    assign out_valid_out_0 = in_valid_in;

endmodule
