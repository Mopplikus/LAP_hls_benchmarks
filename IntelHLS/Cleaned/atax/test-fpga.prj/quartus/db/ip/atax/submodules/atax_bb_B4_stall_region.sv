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

// SystemVerilog created from bb_atax_B4_stall_region
// Created for function/kernel atax
// SystemVerilog created on Tue Jun 13 01:54:01 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B4_stall_region (
    input wire [31:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [31:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [63:0] out_c0_exe10,
    output wire [0:0] out_c0_exe11,
    output wire [0:0] out_c0_exe12,
    output wire [63:0] out_c0_exe399,
    output wire [31:0] out_c0_exe4,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_c0_exe9,
    output wire [31:0] out_c1_exe1107,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [31:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    input wire [31:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1262,
    input wire [0:0] in_forked20,
    input wire [63:0] in_mPtr_bitcast_index8859,
    input wire [0:0] in_memdep_phi3_pop1364,
    input wire [0:0] in_memdep_phi_pop1260,
    input wire [31:0] in_mul_add1461,
    input wire [0:0] in_notcmp3563,
    input wire [31:0] in_unnamed_atax9,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [63:0] atax_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] atax_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] atax_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B4_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_3_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_7_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_9_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_13_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_c1_exit106_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_writedata;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [164:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [63:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
    wire [0:0] sel_for_coalesced_delay_1_i;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [33:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] coalesced_delay_1_fifo_valid_in;
    wire coalesced_delay_1_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_in;
    wire coalesced_delay_1_fifo_stall_in_bitsignaltemp;
    wire [164:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [164:0] coalesced_delay_1_fifo_data_out;
    wire [132:0] bubble_join_atax_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B4_merge_reg_aunroll_x_b;
    wire [63:0] bubble_select_atax_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_atax_B4_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_atax_B4_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_atax_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_atax_B4_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_atax_B4_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_atax_B4_merge_reg_aunroll_x_i;
    wire [327:0] bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_d;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_h;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_j;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_n;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_o;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax4_b;
    wire [132:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [63:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [33:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [164:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [164:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V3;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;


    // join_for_coalesced_delay_1(BITJOIN,51)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_e, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_d};

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,77)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,78)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[33:0]);

    // sel_for_coalesced_delay_0(BITSELECT,49)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax3(BITJOIN,67)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax3_q = i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax3(BITSELECT,68)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax12_atax3_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax4(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax4_q = i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax4(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_atax13_atax4_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x(BLACKBOX,8)@38
    // in in_i_stall@20000000
    // out out_c1_exit106_0_tpl@43
    // out out_c1_exit106_1_tpl@43
    // out out_o_stall@20000000
    // out out_o_valid@43
    atax_i_sfc_s_c1_in_for_body3_s_c1_enter102_atax6 thei_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x (
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax13_atax4_b),
        .in_c1_eni5_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_atax12_atax3_b),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni5_4_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni5_5_tpl(sel_for_coalesced_delay_0_c),
        .in_c0_exe13(sel_for_coalesced_delay_0_d),
        .in_c0_exe298(sel_for_coalesced_delay_0_c),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit106_0_tpl(),
        .out_c1_exit106_1_tpl(i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_c1_exit106_1_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,101)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,54)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(38),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(165),
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

    // join_for_coalesced_delay_0(BITJOIN,48)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_o};

    // coalesced_delay_0_fifo(STALLFIFO,53)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V2;
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
        .DATA_WIDTH(34),
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

    // i_llvm_fpga_mem_unnamed_atax13_atax4(BLACKBOX,15)@6
    // in in_i_stall@20000000
    // out out_o_readdata@38
    // out out_o_stall@20000000
    // out out_o_valid@38
    // out out_unnamed_atax13_atax_avm_address@20000000
    // out out_unnamed_atax13_atax_avm_burstcount@20000000
    // out out_unnamed_atax13_atax_avm_byteenable@20000000
    // out out_unnamed_atax13_atax_avm_enable@20000000
    // out out_unnamed_atax13_atax_avm_read@20000000
    // out out_unnamed_atax13_atax_avm_write@20000000
    // out out_unnamed_atax13_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_13_atax0 thei_llvm_fpga_mem_unnamed_atax13_atax4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_i),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_h),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V1),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_valid),
        .out_unnamed_atax13_atax_avm_address(i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,92)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,73)
    assign bubble_join_stall_entry_q = {in_unnamed_atax9, in_notcmp3563, in_mul_add1461, in_memdep_phi_pop1260, in_memdep_phi3_pop1364, in_mPtr_bitcast_index8859, in_forked20, in_exitcond1262};

    // bubble_select_stall_entry(BITSELECT,74)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[65:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[66:66]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[67:67]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[99:68]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[100:100]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[132:101]);

    // atax_B4_merge_reg_aunroll_x(BLACKBOX,2)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_data_out_6_tpl@1
    // out out_data_out_7_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    atax_B4_merge_reg theatax_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_d),
        .in_data_in_2_tpl(bubble_select_stall_entry_f),
        .in_data_in_3_tpl(bubble_select_stall_entry_i),
        .in_data_in_4_tpl(bubble_select_stall_entry_g),
        .in_data_in_5_tpl(bubble_select_stall_entry_b),
        .in_data_in_6_tpl(bubble_select_stall_entry_h),
        .in_data_in_7_tpl(bubble_select_stall_entry_e),
        .in_stall_in(SE_out_atax_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(atax_B4_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_stall_out(atax_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_atax_B4_merge_reg_aunroll_x(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_atax_B4_merge_reg_aunroll_x_V0 = SE_out_atax_B4_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B4_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_o_stall | ~ (SE_out_atax_B4_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B4_merge_reg_aunroll_x_wireValid = atax_B4_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_atax_B4_merge_reg_aunroll_x(BITJOIN,56)
    assign bubble_join_atax_B4_merge_reg_aunroll_x_q = {atax_B4_merge_reg_aunroll_x_out_data_out_7_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_6_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_5_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_4_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_3_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_2_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_1_tpl, atax_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_atax_B4_merge_reg_aunroll_x(BITSELECT,57)
    assign bubble_select_atax_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[64:1]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[97:66]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[129:98]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[130:130]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_h = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[131:131]);
    assign bubble_select_atax_B4_merge_reg_aunroll_x_i = $unsigned(bubble_join_atax_B4_merge_reg_aunroll_x_q[132:132]);

    // i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x(BLACKBOX,7)@1
    // in in_i_stall@20000000
    // out out_c0_exit96_0_tpl@6
    // out out_c0_exit96_1_tpl@6
    // out out_c0_exit96_2_tpl@6
    // out out_c0_exit96_3_tpl@6
    // out out_c0_exit96_4_tpl@6
    // out out_c0_exit96_5_tpl@6
    // out out_c0_exit96_6_tpl@6
    // out out_c0_exit96_7_tpl@6
    // out out_c0_exit96_8_tpl@6
    // out out_c0_exit96_9_tpl@6
    // out out_c0_exit96_10_tpl@6
    // out out_c0_exit96_11_tpl@6
    // out out_c0_exit96_12_tpl@6
    // out out_c0_exit96_13_tpl@6
    // out out_c0_exit96_14_tpl@6
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@6
    // out out_pipeline_valid_out@20000000
    atax_i_sfc_s_c0_in_for_body3_s_c0_enter9116_atax1 thei_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x (
        .in_c0_eni8_0_tpl(GND_q),
        .in_c0_eni8_1_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_b),
        .in_c0_eni8_2_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_f),
        .in_c0_eni8_3_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_d),
        .in_c0_eni8_4_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_i),
        .in_c0_eni8_5_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_c),
        .in_c0_eni8_6_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_g),
        .in_c0_eni8_7_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_h),
        .in_c0_eni8_8_tpl(bubble_select_atax_B4_merge_reg_aunroll_x_e),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_backStall),
        .in_i_valid(SE_out_atax_B4_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit96_0_tpl(),
        .out_c0_exit96_1_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_1_tpl),
        .out_c0_exit96_2_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_2_tpl),
        .out_c0_exit96_3_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_3_tpl),
        .out_c0_exit96_4_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_4_tpl),
        .out_c0_exit96_5_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_5_tpl),
        .out_c0_exit96_6_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_6_tpl),
        .out_c0_exit96_7_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_7_tpl),
        .out_c0_exit96_8_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_8_tpl),
        .out_c0_exit96_9_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_9_tpl),
        .out_c0_exit96_10_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_10_tpl),
        .out_c0_exit96_11_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_11_tpl),
        .out_c0_exit96_12_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_12_tpl),
        .out_c0_exit96_13_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_13_tpl),
        .out_c0_exit96_14_tpl(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_14_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x(STALLENABLE,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,99)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_unnamed_atax13_atax4_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x(BITJOIN,60)
    assign bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q = {i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_14_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_13_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_12_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_11_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_10_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_9_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_8_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_7_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_6_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_5_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_4_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_3_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_2_tpl, i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_c0_exit96_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x(BITSELECT,61)
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[97:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[161:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[162:162]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[227:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[228:228]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[292:229]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[293:293]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[294:294]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[295:295]);
    assign bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_q[327:296]);

    // i_llvm_fpga_mem_unnamed_atax12_atax3(BLACKBOX,14)@6
    // in in_i_stall@20000000
    // out out_o_readdata@38
    // out out_o_stall@20000000
    // out out_o_valid@38
    // out out_unnamed_atax12_atax_avm_address@20000000
    // out out_unnamed_atax12_atax_avm_burstcount@20000000
    // out out_unnamed_atax12_atax_avm_byteenable@20000000
    // out out_unnamed_atax12_atax_avm_enable@20000000
    // out out_unnamed_atax12_atax_avm_read@20000000
    // out out_unnamed_atax12_atax_avm_write@20000000
    // out out_unnamed_atax12_atax_avm_writedata@20000000
    atax_i_llvm_fpga_mem_unnamed_12_atax0 thei_llvm_fpga_mem_unnamed_atax12_atax3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_f),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_h),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_V0),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_atax12_atax3_out_o_valid),
        .out_unnamed_atax12_atax_avm_address(i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_unnamed_atax12_atax_avm_address = i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_address;
    assign out_unnamed_atax12_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_enable;
    assign out_unnamed_atax12_atax_avm_read = i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_read;
    assign out_unnamed_atax12_atax_avm_write = i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_write;
    assign out_unnamed_atax12_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_writedata;
    assign out_unnamed_atax12_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_byteenable;
    assign out_unnamed_atax12_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax12_atax3_out_unnamed_atax12_atax_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x(BITJOIN,63)
    assign bubble_join_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_q = i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_out_c1_exit106_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x(BITSELECT,64)
    assign bubble_select_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,80)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,81)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[164:0]);

    // sel_for_coalesced_delay_1(BITSELECT,52)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[159:128]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[160:160]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[161:161]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[162:162]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[163:163]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[164:164]);

    // dupName_0_sync_out_x(GPOUT,5)@43
    assign out_c0_exe10 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe11 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe12 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe399 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe4 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe6 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe7 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe9 = sel_for_coalesced_delay_1_g;
    assign out_c1_exe1107 = bubble_select_i_sfc_s_c1_in_for_body3_ataxs_c1_enter102_atax6_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_atax13_atax_avm_address = i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_address;
    assign out_unnamed_atax13_atax_avm_enable = i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_enable;
    assign out_unnamed_atax13_atax_avm_read = i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_read;
    assign out_unnamed_atax13_atax_avm_write = i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_write;
    assign out_unnamed_atax13_atax_avm_writedata = i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_writedata;
    assign out_unnamed_atax13_atax_avm_byteenable = i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_byteenable;
    assign out_unnamed_atax13_atax_avm_burstcount = i_llvm_fpga_mem_unnamed_atax13_atax4_out_unnamed_atax13_atax_avm_burstcount;

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out = i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out = i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going23_atax6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body3_ataxs_c0_enter9116_atax1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,34)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
