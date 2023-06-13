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

// SystemVerilog created from bb_kernel_2mm_B9_stall_region
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B9_stall_region (
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [31:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [31:0] out_c0_exe1227,
    output wire [31:0] out_c0_exe2228,
    output wire [63:0] out_c0_exe3229,
    output wire [31:0] out_c0_exe4230,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [31:0] out_c0_exe9,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked107,
    input wire [31:0] in_i11_082_pop23136,
    input wire [31:0] in_mul_add26139,
    input wire [0:0] in_notcmp72142,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_1_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [0:0] kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] kernel_2mm_B9_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_2mm_B9_merge_reg_aunroll_x_out_valid_out;
    wire [258:0] bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_j;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_k;
    wire [65:0] bubble_join_kernel_2mm_B9_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_e;
    wire [65:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_V0;
    wire [0:0] SE_out_kernel_2mm_B9_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_2mm_B9_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_2mm_B9_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,38)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_2mm_B9_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,31)
    assign bubble_join_stall_entry_q = {in_notcmp72142, in_mul_add26139, in_i11_082_pop23136, in_forked107};

    // bubble_select_stall_entry(BITSELECT,32)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[65:65]);

    // kernel_2mm_B9_merge_reg_aunroll_x(BLACKBOX,5)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_2mm_B9_merge_reg thekernel_2mm_B9_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .in_data_in_3_tpl(bubble_select_stall_entry_e),
        .in_stall_in(SE_out_kernel_2mm_B9_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_stall_out(kernel_2mm_B9_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_2mm_B9_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_kernel_2mm_B9_merge_reg_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_kernel_2mm_B9_merge_reg_aunroll_x_V0 = SE_out_kernel_2mm_B9_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_2mm_B9_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_2mm_B9_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_2mm_B9_merge_reg_aunroll_x_wireValid = kernel_2mm_B9_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x(STALLENABLE,35)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_o_valid;

    // bubble_join_kernel_2mm_B9_merge_reg_aunroll_x(BITJOIN,27)
    assign bubble_join_kernel_2mm_B9_merge_reg_aunroll_x_q = {kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_3_tpl, kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_2mm_B9_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_2mm_B9_merge_reg_aunroll_x(BITSELECT,28)
    assign bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_2mm_B9_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_2mm_B9_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_2mm_B9_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_e = $unsigned(bubble_join_kernel_2mm_B9_merge_reg_aunroll_x_q[65:65]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit226_0_tpl@12
    // out out_c0_exit226_1_tpl@12
    // out out_c0_exit226_2_tpl@12
    // out out_c0_exit226_3_tpl@12
    // out out_c0_exit226_4_tpl@12
    // out out_c0_exit226_5_tpl@12
    // out out_c0_exit226_6_tpl@12
    // out out_c0_exit226_7_tpl@12
    // out out_c0_exit226_8_tpl@12
    // out out_c0_exit226_9_tpl@12
    // out out_c0_exit226_10_tpl@12
    // out out_c0_exit226_11_tpl@12
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@12
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_sfc_s_c0_in_for_body20_s_c0_enter21821_kernel_2mm1 thei_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x (
        .in_c0_eni4_0_tpl(GND_q),
        .in_c0_eni4_1_tpl(bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_c),
        .in_c0_eni4_2_tpl(bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_b),
        .in_c0_eni4_3_tpl(bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_d),
        .in_c0_eni4_4_tpl(bubble_select_kernel_2mm_B9_merge_reg_aunroll_x_e),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_2mm_B9_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .out_c0_exit226_0_tpl(),
        .out_c0_exit226_1_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_1_tpl),
        .out_c0_exit226_2_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_2_tpl),
        .out_c0_exit226_3_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_3_tpl),
        .out_c0_exit226_4_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_4_tpl),
        .out_c0_exit226_5_tpl(),
        .out_c0_exit226_6_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_6_tpl),
        .out_c0_exit226_7_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_7_tpl),
        .out_c0_exit226_8_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_8_tpl),
        .out_c0_exit226_9_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_9_tpl),
        .out_c0_exit226_10_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_10_tpl),
        .out_c0_exit226_11_tpl(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_11_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x(BITJOIN,24)
    assign bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_11_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_10_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_9_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_8_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_7_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_6_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_4_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_3_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_2_tpl, i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_c0_exit226_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x(BITSELECT,25)
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[63:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[127:64]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[159:128]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[160:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[192:161]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[193:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[225:194]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[257:226]);
    assign bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_q[258:258]);

    // dupName_0_sync_out_x(GPOUT,3)@12
    assign out_c0_exe10 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_j;
    assign out_c0_exe11 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_k;
    assign out_c0_exe1227 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_b;
    assign out_c0_exe2228 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_c;
    assign out_c0_exe3229 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_d;
    assign out_c0_exe4230 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_e;
    assign out_c0_exe6 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_f;
    assign out_c0_exe7 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_g;
    assign out_c0_exe8 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_h;
    assign out_c0_exe9 = bubble_select_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_V0;

    // ext_sig_sync_out(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going69_kernel_2mm2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,16)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body20_kernel_2mms_c0_enter21821_kernel_2mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
