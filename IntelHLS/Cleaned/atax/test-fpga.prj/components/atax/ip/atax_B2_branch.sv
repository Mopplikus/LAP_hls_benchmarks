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

// SystemVerilog created from atax_B2_branch
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B2_branch (
    input wire [0:0] in_c0_exe189,
    input wire [0:0] in_c0_exe2,
    input wire [63:0] in_c1_exe1,
    input wire [31:0] in_c1_exe2,
    input wire [0:0] in_memdep_phi3_pop13,
    input wire [0:0] in_memdep_phi_pop12,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_atax7,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe189,
    output wire [0:0] out_c0_exe2,
    output wire [63:0] out_c1_exe1,
    output wire [31:0] out_c1_exe2,
    output wire [0:0] out_memdep_phi3_pop13,
    output wire [0:0] out_memdep_phi_pop12,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_atax7,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe189(GPOUT,11)
    assign out_c0_exe189 = in_c0_exe189;

    // out_c0_exe2(GPOUT,12)
    assign out_c0_exe2 = in_c0_exe2;

    // out_c1_exe1(GPOUT,13)
    assign out_c1_exe1 = in_c1_exe1;

    // out_c1_exe2(GPOUT,14)
    assign out_c1_exe2 = in_c1_exe2;

    // out_memdep_phi3_pop13(GPOUT,15)
    assign out_memdep_phi3_pop13 = in_memdep_phi3_pop13;

    // out_memdep_phi_pop12(GPOUT,16)
    assign out_memdep_phi_pop12 = in_memdep_phi_pop12;

    // stall_out(LOGICAL,20)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,17)
    assign out_stall_out = stall_out_q;

    // out_unnamed_atax7(GPOUT,18)
    assign out_unnamed_atax7 = in_unnamed_atax7;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = in_valid_in;

endmodule
