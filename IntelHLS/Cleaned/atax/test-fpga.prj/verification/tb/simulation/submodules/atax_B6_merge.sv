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

// SystemVerilog created from atax_B6_merge
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_B6_merge (
    input wire [31:0] in_add758_pop379_0,
    input wire [0:0] in_exitcond1251_pop3212_0,
    input wire [63:0] in_mPtr_bitcast_index8846_pop3011_0,
    input wire [0:0] in_memdep_10_0,
    input wire [0:0] in_notcmp3553_pop3313_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [31:0] out_add758_pop379,
    output wire [0:0] out_exitcond1251_pop3212,
    output wire [63:0] out_mPtr_bitcast_index8846_pop3011,
    output wire [0:0] out_memdep_10,
    output wire [0:0] out_notcmp3553_pop3313,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_add758_pop379(GPOUT,9)
    assign out_add758_pop379 = in_add758_pop379_0;

    // out_exitcond1251_pop3212(GPOUT,10)
    assign out_exitcond1251_pop3212 = in_exitcond1251_pop3212_0;

    // out_mPtr_bitcast_index8846_pop3011(GPOUT,11)
    assign out_mPtr_bitcast_index8846_pop3011 = in_mPtr_bitcast_index8846_pop3011_0;

    // out_memdep_10(GPOUT,12)
    assign out_memdep_10 = in_memdep_10_0;

    // out_notcmp3553_pop3313(GPOUT,13)
    assign out_notcmp3553_pop3313 = in_notcmp3553_pop3313_0;

    // stall_out(LOGICAL,16)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = in_valid_in_0;

endmodule
