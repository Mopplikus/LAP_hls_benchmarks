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

// SystemVerilog created from bb_kernel_2mm_B11_stall_region
// Created for function/kernel kernel_2mm
// SystemVerilog created on Tue Jun 13 01:31:47 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_bb_B11_stall_region (
    input wire [31:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount,
    output wire [0:0] out_c0_exe5256,
    output wire [0:0] out_c0_exe6257,
    output wire [63:0] out_c0_exe7258,
    output wire [0:0] out_c0_exe8259,
    output wire [31:0] out_c1_exe1,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata,
    output wire [3:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount,
    input wire [31:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [31:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_4_0,
    input wire [63:0] in_intel_reserved_ffwd_5_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [63:0] in_arrayidx243147,
    input wire [0:0] in_forked52,
    input wire [31:0] in_i11_082_pop23108_pop35145,
    input wire [31:0] in_i11_082_pop23138,
    input wire [31:0] in_j16_081_pop34146,
    input wire [31:0] in_mul_add26110_pop36149,
    input wire [31:0] in_mul_add26141,
    input wire [0:0] in_notcmp67148,
    input wire [0:0] in_notcmp72112_pop37150,
    input wire [0:0] in_notcmp72144,
    input wire [31:0] in_unnamed_kernel_2mm12,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_4_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_6_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_8_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_c1_exit_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_o_valid;
    wire [0:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [31:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [63:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [31:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [0:0] kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] kernel_2mm_B11_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] kernel_2mm_B11_merge_reg_aunroll_x_out_valid_out;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;
    wire [33:0] join_for_coalesced_delay_0_q;
    wire [31:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [66:0] join_for_coalesced_delay_1_q;
    wire [63:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [0:0] sel_for_coalesced_delay_1_d;
    wire [0:0] sel_for_coalesced_delay_1_e;
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
    wire [66:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [66:0] coalesced_delay_1_fifo_data_out;
    wire [229:0] bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_g;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_i;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_k;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_b;
    wire [259:0] bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_f;
    wire [31:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_g;
    wire [63:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_h;
    wire [31:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_k;
    wire [0:0] bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_l;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_b;
    wire [259:0] bubble_join_stall_entry_q;
    wire [63:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [31:0] bubble_select_stall_entry_d;
    wire [31:0] bubble_select_stall_entry_e;
    wire [31:0] bubble_select_stall_entry_f;
    wire [31:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [0:0] bubble_select_stall_entry_i;
    wire [0:0] bubble_select_stall_entry_j;
    wire [0:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [33:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [33:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [66:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [66:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V3;
    wire [0:0] SE_out_kernel_2mm_B11_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_kernel_2mm_B11_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_kernel_2mm_B11_merge_reg_aunroll_x_V0;
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


    // join_for_coalesced_delay_1(BITJOIN,48)
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_g, bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_h};

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,74)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,75)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[33:0]);

    // sel_for_coalesced_delay_0(BITSELECT,46)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[31:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[32:32]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[33:33]);

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4(BITJOIN,67)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_q = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4(BITSELECT,68)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3(BITJOIN,64)
    assign bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_q = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3(BITSELECT,65)
    assign bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x(BLACKBOX,7)@42
    // in in_i_stall@20000000
    // out out_c1_exit_0_tpl@56
    // out out_c1_exit_1_tpl@56
    // out out_o_stall@20000000
    // out out_o_valid@56
    kernel_2mm_i_sfc_s_c1_in_for_body28_s_c1_enter_kernel_2mm6 thei_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x (
        .in_c1_eni5_0_tpl(GND_q),
        .in_c1_eni5_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_b),
        .in_c1_eni5_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_b),
        .in_c1_eni5_3_tpl(sel_for_coalesced_delay_0_b),
        .in_c1_eni5_4_tpl(sel_for_coalesced_delay_0_d),
        .in_c1_eni5_5_tpl(sel_for_coalesced_delay_0_c),
        .in_c0_exe2253(sel_for_coalesced_delay_0_c),
        .in_c0_exe9260(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .out_c1_exit_0_tpl(),
        .out_c1_exit_1_tpl(i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_c1_exit_1_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,98)
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_backStall = in_stall_in | ~ (SE_out_coalesced_delay_1_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,51)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V3;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(47),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(67),
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

    // join_for_coalesced_delay_0(BITJOIN,45)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_k};

    // coalesced_delay_0_fifo(STALLFIFO,50)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V2;
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

    // i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4(BLACKBOX,15)@10
    // in in_i_stall@20000000
    // out out_o_readdata@42
    // out out_o_stall@20000000
    // out out_o_valid@42
    // out out_unnamed_kernel_2mm16_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm16_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm16_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm16_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_16_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V1),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_valid),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,89)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = kernel_2mm_B11_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,70)
    assign bubble_join_stall_entry_q = {in_unnamed_kernel_2mm12, in_notcmp72144, in_notcmp72112_pop37150, in_notcmp67148, in_mul_add26141, in_mul_add26110_pop36149, in_j16_081_pop34146, in_i11_082_pop23138, in_i11_082_pop23108_pop35145, in_forked52, in_arrayidx243147};

    // bubble_select_stall_entry(BITSELECT,71)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[63:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[64:64]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[96:65]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[128:97]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[160:129]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[192:161]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[224:193]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[225:225]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[226:226]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[227:227]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[259:228]);

    // kernel_2mm_B11_merge_reg_aunroll_x(BLACKBOX,8)@0
    // in in_stall_in@20000000
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
    // out out_data_out_10_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    kernel_2mm_B11_merge_reg thekernel_2mm_B11_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_e),
        .in_data_in_2_tpl(bubble_select_stall_entry_h),
        .in_data_in_3_tpl(bubble_select_stall_entry_k),
        .in_data_in_4_tpl(bubble_select_stall_entry_d),
        .in_data_in_5_tpl(bubble_select_stall_entry_f),
        .in_data_in_6_tpl(bubble_select_stall_entry_b),
        .in_data_in_7_tpl(bubble_select_stall_entry_l),
        .in_data_in_8_tpl(bubble_select_stall_entry_i),
        .in_data_in_9_tpl(bubble_select_stall_entry_g),
        .in_data_in_10_tpl(bubble_select_stall_entry_j),
        .in_stall_in(SE_out_kernel_2mm_B11_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_stall_out(kernel_2mm_B11_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(kernel_2mm_B11_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_kernel_2mm_B11_merge_reg_aunroll_x(STALLENABLE,84)
    // Valid signal propagation
    assign SE_out_kernel_2mm_B11_merge_reg_aunroll_x_V0 = SE_out_kernel_2mm_B11_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_kernel_2mm_B11_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_o_stall | ~ (SE_out_kernel_2mm_B11_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_kernel_2mm_B11_merge_reg_aunroll_x_wireValid = kernel_2mm_B11_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_kernel_2mm_B11_merge_reg_aunroll_x(BITJOIN,60)
    assign bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q = {kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_10_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_9_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_8_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_7_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_6_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_5_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_4_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_3_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_2_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_1_tpl, kernel_2mm_B11_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_kernel_2mm_B11_merge_reg_aunroll_x(BITSELECT,61)
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_b = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_c = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_d = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_e = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[65:65]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_f = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[97:66]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_g = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[129:98]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_h = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[193:130]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_i = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[225:194]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_j = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[226:226]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_k = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[258:227]);
    assign bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_l = $unsigned(bubble_join_kernel_2mm_B11_merge_reg_aunroll_x_q[259:259]);

    // i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x(BLACKBOX,6)@1
    // in in_i_stall@20000000
    // out out_c0_exit251_0_tpl@10
    // out out_c0_exit251_1_tpl@10
    // out out_c0_exit251_2_tpl@10
    // out out_c0_exit251_3_tpl@10
    // out out_c0_exit251_4_tpl@10
    // out out_c0_exit251_5_tpl@10
    // out out_c0_exit251_6_tpl@10
    // out out_c0_exit251_7_tpl@10
    // out out_c0_exit251_8_tpl@10
    // out out_c0_exit251_9_tpl@10
    // out out_c0_exit251_10_tpl@10
    // out out_c0_exit251_11_tpl@10
    // out out_c0_exit251_12_tpl@10
    // out out_c0_exit251_13_tpl@10
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@10
    // out out_pipeline_valid_out@20000000
    kernel_2mm_i_sfc_s_c0_in_for_body28_s_c0_enter23523_kernel_2mm1 thei_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x (
        .in_c0_eni11_0_tpl(GND_q),
        .in_c0_eni11_1_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_b),
        .in_c0_eni11_2_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_k),
        .in_c0_eni11_3_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_g),
        .in_c0_eni11_4_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_f),
        .in_c0_eni11_5_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_l),
        .in_c0_eni11_6_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_h),
        .in_c0_eni11_7_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_j),
        .in_c0_eni11_8_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_c),
        .in_c0_eni11_9_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_d),
        .in_c0_eni11_10_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_e),
        .in_c0_eni11_11_tpl(bubble_select_kernel_2mm_B11_merge_reg_aunroll_x_i),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_backStall),
        .in_i_valid(SE_out_kernel_2mm_B11_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_4_0(in_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(in_intel_reserved_ffwd_5_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit251_0_tpl(),
        .out_c0_exit251_1_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_1_tpl),
        .out_c0_exit251_2_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_2_tpl),
        .out_c0_exit251_3_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_3_tpl),
        .out_c0_exit251_4_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_4_tpl),
        .out_c0_exit251_5_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_5_tpl),
        .out_c0_exit251_6_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_6_tpl),
        .out_c0_exit251_7_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_7_tpl),
        .out_c0_exit251_8_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_8_tpl),
        .out_c0_exit251_9_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_9_tpl),
        .out_c0_exit251_10_tpl(),
        .out_c0_exit251_11_tpl(),
        .out_c0_exit251_12_tpl(),
        .out_c0_exit251_13_tpl(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_13_tpl),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x(STALLENABLE,80)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,96)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x(BITJOIN,53)
    assign bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q = {i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_13_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_9_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_8_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_7_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_6_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_5_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_4_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_3_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_2_tpl, i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_c0_exit251_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x(BITSELECT,54)
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[129:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[130:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[131:131]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[195:132]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[196:196]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[197:197]);
    assign bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_q[229:198]);

    // i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3(BLACKBOX,14)@10
    // in in_i_stall@20000000
    // out out_o_readdata@42
    // out out_o_stall@20000000
    // out out_o_valid@42
    // out out_unnamed_kernel_2mm15_kernel_2mm_avm_address@20000000
    // out out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount@20000000
    // out out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable@20000000
    // out out_unnamed_kernel_2mm15_kernel_2mm_avm_enable@20000000
    // out out_unnamed_kernel_2mm15_kernel_2mm_avm_read@20000000
    // out out_unnamed_kernel_2mm15_kernel_2mm_avm_write@20000000
    // out out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata@20000000
    kernel_2mm_i_llvm_fpga_mem_unnamed_15_kernel_2mm0 thei_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_V0),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_o_valid),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,3)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm15_kernel_2mm3_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x(BITJOIN,56)
    assign bubble_join_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_q = i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_out_c1_exit_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x(BITSELECT,57)
    assign bubble_select_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,77)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,78)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[66:0]);

    // sel_for_coalesced_delay_1(BITSELECT,49)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[64:64]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[65:65]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[66:66]);

    // dupName_0_sync_out_x(GPOUT,4)@56
    assign out_c0_exe5256 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe6257 = sel_for_coalesced_delay_1_d;
    assign out_c0_exe7258 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe8259 = sel_for_coalesced_delay_1_e;
    assign out_c1_exe1 = bubble_select_i_sfc_s_c1_in_for_body28_kernel_2mms_c1_enter_kernel_2mm6_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,5)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_address = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_enable = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_read = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_write = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount = i_llvm_fpga_mem_unnamed_kernel_2mm16_kernel_2mm4_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out = i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out = i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going55_kernel_2mm6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body28_kernel_2mms_c0_enter23523_kernel_2mm1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,35)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
