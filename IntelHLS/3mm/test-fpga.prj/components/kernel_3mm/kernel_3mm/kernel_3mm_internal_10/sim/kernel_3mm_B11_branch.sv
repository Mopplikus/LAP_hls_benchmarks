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

// SystemVerilog created from kernel_3mm_B11_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Fri Apr  7 18:25:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B11_branch (
    input wire [0:0] in_c0_exe10567,
    input wire [0:0] in_c0_exe11568,
    input wire [31:0] in_c0_exe12569,
    input wire [0:0] in_c0_exe13570,
    input wire [31:0] in_c0_exe1558,
    input wire [63:0] in_c0_exe2559,
    input wire [63:0] in_c0_exe3560,
    input wire [63:0] in_c0_exe4561,
    input wire [0:0] in_c0_exe5562,
    input wire [31:0] in_c0_exe6563,
    input wire [0:0] in_c0_exe8565,
    input wire [0:0] in_c0_exe9566,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10567,
    output wire [0:0] out_c0_exe11568,
    output wire [31:0] out_c0_exe12569,
    output wire [0:0] out_c0_exe13570,
    output wire [31:0] out_c0_exe1558,
    output wire [63:0] out_c0_exe2559,
    output wire [63:0] out_c0_exe3560,
    output wire [63:0] out_c0_exe4561,
    output wire [0:0] out_c0_exe5562,
    output wire [31:0] out_c0_exe6563,
    output wire [0:0] out_c0_exe8565,
    output wire [0:0] out_c0_exe9566,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10567(GPOUT,16)
    assign out_c0_exe10567 = in_c0_exe10567;

    // out_c0_exe11568(GPOUT,17)
    assign out_c0_exe11568 = in_c0_exe11568;

    // out_c0_exe12569(GPOUT,18)
    assign out_c0_exe12569 = in_c0_exe12569;

    // out_c0_exe13570(GPOUT,19)
    assign out_c0_exe13570 = in_c0_exe13570;

    // out_c0_exe1558(GPOUT,20)
    assign out_c0_exe1558 = in_c0_exe1558;

    // out_c0_exe2559(GPOUT,21)
    assign out_c0_exe2559 = in_c0_exe2559;

    // out_c0_exe3560(GPOUT,22)
    assign out_c0_exe3560 = in_c0_exe3560;

    // out_c0_exe4561(GPOUT,23)
    assign out_c0_exe4561 = in_c0_exe4561;

    // out_c0_exe5562(GPOUT,24)
    assign out_c0_exe5562 = in_c0_exe5562;

    // out_c0_exe6563(GPOUT,25)
    assign out_c0_exe6563 = in_c0_exe6563;

    // out_c0_exe8565(GPOUT,26)
    assign out_c0_exe8565 = in_c0_exe8565;

    // out_c0_exe9566(GPOUT,27)
    assign out_c0_exe9566 = in_c0_exe9566;

    // stall_out(LOGICAL,30)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,28)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = in_valid_in;

endmodule
