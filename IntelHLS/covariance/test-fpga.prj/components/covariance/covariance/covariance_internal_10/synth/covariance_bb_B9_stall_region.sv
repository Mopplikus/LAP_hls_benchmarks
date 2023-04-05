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

// SystemVerilog created from bb_covariance_B9_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Wed Apr  5 02:12:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B9_stall_region (
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond16184,
    input wire [0:0] in_forked86,
    input wire [31:0] in_j24_062_pop30186,
    input wire [31:0] in_lim_ext133_pop44175,
    input wire [31:0] in_lim_ext134_pop32188,
    input wire [0:0] in_memdep_phi_pop31187,
    input wire [0:0] in_notcmp101185,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [63:0] out_c0_exe2308,
    output wire [31:0] out_c0_exe3309,
    output wire [0:0] out_c0_exe4310,
    output wire [31:0] out_c0_exe5311,
    output wire [0:0] out_c0_exe6312,
    output wire [0:0] out_c0_exe7313,
    output wire [31:0] out_c0_exe8314,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] covariance_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [31:0] covariance_B9_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_8_tpl;
    wire [99:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [99:0] bubble_join_covariance_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B9_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_covariance_B9_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_covariance_B9_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_covariance_B9_merge_reg_aunroll_x_g;
    wire [31:0] bubble_select_covariance_B9_merge_reg_aunroll_x_h;
    wire [162:0] bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_g;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_h;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_covariance_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,24)
    assign bubble_join_stall_entry_q = {in_notcmp101185, in_memdep_phi_pop31187, in_lim_ext134_pop32188, in_lim_ext133_pop44175, in_j24_062_pop30186, in_forked86, in_exitcond16184};

    // bubble_select_stall_entry(BITSELECT,25)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:34]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:66]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[98:98]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[99:99]);

    // SE_stall_entry(STALLENABLE,34)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // covariance_B9_merge_reg_aunroll_x(BLACKBOX,19)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    covariance_B9_merge_reg thecovariance_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_covariance_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_h),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .out_stall_out(covariance_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(covariance_B9_merge_reg_aunroll_x_out_data_out_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_covariance_B9_merge_reg_aunroll_x(BITJOIN,28)
    assign bubble_join_covariance_B9_merge_reg_aunroll_x_q = {covariance_B9_merge_reg_aunroll_x_out_data_out_6_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_5_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B9_merge_reg_aunroll_x(BITSELECT,29)
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[34:34]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[66:35]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[67:67]);
    assign bubble_select_covariance_B9_merge_reg_aunroll_x_h = $unsigned(bubble_join_covariance_B9_merge_reg_aunroll_x_q[99:68]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_covariance_B9_merge_reg_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_covariance_B9_merge_reg_aunroll_x_V0 = SE_out_covariance_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B9_merge_reg_aunroll_x_wireValid = covariance_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x(BLACKBOX,22)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_covariance6_covariance_avm_address@20000000
    // out out_unnamed_covariance6_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance6_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance6_covariance_avm_enable@20000000
    // out out_unnamed_covariance6_covariance_avm_read@20000000
    // out out_unnamed_covariance6_covariance_avm_write@20000000
    // out out_unnamed_covariance6_covariance_avm_writedata@20000000
    // out out_c0_exit306_0_tpl@9
    // out out_c0_exit306_1_tpl@9
    // out out_c0_exit306_2_tpl@9
    // out out_c0_exit306_3_tpl@9
    // out out_c0_exit306_4_tpl@9
    // out out_c0_exit306_5_tpl@9
    // out out_c0_exit306_6_tpl@9
    // out out_c0_exit306_7_tpl@9
    // out out_c0_exit306_8_tpl@9
    covariance_i_sfc_s_c0_in_for_body33_s_c0_enter29233_covariance1 thei_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B9_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .in_c0_eni7_0_tpl(GND_q),
        .in_c0_eni7_1_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_b),
        .in_c0_eni7_2_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_f),
        .in_c0_eni7_3_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_g),
        .in_c0_eni7_4_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_h),
        .in_c0_eni7_5_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_d),
        .in_c0_eni7_6_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_e),
        .in_c0_eni7_7_tpl(bubble_select_covariance_B9_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_covariance6_covariance_avm_address(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_writedata),
        .out_c0_exit306_0_tpl(),
        .out_c0_exit306_1_tpl(),
        .out_c0_exit306_2_tpl(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_2_tpl),
        .out_c0_exit306_3_tpl(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_3_tpl),
        .out_c0_exit306_4_tpl(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_4_tpl),
        .out_c0_exit306_5_tpl(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_5_tpl),
        .out_c0_exit306_6_tpl(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_6_tpl),
        .out_c0_exit306_7_tpl(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_7_tpl),
        .out_c0_exit306_8_tpl(i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going89_covariance6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,20)
    assign out_unnamed_covariance6_covariance_avm_address = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_address;
    assign out_unnamed_covariance6_covariance_avm_enable = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_enable;
    assign out_unnamed_covariance6_covariance_avm_read = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_read;
    assign out_unnamed_covariance6_covariance_avm_write = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_write;
    assign out_unnamed_covariance6_covariance_avm_writedata = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_writedata;
    assign out_unnamed_covariance6_covariance_avm_byteenable = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_byteenable;
    assign out_unnamed_covariance6_covariance_avm_burstcount = i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_unnamed_covariance6_covariance_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x(BITJOIN,32)
    assign bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_8_tpl, i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_7_tpl, i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_6_tpl, i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_5_tpl, i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_4_tpl, i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_3_tpl, i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_out_c0_exit306_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x(BITSELECT,33)
    assign bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q[96:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q[128:97]);
    assign bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q[129:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_q[162:131]);

    // dupName_0_sync_out_x(GPOUT,21)@9
    assign out_c0_exe2308 = bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_b;
    assign out_c0_exe3309 = bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_c;
    assign out_c0_exe4310 = bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_d;
    assign out_c0_exe5311 = bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_e;
    assign out_c0_exe6312 = bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_f;
    assign out_c0_exe7313 = bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_g;
    assign out_c0_exe8314 = bubble_select_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_h;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body33_covariances_c0_enter29233_covariance1_aunroll_x_V0;

endmodule
