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

// SystemVerilog created from kernel_3mm_B9_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:42 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B9_branch (
    input wire [31:0] in_c0_exe10360,
    input wire [0:0] in_c0_exe11361,
    input wire [0:0] in_c0_exe12362,
    input wire [0:0] in_c0_exe13363,
    input wire [31:0] in_c0_exe1351,
    input wire [31:0] in_c0_exe2352,
    input wire [63:0] in_c0_exe3353,
    input wire [0:0] in_c0_exe4354,
    input wire [0:0] in_c0_exe5355,
    input wire [0:0] in_c0_exe6356,
    input wire [0:0] in_c0_exe7357,
    input wire [0:0] in_c0_exe8358,
    input wire [0:0] in_memdep_phi4_pop40,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm20,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10360,
    output wire [0:0] out_c0_exe11361,
    output wire [0:0] out_c0_exe12362,
    output wire [0:0] out_c0_exe13363,
    output wire [31:0] out_c0_exe1351,
    output wire [31:0] out_c0_exe2352,
    output wire [63:0] out_c0_exe3353,
    output wire [0:0] out_c0_exe4354,
    output wire [0:0] out_c0_exe5355,
    output wire [0:0] out_c0_exe6356,
    output wire [0:0] out_c0_exe7357,
    output wire [0:0] out_c0_exe8358,
    output wire [0:0] out_memdep_phi4_pop40,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kernel_3mm20,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10360(GPOUT,18)
    assign out_c0_exe10360 = in_c0_exe10360;

    // out_c0_exe11361(GPOUT,19)
    assign out_c0_exe11361 = in_c0_exe11361;

    // out_c0_exe12362(GPOUT,20)
    assign out_c0_exe12362 = in_c0_exe12362;

    // out_c0_exe13363(GPOUT,21)
    assign out_c0_exe13363 = in_c0_exe13363;

    // out_c0_exe1351(GPOUT,22)
    assign out_c0_exe1351 = in_c0_exe1351;

    // out_c0_exe2352(GPOUT,23)
    assign out_c0_exe2352 = in_c0_exe2352;

    // out_c0_exe3353(GPOUT,24)
    assign out_c0_exe3353 = in_c0_exe3353;

    // out_c0_exe4354(GPOUT,25)
    assign out_c0_exe4354 = in_c0_exe4354;

    // out_c0_exe5355(GPOUT,26)
    assign out_c0_exe5355 = in_c0_exe5355;

    // out_c0_exe6356(GPOUT,27)
    assign out_c0_exe6356 = in_c0_exe6356;

    // out_c0_exe7357(GPOUT,28)
    assign out_c0_exe7357 = in_c0_exe7357;

    // out_c0_exe8358(GPOUT,29)
    assign out_c0_exe8358 = in_c0_exe8358;

    // out_memdep_phi4_pop40(GPOUT,30)
    assign out_memdep_phi4_pop40 = in_memdep_phi4_pop40;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,31)
    assign out_stall_out = stall_out_q;

    // out_unnamed_kernel_3mm20(GPOUT,32)
    assign out_unnamed_kernel_3mm20 = in_unnamed_kernel_3mm20;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

endmodule
