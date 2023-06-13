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

// SystemVerilog created from gaussian_B6_merge
// Created for function/kernel gaussian
// SystemVerilog created on Tue Jun 13 02:18:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_B6_merge (
    input wire [31:0] in_add44_push173_0,
    input wire [0:0] in_memdep_1_0,
    input wire [0:0] in_notcmp3546_pop205_0,
    input wire [0:0] in_pop194_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_add44_push173,
    output wire [0:0] out_memdep_1,
    output wire [0:0] out_notcmp3546_pop205,
    output wire [0:0] out_pop194,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_add44_push173(GPOUT,8)
    assign out_add44_push173 = in_add44_push173_0;

    // out_memdep_1(GPOUT,9)
    assign out_memdep_1 = in_memdep_1_0;

    // out_notcmp3546_pop205(GPOUT,10)
    assign out_notcmp3546_pop205 = in_notcmp3546_pop205_0;

    // out_pop194(GPOUT,11)
    assign out_pop194 = in_pop194_0;

    // stall_out(LOGICAL,14)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,12)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,13)
    assign out_valid_out = in_valid_in_0;

endmodule
