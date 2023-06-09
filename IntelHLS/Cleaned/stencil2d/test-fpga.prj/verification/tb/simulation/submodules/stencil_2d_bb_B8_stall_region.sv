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

// SystemVerilog created from bb_stencil_2d_B8_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Tue Jun 13 03:01:27 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B8_stall_region (
    output wire [0:0] out_c0_exe102826,
    output wire [0:0] out_c0_exe112839,
    output wire [0:0] out_c0_exe1228411,
    output wire [0:0] out_c0_exe1328513,
    output wire [31:0] out_c0_exe1428615,
    output wire [0:0] out_c0_exe1528716,
    output wire [31:0] out_c0_exe92813,
    output wire [31:0] out_c1_exe118,
    output wire [0:0] out_valid_out,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe102826,
    input wire [0:0] in_c0_exe112839,
    input wire [0:0] in_c0_exe1228411,
    input wire [0:0] in_c0_exe1328513,
    input wire [31:0] in_c0_exe1428615,
    input wire [0:0] in_c0_exe1528716,
    input wire [31:0] in_c0_exe92813,
    input wire [31:0] in_c1_exe118,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [100:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
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
    assign bubble_join_stall_entry_q = {in_c1_exe118, in_c0_exe92813, in_c0_exe1528716, in_c0_exe1428615, in_c0_exe1328513, in_c0_exe1228411, in_c0_exe112839, in_c0_exe102826};

    // bubble_select_stall_entry(BITSELECT,12)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[35:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[36:36]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[68:37]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:69]);

    // dupName_0_sync_out_x(GPOUT,2)@0
    assign out_c0_exe102826 = bubble_select_stall_entry_b;
    assign out_c0_exe112839 = bubble_select_stall_entry_c;
    assign out_c0_exe1228411 = bubble_select_stall_entry_d;
    assign out_c0_exe1328513 = bubble_select_stall_entry_e;
    assign out_c0_exe1428615 = bubble_select_stall_entry_f;
    assign out_c0_exe1528716 = bubble_select_stall_entry_g;
    assign out_c0_exe92813 = bubble_select_stall_entry_h;
    assign out_c1_exe118 = bubble_select_stall_entry_i;
    assign out_valid_out = SE_stall_entry_V0;

    // sync_out(GPOUT,8)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
