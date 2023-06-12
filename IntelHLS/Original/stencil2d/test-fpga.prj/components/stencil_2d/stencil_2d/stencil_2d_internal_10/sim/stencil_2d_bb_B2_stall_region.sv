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

// SystemVerilog created from bb_stencil_2d_B2_stall_region
// Created for function/kernel stencil_2d
// SystemVerilog created on Thu Apr 27 14:23:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_bb_B2_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_c0_exe1108,
    output wire [31:0] out_c0_exe2,
    output wire [0:0] out_c0_exe4,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_4_tpl;
    wire [65:0] bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_e;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x(STALLENABLE,22)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_profile_loop_o_valid@9
    // out out_c0_exit107_0_tpl@9
    // out out_c0_exit107_1_tpl@9
    // out out_c0_exit107_2_tpl@9
    // out out_c0_exit107_3_tpl@9
    // out out_c0_exit107_4_tpl@9
    stencil_2d_i_sfc_s_c0_in_for_cond4_prehe0000ter10514_stencil_2d1 thei_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(GND_q),
        .out_o_stall(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit107_0_tpl(),
        .out_c0_exit107_1_tpl(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_1_tpl),
        .out_c0_exit107_2_tpl(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_2_tpl),
        .out_c0_exit107_3_tpl(),
        .out_c0_exit107_4_tpl(i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,19)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x(BITJOIN,17)
    assign bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_q = {i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_4_tpl, i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_2_tpl, i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_c0_exit107_1_tpl, i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x(BITSELECT,18)
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_q[64:33]);
    assign bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_q[65:65]);

    // dupName_0_sync_out_x(GPOUT,13)@9
    assign out_c0_exe1108 = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_c;
    assign out_c0_exe2 = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_d;
    assign out_c0_exe4 = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_e;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond4_preheader_stencil_2ds_c0_enter10514_stencil_2d1_aunroll_x_V0;

    // rst_sync(RESETSYNC,29)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
