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

// SystemVerilog created from bb_atax_B5_stall_region
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:56:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B5_stall_region (
    input wire [63:0] in_unnamed_atax10_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax10_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax10_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax10_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked68,
    input wire [31:0] in_i_047_pop17108,
    input wire [0:0] in_notcmp83107,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_3_atax_avm_readdata,
    input wire [0:0] in_memdep_3_atax_avm_writeack,
    input wire [0:0] in_memdep_3_atax_avm_waitrequest,
    input wire [0:0] in_memdep_3_atax_avm_readdatavalid,
    output wire [63:0] out_unnamed_atax10_atax_avm_address,
    output wire [0:0] out_unnamed_atax10_atax_avm_enable,
    output wire [0:0] out_unnamed_atax10_atax_avm_read,
    output wire [0:0] out_unnamed_atax10_atax_avm_write,
    output wire [63:0] out_unnamed_atax10_atax_avm_writedata,
    output wire [7:0] out_unnamed_atax10_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax10_atax_avm_burstcount,
    output wire [63:0] out_c0_exe3146,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_memdep_3_atax_avm_address,
    output wire [0:0] out_memdep_3_atax_avm_enable,
    output wire [0:0] out_memdep_3_atax_avm_read,
    output wire [0:0] out_memdep_3_atax_avm_write,
    output wire [31:0] out_memdep_3_atax_avm_writedata,
    output wire [3:0] out_memdep_3_atax_avm_byteenable,
    output wire [0:0] out_memdep_3_atax_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_3_atax4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_writedata;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_7_tpl;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [65:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [64:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [65:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [65:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax3_b;
    wire [33:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [33:0] bubble_join_atax_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_atax_B5_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_atax_B5_merge_reg_aunroll_x_d;
    wire [194:0] bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_g;
    wire [64:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [65:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [65:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V2;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,50)
    assign bubble_join_stall_entry_q = {in_notcmp83107, in_i_047_pop17108, in_forked68};

    // bubble_select_stall_entry(BITSELECT,51)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[33:33]);

    // SE_stall_entry(STALLENABLE,70)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B5_merge_reg_aunroll_x(BLACKBOX,26)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    atax_B5_merge_reg theatax_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_c),
        .out_stall_out(atax_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B5_merge_reg_aunroll_x(BITJOIN,54)
    assign bubble_join_atax_B5_merge_reg_aunroll_x_q = {atax_B5_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B5_merge_reg_aunroll_x(BITSELECT,55)
    assign bubble_select_atax_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_atax_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B5_merge_reg_aunroll_x_q[33:2]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_atax_B5_merge_reg_aunroll_x(STALLENABLE,73)
    // Valid signal propagation
    assign SE_out_atax_B5_merge_reg_aunroll_x_V0 = SE_out_atax_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B5_merge_reg_aunroll_x_wireValid = atax_B5_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x(BITJOIN,58)
    assign bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q = {i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_7_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_6_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_5_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_4_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_3_tpl, i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x(BITSELECT,59)
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q[193:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_q[194:194]);

    // join_for_coalesced_delay_1(BITJOIN,41)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_c};

    // bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax3(BITJOIN,47)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax3_q = i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax3(BITSELECT,48)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax10_atax3_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,81)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_3_atax4_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,61)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,62)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[64:0]);

    // sel_for_coalesced_delay_0(BITSELECT,39)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_3_atax4(BLACKBOX,7)@36
    // in in_i_stall@20000000
    // out out_memdep_3_atax_avm_address@20000000
    // out out_memdep_3_atax_avm_burstcount@20000000
    // out out_memdep_3_atax_avm_byteenable@20000000
    // out out_memdep_3_atax_avm_enable@20000000
    // out out_memdep_3_atax_avm_read@20000000
    // out out_memdep_3_atax_avm_write@20000000
    // out out_memdep_3_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    atax_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_atax4 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_atax10_atax3_b),
        .in_memdep_3_atax_avm_readdata(in_memdep_3_atax_avm_readdata),
        .in_memdep_3_atax_avm_readdatavalid(in_memdep_3_atax_avm_readdatavalid),
        .in_memdep_3_atax_avm_waitrequest(in_memdep_3_atax_avm_waitrequest),
        .in_memdep_3_atax_avm_writeack(in_memdep_3_atax_avm_writeack),
        .out_memdep_3_atax_avm_address(i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_address),
        .out_memdep_3_atax_avm_burstcount(i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_burstcount),
        .out_memdep_3_atax_avm_byteenable(i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_byteenable),
        .out_memdep_3_atax_avm_enable(i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_enable),
        .out_memdep_3_atax_avm_read(i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_read),
        .out_memdep_3_atax_avm_write(i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_write),
        .out_memdep_3_atax_avm_writedata(i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_3_atax4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_3_atax4_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_memdep_3_atax4_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,44)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V2;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(66),
        .IMPL("ram")
    ) thecoalesced_delay_1_fifo (
        .valid_in(coalesced_delay_1_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_1_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_1_q),
        .valid_out(coalesced_delay_1_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_1_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_1_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,38)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_e};

    // coalesced_delay_0_fifo(STALLFIFO,43)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V1;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(65),
        .IMPL("ram")
    ) thecoalesced_delay_0_fifo (
        .valid_in(coalesced_delay_0_fifo_valid_in_bitsignaltemp),
        .stall_in(coalesced_delay_0_fifo_stall_in_bitsignaltemp),
        .data_in(join_for_coalesced_delay_0_q),
        .valid_out(coalesced_delay_0_fifo_valid_out_bitsignaltemp),
        .stall_out(coalesced_delay_0_fifo_stall_out_bitsignaltemp),
        .data_out(coalesced_delay_0_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_atax10_atax3(BLACKBOX,8)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_atax10_atax_avm_address@20000000
    // out out_unnamed_atax10_atax_avm_burstcount@20000000
    // out out_unnamed_atax10_atax_avm_byteenable@20000000
    // out out_unnamed_atax10_atax_avm_enable@20000000
    // out out_unnamed_atax10_atax_avm_read@20000000
    // out out_unnamed_atax10_atax_avm_write@20000000
    // out out_unnamed_atax10_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_10_atax0 thei_llvm_fpga_mem_unnamed_atax10_atax3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V0),
        .in_unnamed_atax10_atax_avm_readdata(in_unnamed_atax10_atax_avm_readdata),
        .in_unnamed_atax10_atax_avm_readdatavalid(in_unnamed_atax10_atax_avm_readdatavalid),
        .in_unnamed_atax10_atax_avm_waitrequest(in_unnamed_atax10_atax_avm_waitrequest),
        .in_unnamed_atax10_atax_avm_writeack(in_unnamed_atax10_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_valid),
        .out_unnamed_atax10_atax_avm_address(i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_address),
        .out_unnamed_atax10_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_burstcount),
        .out_unnamed_atax10_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_byteenable),
        .out_unnamed_atax10_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_enable),
        .out_unnamed_atax10_atax_avm_read(i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_read),
        .out_unnamed_atax10_atax_avm_write(i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_write),
        .out_unnamed_atax10_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x(STALLENABLE,75)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_atax10_atax3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x(BLACKBOX,31)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit143_0_tpl@4
    // out out_c0_exit143_1_tpl@4
    // out out_c0_exit143_2_tpl@4
    // out out_c0_exit143_3_tpl@4
    // out out_c0_exit143_4_tpl@4
    // out out_c0_exit143_5_tpl@4
    // out out_c0_exit143_6_tpl@4
    // out out_c0_exit143_7_tpl@4
    atax_i_sfc_s_c0_in_for_body8_s_c0_enter13818_atax1 thei_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B5_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni3_0_tpl(GND_q),
        .in_c0_eni3_1_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_b),
        .in_c0_eni3_2_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_d),
        .in_c0_eni3_3_tpl(bubble_select_atax_B5_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit143_0_tpl(),
        .out_c0_exit143_1_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_1_tpl),
        .out_c0_exit143_2_tpl(),
        .out_c0_exit143_3_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_3_tpl),
        .out_c0_exit143_4_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_4_tpl),
        .out_c0_exit143_5_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_5_tpl),
        .out_c0_exit143_6_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_6_tpl),
        .out_c0_exit143_7_tpl(i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_c0_exit143_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out = i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out = i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_atax6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body8_ataxs_c0_enter13818_atax1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,28)
    assign out_unnamed_atax10_atax_avm_address = i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_address;
    assign out_unnamed_atax10_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_enable;
    assign out_unnamed_atax10_atax_avm_read = i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_read;
    assign out_unnamed_atax10_atax_avm_write = i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_write;
    assign out_unnamed_atax10_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_writedata;
    assign out_unnamed_atax10_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_byteenable;
    assign out_unnamed_atax10_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax10_atax3_out_unnamed_atax10_atax_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,64)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,65)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[65:0]);

    // sel_for_coalesced_delay_1(BITSELECT,42)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[65:65]);

    // dupName_0_sync_out_x(GPOUT,29)@37
    assign out_c0_exe3146 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe6 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe7 = sel_for_coalesced_delay_1_d;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,30)
    assign out_memdep_3_atax_avm_address = i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_address;
    assign out_memdep_3_atax_avm_enable = i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_enable;
    assign out_memdep_3_atax_avm_read = i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_read;
    assign out_memdep_3_atax_avm_write = i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_write;
    assign out_memdep_3_atax_avm_writedata = i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_writedata;
    assign out_memdep_3_atax_avm_byteenable = i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_byteenable;
    assign out_memdep_3_atax_avm_burstcount = i_llvm_fpga_mem_memdep_3_atax4_out_memdep_3_atax_avm_burstcount;

endmodule
