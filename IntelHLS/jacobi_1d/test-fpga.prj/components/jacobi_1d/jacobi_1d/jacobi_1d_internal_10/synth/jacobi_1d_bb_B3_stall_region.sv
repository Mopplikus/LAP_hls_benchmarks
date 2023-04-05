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

// SystemVerilog created from bb_jacobi_1d_B3_stall_region
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:10 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B3_stall_region (
    input wire [63:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked47,
    input wire [0:0] in_valid_in,
    input wire [63:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid,
    output wire [63:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata,
    output wire [7:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount,
    output wire [0:0] out_c0_exe7,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid,
    output wire [63:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata,
    output wire [7:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount,
    input wire [31:0] in_memdep_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_jacobi_1d_avm_readdatavalid,
    output wire [63:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata,
    output wire [7:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount,
    input wire [31:0] in_memdep_2_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_memdep_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_jacobi_1d_avm_writedata,
    output wire [3:0] out_memdep_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_jacobi_1d_avm_burstcount,
    input wire [31:0] in_memdep_3_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_memdep_2_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_2_jacobi_1d_avm_writedata,
    output wire [3:0] out_memdep_2_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_burstcount,
    output wire [31:0] out_memdep_3_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_3_jacobi_1d_avm_writedata,
    output wire [3:0] out_memdep_3_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_burstcount,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [63:0] c_jacobi_1d_A_1_local_pmem_q;
    wire [63:0] c_jacobi_1d_A_2_local_pmem_q;
    wire [63:0] c_jacobi_1d_B_local_pmem_q;
    wire [1:0] i_arrayidx134_jacobi_1d5_vt_const_1_q;
    wire [63:0] i_arrayidx134_jacobi_1d5_vt_join_q;
    wire [61:0] i_arrayidx134_jacobi_1d5_vt_select_63_b;
    wire [63:0] i_arrayidx52_jacobi_1d3_vt_join_q;
    wire [61:0] i_arrayidx52_jacobi_1d3_vt_select_63_b;
    wire [63:0] i_arrayidx93_jacobi_1d4_vt_join_q;
    wire [61:0] i_arrayidx93_jacobi_1d4_vt_select_63_b;
    wire [31:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d9_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_valid;
    wire [63:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    wire [63:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    wire [9:0] i_arrayidx134_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx134_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx134_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx134_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx134_jacobi_1d0_append_upper_bits_x_q;
    wire [6:0] i_arrayidx134_jacobi_1d0_narrow_x_b;
    wire [8:0] i_arrayidx134_jacobi_1d0_shift_join_x_q;
    wire [8:0] i_arrayidx134_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [8:0] i_arrayidx134_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx52_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx52_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx52_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx52_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx52_jacobi_1d0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx52_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [9:0] i_arrayidx93_jacobi_1d0_add_x_a;
    wire [9:0] i_arrayidx93_jacobi_1d0_add_x_b;
    logic [9:0] i_arrayidx93_jacobi_1d0_add_x_o;
    wire [9:0] i_arrayidx93_jacobi_1d0_add_x_q;
    wire [63:0] i_arrayidx93_jacobi_1d0_append_upper_bits_x_q;
    wire [8:0] i_arrayidx93_jacobi_1d0_dupName_2_trunc_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_pipeline_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_4_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl;
    wire [0:0] jacobi_1d_B3_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] jacobi_1d_B3_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] jacobi_1d_B3_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [54:0] i_arrayidx52_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx52_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx93_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx93_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    wire [54:0] i_arrayidx134_jacobi_1d0_upper_bits_x_merged_bit_select_b;
    wire [8:0] i_arrayidx134_jacobi_1d0_upper_bits_x_merged_bit_select_c;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_in;
    wire redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_in;
    wire redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_data_in;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_out;
    wire redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_out;
    wire redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_data_out;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_in;
    wire redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_in;
    wire redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_data_in;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_out;
    wire redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_out;
    wire redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_data_out;
    wire [0:0] redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_in;
    wire redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_in;
    wire redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_in_bitsignaltemp;
    wire [6:0] redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_data_in;
    wire [0:0] redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_out;
    wire redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_out;
    wire redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    wire [6:0] redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_data_out;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [257:0] bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_b;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_e;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_f;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_g;
    wire [0:0] bubble_join_jacobi_1d_B3_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_jacobi_1d_B3_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_q;
    wire [0:0] bubble_select_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_b;
    wire [0:0] bubble_join_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_q;
    wire [0:0] bubble_select_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_b;
    wire [6:0] bubble_join_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_q;
    wire [6:0] bubble_select_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg4;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg5;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed5;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V4;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V5;
    wire [0:0] SE_out_jacobi_1d_B3_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_jacobi_1d_B3_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_jacobi_1d_B3_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireStall;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_StallValid;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg0;
    reg [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg1;
    reg [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg1;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed1;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg2;
    reg [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg2;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed2;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_or0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_or1;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_backStall;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V0;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V1;
    wire [0:0] SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V2;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_wireValid;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and0;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and1;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and2;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_backStall;
    wire [0:0] SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_V0;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireStall;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_StallValid;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg0;
    reg [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg0;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed0;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg1;
    reg [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg1;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed1;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg2;
    reg [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg2;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed2;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_or0;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_or1;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_backStall;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V0;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V1;
    wire [0:0] SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V2;


    // bubble_join_stall_entry(BITJOIN,124)
    assign bubble_join_stall_entry_q = in_forked47;

    // bubble_select_stall_entry(BITSELECT,125)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,161)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = jacobi_1d_B3_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // jacobi_1d_B3_merge_reg_aunroll_x(BLACKBOX,101)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    jacobi_1d_B3_merge_reg thejacobi_1d_B3_merge_reg_aunroll_x (
        .in_stall_in(SE_out_jacobi_1d_B3_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(jacobi_1d_B3_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(jacobi_1d_B3_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(jacobi_1d_B3_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_jacobi_1d_B3_merge_reg_aunroll_x(BITJOIN,131)
    assign bubble_join_jacobi_1d_B3_merge_reg_aunroll_x_q = jacobi_1d_B3_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_jacobi_1d_B3_merge_reg_aunroll_x(BITSELECT,132)
    assign bubble_select_jacobi_1d_B3_merge_reg_aunroll_x_b = $unsigned(bubble_join_jacobi_1d_B3_merge_reg_aunroll_x_q[0:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_jacobi_1d_B3_merge_reg_aunroll_x(STALLENABLE,178)
    // Valid signal propagation
    assign SE_out_jacobi_1d_B3_merge_reg_aunroll_x_V0 = SE_out_jacobi_1d_B3_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_jacobi_1d_B3_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_o_stall | ~ (SE_out_jacobi_1d_B3_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_jacobi_1d_B3_merge_reg_aunroll_x_wireValid = jacobi_1d_B3_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x(BITJOIN,128)
    assign bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q = {i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl, i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_6_tpl, i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_5_tpl, i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_4_tpl, i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_3_tpl, i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x(BITSELECT,129)
    assign bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q[64:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q[128:65]);
    assign bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q[192:129]);
    assign bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q[256:193]);
    assign bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_q[257:257]);

    // i_arrayidx134_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,74)@2
    assign i_arrayidx134_jacobi_1d0_dupName_0_trunc_sel_x_b = bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_c[8:0];

    // i_arrayidx134_jacobi_1d0_narrow_x(BITSELECT,67)@2
    assign i_arrayidx134_jacobi_1d0_narrow_x_b = i_arrayidx134_jacobi_1d0_dupName_0_trunc_sel_x_b[6:0];

    // bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8(BITJOIN,118)
    assign bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_q = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8(BITSELECT,119)
    assign bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7(BITJOIN,115)
    assign bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_q = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7(BITSELECT,116)
    assign bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_q[31:0]);

    // c_jacobi_1d_A_2_local_pmem(CONSTANT,4)
    assign c_jacobi_1d_A_2_local_pmem_q = $unsigned(64'b0100000001000001000000000000000000000000000000000000000000000000);

    // i_arrayidx93_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,103)@34
    assign i_arrayidx93_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_A_2_local_pmem_q[63:9];
    assign i_arrayidx93_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_A_2_local_pmem_q[8:0];

    // bubble_join_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo(BITJOIN,141)
    assign bubble_join_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_q = redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_data_out;

    // bubble_select_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo(BITSELECT,142)
    assign bubble_select_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_b = $unsigned(bubble_join_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_q[6:0]);

    // i_arrayidx134_jacobi_1d0_shift_join_x(BITJOIN,68)@34
    assign i_arrayidx134_jacobi_1d0_shift_join_x_q = {bubble_select_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_b, i_arrayidx134_jacobi_1d5_vt_const_1_q};

    // i_arrayidx93_jacobi_1d0_add_x(ADD,88)@34
    assign i_arrayidx93_jacobi_1d0_add_x_a = {1'b0, i_arrayidx93_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx93_jacobi_1d0_add_x_b = {1'b0, i_arrayidx134_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx93_jacobi_1d0_add_x_o = $unsigned(i_arrayidx93_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx93_jacobi_1d0_add_x_b);
    assign i_arrayidx93_jacobi_1d0_add_x_q = i_arrayidx93_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx93_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,99)@34
    assign i_arrayidx93_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx93_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx93_jacobi_1d0_append_upper_bits_x(BITJOIN,89)@34
    assign i_arrayidx93_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx93_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx93_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx93_jacobi_1d4_vt_select_63(BITSELECT,18)@34
    assign i_arrayidx93_jacobi_1d4_vt_select_63_b = i_arrayidx93_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx134_jacobi_1d5_vt_const_1(CONSTANT,10)
    assign i_arrayidx134_jacobi_1d5_vt_const_1_q = $unsigned(2'b00);

    // i_arrayidx93_jacobi_1d4_vt_join(BITJOIN,17)@34
    assign i_arrayidx93_jacobi_1d4_vt_join_q = {i_arrayidx93_jacobi_1d4_vt_select_63_b, i_arrayidx134_jacobi_1d5_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_2_jacobi_1d10(BLACKBOX,19)@34
    // in in_i_stall@20000000
    // out out_memdep_2_jacobi_1d_avm_address@20000000
    // out out_memdep_2_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_2_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_2_jacobi_1d_avm_enable@20000000
    // out out_memdep_2_jacobi_1d_avm_read@20000000
    // out out_memdep_2_jacobi_1d_avm_write@20000000
    // out out_memdep_2_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    jacobi_1d_i_llvm_fpga_mem_memdep_2_0 thei_llvm_fpga_mem_memdep_2_jacobi_1d10 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx93_jacobi_1d4_vt_join_q),
        .in_i_predicate(bubble_select_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_b),
        .in_i_stall(SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_b),
        .in_memdep_2_jacobi_1d_avm_readdata(in_memdep_2_jacobi_1d_avm_readdata),
        .in_memdep_2_jacobi_1d_avm_readdatavalid(in_memdep_2_jacobi_1d_avm_readdatavalid),
        .in_memdep_2_jacobi_1d_avm_waitrequest(in_memdep_2_jacobi_1d_avm_waitrequest),
        .in_memdep_2_jacobi_1d_avm_writeack(in_memdep_2_jacobi_1d_avm_writeack),
        .out_memdep_2_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_address),
        .out_memdep_2_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_burstcount),
        .out_memdep_2_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_byteenable),
        .out_memdep_2_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_enable),
        .out_memdep_2_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_read),
        .out_memdep_2_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_write),
        .out_memdep_2_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6(BITJOIN,121)
    assign bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_q = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6(BITSELECT,122)
    assign bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_q[31:0]);

    // c_jacobi_1d_A_1_local_pmem(CONSTANT,3)
    assign c_jacobi_1d_A_1_local_pmem_q = $unsigned(64'b0100000001000000000000000000000000000000000000000000000000000000);

    // i_arrayidx52_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,102)@34
    assign i_arrayidx52_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_A_1_local_pmem_q[63:9];
    assign i_arrayidx52_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_A_1_local_pmem_q[8:0];

    // i_arrayidx52_jacobi_1d0_add_x(ADD,76)@34
    assign i_arrayidx52_jacobi_1d0_add_x_a = {1'b0, i_arrayidx52_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx52_jacobi_1d0_add_x_b = {1'b0, i_arrayidx134_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx52_jacobi_1d0_add_x_o = $unsigned(i_arrayidx52_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx52_jacobi_1d0_add_x_b);
    assign i_arrayidx52_jacobi_1d0_add_x_q = i_arrayidx52_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx52_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,87)@34
    assign i_arrayidx52_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx52_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx52_jacobi_1d0_append_upper_bits_x(BITJOIN,77)@34
    assign i_arrayidx52_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx52_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx52_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx52_jacobi_1d3_vt_select_63(BITSELECT,15)@34
    assign i_arrayidx52_jacobi_1d3_vt_select_63_b = i_arrayidx52_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx52_jacobi_1d3_vt_join(BITJOIN,14)@34
    assign i_arrayidx52_jacobi_1d3_vt_join_q = {i_arrayidx52_jacobi_1d3_vt_select_63_b, i_arrayidx134_jacobi_1d5_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_jacobi_1d9(BLACKBOX,21)@34
    // in in_i_stall@20000000
    // out out_memdep_jacobi_1d_avm_address@20000000
    // out out_memdep_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_jacobi_1d_avm_enable@20000000
    // out out_memdep_jacobi_1d_avm_read@20000000
    // out out_memdep_jacobi_1d_avm_write@20000000
    // out out_memdep_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    jacobi_1d_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_jacobi_1d9 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx52_jacobi_1d3_vt_join_q),
        .in_i_predicate(bubble_select_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_b),
        .in_i_stall(SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_b),
        .in_memdep_jacobi_1d_avm_readdata(in_memdep_jacobi_1d_avm_readdata),
        .in_memdep_jacobi_1d_avm_readdatavalid(in_memdep_jacobi_1d_avm_readdatavalid),
        .in_memdep_jacobi_1d_avm_waitrequest(in_memdep_jacobi_1d_avm_waitrequest),
        .in_memdep_jacobi_1d_avm_writeack(in_memdep_jacobi_1d_avm_writeack),
        .out_memdep_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_address),
        .out_memdep_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_burstcount),
        .out_memdep_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_byteenable),
        .out_memdep_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_enable),
        .out_memdep_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_read),
        .out_memdep_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_write),
        .out_memdep_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_jacobi_1d9_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_jacobi_1d9_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo(STALLENABLE,185)
    // Valid signal propagation
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_V0 = SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_backStall = in_stall_in | ~ (SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and0 = redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_out;
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and1 = i_llvm_fpga_mem_memdep_jacobi_1d9_out_o_valid & SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and0;
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and2 = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_o_valid & SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and1;
    assign SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_wireValid = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_o_valid & SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_and2;

    // bubble_join_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo(BITJOIN,135)
    assign bubble_join_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_q = redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_data_out;

    // bubble_select_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo(BITSELECT,136)
    assign bubble_select_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_b = $unsigned(bubble_join_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_q[0:0]);

    // c_jacobi_1d_B_local_pmem(CONSTANT,5)
    assign c_jacobi_1d_B_local_pmem_q = $unsigned(64'b0100000001000010000000000000000000000000000000000000000000000000);

    // i_arrayidx134_jacobi_1d0_upper_bits_x_merged_bit_select(BITSELECT,104)@34
    assign i_arrayidx134_jacobi_1d0_upper_bits_x_merged_bit_select_b = c_jacobi_1d_B_local_pmem_q[63:9];
    assign i_arrayidx134_jacobi_1d0_upper_bits_x_merged_bit_select_c = c_jacobi_1d_B_local_pmem_q[8:0];

    // i_arrayidx134_jacobi_1d0_add_x(ADD,64)@34
    assign i_arrayidx134_jacobi_1d0_add_x_a = {1'b0, i_arrayidx134_jacobi_1d0_upper_bits_x_merged_bit_select_c};
    assign i_arrayidx134_jacobi_1d0_add_x_b = {1'b0, i_arrayidx134_jacobi_1d0_shift_join_x_q};
    assign i_arrayidx134_jacobi_1d0_add_x_o = $unsigned(i_arrayidx134_jacobi_1d0_add_x_a) + $unsigned(i_arrayidx134_jacobi_1d0_add_x_b);
    assign i_arrayidx134_jacobi_1d0_add_x_q = i_arrayidx134_jacobi_1d0_add_x_o[9:0];

    // i_arrayidx134_jacobi_1d0_dupName_2_trunc_sel_x(BITSELECT,75)@34
    assign i_arrayidx134_jacobi_1d0_dupName_2_trunc_sel_x_b = i_arrayidx134_jacobi_1d0_add_x_q[8:0];

    // i_arrayidx134_jacobi_1d0_append_upper_bits_x(BITJOIN,65)@34
    assign i_arrayidx134_jacobi_1d0_append_upper_bits_x_q = {i_arrayidx134_jacobi_1d0_upper_bits_x_merged_bit_select_b, i_arrayidx134_jacobi_1d0_dupName_2_trunc_sel_x_b};

    // i_arrayidx134_jacobi_1d5_vt_select_63(BITSELECT,12)@34
    assign i_arrayidx134_jacobi_1d5_vt_select_63_b = i_arrayidx134_jacobi_1d0_append_upper_bits_x_q[63:2];

    // i_arrayidx134_jacobi_1d5_vt_join(BITJOIN,11)@34
    assign i_arrayidx134_jacobi_1d5_vt_join_q = {i_arrayidx134_jacobi_1d5_vt_select_63_b, i_arrayidx134_jacobi_1d5_vt_const_1_q};

    // i_llvm_fpga_mem_memdep_3_jacobi_1d11(BLACKBOX,20)@34
    // in in_i_stall@20000000
    // out out_memdep_3_jacobi_1d_avm_address@20000000
    // out out_memdep_3_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_3_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_3_jacobi_1d_avm_enable@20000000
    // out out_memdep_3_jacobi_1d_avm_read@20000000
    // out out_memdep_3_jacobi_1d_avm_write@20000000
    // out out_memdep_3_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@35
    // out out_o_writeack@35
    jacobi_1d_i_llvm_fpga_mem_memdep_3_0 thei_llvm_fpga_mem_memdep_3_jacobi_1d11 (
        .in_flush(in_flush),
        .in_i_address(i_arrayidx134_jacobi_1d5_vt_join_q),
        .in_i_predicate(bubble_select_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_b),
        .in_i_stall(SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_V0),
        .in_i_writedata(bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_b),
        .in_memdep_3_jacobi_1d_avm_readdata(in_memdep_3_jacobi_1d_avm_readdata),
        .in_memdep_3_jacobi_1d_avm_readdatavalid(in_memdep_3_jacobi_1d_avm_readdatavalid),
        .in_memdep_3_jacobi_1d_avm_waitrequest(in_memdep_3_jacobi_1d_avm_waitrequest),
        .in_memdep_3_jacobi_1d_avm_writeack(in_memdep_3_jacobi_1d_avm_writeack),
        .out_memdep_3_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_address),
        .out_memdep_3_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_burstcount),
        .out_memdep_3_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_byteenable),
        .out_memdep_3_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_enable),
        .out_memdep_3_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_read),
        .out_memdep_3_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_write),
        .out_memdep_3_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_o_valid),
        .out_o_writeack(),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo(STALLENABLE,183)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg0 <= '0;
            SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg1 <= '0;
            SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg0 <= SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg0;
            // Successor 1
            SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg1 <= SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg1;
            // Successor 2
            SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg2 <= SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_backStall) & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid) | SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg0;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_backStall) & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid) | SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg1;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed2 = (~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_backStall) & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid) | SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg2;
    // Consuming
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_StallValid = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_backStall & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg0 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_StallValid & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg1 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_StallValid & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed1;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_toReg2 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_StallValid & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_or0 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed0;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_or1 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed1 & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_or0;
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireStall = ~ (SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_consumed2 & SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_or1);
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_backStall = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V0 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg0);
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V1 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg1);
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V2 = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid & ~ (SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_wireValid = redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_out;

    // SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8(STALLENABLE,158)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_V0 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_backStall = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_and0 = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_and1 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V2 & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_wireValid = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7(STALLENABLE,156)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_V0 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_backStall = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_and0 = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_and1 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V1 & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_wireValid = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_and1;

    // SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6(STALLENABLE,160)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_V0 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_backStall = i_llvm_fpga_mem_memdep_jacobi_1d9_out_o_stall | ~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_and0 = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_and1 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V0 & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_wireValid = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_V2 & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_and1;

    // SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo(STALLENABLE,187)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg0 <= '0;
            SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg1 <= '0;
            SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg0 <= SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg0;
            // Successor 1
            SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg1 <= SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg1;
            // Successor 2
            SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg2 <= SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed0 = (~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_backStall) & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid) | SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg0;
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed1 = (~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_backStall) & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid) | SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg1;
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed2 = (~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_backStall) & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid) | SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg2;
    // Consuming
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_StallValid = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_backStall & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid;
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg0 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_StallValid & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg1 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_StallValid & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed1;
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_toReg2 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_StallValid & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_or0 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed0;
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_or1 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed1 & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_or0;
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireStall = ~ (SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_consumed2 & SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_or1);
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_backStall = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V0 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg0);
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V1 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg1);
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_V2 = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid & ~ (SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_wireValid = redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_out;

    // redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo(STALLFIFO,110)
    assign redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V5;
    assign redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_in = SE_out_redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_backStall;
    assign redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_data_in = i_arrayidx134_jacobi_1d0_narrow_x_b;
    assign redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_in_bitsignaltemp = redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_in[0];
    assign redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_in_bitsignaltemp = redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_in[0];
    assign redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_out[0] = redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_out_bitsignaltemp;
    assign redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_out[0] = redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(7),
        .IMPL("ram")
    ) theredist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo (
        .valid_in(redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_in_bitsignaltemp),
        .data_in(i_arrayidx134_jacobi_1d0_narrow_x_b),
        .valid_out(redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo(STALLFIFO,109)
    assign redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V4;
    assign redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_in = SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_backStall;
    assign redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_g;
    assign redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_in[0];
    assign redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_in_bitsignaltemp = redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_in[0];
    assign redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_out[0] = redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_out_bitsignaltemp;
    assign redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_out[0] = redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo (
        .valid_in(redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_g),
        .valid_out(redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo(STALLFIFO,108)
    assign redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V3;
    assign redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_in = SE_out_redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_backStall;
    assign redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_b;
    assign redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_in_bitsignaltemp = redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_in[0];
    assign redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_in_bitsignaltemp = redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_in[0];
    assign redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_out[0] = redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_out_bitsignaltemp;
    assign redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_out[0] = redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(33),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo (
        .valid_in(redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_b),
        .valid_out(redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6(BLACKBOX,24)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_9_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_d),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V2),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_valid),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8(BLACKBOX,23)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_11_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_f),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V1),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_valid),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7(BLACKBOX,22)@2
    // in in_i_stall@20000000
    // out out_o_readdata@34
    // out out_o_stall@20000000
    // out out_o_valid@34
    // out out_unnamed_jacobi_1d10_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d10_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d10_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d10_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_10_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V0),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_valid),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x(STALLENABLE,176)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg3 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg4 <= '0;
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg3;
            // Successor 4
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg4 <= SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg4;
            // Successor 5
            SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg5 <= SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed2 = (~ (i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed3 = (~ (redist0_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl_32_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg3;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed4 = (~ (redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg4;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed5 = (~ (redist2_i_arrayidx134_jacobi_1d0_narrow_x_b_32_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed3;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg4 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed4;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_toReg5 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or3 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or2;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or4 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed4 & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or3;
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_consumed5 & SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_or4);
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg3);
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V4 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg4);
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_V5 = SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_o_valid;

    // i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x(BLACKBOX,100)@1
    // in in_i_stall@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@2
    // out out_pipeline_valid_out@20000000
    // out out_c0_exit74_0_tpl@2
    // out out_c0_exit74_1_tpl@2
    // out out_c0_exit74_2_tpl@2
    // out out_c0_exit74_3_tpl@2
    // out out_c0_exit74_4_tpl@2
    // out out_c0_exit74_5_tpl@2
    // out out_c0_exit74_6_tpl@2
    // out out_c0_exit74_7_tpl@2
    jacobi_1d_i_sfc_s_c0_in_for_body_s_c0_enter723_jacobi_1d1 thei_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x (
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_backStall),
        .in_i_valid(SE_out_jacobi_1d_B3_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_c0_eni1_0_tpl(GND_q),
        .in_c0_eni1_1_tpl(bubble_select_jacobi_1d_B3_merge_reg_aunroll_x_b),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_pipeline_valid_out),
        .out_c0_exit74_0_tpl(),
        .out_c0_exit74_1_tpl(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_1_tpl),
        .out_c0_exit74_2_tpl(),
        .out_c0_exit74_3_tpl(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_3_tpl),
        .out_c0_exit74_4_tpl(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_4_tpl),
        .out_c0_exit74_5_tpl(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_5_tpl),
        .out_c0_exit74_6_tpl(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_6_tpl),
        .out_c0_exit74_7_tpl(i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,9)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out = i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out = i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,42)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,50)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,53)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d6_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;

    // bubble_join_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo(BITJOIN,138)
    assign bubble_join_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_q = redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_data_out;

    // bubble_select_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo(BITSELECT,139)
    assign bubble_select_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_b = $unsigned(bubble_join_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,54)@35
    assign out_c0_exe7 = bubble_select_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_b;
    assign out_valid_out = SE_out_redist1_i_sfc_s_c0_in_for_body_jacobi_1ds_c0_enter723_jacobi_1d1_aunroll_x_out_c0_exit74_7_tpl_33_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,56)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d10_jacobi_1d7_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,58)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d8_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,60)
    assign out_memdep_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_address;
    assign out_memdep_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_enable;
    assign out_memdep_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_read;
    assign out_memdep_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_write;
    assign out_memdep_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_writedata;
    assign out_memdep_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_byteenable;
    assign out_memdep_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_jacobi_1d9_out_memdep_jacobi_1d_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,62)
    assign out_memdep_2_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_address;
    assign out_memdep_2_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_enable;
    assign out_memdep_2_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_read;
    assign out_memdep_2_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_write;
    assign out_memdep_2_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_writedata;
    assign out_memdep_2_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_byteenable;
    assign out_memdep_2_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_2_jacobi_1d10_out_memdep_2_jacobi_1d_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,63)
    assign out_memdep_3_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_address;
    assign out_memdep_3_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_enable;
    assign out_memdep_3_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_read;
    assign out_memdep_3_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_write;
    assign out_memdep_3_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_writedata;
    assign out_memdep_3_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_byteenable;
    assign out_memdep_3_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_3_jacobi_1d11_out_memdep_3_jacobi_1d_avm_burstcount;

endmodule
