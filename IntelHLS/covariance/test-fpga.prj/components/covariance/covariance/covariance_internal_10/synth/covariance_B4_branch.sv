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

// SystemVerilog created from covariance_B4_branch
// Created for function/kernel covariance
// SystemVerilog created on Fri Apr  7 17:50:02 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_B4_branch (
    input wire [0:0] in_c0_exe102498,
    input wire [31:0] in_c0_exe112509,
    input wire [0:0] in_c0_exe1225110,
    input wire [0:0] in_c0_exe1311,
    input wire [0:0] in_c0_exe1412,
    input wire [63:0] in_c0_exe22411,
    input wire [0:0] in_c0_exe32422,
    input wire [31:0] in_c0_exe62454,
    input wire [0:0] in_c0_exe72465,
    input wire [0:0] in_c0_exe82476,
    input wire [0:0] in_c0_exe92487,
    input wire [31:0] in_mul,
    input wire [0:0] in_stall_in_0,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe102498,
    output wire [31:0] out_c0_exe112509,
    output wire [0:0] out_c0_exe1225110,
    output wire [0:0] out_c0_exe1311,
    output wire [0:0] out_c0_exe1412,
    output wire [63:0] out_c0_exe22411,
    output wire [0:0] out_c0_exe32422,
    output wire [31:0] out_c0_exe62454,
    output wire [0:0] out_c0_exe72465,
    output wire [0:0] out_c0_exe82476,
    output wire [0:0] out_c0_exe92487,
    output wire [31:0] out_mul,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out_0,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_c0_exe102498(GPOUT,16)
    assign out_c0_exe102498 = in_c0_exe102498;

    // out_c0_exe112509(GPOUT,17)
    assign out_c0_exe112509 = in_c0_exe112509;

    // out_c0_exe1225110(GPOUT,18)
    assign out_c0_exe1225110 = in_c0_exe1225110;

    // out_c0_exe1311(GPOUT,19)
    assign out_c0_exe1311 = in_c0_exe1311;

    // out_c0_exe1412(GPOUT,20)
    assign out_c0_exe1412 = in_c0_exe1412;

    // out_c0_exe22411(GPOUT,21)
    assign out_c0_exe22411 = in_c0_exe22411;

    // out_c0_exe32422(GPOUT,22)
    assign out_c0_exe32422 = in_c0_exe32422;

    // out_c0_exe62454(GPOUT,23)
    assign out_c0_exe62454 = in_c0_exe62454;

    // out_c0_exe72465(GPOUT,24)
    assign out_c0_exe72465 = in_c0_exe72465;

    // out_c0_exe82476(GPOUT,25)
    assign out_c0_exe82476 = in_c0_exe82476;

    // out_c0_exe92487(GPOUT,26)
    assign out_c0_exe92487 = in_c0_exe92487;

    // out_mul(GPOUT,27)
    assign out_mul = in_mul;

    // stall_out(LOGICAL,30)
    assign stall_out_q = in_valid_in & in_stall_in_0;

    // out_stall_out(GPOUT,28)
    assign out_stall_out = stall_out_q;

    // out_valid_out_0(GPOUT,29)
    assign out_valid_out_0 = in_valid_in;

endmodule
