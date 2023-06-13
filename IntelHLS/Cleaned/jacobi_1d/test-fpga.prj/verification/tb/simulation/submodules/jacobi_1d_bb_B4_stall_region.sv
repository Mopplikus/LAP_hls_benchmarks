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

// SystemVerilog created from bb_jacobi_1d_B4_stall_region
// Created for function/kernel jacobi_1d
// SystemVerilog created on Tue Jun 13 02:54:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B4_stall_region (
    input wire [31:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount,
    output wire [0:0] out_exitcond1749_pop19,
    output wire [63:0] out_mPtr_bitcast7076,
    output wire [0:0] out_masked36,
    output wire [0:0] out_memdep,
    output wire [0:0] out_memdep_phi6_pop1355_pop23,
    output wire [0:0] out_notcmp3951_pop20,
    output wire [0:0] out_valid_out,
    input wire [31:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount,
    input wire [31:0] in_memdep_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount,
    output wire [31:0] out_memdep_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_jacobi_1d_avm_writedata,
    output wire [3:0] out_memdep_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_jacobi_1d_avm_burstcount,
    output wire [0:0] out_lsu_memdep_o_active,
    input wire [31:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_0_0,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_exitcond1758,
    input wire [0:0] in_forked24,
    input wire [0:0] in_memdep_phi1_pop1160,
    input wire [0:0] in_memdep_phi4_pop1261,
    input wire [0:0] in_memdep_phi6_pop1362,
    input wire [0:0] in_notcmp3959,
    input wire [0:0] in_valid_in,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [31:0] bgTrunc_i_add5_jacobi_1d29_sel_x_b;
    wire [7:0] bgTrunc_i_fpga_indvars_iv_next_jacobi_1d52_sel_x_b;
    wire [31:0] bgTrunc_i_mul_add19_jacobi_1d37_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_jacobi_1d_6_jacobi_1d34_sel_x_b;
    wire [31:0] bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b;
    wire [0:0] i_first_cleanup32_jacobi_1d1_sel_x_b;
    wire [0:0] i_last_initeration28_jacobi_1d8_sel_x_b;
    wire [63:0] i_mptr_bitcast_index63_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [1:0] i_mptr_bitcast_index63_jacobi_1d0_c_i2_01_x_q;
    wire [63:0] i_mptr_bitcast_index65_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_mptr_bitcast_index71_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [63:0] i_mptr_bitcast_index_jacobi_1d0_dupName_0_trunc_sel_x_b;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_1_tpl;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_2_tpl;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_3_tpl;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_4_tpl;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_5_tpl;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] jacobi_1d_B4_merge_reg_aunroll_x_out_valid_out;
    wire [1:0] c_i2_159_q;
    wire [31:0] c_i32_162_q;
    wire [31:0] c_i32_163_q;
    wire [7:0] c_i8_166_q;
    wire [7:0] c_i8_9664_q;
    wire [32:0] i_add5_jacobi_1d29_a;
    wire [32:0] i_add5_jacobi_1d29_b;
    logic [32:0] i_add5_jacobi_1d29_o;
    wire [32:0] i_add5_jacobi_1d29_q;
    wire [1:0] i_cleanups_shl31_jacobi_1d3_vt_join_q;
    wire [0:0] i_cleanups_shl31_jacobi_1d3_vt_select_1_b;
    wire [0:0] i_first_cleanup_xor33_jacobi_1d2_q;
    wire [8:0] i_fpga_indvars_iv_next_jacobi_1d52_a;
    wire [8:0] i_fpga_indvars_iv_next_jacobi_1d52_b;
    logic [8:0] i_fpga_indvars_iv_next_jacobi_1d52_o;
    wire [8:0] i_fpga_indvars_iv_next_jacobi_1d52_q;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_dest_data_out_0_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_valid_out;
    wire [63:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_stall_out;
    wire [0:0] i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_valid_out;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_lsu_memdep_o_active;
    wire [31:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_writeack;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_readdata;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_valid;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;
    wire [3:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    wire [31:0] i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_feedback_stall_out_21;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_feedback_stall_out_22;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_feedback_stall_out_16;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_feedback_stall_out_18;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_valid_out;
    wire [1:0] i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_feedback_stall_out_17;
    wire [0:0] i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_valid_out;
    wire [31:0] i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_feedback_stall_out_15;
    wire [0:0] i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_valid_out;
    wire [7:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_feedback_stall_out_14;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_feedback_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_feedback_valid_out_4;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_feedback_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_feedback_valid_out_21;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_feedback_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_feedback_valid_out_22;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_feedback_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_feedback_valid_out_16;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_feedback_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_feedback_valid_out_5;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_feedback_out_18;
    wire [0:0] i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_feedback_valid_out_18;
    wire [0:0] i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_feedback_out_17;
    wire [0:0] i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_feedback_valid_out_17;
    wire [0:0] i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_valid_out;
    wire [31:0] i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_feedback_out_15;
    wire [0:0] i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_feedback_valid_out_15;
    wire [0:0] i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_feedback_out_14;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_feedback_valid_out_14;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_valid_out;
    wire [0:0] i_masked36_jacobi_1d54_qi;
    reg [0:0] i_masked36_jacobi_1d54_q;
    wire [0:0] i_memdep_phi6_or9_jacobi_1d41_qi;
    reg [0:0] i_memdep_phi6_or9_jacobi_1d41_q;
    wire [32:0] i_mul_add19_jacobi_1d37_a;
    wire [32:0] i_mul_add19_jacobi_1d37_b;
    logic [32:0] i_mul_add19_jacobi_1d37_o;
    wire [32:0] i_mul_add19_jacobi_1d37_q;
    wire [0:0] i_next_cleanups35_jacobi_1d50_s;
    reg [1:0] i_next_cleanups35_jacobi_1d50_q;
    wire [1:0] i_next_initerations26_jacobi_1d6_vt_join_q;
    wire [0:0] i_next_initerations26_jacobi_1d6_vt_select_0_b;
    wire [0:0] i_notcmp23_jacobi_1d47_q;
    wire [0:0] i_or34_jacobi_1d49_q;
    wire [0:0] i_reduction_jacobi_1d_0_jacobi_1d22_qi;
    reg [0:0] i_reduction_jacobi_1d_0_jacobi_1d22_q;
    wire [0:0] i_reduction_jacobi_1d_1_jacobi_1d24_q;
    wire [32:0] i_reduction_jacobi_1d_6_jacobi_1d34_a;
    wire [32:0] i_reduction_jacobi_1d_6_jacobi_1d34_b;
    logic [32:0] i_reduction_jacobi_1d_6_jacobi_1d34_o;
    wire [32:0] i_reduction_jacobi_1d_6_jacobi_1d34_q;
    wire [32:0] i_reduction_jacobi_1d_7_jacobi_1d35_a;
    wire [32:0] i_reduction_jacobi_1d_7_jacobi_1d35_b;
    logic [32:0] i_reduction_jacobi_1d_7_jacobi_1d35_o;
    wire [32:0] i_reduction_jacobi_1d_7_jacobi_1d35_q;
    wire [32:0] i_sub_jacobi_1d15_a;
    wire [32:0] i_sub_jacobi_1d15_b;
    logic [32:0] i_sub_jacobi_1d15_o;
    wire [32:0] i_sub_jacobi_1d15_q;
    wire [31:0] i_unnamed_jacobi_1d26_vt_const_63_q;
    wire [31:0] i_unnamed_jacobi_1d36_vt_join_q;
    wire [30:0] i_unnamed_jacobi_1d36_vt_select_31_b;
    wire [0:0] leftShiftStage0Idx1Rng1_uid232_i_cleanups_shl31_jacobi_1d0_shift_x_in;
    wire [0:0] leftShiftStage0Idx1Rng1_uid232_i_cleanups_shl31_jacobi_1d0_shift_x_b;
    wire [1:0] leftShiftStage0Idx1_uid233_i_cleanups_shl31_jacobi_1d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_s;
    reg [1:0] leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0Idx1Rng1_uid239_i_next_initerations26_jacobi_1d0_shift_x_b;
    wire [1:0] rightShiftStage0Idx1_uid241_i_next_initerations26_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_s;
    reg [1:0] rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_q;
    wire [30:0] leftShiftStage0Idx1Rng1_uid248_i_unnamed_jacobi_1d0_shift_x_in;
    wire [30:0] leftShiftStage0Idx1Rng1_uid248_i_unnamed_jacobi_1d0_shift_x_b;
    wire [31:0] leftShiftStage0Idx1_uid249_i_unnamed_jacobi_1d0_shift_x_q;
    wire [0:0] leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_s;
    reg [31:0] leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_q;
    wire [0:0] i_exitcond_jacobi_1d45_cmp_nsign_q;
    wire [60:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_BitJoin_for_q_q;
    wire [60:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_a;
    wire [60:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_b;
    logic [60:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_o;
    wire [0:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_c;
    wire [59:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q;
    wire [6:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_a;
    wire [6:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_b;
    logic [6:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_o;
    wire [0:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_cin;
    wire [4:0] i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_q;
    wire [64:0] i_mptr_bitcast_index_jacobi_1d0_add_x_BitJoin_for_q_q;
    wire [59:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_b;
    wire [3:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [25:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [3:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_b;
    wire [4:0] i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [31:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [0:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b;
    wire [59:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [4:0] i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    wire [4:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    wire [59:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [31:0] i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1_b;
    wire [59:0] i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q;
    wire [59:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b;
    wire [3:0] i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c;
    wire [1:0] join_for_coalesced_delay_0_q;
    wire [0:0] sel_for_coalesced_delay_0_b;
    wire [0:0] sel_for_coalesced_delay_0_c;
    wire [1:0] join_for_coalesced_delay_1_q;
    wire [0:0] sel_for_coalesced_delay_1_b;
    wire [0:0] sel_for_coalesced_delay_1_c;
    wire [63:0] join_for_coalesced_delay_2_q;
    wire [31:0] sel_for_coalesced_delay_2_b;
    wire [31:0] sel_for_coalesced_delay_2_c;
    reg [3:0] redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q;
    reg [3:0] redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q;
    reg [0:0] redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q;
    reg [59:0] redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_q;
    reg [59:0] redist11_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q_1_0_q;
    reg [0:0] redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_q;
    wire [0:0] redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_in;
    wire redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_in;
    wire redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_data_in;
    wire [0:0] redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_out;
    wire redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_out;
    wire redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_data_out;
    wire [0:0] redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_in;
    wire redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_in;
    wire redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist14_i_masked36_jacobi_1d54_q_65_fifo_data_in;
    wire [0:0] redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_out;
    wire redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_out;
    wire redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist14_i_masked36_jacobi_1d54_q_65_fifo_data_out;
    reg [31:0] redist15_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_1_0_q;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_in;
    wire redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_in;
    wire redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_in_bitsignaltemp;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_data_in;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_out;
    wire redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_out;
    wire redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_out_bitsignaltemp;
    wire [31:0] redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_data_out;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_in;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_in;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_data_in;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_out;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_out;
    wire redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_data_out;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_q;
    reg [0:0] redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_q;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_in;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_in;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_data_in;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_out;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_out;
    wire redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_data_out;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_q;
    reg [0:0] redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_q;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_in;
    wire redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_data_in;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_out;
    wire redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_data_out;
    reg [0:0] redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_q;
    reg [0:0] redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_q;
    wire [0:0] redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_in;
    wire redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_in;
    wire redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_in_bitsignaltemp;
    wire [63:0] redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_data_in;
    wire [0:0] redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_out;
    wire redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_out;
    wire redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_out_bitsignaltemp;
    wire [63:0] redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_data_out;
    wire [0:0] redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_in;
    wire redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_in;
    wire redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_data_in;
    wire [0:0] redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_out;
    wire redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_out;
    wire redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_data_out;
    wire [0:0] redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in;
    wire redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in;
    wire redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_in;
    wire [0:0] redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out;
    wire redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out;
    wire redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out;
    reg [0:0] redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q;
    reg [0:0] redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q;
    reg [0:0] redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q;
    wire [0:0] redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_in;
    wire redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_in;
    wire redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_data_in;
    wire [0:0] redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_out;
    wire redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_out;
    wire redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_data_out;
    reg [0:0] redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_q;
    reg [0:0] redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_q;
    reg [31:0] redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_q;
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
    wire [1:0] coalesced_delay_1_fifo_data_in;
    wire [0:0] coalesced_delay_1_fifo_valid_out;
    wire coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_1_fifo_stall_out;
    wire coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    wire [1:0] coalesced_delay_1_fifo_data_out;
    reg [63:0] coalesced_delay_2_0_q;
    wire [5:0] bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_b;
    wire [0:0] bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_c;
    wire [0:0] bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_d;
    wire [0:0] bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_e;
    wire [0:0] bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_f;
    wire [0:0] bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_g;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_b;
    wire [63:0] bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_q;
    wire [63:0] bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_jacobi_1d42_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_jacobi_1d42_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_b;
    wire [31:0] bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_q;
    wire [31:0] bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b;
    wire [1:0] bubble_join_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_q;
    wire [1:0] bubble_select_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_b;
    wire [31:0] bubble_join_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_q;
    wire [31:0] bubble_select_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_b;
    wire [7:0] bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_q;
    wire [7:0] bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_b;
    wire [5:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_select_stall_entry_c;
    wire [0:0] bubble_select_stall_entry_d;
    wire [0:0] bubble_select_stall_entry_e;
    wire [0:0] bubble_select_stall_entry_f;
    wire [0:0] bubble_select_stall_entry_g;
    wire [0:0] bubble_join_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_q;
    wire [0:0] bubble_select_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_b;
    wire [0:0] bubble_join_redist14_i_masked36_jacobi_1d54_q_65_fifo_q;
    wire [0:0] bubble_select_redist14_i_masked36_jacobi_1d54_q_65_fifo_b;
    wire [31:0] bubble_join_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_q;
    wire [31:0] bubble_select_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_b;
    wire [0:0] bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_q;
    wire [0:0] bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_b;
    wire [0:0] bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_q;
    wire [0:0] bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_b;
    wire [0:0] bubble_join_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_q;
    wire [0:0] bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b;
    wire [63:0] bubble_join_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_q;
    wire [63:0] bubble_select_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_b;
    wire [0:0] bubble_join_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_q;
    wire [0:0] bubble_select_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_b;
    wire [0:0] bubble_join_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q;
    wire [0:0] bubble_select_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b;
    wire [0:0] bubble_join_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_q;
    wire [0:0] bubble_select_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [1:0] bubble_join_coalesced_delay_1_fifo_q;
    wire [1:0] bubble_select_coalesced_delay_1_fifo_b;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireStall;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg0;
    reg [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg0;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed0;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg1;
    reg [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg1;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed1;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg2;
    reg [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg2;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed2;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg3;
    reg [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg3;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed3;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg4;
    reg [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg4;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed4;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg5;
    reg [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg5;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed5;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or0;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or1;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or2;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or3;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or4;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V1;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V2;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V3;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V4;
    wire [0:0] SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V5;
    reg [0:0] SE_i_add5_jacobi_1d29_R_v_0;
    reg [0:0] SE_i_add5_jacobi_1d29_R_v_1;
    reg [0:0] SE_i_add5_jacobi_1d29_R_v_2;
    reg [0:0] SE_i_add5_jacobi_1d29_R_v_3;
    reg [0:0] SE_i_add5_jacobi_1d29_R_v_4;
    wire [0:0] SE_i_add5_jacobi_1d29_v_s_0;
    wire [0:0] SE_i_add5_jacobi_1d29_s_tv_0;
    wire [0:0] SE_i_add5_jacobi_1d29_s_tv_1;
    wire [0:0] SE_i_add5_jacobi_1d29_s_tv_2;
    wire [0:0] SE_i_add5_jacobi_1d29_s_tv_3;
    wire [0:0] SE_i_add5_jacobi_1d29_s_tv_4;
    wire [0:0] SE_i_add5_jacobi_1d29_backEN;
    wire [0:0] SE_i_add5_jacobi_1d29_or0;
    wire [0:0] SE_i_add5_jacobi_1d29_or1;
    wire [0:0] SE_i_add5_jacobi_1d29_or2;
    wire [0:0] SE_i_add5_jacobi_1d29_or3;
    wire [0:0] SE_i_add5_jacobi_1d29_backStall;
    wire [0:0] SE_i_add5_jacobi_1d29_V0;
    wire [0:0] SE_i_add5_jacobi_1d29_V1;
    wire [0:0] SE_i_add5_jacobi_1d29_V2;
    wire [0:0] SE_i_add5_jacobi_1d29_V3;
    wire [0:0] SE_i_add5_jacobi_1d29_V4;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_or0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_or1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_backStall;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V0;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V1;
    wire [0:0] SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V2;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_V1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_and0;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_and1;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V2;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V3;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg4;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg5;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V4;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V5;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg2;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg3;
    reg [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed3;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V2;
    wire [0:0] SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V3;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_StallValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_toReg0;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_toReg1;
    reg [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed1;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_or0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_V0;
    wire [0:0] SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_wireValid;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_and0;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_backStall;
    wire [0:0] SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_V0;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_backStall;
    reg [0:0] SE_i_masked36_jacobi_1d54_R_v_0;
    wire [0:0] SE_i_masked36_jacobi_1d54_v_s_0;
    wire [0:0] SE_i_masked36_jacobi_1d54_s_tv_0;
    wire [0:0] SE_i_masked36_jacobi_1d54_backEN;
    wire [0:0] SE_i_masked36_jacobi_1d54_and0;
    wire [0:0] SE_i_masked36_jacobi_1d54_backStall;
    wire [0:0] SE_i_masked36_jacobi_1d54_V0;
    reg [0:0] SE_i_memdep_phi6_or9_jacobi_1d41_R_v_0;
    wire [0:0] SE_i_memdep_phi6_or9_jacobi_1d41_v_s_0;
    wire [0:0] SE_i_memdep_phi6_or9_jacobi_1d41_s_tv_0;
    wire [0:0] SE_i_memdep_phi6_or9_jacobi_1d41_backEN;
    wire [0:0] SE_i_memdep_phi6_or9_jacobi_1d41_and0;
    wire [0:0] SE_i_memdep_phi6_or9_jacobi_1d41_backStall;
    wire [0:0] SE_i_memdep_phi6_or9_jacobi_1d41_V0;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireValid;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireStall;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_StallValid;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_toReg0;
    reg [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg0;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed0;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_toReg1;
    reg [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg1;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed1;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_or0;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_V0;
    wire [0:0] SE_i_next_initerations26_jacobi_1d6_vt_select_0_V1;
    reg [0:0] SE_i_reduction_jacobi_1d_0_jacobi_1d22_R_v_0;
    wire [0:0] SE_i_reduction_jacobi_1d_0_jacobi_1d22_v_s_0;
    wire [0:0] SE_i_reduction_jacobi_1d_0_jacobi_1d22_s_tv_0;
    wire [0:0] SE_i_reduction_jacobi_1d_0_jacobi_1d22_backEN;
    wire [0:0] SE_i_reduction_jacobi_1d_0_jacobi_1d22_and0;
    wire [0:0] SE_i_reduction_jacobi_1d_0_jacobi_1d22_backStall;
    wire [0:0] SE_i_reduction_jacobi_1d_0_jacobi_1d22_V0;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_wireValid;
    wire [0:0] SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_and0;
    wire [0:0] SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_and1;
    wire [0:0] SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_backStall;
    wire [0:0] SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_V0;
    reg [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_or0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V1;
    reg [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_V0;
    reg [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_0;
    reg [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_1;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_1;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_and0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_or0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_V1;
    reg [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_R_v_0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_v_s_0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_s_tv_0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backEN;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireStall;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_toReg0;
    reg [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_toReg1;
    reg [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_or0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V1;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V0;
    wire [0:0] SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V1;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_V0;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall;
    wire [0:0] SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0;
    reg [0:0] SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
    wire [0:0] SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN;
    wire [0:0] SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall;
    wire [0:0] SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;
    reg [0:0] SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall;
    wire [0:0] SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0;
    reg [0:0] SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
    wire [0:0] SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN;
    wire [0:0] SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall;
    wire [0:0] SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;
    reg [0:0] SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    wire [0:0] SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
    wire [0:0] SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
    wire [0:0] SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN;
    wire [0:0] SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_V0;
    reg [0:0] SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_R_v_0;
    wire [0:0] SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_v_s_0;
    wire [0:0] SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_s_tv_0;
    wire [0:0] SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backEN;
    wire [0:0] SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backStall;
    wire [0:0] SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_V0;
    wire [0:0] SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_wireValid;
    wire [0:0] SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_backStall;
    wire [0:0] SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_V0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_wireValid;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_and0;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_backStall;
    wire [0:0] SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_V0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_StallValid;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_toReg0;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_toReg1;
    reg [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed1;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_or0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_backStall;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_V0;
    wire [0:0] SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_V1;
    reg [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_R_v_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_v_s_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_s_tv_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backEN;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backStall;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_V0;
    reg [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_R_v_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_v_s_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_s_tv_0;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backEN;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backStall;
    wire [0:0] SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_V0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_StallValid;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_toReg0;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_toReg1;
    reg [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed1;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_or0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_backStall;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_V0;
    wire [0:0] SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_V1;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_R_v_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_V0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_0;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_1;
    reg [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_2;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_v_s_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_2;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_or0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_or1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backStall;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V0;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V1;
    wire [0:0] SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V2;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_StallValid;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg0;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg1;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg2;
    reg [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg2;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed2;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_or0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_or1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_backStall;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V0;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V1;
    wire [0:0] SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V2;
    reg [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_R_v_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_V0;
    reg [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_0;
    reg [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_1;
    reg [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_2;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_v_s_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_0;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_1;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_2;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_or0;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_or1;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backStall;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V0;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V1;
    wire [0:0] SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V2;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_wireValid;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and0;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and1;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and2;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and3;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_backStall;
    wire [0:0] SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_V0;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0;
    reg [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1;
    reg [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0;
    wire [0:0] SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1;
    reg [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0;
    reg [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_1;
    reg [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_2;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_1;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_2;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_or0;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_or1;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V0;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V1;
    wire [0:0] SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V2;
    reg [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    reg [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    reg [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_1;
    reg [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_2;
    reg [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_3;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_1;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_2;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_3;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or0;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or1;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or2;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V1;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V2;
    wire [0:0] SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V3;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireValid;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireStall;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_StallValid;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_toReg0;
    reg [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg0;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed0;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_toReg1;
    reg [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg1;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed1;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_or0;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_backStall;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V0;
    wire [0:0] SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V1;
    reg [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_R_v_0;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_v_s_0;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_s_tv_0;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backEN;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backStall;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_V0;
    reg [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_R_v_0;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_v_s_0;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_s_tv_0;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backEN;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backStall;
    wire [0:0] SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_V0;
    reg [0:0] SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_R_v_0;
    wire [0:0] SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_v_s_0;
    wire [0:0] SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_s_tv_0;
    wire [0:0] SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backEN;
    wire [0:0] SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backStall;
    wire [0:0] SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_0_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_0_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_wireStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_StallValid;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg0;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_toReg1;
    reg [0:0] SE_out_coalesced_delay_1_fifo_fromReg1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_consumed1;
    wire [0:0] SE_out_coalesced_delay_1_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_or0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_1_fifo_V1;
    reg [0:0] SE_coalesced_delay_2_0_R_v_0;
    wire [0:0] SE_coalesced_delay_2_0_v_s_0;
    wire [0:0] SE_coalesced_delay_2_0_s_tv_0;
    wire [0:0] SE_coalesced_delay_2_0_backEN;
    wire [0:0] SE_coalesced_delay_2_0_backStall;
    wire [0:0] SE_coalesced_delay_2_0_V0;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_wireValid;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_backStall;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_V0;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_wireValid;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_backStall;
    wire [0:0] SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_V0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_wireValid;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and0;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and1;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and2;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and3;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and4;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and5;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and6;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and7;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall;
    wire [0:0] SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_V0;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_in;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_in;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_out;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_out;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_in;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_in;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_out;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_out;
    wire bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_i_valid;
    reg [0:0] SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid;
    reg [0:0] SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_data0;
    wire [0:0] SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall;
    wire [0:0] SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V;
    wire [0:0] SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_D0;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_i_valid;
    reg [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid;
    reg [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_data0;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_D0;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_i_valid;
    reg [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid;
    reg [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_data0;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V;
    wire [0:0] SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_D0;
    wire [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_i_valid;
    reg [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid;
    reg [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data0;
    reg [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data1;
    wire [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_backStall;
    wire [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V;
    wire [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_D0;
    wire [0:0] SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_i_valid;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_valid;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_and0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data0;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data1;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data2;
    reg [0:0] SR_SE_out_coalesced_delay_0_fifo_r_data3;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_V;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D0;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D1;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D2;
    wire [0:0] SR_SE_out_coalesced_delay_0_fifo_D3;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_i_valid;
    reg [0:0] SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid;
    reg [0:0] SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_data0;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backStall;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_V;
    wire [0:0] SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_D0;
    wire [0:0] SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_i_valid;
    reg [0:0] SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid;
    reg [0:0] SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_data0;
    wire [0:0] SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backStall;
    wire [0:0] SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_V;
    wire [0:0] SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data1;
    reg [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data2;
    reg [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data3;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data4;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data5;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D1;
    wire [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D2;
    wire [4:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D3;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D4;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D5;
    wire [0:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0;
    reg [59:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data1;
    wire [0:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_D0;
    wire [59:0] SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data2;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data3;
    reg [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data4;
    reg [63:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data5;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D3;
    wire [0:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D4;
    wire [63:0] SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D5;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_and1;
    reg [4:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data0;
    reg [4:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_V;
    wire [4:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D0;
    wire [4:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D2;
    wire [0:0] SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;
    reg [0:0] SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid;
    reg [59:0] SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0;
    wire [0:0] SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall;
    wire [0:0] SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    wire [59:0] SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_i_valid;
    reg [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and0;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and1;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and2;
    reg [63:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data0;
    reg [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data1;
    reg [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data2;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_V;
    wire [63:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D0;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D1;
    wire [0:0] SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D2;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_i_valid;
    reg [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid;
    reg [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_data0;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backStall;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V;
    wire [0:0] SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_V;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_D0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_i_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid;
    reg [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_data0;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backStall;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V;
    wire [0:0] SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_D0;
    wire [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_i_valid;
    reg [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid;
    wire [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_and0;
    reg [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data0;
    reg [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data1;
    reg [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data2;
    reg [1:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data3;
    wire [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall;
    wire [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_V;
    wire [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D0;
    wire [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D1;
    wire [0:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D2;
    wire [1:0] SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D3;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_i_valid;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_and0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data0;
    reg [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data1;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_V;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_D0;
    wire [0:0] SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_D1;


    // SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q(STALLENABLE,657)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_stall | ~ (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_wireValid = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_V;

    // leftShiftStage0Idx1Rng1_uid248_i_unnamed_jacobi_1d0_shift_x(BITSELECT,247)@103
    assign leftShiftStage0Idx1Rng1_uid248_i_unnamed_jacobi_1d0_shift_x_in = redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_q[30:0];
    assign leftShiftStage0Idx1Rng1_uid248_i_unnamed_jacobi_1d0_shift_x_b = leftShiftStage0Idx1Rng1_uid248_i_unnamed_jacobi_1d0_shift_x_in[30:0];

    // leftShiftStage0Idx1_uid249_i_unnamed_jacobi_1d0_shift_x(BITJOIN,248)@103
    assign leftShiftStage0Idx1_uid249_i_unnamed_jacobi_1d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid248_i_unnamed_jacobi_1d0_shift_x_b, GND_q};

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x(MUX,250)@103
    assign leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_s or redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_q or leftShiftStage0Idx1_uid249_i_unnamed_jacobi_1d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_s)
            1'b0 : leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_q = redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_q;
            1'b1 : leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_q = leftShiftStage0Idx1_uid249_i_unnamed_jacobi_1d0_shift_x_q;
            default : leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_q = 32'b0;
        endcase
    end

    // i_unnamed_jacobi_1d36_vt_select_31(BITSELECT,141)@103
    assign i_unnamed_jacobi_1d36_vt_select_31_b = leftShiftStage0_uid251_i_unnamed_jacobi_1d0_shift_x_q[31:1];

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // i_unnamed_jacobi_1d36_vt_join(BITJOIN,140)@103
    assign i_unnamed_jacobi_1d36_vt_join_q = {i_unnamed_jacobi_1d36_vt_select_31_b, GND_q};

    // bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25(BITJOIN,466)
    assign bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_q = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25(BITSELECT,467)
    assign bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_q[31:0]);

    // bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28(BITJOIN,469)
    assign bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_q = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28(BITSELECT,470)
    assign bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_q[31:0]);

    // i_reduction_jacobi_1d_6_jacobi_1d34(ADD,126)@101
    assign i_reduction_jacobi_1d_6_jacobi_1d34_a = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_b};
    assign i_reduction_jacobi_1d_6_jacobi_1d34_b = {1'b0, bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_b};
    assign i_reduction_jacobi_1d_6_jacobi_1d34_o = $unsigned(i_reduction_jacobi_1d_6_jacobi_1d34_a) + $unsigned(i_reduction_jacobi_1d_6_jacobi_1d34_b);
    assign i_reduction_jacobi_1d_6_jacobi_1d34_q = i_reduction_jacobi_1d_6_jacobi_1d34_o[32:0];

    // bgTrunc_i_reduction_jacobi_1d_6_jacobi_1d34_sel_x(BITSELECT,5)@101
    assign bgTrunc_i_reduction_jacobi_1d_6_jacobi_1d34_sel_x_b = i_reduction_jacobi_1d_6_jacobi_1d34_q[31:0];

    // bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33(BITJOIN,463)
    assign bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_q = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_readdata;

    // bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33(BITSELECT,464)
    assign bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_b = $unsigned(bubble_join_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_q[31:0]);

    // join_for_coalesced_delay_2(BITJOIN,411)
    assign join_for_coalesced_delay_2_q = {bgTrunc_i_reduction_jacobi_1d_6_jacobi_1d34_sel_x_b, bubble_select_i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_b};

    // coalesced_delay_2_0(REG,446)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            coalesced_delay_2_0_q <= $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_coalesced_delay_2_0_backEN == 1'b1)
        begin
            coalesced_delay_2_0_q <= $unsigned(join_for_coalesced_delay_2_q);
        end
    end

    // sel_for_coalesced_delay_2(BITSELECT,412)
    assign sel_for_coalesced_delay_2_b = $unsigned(coalesced_delay_2_0_q[31:0]);
    assign sel_for_coalesced_delay_2_c = $unsigned(coalesced_delay_2_0_q[63:32]);

    // i_reduction_jacobi_1d_7_jacobi_1d35(ADD,127)@102
    assign i_reduction_jacobi_1d_7_jacobi_1d35_a = {1'b0, sel_for_coalesced_delay_2_b};
    assign i_reduction_jacobi_1d_7_jacobi_1d35_b = {1'b0, sel_for_coalesced_delay_2_c};
    assign i_reduction_jacobi_1d_7_jacobi_1d35_o = $unsigned(i_reduction_jacobi_1d_7_jacobi_1d35_a) + $unsigned(i_reduction_jacobi_1d_7_jacobi_1d35_b);
    assign i_reduction_jacobi_1d_7_jacobi_1d35_q = i_reduction_jacobi_1d_7_jacobi_1d35_o[32:0];

    // bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x(BITSELECT,6)@102
    assign bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b = i_reduction_jacobi_1d_7_jacobi_1d35_q[31:0];

    // redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0(REG,443)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backEN == 1'b1)
        begin
            redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_q <= $unsigned(bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b);
        end
    end

    // i_mul_add19_jacobi_1d37(ADD,117)@103
    assign i_mul_add19_jacobi_1d37_a = {1'b0, redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_q};
    assign i_mul_add19_jacobi_1d37_b = {1'b0, i_unnamed_jacobi_1d36_vt_join_q};
    assign i_mul_add19_jacobi_1d37_o = $unsigned(i_mul_add19_jacobi_1d37_a) + $unsigned(i_mul_add19_jacobi_1d37_b);
    assign i_mul_add19_jacobi_1d37_q = i_mul_add19_jacobi_1d37_o[32:0];

    // bgTrunc_i_mul_add19_jacobi_1d37_sel_x(BITSELECT,4)@103
    assign bgTrunc_i_mul_add19_jacobi_1d37_sel_x_b = i_mul_add19_jacobi_1d37_q[31:0];

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43(STALLENABLE,612)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_wireValid = i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_valid_out;

    // redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(REG,438)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b1)
        begin
            redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_D0);
        end
    end

    // redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1(REG,439)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b1)
        begin
            redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q <= $unsigned(SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_D0);
        end
    end

    // bubble_join_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo(BITJOIN,541)
    assign bubble_join_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_q = redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_data_out;

    // bubble_select_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo(BITSELECT,542)
    assign bubble_select_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_b = $unsigned(bubble_join_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_q[0:0]);

    // rightShiftStage0Idx1Rng1_uid239_i_next_initerations26_jacobi_1d0_shift_x(BITSELECT,238)@132
    assign rightShiftStage0Idx1Rng1_uid239_i_next_initerations26_jacobi_1d0_shift_x_b = bubble_select_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_b[1:1];

    // rightShiftStage0Idx1_uid241_i_next_initerations26_jacobi_1d0_shift_x(BITJOIN,240)@132
    assign rightShiftStage0Idx1_uid241_i_next_initerations26_jacobi_1d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid239_i_next_initerations26_jacobi_1d0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5(BITJOIN,499)
    assign bubble_join_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_q = i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5(BITSELECT,500)
    assign bubble_select_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_q[1:0]);

    // rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x(MUX,242)@132
    assign rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_b or rightShiftStage0Idx1_uid241_i_next_initerations26_jacobi_1d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_s)
            1'b0 : rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_b;
            1'b1 : rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_q = rightShiftStage0Idx1_uid241_i_next_initerations26_jacobi_1d0_shift_x_q;
            default : rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_q = 2'b0;
        endcase
    end

    // i_next_initerations26_jacobi_1d6_vt_select_0(BITSELECT,121)@132
    assign i_next_initerations26_jacobi_1d6_vt_select_0_b = rightShiftStage0_uid243_i_next_initerations26_jacobi_1d0_shift_x_q[0:0];

    // i_next_initerations26_jacobi_1d6_vt_join(BITJOIN,120)@132
    assign i_next_initerations26_jacobi_1d6_vt_join_q = {GND_q, i_next_initerations26_jacobi_1d6_vt_select_0_b};

    // i_last_initeration28_jacobi_1d8_sel_x(BITSELECT,23)@132
    assign i_last_initeration28_jacobi_1d8_sel_x_b = i_next_initerations26_jacobi_1d6_vt_join_q[0:0];

    // SE_i_next_initerations26_jacobi_1d6_vt_select_0(STALLENABLE,630)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg0 <= '0;
            SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg0 <= SE_i_next_initerations26_jacobi_1d6_vt_select_0_toReg0;
            // Successor 1
            SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg1 <= SE_i_next_initerations26_jacobi_1d6_vt_select_0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_stall_out) & SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireValid) | SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg0;
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed1 = (~ (i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_stall_out) & SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireValid) | SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg1;
    // Consuming
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_StallValid = SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall & SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireValid;
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_toReg0 = SE_i_next_initerations26_jacobi_1d6_vt_select_0_StallValid & SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed0;
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_toReg1 = SE_i_next_initerations26_jacobi_1d6_vt_select_0_StallValid & SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_or0 = SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed0;
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireStall = ~ (SE_i_next_initerations26_jacobi_1d6_vt_select_0_consumed1 & SE_i_next_initerations26_jacobi_1d6_vt_select_0_or0);
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall = SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_V0 = SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireValid & ~ (SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg0);
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_V1 = SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireValid & ~ (SE_i_next_initerations26_jacobi_1d6_vt_select_0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations26_jacobi_1d6_vt_select_0_wireValid = SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_V;

    // SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0(STALLREG,897)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid <= 1'b0;
            SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data0 <= 1'bx;
            SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data1 <= 1'bx;
            SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data2 <= 1'bx;
            SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data3 <= 2'bxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid <= SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall & (SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid | SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_i_valid);

            if (SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data0 <= i_last_initeration28_jacobi_1d8_sel_x_b;
                SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data1 <= $unsigned(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b);
                SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data2 <= $unsigned(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b);
                SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data3 <= i_next_initerations26_jacobi_1d6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_and0 = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_V1;
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_i_valid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V0 & SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall = SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid | ~ (SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_i_valid);

    // Valid
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_V = SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid : SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_i_valid;

    // Data0
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D0 = SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data0 : i_last_initeration28_jacobi_1d8_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D1 = SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data1 : bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b;
    // Data2
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D2 = SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data2 : bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b;
    // Data3
    assign SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D3 = SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_valid == 1'b1 ? SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_r_data3 : i_next_initerations26_jacobi_1d6_vt_join_q;

    // bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg(STALLFIFO,877)
    assign bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_V0;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(3),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5(STALLENABLE,596)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed1 = (~ (SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall) & SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireValid) | SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_StallValid = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_backStall & SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_toReg0 = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_toReg1 = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_StallValid & SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_or0 = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_consumed1 & SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_or0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_backStall = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_V0 = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_V1 = SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_wireValid = i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_valid_out;

    // SE_out_i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7(STALLENABLE,620)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_wireValid = i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_valid_out;

    // i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7(BLACKBOX,112)@132
    // in in_stall_in@20000000
    // out out_data_out@133
    // out out_feedback_out_17@20000000
    // out out_feedback_valid_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@133
    jacobi_1d_i_llvm_fpga_push_i2_initerations25_push17_0 thei_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7 (
        .in_data_in(SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D3),
        .in_feedback_stall_in_17(i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_feedback_stall_out_17),
        .in_keep_going27(SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_backStall),
        .in_valid_in(SE_i_next_initerations26_jacobi_1d6_vt_select_0_V1),
        .out_data_out(),
        .out_feedback_out_17(i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_feedback_out_17),
        .out_feedback_valid_out_17(i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_feedback_valid_out_17),
        .out_stall_out(i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i2_159(CONSTANT,68)
    assign c_i2_159_q = $unsigned(2'b01);

    // i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5(BLACKBOX,100)@131
    // in in_stall_in@20000000
    // out out_data_out@132
    // out out_feedback_stall_out_17@20000000
    // out out_stall_out@20000000
    // out out_valid_out@132
    jacobi_1d_i_llvm_fpga_pop_i2_initerations25_pop17_0 thei_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5 (
        .in_data_in(c_i2_159_q),
        .in_dir(SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_D0),
        .in_feedback_in_17(i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_feedback_out_17),
        .in_feedback_valid_in_17(i_llvm_fpga_push_i2_initerations25_push17_jacobi_1d7_out_feedback_valid_out_17),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_backStall),
        .in_valid_in(SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_data_out),
        .out_feedback_stall_out_17(i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_feedback_stall_out_17),
        .out_stall_out(i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0(REG,441)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backEN == 1'b1)
        begin
            redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_q <= $unsigned(SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_D1);
        end
    end

    // SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58(STALLENABLE,613)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_V0 = SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_backStall = i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_and0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V2;
    assign SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_wireValid = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_V1 & SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_and0;

    // SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57(STALLENABLE,592)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_backStall) & SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireValid) | SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_StallValid = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_backStall & SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_toReg0 = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_toReg1 = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_StallValid & SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_or0 = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_consumed1 & SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_or0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_backStall = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_V0 = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_V1 = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_wireValid = i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58(STALLENABLE,614)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_wireValid = i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57(BITJOIN,492)
    assign bubble_join_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_q = i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57(BITSELECT,493)
    assign bubble_select_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_q[0:0]);

    // i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58(BLACKBOX,109)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    jacobi_1d_i_llvm_fpga_push_i1_notcmp3951_push20_0 thei_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_b),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_feedback_stall_out_20),
        .in_keep_going27(redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_V0),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1(REG,442)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backEN == 1'b1)
        begin
            redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_q <= $unsigned(SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_D0);
        end
    end

    // bubble_join_coalesced_delay_1_fifo(BITJOIN,547)
    assign bubble_join_coalesced_delay_1_fifo_q = coalesced_delay_1_fifo_data_out;

    // bubble_select_coalesced_delay_1_fifo(BITSELECT,548)
    assign bubble_select_coalesced_delay_1_fifo_b = $unsigned(bubble_join_coalesced_delay_1_fifo_q[1:0]);

    // sel_for_coalesced_delay_1(BITSELECT,409)
    assign sel_for_coalesced_delay_1_b = $unsigned(bubble_select_coalesced_delay_1_fifo_b[0:0]);
    assign sel_for_coalesced_delay_1_c = $unsigned(bubble_select_coalesced_delay_1_fifo_b[1:1]);

    // i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57(BLACKBOX,98)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    jacobi_1d_i_llvm_fpga_pop_i1_notcmp3951_pop20_0 thei_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57 (
        .in_data_in(sel_for_coalesced_delay_1_c),
        .in_dir(redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_q),
        .in_feedback_in_20(i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56(STALLENABLE,601)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_V0 = SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_backStall = i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_and0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V0;
    assign SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_wireValid = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_V1 & SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_and0;

    // SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55(STALLENABLE,582)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_backStall) & SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireValid) | SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_StallValid = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_backStall & SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_toReg0 = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_toReg1 = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_StallValid & SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_or0 = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_consumed1 & SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_or0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_backStall = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_V0 = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_V1 = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_wireValid = i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56(STALLENABLE,602)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_wireValid = i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55(BITJOIN,476)
    assign bubble_join_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_q = i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55(BITSELECT,477)
    assign bubble_select_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_q[0:0]);

    // i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56(BLACKBOX,103)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    jacobi_1d_i_llvm_fpga_push_i1_exitcond1749_push19_0 thei_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_feedback_stall_out_19),
        .in_keep_going27(redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55(BLACKBOX,93)@133
    // in in_stall_in@20000000
    // out out_data_out@134
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@134
    jacobi_1d_i_llvm_fpga_pop_i1_exitcond1749_pop19_0 thei_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55 (
        .in_data_in(sel_for_coalesced_delay_1_b),
        .in_dir(redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_backStall),
        .in_valid_in(SE_out_coalesced_delay_1_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_stall_entry(STALLENABLE,640)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = jacobi_1d_B4_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // bubble_join_stall_entry(BITJOIN,510)
    assign bubble_join_stall_entry_q = {in_notcmp3959, in_memdep_phi6_pop1362, in_memdep_phi4_pop1261, in_memdep_phi1_pop1160, in_forked24, in_exitcond1758};

    // bubble_select_stall_entry(BITSELECT,511)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);
    assign bubble_select_stall_entry_c = $unsigned(bubble_join_stall_entry_q[1:1]);
    assign bubble_select_stall_entry_d = $unsigned(bubble_join_stall_entry_q[2:2]);
    assign bubble_select_stall_entry_e = $unsigned(bubble_join_stall_entry_q[3:3]);
    assign bubble_select_stall_entry_f = $unsigned(bubble_join_stall_entry_q[4:4]);
    assign bubble_select_stall_entry_g = $unsigned(bubble_join_stall_entry_q[5:5]);

    // jacobi_1d_B4_merge_reg_aunroll_x(BLACKBOX,59)@0
    // in in_stall_in@20000000
    // out out_data_out_0_tpl@1
    // out out_data_out_1_tpl@1
    // out out_data_out_2_tpl@1
    // out out_data_out_3_tpl@1
    // out out_data_out_4_tpl@1
    // out out_data_out_5_tpl@1
    // out out_stall_out@20000000
    // out out_valid_out@1
    jacobi_1d_B4_merge_reg thejacobi_1d_B4_merge_reg_aunroll_x (
        .in_data_in_0_tpl(bubble_select_stall_entry_c),
        .in_data_in_1_tpl(bubble_select_stall_entry_b),
        .in_data_in_2_tpl(bubble_select_stall_entry_g),
        .in_data_in_3_tpl(bubble_select_stall_entry_d),
        .in_data_in_4_tpl(bubble_select_stall_entry_e),
        .in_data_in_5_tpl(bubble_select_stall_entry_f),
        .in_stall_in(SE_out_jacobi_1d_B4_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .out_data_out_0_tpl(jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl),
        .out_data_out_1_tpl(jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_1_tpl),
        .out_data_out_2_tpl(jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_2_tpl),
        .out_data_out_3_tpl(jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_3_tpl),
        .out_data_out_4_tpl(jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_4_tpl),
        .out_data_out_5_tpl(jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_5_tpl),
        .out_stall_out(jacobi_1d_B4_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(jacobi_1d_B4_merge_reg_aunroll_x_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_jacobi_1d_B4_merge_reg_aunroll_x(BITJOIN,448)
    assign bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q = {jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_5_tpl, jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_4_tpl, jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_3_tpl, jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_2_tpl, jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_1_tpl, jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl};

    // bubble_select_jacobi_1d_B4_merge_reg_aunroll_x(BITSELECT,449)
    assign bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_b = $unsigned(bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q[0:0]);
    assign bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_c = $unsigned(bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q[1:1]);
    assign bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_d = $unsigned(bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q[2:2]);
    assign bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_e = $unsigned(bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q[3:3]);
    assign bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_f = $unsigned(bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q[4:4]);
    assign bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_g = $unsigned(bubble_join_jacobi_1d_B4_merge_reg_aunroll_x_q[5:5]);

    // join_for_coalesced_delay_1(BITJOIN,408)
    assign join_for_coalesced_delay_1_q = {bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_d, bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_c};

    // join_for_coalesced_delay_0(BITJOIN,405)
    assign join_for_coalesced_delay_0_q = {bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_g, bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_f};

    // coalesced_delay_0_fifo(STALLFIFO,444)
    assign coalesced_delay_0_fifo_valid_in = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V4;
    assign coalesced_delay_0_fifo_stall_in = SR_SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
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

    // c_i32_163(CONSTANT,70)
    assign c_i32_163_q = $unsigned(32'b11111111111111111111111111111111);

    // bubble_join_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14(BITJOIN,503)
    assign bubble_join_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_q = i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14(BITSELECT,504)
    assign bubble_select_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_b = $unsigned(bubble_join_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_q[31:0]);

    // i_sub_jacobi_1d15(ADD,128)@66 + 1
    assign i_sub_jacobi_1d15_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_b};
    assign i_sub_jacobi_1d15_b = {1'b0, c_i32_163_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_sub_jacobi_1d15_o <= 33'b0;
        end
        else if (SE_i_add5_jacobi_1d29_backEN == 1'b1)
        begin
            i_sub_jacobi_1d15_o <= $unsigned(i_sub_jacobi_1d15_a) + $unsigned(i_sub_jacobi_1d15_b);
        end
    end
    assign i_sub_jacobi_1d15_q = i_sub_jacobi_1d15_o[32:0];

    // i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,309)@67
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b = $unsigned(i_sub_jacobi_1d15_q[31:31]);

    // i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,308)@67
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_sub_jacobi_1d15_q[31:0]);

    // i_mptr_bitcast_index63_jacobi_1d0_c_i2_01_x(CONSTANT,27)
    assign i_mptr_bitcast_index63_jacobi_1d0_c_i2_01_x_q = $unsigned(2'b00);

    // i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,335)@67
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1_b, i_mptr_bitcast_index63_jacobi_1d0_c_i2_01_x_q};

    // SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2(STALLENABLE,739)
    // Valid signal propagation
    assign SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_V0 = SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_backStall = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_stall_out | ~ (SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_wireValid = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12(BLACKBOX,86)@66
    // in in_stall_in@20000000
    // out out_dest_data_out_0_0@67
    // out out_stall_out@20000000
    // out out_valid_out@67
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1025s_c0000c_mm_hosts_a_17820_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12 (
        .in_intel_reserved_ffwd_0_0(in_intel_reserved_ffwd_0_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_backStall),
        .in_valid_in(SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_V0),
        .out_dest_data_out_0_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_dest_data_out_0_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12(BITJOIN,453)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_dest_data_out_0_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12(BITSELECT,454)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_q[63:0]);

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0(BITSELECT,290)@67
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_b[59:0]);

    // i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2(ADD,269)@67 + 1
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_b};
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q = i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_o[59:0];

    // SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLENABLE,691)
    // Valid signal propagation
    assign SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 = SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLREG,892)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_V = SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q;

    // redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0(REG,415)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b1)
        begin
            redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q <= $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b);
        end
    end

    // i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,341)@68
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q, redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_q};

    // SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0(STALLENABLE,687)
    // Valid signal propagation
    assign SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0 = SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN = ~ (SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0 = SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V2;
    // Backward Stall generation
    assign SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall = ~ (SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN == 1'b0)
            begin
                SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 & SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_R_v_0 <= SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_v_s_0;
            end

        end
    end

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0(BITSELECT,292)@67
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_b[63:60]);

    // redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0(REG,414)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backEN == 1'b1)
        begin
            redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b);
        end
    end

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,294)@68
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_q};

    // SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c(STALLENABLE,674)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_backStall = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall | ~ (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_wireValid = SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0;

    // i_unnamed_jacobi_1d26_vt_const_63(CONSTANT,132)
    assign i_unnamed_jacobi_1d26_vt_const_63_q = $unsigned(32'b00000000000000000000000000000000);

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2(BITSELECT,297)
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b = i_unnamed_jacobi_1d26_vt_const_63_q[25:0];

    // i_add5_jacobi_1d29(ADD,77)@66 + 1
    assign i_add5_jacobi_1d29_a = {1'b0, bubble_select_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_b};
    assign i_add5_jacobi_1d29_b = {1'b0, c_i32_162_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_add5_jacobi_1d29_o <= 33'b0;
        end
        else if (SE_i_add5_jacobi_1d29_backEN == 1'b1)
        begin
            i_add5_jacobi_1d29_o <= $unsigned(i_add5_jacobi_1d29_a) + $unsigned(i_add5_jacobi_1d29_b);
        end
    end
    assign i_add5_jacobi_1d29_q = i_add5_jacobi_1d29_o[32:0];

    // i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1(BITSELECT,360)@67
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1_b = $unsigned(i_add5_jacobi_1d29_q[31:0]);

    // i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,362)@67
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_tessel0_1_b, i_mptr_bitcast_index63_jacobi_1d0_c_i2_01_x_q};

    // i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2(ADD,287)@67 + 1
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_b};
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q = i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_o[59:0];

    // redist15_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_1_0(REG,423)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist15_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_1_0_q <= $unsigned(32'b00000000000000000000000000000000);
        end
        else if (SE_i_add5_jacobi_1d29_backEN == 1'b1)
        begin
            redist15_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_1_0_q <= $unsigned(bubble_select_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_b);
        end
    end

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,298)@67
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, redist15_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_1_0_q, i_mptr_bitcast_index63_jacobi_1d0_c_i2_01_x_q};

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2(ADD,260)@67 + 1
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_b};
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q = i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_o[59:0];

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0(BITSELECT,299)
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_b = i_unnamed_jacobi_1d26_vt_const_63_q[29:26];

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c(BITJOIN,301)@68
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q = {GND_q, i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_b};

    // bubble_join_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo(BITJOIN,520)
    assign bubble_join_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_q = redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_data_out;

    // bubble_select_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo(BITSELECT,521)
    assign bubble_select_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_b = $unsigned(bubble_join_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_q[31:0]);

    // i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(BITJOIN,350)@101
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q = {i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_b, bubble_select_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_b, i_mptr_bitcast_index63_jacobi_1d0_c_i2_01_x_q};

    // SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1(STALLENABLE,737)
    // Valid signal propagation
    assign SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_V0 = SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_backStall = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_stall_out | ~ (SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_wireValid = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_out;

    // redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo(STALLFIFO,434)
    assign redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_in = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V2;
    assign redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall;
    assign redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_data_in = bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_b;
    assign redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_in_bitsignaltemp = redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_in[0];
    assign redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_in_bitsignaltemp = redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_in[0];
    assign redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_out[0] = redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_out_bitsignaltemp;
    assign redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_out[0] = redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(34),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(64),
        .IMPL("ram")
    ) theredist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo (
        .valid_in(redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_in_bitsignaltemp),
        .stall_in(redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_b),
        .valid_out(redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_out_bitsignaltemp),
        .stall_out(redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_out_bitsignaltemp),
        .data_out(redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(STALLENABLE,686)
    // Valid signal propagation
    assign SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0 = SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN = ~ (SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0 = SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V1;
    // Backward Stall generation
    assign SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall = ~ (SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b0)
            begin
                SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 & SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_s_tv_0;
            end
            else
            begin
                SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_R_v_0 <= SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10(STALLENABLE,570)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed0 = (~ (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed1 = (~ (SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed2 = (~ (redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_stall_out) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_or1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V2 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_valid_out;

    // i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10(BLACKBOX,87)@100
    // in in_stall_in@20000000
    // out out_dest_data_out_1_0@101
    // out out_stall_out@20000000
    // out out_valid_out@101
    jacobi_1d_i_llvm_fpga_ffwd_dest_p1025s_c0000ihc_mm_hosts_b8021_0 thei_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10 (
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_stall_in(SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_backStall),
        .in_valid_in(SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_V0),
        .out_dest_data_out_1_0(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0),
        .out_stall_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_stall_out),
        .out_valid_out(i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10(BITJOIN,456)
    assign bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_q = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0;

    // bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10(BITSELECT,457)
    assign bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_b = $unsigned(bubble_join_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_q[63:0]);

    // i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select(BITSELECT,366)@101
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_b[59:0]);
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c = $unsigned(bubble_select_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_b[63:60]);

    // i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2(ADD,278)@101 + 1
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_a = {1'b0, i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_b};
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_b = {1'b0, i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_q};
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_o <= 61'b0;
        end
        else if (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_o <= $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_a) + $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_b);
        end
    end
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_c[0] = i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_o[60];
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q = i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_o[59:0];

    // redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0(REG,413)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(4'b0000);
        end
        else if (SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_backEN == 1'b1)
        begin
            redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q <= $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c);
        end
    end

    // i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c(BITJOIN,346)@102
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q = {GND_q, redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_q};

    // SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c(STALLENABLE,675)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backStall | ~ (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid = SE_redist0_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_tessel0_0_merged_bit_select_c_1_0_V0;

    // SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLREG,887)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_V = SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;

    assign SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q;

    // SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2(STALLENABLE,667)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V1 = 1'b1;

    // SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo(STALLENABLE,700)
    // Valid signal propagation
    assign SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_V0 = SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_backStall = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backStall | ~ (SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_and0 = redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_out;
    assign SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_wireValid = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V1 & SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_and0;

    // SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2(STALLENABLE,658)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_1 = SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_and0 = SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_V0 & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_v_s_0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_V0 & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2(STALLREG,886)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V1 & SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index71_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_c;

    // SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0(STALLENABLE,669)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V0 = 1'b1;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V1 = 1'b1;

    // i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2(ADD,288)@68 + 1
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D5;
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D1}, 1'b1 };
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D3}, i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_q = i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_o[5:1];

    // redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0(REG,416)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index_jacobi_1d0_add_x_BitJoin_for_q(BITJOIN,289)@69
    assign i_mptr_bitcast_index_jacobi_1d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index_jacobi_1d0_add_x_p2_of_2_q, redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,42)@69
    assign i_mptr_bitcast_index_jacobi_1d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index_jacobi_1d0_add_x_BitJoin_for_q_q[63:0];

    // bubble_join_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0(BITJOIN,496)
    assign bubble_join_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_q = i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0(BITSELECT,497)
    assign bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b = $unsigned(bubble_join_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_q[1:0]);

    // i_first_cleanup32_jacobi_1d1_sel_x(BITSELECT,22)@69
    assign i_first_cleanup32_jacobi_1d1_sel_x_b = bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b[0:0];

    // i_first_cleanup_xor33_jacobi_1d2(LOGICAL,83)@69
    assign i_first_cleanup_xor33_jacobi_1d2_q = i_first_cleanup32_jacobi_1d1_sel_x_b ^ VCC_q;

    // SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19(STALLENABLE,606)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_wireValid = i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_valid_out;

    // bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo(BITJOIN,526)
    assign bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_q = redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_data_out;

    // bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo(BITSELECT,527)
    assign bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_b = $unsigned(bubble_join_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19(BLACKBOX,105)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_out_21@20000000
    // out out_feedback_valid_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    jacobi_1d_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_0 thei_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19 (
        .in_data_in(bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_b),
        .in_feedback_stall_in_21(i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_feedback_stall_out_21),
        .in_keep_going27(bubble_select_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_V0),
        .out_data_out(),
        .out_feedback_out_21(i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_feedback_out_21),
        .out_feedback_valid_out_21(i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_feedback_valid_out_21),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19(STALLENABLE,605)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_backStall = i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_and0 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_wireValid = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18(BITJOIN,480)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_q = i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18(BITSELECT,481)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_q[0:0]);

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18(STALLENABLE,584)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_backStall = redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_out | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_wireValid = i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_valid_out;

    // redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo(STALLFIFO,428)
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_V0;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_in = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_backStall;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_b;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_in[0];
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_in_bitsignaltemp = redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_in[0];
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_out[0] = redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_out_bitsignaltemp;
    assign redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_out[0] = redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo (
        .valid_in(redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_b),
        .valid_out(redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo(STALLENABLE,706)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg0 <= '0;
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg0 <= SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_toReg0;
            // Successor 1
            SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg1 <= SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_backStall) & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg0;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed1 = (~ (SE_i_reduction_jacobi_1d_0_jacobi_1d22_backStall) & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireValid) | SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg1;
    // Consuming
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_StallValid = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_backStall & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireValid;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_toReg0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_toReg1 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_StallValid & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_or0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed0;
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireStall = ~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_consumed1 & SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_or0);
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_backStall = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_V0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg0);
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_V1 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireValid & ~ (SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_wireValid = redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20(BITJOIN,486)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_q = i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20(BITSELECT,487)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_q[0:0]);

    // bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo(BITJOIN,523)
    assign bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_q = redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_data_out;

    // bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo(BITSELECT,524)
    assign bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_b = $unsigned(bubble_join_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_q[0:0]);

    // redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0(REG,426)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backEN == 1'b1)
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_q <= $unsigned(bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_b);
        end
    end

    // SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1(STALLENABLE,704)
    // Valid signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_V0 = SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_s_tv_0 = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall & SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backEN = ~ (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_v_s_0 = SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backEN & SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_V;
    // Backward Stall generation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backStall = ~ (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backEN == 1'b0)
            begin
                SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_R_v_0 & SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_s_tv_0;
            end
            else
            begin
                SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_v_s_0;
            end

        end
    end

    // SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1(STALLREG,884)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid <= 1'b0;
            SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid <= SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backStall & (SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid | SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_i_valid);

            if (SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_data0 <= $unsigned(redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_i_valid = SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_V0;
    // Stall signal propagation
    assign SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backStall = SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid | ~ (SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_i_valid);

    // Valid
    assign SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_V = SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid == 1'b1 ? SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid : SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_i_valid;

    assign SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_D0 = SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_valid == 1'b1 ? SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_r_data0 : redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_q;

    // SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0(STALLENABLE,703)
    // Valid signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_V0 = SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_R_v_0;
    // Stall signal propagation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_s_tv_0 = SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backStall & SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_R_v_0;
    // Backward Enable generation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backEN = ~ (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_v_s_0 = SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backEN & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_V1;
    // Backward Stall generation
    assign SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backStall = ~ (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backEN == 1'b0)
            begin
                SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_R_v_0 & SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_s_tv_0;
            end
            else
            begin
                SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_R_v_0 <= SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21(STALLENABLE,610)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_wireValid = i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_valid_out;

    // i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21(BLACKBOX,107)@132
    // in in_stall_in@20000000
    // out out_data_out@133
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@133
    jacobi_1d_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_0 thei_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21 (
        .in_data_in(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_D0),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_feedback_stall_out_23),
        .in_keep_going27(SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21(STALLENABLE,609)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall = i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_wireValid = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_V;

    // SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21(STALLREG,898)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid <= 1'b0;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data0 <= 1'bx;
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid <= SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall & (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid | SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_i_valid);

            if (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data0 <= $unsigned(bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_b);
                SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data1 <= $unsigned(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_and0 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_V0;
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_i_valid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V1 & SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_and0;
    // Stall signal propagation
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid | ~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_i_valid);

    // Valid
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_V = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid : SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_i_valid;

    // Data0
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_D0 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data0 : bubble_select_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_b;
    // Data1
    assign SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_D1 = SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_valid == 1'b1 ? SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_r_data1 : bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b;

    // SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo(STALLENABLE,702)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg0 <= '0;
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg0 <= SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_toReg0;
            // Successor 1
            SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg1 <= SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed0 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall) & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg0;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed1 = (~ (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_0_backStall) & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireValid) | SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg1;
    // Consuming
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_StallValid = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_backStall & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireValid;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_toReg0 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_toReg1 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_StallValid & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_or0 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed0;
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireStall = ~ (SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_consumed1 & SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_or0);
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_backStall = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_V0 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg0);
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_V1 = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireValid & ~ (SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_wireValid = redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_out;

    // redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo(STALLFIFO,425)
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_in = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V2;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_in = SE_out_redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_backStall;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_data_in = bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_b;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_in[0];
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_in_bitsignaltemp = redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_in[0];
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_out[0] = redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_out_bitsignaltemp;
    assign redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_out[0] = redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo (
        .valid_in(redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_b),
        .valid_out(redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40(STALLENABLE,608)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_wireValid = i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_valid_out;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39(BITJOIN,483)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_q = i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39(BITSELECT,484)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40(BLACKBOX,106)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_out_22@20000000
    // out out_feedback_valid_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    jacobi_1d_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_0 thei_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40 (
        .in_data_in(bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_b),
        .in_feedback_stall_in_22(i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_feedback_stall_out_22),
        .in_keep_going27(bubble_select_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_V0),
        .out_data_out(),
        .out_feedback_out_22(i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_feedback_out_22),
        .out_feedback_valid_out_22(i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_feedback_valid_out_22),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40(STALLENABLE,607)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_backStall = i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_and0 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V2;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_wireValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_V0 & SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_and0;

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,728)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_0_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_0_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_0_fifo_fromReg0 <= SE_out_coalesced_delay_0_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_0_fifo_fromReg1 <= SE_out_coalesced_delay_0_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_0_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg0;
    assign SE_out_coalesced_delay_0_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_stall_out) & SE_out_coalesced_delay_0_fifo_wireValid) | SE_out_coalesced_delay_0_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_0_fifo_StallValid = SE_out_coalesced_delay_0_fifo_backStall & SE_out_coalesced_delay_0_fifo_wireValid;
    assign SE_out_coalesced_delay_0_fifo_toReg0 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_toReg1 = SE_out_coalesced_delay_0_fifo_StallValid & SE_out_coalesced_delay_0_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_or0 = SE_out_coalesced_delay_0_fifo_consumed0;
    assign SE_out_coalesced_delay_0_fifo_wireStall = ~ (SE_out_coalesced_delay_0_fifo_consumed1 & SE_out_coalesced_delay_0_fifo_or0);
    assign SE_out_coalesced_delay_0_fifo_backStall = SE_out_coalesced_delay_0_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg0);
    assign SE_out_coalesced_delay_0_fifo_V1 = SE_out_coalesced_delay_0_fifo_wireValid & ~ (SE_out_coalesced_delay_0_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_wireValid = SR_SE_out_coalesced_delay_0_fifo_V;

    // i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39(BLACKBOX,95)@66
    // in in_stall_in@20000000
    // out out_data_out@67
    // out out_feedback_stall_out_22@20000000
    // out out_stall_out@20000000
    // out out_valid_out@67
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_0 thei_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D0),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D1),
        .in_feedback_in_22(i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_feedback_out_22),
        .in_feedback_valid_in_22(i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_out_feedback_valid_out_22),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_data_out),
        .out_feedback_stall_out_22(i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_feedback_stall_out_22),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39(STALLENABLE,586)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed0 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed1 = (~ (SE_i_memdep_phi6_or9_jacobi_1d41_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_wireValid = i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_out_valid_out;

    // SE_i_memdep_phi6_or9_jacobi_1d41(STALLENABLE,626)
    // Valid signal propagation
    assign SE_i_memdep_phi6_or9_jacobi_1d41_V0 = SE_i_memdep_phi6_or9_jacobi_1d41_R_v_0;
    // Stall signal propagation
    assign SE_i_memdep_phi6_or9_jacobi_1d41_s_tv_0 = redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_out & SE_i_memdep_phi6_or9_jacobi_1d41_R_v_0;
    // Backward Enable generation
    assign SE_i_memdep_phi6_or9_jacobi_1d41_backEN = ~ (SE_i_memdep_phi6_or9_jacobi_1d41_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_memdep_phi6_or9_jacobi_1d41_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_V1 & SE_i_memdep_phi6_or9_jacobi_1d41_backEN;
    assign SE_i_memdep_phi6_or9_jacobi_1d41_v_s_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V0 & SE_i_memdep_phi6_or9_jacobi_1d41_and0;
    // Backward Stall generation
    assign SE_i_memdep_phi6_or9_jacobi_1d41_backStall = ~ (SE_i_memdep_phi6_or9_jacobi_1d41_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_memdep_phi6_or9_jacobi_1d41_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_memdep_phi6_or9_jacobi_1d41_backEN == 1'b0)
            begin
                SE_i_memdep_phi6_or9_jacobi_1d41_R_v_0 <= SE_i_memdep_phi6_or9_jacobi_1d41_R_v_0 & SE_i_memdep_phi6_or9_jacobi_1d41_s_tv_0;
            end
            else
            begin
                SE_i_memdep_phi6_or9_jacobi_1d41_R_v_0 <= SE_i_memdep_phi6_or9_jacobi_1d41_v_s_0;
            end

        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20(BLACKBOX,96)@66
    // in in_stall_in@20000000
    // out out_data_out@67
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@67
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_0 thei_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20 (
        .in_data_in(SR_SE_out_coalesced_delay_0_fifo_D3),
        .in_dir(SR_SE_out_coalesced_delay_0_fifo_D2),
        .in_feedback_in_23(i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_backStall),
        .in_valid_in(SE_out_coalesced_delay_0_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20(STALLENABLE,588)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg2 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed0 = (~ (SE_i_memdep_phi6_or9_jacobi_1d41_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed1 = (~ (SE_i_reduction_jacobi_1d_0_jacobi_1d22_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed2 = (~ (redist17_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_65_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed1;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_toReg2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_or1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_or0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_consumed2 & SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_or1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V2 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_wireValid = i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_valid_out;

    // SE_i_reduction_jacobi_1d_0_jacobi_1d22(STALLENABLE,633)
    // Valid signal propagation
    assign SE_i_reduction_jacobi_1d_0_jacobi_1d22_V0 = SE_i_reduction_jacobi_1d_0_jacobi_1d22_R_v_0;
    // Stall signal propagation
    assign SE_i_reduction_jacobi_1d_0_jacobi_1d22_s_tv_0 = SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backStall & SE_i_reduction_jacobi_1d_0_jacobi_1d22_R_v_0;
    // Backward Enable generation
    assign SE_i_reduction_jacobi_1d_0_jacobi_1d22_backEN = ~ (SE_i_reduction_jacobi_1d_0_jacobi_1d22_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_reduction_jacobi_1d_0_jacobi_1d22_and0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_V1 & SE_i_reduction_jacobi_1d_0_jacobi_1d22_backEN;
    assign SE_i_reduction_jacobi_1d_0_jacobi_1d22_v_s_0 = SE_out_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_V1 & SE_i_reduction_jacobi_1d_0_jacobi_1d22_and0;
    // Backward Stall generation
    assign SE_i_reduction_jacobi_1d_0_jacobi_1d22_backStall = ~ (SE_i_reduction_jacobi_1d_0_jacobi_1d22_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_reduction_jacobi_1d_0_jacobi_1d22_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_reduction_jacobi_1d_0_jacobi_1d22_backEN == 1'b0)
            begin
                SE_i_reduction_jacobi_1d_0_jacobi_1d22_R_v_0 <= SE_i_reduction_jacobi_1d_0_jacobi_1d22_R_v_0 & SE_i_reduction_jacobi_1d_0_jacobi_1d22_s_tv_0;
            end
            else
            begin
                SE_i_reduction_jacobi_1d_0_jacobi_1d22_R_v_0 <= SE_i_reduction_jacobi_1d_0_jacobi_1d22_v_s_0;
            end

        end
    end

    // SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0(STALLENABLE,693)
    // Valid signal propagation
    assign SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_V0 = SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_s_tv_0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_backStall & SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backEN = ~ (SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_v_s_0 = SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backEN & SE_i_reduction_jacobi_1d_0_jacobi_1d22_V0;
    // Backward Stall generation
    assign SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backStall = ~ (SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backEN == 1'b0)
            begin
                SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_R_v_0 <= SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_R_v_0 & SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_s_tv_0;
            end
            else
            begin
                SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_R_v_0 <= SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_v_s_0;
            end

        end
    end

    // i_reduction_jacobi_1d_0_jacobi_1d22(LOGICAL,124)@67 + 1
    assign i_reduction_jacobi_1d_0_jacobi_1d22_qi = bubble_select_redist19_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out_65_fifo_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_reduction_jacobi_1d_0_jacobi_1d22_delay ( .xin(i_reduction_jacobi_1d_0_jacobi_1d22_qi), .xout(i_reduction_jacobi_1d_0_jacobi_1d22_q), .ena(SE_i_reduction_jacobi_1d_0_jacobi_1d22_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0(REG,420)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_backEN == 1'b1)
        begin
            redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_q <= $unsigned(i_reduction_jacobi_1d_0_jacobi_1d22_q);
        end
    end

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23(BITJOIN,489)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_q = i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23(BITSELECT,490)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_q[0:0]);

    // i_reduction_jacobi_1d_1_jacobi_1d24(LOGICAL,125)@69
    assign i_reduction_jacobi_1d_1_jacobi_1d24_q = bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_b | redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_q;

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2(ADD,261)@68 + 1
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D4;
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D2}, i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_q = i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_o[5:1];

    // redist11_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q_1_0(REG,419)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist11_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist11_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_D1);
        end
    end

    // i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q(BITJOIN,262)@69
    assign i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_q, redist11_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index63_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,24)@69
    assign i_mptr_bitcast_index63_jacobi_1d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_q[63:0];

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23(STALLENABLE,590)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg0 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg1 <= SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed0 = (~ (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed1 = (~ (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireValid) | SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_StallValid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_backStall & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireValid;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_toReg0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_toReg1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_StallValid & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_or0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed0;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireStall = ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_consumed1 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_or0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_backStall = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_V1 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireValid & ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_wireValid = SE_redist12_i_reduction_jacobi_1d_0_jacobi_1d22_q_2_0_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_and0;

    // bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44(BITJOIN,506)
    assign bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_q = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44(BITSELECT,507)
    assign bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_b = $unsigned(bubble_join_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_q[7:0]);

    // i_exitcond_jacobi_1d45_cmp_nsign(LOGICAL,253)@69
    assign i_exitcond_jacobi_1d45_cmp_nsign_q = $unsigned(~ (bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_b[7:7]));

    // i_notcmp23_jacobi_1d47(LOGICAL,122)@69
    assign i_notcmp23_jacobi_1d47_q = i_exitcond_jacobi_1d45_cmp_nsign_q ^ VCC_q;

    // i_masked36_jacobi_1d54(LOGICAL,115)@69 + 1
    assign i_masked36_jacobi_1d54_qi = i_notcmp23_jacobi_1d47_q & i_first_cleanup32_jacobi_1d1_sel_x_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_masked36_jacobi_1d54_delay ( .xin(i_masked36_jacobi_1d54_qi), .xout(i_masked36_jacobi_1d54_q), .ena(SE_i_masked36_jacobi_1d54_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist14_i_masked36_jacobi_1d54_q_65_fifo(STALLFIFO,422)
    assign redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_in = SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_V0;
    assign redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall;
    assign redist14_i_masked36_jacobi_1d54_q_65_fifo_data_in = i_masked36_jacobi_1d54_q;
    assign redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_in_bitsignaltemp = redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_in[0];
    assign redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_in_bitsignaltemp = redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_in[0];
    assign redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_out[0] = redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_out_bitsignaltemp;
    assign redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_out[0] = redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist14_i_masked36_jacobi_1d54_q_65_fifo (
        .valid_in(redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_in_bitsignaltemp),
        .data_in(i_masked36_jacobi_1d54_q),
        .valid_out(redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist14_i_masked36_jacobi_1d54_q_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo(STALLENABLE,696)
    // Valid signal propagation
    assign SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_V0 = SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_wireValid;
    // Backward Stall generation
    assign SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_backStall = redist14_i_masked36_jacobi_1d54_q_65_fifo_stall_out | ~ (SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_wireValid = SE_i_masked36_jacobi_1d54_V0;

    // SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53(STALLENABLE,624)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_wireValid = i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_valid_out;

    // c_i8_166(CONSTANT,71)
    assign c_i8_166_q = $unsigned(8'b11111111);

    // i_fpga_indvars_iv_next_jacobi_1d52(ADD,84)@69
    assign i_fpga_indvars_iv_next_jacobi_1d52_a = {1'b0, bubble_select_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_b};
    assign i_fpga_indvars_iv_next_jacobi_1d52_b = {1'b0, c_i8_166_q};
    assign i_fpga_indvars_iv_next_jacobi_1d52_o = $unsigned(i_fpga_indvars_iv_next_jacobi_1d52_a) + $unsigned(i_fpga_indvars_iv_next_jacobi_1d52_b);
    assign i_fpga_indvars_iv_next_jacobi_1d52_q = i_fpga_indvars_iv_next_jacobi_1d52_o[8:0];

    // bgTrunc_i_fpga_indvars_iv_next_jacobi_1d52_sel_x(BITSELECT,3)@69
    assign bgTrunc_i_fpga_indvars_iv_next_jacobi_1d52_sel_x_b = i_fpga_indvars_iv_next_jacobi_1d52_q[7:0];

    // i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53(BLACKBOX,114)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_14@20000000
    // out out_feedback_valid_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    jacobi_1d_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_0 thei_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53 (
        .in_data_in(bgTrunc_i_fpga_indvars_iv_next_jacobi_1d52_sel_x_b),
        .in_feedback_stall_in_14(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_feedback_stall_out_14),
        .in_keep_going27(redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_V0),
        .out_data_out(),
        .out_feedback_out_14(i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_feedback_out_14),
        .out_feedback_valid_out_14(i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_feedback_valid_out_14),
        .out_stall_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53(STALLENABLE,623)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_V0 = SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_backStall = i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_and0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V2;
    assign SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_wireValid = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V1 & SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_and0;

    // bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg(STALLFIFO,878)
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V0;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44(STALLENABLE,600)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg0 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg1 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg2 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg3 <= SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed2 = (~ (SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed3 = (~ (SE_i_masked36_jacobi_1d54_backStall) & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid) | SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg3;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_StallValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_backStall & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed2;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_toReg3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_StallValid & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed3;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed1 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or0;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed2 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or1;
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireStall = ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_consumed3 & SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_or2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_backStall = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V1 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V2 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V3 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid & ~ (SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_wireValid = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_valid_out;

    // SE_i_masked36_jacobi_1d54(STALLENABLE,625)
    // Valid signal propagation
    assign SE_i_masked36_jacobi_1d54_V0 = SE_i_masked36_jacobi_1d54_R_v_0;
    // Stall signal propagation
    assign SE_i_masked36_jacobi_1d54_s_tv_0 = SE_in_redist14_i_masked36_jacobi_1d54_q_65_fifo_backStall & SE_i_masked36_jacobi_1d54_R_v_0;
    // Backward Enable generation
    assign SE_i_masked36_jacobi_1d54_backEN = ~ (SE_i_masked36_jacobi_1d54_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_masked36_jacobi_1d54_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V2 & SE_i_masked36_jacobi_1d54_backEN;
    assign SE_i_masked36_jacobi_1d54_v_s_0 = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V3 & SE_i_masked36_jacobi_1d54_and0;
    // Backward Stall generation
    assign SE_i_masked36_jacobi_1d54_backStall = ~ (SE_i_masked36_jacobi_1d54_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_masked36_jacobi_1d54_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_masked36_jacobi_1d54_backEN == 1'b0)
            begin
                SE_i_masked36_jacobi_1d54_R_v_0 <= SE_i_masked36_jacobi_1d54_R_v_0 & SE_i_masked36_jacobi_1d54_s_tv_0;
            end
            else
            begin
                SE_i_masked36_jacobi_1d54_R_v_0 <= SE_i_masked36_jacobi_1d54_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48(STALLENABLE,615)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg0 <= '0;
            SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg0 <= SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_toReg0;
            // Successor 1
            SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg1 <= SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_toReg1;
        end
    end
    // Input Stall processing
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed0 = (~ (i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_stall_out) & SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed1 = (~ (SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_backStall) & SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid) | SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg1;
    // Consuming
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_StallValid = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall & SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_toReg0 = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_toReg1 = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_StallValid & SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed1;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_or0 = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed0;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireStall = ~ (SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_consumed1 & SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_or0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireStall;
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_V0 = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg0);
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_V1 = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid & ~ (SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_fromReg1);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V1;
    assign SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid = SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_V1 & SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_and0;

    // SE_out_i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51(STALLENABLE,618)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_wireValid = i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_valid_out;

    // leftShiftStage0Idx1Rng1_uid232_i_cleanups_shl31_jacobi_1d0_shift_x(BITSELECT,231)@69
    assign leftShiftStage0Idx1Rng1_uid232_i_cleanups_shl31_jacobi_1d0_shift_x_in = bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b[0:0];
    assign leftShiftStage0Idx1Rng1_uid232_i_cleanups_shl31_jacobi_1d0_shift_x_b = leftShiftStage0Idx1Rng1_uid232_i_cleanups_shl31_jacobi_1d0_shift_x_in[0:0];

    // leftShiftStage0Idx1_uid233_i_cleanups_shl31_jacobi_1d0_shift_x(BITJOIN,232)@69
    assign leftShiftStage0Idx1_uid233_i_cleanups_shl31_jacobi_1d0_shift_x_q = {leftShiftStage0Idx1Rng1_uid232_i_cleanups_shl31_jacobi_1d0_shift_x_b, GND_q};

    // leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x(MUX,234)@69
    assign leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_s = VCC_q;
    always @(leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_s or bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b or leftShiftStage0Idx1_uid233_i_cleanups_shl31_jacobi_1d0_shift_x_q)
    begin
        unique case (leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_s)
            1'b0 : leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_q = bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b;
            1'b1 : leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_q = leftShiftStage0Idx1_uid233_i_cleanups_shl31_jacobi_1d0_shift_x_q;
            default : leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_q = 2'b0;
        endcase
    end

    // i_cleanups_shl31_jacobi_1d3_vt_select_1(BITSELECT,80)@69
    assign i_cleanups_shl31_jacobi_1d3_vt_select_1_b = leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_q[1:1];

    // i_cleanups_shl31_jacobi_1d3_vt_join(BITJOIN,79)@69
    assign i_cleanups_shl31_jacobi_1d3_vt_join_q = {i_cleanups_shl31_jacobi_1d3_vt_select_1_b, GND_q};

    // i_or34_jacobi_1d49(LOGICAL,123)@69
    assign i_or34_jacobi_1d49_q = i_notcmp23_jacobi_1d47_q | i_first_cleanup_xor33_jacobi_1d2_q;

    // i_next_cleanups35_jacobi_1d50(MUX,118)@69
    assign i_next_cleanups35_jacobi_1d50_s = i_or34_jacobi_1d49_q;
    always @(i_next_cleanups35_jacobi_1d50_s or bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b or i_cleanups_shl31_jacobi_1d3_vt_join_q)
    begin
        unique case (i_next_cleanups35_jacobi_1d50_s)
            1'b0 : i_next_cleanups35_jacobi_1d50_q = bubble_select_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_b;
            1'b1 : i_next_cleanups35_jacobi_1d50_q = i_cleanups_shl31_jacobi_1d3_vt_join_q;
            default : i_next_cleanups35_jacobi_1d50_q = 2'b0;
        endcase
    end

    // i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51(BLACKBOX,111)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_18@20000000
    // out out_feedback_valid_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    jacobi_1d_i_llvm_fpga_push_i2_cleanups30_push18_0 thei_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51 (
        .in_data_in(i_next_cleanups35_jacobi_1d50_q),
        .in_feedback_stall_in_18(i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_feedback_stall_out_18),
        .in_keep_going27(redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_backStall),
        .in_valid_in(SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_V0),
        .out_data_out(),
        .out_feedback_out_18(i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_feedback_out_18),
        .out_feedback_valid_out_18(i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_feedback_valid_out_18),
        .out_stall_out(i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x(STALLENABLE,644)
    // Valid signal propagation
    assign SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_V0 = SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_wireValid;
    // Backward Stall generation
    assign SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_backStall = i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_stall_out | ~ (SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_and0 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V0;
    assign SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_and1 = SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_V1 & SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_and0;
    assign SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_wireValid = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V0 & SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_and1;

    // SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0(STALLENABLE,594)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg4 <= '0;
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg0 <= SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg1 <= SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg2 <= SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg3 <= SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg4 <= SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg4;
            // Successor 5
            SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg5 <= SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed0 = (~ (SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed2 = (~ (SE_i_masked36_jacobi_1d54_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed3 = (~ (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed4 = (~ (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall) & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed5 = (~ (redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_out) & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg5;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_backStall & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg0 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg1 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg2 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg3 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg4 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed4;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_toReg5 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed5;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or0 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or1 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed1 & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or0;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or2 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed2 & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or1;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or3 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed3 & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or2;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or4 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed4 & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or3;
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireStall = ~ (SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_consumed5 & SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_or4);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_backStall = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V0 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V1 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg1);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V2 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg2);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V3 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg3);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V4 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg4);
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V5 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_wireValid = i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_valid_out;

    // SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q(STALLENABLE,654)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg0 <= '0;
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg0 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg1 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed0 = (~ (i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_stall) & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed1 = (~ (i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_stall) & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireValid) | SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_StallValid = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireValid;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_toReg0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_toReg1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_StallValid & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_or0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireStall = ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_consumed1 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_or0);
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg0);
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireValid & ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_wireValid = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V;

    // SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q(STALLREG,890)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data2 <= 1'bx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data3 <= 1'bx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data4 <= 1'bx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data5 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall & (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid | SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data0 <= i_mptr_bitcast_index63_jacobi_1d0_dupName_0_trunc_sel_x_b;
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data1 <= i_reduction_jacobi_1d_1_jacobi_1d24_q;
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data2 <= i_reduction_jacobi_1d_1_jacobi_1d24_q;
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data3 <= i_first_cleanup_xor33_jacobi_1d2_q;
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data4 <= i_first_cleanup_xor33_jacobi_1d2_q;
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data5 <= i_mptr_bitcast_index_jacobi_1d0_dupName_0_trunc_sel_x_b;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and1 = SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V4 & SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_V1 & SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid : SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D0 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data0 : i_mptr_bitcast_index63_jacobi_1d0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D1 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data1 : i_reduction_jacobi_1d_1_jacobi_1d24_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D2 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data2 : i_reduction_jacobi_1d_1_jacobi_1d24_q;
    // Data3
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D3 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data3 : i_first_cleanup_xor33_jacobi_1d2_q;
    // Data4
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D4 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data4 : i_first_cleanup_xor33_jacobi_1d2_q;
    // Data5
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D5 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_r_data5 : i_mptr_bitcast_index_jacobi_1d0_dupName_0_trunc_sel_x_b;

    // SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLENABLE,689)
    // Valid signal propagation
    assign SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 = SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLREG,889)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= 1'b0;
            SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data1 <= 60'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
        end
        else
        begin
            // Valid
            SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid <= SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & (SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

            if (SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 <= $unsigned(i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q);
                SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data1 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_V1;
    // Stall signal propagation
    assign SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid | ~ (SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid);

    // Valid
    assign SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_V = SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid : SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_i_valid;

    // Data0
    assign SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_D0 = SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data0 : i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q;
    // Data1
    assign SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_D1 = SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_valid == 1'b1 ? SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_r_data1 : i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_q;

    // SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2(STALLENABLE,652)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_1 = SR_SE_redist8_i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V0 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_v_s_0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2(STALLENABLE,653)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2(STALLREG,888)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data2 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data3 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data4 <= 1'bx;
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data5 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data3 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data4 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_c);
                SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data5 <= $unsigned(i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel1_0_V0 & SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data3
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D3 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data3 : i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data4
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D4 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data4 : i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_c;
    // Data5
    assign SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_D5 = SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_r_data5 : i_mptr_bitcast_index_jacobi_1d0_add_x_p1_of_2_c;

    // SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c(STALLENABLE,666)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0 <= '0;
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_toReg0;
            // Successor 1
            SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1 <= SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0 = (~ (SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p2_of_2_backStall) & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid) | SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1 = (~ (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall) & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid) | SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1;
    // Consuming
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_toReg0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_toReg1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_StallValid & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_or0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireStall = ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_consumed1 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_or0);
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_backStall = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireStall;
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid & ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg0);
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid & ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_wireValid = SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_V0;

    // SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2(STALLENABLE,656)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2(STALLREG,891)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data0 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data1 <= 5'bxxxxx;
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall & (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid | SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_i_valid);

            if (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data0 <= $unsigned(i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data1 <= $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q);
                SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data2 <= $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_and0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_and1 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_V1 & SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_and0;
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_i_valid = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_V0 & SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_and1;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid | ~ (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_V = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid : SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D0 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data0 : i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_a_BitJoin_for_c_q;
    // Data1
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D1 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data1 : i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D2 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_r_data2 : i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_c;

    // SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12(STALLENABLE,568)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg0 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg1 <= '0;
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg0 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg1 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg2 <= SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed0 = (~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed1 = (~ (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed2 = (~ (SE_redist1_i_mptr_bitcast_index_jacobi_1d0_add_x_BitSelect_for_a_tessel1_0_b_1_0_backStall) & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid) | SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg2;
    // Consuming
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_StallValid = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_backStall & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed1;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_toReg2 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_StallValid & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed2;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_or0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_or1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed1 & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_or0;
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireStall = ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_consumed2 & SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_or1);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_backStall = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg0);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V1 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg1);
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V2 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid & ~ (SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_wireValid = i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_out_valid_out;

    // SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2(STALLENABLE,655)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_V0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_V1 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_0 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backStall & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_0;
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_1 = SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_1;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_or0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_0;
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backEN = ~ (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_1 | SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_and0 = SE_out_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_a_17820_jacobi_1d12_V1 & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backEN;
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_v_s_0 = SE_i_add5_jacobi_1d29_V4 & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_and0;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backStall = ~ (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_0 <= 1'b0;
            SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_0 & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_0 <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

            if (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_1 & SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_s_tv_1;
            end
            else
            begin
                SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_R_v_1 <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_v_s_0;
            end

        end
    end

    // redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo(STALLFIFO,424)
    assign redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_in = SE_i_add5_jacobi_1d29_V3;
    assign redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_in = SE_out_redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_backStall;
    assign redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_data_in = redist15_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_1_0_q;
    assign redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_in_bitsignaltemp = redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_in[0];
    assign redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_in_bitsignaltemp = redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_in[0];
    assign redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_out[0] = redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_out_bitsignaltemp;
    assign redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_out[0] = redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(32),
        .IMPL("ram")
    ) theredist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo (
        .valid_in(redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_in_bitsignaltemp),
        .stall_in(redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_in_bitsignaltemp),
        .data_in(redist15_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_1_0_q),
        .valid_out(redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_valid_out_bitsignaltemp),
        .stall_out(redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_out_bitsignaltemp),
        .data_out(redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0(STALLENABLE,688)
    // Valid signal propagation
    assign SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_V0 = SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_c_backStall & SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN = ~ (SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0 = SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN & SE_i_add5_jacobi_1d29_V2;
    // Backward Stall generation
    assign SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall = ~ (SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backEN == 1'b0)
            begin
                SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 & SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_R_v_0 <= SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30(STALLENABLE,621)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_V0 = SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_backStall = i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_and0 = SE_i_add5_jacobi_1d29_V1;
    assign SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V3 & SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_and0;

    // SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b(STALLENABLE,668)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_V0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_p1_of_2_backStall | ~ (SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid);
    // Computing multiple Valid(s)
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_tessel0_2_V0;
    assign SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_wireValid = SE_i_add5_jacobi_1d29_V0 & SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_and0;

    // SE_i_add5_jacobi_1d29(STALLENABLE,562)
    // Valid signal propagation
    assign SE_i_add5_jacobi_1d29_V0 = SE_i_add5_jacobi_1d29_R_v_0;
    assign SE_i_add5_jacobi_1d29_V1 = SE_i_add5_jacobi_1d29_R_v_1;
    assign SE_i_add5_jacobi_1d29_V2 = SE_i_add5_jacobi_1d29_R_v_2;
    assign SE_i_add5_jacobi_1d29_V3 = SE_i_add5_jacobi_1d29_R_v_3;
    assign SE_i_add5_jacobi_1d29_V4 = SE_i_add5_jacobi_1d29_R_v_4;
    // Stall signal propagation
    assign SE_i_add5_jacobi_1d29_s_tv_0 = SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitSelect_for_b_BitJoin_for_b_backStall & SE_i_add5_jacobi_1d29_R_v_0;
    assign SE_i_add5_jacobi_1d29_s_tv_1 = SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_backStall & SE_i_add5_jacobi_1d29_R_v_1;
    assign SE_i_add5_jacobi_1d29_s_tv_2 = SE_redist2_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitSelect_for_b_tessel1_3_b_1_0_backStall & SE_i_add5_jacobi_1d29_R_v_2;
    assign SE_i_add5_jacobi_1d29_s_tv_3 = redist16_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out_35_fifo_stall_out & SE_i_add5_jacobi_1d29_R_v_3;
    assign SE_i_add5_jacobi_1d29_s_tv_4 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_backStall & SE_i_add5_jacobi_1d29_R_v_4;
    // Backward Enable generation
    assign SE_i_add5_jacobi_1d29_or0 = SE_i_add5_jacobi_1d29_s_tv_0;
    assign SE_i_add5_jacobi_1d29_or1 = SE_i_add5_jacobi_1d29_s_tv_1 | SE_i_add5_jacobi_1d29_or0;
    assign SE_i_add5_jacobi_1d29_or2 = SE_i_add5_jacobi_1d29_s_tv_2 | SE_i_add5_jacobi_1d29_or1;
    assign SE_i_add5_jacobi_1d29_or3 = SE_i_add5_jacobi_1d29_s_tv_3 | SE_i_add5_jacobi_1d29_or2;
    assign SE_i_add5_jacobi_1d29_backEN = ~ (SE_i_add5_jacobi_1d29_s_tv_4 | SE_i_add5_jacobi_1d29_or3);
    // Determine whether to write valid data into the first register stage
    assign SE_i_add5_jacobi_1d29_v_s_0 = SE_i_add5_jacobi_1d29_backEN & SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_V0;
    // Backward Stall generation
    assign SE_i_add5_jacobi_1d29_backStall = ~ (SE_i_add5_jacobi_1d29_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_add5_jacobi_1d29_R_v_0 <= 1'b0;
            SE_i_add5_jacobi_1d29_R_v_1 <= 1'b0;
            SE_i_add5_jacobi_1d29_R_v_2 <= 1'b0;
            SE_i_add5_jacobi_1d29_R_v_3 <= 1'b0;
            SE_i_add5_jacobi_1d29_R_v_4 <= 1'b0;
        end
        else
        begin
            if (SE_i_add5_jacobi_1d29_backEN == 1'b0)
            begin
                SE_i_add5_jacobi_1d29_R_v_0 <= SE_i_add5_jacobi_1d29_R_v_0 & SE_i_add5_jacobi_1d29_s_tv_0;
            end
            else
            begin
                SE_i_add5_jacobi_1d29_R_v_0 <= SE_i_add5_jacobi_1d29_v_s_0;
            end

            if (SE_i_add5_jacobi_1d29_backEN == 1'b0)
            begin
                SE_i_add5_jacobi_1d29_R_v_1 <= SE_i_add5_jacobi_1d29_R_v_1 & SE_i_add5_jacobi_1d29_s_tv_1;
            end
            else
            begin
                SE_i_add5_jacobi_1d29_R_v_1 <= SE_i_add5_jacobi_1d29_v_s_0;
            end

            if (SE_i_add5_jacobi_1d29_backEN == 1'b0)
            begin
                SE_i_add5_jacobi_1d29_R_v_2 <= SE_i_add5_jacobi_1d29_R_v_2 & SE_i_add5_jacobi_1d29_s_tv_2;
            end
            else
            begin
                SE_i_add5_jacobi_1d29_R_v_2 <= SE_i_add5_jacobi_1d29_v_s_0;
            end

            if (SE_i_add5_jacobi_1d29_backEN == 1'b0)
            begin
                SE_i_add5_jacobi_1d29_R_v_3 <= SE_i_add5_jacobi_1d29_R_v_3 & SE_i_add5_jacobi_1d29_s_tv_3;
            end
            else
            begin
                SE_i_add5_jacobi_1d29_R_v_3 <= SE_i_add5_jacobi_1d29_v_s_0;
            end

            if (SE_i_add5_jacobi_1d29_backEN == 1'b0)
            begin
                SE_i_add5_jacobi_1d29_R_v_4 <= SE_i_add5_jacobi_1d29_R_v_4 & SE_i_add5_jacobi_1d29_s_tv_4;
            end
            else
            begin
                SE_i_add5_jacobi_1d29_R_v_4 <= SE_i_add5_jacobi_1d29_v_s_0;
            end

        end
    end

    // SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14(STALLENABLE,598)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_V0 = SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_backStall = SE_i_add5_jacobi_1d29_backStall | ~ (SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_wireValid = i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_valid_out;

    // SE_out_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30(STALLENABLE,622)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_wireValid = i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_valid_out;

    // bgTrunc_i_add5_jacobi_1d29_sel_x(BITSELECT,2)@67
    assign bgTrunc_i_add5_jacobi_1d29_sel_x_b = i_add5_jacobi_1d29_q[31:0];

    // i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30(BLACKBOX,113)@67
    // in in_stall_in@20000000
    // out out_data_out@68
    // out out_feedback_out_15@20000000
    // out out_feedback_valid_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@68
    jacobi_1d_i_llvm_fpga_push_i32_i_059_push15_0 thei_llvm_fpga_push_i32_i_059_push15_jacobi_1d30 (
        .in_data_in(bgTrunc_i_add5_jacobi_1d29_sel_x_b),
        .in_feedback_stall_in_15(i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_feedback_stall_out_15),
        .in_keep_going27(bubble_select_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_V0),
        .out_data_out(),
        .out_feedback_out_15(i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_feedback_out_15),
        .out_feedback_valid_out_15(i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_feedback_valid_out_15),
        .out_stall_out(i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(BITJOIN,538)
    assign bubble_join_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q = redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out;

    // bubble_select_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(BITSELECT,539)
    assign bubble_select_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b = $unsigned(bubble_join_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_q[0:0]);

    // c_i32_162(CONSTANT,69)
    assign c_i32_162_q = $unsigned(32'b00000000000000000000000000000001);

    // i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14(BLACKBOX,101)@65
    // in in_stall_in@20000000
    // out out_data_out@66
    // out out_feedback_stall_out_15@20000000
    // out out_stall_out@20000000
    // out out_valid_out@66
    jacobi_1d_i_llvm_fpga_pop_i32_i_059_pop15_0 thei_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14 (
        .in_data_in(c_i32_162_q),
        .in_dir(bubble_select_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b),
        .in_feedback_in_15(i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_feedback_out_15),
        .in_feedback_valid_in_15(i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_out_feedback_valid_out_15),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_backStall),
        .in_valid_in(SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1),
        .out_data_out(i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_data_out),
        .out_feedback_stall_out_15(i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_feedback_stall_out_15),
        .out_stall_out(i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(STALLENABLE,718)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0 <= '0;
            SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0 <= SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0;
            // Successor 1
            SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1 <= SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0 = (~ (SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall) & SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid) | SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0;
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1 = (~ (i_llvm_fpga_pop_i32_i_059_pop15_jacobi_1d14_out_stall_out) & SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid) | SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1;
    // Consuming
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall & SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid;
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg0 = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid & SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_toReg1 = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_StallValid & SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0 = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed0;
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall = ~ (SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_consumed1 & SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_or0);
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0 = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid & ~ (SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg0);
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V1 = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid & ~ (SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_wireValid = redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out;

    // redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo(STALLFIFO,436)
    assign redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V3;
    assign redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_backStall;
    assign redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_in = bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_b;
    assign redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp = redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in[0];
    assign redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp = redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in[0];
    assign redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out[0] = redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp;
    assign redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out[0] = redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(65),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo (
        .valid_in(redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_in_bitsignaltemp),
        .stall_in(redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_b),
        .valid_out(redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_valid_out_bitsignaltemp),
        .stall_out(redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out_bitsignaltemp),
        .data_out(redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18(BLACKBOX,94)@1
    // in in_stall_in@20000000
    // out out_data_out@2
    // out out_feedback_stall_out_21@20000000
    // out out_stall_out@20000000
    // out out_valid_out@2
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_0 thei_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18 (
        .in_data_in(bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_e),
        .in_dir(bubble_select_jacobi_1d_B4_merge_reg_aunroll_x_b),
        .in_feedback_in_21(i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_feedback_out_21),
        .in_feedback_valid_in_21(i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_out_feedback_valid_out_21),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_backStall),
        .in_valid_in(SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V2),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_data_out),
        .out_feedback_stall_out_21(i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_feedback_stall_out_21),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg(STALLFIFO,875)
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_in = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V1;
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_in = SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_backStall;
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_in[0];
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_in[0];
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_out[0] = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp;
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_out[0] = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(66),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg (
        .valid_in(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg(STALLFIFO,874)
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_in = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V0;
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_in = SE_out_bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_backStall;
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_in[0];
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_in[0];
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_out[0] = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_out[0] = bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(100),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg (
        .valid_in(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_jacobi_1d_B4_merge_reg_aunroll_x(STALLENABLE,561)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg0 <= '0;
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg1 <= '0;
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg2 <= '0;
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg3 <= '0;
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg4 <= '0;
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg5 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg0 <= SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg0;
            // Successor 1
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg1 <= SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg1;
            // Successor 2
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg2 <= SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg2;
            // Successor 3
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg3 <= SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg3;
            // Successor 4
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg4 <= SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg4;
            // Successor 5
            SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg5 <= SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg5;
        end
    end
    // Input Stall processing
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed0 = (~ (bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_1_reg_stall_out) & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg0;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed1 = (~ (bubble_out_jacobi_1d_B4_merge_reg_aunroll_x_2_reg_stall_out) & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg1;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed2 = (~ (i_llvm_fpga_pop_i1_memdep_phi1_pop1153_pop21_jacobi_1d18_out_stall_out) & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg2;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed3 = (~ (redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_stall_out) & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg3;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed4 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg4;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed5 = (~ (coalesced_delay_1_fifo_stall_out) & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid) | SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg5;
    // Consuming
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_backStall & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg0 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg1 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed1;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg2 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed2;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg3 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed3;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg4 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed4;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_toReg5 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_StallValid & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed5;
    // Backward Stall generation
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or0 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed0;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or1 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed1 & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or0;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or2 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed2 & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or1;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or3 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed3 & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or2;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or4 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed4 & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or3;
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireStall = ~ (SE_out_jacobi_1d_B4_merge_reg_aunroll_x_consumed5 & SE_out_jacobi_1d_B4_merge_reg_aunroll_x_or4);
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_backStall = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V0 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg0);
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V1 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg1);
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V2 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg2);
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V3 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg3);
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V4 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg4);
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V5 = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid & ~ (SE_out_jacobi_1d_B4_merge_reg_aunroll_x_fromReg5);
    // Computing multiple Valid(s)
    assign SE_out_jacobi_1d_B4_merge_reg_aunroll_x_wireValid = jacobi_1d_B4_merge_reg_aunroll_x_out_valid_out;

    // coalesced_delay_1_fifo(STALLFIFO,445)
    assign coalesced_delay_1_fifo_valid_in = SE_out_jacobi_1d_B4_merge_reg_aunroll_x_V5;
    assign coalesced_delay_1_fifo_stall_in = SE_out_coalesced_delay_1_fifo_backStall;
    assign coalesced_delay_1_fifo_data_in = join_for_coalesced_delay_1_q;
    assign coalesced_delay_1_fifo_valid_in_bitsignaltemp = coalesced_delay_1_fifo_valid_in[0];
    assign coalesced_delay_1_fifo_stall_in_bitsignaltemp = coalesced_delay_1_fifo_stall_in[0];
    assign coalesced_delay_1_fifo_valid_out[0] = coalesced_delay_1_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_1_fifo_stall_out[0] = coalesced_delay_1_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(133),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(2),
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

    // SE_out_coalesced_delay_1_fifo(STALLENABLE,730)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_coalesced_delay_1_fifo_fromReg0 <= '0;
            SE_out_coalesced_delay_1_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_coalesced_delay_1_fifo_fromReg0 <= SE_out_coalesced_delay_1_fifo_toReg0;
            // Successor 1
            SE_out_coalesced_delay_1_fifo_fromReg1 <= SE_out_coalesced_delay_1_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_coalesced_delay_1_fifo_consumed0 = (~ (i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg0;
    assign SE_out_coalesced_delay_1_fifo_consumed1 = (~ (i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_out_stall_out) & SE_out_coalesced_delay_1_fifo_wireValid) | SE_out_coalesced_delay_1_fifo_fromReg1;
    // Consuming
    assign SE_out_coalesced_delay_1_fifo_StallValid = SE_out_coalesced_delay_1_fifo_backStall & SE_out_coalesced_delay_1_fifo_wireValid;
    assign SE_out_coalesced_delay_1_fifo_toReg0 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_toReg1 = SE_out_coalesced_delay_1_fifo_StallValid & SE_out_coalesced_delay_1_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_coalesced_delay_1_fifo_or0 = SE_out_coalesced_delay_1_fifo_consumed0;
    assign SE_out_coalesced_delay_1_fifo_wireStall = ~ (SE_out_coalesced_delay_1_fifo_consumed1 & SE_out_coalesced_delay_1_fifo_or0);
    assign SE_out_coalesced_delay_1_fifo_backStall = SE_out_coalesced_delay_1_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_coalesced_delay_1_fifo_V0 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg0);
    assign SE_out_coalesced_delay_1_fifo_V1 = SE_out_coalesced_delay_1_fifo_wireValid & ~ (SE_out_coalesced_delay_1_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_1_fifo_and0 = coalesced_delay_1_fifo_valid_out;
    assign SE_out_coalesced_delay_1_fifo_wireValid = SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_V0 & SE_out_coalesced_delay_1_fifo_and0;

    // SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1(STALLENABLE,725)
    // Valid signal propagation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_V0 = SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_R_v_0;
    // Stall signal propagation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_s_tv_0 = SE_out_coalesced_delay_1_fifo_backStall & SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_R_v_0;
    // Backward Enable generation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backEN = ~ (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_v_s_0 = SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backEN & SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_V;
    // Backward Stall generation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backStall = ~ (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backEN == 1'b0)
            begin
                SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_R_v_0 <= SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_R_v_0 & SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_s_tv_0;
            end
            else
            begin
                SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_R_v_0 <= SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_v_s_0;
            end

        end
    end

    // SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1(STALLREG,885)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid <= 1'b0;
            SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid <= SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backStall & (SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid | SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_i_valid);

            if (SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_data0 <= $unsigned(redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_i_valid = SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_V0;
    // Stall signal propagation
    assign SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backStall = SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid | ~ (SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_i_valid);

    // Valid
    assign SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_V = SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid == 1'b1 ? SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid : SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_i_valid;

    assign SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_D0 = SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_valid == 1'b1 ? SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_r_data0 : redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_q;

    // SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0(STALLENABLE,724)
    // Valid signal propagation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_V0 = SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_R_v_0;
    // Stall signal propagation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_s_tv_0 = SR_SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_1_backStall & SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_R_v_0;
    // Backward Enable generation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backEN = ~ (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_v_s_0 = SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backEN & SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V0;
    // Backward Stall generation
    assign SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backStall = ~ (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backEN == 1'b0)
            begin
                SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_R_v_0 <= SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_R_v_0 & SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_s_tv_0;
            end
            else
            begin
                SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_R_v_0 <= SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_v_s_0;
            end

        end
    end

    // SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo(STALLENABLE,723)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg0 <= '0;
            SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg0 <= SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_toReg0;
            // Successor 1
            SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg1 <= SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed0 = (~ (SE_redist30_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_132_0_backStall) & SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireValid) | SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg0;
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed1 = (~ (i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_out_stall_out) & SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireValid) | SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg1;
    // Consuming
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_StallValid = SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_backStall & SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireValid;
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_toReg0 = SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_StallValid & SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed0;
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_toReg1 = SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_StallValid & SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_or0 = SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed0;
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireStall = ~ (SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_consumed1 & SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_or0);
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_backStall = SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V0 = SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireValid & ~ (SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg0);
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V1 = SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireValid & ~ (SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_wireValid = SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V;

    // SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo(STALLREG,882)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid <= 1'b0;
            SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data0 <= 1'bx;
            SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data1 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid <= SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_backStall & (SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid | SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_i_valid);

            if (SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data0 <= $unsigned(bubble_select_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_b);
                SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data1 <= $unsigned(bubble_select_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_i_valid = redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_out;
    // Stall signal propagation
    assign SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_backStall = SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid | ~ (SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_i_valid);

    // Valid
    assign SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_V = SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid == 1'b1 ? SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid : SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_i_valid;

    // Data0
    assign SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_D0 = SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid == 1'b1 ? SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data0 : bubble_select_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_b;
    // Data1
    assign SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_D1 = SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_valid == 1'b1 ? SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_r_data1 : bubble_select_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_b;

    // redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo(STALLFIFO,440)
    assign redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_in = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V3;
    assign redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_in = SR_SE_out_redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_backStall;
    assign redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_data_in = redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q;
    assign redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_in_bitsignaltemp = redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_in[0];
    assign redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_in_bitsignaltemp = redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_in[0];
    assign redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_out[0] = redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_out_bitsignaltemp;
    assign redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_out[0] = redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo (
        .valid_in(redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_in_bitsignaltemp),
        .stall_in(redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_in_bitsignaltemp),
        .data_in(redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q),
        .valid_out(redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_valid_out_bitsignaltemp),
        .stall_out(redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_out_bitsignaltemp),
        .data_out(redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i8_9664(CONSTANT,72)
    assign c_i8_9664_q = $unsigned(8'b01100000);

    // i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44(BLACKBOX,102)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_14@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    jacobi_1d_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_0 thei_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44 (
        .in_data_in(c_i8_9664_q),
        .in_dir(redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q),
        .in_feedback_in_14(i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_feedback_out_14),
        .in_feedback_valid_in_14(i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_out_feedback_valid_out_14),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_backStall),
        .in_valid_in(SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V2),
        .out_data_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_data_out),
        .out_feedback_stall_out_14(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_feedback_stall_out_14),
        .out_stall_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0(BLACKBOX,99)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_18@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    jacobi_1d_i_llvm_fpga_pop_i2_cleanups30_pop18_0 thei_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0 (
        .in_data_in(c_i2_159_q),
        .in_dir(redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q),
        .in_feedback_in_18(i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_feedback_out_18),
        .in_feedback_valid_in_18(i_llvm_fpga_push_i2_cleanups30_push18_jacobi_1d51_out_feedback_valid_out_18),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_backStall),
        .in_valid_in(SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V1),
        .out_data_out(i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_data_out),
        .out_feedback_stall_out_18(i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_feedback_stall_out_18),
        .out_stall_out(i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1(STALLENABLE,721)
    // Valid signal propagation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V1 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_1;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V2 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_2;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V3 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_3;
    // Stall signal propagation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_stall_out & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_1 = i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_out_stall_out & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_1;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_2 = i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_out_stall_out & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_2;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_3 = redist29_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_130_fifo_stall_out & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_3;
    // Backward Enable generation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or0 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or1 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_1 | SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or0;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or2 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_2 | SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or1;
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN = ~ (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_3 | SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_or2);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN & SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V;
    // Backward Stall generation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall = ~ (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= 1'b0;
            SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_1 <= 1'b0;
            SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_2 <= 1'b0;
            SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_3 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b0)
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0;
            end
            else
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
            end

            if (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b0)
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_1 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_1 & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_1;
            end
            else
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_1 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
            end

            if (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b0)
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_2 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_2 & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_2;
            end
            else
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_2 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
            end

            if (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b0)
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_3 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_3 & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_3;
            end
            else
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_3 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
            end

        end
    end

    // SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1(STALLREG,881)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid <= 1'b0;
            SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall & (SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid | SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_i_valid);

            if (SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_data0 <= $unsigned(redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_i_valid = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    // Stall signal propagation
    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid | ~ (SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_i_valid);

    // Valid
    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid == 1'b1 ? SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid : SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_i_valid;

    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_D0 = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_valid == 1'b1 ? SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_r_data0 : redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q;

    // SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(STALLENABLE,720)
    // Valid signal propagation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    // Stall signal propagation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0 = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    // Backward Enable generation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN = ~ (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0 = SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN & SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V;
    // Backward Stall generation
    assign SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall = ~ (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b0)
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 & SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
            end
            else
            begin
                SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
            end

        end
    end

    // SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(STALLREG,880)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid <= 1'b0;
            SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid <= SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall & (SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid | SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_i_valid);

            if (SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_data0 <= $unsigned(redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_i_valid = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V1;
    // Stall signal propagation
    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid | ~ (SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_i_valid);

    // Valid
    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid == 1'b1 ? SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid : SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_i_valid;

    assign SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_D0 = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_valid == 1'b1 ? SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_r_data0 : redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q;

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,544)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,545)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[1:0]);

    // sel_for_coalesced_delay_0(BITSELECT,406)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[0:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[1:1]);

    // SR_SE_out_coalesced_delay_0_fifo(STALLREG,883)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= 1'b0;
            SR_SE_out_coalesced_delay_0_fifo_r_data0 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data1 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data2 <= 1'bx;
            SR_SE_out_coalesced_delay_0_fifo_r_data3 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_out_coalesced_delay_0_fifo_r_valid <= SE_out_coalesced_delay_0_fifo_backStall & (SR_SE_out_coalesced_delay_0_fifo_r_valid | SR_SE_out_coalesced_delay_0_fifo_i_valid);

            if (SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_out_coalesced_delay_0_fifo_r_data0 <= $unsigned(sel_for_coalesced_delay_0_b);
                SR_SE_out_coalesced_delay_0_fifo_r_data1 <= $unsigned(redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data2 <= $unsigned(redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q);
                SR_SE_out_coalesced_delay_0_fifo_r_data3 <= $unsigned(sel_for_coalesced_delay_0_c);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SR_SE_out_coalesced_delay_0_fifo_i_valid = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V0 & SR_SE_out_coalesced_delay_0_fifo_and0;
    // Stall signal propagation
    assign SR_SE_out_coalesced_delay_0_fifo_backStall = SR_SE_out_coalesced_delay_0_fifo_r_valid | ~ (SR_SE_out_coalesced_delay_0_fifo_i_valid);

    // Valid
    assign SR_SE_out_coalesced_delay_0_fifo_V = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_valid : SR_SE_out_coalesced_delay_0_fifo_i_valid;

    // Data0
    assign SR_SE_out_coalesced_delay_0_fifo_D0 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data0 : sel_for_coalesced_delay_0_b;
    // Data1
    assign SR_SE_out_coalesced_delay_0_fifo_D1 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data1 : redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q;
    // Data2
    assign SR_SE_out_coalesced_delay_0_fifo_D2 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data2 : redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q;
    // Data3
    assign SR_SE_out_coalesced_delay_0_fifo_D3 = SR_SE_out_coalesced_delay_0_fifo_r_valid == 1'b1 ? SR_SE_out_coalesced_delay_0_fifo_r_data3 : sel_for_coalesced_delay_0_c;

    // SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0(STALLREG,879)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid <= 1'b0;
            SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid <= SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall & (SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid | SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_i_valid);

            if (SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_data0 <= $unsigned(bubble_select_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_i_valid = SE_out_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_V0;
    // Stall signal propagation
    assign SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall = SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid | ~ (SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_i_valid);

    // Valid
    assign SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V = SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid == 1'b1 ? SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid : SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_i_valid;

    assign SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_D0 = SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_valid == 1'b1 ? SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_r_data0 : bubble_select_redist26_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_64_fifo_b;

    // SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0(STALLENABLE,719)
    // Valid signal propagation
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V0 = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0;
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V1 = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_1;
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V2 = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_2;
    // Stall signal propagation
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0 = SR_SE_out_coalesced_delay_0_fifo_backStall & SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0;
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_1 = SR_SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall & SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_1;
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_2 = i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_stall_out & SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_2;
    // Backward Enable generation
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_or0 = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0;
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_or1 = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_1 | SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_or0;
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN = ~ (SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_2 | SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0 = SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN & SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V;
    // Backward Stall generation
    assign SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backStall = ~ (SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 <= 1'b0;
            SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_1 <= 1'b0;
            SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN == 1'b0)
            begin
                SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 <= SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 & SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_0;
            end
            else
            begin
                SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_0 <= SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0;
            end

            if (SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN == 1'b0)
            begin
                SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_1 <= SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_1 & SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_1;
            end
            else
            begin
                SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_1 <= SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0;
            end

            if (SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN == 1'b0)
            begin
                SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_2 <= SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_2 & SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_s_tv_2;
            end
            else
            begin
                SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_R_v_2 <= SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_v_s_0;
            end

        end
    end

    // bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg(STALLFIFO,876)
    assign bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V0;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_in = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(68),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4(STALLENABLE,580)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg1 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg2 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg3 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg4 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg1;
            // Successor 2
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg2 <= SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg2;
            // Successor 3
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg3 <= SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg3;
            // Successor 4
            SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg4 <= SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg4;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed0 = (~ (bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi1_pop1153_push21_jacobi_1d19_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed2 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi4_pop1254_push22_jacobi_1d40_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed3 = (~ (SE_in_i_llvm_fpga_push_i32_i_059_push15_jacobi_1d30_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed4 = (~ (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg4;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_backStall & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg2 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg3 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed3;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_toReg4 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed4;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or0 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or1 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or2 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed2 & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or1;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or3 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed3 & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or2;
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_consumed4 & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_or3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_backStall = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V0 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V1 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg1);
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V2 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg2);
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V3 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg3);
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V4 = SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_fromReg4);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_wireValid = i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48(STALLENABLE,616)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_wireValid = i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48(BLACKBOX,110)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_5@20000000
    // out out_feedback_valid_out_5@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    jacobi_1d_i_llvm_fpga_push_i1_notexitcond37_0 thei_llvm_fpga_push_i1_notexitcond37_jacobi_1d48 (
        .in_data_in(i_exitcond_jacobi_1d45_cmp_nsign_q),
        .in_feedback_stall_in_5(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_not_exitcond_stall_out),
        .in_first_cleanup32(i_first_cleanup32_jacobi_1d1_sel_x_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_V0),
        .out_data_out(),
        .out_feedback_out_5(i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_feedback_out_5),
        .out_feedback_valid_out_5(i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_feedback_valid_out_5),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9(STALLENABLE,604)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_wireValid = i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9(BLACKBOX,104)@132
    // in in_stall_in@20000000
    // out out_data_out@133
    // out out_feedback_out_4@20000000
    // out out_feedback_valid_out_4@20000000
    // out out_stall_out@20000000
    // out out_valid_out@133
    jacobi_1d_i_llvm_fpga_push_i1_lastiniteration29_0 thei_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9 (
        .in_data_in(SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D0),
        .in_feedback_stall_in_4(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_initeration_stall_out),
        .in_keep_going27(SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_backStall),
        .in_valid_in(SE_i_next_initerations26_jacobi_1d6_vt_select_0_V0),
        .out_data_out(),
        .out_feedback_out_4(i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_feedback_out_4),
        .out_feedback_valid_out_4(i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_feedback_valid_out_4),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0(REG,437)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_backEN == 1'b1)
        begin
            redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q <= $unsigned(SR_SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_D0);
        end
    end

    // i_llvm_fpga_pipeline_keep_going27_jacobi_1d4(BLACKBOX,92)@66
    // in in_stall_in@20000000
    // out out_data_out@67
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@67
    jacobi_1d_i_llvm_fpga_pipeline_keep_going27_0 thei_llvm_fpga_pipeline_keep_going27_jacobi_1d4 (
        .in_data_in(redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_q),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_feedback_out_4),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration29_jacobi_1d9_out_feedback_valid_out_4),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_feedback_out_5),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond37_jacobi_1d48_out_feedback_valid_out_5),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_backStall),
        .in_valid_in(SE_redist27_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_65_0_V2),
        .out_data_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4(BITJOIN,472)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_q = i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4(BITSELECT,473)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_q[0:0]);

    // redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0(REG,429)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_b);
        end
    end

    // SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0(STALLENABLE,707)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_R_v_0;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_s_tv_0 = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_R_v_0;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_V4;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_v_s_0;
            end

        end
    end

    // SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1(STALLREG,894)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid <= 1'b0;
            SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backStall & (SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid | SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_i_valid);

            if (SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_data0 <= $unsigned(redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_i_valid = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_V0;
    // Stall signal propagation
    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backStall = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid | ~ (SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_i_valid);

    // Valid
    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid : SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_i_valid;

    assign SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_D0 = SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_valid == 1'b1 ? SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_r_data0 : redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_0_q;

    // redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1(REG,430)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN == 1'b1)
        begin
            redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_q <= $unsigned(SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_D0);
        end
    end

    // SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1(STALLENABLE,708)
    // Valid signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V0 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V1 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_1;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V2 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_2;
    // Stall signal propagation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_0 = SE_leftShiftStage0_uid235_i_cleanups_shl31_jacobi_1d0_shift_x_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_1 = SE_in_i_llvm_fpga_push_i8_fpga_indvars_iv_push14_jacobi_1d53_backStall & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_1;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_2 = redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_out & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_2;
    // Backward Enable generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_or0 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_or1 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_1 | SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_or0;
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_2 | SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_v_s_0 = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN & SR_SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V;
    // Backward Stall generation
    assign SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backStall = ~ (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_0 <= 1'b0;
            SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_1 <= 1'b0;
            SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_0 & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_0;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_0 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_v_s_0;
            end

            if (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_1 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_1 & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_1;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_1 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_v_s_0;
            end

            if (SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_backEN == 1'b0)
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_2 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_2 & SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_s_tv_2;
            end
            else
            begin
                SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_R_v_2 <= SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_v_s_0;
            end

        end
    end

    // redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo(STALLFIFO,431)
    assign redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_in = SE_redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_V2;
    assign redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_in = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_backStall;
    assign redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_data_in = redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_q;
    assign redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_in_bitsignaltemp = redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_in[0];
    assign redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_out[0] = redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_out_bitsignaltemp;
    assign redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_out[0] = redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(64),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo (
        .valid_in(redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_in_bitsignaltemp),
        .stall_in(redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_in_bitsignaltemp),
        .data_in(redist20_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_2_1_q),
        .valid_out(redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_out_bitsignaltemp),
        .stall_out(redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_stall_out_bitsignaltemp),
        .data_out(redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo(BITJOIN,529)
    assign bubble_join_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_q = redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_data_out;

    // bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo(BITSELECT,530)
    assign bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b = $unsigned(bubble_join_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_q[0:0]);

    // SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo(STALLENABLE,710)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg0 <= '0;
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg1 <= '0;
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg2 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg0 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg0;
            // Successor 1
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg1 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg1;
            // Successor 2
            SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg2 <= SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg2;
        end
    end
    // Input Stall processing
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed0 = (~ (SR_SE_i_next_initerations26_jacobi_1d6_vt_select_0_backStall) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed1 = (~ (SR_SE_in_i_llvm_fpga_push_i1_memdep_phi6_pop1355_push23_jacobi_1d21_backStall) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg1;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed2 = (~ (SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backStall) & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid) | SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg2;
    // Consuming
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_StallValid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_backStall & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed1;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_toReg2 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_StallValid & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed2;
    // Backward Stall generation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_or0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_or1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed1 & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_or0;
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireStall = ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_consumed2 & SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_or1);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_backStall = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V0 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg0);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V1 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg1);
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V2 = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid & ~ (SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_fromReg2);
    // Computing multiple Valid(s)
    assign SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_wireValid = redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_valid_out;

    // SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0(STALLREG,895)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backStall & (SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid | SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_data0 <= $unsigned(bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_i_valid = SE_out_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_V2;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backStall = SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_V = SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid : SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_D0 = SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_r_data0 : bubble_select_redist21_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_65_fifo_b;

    // redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0(REG,432)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_D0);
        end
    end

    // SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0(STALLENABLE,711)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_V0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_R_v_0;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_s_tv_0 = SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backStall & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_R_v_0;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backEN = ~ (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_v_s_0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backEN & SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backStall = ~ (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_R_v_0 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_R_v_0 & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_R_v_0 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_v_s_0;
            end

        end
    end

    // SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1(STALLREG,896)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid <= 1'b0;
            SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backStall & (SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid | SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_i_valid);

            if (SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_data0 <= $unsigned(redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_i_valid = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_V0;
    // Stall signal propagation
    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backStall = SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid | ~ (SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_i_valid);

    // Valid
    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V = SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid : SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_i_valid;

    assign SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_D0 = SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_valid == 1'b1 ? SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_r_data0 : redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_0_q;

    // redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1(REG,433)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN == 1'b1)
        begin
            redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_q <= $unsigned(SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_D0);
        end
    end

    // i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23(BLACKBOX,97)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi_pop16_0 thei_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23 (
        .in_data_in(GND_q),
        .in_dir(redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q),
        .in_feedback_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_feedback_out_16),
        .in_feedback_valid_in_16(i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_feedback_valid_out_16),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_backStall),
        .in_valid_in(SE_redist28_jacobi_1d_B4_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_data_out),
        .out_feedback_stall_out_16(i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_feedback_stall_out_16),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_jacobi_1d42(BITJOIN,459)
    assign bubble_join_i_llvm_fpga_mem_memdep_jacobi_1d42_q = i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_jacobi_1d42(BITSELECT,460)
    assign bubble_select_i_llvm_fpga_mem_memdep_jacobi_1d42_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_jacobi_1d42_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43(BLACKBOX,108)@134
    // in in_stall_in@20000000
    // out out_data_out@135
    // out out_feedback_out_16@20000000
    // out out_feedback_valid_out_16@20000000
    // out out_stall_out@20000000
    // out out_valid_out@135
    jacobi_1d_i_llvm_fpga_push_i1_memdep_phi_push16_0 thei_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_jacobi_1d42_b),
        .in_feedback_stall_in_16(i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_out_feedback_stall_out_16),
        .in_keep_going27(redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_backStall),
        .in_valid_in(SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_V0),
        .out_data_out(),
        .out_feedback_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_feedback_out_16),
        .out_feedback_valid_out_16(i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_feedback_valid_out_16),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1(STALLENABLE,712)
    // Valid signal propagation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_0;
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V1 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_1;
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V2 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_2;
    // Stall signal propagation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_0 = SE_in_i_llvm_fpga_push_i1_exitcond1749_push19_jacobi_1d56_backStall & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_0;
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_1 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_backStall & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_1;
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_2 = SE_in_i_llvm_fpga_push_i1_notcmp3951_push20_jacobi_1d58_backStall & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_2;
    // Backward Enable generation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_or0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_0;
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_or1 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_1 | SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_or0;
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN = ~ (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_2 | SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_or1);
    // Determine whether to write valid data into the first register stage
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_v_s_0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN & SR_SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V;
    // Backward Stall generation
    assign SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backStall = ~ (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_0 <= 1'b0;
            SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_1 <= 1'b0;
            SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_2 <= 1'b0;
        end
        else
        begin
            if (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_0 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_0 & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_0;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_0 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_v_s_0;
            end

            if (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_1 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_1 & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_1;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_1 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_v_s_0;
            end

            if (SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_backEN == 1'b0)
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_2 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_2 & SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_s_tv_2;
            end
            else
            begin
                SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_R_v_2 <= SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_v_s_0;
            end

        end
    end

    // SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43(STALLENABLE,611)
    // Valid signal propagation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_V0 = SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_wireValid;
    // Backward Stall generation
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_backStall = i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_out_stall_out | ~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_and0 = SE_redist22_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_data_out_67_1_V1;
    assign SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_wireValid = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_V1 & SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_and0;

    // SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1(STALLENABLE,819)
    // Valid signal propagation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_V0 = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_wireValid;
    // Backward Stall generation
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall = in_stall_in | ~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and0 = bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_reg_valid_out;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and1 = redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and0;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and2 = redist14_i_masked36_jacobi_1d54_q_65_fifo_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and1;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and3 = bubble_out_i_llvm_fpga_pop_i2_initerations25_pop17_jacobi_1d5_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and2;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and4 = bubble_out_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_1_reg_valid_out & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and3;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and5 = SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and4;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and6 = SE_out_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and5;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and7 = SE_out_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and6;
    assign SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_wireValid = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_V0 & SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_and7;

    // SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42(STALLENABLE,572)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed0 = (~ (SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_backStall) & SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireValid) | SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed1 = (~ (SE_in_i_llvm_fpga_push_i1_memdep_phi_push16_jacobi_1d43_backStall) & SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireValid) | SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_StallValid = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_backStall & SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_toReg0 = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_StallValid & SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_toReg1 = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_StallValid & SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_or0 = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_consumed1 & SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_backStall = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_V0 = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_V1 = SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_wireValid = i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_valid;

    // bubble_join_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo(BITJOIN,535)
    assign bubble_join_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_q = redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_data_out;

    // bubble_select_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo(BITSELECT,536)
    assign bubble_select_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_b = $unsigned(bubble_join_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_q[0:0]);

    // bubble_join_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo(BITJOIN,514)
    assign bubble_join_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_q = redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_data_out;

    // bubble_select_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo(BITSELECT,515)
    assign bubble_select_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_b = $unsigned(bubble_join_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_q[0:0]);

    // i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2(ADD,279)@102 + 1
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_D1}, i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_q = i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_o[5:1];

    // redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0(REG,417)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index71_jacobi_1d0_add_x_BitJoin_for_q(BITJOIN,280)@103
    assign i_mptr_bitcast_index71_jacobi_1d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_q, redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index71_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,36)@103
    assign i_mptr_bitcast_index71_jacobi_1d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index71_jacobi_1d0_add_x_BitJoin_for_q_q[63:0];

    // i_llvm_fpga_mem_memdep_jacobi_1d42(BLACKBOX,88)@103
    // in in_i_stall@20000000
    // out out_lsu_memdep_o_active@20000000
    // out out_memdep_jacobi_1d_avm_address@20000000
    // out out_memdep_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_jacobi_1d_avm_enable@20000000
    // out out_memdep_jacobi_1d_avm_read@20000000
    // out out_memdep_jacobi_1d_avm_write@20000000
    // out out_memdep_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@134
    // out out_o_writeack@134
    jacobi_1d_i_llvm_fpga_mem_memdep_0 thei_llvm_fpga_mem_memdep_jacobi_1d42 (
        .in_flush(in_flush),
        .in_i_address(i_mptr_bitcast_index71_jacobi_1d0_dupName_0_trunc_sel_x_b),
        .in_i_dependence(bubble_select_redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_b),
        .in_i_predicate(bubble_select_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_b),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_jacobi_1d42_backStall),
        .in_i_valid(SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_V0),
        .in_i_writedata(bgTrunc_i_mul_add19_jacobi_1d37_sel_x_b),
        .in_memdep_jacobi_1d_avm_readdata(in_memdep_jacobi_1d_avm_readdata),
        .in_memdep_jacobi_1d_avm_readdatavalid(in_memdep_jacobi_1d_avm_readdatavalid),
        .in_memdep_jacobi_1d_avm_waitrequest(in_memdep_jacobi_1d_avm_waitrequest),
        .in_memdep_jacobi_1d_avm_writeack(in_memdep_jacobi_1d_avm_writeack),
        .out_lsu_memdep_o_active(i_llvm_fpga_mem_memdep_jacobi_1d42_out_lsu_memdep_o_active),
        .out_memdep_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_address),
        .out_memdep_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_burstcount),
        .out_memdep_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_byteenable),
        .out_memdep_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_enable),
        .out_memdep_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_read),
        .out_memdep_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_write),
        .out_memdep_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0(STALLENABLE,690)
    // Valid signal propagation
    assign SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 = SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0 = SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_backStall & SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN = ~ (SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0 = SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN & SR_SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_V;
    // Backward Stall generation
    assign SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backStall = ~ (SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b0)
            begin
                SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 & SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_R_v_0 <= SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_v_s_0;
            end

        end
    end

    // SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2(STALLENABLE,659)
    // Valid signal propagation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_V0 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Stall signal propagation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_s_tv_0 = SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_backStall & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_R_v_0;
    // Backward Enable generation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backEN = ~ (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_v_s_0 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backEN & SR_SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_V;
    // Backward Stall generation
    assign SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backStall = ~ (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_backEN == 1'b0)
            begin
                SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_R_v_0 & SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_s_tv_0;
            end
            else
            begin
                SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_R_v_0 <= SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_v_s_0;
            end

        end
    end

    // i_memdep_phi6_or9_jacobi_1d41(LOGICAL,116)@67 + 1
    assign i_memdep_phi6_or9_jacobi_1d41_qi = bubble_select_i_llvm_fpga_pop_i1_memdep_phi4_pop1254_pop22_jacobi_1d39_b | bubble_select_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_b;
    dspba_delay_ver #( .width(1), .depth(1), .reset_kind("ASYNC"), .phase(0), .modulus(1), .reset_high(1'b0) )
    i_memdep_phi6_or9_jacobi_1d41_delay ( .xin(i_memdep_phi6_or9_jacobi_1d41_qi), .xout(i_memdep_phi6_or9_jacobi_1d41_q), .ena(SE_i_memdep_phi6_or9_jacobi_1d41_backEN[0]), .clk(clock), .aclr(resetn) );

    // redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo(STALLFIFO,421)
    assign redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_in = SE_i_memdep_phi6_or9_jacobi_1d41_V0;
    assign redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_in = SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_backStall;
    assign redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_data_in = i_memdep_phi6_or9_jacobi_1d41_q;
    assign redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_in_bitsignaltemp = redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_in[0];
    assign redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_in_bitsignaltemp = redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_in[0];
    assign redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_out[0] = redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_out_bitsignaltemp;
    assign redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_out[0] = redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(36),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo (
        .valid_in(redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_in_bitsignaltemp),
        .stall_in(redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_in_bitsignaltemp),
        .data_in(i_memdep_phi6_or9_jacobi_1d41_q),
        .valid_out(redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_out_bitsignaltemp),
        .stall_out(redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_stall_out_bitsignaltemp),
        .data_out(redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo(STALLFIFO,435)
    assign redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_in = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V5;
    assign redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_in = SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_backStall;
    assign redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_data_in = i_first_cleanup_xor33_jacobi_1d2_q;
    assign redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_in_bitsignaltemp = redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_in[0];
    assign redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_in_bitsignaltemp = redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_in[0];
    assign redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_out[0] = redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_out_bitsignaltemp;
    assign redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_out[0] = redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(35),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo (
        .valid_in(redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_in_bitsignaltemp),
        .stall_in(redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_in_bitsignaltemp),
        .data_in(i_first_cleanup_xor33_jacobi_1d2_q),
        .valid_out(redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_out_bitsignaltemp),
        .stall_out(redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_stall_out_bitsignaltemp),
        .data_out(redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo(STALLENABLE,716)
    // Valid signal propagation
    assign SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_V0 = SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_backStall = i_llvm_fpga_mem_memdep_jacobi_1d42_out_o_stall | ~ (SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and0 = redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_valid_out;
    assign SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and1 = redist13_i_memdep_phi6_or9_jacobi_1d41_q_36_fifo_valid_out & SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and0;
    assign SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and2 = SE_i_mptr_bitcast_index71_jacobi_1d0_add_x_p2_of_2_V0 & SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and1;
    assign SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and3 = SE_redist9_i_mptr_bitcast_index71_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 & SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and2;
    assign SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_wireValid = SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_V0 & SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_and3;

    // SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0(STALLENABLE,726)
    // Valid signal propagation
    assign SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_V0 = SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_R_v_0;
    // Stall signal propagation
    assign SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_s_tv_0 = SE_out_redist25_i_first_cleanup_xor33_jacobi_1d2_q_34_fifo_backStall & SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_R_v_0;
    // Backward Enable generation
    assign SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backEN = ~ (SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_v_s_0 = SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backEN & SE_coalesced_delay_2_0_V0;
    // Backward Stall generation
    assign SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backStall = ~ (SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backEN == 1'b0)
            begin
                SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_R_v_0 <= SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_R_v_0 & SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_s_tv_0;
            end
            else
            begin
                SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_R_v_0 <= SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_v_s_0;
            end

        end
    end

    // SE_coalesced_delay_2_0(STALLENABLE,731)
    // Valid signal propagation
    assign SE_coalesced_delay_2_0_V0 = SE_coalesced_delay_2_0_R_v_0;
    // Stall signal propagation
    assign SE_coalesced_delay_2_0_s_tv_0 = SE_redist35_bgTrunc_i_reduction_jacobi_1d_7_jacobi_1d35_sel_x_b_1_0_backStall & SE_coalesced_delay_2_0_R_v_0;
    // Backward Enable generation
    assign SE_coalesced_delay_2_0_backEN = ~ (SE_coalesced_delay_2_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_coalesced_delay_2_0_v_s_0 = SE_coalesced_delay_2_0_backEN & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_V0;
    // Backward Stall generation
    assign SE_coalesced_delay_2_0_backStall = ~ (SE_coalesced_delay_2_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_coalesced_delay_2_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_coalesced_delay_2_0_backEN == 1'b0)
            begin
                SE_coalesced_delay_2_0_R_v_0 <= SE_coalesced_delay_2_0_R_v_0 & SE_coalesced_delay_2_0_s_tv_0;
            end
            else
            begin
                SE_coalesced_delay_2_0_R_v_0 <= SE_coalesced_delay_2_0_v_s_0;
            end

        end
    end

    // i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33(BLACKBOX,89)@69
    // in in_i_stall@20000000
    // out out_o_readdata@101
    // out out_o_stall@20000000
    // out out_o_valid@101
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_11_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D5),
        .in_i_dependence(SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D3),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V1),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_valid),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28(BLACKBOX,91)@69
    // in in_i_stall@20000000
    // out out_o_readdata@101
    // out out_o_stall@20000000
    // out out_o_valid@101
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_9_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D2),
        .in_i_predicate(SR_SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_D4),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index63_jacobi_1d0_add_x_BitJoin_for_q_V0),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_valid),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28(STALLENABLE,578)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_V0 = SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_backStall = SE_coalesced_delay_2_0_backStall | ~ (SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_and0 = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_o_valid;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_and1 = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_and0;
    assign SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_wireValid = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_o_valid & SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_and1;

    // i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2(ADD,270)@68 + 1
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_cin = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D2;
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_a = { {1'b0, SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D0}, 1'b1 };
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_b = { {1'b0, SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_D1}, i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_cin[0] };
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_o <= 7'b0;
        end
        else if (SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_backEN == 1'b1)
        begin
            i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_o <= $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_a) + $unsigned(i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_b);
        end
    end
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_q = i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_o[5:1];

    // redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0(REG,418)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(60'b000000000000000000000000000000000000000000000000000000000000);
        end
        else if (SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_backEN == 1'b1)
        begin
            redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_q <= $unsigned(SR_SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_D0);
        end
    end

    // i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q(BITJOIN,271)@69
    assign i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_q = {i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_q, redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_q};

    // i_mptr_bitcast_index65_jacobi_1d0_dupName_0_trunc_sel_x(BITSELECT,30)@69
    assign i_mptr_bitcast_index65_jacobi_1d0_dupName_0_trunc_sel_x_b = i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_q[63:0];

    // SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q(STALLREG,893)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid <= 1'b0;
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data0 <= 64'bxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx;
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data1 <= 1'bx;
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data2 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid <= SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall & (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid | SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_i_valid);

            if (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data0 <= i_mptr_bitcast_index65_jacobi_1d0_dupName_0_trunc_sel_x_b;
                SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data1 <= i_reduction_jacobi_1d_1_jacobi_1d24_q;
                SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data2 <= i_first_cleanup_xor33_jacobi_1d2_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and0 = SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_p2_of_2_V0;
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and1 = SE_redist10_i_mptr_bitcast_index65_jacobi_1d0_add_x_p1_of_2_q_1_0_V0 & SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and0;
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and2 = SE_out_i_llvm_fpga_pop_i2_cleanups30_pop18_jacobi_1d0_V3 & SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and1;
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_i_valid = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop16_jacobi_1d23_V0 & SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_and2;
    // Stall signal propagation
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_backStall = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid | ~ (SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_i_valid);

    // Valid
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_V = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid : SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_i_valid;

    // Data0
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D0 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data0 : i_mptr_bitcast_index65_jacobi_1d0_dupName_0_trunc_sel_x_b;
    // Data1
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D1 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data1 : i_reduction_jacobi_1d_1_jacobi_1d24_q;
    // Data2
    assign SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D2 = SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_valid == 1'b1 ? SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_r_data2 : i_first_cleanup_xor33_jacobi_1d2_q;

    // i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25(BLACKBOX,90)@69
    // in in_i_stall@20000000
    // out out_o_readdata@101
    // out out_o_stall@20000000
    // out out_o_valid@101
    // out out_unnamed_jacobi_1d7_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d7_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d7_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d7_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata@20000000
    jacobi_1d_i_llvm_fpga_mem_unnamed_7_jacobi_1d0 thei_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25 (
        .in_flush(in_flush),
        .in_i_address(SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D0),
        .in_i_dependence(SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D1),
        .in_i_predicate(SR_SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_D2),
        .in_i_stall(SE_out_i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_backStall),
        .in_i_valid(SE_i_mptr_bitcast_index65_jacobi_1d0_add_x_BitJoin_for_q_V0),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d7_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d7_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d7_jacobi_1d_avm_writeack),
        .out_o_readdata(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_readdata),
        .out_o_stall(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_o_valid),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_address(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_enable(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_read(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_write(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata(i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata),
        .clock(clock),
        .resetn(resetn)
    );

    // dupName_0_ext_sig_sync_out_x(GPOUT,10)
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d7_jacobi_1d25_out_unnamed_jacobi_1d7_jacobi_1d_avm_burstcount;

    // redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1(REG,427)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_backEN == 1'b1)
        begin
            redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_q <= $unsigned(SR_SE_redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_D0);
        end
    end

    // bubble_join_redist14_i_masked36_jacobi_1d54_q_65_fifo(BITJOIN,517)
    assign bubble_join_redist14_i_masked36_jacobi_1d54_q_65_fifo_q = redist14_i_masked36_jacobi_1d54_q_65_fifo_data_out;

    // bubble_select_redist14_i_masked36_jacobi_1d54_q_65_fifo(BITSELECT,518)
    assign bubble_select_redist14_i_masked36_jacobi_1d54_q_65_fifo_b = $unsigned(bubble_join_redist14_i_masked36_jacobi_1d54_q_65_fifo_q[0:0]);

    // bubble_join_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo(BITJOIN,532)
    assign bubble_join_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_q = redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_data_out;

    // bubble_select_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo(BITSELECT,533)
    assign bubble_select_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_b = $unsigned(bubble_join_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_q[63:0]);

    // dupName_0_sync_out_x(GPOUT,11)@134
    assign out_exitcond1749_pop19 = bubble_select_i_llvm_fpga_pop_i1_exitcond1749_pop19_jacobi_1d55_b;
    assign out_mPtr_bitcast7076 = bubble_select_redist24_i_llvm_fpga_ffwd_dest_p1025s_class_ihc_mm_hosts_b8021_jacobi_1d10_out_dest_data_out_1_0_33_fifo_b;
    assign out_masked36 = bubble_select_redist14_i_masked36_jacobi_1d54_q_65_fifo_b;
    assign out_memdep = bubble_select_i_llvm_fpga_mem_memdep_jacobi_1d42_b;
    assign out_memdep_phi6_pop1355_pop23 = redist18_i_llvm_fpga_pop_i1_memdep_phi6_pop1355_pop23_jacobi_1d20_out_data_out_67_1_q;
    assign out_notcmp3951_pop20 = bubble_select_i_llvm_fpga_pop_i1_notcmp3951_pop20_jacobi_1d57_b;
    assign out_valid_out = SE_out_bubble_out_i_llvm_fpga_pop_i8_fpga_indvars_iv_pop14_jacobi_1d44_1_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,13)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d9_jacobi_1d28_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,15)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_address = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_enable = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_read = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_write = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_unnamed_jacobi_1d11_jacobi_1d33_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,16)
    assign out_memdep_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_address;
    assign out_memdep_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_enable;
    assign out_memdep_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_read;
    assign out_memdep_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_write;
    assign out_memdep_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_writedata;
    assign out_memdep_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_byteenable;
    assign out_memdep_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_jacobi_1d42_out_memdep_jacobi_1d_avm_burstcount;

    // dupName_4_ext_sig_sync_out_x(GPOUT,17)
    assign out_lsu_memdep_o_active = i_llvm_fpga_mem_memdep_jacobi_1d42_out_lsu_memdep_o_active;

    // ext_sig_sync_out(GPOUT,76)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_valid_out = i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_exiting_stall_out = i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,205)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going27_jacobi_1d4_out_pipeline_valid_out;

    // sync_out(GPOUT,212)@0
    assign out_stall_out = SE_stall_entry_backStall;

endmodule
