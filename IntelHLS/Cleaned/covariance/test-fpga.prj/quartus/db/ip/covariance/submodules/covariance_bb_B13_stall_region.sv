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

// SystemVerilog created from bb_covariance_B13_stall_region
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_bb_B13_stall_region (
    input wire [31:0] in_unnamed_covariance17_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_readdatavalid,
    output wire [31:0] out_unnamed_covariance16_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance16_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance16_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_burstcount,
    output wire [31:0] out_c0_exe10415,
    output wire [0:0] out_c0_exe11416,
    output wire [0:0] out_c0_exe12417,
    output wire [0:0] out_c0_exe13418,
    output wire [0:0] out_c0_exe14419,
    output wire [0:0] out_c0_exe15420,
    output wire [31:0] out_c0_exe5410,
    output wire [0:0] out_c0_exe7412,
    output wire [31:0] out_c0_exe8413,
    output wire [31:0] out_c0_exe9414,
    output wire [31:0] out_c1_exe1438,
    output wire [0:0] out_valid_out,
    output wire [31:0] out_unnamed_covariance17_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance17_covariance_avm_writedata,
    output wire [3:0] out_unnamed_covariance17_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_burstcount,
    input wire [31:0] in_unnamed_covariance16_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_writeack,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond18175,
    input wire [0:0] in_exitcond21102_pop55183,
    input wire [0:0] in_exitcond21161,
    input wire [0:0] in_forked,
    input wire [0:0] in_forked27174,
    input wire [32:0] in_fpga_indvars_iv14_pop23158,
    input wire [31:0] in_i21_072_pop24152,
    input wire [31:0] in_i21_072_pop2498_pop53181,
    input wire [31:0] in_j26_071_pop49177,
    input wire [31:0] in_lim_ext81_pop42144,
    input wire [31:0] in_lim_ext82_pop26170,
    input wire [31:0] in_lim_ext83_pop51179,
    input wire [0:0] in_memdep_phi2_pop50178,
    input wire [0:0] in_memdep_phi3_pop25106_pop57185,
    input wire [0:0] in_memdep_phi3_pop25167,
    input wire [31:0] in_mul47100_pop54182,
    input wire [31:0] in_mul47155,
    input wire [0:0] in_notcmp26176,
    input wire [0:0] in_notcmp31104_pop56184,
    input wire [0:0] in_notcmp31164,
    input wire [31:0] in_reorder_limiter_enter121,
    input wire [31:0] in_reorder_limiter_enter86_pop27173,
    input wire [31:0] in_reorder_limiter_enter87_pop52180,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [32:0] covariance_B13_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_6_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_7_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_8_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_9_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_10_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_11_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_12_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_13_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_14_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_15_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_16_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_17_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_18_tpl;
    wire [31:0] covariance_B13_merge_reg_aunroll_x_out_data_out_19_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_20_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_21_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_data_out_22_tpl;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] covariance_B13_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_2_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_3_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_7_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_8_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_9_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_10_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_11_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_12_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_13_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_14_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_15_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_16_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_o_valid;
    wire [0:0] i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_pipeline_valid_out;
    wire [31:0] i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_c1_exit437_1_tpl;
    wire [0:0] i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_writedata;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [133:0] join_for_coalesced_delay_1_q;
    wire [31:0] sel_for_coalesced_delay_1_b;
    wire [31:0] sel_for_coalesced_delay_1_c;
    wire [31:0] sel_for_coalesced_delay_1_d;
    wire [31:0] sel_for_coalesced_delay_1_e;
    wire [0:0] sel_for_coalesced_delay_1_f;
    wire [0:0] sel_for_coalesced_delay_1_g;
    wire [0:0] sel_for_coalesced_delay_1_h;
    wire [0:0] sel_for_coalesced_delay_1_i;
    wire [0:0] sel_for_coalesced_delay_1_j;
    wire [0:0] sel_for_coalesced_delay_1_k;
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
    wire [133:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [133:0] coalesced_delay_1_fifo_data_out;
    wire [395:0] bubble_join_covariance_B13_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_b;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_c;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_d;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_e;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_f;
    wire [32:0] bubble_select_covariance_B13_merge_reg_aunroll_x_g;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_h;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_i;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_j;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_k;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_l;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_m;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_n;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_o;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_p;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_q;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_r;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_s;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_t;
    wire [31:0] bubble_select_covariance_B13_merge_reg_aunroll_x_u;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_v;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_w;
    wire [0:0] bubble_select_covariance_B13_merge_reg_aunroll_x_x;
    wire [265:0] bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_c;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_d;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_h;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_i;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_j;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_k;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_l;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_m;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_n;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_o;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_p;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q;
    wire [31:0] bubble_join_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_q;
    wire [31:0] bubble_select_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_covariance16_covariance3_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_covariance16_covariance3_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_covariance17_covariance4_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_covariance17_covariance4_b;
    wire [395:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [32:0] bubble_select_stall_entry_g;
    wire [31:0] bubble_select_stall_entry_h;
    wire [31:0] bubble_select_stall_entry_i;
    wire [31:0] bubble_select_stall_entry_j;
    wire [31:0] bubble_select_stall_entry_k;
    wire [31:0] bubble_select_stall_entry_l;
    wire [31:0] bubble_select_stall_entry_m;
    wire [0:0] bubble_select_stall_entry_n;
    wire [0:0] bubble_select_stall_entry_o;
    wire [0:0] bubble_select_stall_entry_p;
    wire [31:0] bubble_select_stall_entry_q;
    wire [31:0] bubble_select_stall_entry_r;
    wire [0:0] bubble_select_stall_entry_s;
    wire [0:0] bubble_select_stall_entry_t;
    wire [0:0] bubble_select_stall_entry_u;
    wire [31:0] bubble_select_stall_entry_v;
    wire [31:0] bubble_select_stall_entry_w;
    wire [31:0] bubble_select_stall_entry_x;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [133:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [133:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_covariance_B13_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_covariance_B13_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_covariance_B13_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V3;
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
    assign join_for_coalesced_delay_1_q = {bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_p, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_o, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_n, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_m, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_l, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_h, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_k, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_j, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_i, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_f};

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,77)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,78)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,49)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // bubble_join_i_llvm_fpga_mem_unnamed_covariance16_covariance3(BITJOIN,67)
    assign bubble_join_i_llvm_fpga_mem_unnamed_covariance16_covariance3_q = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_covariance16_covariance3(BITSELECT,68)
    assign bubble_select_i_llvm_fpga_mem_unnamed_covariance16_covariance3_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_covariance16_covariance3_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_covariance17_covariance4(BITJOIN,70)
    assign bubble_join_i_llvm_fpga_mem_unnamed_covariance17_covariance4_q = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_covariance17_covariance4(BITSELECT,71)
    assign bubble_select_i_llvm_fpga_mem_unnamed_covariance17_covariance4_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_covariance17_covariance4_q[31:0]);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x(BLACKBOX,8)@41
    // in in_i_stall@20000000
    // out out_c1_exit437_0_tpl@46
    // out out_c1_exit437_1_tpl@46
    // out out_o_stall@20000000
    // out out_o_valid@46
    covariance_i_sfc_s_c1_in_for_body34_s_c1_enter431_covariance6 thei_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x (
        .in_c1_eni4430_0_tpl(GND_q),
        .in_c1_eni4430_1_tpl(bubble_select_i_llvm_fpga_mem_unnamed_covariance17_covariance4_b),
        .in_c1_eni4430_2_tpl(bubble_select_i_llvm_fpga_mem_unnamed_covariance16_covariance3_b),
        .in_c1_eni4430_3_tpl(sel_for_coalesced_delay_0_c),
        .in_c1_eni4430_4_tpl(sel_for_coalesced_delay_0_b),
        .in_c0_exe16421(sel_for_coalesced_delay_0_c),
        .in_c0_exe2407(sel_for_coalesced_delay_0_b),
        .in_i_stall(SE_out_coalesced_delay_1_fifo_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .out_c1_exit437_0_tpl(),
        .out_c1_exit437_1_tpl(i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_c1_exit437_1_tpl),
        .out_o_stall(i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_o_valid),
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
    assign SE_out_coalesced_delay_1_fifo_wireValid = i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_o_valid & SE_out_coalesced_delay_1_fifo_and0;

    // coalesced_delay_1_fifo(STALLFIFO,54)
    assign coalesced_delay_1_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V3;
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
        .DATA_WIDTH(134),
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
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q, bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_c};

    // coalesced_delay_0_fifo(STALLFIFO,53)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V2;
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

    // i_llvm_fpga_mem_unnamed_covariance17_covariance4(BLACKBOX,15)@9
    // in in_i_stall@20000000
    // out out_o_readdata@41
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_unnamed_covariance17_covariance_avm_address@20000000
    // out out_unnamed_covariance17_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance17_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance17_covariance_avm_enable@20000000
    // out out_unnamed_covariance17_covariance_avm_read@20000000
    // out out_unnamed_covariance17_covariance_avm_write@20000000
    // out out_unnamed_covariance17_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_17_covariance0 thei_llvm_fpga_mem_unnamed_covariance17_covariance4 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_g),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V1),
        .in_unnamed_covariance17_covariance_avm_readdata(in_unnamed_covariance17_covariance_avm_readdata),
        .in_unnamed_covariance17_covariance_avm_readdatavalid(in_unnamed_covariance17_covariance_avm_readdatavalid),
        .in_unnamed_covariance17_covariance_avm_waitrequest(in_unnamed_covariance17_covariance_avm_waitrequest),
        .in_unnamed_covariance17_covariance_avm_writeack(in_unnamed_covariance17_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_valid),
        .out_unnamed_covariance17_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_address),
        .out_unnamed_covariance17_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_burstcount),
        .out_unnamed_covariance17_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_byteenable),
        .out_unnamed_covariance17_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_enable),
        .out_unnamed_covariance17_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_read),
        .out_unnamed_covariance17_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_write),
        .out_unnamed_covariance17_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,92)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = covariance_B13_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,73)
    assign bubble_join_stall_entry_q = {in_reorder_limiter_enter87_pop52180, in_reorder_limiter_enter86_pop27173, in_reorder_limiter_enter121, in_notcmp31164, in_notcmp31104_pop56184, in_notcmp26176, in_mul47155, in_mul47100_pop54182, in_memdep_phi3_pop25167, in_memdep_phi3_pop25106_pop57185, in_memdep_phi2_pop50178, in_lim_ext83_pop51179, in_lim_ext82_pop26170, in_lim_ext81_pop42144, in_j26_071_pop49177, in_i21_072_pop2498_pop53181, in_i21_072_pop24152, in_fpga_indvars_iv14_pop23158, in_forked27174, in_forked, in_exitcond21161, in_exitcond21102_pop55183, in_exitcond18175};

    // bubble_select_stall_entry(BITSELECT,74)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[37:5]);
    assign bubble_select_stall_entry_h = $unsigned(bubble_join_stall_entry_q[69:38]);
    assign bubble_select_stall_entry_i = $unsigned(bubble_join_stall_entry_q[101:70]);
    assign bubble_select_stall_entry_j = $unsigned(bubble_join_stall_entry_q[133:102]);
    assign bubble_select_stall_entry_k = $unsigned(bubble_join_stall_entry_q[165:134]);
    assign bubble_select_stall_entry_l = $unsigned(bubble_join_stall_entry_q[197:166]);
    assign bubble_select_stall_entry_m = $unsigned(bubble_join_stall_entry_q[229:198]);
    assign bubble_select_stall_entry_n = $unsigned(bubble_join_stall_entry_q[230:230]);
    assign bubble_select_stall_entry_o = $unsigned(bubble_join_stall_entry_q[231:231]);
    assign bubble_select_stall_entry_p = $unsigned(bubble_join_stall_entry_q[232:232]);
    assign bubble_select_stall_entry_q = $unsigned(bubble_join_stall_entry_q[264:233]);
    assign bubble_select_stall_entry_r = $unsigned(bubble_join_stall_entry_q[296:265]);
    assign bubble_select_stall_entry_s = $unsigned(bubble_join_stall_entry_q[297:297]);
    assign bubble_select_stall_entry_t = $unsigned(bubble_join_stall_entry_q[298:298]);
    assign bubble_select_stall_entry_u = $unsigned(bubble_join_stall_entry_q[299:299]);
    assign bubble_select_stall_entry_v = $unsigned(bubble_join_stall_entry_q[331:300]);
    assign bubble_select_stall_entry_w = $unsigned(bubble_join_stall_entry_q[363:332]);
    assign bubble_select_stall_entry_x = $unsigned(bubble_join_stall_entry_q[395:364]);

    // covariance_B13_merge_reg_aunroll_x(BLACKBOX,2)@0
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
    // out out_data_out_11_tpl@1
    // out out_data_out_12_tpl@1
    // out out_data_out_13_tpl@1
    // out out_data_out_14_tpl@1
    // out out_data_out_15_tpl@1
    // out out_data_out_16_tpl@1
    // out out_data_out_17_tpl@1
    // out out_data_out_18_tpl@1
    // out out_data_out_19_tpl@1
    // out out_data_out_20_tpl@1
    // out out_data_out_21_tpl@1
    // out out_data_out_22_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    covariance_B13_merge_reg thecovariance_B13_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_e),
        .in_data_in_1_tpl(bubble_select_stall_entry_v),
        .in_data_in_2_tpl(bubble_select_stall_entry_k),
        .in_data_in_3_tpl(bubble_select_stall_entry_h),
        .in_data_in_4_tpl(bubble_select_stall_entry_r),
        .in_data_in_5_tpl(bubble_select_stall_entry_g),
        .in_data_in_6_tpl(bubble_select_stall_entry_d),
        .in_data_in_7_tpl(bubble_select_stall_entry_u),
        .in_data_in_8_tpl(bubble_select_stall_entry_p),
        .in_data_in_9_tpl(bubble_select_stall_entry_l),
        .in_data_in_10_tpl(bubble_select_stall_entry_w),
        .in_data_in_11_tpl(bubble_select_stall_entry_f),
        .in_data_in_12_tpl(bubble_select_stall_entry_b),
        .in_data_in_13_tpl(bubble_select_stall_entry_s),
        .in_data_in_14_tpl(bubble_select_stall_entry_j),
        .in_data_in_15_tpl(bubble_select_stall_entry_n),
        .in_data_in_16_tpl(bubble_select_stall_entry_m),
        .in_data_in_17_tpl(bubble_select_stall_entry_x),
        .in_data_in_18_tpl(bubble_select_stall_entry_i),
        .in_data_in_19_tpl(bubble_select_stall_entry_q),
        .in_data_in_20_tpl(bubble_select_stall_entry_c),
        .in_data_in_21_tpl(bubble_select_stall_entry_t),
        .in_data_in_22_tpl(bubble_select_stall_entry_o),
        .in_stall_in(SE_out_covariance_B13_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_data_out_6_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_6_tpl),
        .out_data_out_7_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_7_tpl),
        .out_data_out_8_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_8_tpl),
        .out_data_out_9_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_9_tpl),
        .out_data_out_10_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_10_tpl),
        .out_data_out_11_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_11_tpl),
        .out_data_out_12_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_12_tpl),
        .out_data_out_13_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_13_tpl),
        .out_data_out_14_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_14_tpl),
        .out_data_out_15_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_15_tpl),
        .out_data_out_16_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_16_tpl),
        .out_data_out_17_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_17_tpl),
        .out_data_out_18_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_18_tpl),
        .out_data_out_19_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_19_tpl),
        .out_data_out_20_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_20_tpl),
        .out_data_out_21_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_21_tpl),
        .out_data_out_22_tpl(covariance_B13_merge_reg_aunroll_x_out_data_out_22_tpl),
        .out_stall_out(covariance_B13_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(covariance_B13_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_covariance_B13_merge_reg_aunroll_x(STALLENABLE,83)
    // Valid signal propagation
    assign SE_out_covariance_B13_merge_reg_aunroll_x_V0 = SE_out_covariance_B13_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_covariance_B13_merge_reg_aunroll_x_backStall = i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_o_stall | ~ (SE_out_covariance_B13_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_covariance_B13_merge_reg_aunroll_x_wireValid = covariance_B13_merge_reg_aunroll_x_out_valid_out;

    // bubble_join_covariance_B13_merge_reg_aunroll_x(BITJOIN,56)
    assign bubble_join_covariance_B13_merge_reg_aunroll_x_q = {covariance_B13_merge_reg_aunroll_x_out_data_out_22_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_21_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_20_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_19_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_18_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_17_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_16_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_15_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_14_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_13_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_12_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_11_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_10_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_9_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_8_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_7_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_6_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_5_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_4_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_3_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_2_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_1_tpl, covariance_B13_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_covariance_B13_merge_reg_aunroll_x(BITSELECT,57)
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_b = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_c = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[32:1]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_d = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[64:33]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_e = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[96:65]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_f = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[128:97]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_g = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[161:129]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_h = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[162:162]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_i = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[163:163]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_j = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[164:164]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_k = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[196:165]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_l = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[228:197]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_m = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[229:229]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_n = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[230:230]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_o = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[231:231]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_p = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[263:232]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_q = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[264:264]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_r = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[296:265]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_s = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[328:297]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_t = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[360:329]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_u = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[392:361]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_v = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[393:393]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_w = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[394:394]);
    assign bubble_select_covariance_B13_merge_reg_aunroll_x_x = $unsigned(bubble_join_covariance_B13_merge_reg_aunroll_x_q[395:395]);

    // i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x(BLACKBOX,7)@1
    // in in_i_stall@20000000
    // out out_c0_exit405_0_tpl@9
    // out out_c0_exit405_1_tpl@9
    // out out_c0_exit405_2_tpl@9
    // out out_c0_exit405_3_tpl@9
    // out out_c0_exit405_4_tpl@9
    // out out_c0_exit405_5_tpl@9
    // out out_c0_exit405_6_tpl@9
    // out out_c0_exit405_7_tpl@9
    // out out_c0_exit405_8_tpl@9
    // out out_c0_exit405_9_tpl@9
    // out out_c0_exit405_10_tpl@9
    // out out_c0_exit405_11_tpl@9
    // out out_c0_exit405_12_tpl@9
    // out out_c0_exit405_13_tpl@9
    // out out_c0_exit405_14_tpl@9
    // out out_c0_exit405_15_tpl@9
    // out out_c0_exit405_16_tpl@9
    // out out_c0_exit405_17_tpl@9
    // out out_c0_exit405_18_tpl@9
    // out out_c0_exit405_19_tpl@9
    // out out_c0_exit405_20_tpl@9
    // out out_c0_exit405_21_tpl@9
    // out out_c0_exit405_22_tpl@9
    // out out_c0_exit405_23_tpl@9
    // out out_c0_exit405_24_tpl@9
    // out out_c0_exit405_25_tpl@9
    // out out_c0_exit405_26_tpl@9
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out@20000000
    // out out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out@20000000
    // out out_o_stall@20000000
    // out out_o_valid@9
    // out out_pipeline_valid_out@20000000
    covariance_i_sfc_s_c0_in_for_body34_s_c0_enter37234_covariance1 thei_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x (
        .in_c0_eni23_0_tpl(GND_q),
        .in_c0_eni23_1_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_b),
        .in_c0_eni23_2_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_t),
        .in_c0_eni23_3_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_x),
        .in_c0_eni23_4_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_q),
        .in_c0_eni23_5_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_p),
        .in_c0_eni23_6_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_r),
        .in_c0_eni23_7_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_s),
        .in_c0_eni23_8_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_u),
        .in_c0_eni23_9_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_v),
        .in_c0_eni23_10_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_w),
        .in_c0_eni23_11_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_m),
        .in_c0_eni23_12_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_n),
        .in_c0_eni23_13_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_o),
        .in_c0_eni23_14_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_c),
        .in_c0_eni23_15_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_d),
        .in_c0_eni23_16_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_e),
        .in_c0_eni23_17_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_f),
        .in_c0_eni23_18_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_g),
        .in_c0_eni23_19_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_h),
        .in_c0_eni23_20_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_i),
        .in_c0_eni23_21_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_j),
        .in_c0_eni23_22_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_k),
        .in_c0_eni23_23_tpl(bubble_select_covariance_B13_merge_reg_aunroll_x_l),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_backStall),
        .in_i_valid(SE_out_covariance_B13_merge_reg_aunroll_x_V0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .out_c0_exit405_0_tpl(),
        .out_c0_exit405_1_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_1_tpl),
        .out_c0_exit405_2_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_2_tpl),
        .out_c0_exit405_3_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_3_tpl),
        .out_c0_exit405_4_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_4_tpl),
        .out_c0_exit405_5_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_5_tpl),
        .out_c0_exit405_6_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_6_tpl),
        .out_c0_exit405_7_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_7_tpl),
        .out_c0_exit405_8_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_8_tpl),
        .out_c0_exit405_9_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_9_tpl),
        .out_c0_exit405_10_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_10_tpl),
        .out_c0_exit405_11_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_11_tpl),
        .out_c0_exit405_12_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_12_tpl),
        .out_c0_exit405_13_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_13_tpl),
        .out_c0_exit405_14_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_14_tpl),
        .out_c0_exit405_15_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_15_tpl),
        .out_c0_exit405_16_tpl(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_16_tpl),
        .out_c0_exit405_17_tpl(),
        .out_c0_exit405_18_tpl(),
        .out_c0_exit405_19_tpl(),
        .out_c0_exit405_20_tpl(),
        .out_c0_exit405_21_tpl(),
        .out_c0_exit405_22_tpl(),
        .out_c0_exit405_23_tpl(),
        .out_c0_exit405_24_tpl(),
        .out_c0_exit405_25_tpl(),
        .out_c0_exit405_26_tpl(),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out),
        .out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out),
        .out_o_stall(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_o_valid),
        .out_pipeline_valid_out(i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_pipeline_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x(STALLENABLE,85)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed0 = (~ (i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed1 = (~ (i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_stall) & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed2 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed3 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_wireValid = i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_o_valid;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,99)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_and1 = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_valid & SE_out_coalesced_delay_0_fifo_and1;

    // bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x(BITJOIN,60)
    assign bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q = {i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_16_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_15_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_14_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_13_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_12_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_11_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_10_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_9_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_8_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_7_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_6_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_5_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_4_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_3_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_2_tpl, i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_c0_exit405_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x(BITSELECT,61)
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[65:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[66:66]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[98:67]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[162:99]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[163:163]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[195:164]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_j = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[227:196]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_k = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[259:228]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_l = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[260:260]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_m = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[261:261]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_n = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[262:262]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_o = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[263:263]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_p = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[264:264]);
    assign bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q = $unsigned(bubble_join_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_q[265:265]);

    // i_llvm_fpga_mem_unnamed_covariance16_covariance3(BLACKBOX,14)@9
    // in in_i_stall@20000000
    // out out_o_readdata@41
    // out out_o_stall@20000000
    // out out_o_valid@41
    // out out_unnamed_covariance16_covariance_avm_address@20000000
    // out out_unnamed_covariance16_covariance_avm_burstcount@20000000
    // out out_unnamed_covariance16_covariance_avm_byteenable@20000000
    // out out_unnamed_covariance16_covariance_avm_enable@20000000
    // out out_unnamed_covariance16_covariance_avm_read@20000000
    // out out_unnamed_covariance16_covariance_avm_write@20000000
    // out out_unnamed_covariance16_covariance_avm_writedata@20000000
    covariance_i_llvm_fpga_mem_unnamed_16_covariance0 thei_llvm_fpga_mem_unnamed_covariance16_covariance3 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_d),
        .in_i_dependence(bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_e),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_b),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_V0),
        .in_unnamed_covariance16_covariance_avm_readdata(in_unnamed_covariance16_covariance_avm_readdata),
        .in_unnamed_covariance16_covariance_avm_readdatavalid(in_unnamed_covariance16_covariance_avm_readdatavalid),
        .in_unnamed_covariance16_covariance_avm_waitrequest(in_unnamed_covariance16_covariance_avm_waitrequest),
        .in_unnamed_covariance16_covariance_avm_writeack(in_unnamed_covariance16_covariance_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_o_valid),
        .out_unnamed_covariance16_covariance_avm_address(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_address),
        .out_unnamed_covariance16_covariance_avm_burstcount(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_burstcount),
        .out_unnamed_covariance16_covariance_avm_byteenable(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_byteenable),
        .out_unnamed_covariance16_covariance_avm_enable(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_enable),
        .out_unnamed_covariance16_covariance_avm_read(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_read),
        .out_unnamed_covariance16_covariance_avm_write(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_write),
        .out_unnamed_covariance16_covariance_avm_writedata(i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,4)
    assign out_unnamed_covariance16_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_address;
    assign out_unnamed_covariance16_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_enable;
    assign out_unnamed_covariance16_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_read;
    assign out_unnamed_covariance16_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_write;
    assign out_unnamed_covariance16_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_writedata;
    assign out_unnamed_covariance16_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_byteenable;
    assign out_unnamed_covariance16_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance16_covariance3_out_unnamed_covariance16_covariance_avm_burstcount;

    // bubble_join_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x(BITJOIN,63)
    assign bubble_join_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_q = i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_out_c1_exit437_1_tpl;

    // bubble_select_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x(BITSELECT,64)
    assign bubble_select_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_q[31:0]);

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,80)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,81)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[133:0]);

    // sel_for_coalesced_delay_1(BITSELECT,52)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[31:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[63:32]);
    assign sel_for_coalesced_delay_1_d = $unsigned(bubble_select_coalesced_delay_1_fifo_b[95:64]);
    assign sel_for_coalesced_delay_1_e = $unsigned(bubble_select_coalesced_delay_1_fifo_b[127:96]);
    assign sel_for_coalesced_delay_1_f = $unsigned(bubble_select_coalesced_delay_1_fifo_b[128:128]);
    assign sel_for_coalesced_delay_1_g = $unsigned(bubble_select_coalesced_delay_1_fifo_b[129:129]);
    assign sel_for_coalesced_delay_1_h = $unsigned(bubble_select_coalesced_delay_1_fifo_b[130:130]);
    assign sel_for_coalesced_delay_1_i = $unsigned(bubble_select_coalesced_delay_1_fifo_b[131:131]);
    assign sel_for_coalesced_delay_1_j = $unsigned(bubble_select_coalesced_delay_1_fifo_b[132:132]);
    assign sel_for_coalesced_delay_1_k = $unsigned(bubble_select_coalesced_delay_1_fifo_b[133:133]);

    // dupName_0_sync_out_x(GPOUT,5)@46
    assign out_c0_exe10415 = sel_for_coalesced_delay_1_e;
    assign out_c0_exe11416 = sel_for_coalesced_delay_1_g;
    assign out_c0_exe12417 = sel_for_coalesced_delay_1_h;
    assign out_c0_exe13418 = sel_for_coalesced_delay_1_i;
    assign out_c0_exe14419 = sel_for_coalesced_delay_1_j;
    assign out_c0_exe15420 = sel_for_coalesced_delay_1_k;
    assign out_c0_exe5410 = sel_for_coalesced_delay_1_b;
    assign out_c0_exe7412 = sel_for_coalesced_delay_1_f;
    assign out_c0_exe8413 = sel_for_coalesced_delay_1_c;
    assign out_c0_exe9414 = sel_for_coalesced_delay_1_d;
    assign out_c1_exe1438 = bubble_select_i_sfc_s_c1_in_for_body34_covariances_c1_enter431_covariance6_aunroll_x_b;
    assign out_valid_out = SE_out_coalesced_delay_1_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,6)
    assign out_unnamed_covariance17_covariance_avm_address = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_address;
    assign out_unnamed_covariance17_covariance_avm_enable = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_enable;
    assign out_unnamed_covariance17_covariance_avm_read = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_read;
    assign out_unnamed_covariance17_covariance_avm_write = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_write;
    assign out_unnamed_covariance17_covariance_avm_writedata = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_writedata;
    assign out_unnamed_covariance17_covariance_avm_byteenable = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_byteenable;
    assign out_unnamed_covariance17_covariance_avm_burstcount = i_llvm_fpga_mem_unnamed_covariance17_covariance4_out_unnamed_covariance17_covariance_avm_burstcount;

    // ext_sig_sync_out(GPOUT,13)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out = i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out = i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_covariance6_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,27)
    assign out_pipeline_valid_out = i_sfc_s_c0_in_for_body34_covariances_c0_enter37234_covariance1_aunroll_x_out_pipeline_valid_out;

    // sync_out(GPOUT,33)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
