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

// SystemVerilog created from bb_kernel_2mm_B5_stall_region
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 12:37:15 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B5_stall_region (
    output wire [31:0] out_memdep_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_kernel_2mm_avm_writedata,
    output wire [3:0] out_memdep_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exe2203,
    output wire [0:0] out_c0_exe3204,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_2mm_avm_writeack,
    input wire [0:0] in_memdep_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked78,
    input wire [31:0] in_i_084_pop21134,
    input wire [0:0] in_notcmp93133,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_c0_exit201_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_c0_exit201_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] kernel_2mm_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_2mm_B5_merge_reg_aunroll_x_out_valid_out;
    wire [1:0] bubble_join_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_c;
    wire [33:0] bubble_join_kernel_2mm_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_d;
    wire [33:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_V0;
    wire [0:0] SE_out_kernel_2mm_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_2mm_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_2mm_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;


    // SE_stall_entry(STALLENABLE,38)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_2mm_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,31)
    assign bubble_join_stall_entry_q = {in_notcmp93133, in_i_084_pop21134, in_forked78};

    // bubble_select_stall_entry(BITSELECT,32)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);

    // kernel_2mm_B5_merge_reg_aunroll_x(BLACKBOX,5)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_2mm_B5_merge_reg thekernel_2mm_B5_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .in_stall_in(SE_out_kernel_2mm_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_stall_out(kernel_2mm_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_2mm_B5_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_kernel_2mm_B5_merge_reg_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_kernel_2mm_B5_merge_reg_aunroll_x_V0 = SE_out_kernel_2mm_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_2mm_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_2mm_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_2mm_B5_merge_reg_aunroll_x_wireValid = kernel_2mm_B5_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x(STALLENABLE,35)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_o_valid;

    // bubble_join_kernel_2mm_B5_merge_reg_aunroll_x(BITJOIN,27)
    assign bubble_join_kernel_2mm_B5_merge_reg_aunroll_x_q = {kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_2mm_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_2mm_B5_merge_reg_aunroll_x(BITSELECT,28)
    assign bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_2mm_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_2mm_B5_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_2mm_B5_merge_reg_aunroll_x_q[33:2]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x(BLACKBOX,4)@1
    // in in_i_stall@20000000
    // out out_c0_exit201_0_tpl@9
    // out out_c0_exit201_1_tpl@9
    // out out_c0_exit201_2_tpl@9
    // out out_c0_exit201_3_tpl@9
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out@20000000
    // out out_memdep_kernel_2mm_avm_address@20000000
    // out out_memdep_kernel_2mm_avm_burstcount@20000000
    // out out_memdep_kernel_2mm_avm_byteenable@20000000
    // out out_memdep_kernel_2mm_avm_enable@20000000
    // out out_memdep_kernel_2mm_avm_read@20000000
    // out out_memdep_kernel_2mm_avm_write@20000000
    // out out_memdep_kernel_2mm_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_sfc_s_c0_in_for_body5_s_c0_enter19620_kernel_2mm1 thei_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x (
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_d),
        .in_c0_eni3_3_tpl(bubble_select_kernel_2mm_B5_merge_reg_aunroll_x_c),
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_2mm_B5_merge_reg_aunroll_x_V0),
        .in_memdep_kernel_2mm_avm_readdata(in_memdep_kernel_2mm_avm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(in_memdep_kernel_2mm_avm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(in_memdep_kernel_2mm_avm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(in_memdep_kernel_2mm_avm_writeack),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit201_0_tpl(),
        .out_c0_exit201_1_tpl(),
        .out_c0_exit201_2_tpl(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_c0_exit201_2_tpl),
        .out_c0_exit201_3_tpl(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_c0_exit201_3_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out),
        .out_memdep_kernel_2mm_avm_address(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_writedata),
        .out_o_stall(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,2)
    assign out_memdep_kernel_2mm_avm_address = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_address;
    assign out_memdep_kernel_2mm_avm_enable = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_enable;
    assign out_memdep_kernel_2mm_avm_read = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_read;
    assign out_memdep_kernel_2mm_avm_write = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_write;
    assign out_memdep_kernel_2mm_avm_writedata = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_writedata;
    assign out_memdep_kernel_2mm_avm_byteenable = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_byteenable;
    assign out_memdep_kernel_2mm_avm_burstcount = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_memdep_kernel_2mm_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x(BITJOIN,24)
    assign bubble_join_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_c0_exit201_3_tpl, i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_c0_exit201_2_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x(BITSELECT,25)
    assign bubble_select_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_q[1:1]);

    // dupName_0_sync_out_x(GPOUT,3)@9
    assign out_c0_exe2203 = bubble_select_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_b;
    assign out_c0_exe3204 = bubble_select_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_c;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_V0;

    // ext_sig_sync_out(GPOUT,10)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going81_kernel_2mm6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,16)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body5_kernel_2mms_c0_enter19620_kernel_2mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,21)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
