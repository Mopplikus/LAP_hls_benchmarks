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

// SystemVerilog created from bb_atax_B3_stall_region
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B3_stall_region (
    output wire [63:0] out_c0_exe105,
    output wire [0:0] out_c0_exe116,
    output wire [0:0] out_c0_exe127,
    output wire [63:0] out_c0_exe3991,
    output wire [31:0] out_c0_exe42,
    output wire [0:0] out_c0_exe63,
    output wire [0:0] out_c0_exe74,
    output wire [31:0] out_c1_exe11078,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_c0_exe105,
    input wire [0:0] in_c0_exe116,
    input wire [0:0] in_c0_exe127,
    input wire [63:0] in_c0_exe3991,
    input wire [31:0] in_c0_exe42,
    input wire [0:0] in_c0_exe63,
    input wire [0:0] in_c0_exe74,
    input wire [31:0] in_c1_exe11078,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [195:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,13)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = in_stall_in | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,11)
    assign bubble_join_stall_entry_q = {in_c1_exe11078, in_c0_exe74, in_c0_exe63, in_c0_exe42, in_c0_exe3991, in_c0_exe127, in_c0_exe116, in_c0_exe105};

    // bubble_select_stall_entry(BITSELECT,12)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[129:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[161:130]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[162:162]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[163:163]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[195:164]);

    // dupName_0_sync_out_x(GPOUT,2)@0
    assign out_c0_exe105 = bubble_select_stall_entry_b;
    assign out_c0_exe116 = bubble_select_stall_entry_c;
    assign out_c0_exe127 = bubble_select_stall_entry_d;
    assign out_c0_exe3991 = bubble_select_stall_entry_e;
    assign out_c0_exe42 = bubble_select_stall_entry_f;
    assign out_c0_exe63 = bubble_select_stall_entry_g;
    assign out_c0_exe74 = bubble_select_stall_entry_h;
    assign out_c1_exe11078 = bubble_select_stall_entry_i;
    assign out_valid_out = SE_stall_entry_V0;

    // sync_out(GPOUT,8)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
