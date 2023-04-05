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

// SystemVerilog created from bb_kernel_3mm_B7_stall_region
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_bb_B7_stall_region (
    input wire [31:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked153,
    input wire [31:0] in_i_1102_pop29182,
    input wire [0:0] in_notcmp117187,
    input wire [0:0] in_valid_in,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount,
    output wire [0:0] out_c0_exe10287,
    output wire [31:0] out_c0_exe1278,
    output wire [63:0] out_c0_exe2279,
    output wire [63:0] out_c0_exe3280,
    output wire [63:0] out_c0_exe4281,
    output wire [31:0] out_c0_exe5282,
    output wire [0:0] out_c0_exe7284,
    output wire [0:0] out_c0_exe8285,
    output wire [31:0] out_c0_exe9286,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_9_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_10_tpl;
    wire [0:0] kernel_3mm_B7_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_3mm_B7_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [33:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [290:0] bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_j;
    wire [33:0] bubble_join_kernel_3mm_B7_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_d;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_V0;
    wire [0:0] SE_out_kernel_3mm_B7_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_3mm_B7_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_3mm_B7_merge_reg_aunroll_x_V0;


    // bubble_join_stall_entry(BITJOIN,24)
    assign bubble_join_stall_entry_q = {in_notcmp117187, in_i_1102_pop29182, in_forked153};

    // bubble_select_stall_entry(BITSELECT,25)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);

    // SE_stall_entry(STALLENABLE,34)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_3mm_B7_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // kernel_3mm_B7_merge_reg_aunroll_x(BLACKBOX,22)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    kernel_3mm_B7_merge_reg thekernel_3mm_B7_merge_reg_aunroll_x (
        .in_stall_in(SE_out_kernel_3mm_B7_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_c),
        .in_data_in_2_tpl(bubble_select_stall_entry_d),
        .out_stall_out(kernel_3mm_B7_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_3mm_B7_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_kernel_3mm_B7_merge_reg_aunroll_x(BITJOIN,31)
    assign bubble_join_kernel_3mm_B7_merge_reg_aunroll_x_q = {kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_3mm_B7_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_3mm_B7_merge_reg_aunroll_x(BITSELECT,32)
    assign bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_3mm_B7_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_3mm_B7_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_3mm_B7_merge_reg_aunroll_x_q[33:33]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_kernel_3mm_B7_merge_reg_aunroll_x(STALLENABLE,39)
    // Valid signal propagation
    assign SE_out_kernel_3mm_B7_merge_reg_aunroll_x_V0 = SE_out_kernel_3mm_B7_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_3mm_B7_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_3mm_B7_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_3mm_B7_merge_reg_aunroll_x_wireValid = kernel_3mm_B7_merge_reg_aunroll_x_out_valid_out;

    // SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x(STALLENABLE,37)
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_backStall = in_stall_in | ~ (SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x(BLACKBOX,21)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_pipeline_valid_out@20000000
    // out out_unnamed_kernel_3mm17_kernel_3mm_avm_address@20000000
    // out out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount@20000000
    // out out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable@20000000
    // out out_unnamed_kernel_3mm17_kernel_3mm_avm_enable@20000000
    // out out_unnamed_kernel_3mm17_kernel_3mm_avm_read@20000000
    // out out_unnamed_kernel_3mm17_kernel_3mm_avm_write@20000000
    // out out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata@20000000
    // out out_c0_exit277_0_tpl@10
    // out out_c0_exit277_1_tpl@10
    // out out_c0_exit277_2_tpl@10
    // out out_c0_exit277_3_tpl@10
    // out out_c0_exit277_4_tpl@10
    // out out_c0_exit277_5_tpl@10
    // out out_c0_exit277_6_tpl@10
    // out out_c0_exit277_7_tpl@10
    // out out_c0_exit277_8_tpl@10
    // out out_c0_exit277_9_tpl@10
    // out out_c0_exit277_10_tpl@10
    kernel_3mm_i_sfc_s_c0_in_for_body73_s_c0_enter26328_kernel_3mm1 thei_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x (
        .in_flush(in_flush),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_3mm_B7_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack),
        .in_c0_eni3262_0_tpl(GND_q),
        .in_c0_eni3262_1_tpl(bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_c),
        .in_c0_eni3262_2_tpl(bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_b),
        .in_c0_eni3262_3_tpl(bubble_select_kernel_3mm_B7_merge_reg_aunroll_x_d),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_stall_out(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_valid_out(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_pipeline_valid_out),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_address(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_read(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_write(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata),
        .out_c0_exit277_0_tpl(),
        .out_c0_exit277_1_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_1_tpl),
        .out_c0_exit277_2_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_2_tpl),
        .out_c0_exit277_3_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_3_tpl),
        .out_c0_exit277_4_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_4_tpl),
        .out_c0_exit277_5_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_5_tpl),
        .out_c0_exit277_6_tpl(),
        .out_c0_exit277_7_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_7_tpl),
        .out_c0_exit277_8_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_8_tpl),
        .out_c0_exit277_9_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_9_tpl),
        .out_c0_exit277_10_tpl(i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_valid_out = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_stall_out = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,12)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,17)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,19)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_address = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_enable = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_read = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_write = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount = i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;

    // bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x(BITJOIN,28)
    assign bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_10_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_9_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_8_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_7_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_5_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_4_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_3_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_2_tpl, i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_out_c0_exit277_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x(BITSELECT,29)
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[31:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[95:32]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[159:96]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[223:160]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[255:224]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[256:256]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[257:257]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[289:258]);
    assign bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_q[290:290]);

    // dupName_0_sync_out_x(GPOUT,20)@10
    assign out_c0_exe10287 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_j;
    assign out_c0_exe1278 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_b;
    assign out_c0_exe2279 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_c;
    assign out_c0_exe3280 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_d;
    assign out_c0_exe4281 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_e;
    assign out_c0_exe5282 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_f;
    assign out_c0_exe7284 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_g;
    assign out_c0_exe8285 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_h;
    assign out_c0_exe9286 = bubble_select_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_i;
    assign out_valid_out = SE_out_i_sfc_s_c0_in_for_body73_kernel_3mms_c0_enter26328_kernel_3mm1_aunroll_x_V0;

endmodule
