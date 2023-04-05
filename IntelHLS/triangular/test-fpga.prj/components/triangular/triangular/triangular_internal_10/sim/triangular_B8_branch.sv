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

// SystemVerilog created from triangular_B8_branch
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_B8_branch (
    input wire [31:0] in_c0_exe10,
    input wire [31:0] in_c0_exe11,
    input wire [32:0] in_c0_exe1178,
    input wire [31:0] in_c0_exe2179,
    input wire [31:0] in_c0_exe3180,
    input wire [0:0] in_c0_exe4181,
    input wire [0:0] in_c0_exe5182,
    input wire [0:0] in_c0_exe6183,
    input wire [31:0] in_c0_exe7184,
    input wire [31:0] in_c0_exe8185,
    input wire [0:0] in_memdep_phi6_pop24,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe10,
    output wire [31:0] out_c0_exe11,
    output wire [32:0] out_c0_exe1178,
    output wire [31:0] out_c0_exe2179,
    output wire [31:0] out_c0_exe3180,
    output wire [0:0] out_c0_exe4181,
    output wire [0:0] out_c0_exe5182,
    output wire [0:0] out_c0_exe6183,
    output wire [31:0] out_c0_exe7184,
    output wire [31:0] out_c0_exe8185,
    output wire [0:0] out_memdep_phi6_pop24,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe10(GPOUT,15)
    assign out_c0_exe10 = in_c0_exe10;

    // out_c0_exe11(GPOUT,16)
    assign out_c0_exe11 = in_c0_exe11;

    // out_c0_exe1178(GPOUT,17)
    assign out_c0_exe1178 = in_c0_exe1178;

    // out_c0_exe2179(GPOUT,18)
    assign out_c0_exe2179 = in_c0_exe2179;

    // out_c0_exe3180(GPOUT,19)
    assign out_c0_exe3180 = in_c0_exe3180;

    // out_c0_exe4181(GPOUT,20)
    assign out_c0_exe4181 = in_c0_exe4181;

    // out_c0_exe5182(GPOUT,21)
    assign out_c0_exe5182 = in_c0_exe5182;

    // out_c0_exe6183(GPOUT,22)
    assign out_c0_exe6183 = in_c0_exe6183;

    // out_c0_exe7184(GPOUT,23)
    assign out_c0_exe7184 = in_c0_exe7184;

    // out_c0_exe8185(GPOUT,24)
    assign out_c0_exe8185 = in_c0_exe8185;

    // out_memdep_phi6_pop24(GPOUT,25)
    assign out_memdep_phi6_pop24 = in_memdep_phi6_pop24;

    // stall_out(LOGICAL,28)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,26)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,27)
    assign out_valid_out_0 = in_valid_in;

endmodule
