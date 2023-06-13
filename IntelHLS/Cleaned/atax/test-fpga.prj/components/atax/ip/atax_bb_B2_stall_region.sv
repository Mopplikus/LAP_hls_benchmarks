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

// SystemVerilog created from bb_atax_B2_stall_region
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:00 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B2_stall_region (
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [0:0] out_c0_exe189,
    output wire [0:0] out_c0_exe2,
    output wire [63:0] out_c1_exe1,
    output wire [31:0] out_c1_exe2,
    output wire [0:0] out_memdep_phi3_pop13,
    output wire [0:0] out_memdep_phi_pop12,
    output wire [31:0] out_unnamed_atax7,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_stall_out,
    input wire [0:0] in_feedback_in_12,
    input wire [0:0] in_feedback_in_13,
    output wire [0:0] out_feedback_stall_out_12,
    output wire [0:0] out_feedback_stall_out_13,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [0:0] in_feedback_valid_in_13,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked44,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] atax_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] atax_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_c1_exit_1_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_c1_exit_2_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_feedback_stall_out_13;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_valid_out;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [95:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_in;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_in;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_data_in;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_out;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_out;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_data_out;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_q;
    reg [0:0] redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_q;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_in;
    wire redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_in;
    wire redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_data_in;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_out;
    wire redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_out;
    wire redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [95:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [95:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] bubble_join_atax_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B2_merge_reg_aunroll_x_b;
    wire [2:0] bubble_join_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_d;
    wire [95:0] bubble_join_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_c;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax8_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax8_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_q;
    wire [0:0] bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_b;
    wire [0:0] bubble_join_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_q;
    wire [0:0] bubble_select_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [95:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [95:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_atax_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_R_v_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_R_v_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_V0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_0;
    reg [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_v_s_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backEN;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_or0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backStall;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V0;
    wire [0:0] SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V1;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_wireValid;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_backStall;
    wire [0:0] SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid;
    reg [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_data0;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V;
    wire [0:0] SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_D0;


    // redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo(STALLFIFO,55)
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_V1;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_b;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_in_bitsignaltemp = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_in[0];
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_in_bitsignaltemp = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_in[0];
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_out[0] = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_out[0] = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo (
        .valid_in(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_b),
        .valid_out(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo(BITJOIN,91)
    assign bubble_join_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_q = redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_data_out;

    // bubble_select_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo(BITSELECT,92)
    assign bubble_select_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_b = $unsigned(bubble_join_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4(BLACKBOX,19)@36
    // in in_stall_in@20000000
    // out out_data_out@37
    // out out_feedback_stall_out_13@20000000
    // out out_stall_out@20000000
    // out out_valid_out@37
    atax_i_llvm_fpga_pop_i1_memdep_phi3_pop13_0 thei_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_b),
        .in_feedback_in_13(in_feedback_in_13),
        .in_feedback_valid_in_13(in_feedback_valid_in_13),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_1_fifo_backStall),
        .in_valid_in(SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_data_out),
        .out_feedback_stall_out_13(i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_feedback_stall_out_13),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo(STALLENABLE,123)
    // Valid signal propagation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_V0 = SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_backStall = i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_stall_out | ~ (SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_wireValid = redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_out;

    // redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo(STALLFIFO,59)
    assign redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_in = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V1;
    assign redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_in = SE_out_redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_backStall;
    assign redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_data_in = redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_q;
    assign redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_in_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_in[0];
    assign redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_in_bitsignaltemp = redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_in[0];
    assign redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_out[0] = redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_out_bitsignaltemp;
    assign redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_out[0] = redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo (
        .valid_in(redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_in_bitsignaltemp),
        .stall_in(redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_in_bitsignaltemp),
        .data_in(redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_q),
        .valid_out(redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_valid_out_bitsignaltemp),
        .stall_out(redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_out_bitsignaltemp),
        .data_out(redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,50)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,60)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V2;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(37),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
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

    // i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x(BLACKBOX,6)@1
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@5
    // out out_c1_exit_1_tpl@5
    // out out_c1_exit_2_tpl@5
    // out out_o_stall@20000000
    // out out_o_valid@5
    atax_i_sfc_s_c1_in_for_body_s_c1_enter_atax6 thei_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x (
        .in_c1_eni2_0_tpl(GND_q),
        .in_c1_eni2_1_tpl(bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_d),
        .in_c1_eni2_2_tpl(bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_b),
        .in_c0_exe189(bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_b),
        .in_c0_exe3(bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_d),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V1),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_c1_exit_2_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,111)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,84)
    assign bubble_join_stall_entry_q = in_forked44;

    // bubble_select_stall_entry(BITSELECT,85)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // atax_B2_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_B2_merge_reg theatax_B2_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_atax_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(atax_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(atax_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B2_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B2_merge_reg_aunroll_x(STALLENABLE,100)
    // Valid signal propagation
    assign SE_out_atax_B2_merge_reg_aunroll_x_V0 = SE_out_atax_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B2_merge_reg_aunroll_x_wireValid = atax_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_atax_B2_merge_reg_aunroll_x(BITJOIN,63)
    assign bubble_join_atax_B2_merge_reg_aunroll_x_q = atax_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_atax_B2_merge_reg_aunroll_x(BITSELECT,64)
    assign bubble_select_atax_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B2_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x(BLACKBOX,5)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    atax_i_sfc_s_c0_in_for_body_s_c0_enter8615_atax1 thei_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_atax_B2_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B2_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit88_0_tpl(),
        .out_c0_exit88_1_tpl(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_1_tpl),
        .out_c0_exit88_2_tpl(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_2_tpl),
        .out_c0_exit88_3_tpl(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_stall_out(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_valid_out(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x(STALLENABLE,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed0 = (~ (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_o_valid;

    // SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0(STALLENABLE,119)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_V0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_s_tv_0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backStall & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backEN & SE_out_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x(BITJOIN,67)
    assign bubble_join_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_q = {i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl, i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_2_tpl, i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x(BITSELECT,68)
    assign bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_q[2:2]);

    // redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0(REG,56)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_d);
        end
    end

    // redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1(REG,57)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_q <= $unsigned(redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_q);
        end
    end

    // SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1(STALLENABLE,120)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_V0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_s_tv_0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backStall & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backEN & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_0_V0;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2(STALLREG,180)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backStall & (SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid | SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_i_valid);

            if (SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_data0 <= $unsigned(redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_i_valid = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backStall = SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid | ~ (SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V = SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid : SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_i_valid;

    assign SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_D0 = SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_r_data0 : redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_1_q;

    // SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2(STALLENABLE,121)
    // Valid signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V1 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_stall_out & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_0;
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_1 = redist6_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_35_fifo_stall_out & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_or0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_0;
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backEN = ~ (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_1 | SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_v_s_0 = SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backEN & SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backStall = ~ (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_0 & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_0 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_v_s_0;
            end

            if (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_1 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_1 & SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_R_v_1 <= SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_v_s_0;
            end

        end
    end

    // redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2(REG,58)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_backEN == 1'b1)
        begin
            redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_q <= $unsigned(SR_SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_D0);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3(BLACKBOX,20)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    atax_i_llvm_fpga_pop_i1_memdep_phi_pop12_0 thei_llvm_fpga_pop_i1_memdep_phi_pop12_atax3 (
        .in_data_in(GND_q),
        .in_dir(redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_q),
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_backStall),
        .in_valid_in(SE_redist5_i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_c0_exit88_3_tpl_3_2_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3(STALLENABLE,110)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed0 = (~ (SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed1 = (~ (redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_valid_out;

    // join_for_coalesced_delay_1(BITJOIN,53)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_c, bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_b};

    // coalesced_delay_1_fifo(STALLFIFO,61)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_V1;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(96),
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

    // SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x(STALLENABLE,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_backStall) & SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed1 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_wireValid = i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_o_valid;

    // SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8(STALLENABLE,105)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_V0 = SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_backStall = i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_and0 = SE_out_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_V0;
    assign SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_V0 & SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_and0;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,127)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = coalesced_delay_0_fifo_valid_out & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_valid_out & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_and3 = i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_valid_out & SE_out_coalesced_delay_1_fifo_and2;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_valid & SE_out_coalesced_delay_1_fifo_and3;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3(BITJOIN,81)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_q = i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3(BITSELECT,82)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_q[0:0]);

    // bubble_join_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x(BITJOIN,70)
    assign bubble_join_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_q = {i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x(BITSELECT,71)
    assign bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_q[95:64]);

    // i_llvm_fpga_mem_unnamed_atax7_atax8(BLACKBOX,18)@5
    // in in_i_stall@20000000
    // out out_o_readdata@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_unnamed_atax7_atax_avm_address@20000000
    // out out_unnamed_atax7_atax_avm_burstcount@20000000
    // out out_unnamed_atax7_atax_avm_byteenable@20000000
    // out out_unnamed_atax7_atax_avm_enable@20000000
    // out out_unnamed_atax7_atax_avm_read@20000000
    // out out_unnamed_atax7_atax_avm_write@20000000
    // out out_unnamed_atax7_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_7_atax0 thei_llvm_fpga_mem_unnamed_atax7_atax8 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_for_body_ataxs_c1_enter_atax6_aunroll_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unnamed_atax7_atax8_V0),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_valid),
        .out_unnamed_atax7_atax_avm_address(i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_unnamed_atax7_atax_avm_address = i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_address;
    assign out_unnamed_atax7_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_enable;
    assign out_unnamed_atax7_atax_avm_read = i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_read;
    assign out_unnamed_atax7_atax_avm_write = i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_write;
    assign out_unnamed_atax7_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_writedata;
    assign out_unnamed_atax7_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_byteenable;
    assign out_unnamed_atax7_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax7_atax8_out_unnamed_atax7_atax_avm_burstcount;

    // bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax8(BITJOIN,73)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax8_q = i_llvm_fpga_mem_unnamed_atax7_atax8_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax8(BITSELECT,74)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax8_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax7_atax8_q[31:0]);

    // bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo(BITJOIN,88)
    assign bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_q = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_data_out;

    // bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo(BITSELECT,89)
    assign bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_b = $unsigned(bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4(BITJOIN,77)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_q = i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4(BITSELECT,78)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,97)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,98)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[95:0]);

    // sel_for_coalesced_delay_1(BITSELECT,54)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,94)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,95)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,51)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,4)@37
    assign out_c0_exe189 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_c;
    assign out_c1_exe1 = sel_for_coalesced_delay_1_b;
    assign out_c1_exe2 = sel_for_coalesced_delay_1_c;
    assign out_memdep_phi3_pop13 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_b;
    assign out_memdep_phi_pop12 = bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_data_out_32_fifo_b;
    assign out_unnamed_atax7 = bubble_select_i_llvm_fpga_mem_unnamed_atax7_atax8_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // ext_sig_sync_out(GPOUT,11)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_valid_out = i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_stall_out = i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going37_atax2_exiting_stall_out;

    // feedback_stall_out_12_sync(GPOUT,14)
    assign out_feedback_stall_out_12 = i_llvm_fpga_pop_i1_memdep_phi_pop12_atax3_out_feedback_stall_out_12;

    // feedback_stall_out_13_sync(GPOUT,15)
    assign out_feedback_stall_out_13 = i_llvm_fpga_pop_i1_memdep_phi3_pop13_atax4_out_feedback_stall_out_13;

    // pipeline_valid_out_sync(GPOUT,34)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_ataxs_c0_enter8615_atax1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,40)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
