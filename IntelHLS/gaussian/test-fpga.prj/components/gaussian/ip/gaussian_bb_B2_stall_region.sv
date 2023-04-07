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

// SystemVerilog created from bb_gaussian_B2_stall_region
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_bb_B2_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_c0_exe21291,
    input wire [0:0] in_c0_exe31303,
    input wire [0:0] in_c0_exe41317,
    input wire [31:0] in_c0_exe61338,
    input wire [31:0] in_c0_exe713410,
    input wire [31:0] in_c0_exe813512,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe21291,
    output wire [0:0] out_c0_exe31303,
    output wire [0:0] out_c0_exe41317,
    output wire [31:0] out_c0_exe813512,
    output wire [31:0] out_fpga_indvars_iv_next10,
    output wire [31:0] out_fpga_indvars_iv_next8,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [31:0] c_i32_12_q;
    wire [31:0] c_i32_13_q;
    wire [32:0] i_fpga_indvars_iv_next10_gaussian1_a;
    wire [32:0] i_fpga_indvars_iv_next10_gaussian1_b;
    logic [32:0] i_fpga_indvars_iv_next10_gaussian1_o;
    wire [32:0] i_fpga_indvars_iv_next10_gaussian1_q;
    wire [32:0] i_fpga_indvars_iv_next8_gaussian0_a;
    wire [32:0] i_fpga_indvars_iv_next8_gaussian0_b;
    logic [32:0] i_fpga_indvars_iv_next8_gaussian0_o;
    wire [32:0] i_fpga_indvars_iv_next8_gaussian0_q;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next10_gaussian1_sel_x_b;
    wire [31:0] bgTrunc_i_fpga_indvars_iv_next8_gaussian0_sel_x_b;
    wire [98:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,25)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = in_stall_in | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,13)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // c_i32_12(CONSTANT,4)
    assign c_i32_12_q = $unsigned(32'b00000000000000000000000000000001);

    // i_fpga_indvars_iv_next8_gaussian0(ADD,9)@0
    assign i_fpga_indvars_iv_next8_gaussian0_a = {1'b0, bubble_select_stall_entry_f};
    assign i_fpga_indvars_iv_next8_gaussian0_b = {1'b0, c_i32_12_q};
    assign i_fpga_indvars_iv_next8_gaussian0_o = $unsigned(i_fpga_indvars_iv_next8_gaussian0_a) + $unsigned(i_fpga_indvars_iv_next8_gaussian0_b);
    assign i_fpga_indvars_iv_next8_gaussian0_q = i_fpga_indvars_iv_next8_gaussian0_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next8_gaussian0_sel_x(BITSELECT,16)@0
    assign bgTrunc_i_fpga_indvars_iv_next8_gaussian0_sel_x_b = i_fpga_indvars_iv_next8_gaussian0_q[31:0];

    // c_i32_13(CONSTANT,5)
    assign c_i32_13_q = $unsigned(32'b11111111111111111111111111111111);

    // i_fpga_indvars_iv_next10_gaussian1(ADD,8)@0
    assign i_fpga_indvars_iv_next10_gaussian1_a = {1'b0, bubble_select_stall_entry_e};
    assign i_fpga_indvars_iv_next10_gaussian1_b = {1'b0, c_i32_13_q};
    assign i_fpga_indvars_iv_next10_gaussian1_o = $unsigned(i_fpga_indvars_iv_next10_gaussian1_a) + $unsigned(i_fpga_indvars_iv_next10_gaussian1_b);
    assign i_fpga_indvars_iv_next10_gaussian1_q = i_fpga_indvars_iv_next10_gaussian1_o[32:0];

    // bgTrunc_i_fpga_indvars_iv_next10_gaussian1_sel_x(BITSELECT,15)@0
    assign bgTrunc_i_fpga_indvars_iv_next10_gaussian1_sel_x_b = i_fpga_indvars_iv_next10_gaussian1_q[31:0];

    // bubble_join_stall_entry(BITJOIN,21)
    assign bubble_join_stall_entry_q = {in_c0_exe813512, in_c0_exe713410, in_c0_exe61338, in_c0_exe41317, in_c0_exe31303, in_c0_exe21291};

    // bubble_select_stall_entry(BITSELECT,22)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[34:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[66:35]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:67]);

    // dupName_0_sync_out_x(GPOUT,17)@0
    assign out_c0_exe21291 = bubble_select_stall_entry_b;
    assign out_c0_exe31303 = bubble_select_stall_entry_c;
    assign out_c0_exe41317 = bubble_select_stall_entry_d;
    assign out_c0_exe813512 = bubble_select_stall_entry_g;
    assign out_fpga_indvars_iv_next10 = bgTrunc_i_fpga_indvars_iv_next10_gaussian1_sel_x_b;
    assign out_fpga_indvars_iv_next8 = bgTrunc_i_fpga_indvars_iv_next8_gaussian0_sel_x_b;
    assign out_valid_out = SE_stall_entry_V0;

endmodule
