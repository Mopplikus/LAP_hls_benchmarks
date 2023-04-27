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

// SystemVerilog created from bb_covariance_B5_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Thu Apr 27 14:28:37 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B5_stall_region (
    input wire [31:0] in_unnamed_covariance2_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance2_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_burstcount,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond10114,
    input wire [31:0] in_j_039_pop21116,
    input wire [31:0] in_lim_ext52_pop23118,
    input wire [31:0] in_lim_ext93,
    input wire [0:0] in_memdep_phi1_pop1658_pop24119,
    input wire [0:0] in_memdep_phi1_pop1698,
    input wire [0:0] in_memdep_phi2_pop17103,
    input wire [0:0] in_memdep_phi2_pop1761_pop25120,
    input wire [0:0] in_memdep_phi4_pop18108,
    input wire [0:0] in_memdep_phi4_pop1864_pop26121,
    input wire [0:0] in_memdep_phi_pop22117,
    input wire [0:0] in_notcmp43115,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_c0_exe10235,
    output wire [31:0] out_c0_exe11236,
    output wire [0:0] out_c0_exe12237,
    output wire [63:0] out_c0_exe1226,
    output wire [0:0] out_c0_exe13,
    output wire [0:0] out_c0_exe14,
    output wire [0:0] out_c0_exe2227,
    output wire [31:0] out_c0_exe3228,
    output wire [0:0] out_c0_exe5230,
    output wire [31:0] out_c0_exe6231,
    output wire [0:0] out_c0_exe7232,
    output wire [0:0] out_c0_exe8233,
    output wire [0:0] out_c0_exe9234,
    output wire [0:0] out_profile_loop_o_valid,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_profile_loop_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_10_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_14_tpl;
    wire [104:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [0:0] bubble_select_stall_entry_l;
    wire [0:0] bubble_select_stall_entry_m;
    wire [169:0] bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_k;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_o;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_V0;
    reg [0:0] rst_sync_rst_sclrn;


    // bubble_join_stall_entry(BITJOIN,19)
    assign bubble_join_stall_entry_q = {in_notcmp43115, in_memdep_phi_pop22117, in_memdep_phi4_pop1864_pop26121, in_memdep_phi4_pop18108, in_memdep_phi2_pop1761_pop25120, in_memdep_phi2_pop17103, in_memdep_phi1_pop1698, in_memdep_phi1_pop1658_pop24119, in_lim_ext93, in_lim_ext52_pop23118, in_j_039_pop21116, in_exitcond10114};

    // bubble_select_stall_entry(BITSELECT,20)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[101:101]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[102:102]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[103:103]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[104:104]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_stall_entry(STALLENABLE,25)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_o_stall | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x(STALLENABLE,28)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_wireValid = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x(BLACKBOX,17)@0
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_profile_loop_o_valid@14
    // out out_unnamed_covariance2_covariance_avm_address@20000000
    // out out_unnamed_covariance2_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance2_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance2_covariance_avm_enable@20000000
    // out out_unnamed_covariance2_covariance_avm_read@20000000
    // out out_unnamed_covariance2_covariance_avm_write@20000000
    // out out_unnamed_covariance2_covariance_avm_writedata@20000000
    // out out_c0_exit225_0_tpl@14
    // out out_c0_exit225_1_tpl@14
    // out out_c0_exit225_2_tpl@14
    // out out_c0_exit225_3_tpl@14
    // out out_c0_exit225_4_tpl@14
    // out out_c0_exit225_5_tpl@14
    // out out_c0_exit225_6_tpl@14
    // out out_c0_exit225_7_tpl@14
    // out out_c0_exit225_8_tpl@14
    // out out_c0_exit225_9_tpl@14
    // out out_c0_exit225_10_tpl@14
    // out out_c0_exit225_11_tpl@14
    // out out_c0_exit225_12_tpl@14
    // out out_c0_exit225_13_tpl@14
    // out out_c0_exit225_14_tpl@14
    covariance_i_sfc_s_c0_in_for_body6_s_c0_enter20736_covariance13 thei_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_backStall),
        .in_i_valid(SE_stall_entry_V0),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .in_c0_eni13_0_tpl(GND_q),
        .in_c0_eni13_1_tpl(bubble_select_stall_entry_c),
        .in_c0_eni13_2_tpl(GND_q),
        .in_c0_eni13_3_tpl(bubble_select_stall_entry_f),
        .in_c0_eni13_4_tpl(bubble_select_stall_entry_l),
        .in_c0_eni13_5_tpl(bubble_select_stall_entry_d),
        .in_c0_eni13_6_tpl(bubble_select_stall_entry_i),
        .in_c0_eni13_7_tpl(bubble_select_stall_entry_k),
        .in_c0_eni13_8_tpl(bubble_select_stall_entry_b),
        .in_c0_eni13_9_tpl(bubble_select_stall_entry_m),
        .in_c0_eni13_10_tpl(bubble_select_stall_entry_e),
        .in_c0_eni13_11_tpl(bubble_select_stall_entry_g),
        .in_c0_eni13_12_tpl(bubble_select_stall_entry_h),
        .in_c0_eni13_13_tpl(bubble_select_stall_entry_j),
        .out_o_stall(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_o_valid),
        .out_profile_loop_o_valid(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_profile_loop_o_valid),
        .out_unnamed_covariance2_covariance_avm_address(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_writedata),
        .out_c0_exit225_0_tpl(),
        .out_c0_exit225_1_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_1_tpl),
        .out_c0_exit225_2_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_2_tpl),
        .out_c0_exit225_3_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_3_tpl),
        .out_c0_exit225_4_tpl(),
        .out_c0_exit225_5_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_5_tpl),
        .out_c0_exit225_6_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_6_tpl),
        .out_c0_exit225_7_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_7_tpl),
        .out_c0_exit225_8_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_8_tpl),
        .out_c0_exit225_9_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_9_tpl),
        .out_c0_exit225_10_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_10_tpl),
        .out_c0_exit225_11_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_11_tpl),
        .out_c0_exit225_12_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_12_tpl),
        .out_c0_exit225_13_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_13_tpl),
        .out_c0_exit225_14_tpl(i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,7)
    assign out_unnamed_covariance2_covariance_avm_address = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_address;
    assign out_unnamed_covariance2_covariance_avm_enable = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_enable;
    assign out_unnamed_covariance2_covariance_avm_read = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_read;
    assign out_unnamed_covariance2_covariance_avm_write = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_write;
    assign out_unnamed_covariance2_covariance_avm_writedata = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_writedata;
    assign out_unnamed_covariance2_covariance_avm_byteenable = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_byteenable;
    assign out_unnamed_covariance2_covariance_avm_burstcount = i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_unnamed_covariance2_covariance_avm_burstcount;

    // sync_out(GPOUT,14)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x(BITJOIN,23)
    assign bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q = {i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_14_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_13_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_12_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_11_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_10_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_9_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_8_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_7_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_6_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_5_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_3_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_2_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_c0_exit225_1_tpl, i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_out_profile_loop_o_valid};

    // bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x(BITSELECT,24)
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[65:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[130:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[132:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[133:133]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[134:134]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[166:135]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[167:167]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[168:168]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_q[169:169]);

    // dupName_0_sync_out_x(GPOUT,16)@14
    assign out_c0_exe10235 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_k;
    assign out_c0_exe11236 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_l;
    assign out_c0_exe12237 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_m;
    assign out_c0_exe1226 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_c;
    assign out_c0_exe13 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_n;
    assign out_c0_exe14 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_o;
    assign out_c0_exe2227 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_d;
    assign out_c0_exe3228 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_e;
    assign out_c0_exe5230 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_f;
    assign out_c0_exe6231 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_g;
    assign out_c0_exe7232 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_h;
    assign out_c0_exe8233 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_i;
    assign out_c0_exe9234 = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_j;
    assign out_profile_loop_o_valid = bubble_select_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_b;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body6_covariances_c0_enter20736_covariance13_aunroll_x_V0;

    // rst_sync(RESETSYNC,39)
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
