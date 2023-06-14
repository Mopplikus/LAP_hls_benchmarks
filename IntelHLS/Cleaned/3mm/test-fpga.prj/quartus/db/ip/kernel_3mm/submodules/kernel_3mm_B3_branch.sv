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

// SystemVerilog created from kernel_3mm_B3_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B3_branch (
    input wire [31:0] in_c0_exe10,
    input wire [0:0] in_c0_exe11,
    input wire [0:0] in_c0_exe12,
    input wire [31:0] in_c0_exe1272,
    input wire [0:0] in_c0_exe13,
    input wire [31:0] in_c0_exe2273,
    input wire [63:0] in_c0_exe3274,
    input wire [0:0] in_c0_exe4275,
    input wire [0:0] in_c0_exe5,
    input wire [0:0] in_c0_exe6,
    input wire [0:0] in_c0_exe7,
    input wire [0:0] in_c0_exe8,
    input wire [0:0] in_memdep_phi_pop33,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm10,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [31:0] out_c0_exe1272,
    output wire [0:0] out_c0_exe13,
    output wire [31:0] out_c0_exe2273,
    output wire [63:0] out_c0_exe3274,
    output wire [0:0] out_c0_exe4275,
    output wire [0:0] out_c0_exe5,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_memdep_phi_pop33,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kernel_3mm10,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,18)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,19)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe12(GPOUT,20)
    assign out_c0_exe12 = in_c0_exe12;

    // out_c0_exe1272(GPOUT,21)
    assign out_c0_exe1272 = in_c0_exe1272;

    // out_c0_exe13(GPOUT,22)
    assign out_c0_exe13 = in_c0_exe13;

    // out_c0_exe2273(GPOUT,23)
    assign out_c0_exe2273 = in_c0_exe2273;

    // out_c0_exe3274(GPOUT,24)
    assign out_c0_exe3274 = in_c0_exe3274;

    // out_c0_exe4275(GPOUT,25)
    assign out_c0_exe4275 = in_c0_exe4275;

    // out_c0_exe5(GPOUT,26)
    assign out_c0_exe5 = in_c0_exe5;

    // out_c0_exe6(GPOUT,27)
    assign out_c0_exe6 = in_c0_exe6;

    // out_c0_exe7(GPOUT,28)
    assign out_c0_exe7 = in_c0_exe7;

    // out_c0_exe8(GPOUT,29)
    assign out_c0_exe8 = in_c0_exe8;

    // out_memdep_phi_pop33(GPOUT,30)
    assign out_memdep_phi_pop33 = in_memdep_phi_pop33;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,31)
    assign out_stall_out = stall_out_q;

    // out_unnamed_kernel_3mm10(GPOUT,32)
    assign out_unnamed_kernel_3mm10 = in_unnamed_kernel_3mm10;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

endmodule
