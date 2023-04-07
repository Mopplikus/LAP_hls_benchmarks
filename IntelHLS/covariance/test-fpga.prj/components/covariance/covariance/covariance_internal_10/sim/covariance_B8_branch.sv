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

// SystemVerilog created from covariance_B8_branch
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B8_branch (
    input wire [32:0] in_c0_exe1316,
    input wire [0:0] in_c0_exe3318,
    input wire [31:0] in_c0_exe4319,
    input wire [31:0] in_c0_exe5320,
    input wire [31:0] in_c0_exe6321,
    input wire [31:0] in_c0_exe7322,
    input wire [31:0] in_c0_exe8323,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_c0_exe1316,
    output wire [0:0] out_c0_exe3318,
    output wire [31:0] out_c0_exe4319,
    output wire [31:0] out_c0_exe5320,
    output wire [31:0] out_c0_exe6321,
    output wire [31:0] out_c0_exe7322,
    output wire [31:0] out_c0_exe8323,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe1316(GPOUT,11)
    assign out_c0_exe1316 = in_c0_exe1316;

    // out_c0_exe3318(GPOUT,12)
    assign out_c0_exe3318 = in_c0_exe3318;

    // out_c0_exe4319(GPOUT,13)
    assign out_c0_exe4319 = in_c0_exe4319;

    // out_c0_exe5320(GPOUT,14)
    assign out_c0_exe5320 = in_c0_exe5320;

    // out_c0_exe6321(GPOUT,15)
    assign out_c0_exe6321 = in_c0_exe6321;

    // out_c0_exe7322(GPOUT,16)
    assign out_c0_exe7322 = in_c0_exe7322;

    // out_c0_exe8323(GPOUT,17)
    assign out_c0_exe8323 = in_c0_exe8323;

    // stall_out(LOGICAL,20)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,18)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,19)
    assign out_valid_out_0 = in_valid_in;

endmodule
