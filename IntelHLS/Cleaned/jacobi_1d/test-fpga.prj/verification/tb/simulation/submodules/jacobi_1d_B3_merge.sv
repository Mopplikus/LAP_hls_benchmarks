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

// SystemVerilog created from jacobi_1d_B3_merge
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_B3_merge (
    input wire [0:0] in_exitcond1749_pop194_0,
    input wire [63:0] in_mPtr_bitcast70761_0,
    input wire [0:0] in_memdep_3_0,
    input wire [0:0] in_memdep_phi6_pop1355_pop232_0,
    input wire [0:0] in_notcmp3951_pop205_0,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_valid_in_0,
    output wire [0:0] out_exitcond1749_pop194,
    output wire [63:0] out_mPtr_bitcast70761,
    output wire [0:0] out_memdep_3,
    output wire [0:0] out_memdep_phi6_pop1355_pop232,
    output wire [0:0] out_notcmp3951_pop205,
    output wire [0:0] out_stall_out_0,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] stall_out_q;


    // out_exitcond1749_pop194(GPOUT,9)
    assign out_exitcond1749_pop194 = in_exitcond1749_pop194_0;

    // out_mPtr_bitcast70761(GPOUT,10)
    assign out_mPtr_bitcast70761 = in_mPtr_bitcast70761_0;

    // out_memdep_3(GPOUT,11)
    assign out_memdep_3 = in_memdep_3_0;

    // out_memdep_phi6_pop1355_pop232(GPOUT,12)
    assign out_memdep_phi6_pop1355_pop232 = in_memdep_phi6_pop1355_pop232_0;

    // out_notcmp3951_pop205(GPOUT,13)
    assign out_notcmp3951_pop205 = in_notcmp3951_pop205_0;

    // stall_out(LOGICAL,16)
    assign stall_out_q = in_valid_in_0 & in_stall_in;

    // out_stall_out_0(GPOUT,14)
    assign out_stall_out_0 = stall_out_q;

    // out_valid_out(GPOUT,15)
    assign out_valid_out = in_valid_in_0;

endmodule
