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

// SystemVerilog created from bb_covariance_B8_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:38 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B8_stall_region (
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [31:0] in_lim_ext54_pop45140,
    input wire [31:0] in_reorder_limiter_enter109,
    input wire [0:0] in_valid_in,
    output wire [32:0] out_c0_exe1302,
    output wire [0:0] out_c0_exe3304,
    output wire [31:0] out_c0_exe4305,
    output wire [31:0] out_c0_exe5306,
    output wire [31:0] out_c0_exe6307,
    output wire [31:0] out_c0_exe7308,
    output wire [31:0] out_c0_exe8309,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_profile_loop_o_valid;
    wire [32:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_8_tpl;
    wire [63:0] bubble_join_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [194:0] bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_b;
    wire [32:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_i;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,16)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter109, in_lim_ext54_pop45140};

    // bubble_select_stall_entry(BITSELECT,17)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[31:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[63:32]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x(STALLENABLE,25)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_wireValid = i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x(BLACKBOX,14)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@8
    // out out_profile_loop_o_valid@8
    // out out_c0_exit301_0_tpl@8
    // out out_c0_exit301_1_tpl@8
    // out out_c0_exit301_2_tpl@8
    // out out_c0_exit301_3_tpl@8
    // out out_c0_exit301_4_tpl@8
    // out out_c0_exit301_5_tpl@8
    // out out_c0_exit301_6_tpl@8
    // out out_c0_exit301_7_tpl@8
    // out out_c0_exit301_8_tpl@8
    covariance_i_sfc_s_c0_in_for_cond33_preh0000ter28935_covariance3 thei_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_c0_eni3288_0_tpl(GND_q),
        .in_c0_eni3288_1_tpl(GND_q),
        .in_c0_eni3288_2_tpl(bubble_select_stall_entry_b),
        .in_c0_eni3288_3_tpl(bubble_select_stall_entry_c),
        .out_o_stall(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_profile_loop_o_valid),
        .out_c0_exit301_0_tpl(),
        .out_c0_exit301_1_tpl(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_1_tpl),
        .out_c0_exit301_2_tpl(),
        .out_c0_exit301_3_tpl(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_3_tpl),
        .out_c0_exit301_4_tpl(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_4_tpl),
        .out_c0_exit301_5_tpl(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_5_tpl),
        .out_c0_exit301_6_tpl(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_6_tpl),
        .out_c0_exit301_7_tpl(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_7_tpl),
        .out_c0_exit301_8_tpl(i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,22)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // sync_out(GPOUT,11)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x(BITJOIN,20)
    assign bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q = {i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_8_tpl, i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_7_tpl, i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_6_tpl, i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_5_tpl, i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_4_tpl, i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_3_tpl, i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_c0_exit301_1_tpl, i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x(BITSELECT,21)
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[33:1]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[34:34]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[66:35]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[98:67]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[130:99]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[162:131]);
    assign bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_q[194:163]);

    // dupName_0_sync_out_x(GPOUT,13)@8
    assign out_c0_exe1302 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_c;
    assign out_c0_exe3304 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_d;
    assign out_c0_exe4305 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_e;
    assign out_c0_exe5306 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_f;
    assign out_c0_exe6307 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_g;
    assign out_c0_exe7308 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_h;
    assign out_c0_exe8309 = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_i;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_cond33_preheader_lr_ph_covariances_c0_enter28935_covariance3_aunroll_x_V0;

    // rst_sync(RESETSYNC,36)
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
