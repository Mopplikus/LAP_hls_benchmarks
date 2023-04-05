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

// SystemVerilog created from bb_fir_B3_stall_region
// Created for function/kernel fir
// SystemVerilog created on Wed Apr  5 16:46:39 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module fir_bb_B3_stall_region (
    input wire [63:0] in_unnamed_fir5_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir5_fir_avm_writeack,
    input wire [0:0] in_unnamed_fir5_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir5_fir_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked10,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_fir6_fir_avm_readdata,
    input wire [0:0] in_unnamed_fir6_fir_avm_writeack,
    input wire [0:0] in_unnamed_fir6_fir_avm_waitrequest,
    input wire [0:0] in_unnamed_fir6_fir_avm_readdatavalid,
    output wire [63:0] out_unnamed_fir5_fir_avm_address,
    output wire [0:0] out_unnamed_fir5_fir_avm_enable,
    output wire [0:0] out_unnamed_fir5_fir_avm_read,
    output wire [0:0] out_unnamed_fir5_fir_avm_write,
    output wire [63:0] out_unnamed_fir5_fir_avm_writedata,
    output wire [7:0] out_unnamed_fir5_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir5_fir_avm_burstcount,
    output wire [0:0] out_c0_exe6,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_memdep_fir_avm_readdata,
    input wire [0:0] in_memdep_fir_avm_writeack,
    input wire [0:0] in_memdep_fir_avm_waitrequest,
    input wire [0:0] in_memdep_fir_avm_readdatavalid,
    output wire [63:0] out_unnamed_fir6_fir_avm_address,
    output wire [0:0] out_unnamed_fir6_fir_avm_enable,
    output wire [0:0] out_unnamed_fir6_fir_avm_read,
    output wire [0:0] out_unnamed_fir6_fir_avm_write,
    output wire [63:0] out_unnamed_fir6_fir_avm_writedata,
    output wire [7:0] out_unnamed_fir6_fir_avm_byteenable,
    output wire [0:0] out_unnamed_fir6_fir_avm_burstcount,
    input wire [31:0] in_memdep_1_fir_avm_readdata,
    input wire [0:0] in_memdep_1_fir_avm_writeack,
    input wire [0:0] in_memdep_1_fir_avm_waitrequest,
    input wire [0:0] in_memdep_1_fir_avm_readdatavalid,
    output wire [31:0] out_memdep_fir_avm_address,
    output wire [0:0] out_memdep_fir_avm_enable,
    output wire [0:0] out_memdep_fir_avm_read,
    output wire [0:0] out_memdep_fir_avm_write,
    output wire [31:0] out_memdep_fir_avm_writedata,
    output wire [3:0] out_memdep_fir_avm_byteenable,
    output wire [0:0] out_memdep_fir_avm_burstcount,
    output wire [31:0] out_memdep_1_fir_avm_address,
    output wire [0:0] out_memdep_1_fir_avm_enable,
    output wire [0:0] out_memdep_1_fir_avm_read,
    output wire [0:0] out_memdep_1_fir_avm_write,
    output wire [31:0] out_memdep_1_fir_avm_writedata,
    output wire [3:0] out_memdep_1_fir_avm_byteenable,
    output wire [0:0] out_memdep_1_fir_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_fir_d_i_local_pmem_q;
    wire [63:0] c_fir_idx_local_pmem_q;
    wire [1:0] i_arrayidx41_fir3_vt_const_1_q;
    wire [63:0] i_arrayidx41_fir3_vt_join_q;
    wire [61:0] i_arrayidx41_fir3_vt_select_63_b;
    wire [63:0] i_arrayidx82_fir4_vt_join_q;
    wire [61:0] i_arrayidx82_fir4_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_1_fir8_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_1_fir8_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_fir7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_fir7_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_writedata;
    wire [0:0] fir_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] fir_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] fir_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [12:0] i_arrayidx41_fir0_add_x_a;
    wire [12:0] i_arrayidx41_fir0_add_x_b;
    logic [12:0] i_arrayidx41_fir0_add_x_o;
    wire [12:0] i_arrayidx41_fir0_add_x_q;
    wire [63:0] i_arrayidx41_fir0_append_upper_bits_x_q;
    wire [9:0] i_arrayidx41_fir0_narrow_x_b;
    wire [11:0] i_arrayidx41_fir0_shift_join_x_q;
    wire [11:0] i_arrayidx41_fir0_dupName_0_trunc_sel_x_b;
    wire [11:0] i_arrayidx41_fir0_dupName_2_trunc_sel_x_b;
    wire [12:0] i_arrayidx82_fir0_add_x_a;
    wire [12:0] i_arrayidx82_fir0_add_x_b;
    logic [12:0] i_arrayidx82_fir0_add_x_o;
    wire [12:0] i_arrayidx82_fir0_add_x_q;
    wire [63:0] i_arrayidx82_fir0_append_upper_bits_x_q;
    wire [11:0] i_arrayidx82_fir0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_5_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl;
    wire [51:0] i_arrayidx41_fir0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx41_fir0_upper_bits_x_merged_bit_select_c;
    wire [51:0] i_arrayidx82_fir0_upper_bits_x_merged_bit_select_b;
    wire [11:0] i_arrayidx82_fir0_upper_bits_x_merged_bit_select_c;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_in;
    wire redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_in;
    wire redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_data_in;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_out;
    wire redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_out;
    wire redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_data_out;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_in;
    wire redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_in;
    wire redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_data_in;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_out;
    wire redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_out;
    wire redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_data_out;
    wire [0:0] redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_in;
    wire redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_in;
    wire redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [9:0] redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_data_in;
    wire [0:0] redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_out;
    wire redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_out;
    wire redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [9:0] redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_fir5_fir5_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_fir5_fir5_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_fir6_fir6_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_fir6_fir6_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_fir_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_fir_B3_merge_reg_aunroll_x_b;
    wire [193:0] bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_e;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_f;
    wire [0:0] bubble_join_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_q;
    wire [0:0] bubble_select_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_b;
    wire [0:0] bubble_join_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_q;
    wire [0:0] bubble_select_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_b;
    wire [9:0] bubble_join_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_q;
    wire [9:0] bubble_select_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_fir_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_fir_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_fir_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V4;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_or0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_V0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_V1;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_wireValid;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_and0;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_and1;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_backStall;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_V0;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireStall;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_StallValid;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_toReg0;
    reg [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg0;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed0;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_toReg1;
    reg [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg1;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed1;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_or0;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_V1;


    // bubble_join_stall_entry(BITJOIN,92)
    assign bubble_join_stall_entry_q = in_forked10;

    // bubble_select_stall_entry(BITSELECT,93)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,123)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = fir_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // fir_B3_merge_reg_aunroll_x(BLACKBOX,49)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    fir_B3_merge_reg thefir_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_fir_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(fir_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(fir_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(fir_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_fir_B3_merge_reg_aunroll_x(BITJOIN,96)
    assign bubble_join_fir_B3_merge_reg_aunroll_x_q = fir_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_fir_B3_merge_reg_aunroll_x(BITSELECT,97)
    assign bubble_select_fir_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_fir_B3_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_fir_B3_merge_reg_aunroll_x(STALLENABLE,126)
    // Valid signal propagation
    assign SE_out_fir_B3_merge_reg_aunroll_x_V0 = SE_out_fir_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_fir_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_o_stall | ~ (SE_out_fir_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_fir_B3_merge_reg_aunroll_x_wireValid = fir_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x(BITJOIN,100)
    assign bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_q = {i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl, i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_5_tpl, i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_4_tpl, i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_3_tpl, i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x(BITSELECT,101)
    assign bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_q[193:193]);

    // i_arrayidx41_fir0_dupName_0_trunc_sel_x(BITSELECT,60)@2
    assign i_arrayidx41_fir0_dupName_0_trunc_sel_x_b = bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_c[11:0];

    // i_arrayidx41_fir0_narrow_x(BITSELECT,53)@2
    assign i_arrayidx41_fir0_narrow_x_b = i_arrayidx41_fir0_dupName_0_trunc_sel_x_b[9:0];

    // bubble_join_i_llvm_fpga_mem_unnamed_fir6_fir6(BITJOIN,89)
    assign bubble_join_i_llvm_fpga_mem_unnamed_fir6_fir6_q = i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_fir6_fir6(BITSELECT,90)
    assign bubble_select_i_llvm_fpga_mem_unnamed_fir6_fir6_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_fir6_fir6_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_fir5_fir5(BITJOIN,86)
    assign bubble_join_i_llvm_fpga_mem_unnamed_fir5_fir5_q = i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_fir5_fir5(BITSELECT,87)
    assign bubble_select_i_llvm_fpga_mem_unnamed_fir5_fir5_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_fir5_fir5_q[31:0]);

    // c_fir_d_i_local_pmem(CONSTANT,2)
    assign c_fir_d_i_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx41_fir0_upper_bits_x_merged_bit_select(BITSELECT,75)@34
    assign i_arrayidx41_fir0_upper_bits_x_merged_bit_select_b = c_fir_d_i_local_pmem_q[63:12];
    assign i_arrayidx41_fir0_upper_bits_x_merged_bit_select_c = c_fir_d_i_local_pmem_q[11:0];

    // bubble_join_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo(BITJOIN,109)
    assign bubble_join_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_q = redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_data_out;

    // bubble_select_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo(BITSELECT,110)
    assign bubble_select_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_b = $unsigned(bubble_join_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_q[9:0]);

    // i_arrayidx41_fir0_shift_join_x(BITJOIN,54)@34
    assign i_arrayidx41_fir0_shift_join_x_q = {bubble_select_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_b, i_arrayidx41_fir3_vt_const_1_q};

    // i_arrayidx41_fir0_add_x(ADD,50)@34
    assign i_arrayidx41_fir0_add_x_a = {1'b0, i_arrayidx41_fir0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx41_fir0_add_x_b = {1'b0, i_arrayidx41_fir0_shift_join_x_q};
    assign i_arrayidx41_fir0_add_x_o = $unsigned(i_arrayidx41_fir0_add_x_a) + $unsigned(i_arrayidx41_fir0_add_x_b);
    assign i_arrayidx41_fir0_add_x_q = i_arrayidx41_fir0_add_x_o[12:0];

    // i_arrayidx41_fir0_dupName_2_trunc_sel_x(BITSELECT,61)@34
    assign i_arrayidx41_fir0_dupName_2_trunc_sel_x_b = i_arrayidx41_fir0_add_x_q[11:0];

    // i_arrayidx41_fir0_append_upper_bits_x(BITJOIN,51)@34
    assign i_arrayidx41_fir0_append_upper_bits_x_q = {i_arrayidx41_fir0_upper_bits_x_merged_bit_select_b, i_arrayidx41_fir0_dupName_2_trunc_sel_x_b};

    // i_arrayidx41_fir3_vt_select_63(BITSELECT,11)@34
    assign i_arrayidx41_fir3_vt_select_63_b = i_arrayidx41_fir0_append_upper_bits_x_q[63:2];

    // i_arrayidx41_fir3_vt_const_1(CONSTANT,9)
    assign i_arrayidx41_fir3_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx41_fir3_vt_join(BITJOIN,10)@34
    assign i_arrayidx41_fir3_vt_join_q = {i_arrayidx41_fir3_vt_select_63_b, i_arrayidx41_fir3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_fir7(BLACKBOX,16)@34
    // in in_i_stall@20000000
    // out out_memdep_fir_avm_address@20000000
    // out out_memdep_fir_avm_burstcount@20000000
    // out out_memdep_fir_avm_byteenable@20000000
    // out out_memdep_fir_avm_enable@20000000
    // out out_memdep_fir_avm_read@20000000
    // out out_memdep_fir_avm_write@20000000
    // out out_memdep_fir_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    fir_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_fir7 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx41_fir3_vt_join_q),
        .in_i_predicate(bubble_select_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_b),
        .in_i_stall(SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_fir5_fir5_b),
        .in_memdep_fir_avm_readdata(in_memdep_fir_avm_readdata),
        .in_memdep_fir_avm_readdatavalid(in_memdep_fir_avm_readdatavalid),
        .in_memdep_fir_avm_waitrequest(in_memdep_fir_avm_waitrequest),
        .in_memdep_fir_avm_writeack(in_memdep_fir_avm_writeack),
        .out_memdep_fir_avm_address(i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_address),
        .out_memdep_fir_avm_burstcount(i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_burstcount),
        .out_memdep_fir_avm_byteenable(i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_byteenable),
        .out_memdep_fir_avm_enable(i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_enable),
        .out_memdep_fir_avm_read(i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_read),
        .out_memdep_fir_avm_write(i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_write),
        .out_memdep_fir_avm_writedata(i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_fir7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_fir7_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo(STALLENABLE,143)
    // Valid signal propagation
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_V0 = SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_backStall = in_stall_in | ~ (SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_and0 = redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_out;
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_and1 = i_llvm_fpga_mem_memdep_fir7_out_o_valid & SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_and0;
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_wireValid = i_llvm_fpga_mem_memdep_1_fir8_out_o_valid & SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_and1;

    // bubble_join_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo(BITJOIN,103)
    assign bubble_join_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_q = redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_data_out;

    // bubble_select_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo(BITSELECT,104)
    assign bubble_select_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_b = $unsigned(bubble_join_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_q[0:0]);

    // c_fir_idx_local_pmem(CONSTANT,3)
    assign c_fir_idx_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx82_fir0_upper_bits_x_merged_bit_select(BITSELECT,76)@34
    assign i_arrayidx82_fir0_upper_bits_x_merged_bit_select_b = c_fir_idx_local_pmem_q[63:12];
    assign i_arrayidx82_fir0_upper_bits_x_merged_bit_select_c = c_fir_idx_local_pmem_q[11:0];

    // i_arrayidx82_fir0_add_x(ADD,62)@34
    assign i_arrayidx82_fir0_add_x_a = {1'b0, i_arrayidx82_fir0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx82_fir0_add_x_b = {1'b0, i_arrayidx41_fir0_shift_join_x_q};
    assign i_arrayidx82_fir0_add_x_o = $unsigned(i_arrayidx82_fir0_add_x_a) + $unsigned(i_arrayidx82_fir0_add_x_b);
    assign i_arrayidx82_fir0_add_x_q = i_arrayidx82_fir0_add_x_o[12:0];

    // i_arrayidx82_fir0_dupName_2_trunc_sel_x(BITSELECT,73)@34
    assign i_arrayidx82_fir0_dupName_2_trunc_sel_x_b = i_arrayidx82_fir0_add_x_q[11:0];

    // i_arrayidx82_fir0_append_upper_bits_x(BITJOIN,63)@34
    assign i_arrayidx82_fir0_append_upper_bits_x_q = {i_arrayidx82_fir0_upper_bits_x_merged_bit_select_b, i_arrayidx82_fir0_dupName_2_trunc_sel_x_b};

    // i_arrayidx82_fir4_vt_select_63(BITSELECT,14)@34
    assign i_arrayidx82_fir4_vt_select_63_b = i_arrayidx82_fir0_append_upper_bits_x_q[63:2];

    // i_arrayidx82_fir4_vt_join(BITJOIN,13)@34
    assign i_arrayidx82_fir4_vt_join_q = {i_arrayidx82_fir4_vt_select_63_b, i_arrayidx41_fir3_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_1_fir8(BLACKBOX,15)@34
    // in in_i_stall@20000000
    // out out_memdep_1_fir_avm_address@20000000
    // out out_memdep_1_fir_avm_burstcount@20000000
    // out out_memdep_1_fir_avm_byteenable@20000000
    // out out_memdep_1_fir_avm_enable@20000000
    // out out_memdep_1_fir_avm_read@20000000
    // out out_memdep_1_fir_avm_write@20000000
    // out out_memdep_1_fir_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    fir_i_llvm_fpga_mem_memdep_1_0 thei_llvm_fpga_mem_memdep_1_fir8 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx82_fir4_vt_join_q),
        .in_i_predicate(bubble_select_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_b),
        .in_i_stall(SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_fir6_fir6_b),
        .in_memdep_1_fir_avm_readdata(in_memdep_1_fir_avm_readdata),
        .in_memdep_1_fir_avm_readdatavalid(in_memdep_1_fir_avm_readdatavalid),
        .in_memdep_1_fir_avm_waitrequest(in_memdep_1_fir_avm_waitrequest),
        .in_memdep_1_fir_avm_writeack(in_memdep_1_fir_avm_writeack),
        .out_memdep_1_fir_avm_address(i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_address),
        .out_memdep_1_fir_avm_burstcount(i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_burstcount),
        .out_memdep_1_fir_avm_byteenable(i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_byteenable),
        .out_memdep_1_fir_avm_enable(i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_enable),
        .out_memdep_1_fir_avm_read(i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_read),
        .out_memdep_1_fir_avm_write(i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_write),
        .out_memdep_1_fir_avm_writedata(i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_1_fir8_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_1_fir8_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo(STALLENABLE,141)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg0 <= '0;
            SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg0 <= SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg1 <= SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_backStall) & SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireValid) | SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg0;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_backStall) & SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireValid) | SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_StallValid = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_backStall & SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireValid;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_toReg0 = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_StallValid & SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_toReg1 = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_StallValid & SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_or0 = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireStall = ~ (SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_consumed1 & SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_or0);
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_backStall = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_V0 = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg0);
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_V1 = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_wireValid = redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6(STALLENABLE,122)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_V0 = SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_backStall = i_llvm_fpga_mem_memdep_1_fir8_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_and0 = i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_and1 = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_wireValid = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5(STALLENABLE,120)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_V0 = SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_backStall = i_llvm_fpga_mem_memdep_fir7_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_and0 = i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_and1 = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_wireValid = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_and1;

    // SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo(STALLENABLE,145)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg0 <= '0;
            SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg0 <= SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_toReg0;
            // Successor 1
            SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg1 <= SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_backStall) & SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireValid) | SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg0;
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_backStall) & SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireValid) | SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg1;
    // Consuming
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_StallValid = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_backStall & SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireValid;
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_toReg0 = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_StallValid & SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_toReg1 = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_StallValid & SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_or0 = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireStall = ~ (SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_consumed1 & SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_or0);
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_backStall = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_V0 = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg0);
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_V1 = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_wireValid = redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_out;

    // redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo(STALLFIFO,82)
    assign redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V4;
    assign redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_in = SE_out_redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_backStall;
    assign redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_data_in = i_arrayidx41_fir0_narrow_x_b;
    assign redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_in_bitsignaltemp = redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_in[0];
    assign redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_in_bitsignaltemp = redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_in[0];
    assign redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_out[0] = redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_out[0] = redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(10),
        .IMPL("ram")
    ) theredist2_i_arrayidx41_fir0_narrow_x_b_32_fifo (
        .valid_in(redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx41_fir0_narrow_x_b),
        .valid_out(redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo(STALLFIFO,81)
    assign redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V3;
    assign redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_in = SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_backStall;
    assign redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_f;
    assign redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_in[0];
    assign redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_in[0];
    assign redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_out[0] = redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_out_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_out[0] = redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo (
        .valid_in(redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_f),
        .valid_out(redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo(STALLFIFO,80)
    assign redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V2;
    assign redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_in = SE_out_redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_backStall;
    assign redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_b;
    assign redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_in_bitsignaltemp = redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_in[0];
    assign redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_in_bitsignaltemp = redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_in[0];
    assign redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_out[0] = redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_out[0] = redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo (
        .valid_in(redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_b),
        .valid_out(redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_fir6_fir6(BLACKBOX,18)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_fir6_fir_avm_address@20000000
    // out out_unnamed_fir6_fir_avm_burstcount@20000000
    // out out_unnamed_fir6_fir_avm_byteenable@20000000
    // out out_unnamed_fir6_fir_avm_enable@20000000
    // out out_unnamed_fir6_fir_avm_read@20000000
    // out out_unnamed_fir6_fir_avm_write@20000000
    // out out_unnamed_fir6_fir_avm_writedata@20000000
    fir_i_llvm_fpga_mem_unnamed_6_fir0 thei_llvm_fpga_mem_unnamed_fir6_fir6 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fir6_fir6_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V1),
        .in_unnamed_fir6_fir_avm_readdata(in_unnamed_fir6_fir_avm_readdata),
        .in_unnamed_fir6_fir_avm_readdatavalid(in_unnamed_fir6_fir_avm_readdatavalid),
        .in_unnamed_fir6_fir_avm_waitrequest(in_unnamed_fir6_fir_avm_waitrequest),
        .in_unnamed_fir6_fir_avm_writeack(in_unnamed_fir6_fir_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_valid),
        .out_unnamed_fir6_fir_avm_address(i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_address),
        .out_unnamed_fir6_fir_avm_burstcount(i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_burstcount),
        .out_unnamed_fir6_fir_avm_byteenable(i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_byteenable),
        .out_unnamed_fir6_fir_avm_enable(i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_enable),
        .out_unnamed_fir6_fir_avm_read(i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_read),
        .out_unnamed_fir6_fir_avm_write(i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_write),
        .out_unnamed_fir6_fir_avm_writedata(i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_fir5_fir5(BLACKBOX,17)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_fir5_fir_avm_address@20000000
    // out out_unnamed_fir5_fir_avm_burstcount@20000000
    // out out_unnamed_fir5_fir_avm_byteenable@20000000
    // out out_unnamed_fir5_fir_avm_enable@20000000
    // out out_unnamed_fir5_fir_avm_read@20000000
    // out out_unnamed_fir5_fir_avm_write@20000000
    // out out_unnamed_fir5_fir_avm_writedata@20000000
    fir_i_llvm_fpga_mem_unnamed_5_fir0 thei_llvm_fpga_mem_unnamed_fir5_fir5 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_fir5_fir5_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V0),
        .in_unnamed_fir5_fir_avm_readdata(in_unnamed_fir5_fir_avm_readdata),
        .in_unnamed_fir5_fir_avm_readdatavalid(in_unnamed_fir5_fir_avm_readdatavalid),
        .in_unnamed_fir5_fir_avm_waitrequest(in_unnamed_fir5_fir_avm_waitrequest),
        .in_unnamed_fir5_fir_avm_writeack(in_unnamed_fir5_fir_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_valid),
        .out_unnamed_fir5_fir_avm_address(i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_address),
        .out_unnamed_fir5_fir_avm_burstcount(i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_burstcount),
        .out_unnamed_fir5_fir_avm_byteenable(i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_byteenable),
        .out_unnamed_fir5_fir_avm_enable(i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_enable),
        .out_unnamed_fir5_fir_avm_read(i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_read),
        .out_unnamed_fir5_fir_avm_write(i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_write),
        .out_unnamed_fir5_fir_avm_writedata(i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x(STALLENABLE,137)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_fir5_fir5_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_fir6_fir6_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed2 = (~ (redist0_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl_32_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed3 = (~ (redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed4 = (~ (redist2_i_arrayidx41_fir0_narrow_x_b_32_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg4;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed4;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_or3);
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x(BLACKBOX,74)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit31_0_tpl@2
    // out out_c0_exit31_1_tpl@2
    // out out_c0_exit31_2_tpl@2
    // out out_c0_exit31_3_tpl@2
    // out out_c0_exit31_4_tpl@2
    // out out_c0_exit31_5_tpl@2
    // out out_c0_exit31_6_tpl@2
    fir_i_sfc_s_c0_in_for_body_s_c0_enter292_fir1 thei_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_backStall),
        .in_i_valid(SE_out_fir_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_fir_B3_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit31_0_tpl(),
        .out_c0_exit31_1_tpl(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_1_tpl),
        .out_c0_exit31_2_tpl(),
        .out_c0_exit31_3_tpl(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_3_tpl),
        .out_c0_exit31_4_tpl(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_4_tpl),
        .out_c0_exit31_5_tpl(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_5_tpl),
        .out_c0_exit31_6_tpl(i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out = i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out = i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going13_fir6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,32)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,39)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,42)
    assign out_unnamed_fir5_fir_avm_address = i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_address;
    assign out_unnamed_fir5_fir_avm_enable = i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_enable;
    assign out_unnamed_fir5_fir_avm_read = i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_read;
    assign out_unnamed_fir5_fir_avm_write = i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_write;
    assign out_unnamed_fir5_fir_avm_writedata = i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_writedata;
    assign out_unnamed_fir5_fir_avm_byteenable = i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_byteenable;
    assign out_unnamed_fir5_fir_avm_burstcount = i_llvm_fpga_mem_unnamed_fir5_fir5_out_unnamed_fir5_fir_avm_burstcount;

    // bubble_join_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo(BITJOIN,106)
    assign bubble_join_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_q = redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_data_out;

    // bubble_select_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo(BITSELECT,107)
    assign bubble_select_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_b = $unsigned(bubble_join_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,43)@35
    assign out_c0_exe6 = bubble_select_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_b;
    assign out_valid_out = SE_out_redist1_i_sfc_s_c0_in_for_body_firs_c0_enter292_fir1_aunroll_x_out_c0_exit31_6_tpl_33_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,45)
    assign out_unnamed_fir6_fir_avm_address = i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_address;
    assign out_unnamed_fir6_fir_avm_enable = i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_enable;
    assign out_unnamed_fir6_fir_avm_read = i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_read;
    assign out_unnamed_fir6_fir_avm_write = i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_write;
    assign out_unnamed_fir6_fir_avm_writedata = i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_writedata;
    assign out_unnamed_fir6_fir_avm_byteenable = i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_byteenable;
    assign out_unnamed_fir6_fir_avm_burstcount = i_llvm_fpga_mem_unnamed_fir6_fir6_out_unnamed_fir6_fir_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,47)
    assign out_memdep_fir_avm_address = i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_address;
    assign out_memdep_fir_avm_enable = i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_enable;
    assign out_memdep_fir_avm_read = i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_read;
    assign out_memdep_fir_avm_write = i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_write;
    assign out_memdep_fir_avm_writedata = i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_writedata;
    assign out_memdep_fir_avm_byteenable = i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_byteenable;
    assign out_memdep_fir_avm_burstcount = i_llvm_fpga_mem_memdep_fir7_out_memdep_fir_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,48)
    assign out_memdep_1_fir_avm_address = i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_address;
    assign out_memdep_1_fir_avm_enable = i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_enable;
    assign out_memdep_1_fir_avm_read = i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_read;
    assign out_memdep_1_fir_avm_write = i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_write;
    assign out_memdep_1_fir_avm_writedata = i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_writedata;
    assign out_memdep_1_fir_avm_byteenable = i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_byteenable;
    assign out_memdep_1_fir_avm_burstcount = i_llvm_fpga_mem_memdep_1_fir8_out_memdep_1_fir_avm_burstcount;

endmodule
