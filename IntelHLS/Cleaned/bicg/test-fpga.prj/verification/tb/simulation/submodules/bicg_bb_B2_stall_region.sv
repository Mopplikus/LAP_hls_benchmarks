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

// SystemVerilog created from bb_bicg_B2_stall_region
// Created for function/kernel bicg
// SystemVerilog created on Tue Jun 13 02:00:07 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_bb_B2_stall_region (
    output wire [31:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [3:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [0:0] out_c0_exe155,
    output wire [0:0] out_c0_exe2,
    output wire [63:0] out_c1_exe1,
    output wire [31:0] out_c1_exe2,
    output wire [63:0] out_c1_exe3,
    output wire [0:0] out_memdep_phi5_pop11,
    output wire [0:0] out_memdep_phi7_pop12,
    output wire [0:0] out_memdep_phi_pop10,
    output wire [31:0] out_unnamed_bicg8,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out,
    input wire [0:0] in_feedback_in_10,
    input wire [0:0] in_feedback_in_11,
    input wire [0:0] in_feedback_in_12,
    output wire [0:0] out_feedback_stall_out_10,
    output wire [0:0] out_feedback_stall_out_11,
    output wire [0:0] out_feedback_stall_out_12,
    input wire [0:0] in_feedback_valid_in_10,
    input wire [0:0] in_feedback_valid_in_11,
    input wire [0:0] in_feedback_valid_in_12,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked29,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] bicg_B2_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] bicg_B2_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] bicg_B2_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_2_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_pipeline_valid_out;
    wire [63:0] i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_1_tpl;
    wire [31:0] i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_2_tpl;
    wire [63:0] i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_3_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_feedback_stall_out_11;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_feedback_stall_out_12;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_feedback_stall_out_10;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_valid_out;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [159:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [63:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_in;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_in;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_data_in;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_out;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_out;
    wire redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_data_out;
    reg [0:0] redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_q;
    reg [0:0] redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_q;
    reg [0:0] redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_q;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_in;
    wire redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_in;
    wire redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_data_in;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_out;
    wire redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_out;
    wire redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_data_out;
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
    wire [159:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [159:0] coalesced_delay_1_fifo_data_out;
    wire [0:0] bubble_join_bicg_B2_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_bicg_B2_merge_reg_aunroll_x_b;
    wire [2:0] bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_c;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_d;
    wire [159:0] bubble_join_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_q;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_b;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_d;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg9_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg9_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_q;
    wire [0:0] bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_b;
    wire [0:0] bubble_join_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_q;
    wire [0:0] bubble_select_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [159:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [159:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_bicg_B2_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_bicg_B2_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_bicg_B2_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_V1;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_and0;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_backStall;
    wire [0:0] SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_R_v_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_v_s_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_s_tv_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backEN;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backStall;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_V0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_R_v_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_v_s_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_s_tv_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backEN;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backStall;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_V0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_0;
    reg [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_1;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_v_s_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_1;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backEN;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_or0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backStall;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V0;
    wire [0:0] SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V1;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireStall;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_StallValid;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_toReg0;
    reg [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_toReg1;
    reg [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg1;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed1;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_or0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_backStall;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_V0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and2;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and3;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and4;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_i_valid;
    reg [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid;
    reg [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_data0;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backStall;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V;
    wire [0:0] SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_D0;


    // redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo(STALLFIFO,63)
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_V1;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_b;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_in_bitsignaltemp = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_in[0];
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_in_bitsignaltemp = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_in[0];
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_out[0] = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_out[0] = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo (
        .valid_in(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_b),
        .valid_out(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo(BITJOIN,103)
    assign bubble_join_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_q = redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_data_out;

    // bubble_select_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo(BITSELECT,104)
    assign bubble_select_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_b = $unsigned(bubble_join_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_q[0:0]);

    // i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5(BLACKBOX,23)@36
    // in in_stall_in@20000000
    // out out_data_out@37
    // out out_feedback_stall_out_12@20000000
    // out out_stall_out@20000000
    // out out_valid_out@37
    bicg_i_llvm_fpga_pop_i1_memdep_phi7_pop12_0 thei_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_b),
        .in_feedback_in_12(in_feedback_in_12),
        .in_feedback_valid_in_12(in_feedback_valid_in_12),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_1_fifo_backStall),
        .in_valid_in(SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_data_out),
        .out_feedback_stall_out_12(i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_feedback_stall_out_12),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4(BLACKBOX,22)@36
    // in in_stall_in@20000000
    // out out_data_out@37
    // out out_feedback_stall_out_11@20000000
    // out out_stall_out@20000000
    // out out_valid_out@37
    bicg_i_llvm_fpga_pop_i1_memdep_phi5_pop11_0 thei_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4 (
        .in_data_in(GND_q),
        .in_dir(bubble_select_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_b),
        .in_feedback_in_11(in_feedback_in_11),
        .in_feedback_valid_in_11(in_feedback_valid_in_11),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_coalesced_delay_1_fifo_backStall),
        .in_valid_in(SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_data_out),
        .out_feedback_stall_out_11(i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_feedback_stall_out_11),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo(STALLENABLE,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg0 <= '0;
            SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg0 <= SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_toReg0;
            // Successor 1
            SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg1 <= SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_stall_out) & SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireValid) | SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg0;
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_stall_out) & SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireValid) | SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg1;
    // Consuming
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_StallValid = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_backStall & SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireValid;
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_toReg0 = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_StallValid & SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed0;
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_toReg1 = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_StallValid & SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_or0 = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed0;
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireStall = ~ (SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_consumed1 & SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_or0);
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_backStall = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_V0 = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireValid & ~ (SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg0);
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_V1 = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireValid & ~ (SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_wireValid = redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_out;

    // redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo(STALLFIFO,67)
    assign redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_in = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V1;
    assign redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_in = SE_out_redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_backStall;
    assign redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_data_in = redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_q;
    assign redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_in_bitsignaltemp = redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_in[0];
    assign redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_in_bitsignaltemp = redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_in[0];
    assign redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_out[0] = redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_out_bitsignaltemp;
    assign redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_out[0] = redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo (
        .valid_in(redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_in_bitsignaltemp),
        .data_in(redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_q),
        .valid_out(redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,58)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_b};

    // coalesced_delay_0_fifo(STALLFIFO,68)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V2;
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

    // i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x(BLACKBOX,6)@1
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@5
    // out out_c1_exit_1_tpl@5
    // out out_c1_exit_2_tpl@5
    // out out_c1_exit_3_tpl@5
    // out out_o_stall@20000000
    // out out_o_valid@5
    bicg_i_sfc_s_c1_in_for_body_s_c1_enter_bicg7 thei_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x (
        .in_c1_eni2_0_tpl(GND_q),
        .in_c1_eni2_1_tpl(bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_d),
        .in_c1_eni2_2_tpl(bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_b),
        .in_c0_exe155(bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_b),
        .in_c0_exe3(bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_d),
        .in_i_stall(SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V1),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_1_tpl),
        .out_c1_exit_2_tpl(i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_2_tpl),
        .out_c1_exit_3_tpl(i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_3_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,125)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = bicg_B2_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,96)
    assign bubble_join_stall_entry_q = in_forked29;

    // bubble_select_stall_entry(BITSELECT,97)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // bicg_B2_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    bicg_B2_merge_reg thebicg_B2_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .in_stall_in(SE_out_bicg_B2_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(bicg_B2_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_stall_out(bicg_B2_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(bicg_B2_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_bicg_B2_merge_reg_aunroll_x(STALLENABLE,112)
    // Valid signal propagation
    assign SE_out_bicg_B2_merge_reg_aunroll_x_V0 = SE_out_bicg_B2_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_bicg_B2_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_o_stall | ~ (SE_out_bicg_B2_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bicg_B2_merge_reg_aunroll_x_wireValid = bicg_B2_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_bicg_B2_merge_reg_aunroll_x(BITJOIN,71)
    assign bubble_join_bicg_B2_merge_reg_aunroll_x_q = bicg_B2_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_bicg_B2_merge_reg_aunroll_x(BITSELECT,72)
    assign bubble_select_bicg_B2_merge_reg_aunroll_x_b = $unsigned(bubble_join_bicg_B2_merge_reg_aunroll_x_q[0:0]);

    // i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x(BLACKBOX,5)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_pipeline_valid_out@20000000
    bicg_i_sfc_s_c0_in_for_body_s_c0_enter528_bicg1 thei_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x (
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_bicg_B2_merge_reg_aunroll_x_b),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_backStall),
        .in_i_valid(SE_out_bicg_B2_merge_reg_aunroll_x_V0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit54_0_tpl(),
        .out_c0_exit54_1_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_1_tpl),
        .out_c0_exit54_2_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_2_tpl),
        .out_c0_exit54_3_tpl(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x(STALLENABLE,114)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed0 = (~ (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backStall) & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed1 = (~ (i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg2;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed2;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_or1);
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_o_valid;

    // SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0(STALLENABLE,133)
    // Valid signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_V0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_s_tv_0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backStall & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backEN = ~ (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_v_s_0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backEN & SE_out_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_V0;
    // Backward Stall generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backStall = ~ (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_R_v_0 & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_s_tv_0;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_v_s_0;
            end

        end
    end

    // bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x(BITJOIN,75)
    assign bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_q = {i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_2_tpl, i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x(BITSELECT,76)
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_q[2:2]);

    // redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0(REG,64)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_q <= $unsigned(bubble_select_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_d);
        end
    end

    // redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1(REG,65)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_q <= $unsigned(redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_q);
        end
    end

    // SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1(STALLENABLE,134)
    // Valid signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_V0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_s_tv_0 = SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backStall & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backEN = ~ (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_v_s_0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backEN & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_0_V0;
    // Backward Stall generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backStall = ~ (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_R_v_0 & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_s_tv_0;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_v_s_0;
            end

        end
    end

    // SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2(STALLREG,200)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid <= 1'b0;
            SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backStall & (SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid | SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_i_valid);

            if (SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_data0 <= $unsigned(redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_i_valid = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_V0;
    // Stall signal propagation
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backStall = SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid | ~ (SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_i_valid);

    // Valid
    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V = SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid : SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_i_valid;

    assign SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_D0 = SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_valid == 1'b1 ? SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_r_data0 : redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_1_q;

    // SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2(STALLENABLE,135)
    // Valid signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_0;
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V1 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_1;
    // Stall signal propagation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_stall_out & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_0;
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_1 = redist7_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_35_fifo_stall_out & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_1;
    // Backward Enable generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_or0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_0;
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backEN = ~ (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_1 | SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_v_s_0 = SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backEN & SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V;
    // Backward Stall generation
    assign SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backStall = ~ (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_0 <= 1'b0;
            SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_0 & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_0;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_0 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_v_s_0;
            end

            if (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backEN == 1'b0)
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_1 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_1 & SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_s_tv_1;
            end
            else
            begin
                SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_R_v_1 <= SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_v_s_0;
            end

        end
    end

    // redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2(REG,66)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_backEN == 1'b1)
        begin
            redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_q <= $unsigned(SR_SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_D0);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3(BLACKBOX,24)@4
    // in in_stall_in@20000000
    // out out_data_out@5
    // out out_feedback_stall_out_10@20000000
    // out out_stall_out@20000000
    // out out_valid_out@5
    bicg_i_llvm_fpga_pop_i1_memdep_phi_pop10_0 thei_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3 (
        .in_data_in(GND_q),
        .in_dir(redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_q),
        .in_feedback_in_10(in_feedback_in_10),
        .in_feedback_valid_in_10(in_feedback_valid_in_10),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_backStall),
        .in_valid_in(SE_redist6_i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_c0_exit54_3_tpl_3_2_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out),
        .out_feedback_stall_out_10(i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_feedback_stall_out_10),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3(STALLENABLE,124)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed0 = (~ (SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed1 = (~ (redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_wireValid = i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_valid_out;

    // join_for_coalesced_delay_1(BITJOIN,61)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_c, bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_d, bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_b};

    // coalesced_delay_1_fifo(STALLFIFO,69)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_V1;
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
        .DATA_WIDTH(160),
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

    // SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x(STALLENABLE,116)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed0 = (~ (SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_backStall) & SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed1 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireValid) | SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg1;
    // Consuming
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_StallValid = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_backStall & SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_toReg0 = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_toReg1 = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_StallValid & SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed1;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_or0 = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_consumed1 & SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_or0);
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_backStall = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_V0 = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_V1 = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_wireValid = i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_o_valid;

    // SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9(STALLENABLE,117)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_V0 = SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_backStall = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_stall | ~ (SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_and0 = SE_out_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_V0;
    assign SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_V0 & SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_and0;

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,141)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_and1 = coalesced_delay_0_fifo_valid_out & SE_out_coalesced_delay_1_fifo_and0;
    assign SE_out_coalesced_delay_1_fifo_and2 = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_valid_out & SE_out_coalesced_delay_1_fifo_and1;
    assign SE_out_coalesced_delay_1_fifo_and3 = i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_valid_out & SE_out_coalesced_delay_1_fifo_and2;
    assign SE_out_coalesced_delay_1_fifo_and4 = i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_valid_out & SE_out_coalesced_delay_1_fifo_and3;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_valid & SE_out_coalesced_delay_1_fifo_and4;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3(BITJOIN,93)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_q = i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3(BITSELECT,94)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_q[0:0]);

    // bubble_join_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x(BITJOIN,78)
    assign bubble_join_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_q = {i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_3_tpl, i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_2_tpl, i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_out_c1_exit_1_tpl};

    // bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x(BITSELECT,79)
    assign bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_q[63:0]);
    assign bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_q[95:64]);
    assign bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_q[159:96]);

    // i_llvm_fpga_mem_unnamed_bicg8_bicg9(BLACKBOX,21)@5
    // in in_i_stall@20000000
    // out out_o_readdata@37
    // out out_o_stall@20000000
    // out out_o_valid@37
    // out out_unnamed_bicg8_bicg_avm_address@20000000
    // out out_unnamed_bicg8_bicg_avm_burstcount@20000000
    // out out_unnamed_bicg8_bicg_avm_byteenable@20000000
    // out out_unnamed_bicg8_bicg_avm_enable@20000000
    // out out_unnamed_bicg8_bicg_avm_read@20000000
    // out out_unnamed_bicg8_bicg_avm_write@20000000
    // out out_unnamed_bicg8_bicg_avm_writedata@20000000
    bicg_i_llvm_fpga_mem_unnamed_8_bicg0 thei_llvm_fpga_mem_unnamed_bicg8_bicg9 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c1_in_for_body_bicgs_c1_enter_bicg7_aunroll_x_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_b),
        .in_i_predicate(GND_q),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_in_i_llvm_fpga_mem_unnamed_bicg8_bicg9_V0),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_valid),
        .out_unnamed_bicg8_bicg_avm_address(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_unnamed_bicg8_bicg_avm_address = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_address;
    assign out_unnamed_bicg8_bicg_avm_enable = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_enable;
    assign out_unnamed_bicg8_bicg_avm_read = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_read;
    assign out_unnamed_bicg8_bicg_avm_write = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_write;
    assign out_unnamed_bicg8_bicg_avm_writedata = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_writedata;
    assign out_unnamed_bicg8_bicg_avm_byteenable = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_byteenable;
    assign out_unnamed_bicg8_bicg_avm_burstcount = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_unnamed_bicg8_bicg_avm_burstcount;

    // bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg9(BITJOIN,81)
    assign bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg9_q = i_llvm_fpga_mem_unnamed_bicg8_bicg9_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg9(BITSELECT,82)
    assign bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg9_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_bicg8_bicg9_q[31:0]);

    // bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo(BITJOIN,100)
    assign bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_q = redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_data_out;

    // bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo(BITSELECT,101)
    assign bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_b = $unsigned(bubble_join_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5(BITJOIN,89)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_q = i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5(BITSELECT,90)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_q[0:0]);

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4(BITJOIN,85)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_q = i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4(BITSELECT,86)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_q[0:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,109)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,110)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[159:0]);

    // sel_for_coalesced_delay_1(BITSELECT,62)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,106)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,107)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,59)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // dupName_0_sync_out_x(GPOUT,4)@37
    assign out_c0_exe155 = sel_for_coalesced_delay_0_b;
    assign out_c0_exe2 = sel_for_coalesced_delay_0_c;
    assign out_c1_exe1 = sel_for_coalesced_delay_1_b;
    assign out_c1_exe2 = sel_for_coalesced_delay_1_d;
    assign out_c1_exe3 = sel_for_coalesced_delay_1_c;
    assign out_memdep_phi5_pop11 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_b;
    assign out_memdep_phi7_pop12 = bubble_select_i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_b;
    assign out_memdep_phi_pop10 = bubble_select_redist0_i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_data_out_32_fifo_b;
    assign out_unnamed_bicg8 = bubble_select_i_llvm_fpga_mem_unnamed_bicg8_bicg9_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // ext_sig_sync_out(GPOUT,11)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out = i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out = i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going22_bicg2_exiting_stall_out;

    // feedback_stall_out_10_sync(GPOUT,15)
    assign out_feedback_stall_out_10 = i_llvm_fpga_pop_i1_memdep_phi_pop10_bicg3_out_feedback_stall_out_10;

    // feedback_stall_out_11_sync(GPOUT,16)
    assign out_feedback_stall_out_11 = i_llvm_fpga_pop_i1_memdep_phi5_pop11_bicg4_out_feedback_stall_out_11;

    // feedback_stall_out_12_sync(GPOUT,17)
    assign out_feedback_stall_out_12 = i_llvm_fpga_pop_i1_memdep_phi7_pop12_bicg5_out_feedback_stall_out_12;

    // pipeline_valid_out_sync(GPOUT,40)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_bicgs_c0_enter528_bicg1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,47)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
