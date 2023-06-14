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

// SystemVerilog created from bb_if_loop_3_B2_stall_region
// Created for function/kernel if_loop_3
// SystemVerilog created on Tue Jun 13 03:11:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module if_loop_3_bb_B2_stall_region (
    input wire [31:0] in_lm22_if_loop_3_avm_readdata,
    input wire [0:0] in_lm22_if_loop_3_avm_writeack,
    input wire [0:0] in_lm22_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm22_if_loop_3_avm_readdatavalid,
    output wire [31:0] out_lm1_if_loop_3_avm_address,
    output wire [0:0] out_lm1_if_loop_3_avm_enable,
    output wire [0:0] out_lm1_if_loop_3_avm_read,
    output wire [0:0] out_lm1_if_loop_3_avm_write,
    output wire [31:0] out_lm1_if_loop_3_avm_writedata,
    output wire [3:0] out_lm1_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm1_if_loop_3_avm_burstcount,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_lm22_if_loop_3_avm_address,
    output wire [0:0] out_lm22_if_loop_3_avm_enable,
    output wire [0:0] out_lm22_if_loop_3_avm_read,
    output wire [0:0] out_lm22_if_loop_3_avm_write,
    output wire [31:0] out_lm22_if_loop_3_avm_writedata,
    output wire [3:0] out_lm22_if_loop_3_avm_byteenable,
    output wire [0:0] out_lm22_if_loop_3_avm_burstcount,
    input wire [31:0] in_lm1_if_loop_3_avm_readdata,
    input wire [0:0] in_lm1_if_loop_3_avm_writeack,
    input wire [0:0] in_lm1_if_loop_3_avm_waitrequest,
    input wire [0:0] in_lm1_if_loop_3_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [0:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [32:0] in_intel_reserved_ffwd_3_0,
    output wire [31:0] out_intel_reserved_ffwd_4_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_intel_reserved_ffwd_4_0;
    wire [0:0] i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_o_valid;
    wire [0:0] if_loop_3_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] if_loop_3_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] if_loop_3_B2_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm1_if_loop_33_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm1_if_loop_33_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_address;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_enable;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_read;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_write;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_lm22_if_loop_34_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_34_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_lm22_if_loop_34_out_o_valid;
    wire [2:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_in;
    wire redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_in;
    wire redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_data_in;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_out;
    wire redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_out;
    wire redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [2:0] coalesced_delay_0_fifo_data_out;
    wire [132:0] bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_h;
    wire [0:0] bubble_join_if_loop_3_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_if_loop_3_B2_merge_reg_aunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm1_if_loop_33_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm1_if_loop_33_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_lm22_if_loop_34_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_lm22_if_loop_34_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_q;
    wire [0:0] bubble_select_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_b;
    wire [2:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [2:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V3;
    wire [0:0] SE_out_if_loop_3_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_if_loop_3_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_if_loop_3_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_and0;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_backStall;
    wire [0:0] SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;


    // join_for_coalesced_delay_0(BITJOIN,44)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,47)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V3;
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
        .DATA_WIDTH(3),
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

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,70)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,71)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[2:0]);

    // sel_for_coalesced_delay_0(BITSELECT,45)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[2:2]);

    // bubble_join_i_llvm_fpga_mem_lm22_if_loop_34(BITJOIN,60)
    assign bubble_join_i_llvm_fpga_mem_lm22_if_loop_34_q = i_llvm_fpga_mem_lm22_if_loop_34_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm22_if_loop_34(BITSELECT,61)
    assign bubble_select_i_llvm_fpga_mem_lm22_if_loop_34_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm22_if_loop_34_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_lm1_if_loop_33(BITJOIN,57)
    assign bubble_join_i_llvm_fpga_mem_lm1_if_loop_33_q = i_llvm_fpga_mem_lm1_if_loop_33_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_lm1_if_loop_33(BITSELECT,58)
    assign bubble_select_i_llvm_fpga_mem_lm1_if_loop_33_b = $unsigned(bubble_join_i_llvm_fpga_mem_lm1_if_loop_33_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x(BLACKBOX,7)@46
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@83
    // out out_intel_reserved_ffwd_4_0@20000000
    // out out_o_stall@20000000
    // out out_o_valid@83
    if_loop_3_i_sfc_s_c1_in_for_body_s_c1_enter_if_loop_36 thei_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x (
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(bubble_select_i_llvm_fpga_mem_lm1_if_loop_33_b),
        .in_c1_eni5_2_tpl(bubble_select_i_llvm_fpga_mem_lm22_if_loop_34_b),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni5_4_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni5_5_tpl(sel_for_coalesced_delay_0_b),
        .in_c0_exe2(sel_for_coalesced_delay_0_c),
        .in_c0_exe7(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit_0_tpl(),
        .out_intel_reserved_ffwd_4_0(i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_intel_reserved_ffwd_4_0),
        .out_o_stall(i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo(STALLENABLE,87)
    // Valid signal propagation
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_V0 = SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_backStall = in_stall_in | ~ (SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_and0 = redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_out;
    assign SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_wireValid = i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_o_valid & SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_and0;

    // redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo(STALLFIFO,46)
    assign redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V2;
    assign redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_in = SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_backStall;
    assign redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_g;
    assign redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_in[0];
    assign redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_in_bitsignaltemp = redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_in[0];
    assign redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_out[0] = redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_out_bitsignaltemp;
    assign redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_out[0] = redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(70),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo (
        .valid_in(redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_g),
        .valid_out(redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_lm22_if_loop_34(BLACKBOX,15)@14
    // in in_i_stall@20000000
    // out out_lm22_if_loop_3_avm_address@20000000
    // out out_lm22_if_loop_3_avm_burstcount@20000000
    // out out_lm22_if_loop_3_avm_byteenable@20000000
    // out out_lm22_if_loop_3_avm_enable@20000000
    // out out_lm22_if_loop_3_avm_read@20000000
    // out out_lm22_if_loop_3_avm_write@20000000
    // out out_lm22_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@46
    // out out_o_stall@20000000
    // out out_o_valid@46
    if_loop_3_i_llvm_fpga_mem_lm22_0 thei_llvm_fpga_mem_lm22_if_loop_34 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_e),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V1),
        .in_lm22_if_loop_3_avm_readdata(in_lm22_if_loop_3_avm_readdata),
        .in_lm22_if_loop_3_avm_readdatavalid(in_lm22_if_loop_3_avm_readdatavalid),
        .in_lm22_if_loop_3_avm_waitrequest(in_lm22_if_loop_3_avm_waitrequest),
        .in_lm22_if_loop_3_avm_writeack(in_lm22_if_loop_3_avm_writeack),
        .out_lm22_if_loop_3_avm_address(i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_address),
        .out_lm22_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_burstcount),
        .out_lm22_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_byteenable),
        .out_lm22_if_loop_3_avm_enable(i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_enable),
        .out_lm22_if_loop_3_avm_read(i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_read),
        .out_lm22_if_loop_3_avm_write(i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_write),
        .out_lm22_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm22_if_loop_34_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm22_if_loop_34_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm22_if_loop_34_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,82)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = if_loop_3_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,63)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,64)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // if_loop_3_B2_merge_reg_aunroll_x(BLACKBOX,8)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    if_loop_3_B2_merge_reg theif_loop_3_B2_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_if_loop_3_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(if_loop_3_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(if_loop_3_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(if_loop_3_B2_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_if_loop_3_B2_merge_reg_aunroll_x(STALLENABLE,77)
    // Valid signal propagation
    assign SE_out_if_loop_3_B2_merge_reg_aunroll_x_V0 = SE_out_if_loop_3_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_if_loop_3_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_o_stall | ~ (SE_out_if_loop_3_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_if_loop_3_B2_merge_reg_aunroll_x_wireValid = if_loop_3_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_if_loop_3_B2_merge_reg_aunroll_x(BITJOIN,53)
    assign bubble_join_if_loop_3_B2_merge_reg_aunroll_x_q = if_loop_3_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_if_loop_3_B2_merge_reg_aunroll_x(BITSELECT,54)
    assign bubble_select_if_loop_3_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_if_loop_3_B2_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x(BLACKBOX,6)@1
    // in in_i_stall@20000000
    // out out_c0_exit17_0_tpl@14
    // out out_c0_exit17_1_tpl@14
    // out out_c0_exit17_2_tpl@14
    // out out_c0_exit17_3_tpl@14
    // out out_c0_exit17_4_tpl@14
    // out out_c0_exit17_5_tpl@14
    // out out_c0_exit17_6_tpl@14
    // out out_c0_exit17_7_tpl@14
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@14
    // out out_pipeline_valid_out@20000000
    if_loop_3_i_sfc_s_c0_in_for_body_s_c0_enter152_if_loop_31 thei_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_if_loop_3_B2_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_backStall),
        .in_i_valid(SE_out_if_loop_3_B2_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit17_0_tpl(),
        .out_c0_exit17_1_tpl(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_1_tpl),
        .out_c0_exit17_2_tpl(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_2_tpl),
        .out_c0_exit17_3_tpl(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_3_tpl),
        .out_c0_exit17_4_tpl(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_4_tpl),
        .out_c0_exit17_5_tpl(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_5_tpl),
        .out_c0_exit17_6_tpl(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl),
        .out_c0_exit17_7_tpl(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_7_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x(STALLENABLE,73)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_lm1_if_loop_33_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_lm22_if_loop_34_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed2 = (~ (redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,89)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_lm22_if_loop_34_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_lm1_if_loop_33_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x(BITJOIN,49)
    assign bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q = {i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_7_tpl, i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl, i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_5_tpl, i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_4_tpl, i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_3_tpl, i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_2_tpl, i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x(BITSELECT,50)
    assign bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q[130:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_q[132:132]);

    // i_llvm_fpga_mem_lm1_if_loop_33(BLACKBOX,14)@14
    // in in_i_stall@20000000
    // out out_lm1_if_loop_3_avm_address@20000000
    // out out_lm1_if_loop_3_avm_burstcount@20000000
    // out out_lm1_if_loop_3_avm_byteenable@20000000
    // out out_lm1_if_loop_3_avm_enable@20000000
    // out out_lm1_if_loop_3_avm_read@20000000
    // out out_lm1_if_loop_3_avm_write@20000000
    // out out_lm1_if_loop_3_avm_writedata@20000000
    // out out_o_readdata@46
    // out out_o_stall@20000000
    // out out_o_valid@46
    if_loop_3_i_llvm_fpga_mem_lm1_0 thei_llvm_fpga_mem_lm1_if_loop_33 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_e),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_V0),
        .in_lm1_if_loop_3_avm_readdata(in_lm1_if_loop_3_avm_readdata),
        .in_lm1_if_loop_3_avm_readdatavalid(in_lm1_if_loop_3_avm_readdatavalid),
        .in_lm1_if_loop_3_avm_waitrequest(in_lm1_if_loop_3_avm_waitrequest),
        .in_lm1_if_loop_3_avm_writeack(in_lm1_if_loop_3_avm_writeack),
        .out_lm1_if_loop_3_avm_address(i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_address),
        .out_lm1_if_loop_3_avm_burstcount(i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_burstcount),
        .out_lm1_if_loop_3_avm_byteenable(i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_byteenable),
        .out_lm1_if_loop_3_avm_enable(i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_enable),
        .out_lm1_if_loop_3_avm_read(i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_read),
        .out_lm1_if_loop_3_avm_write(i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_write),
        .out_lm1_if_loop_3_avm_writedata(i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_writedata),
        .out_o_readdata(i_llvm_fpga_mem_lm1_if_loop_33_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_lm1_if_loop_33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_lm1_if_loop_33_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_lm1_if_loop_3_avm_address = i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_address;
    assign out_lm1_if_loop_3_avm_enable = i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_enable;
    assign out_lm1_if_loop_3_avm_read = i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_read;
    assign out_lm1_if_loop_3_avm_write = i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_write;
    assign out_lm1_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_writedata;
    assign out_lm1_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_byteenable;
    assign out_lm1_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm1_if_loop_33_out_lm1_if_loop_3_avm_burstcount;

    // bubble_join_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo(BITJOIN,67)
    assign bubble_join_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_q = redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_data_out;

    // bubble_select_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo(BITSELECT,68)
    assign bubble_select_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_b = $unsigned(bubble_join_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,4)@83
    assign out_c0_exe6 = bubble_select_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_b;
    assign out_valid_out = SE_out_redist2_i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_c0_exit17_6_tpl_69_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,5)
    assign out_lm22_if_loop_3_avm_address = i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_address;
    assign out_lm22_if_loop_3_avm_enable = i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_enable;
    assign out_lm22_if_loop_3_avm_read = i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_read;
    assign out_lm22_if_loop_3_avm_write = i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_write;
    assign out_lm22_if_loop_3_avm_writedata = i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_writedata;
    assign out_lm22_if_loop_3_avm_byteenable = i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_byteenable;
    assign out_lm22_if_loop_3_avm_burstcount = i_llvm_fpga_mem_lm22_if_loop_34_out_lm22_if_loop_3_avm_burstcount;

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out = i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out = i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_if_loop_36_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_if_loop_3s_c0_enter152_if_loop_31_aunroll_x_out_pipeline_valid_out;

    // regfree_osync(GPOUT,33)
    assign out_intel_reserved_ffwd_4_0 = i_sfc_s_c1_in_for_body_if_loop_3s_c1_enter_if_loop_36_aunroll_x_out_intel_reserved_ffwd_4_0;

    // sync_out(GPOUT,37)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
