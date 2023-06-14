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

// SystemVerilog created from kernel_3mm_B15_branch
// Created for function/kernel kernel_3mm
// SystemVerilog created on Tue Jun 13 01:45:41 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_B15_branch (
    input wire [31:0] in_c0_exe10490,
    input wire [0:0] in_c0_exe11491,
    input wire [0:0] in_c0_exe12492,
    input wire [0:0] in_c0_exe13493,
    input wire [31:0] in_c0_exe1481,
    input wire [31:0] in_c0_exe2482,
    input wire [63:0] in_c0_exe3483,
    input wire [0:0] in_c0_exe4484,
    input wire [0:0] in_c0_exe5485,
    input wire [0:0] in_c0_exe6486,
    input wire [0:0] in_c0_exe7487,
    input wire [0:0] in_c0_exe8488,
    input wire [0:0] in_memdep_phi8_pop47,
    input wire [0:0] in_stall_in_0,
    input wire [31:0] in_unnamed_kernel_3mm29,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10490,
    output wire [0:0] out_c0_exe11491,
    output wire [0:0] out_c0_exe12492,
    output wire [0:0] out_c0_exe13493,
    output wire [31:0] out_c0_exe1481,
    output wire [31:0] out_c0_exe2482,
    output wire [63:0] out_c0_exe3483,
    output wire [0:0] out_c0_exe4484,
    output wire [0:0] out_c0_exe5485,
    output wire [0:0] out_c0_exe6486,
    output wire [0:0] out_c0_exe7487,
    output wire [0:0] out_c0_exe8488,
    output wire [0:0] out_memdep_phi8_pop47,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kernel_3mm29,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10490(GPOUT,18)
    assign out_c0_exe10490 = in_c0_exe10490;

    // out_c0_exe11491(GPOUT,19)
    assign out_c0_exe11491 = in_c0_exe11491;

    // out_c0_exe12492(GPOUT,20)
    assign out_c0_exe12492 = in_c0_exe12492;

    // out_c0_exe13493(GPOUT,21)
    assign out_c0_exe13493 = in_c0_exe13493;

    // out_c0_exe1481(GPOUT,22)
    assign out_c0_exe1481 = in_c0_exe1481;

    // out_c0_exe2482(GPOUT,23)
    assign out_c0_exe2482 = in_c0_exe2482;

    // out_c0_exe3483(GPOUT,24)
    assign out_c0_exe3483 = in_c0_exe3483;

    // out_c0_exe4484(GPOUT,25)
    assign out_c0_exe4484 = in_c0_exe4484;

    // out_c0_exe5485(GPOUT,26)
    assign out_c0_exe5485 = in_c0_exe5485;

    // out_c0_exe6486(GPOUT,27)
    assign out_c0_exe6486 = in_c0_exe6486;

    // out_c0_exe7487(GPOUT,28)
    assign out_c0_exe7487 = in_c0_exe7487;

    // out_c0_exe8488(GPOUT,29)
    assign out_c0_exe8488 = in_c0_exe8488;

    // out_memdep_phi8_pop47(GPOUT,30)
    assign out_memdep_phi8_pop47 = in_memdep_phi8_pop47;

    // stall_out(LOGICAL,34)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,31)
    assign out_stall_out = stall_out_q;

    // out_unnamed_kernel_3mm29(GPOUT,32)
    assign out_unnamed_kernel_3mm29 = in_unnamed_kernel_3mm29;

    // out_valid_out_0(GPOUT,33)
    assign out_valid_out_0 = in_valid_in;

endmodule
