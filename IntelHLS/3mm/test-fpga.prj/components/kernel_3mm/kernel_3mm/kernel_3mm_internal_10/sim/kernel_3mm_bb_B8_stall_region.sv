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

// SystemVerilog created from bb_kernel_3mm_B8_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B8_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_arrayidx778195,
    input wire [0:0] in_forked97,
    input wire [31:0] in_i_1102_pop29154_pop42192,
    input wire [31:0] in_i_1102_pop29186,
    input wire [63:0] in_idxprom74193,
    input wire [63:0] in_idxprom76194,
    input wire [0:0] in_notcmp112196,
    input wire [0:0] in_notcmp117157_pop43197,
    input wire [0:0] in_notcmp117191,
    input wire [31:0] in_unnamed_kernel_3mm18,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount,
    output wire [31:0] out_c0_exe10316,
    output wire [0:0] out_c0_exe11317,
    output wire [63:0] out_c0_exe2308,
    output wire [63:0] out_c0_exe3309,
    output wire [31:0] out_c0_exe4310,
    output wire [0:0] out_c0_exe5311,
    output wire [31:0] out_c0_exe6312,
    output wire [0:0] out_c0_exe7313,
    output wire [63:0] out_c0_exe8314,
    output wire [0:0] out_c0_exe9315,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;
    wire [63:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_5_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_11_tpl;
    wire [0:0] kernel_3mm_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_3mm_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [63:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [63:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [63:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [0:0] kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [291:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [63:0] bubble_select_stall_entry_f;
    wire [63:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [291:0] bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_k;
    wire [291:0] bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_e;
    wire [63:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_f;
    wire [63:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_g;
    wire [63:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_j;
    wire [0:0] bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_k;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_V0;
    wire [0:0] SE_out_kernel_3mm_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_3mm_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_3mm_B8_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,26)
    assign bubble_join_stall_entry_q = {in_unnamed_kernel_3mm18, in_notcmp117191, in_notcmp117157_pop43197, in_notcmp112196, in_idxprom76194, in_idxprom74193, in_i_1102_pop29186, in_i_1102_pop29154_pop42192, in_forked97, in_arrayidx778195};

    // bubble_select_stall_entry(BITSELECT,27)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[192:129]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[256:193]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[257:257]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[258:258]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[259:259]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[291:260]);

    // SE_stall_entry(STALLENABLE,36)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_3mm_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kernel_3mm_B8_merge_reg_aunroll_x(BLACKBOX,24)@0
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
    // out out_data_out_7_tpl@1
    // out out_data_out_8_tpl@1
    // out out_data_out_9_tpl@1
    kernel_3mm_B8_merge_reg thekernel_3mm_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_kernel_3mm_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_j),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_f),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_data_in_6_tpl(bubble_select_stall_entry_b),
        .in_data_in_7_tpl(bubble_select_stall_entry_k),
        .in_data_in_8_tpl(bubble_select_stall_entry_h),
        .in_data_in_9_tpl(bubble_select_stall_entry_i),
        .out_stall_out(kernel_3mm_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_3mm_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_kernel_3mm_B8_merge_reg_aunroll_x(BITJOIN,33)
    assign bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q = {kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_9_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_8_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_7_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_6_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_5_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_4_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_3_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_3mm_B8_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_3mm_B8_merge_reg_aunroll_x(BITSELECT,34)
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_e = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[65:34]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_f = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[129:66]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_g = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[193:130]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_h = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[257:194]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_i = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[289:258]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_j = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[290:290]);
    assign bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_k = $unsigned(bubble_join_kernel_3mm_B8_merge_reg_aunroll_x_q[291:291]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_kernel_3mm_B8_merge_reg_aunroll_x(STALLENABLE,41)
    // Valid signal propagation
    assign SE_out_kernel_3mm_B8_merge_reg_aunroll_x_V0 = SE_out_kernel_3mm_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_3mm_B8_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_3mm_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_3mm_B8_merge_reg_aunroll_x_wireValid = kernel_3mm_B8_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x(BLACKBOX,23)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_3mm19_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm19_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm19_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm19_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata@20000000
    // out out_unnamed_kernel_3mm20_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm20_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm20_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm20_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit306_0_tpl@14
    // out out_c0_exit306_1_tpl@14
    // out out_c0_exit306_2_tpl@14
    // out out_c0_exit306_3_tpl@14
    // out out_c0_exit306_4_tpl@14
    // out out_c0_exit306_5_tpl@14
    // out out_c0_exit306_6_tpl@14
    // out out_c0_exit306_7_tpl@14
    // out out_c0_exit306_8_tpl@14
    // out out_c0_exit306_9_tpl@14
    // out out_c0_exit306_10_tpl@14
    // out out_c0_exit306_11_tpl@14
    kernel_3mm_i_sfc_s_c0_in_for_body80_s_c0_enter29131_kernel_3mm1 thei_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_3mm_B8_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack),
        .in_c0_eni10_0_tpl(GND_q),
        .in_c0_eni10_1_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_b),
        .in_c0_eni10_2_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_f),
        .in_c0_eni10_3_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_g),
        .in_c0_eni10_4_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_i),
        .in_c0_eni10_5_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_e),
        .in_c0_eni10_6_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_k),
        .in_c0_eni10_7_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_h),
        .in_c0_eni10_8_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_j),
        .in_c0_eni10_9_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_c),
        .in_c0_eni10_10_tpl(bubble_select_kernel_3mm_B8_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata),
        .out_c0_exit306_0_tpl(),
        .out_c0_exit306_1_tpl(),
        .out_c0_exit306_2_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_2_tpl),
        .out_c0_exit306_3_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_3_tpl),
        .out_c0_exit306_4_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_4_tpl),
        .out_c0_exit306_5_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_5_tpl),
        .out_c0_exit306_6_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_6_tpl),
        .out_c0_exit306_7_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_7_tpl),
        .out_c0_exit306_8_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_8_tpl),
        .out_c0_exit306_9_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_9_tpl),
        .out_c0_exit306_10_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_10_tpl),
        .out_c0_exit306_11_tpl(i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,20)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x(BITJOIN,30)
    assign bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_11_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_10_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_9_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_8_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_7_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_6_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_5_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_4_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_3_tpl, i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_c0_exit306_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x(BITSELECT,31)
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[160:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[192:161]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[193:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[257:194]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[258:258]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[290:259]);
    assign bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_q[291:291]);

    // dupName_0_sync_out_x(GPOUT,21)@14
    assign out_c0_exe10316 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_j;
    assign out_c0_exe11317 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_k;
    assign out_c0_exe2308 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_b;
    assign out_c0_exe3309 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_c;
    assign out_c0_exe4310 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_d;
    assign out_c0_exe5311 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_e;
    assign out_c0_exe6312 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_f;
    assign out_c0_exe7313 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_g;
    assign out_c0_exe8314 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_h;
    assign out_c0_exe9315 = bubble_select_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,22)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body80_kernel_3mms_c0_enter29131_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;

endmodule
