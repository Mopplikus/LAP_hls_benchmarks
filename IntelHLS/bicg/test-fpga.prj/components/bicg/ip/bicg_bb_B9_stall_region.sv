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

// SystemVerilog created from bb_bicg_B9_stall_region
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B9_stall_region (
    input wire [31:0] in_unnamed_bicg15_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_arrayidx41686,
    input wire [0:0] in_exitcond1687,
    input wire [0:0] in_forked27,
    input wire [63:0] in_idxprom4085,
    input wire [0:0] in_memdep_phi_pop1889,
    input wire [0:0] in_notcmp4288,
    input wire [31:0] in_unnamed_bicg14,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_bicg16_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg15_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_burstcount,
    output wire [0:0] out_c0_exe2141,
    output wire [31:0] out_c0_exe3142,
    output wire [0:0] out_c0_exe4143,
    output wire [63:0] out_c0_exe5144,
    output wire [0:0] out_c0_exe6145,
    output wire [0:0] out_c0_exe7146,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_bicg17_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg16_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_burstcount,
    input wire [31:0] in_memdep_6_bicg_avm_readdata,
    input wire [0:0] in_memdep_6_bicg_avm_writeack,
    input wire [0:0] in_memdep_6_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_6_bicg_avm_readdatavalid,
    output wire [31:0] out_unnamed_bicg17_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg17_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg17_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_burstcount,
    input wire [31:0] in_unnamed_bicg18_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_readdatavalid,
    output wire [31:0] out_memdep_6_bicg_avm_address,
    output wire [0:0] out_memdep_6_bicg_avm_enable,
    output wire [0:0] out_memdep_6_bicg_avm_read,
    output wire [0:0] out_memdep_6_bicg_avm_write,
    output wire [31:0] out_memdep_6_bicg_avm_writedata,
    output wire [3:0] out_memdep_6_bicg_avm_byteenable,
    output wire [0:0] out_memdep_6_bicg_avm_burstcount,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg18_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] bicg_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] bicg_B9_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] bicg_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] bicg_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [63:0] bicg_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] bicg_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] bicg_B9_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] bicg_B9_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] bicg_B9_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_7_tpl;
    wire [163:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [63:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [163:0] bubble_join_bicg_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_bicg_B9_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_bicg_B9_merge_reg_aunroll_x_c;
    wire [63:0] bubble_select_bicg_B9_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_bicg_B9_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_bicg_B9_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_bicg_B9_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_bicg_B9_merge_reg_aunroll_x_h;
    wire [99:0] bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_g;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_bicg_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_bicg_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_bicg_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,32)
    assign bubble_join_stall_entry_q = {in_unnamed_bicg14, in_notcmp4288, in_memdep_phi_pop1889, in_idxprom4085, in_forked27, in_exitcond1687, in_arrayidx41686};

    // bubble_select_stall_entry(BITSELECT,33)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[129:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[130:130]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[131:131]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[163:132]);

    // SE_stall_entry(STALLENABLE,42)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = bicg_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bicg_B9_merge_reg_aunroll_x(BLACKBOX,19)@0
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
    bicg_B9_merge_reg thebicg_B9_merge_reg_aunroll_x (
        .in_stall_in(SE_out_bicg_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_d),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_b),
        .in_data_in_3_tpl(bubble_select_stall_entry_h),
        .in_data_in_4_tpl(bubble_select_stall_entry_c),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_data_in_6_tpl(bubble_select_stall_entry_f),
        .out_stall_out(bicg_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(bicg_B9_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(bicg_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(bicg_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(bicg_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(bicg_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(bicg_B9_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(bicg_B9_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(bicg_B9_merge_reg_aunroll_x_out_data_out_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_bicg_B9_merge_reg_aunroll_x(BITJOIN,36)
    assign bubble_join_bicg_B9_merge_reg_aunroll_x_q = {bicg_B9_merge_reg_aunroll_x_out_data_out_6_tpl, bicg_B9_merge_reg_aunroll_x_out_data_out_5_tpl, bicg_B9_merge_reg_aunroll_x_out_data_out_4_tpl, bicg_B9_merge_reg_aunroll_x_out_data_out_3_tpl, bicg_B9_merge_reg_aunroll_x_out_data_out_2_tpl, bicg_B9_merge_reg_aunroll_x_out_data_out_1_tpl, bicg_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_bicg_B9_merge_reg_aunroll_x(BITSELECT,37)
    assign bubble_select_bicg_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_bicg_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_bicg_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_bicg_B9_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_bicg_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_bicg_B9_merge_reg_aunroll_x_q[128:65]);
    assign bubble_select_bicg_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_bicg_B9_merge_reg_aunroll_x_q[160:129]);
    assign bubble_select_bicg_B9_merge_reg_aunroll_x_f = $unsigned(bubble_join_bicg_B9_merge_reg_aunroll_x_q[161:161]);
    assign bubble_select_bicg_B9_merge_reg_aunroll_x_g = $unsigned(bubble_join_bicg_B9_merge_reg_aunroll_x_q[162:162]);
    assign bubble_select_bicg_B9_merge_reg_aunroll_x_h = $unsigned(bubble_join_bicg_B9_merge_reg_aunroll_x_q[163:163]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_bicg_B9_merge_reg_aunroll_x(STALLENABLE,45)
    // Valid signal propagation
    assign SE_out_bicg_B9_merge_reg_aunroll_x_V0 = SE_out_bicg_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_bicg_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_o_stall | ~ (SE_out_bicg_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bicg_B9_merge_reg_aunroll_x_wireValid = bicg_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x(STALLENABLE,47)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x(BLACKBOX,30)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out@20000000
    // out out_memdep_6_bicg_avm_address@20000000
    // out out_memdep_6_bicg_avm_burstcount@20000000
    // out out_memdep_6_bicg_avm_byteenable@20000000
    // out out_memdep_6_bicg_avm_enable@20000000
    // out out_memdep_6_bicg_avm_read@20000000
    // out out_memdep_6_bicg_avm_write@20000000
    // out out_memdep_6_bicg_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@15
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_bicg15_bicg_avm_address@20000000
    // out out_unnamed_bicg15_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg15_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg15_bicg_avm_enable@20000000
    // out out_unnamed_bicg15_bicg_avm_read@20000000
    // out out_unnamed_bicg15_bicg_avm_write@20000000
    // out out_unnamed_bicg15_bicg_avm_writedata@20000000
    // out out_unnamed_bicg16_bicg_avm_address@20000000
    // out out_unnamed_bicg16_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg16_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg16_bicg_avm_enable@20000000
    // out out_unnamed_bicg16_bicg_avm_read@20000000
    // out out_unnamed_bicg16_bicg_avm_write@20000000
    // out out_unnamed_bicg16_bicg_avm_writedata@20000000
    // out out_unnamed_bicg17_bicg_avm_address@20000000
    // out out_unnamed_bicg17_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg17_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg17_bicg_avm_enable@20000000
    // out out_unnamed_bicg17_bicg_avm_read@20000000
    // out out_unnamed_bicg17_bicg_avm_write@20000000
    // out out_unnamed_bicg17_bicg_avm_writedata@20000000
    // out out_unnamed_bicg18_bicg_avm_address@20000000
    // out out_unnamed_bicg18_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg18_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg18_bicg_avm_enable@20000000
    // out out_unnamed_bicg18_bicg_avm_read@20000000
    // out out_unnamed_bicg18_bicg_avm_write@20000000
    // out out_unnamed_bicg18_bicg_avm_writedata@20000000
    // out out_c0_exit139_0_tpl@15
    // out out_c0_exit139_1_tpl@15
    // out out_c0_exit139_2_tpl@15
    // out out_c0_exit139_3_tpl@15
    // out out_c0_exit139_4_tpl@15
    // out out_c0_exit139_5_tpl@15
    // out out_c0_exit139_6_tpl@15
    // out out_c0_exit139_7_tpl@15
    bicg_i_sfc_s_c0_in_for_body46_s_c0_enter12813_bicg1 thei_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_backStall),
        .in_i_valid(SE_out_bicg_B9_merge_reg_aunroll_x_V0),
        .in_memdep_6_bicg_avm_readdata(in_memdep_6_bicg_avm_readdata),
        .in_memdep_6_bicg_avm_readdatavalid(in_memdep_6_bicg_avm_readdatavalid),
        .in_memdep_6_bicg_avm_waitrequest(in_memdep_6_bicg_avm_waitrequest),
        .in_memdep_6_bicg_avm_writeack(in_memdep_6_bicg_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_bicg15_bicg_avm_readdata(in_unnamed_bicg15_bicg_avm_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(in_unnamed_bicg15_bicg_avm_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(in_unnamed_bicg15_bicg_avm_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(in_unnamed_bicg15_bicg_avm_writeack),
        .in_unnamed_bicg16_bicg_avm_readdata(in_unnamed_bicg16_bicg_avm_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(in_unnamed_bicg16_bicg_avm_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(in_unnamed_bicg16_bicg_avm_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(in_unnamed_bicg16_bicg_avm_writeack),
        .in_unnamed_bicg17_bicg_avm_readdata(in_unnamed_bicg17_bicg_avm_readdata),
        .in_unnamed_bicg17_bicg_avm_readdatavalid(in_unnamed_bicg17_bicg_avm_readdatavalid),
        .in_unnamed_bicg17_bicg_avm_waitrequest(in_unnamed_bicg17_bicg_avm_waitrequest),
        .in_unnamed_bicg17_bicg_avm_writeack(in_unnamed_bicg17_bicg_avm_writeack),
        .in_unnamed_bicg18_bicg_avm_readdata(in_unnamed_bicg18_bicg_avm_readdata),
        .in_unnamed_bicg18_bicg_avm_readdatavalid(in_unnamed_bicg18_bicg_avm_readdatavalid),
        .in_unnamed_bicg18_bicg_avm_waitrequest(in_unnamed_bicg18_bicg_avm_waitrequest),
        .in_unnamed_bicg18_bicg_avm_writeack(in_unnamed_bicg18_bicg_avm_writeack),
        .in_c0_eni7_0_tpl(GND_q),
        .in_c0_eni7_1_tpl(bubble_select_bicg_B9_merge_reg_aunroll_x_b),
        .in_c0_eni7_2_tpl(bubble_select_bicg_B9_merge_reg_aunroll_x_c),
        .in_c0_eni7_3_tpl(bubble_select_bicg_B9_merge_reg_aunroll_x_h),
        .in_c0_eni7_4_tpl(bubble_select_bicg_B9_merge_reg_aunroll_x_e),
        .in_c0_eni7_5_tpl(bubble_select_bicg_B9_merge_reg_aunroll_x_d),
        .in_c0_eni7_6_tpl(bubble_select_bicg_B9_merge_reg_aunroll_x_f),
        .in_c0_eni7_7_tpl(bubble_select_bicg_B9_merge_reg_aunroll_x_g),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out),
        .out_memdep_6_bicg_avm_address(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_address),
        .out_memdep_6_bicg_avm_burstcount(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_burstcount),
        .out_memdep_6_bicg_avm_byteenable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_byteenable),
        .out_memdep_6_bicg_avm_enable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_enable),
        .out_memdep_6_bicg_avm_read(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_read),
        .out_memdep_6_bicg_avm_write(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_write),
        .out_memdep_6_bicg_avm_writedata(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_bicg15_bicg_avm_address(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_address),
        .out_unnamed_bicg15_bicg_avm_burstcount(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_burstcount),
        .out_unnamed_bicg15_bicg_avm_byteenable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_byteenable),
        .out_unnamed_bicg15_bicg_avm_enable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_enable),
        .out_unnamed_bicg15_bicg_avm_read(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_read),
        .out_unnamed_bicg15_bicg_avm_write(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_write),
        .out_unnamed_bicg15_bicg_avm_writedata(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_writedata),
        .out_unnamed_bicg16_bicg_avm_address(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_address),
        .out_unnamed_bicg16_bicg_avm_burstcount(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_burstcount),
        .out_unnamed_bicg16_bicg_avm_byteenable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_byteenable),
        .out_unnamed_bicg16_bicg_avm_enable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_enable),
        .out_unnamed_bicg16_bicg_avm_read(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_read),
        .out_unnamed_bicg16_bicg_avm_write(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_write),
        .out_unnamed_bicg16_bicg_avm_writedata(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_writedata),
        .out_unnamed_bicg17_bicg_avm_address(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_address),
        .out_unnamed_bicg17_bicg_avm_burstcount(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_burstcount),
        .out_unnamed_bicg17_bicg_avm_byteenable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_byteenable),
        .out_unnamed_bicg17_bicg_avm_enable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_enable),
        .out_unnamed_bicg17_bicg_avm_read(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_read),
        .out_unnamed_bicg17_bicg_avm_write(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_write),
        .out_unnamed_bicg17_bicg_avm_writedata(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_writedata),
        .out_unnamed_bicg18_bicg_avm_address(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_address),
        .out_unnamed_bicg18_bicg_avm_burstcount(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_burstcount),
        .out_unnamed_bicg18_bicg_avm_byteenable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_byteenable),
        .out_unnamed_bicg18_bicg_avm_enable(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_enable),
        .out_unnamed_bicg18_bicg_avm_read(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_read),
        .out_unnamed_bicg18_bicg_avm_write(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_write),
        .out_unnamed_bicg18_bicg_avm_writedata(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_writedata),
        .out_c0_exit139_0_tpl(),
        .out_c0_exit139_1_tpl(),
        .out_c0_exit139_2_tpl(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_2_tpl),
        .out_c0_exit139_3_tpl(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_3_tpl),
        .out_c0_exit139_4_tpl(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_4_tpl),
        .out_c0_exit139_5_tpl(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_5_tpl),
        .out_c0_exit139_6_tpl(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_6_tpl),
        .out_c0_exit139_7_tpl(i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going30_bicg6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,21)
    assign out_unnamed_bicg15_bicg_avm_address = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_address;
    assign out_unnamed_bicg15_bicg_avm_enable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_enable;
    assign out_unnamed_bicg15_bicg_avm_read = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_read;
    assign out_unnamed_bicg15_bicg_avm_write = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_write;
    assign out_unnamed_bicg15_bicg_avm_writedata = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_writedata;
    assign out_unnamed_bicg15_bicg_avm_byteenable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_byteenable;
    assign out_unnamed_bicg15_bicg_avm_burstcount = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg15_bicg_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x(BITJOIN,40)
    assign bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q = {i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_7_tpl, i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_6_tpl, i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_5_tpl, i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_4_tpl, i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_3_tpl, i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_c0_exit139_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x(BITSELECT,41)
    assign bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q[32:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q[33:33]);
    assign bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q[97:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q[98:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_q[99:99]);

    // dupName_0_sync_out_x(GPOUT,22)@15
    assign out_c0_exe2141 = bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_b;
    assign out_c0_exe3142 = bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_c;
    assign out_c0_exe4143 = bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_d;
    assign out_c0_exe5144 = bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_e;
    assign out_c0_exe6145 = bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_f;
    assign out_c0_exe7146 = bubble_select_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_g;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,24)
    assign out_unnamed_bicg16_bicg_avm_address = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_address;
    assign out_unnamed_bicg16_bicg_avm_enable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_enable;
    assign out_unnamed_bicg16_bicg_avm_read = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_read;
    assign out_unnamed_bicg16_bicg_avm_write = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_write;
    assign out_unnamed_bicg16_bicg_avm_writedata = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_writedata;
    assign out_unnamed_bicg16_bicg_avm_byteenable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_byteenable;
    assign out_unnamed_bicg16_bicg_avm_burstcount = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg16_bicg_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,26)
    assign out_unnamed_bicg17_bicg_avm_address = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_address;
    assign out_unnamed_bicg17_bicg_avm_enable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_enable;
    assign out_unnamed_bicg17_bicg_avm_read = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_read;
    assign out_unnamed_bicg17_bicg_avm_write = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_write;
    assign out_unnamed_bicg17_bicg_avm_writedata = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_writedata;
    assign out_unnamed_bicg17_bicg_avm_byteenable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_byteenable;
    assign out_unnamed_bicg17_bicg_avm_burstcount = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg17_bicg_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,28)
    assign out_memdep_6_bicg_avm_address = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_address;
    assign out_memdep_6_bicg_avm_enable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_enable;
    assign out_memdep_6_bicg_avm_read = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_read;
    assign out_memdep_6_bicg_avm_write = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_write;
    assign out_memdep_6_bicg_avm_writedata = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_writedata;
    assign out_memdep_6_bicg_avm_byteenable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_byteenable;
    assign out_memdep_6_bicg_avm_burstcount = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_memdep_6_bicg_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,29)
    assign out_unnamed_bicg18_bicg_avm_address = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_address;
    assign out_unnamed_bicg18_bicg_avm_enable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_enable;
    assign out_unnamed_bicg18_bicg_avm_read = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_read;
    assign out_unnamed_bicg18_bicg_avm_write = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_write;
    assign out_unnamed_bicg18_bicg_avm_writedata = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_writedata;
    assign out_unnamed_bicg18_bicg_avm_byteenable = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_byteenable;
    assign out_unnamed_bicg18_bicg_avm_burstcount = i_sfc_s_c0_in_for_body46_bicgs_c0_enter12813_bicg1_aunroll_x_out_unnamed_bicg18_bicg_avm_burstcount;

endmodule
