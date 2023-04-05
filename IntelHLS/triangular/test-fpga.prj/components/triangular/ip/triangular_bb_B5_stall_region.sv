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

// SystemVerilog created from bb_triangular_B5_stall_region
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:58 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_bb_B5_stall_region (
    input wire [63:0] in_unnamed_triangular9_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_writeack,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_flush,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked68,
    input wire [31:0] in_i_041_pop19114,
    input wire [31:0] in_lim_ext109,
    input wire [31:0] in_lim_ext93_pop20115,
    input wire [0:0] in_notcmp83113,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_memdep_4_triangular_avm_readdata,
    input wire [0:0] in_memdep_4_triangular_avm_writeack,
    input wire [0:0] in_memdep_4_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_4_triangular_avm_readdatavalid,
    output wire [63:0] out_unnamed_triangular9_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_write,
    output wire [63:0] out_unnamed_triangular9_triangular_avm_writedata,
    output wire [7:0] out_unnamed_triangular9_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_burstcount,
    output wire [63:0] out_c0_exe3158,
    output wire [0:0] out_c0_exe6,
    output wire [31:0] out_c0_exe7,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_memdep_4_triangular_avm_address,
    output wire [0:0] out_memdep_4_triangular_avm_enable,
    output wire [0:0] out_memdep_4_triangular_avm_read,
    output wire [0:0] out_memdep_4_triangular_avm_write,
    output wire [31:0] out_memdep_4_triangular_avm_writedata,
    output wire [3:0] out_memdep_4_triangular_avm_byteenable,
    output wire [0:0] out_memdep_4_triangular_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [31:0] i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_4_triangular4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_4_triangular4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_6_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_8_tpl;
    wire [0:0] triangular_B5_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] triangular_B5_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] triangular_B5_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] triangular_B5_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] triangular_B5_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] triangular_B5_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] triangular_B5_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [64:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [97:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
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
    wire [97:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [97:0] coalesced_delay_1_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_triangular9_triangular3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_triangular9_triangular3_b;
    wire [97:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [31:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [226:0] bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_f;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_h;
    wire [97:0] bubble_join_triangular_B5_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_triangular_B5_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_triangular_B5_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_triangular_B5_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_triangular_B5_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_triangular_B5_merge_reg_aunroll_x_f;
    wire [64:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [64:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [97:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [97:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V2;
    wire [0:0] SE_out_triangular_B5_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_triangular_B5_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_triangular_B5_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // bubble_join_stall_entry(BITJOIN,51)
    assign bubble_join_stall_entry_q = {in_notcmp83113, in_lim_ext93_pop20115, in_lim_ext109, in_i_041_pop19114, in_forked68};

    // bubble_select_stall_entry(BITSELECT,52)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[32:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[64:33]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[97:97]);

    // SE_stall_entry(STALLENABLE,71)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = triangular_B5_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // triangular_B5_merge_reg_aunroll_x(BLACKBOX,31)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    triangular_B5_merge_reg thetriangular_B5_merge_reg_aunroll_x (
        .in_stall_in(SE_out_triangular_B5_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_c),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .out_stall_out(triangular_B5_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(triangular_B5_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(triangular_B5_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(triangular_B5_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(triangular_B5_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(triangular_B5_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(triangular_B5_merge_reg_aunroll_x_out_data_out_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_triangular_B5_merge_reg_aunroll_x(BITJOIN,58)
    assign bubble_join_triangular_B5_merge_reg_aunroll_x_q = {triangular_B5_merge_reg_aunroll_x_out_data_out_4_tpl, triangular_B5_merge_reg_aunroll_x_out_data_out_3_tpl, triangular_B5_merge_reg_aunroll_x_out_data_out_2_tpl, triangular_B5_merge_reg_aunroll_x_out_data_out_1_tpl, triangular_B5_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_triangular_B5_merge_reg_aunroll_x(BITSELECT,59)
    assign bubble_select_triangular_B5_merge_reg_aunroll_x_b = $unsigned(bubble_join_triangular_B5_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_triangular_B5_merge_reg_aunroll_x_c = $unsigned(bubble_join_triangular_B5_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_triangular_B5_merge_reg_aunroll_x_d = $unsigned(bubble_join_triangular_B5_merge_reg_aunroll_x_q[33:33]);
    assign bubble_select_triangular_B5_merge_reg_aunroll_x_e = $unsigned(bubble_join_triangular_B5_merge_reg_aunroll_x_q[65:34]);
    assign bubble_select_triangular_B5_merge_reg_aunroll_x_f = $unsigned(bubble_join_triangular_B5_merge_reg_aunroll_x_q[97:66]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_triangular_B5_merge_reg_aunroll_x(STALLENABLE,76)
    // Valid signal propagation
    assign SE_out_triangular_B5_merge_reg_aunroll_x_V0 = SE_out_triangular_B5_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_triangular_B5_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_o_stall | ~ (SE_out_triangular_B5_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_triangular_B5_merge_reg_aunroll_x_wireValid = triangular_B5_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x(BITJOIN,55)
    assign bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q = {i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_8_tpl, i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_7_tpl, i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_6_tpl, i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_5_tpl, i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_4_tpl, i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_3_tpl, i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x(BITSELECT,56)
    assign bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q[193:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q[225:194]);
    assign bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_q[226:226]);

    // join_for_coalesced_delay_1(BITJOIN,42)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_c};

    // bubble_join_i_llvm_fpga_mem_unnamed_triangular9_triangular3(BITJOIN,48)
    assign bubble_join_i_llvm_fpga_mem_unnamed_triangular9_triangular3_q = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_triangular9_triangular3(BITSELECT,49)
    assign bubble_select_i_llvm_fpga_mem_unnamed_triangular9_triangular3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_triangular9_triangular3_q[31:0]);

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,82)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_4_triangular4_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,62)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,63)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[64:0]);

    // sel_for_coalesced_delay_0(BITSELECT,40)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[64:64]);

    // i_llvm_fpga_mem_memdep_4_triangular4(BLACKBOX,7)@36
    // in in_i_stall@20000000
    // out out_memdep_4_triangular_avm_address@20000000
    // out out_memdep_4_triangular_avm_burstcount@20000000
    // out out_memdep_4_triangular_avm_byteenable@20000000
    // out out_memdep_4_triangular_avm_enable@20000000
    // out out_memdep_4_triangular_avm_read@20000000
    // out out_memdep_4_triangular_avm_write@20000000
    // out out_memdep_4_triangular_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_o_writeack@37
    triangular_i_llvm_fpga_mem_memdep_4_0 thei_llvm_fpga_mem_memdep_4_triangular4 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_predicate(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_triangular9_triangular3_b),
        .in_memdep_4_triangular_avm_readdata(in_memdep_4_triangular_avm_readdata),
        .in_memdep_4_triangular_avm_readdatavalid(in_memdep_4_triangular_avm_readdatavalid),
        .in_memdep_4_triangular_avm_waitrequest(in_memdep_4_triangular_avm_waitrequest),
        .in_memdep_4_triangular_avm_writeack(in_memdep_4_triangular_avm_writeack),
        .out_memdep_4_triangular_avm_address(i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_address),
        .out_memdep_4_triangular_avm_burstcount(i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_burstcount),
        .out_memdep_4_triangular_avm_byteenable(i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_byteenable),
        .out_memdep_4_triangular_avm_enable(i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_enable),
        .out_memdep_4_triangular_avm_read(i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_read),
        .out_memdep_4_triangular_avm_write(i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_write),
        .out_memdep_4_triangular_avm_writedata(i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_4_triangular4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_4_triangular4_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_memdep_4_triangular4_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,45)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V2;
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
        .DATA_WIDTH(98),
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

    // join_for_coalesced_delay_0(BITJOIN,39)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_b, bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_e};

    // coalesced_delay_0_fifo(STALLFIFO,44)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V1;
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

    // i_llvm_fpga_mem_unnamed_triangular9_triangular3(BLACKBOX,8)@4
    // in in_i_stall@20000000
    // out out_o_readdata@36
    // out out_o_stall@20000000
    // out out_o_valid@36
    // out out_unnamed_triangular9_triangular_avm_address@20000000
    // out out_unnamed_triangular9_triangular_avm_burstcount@20000000
    // out out_unnamed_triangular9_triangular_avm_byteenable@20000000
    // out out_unnamed_triangular9_triangular_avm_enable@20000000
    // out out_unnamed_triangular9_triangular_avm_read@20000000
    // out out_unnamed_triangular9_triangular_avm_write@20000000
    // out out_unnamed_triangular9_triangular_avm_writedata@20000000
    triangular_i_llvm_fpga_mem_unnamed_9_triangular0 thei_llvm_fpga_mem_unnamed_triangular9_triangular3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V0),
        .in_unnamed_triangular9_triangular_avm_readdata(in_unnamed_triangular9_triangular_avm_readdata),
        .in_unnamed_triangular9_triangular_avm_readdatavalid(in_unnamed_triangular9_triangular_avm_readdatavalid),
        .in_unnamed_triangular9_triangular_avm_waitrequest(in_unnamed_triangular9_triangular_avm_waitrequest),
        .in_unnamed_triangular9_triangular_avm_writeack(in_unnamed_triangular9_triangular_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_valid),
        .out_unnamed_triangular9_triangular_avm_address(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_address),
        .out_unnamed_triangular9_triangular_avm_burstcount(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_burstcount),
        .out_unnamed_triangular9_triangular_avm_byteenable(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_byteenable),
        .out_unnamed_triangular9_triangular_avm_enable(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_enable),
        .out_unnamed_triangular9_triangular_avm_read(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_read),
        .out_unnamed_triangular9_triangular_avm_write(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_write),
        .out_unnamed_triangular9_triangular_avm_writedata(i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x(STALLENABLE,74)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed1 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed2 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x(BLACKBOX,30)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@4
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit155_0_tpl@4
    // out out_c0_exit155_1_tpl@4
    // out out_c0_exit155_2_tpl@4
    // out out_c0_exit155_3_tpl@4
    // out out_c0_exit155_4_tpl@4
    // out out_c0_exit155_5_tpl@4
    // out out_c0_exit155_6_tpl@4
    // out out_c0_exit155_7_tpl@4
    // out out_c0_exit155_8_tpl@4
    // out out_c0_exit155_9_tpl@4
    triangular_i_sfc_s_c0_in_for_body6_s_c0_enter14715_triangular1 thei_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_backStall),
        .in_i_valid(SE_out_triangular_B5_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni5_0_tpl(GND_q),
        .in_c0_eni5_1_tpl(bubble_select_triangular_B5_merge_reg_aunroll_x_b),
        .in_c0_eni5_2_tpl(bubble_select_triangular_B5_merge_reg_aunroll_x_e),
        .in_c0_eni5_3_tpl(bubble_select_triangular_B5_merge_reg_aunroll_x_f),
        .in_c0_eni5_4_tpl(bubble_select_triangular_B5_merge_reg_aunroll_x_d),
        .in_c0_eni5_5_tpl(bubble_select_triangular_B5_merge_reg_aunroll_x_c),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit155_0_tpl(),
        .out_c0_exit155_1_tpl(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_1_tpl),
        .out_c0_exit155_2_tpl(),
        .out_c0_exit155_3_tpl(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_3_tpl),
        .out_c0_exit155_4_tpl(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_4_tpl),
        .out_c0_exit155_5_tpl(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_5_tpl),
        .out_c0_exit155_6_tpl(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_6_tpl),
        .out_c0_exit155_7_tpl(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_7_tpl),
        .out_c0_exit155_8_tpl(i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_c0_exit155_8_tpl),
        .out_c0_exit155_9_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,6)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out = i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out = i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going71_triangular6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,18)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body6_triangulars_c0_enter14715_triangular1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,24)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,27)
    assign out_unnamed_triangular9_triangular_avm_address = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_address;
    assign out_unnamed_triangular9_triangular_avm_enable = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_enable;
    assign out_unnamed_triangular9_triangular_avm_read = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_read;
    assign out_unnamed_triangular9_triangular_avm_write = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_write;
    assign out_unnamed_triangular9_triangular_avm_writedata = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_writedata;
    assign out_unnamed_triangular9_triangular_avm_byteenable = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_byteenable;
    assign out_unnamed_triangular9_triangular_avm_burstcount = i_llvm_fpga_mem_unnamed_triangular9_triangular3_out_unnamed_triangular9_triangular_avm_burstcount;

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,65)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,66)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[97:0]);

    // sel_for_coalesced_delay_1(BITSELECT,43)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[96:96]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[97:97]);

    // dupName_0_sync_out_x(GPOUT,28)@37
    assign out_c0_exe3158 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe6 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe7 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe8 = sel_for_coalesced_delay_1_e;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,29)
    assign out_memdep_4_triangular_avm_address = i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_address;
    assign out_memdep_4_triangular_avm_enable = i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_enable;
    assign out_memdep_4_triangular_avm_read = i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_read;
    assign out_memdep_4_triangular_avm_write = i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_write;
    assign out_memdep_4_triangular_avm_writedata = i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_writedata;
    assign out_memdep_4_triangular_avm_byteenable = i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_byteenable;
    assign out_memdep_4_triangular_avm_burstcount = i_llvm_fpga_mem_memdep_4_triangular4_out_memdep_4_triangular_avm_burstcount;

endmodule
