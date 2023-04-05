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

// SystemVerilog created from bb_atax_B13_stall_region
// Created for function/kernel atax
// SystemVerilog created on Wed Apr  5 13:55:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_bb_B13_stall_region (
    input wire [31:0] in_unnamed_atax18_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax18_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax18_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax18_atax_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax0_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax0_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [63:0] in_intel_reserved_ffwd_3_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_atax19_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax19_atax_avm_writeack,
    input wire [0:0] in_unnamed_atax19_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax19_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax18_atax_avm_address,
    output wire [0:0] out_unnamed_atax18_atax_avm_enable,
    output wire [0:0] out_unnamed_atax18_atax_avm_read,
    output wire [0:0] out_unnamed_atax18_atax_avm_write,
    output wire [31:0] out_unnamed_atax18_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax18_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax18_atax_avm_burstcount,
    output wire [0:0] out_c0_exe8236,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_6_atax_avm_readdata,
    input wire [0:0] in_memdep_6_atax_avm_writeack,
    input wire [0:0] in_memdep_6_atax_avm_waitrequest,
    input wire [0:0] in_memdep_6_atax_avm_readdatavalid,
    output wire [31:0] out_unnamed_atax19_atax_avm_address,
    output wire [0:0] out_unnamed_atax19_atax_avm_enable,
    output wire [0:0] out_unnamed_atax19_atax_avm_read,
    output wire [0:0] out_unnamed_atax19_atax_avm_write,
    output wire [31:0] out_unnamed_atax19_atax_avm_writedata,
    output wire [3:0] out_unnamed_atax19_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax19_atax_avm_burstcount,
    input wire [63:0] in_memdep_7_atax_avm_readdata,
    input wire [0:0] in_memdep_7_atax_avm_writeack,
    input wire [0:0] in_memdep_7_atax_avm_waitrequest,
    input wire [0:0] in_memdep_7_atax_avm_readdatavalid,
    output wire [63:0] out_memdep_6_atax_avm_address,
    output wire [0:0] out_memdep_6_atax_avm_enable,
    output wire [0:0] out_memdep_6_atax_avm_read,
    output wire [0:0] out_memdep_6_atax_avm_write,
    output wire [63:0] out_memdep_6_atax_avm_writedata,
    output wire [7:0] out_memdep_6_atax_avm_byteenable,
    output wire [0:0] out_memdep_6_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_6_o_active,
    output wire [63:0] out_memdep_7_atax_avm_address,
    output wire [0:0] out_memdep_7_atax_avm_enable,
    output wire [0:0] out_memdep_7_atax_avm_read,
    output wire [0:0] out_memdep_7_atax_avm_write,
    output wire [63:0] out_memdep_7_atax_avm_writedata,
    output wire [7:0] out_memdep_7_atax_avm_byteenable,
    output wire [0:0] out_memdep_7_atax_avm_burstcount,
    output wire [0:0] out_lsu_memdep_7_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] c_i4_714_q;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_lsu_memdep_6_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_6_atax7_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_lsu_memdep_7_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_7_atax11_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax0_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_feedback_stall_out_23;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_feedback_stall_out_24;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax12_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax12_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_atax12_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_feedback_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_feedback_valid_out_23;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax8_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax8_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax8_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_atax8_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push24_atax9_out_feedback_out_24;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push24_atax9_out_feedback_valid_out_24;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push24_atax9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push24_atax9_out_valid_out;
    wire [3:0] i_next_initerations_atax6_vt_join_q;
    wire [2:0] i_next_initerations_atax6_vt_select_2_b;
    wire [0:0] atax_B13_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] atax_B13_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [0:0] i_last_initeration_atax10_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl;
    wire [2:0] rightShiftStage0Idx1Rng1_uid76_i_next_initerations_atax0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid78_i_next_initerations_atax0_shift_x_q;
    wire [0:0] rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_s;
    reg [3:0] rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_q;
    wire [96:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_in;
    wire redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_in;
    wire redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_data_in;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_out;
    wire redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_out;
    wire redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_data_out;
    wire [0:0] redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in;
    wire redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in;
    wire redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_in;
    wire [0:0] redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out;
    wire redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out;
    wire redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_out;
    reg [0:0] redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q;
    reg [0:0] redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q;
    reg [0:0] redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q;
    reg [0:0] redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q;
    reg [0:0] redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_q;
    reg [0:0] redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_in;
    wire redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_in;
    wire redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_data_in;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_out;
    wire redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_out;
    wire redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_data_out;
    wire [0:0] coalesced_delay_0_fifo_valid_in;
    wire coalesced_delay_0_fifo_valid_in_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_in;
    wire coalesced_delay_0_fifo_stall_in_bitsignaltemp;
    wire [96:0] coalesced_delay_0_fifo_data_in;
    wire [0:0] coalesced_delay_0_fifo_valid_out;
    wire coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    wire [0:0] coalesced_delay_0_fifo_stall_out;
    wire coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    wire [96:0] coalesced_delay_0_fifo_data_out;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_6_atax7_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_6_atax7_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_7_atax11_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_7_atax11_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_atax0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_atax0_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax1_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax1_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [0:0] bubble_join_atax_B13_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_atax_B13_merge_reg_aunroll_x_b;
    wire [195:0] bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_i;
    wire [0:0] bubble_join_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_q;
    wire [0:0] bubble_select_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_b;
    wire [0:0] bubble_join_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_q;
    wire [0:0] bubble_select_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b;
    wire [0:0] bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_q;
    wire [0:0] bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_b;
    wire [96:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [96:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_atax11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_atax0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_atax12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_atax8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push24_atax9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push24_atax9_backStall;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_atax6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_atax6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_or0;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_V0;
    wire [0:0] SE_i_next_initerations_atax6_vt_join_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_out_atax_B13_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_atax_B13_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_atax_B13_merge_reg_aunroll_x_V0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V3;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_wireValid;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_and0;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_and1;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_backStall;
    wire [0:0] SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_V0;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireStall;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg0;
    reg [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg1;
    reg [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_or0;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V0;
    wire [0:0] SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V1;
    reg [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0;
    reg [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_or0;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backStall;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V0;
    wire [0:0] SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V1;
    reg [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    reg [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0;
    reg [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backStall;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_V0;
    reg [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0;
    reg [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_or0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backStall;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V0;
    wire [0:0] SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V1;
    reg [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_R_v_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_V0;
    reg [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_R_v_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_V0;
    reg [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_R_v_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_V0;
    reg [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_R_v_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_V0;
    reg [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_0;
    reg [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_1;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_v_s_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_1;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backEN;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_or0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backStall;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_V0;
    wire [0:0] SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_V1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_and0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_backStall;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_join_i_valid;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_join_r_valid;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_join_and0;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_join_r_data0;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_join_r_data1;
    reg [0:0] SR_SE_i_next_initerations_atax6_vt_join_r_data2;
    reg [3:0] SR_SE_i_next_initerations_atax6_vt_join_r_data3;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_join_backStall;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_join_V;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_join_D0;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_join_D1;
    wire [0:0] SR_SE_i_next_initerations_atax6_vt_join_D2;
    wire [3:0] SR_SE_i_next_initerations_atax6_vt_join_D3;


    // rightShiftStage0Idx1Rng1_uid76_i_next_initerations_atax0_shift_x(BITSELECT,75)@69
    assign rightShiftStage0Idx1Rng1_uid76_i_next_initerations_atax0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax1_b[3:1];

    // rightShiftStage0Idx1_uid78_i_next_initerations_atax0_shift_x(BITJOIN,77)@69
    assign rightShiftStage0Idx1_uid78_i_next_initerations_atax0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid76_i_next_initerations_atax0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax1(BITJOIN,121)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax1_q = i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax1(BITSELECT,122)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax1_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop24_atax1_q[3:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid80_i_next_initerations_atax0_shift_x(MUX,79)@69
    assign rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax1_b or rightShiftStage0Idx1_uid78_i_next_initerations_atax0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_s)
            1'b0 : rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop24_atax1_b;
            1'b1 : rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_q = rightShiftStage0Idx1_uid78_i_next_initerations_atax0_shift_x_q;
            default : rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_atax6_vt_select_2(BITSELECT,21)@69
    assign i_next_initerations_atax6_vt_select_2_b = rightShiftStage0_uid80_i_next_initerations_atax0_shift_x_q[2:0];

    // i_next_initerations_atax6_vt_join(BITJOIN,20)@69
    assign i_next_initerations_atax6_vt_join_q = {GND_q, i_next_initerations_atax6_vt_select_2_b};

    // SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0(STALLENABLE,187)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_V0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_s_tv_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backStall & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backEN = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_v_s_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backEN & SE_out_i_llvm_fpga_pipeline_keep_going_atax0_V1;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backStall = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_R_v_0 & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_v_s_0;
            end

        end
    end

    // SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1(STALLENABLE,188)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_V0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_s_tv_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backStall & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backEN = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_v_s_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backEN & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_V0;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backStall = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_R_v_0 & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_v_s_0;
            end

        end
    end

    // SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2(STALLENABLE,189)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_V0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_s_tv_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backStall & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backEN = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_v_s_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backEN & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_V0;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backStall = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_R_v_0 & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_v_s_0;
            end

        end
    end

    // SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3(STALLENABLE,190)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_V0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_R_v_0;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_s_tv_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backStall & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_R_v_0;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backEN = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_v_s_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backEN & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_V0;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backStall = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_R_v_0 & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_v_s_0;
            end

        end
    end

    // bubble_join_i_llvm_fpga_pipeline_keep_going_atax0(BITJOIN,115)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_atax0_q = i_llvm_fpga_pipeline_keep_going_atax0_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_atax0(BITSELECT,116)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_atax0_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_atax0_q[0:0]);

    // redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0(REG,100)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_q <= $unsigned(bubble_select_i_llvm_fpga_pipeline_keep_going_atax0_b);
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1(REG,101)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_q <= $unsigned(redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_q);
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2(REG,102)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_q <= $unsigned(redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_1_q);
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_q <= $unsigned(redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_2_q);
        end
    end

    // redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backEN == 1'b1)
        begin
            redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q <= $unsigned(redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_q);
        end
    end

    // i_last_initeration_atax10_sel_x(BITSELECT,65)@69
    assign i_last_initeration_atax10_sel_x_b = i_next_initerations_atax6_vt_join_q[0:0];

    // SE_out_i_llvm_fpga_push_i1_memdep_phi8_push23_atax13(STALLENABLE,159)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_wireValid = i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_valid_out;

    // bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo(BITJOIN,141)
    assign bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_q = redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_data_out;

    // bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo(BITSELECT,142)
    assign bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_b = $unsigned(bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_q[0:0]);

    // SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo(STALLENABLE,179)
    // Valid signal propagation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_V0 = SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_backStall = in_stall_in | ~ (SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_and0 = redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_out;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_and1 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_out & SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_and0;
    assign SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_7_atax11_V0 & SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_and1;

    // redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo(STALLFIFO,93)
    assign redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V2;
    assign redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_in = SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_backStall;
    assign redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_i;
    assign redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_in[0];
    assign redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_in_bitsignaltemp = redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_in[0];
    assign redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_out[0] = redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_out_bitsignaltemp;
    assign redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_out[0] = redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo (
        .valid_in(redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_i),
        .valid_out(redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN == 1'b1)
        begin
            redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q <= $unsigned(bubble_select_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b);
        end
    end

    // i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x(BLACKBOX,70)@64
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@69
    // out out_unnamed_atax18_atax_avm_address@20000000
    // out out_unnamed_atax18_atax_avm_burstcount@20000000
    // out out_unnamed_atax18_atax_avm_byteenable@20000000
    // out out_unnamed_atax18_atax_avm_enable@20000000
    // out out_unnamed_atax18_atax_avm_read@20000000
    // out out_unnamed_atax18_atax_avm_write@20000000
    // out out_unnamed_atax18_atax_avm_writedata@20000000
    // out out_unnamed_atax19_atax_avm_address@20000000
    // out out_unnamed_atax19_atax_avm_burstcount@20000000
    // out out_unnamed_atax19_atax_avm_byteenable@20000000
    // out out_unnamed_atax19_atax_avm_enable@20000000
    // out out_unnamed_atax19_atax_avm_read@20000000
    // out out_unnamed_atax19_atax_avm_write@20000000
    // out out_unnamed_atax19_atax_avm_writedata@20000000
    // out out_c0_exit228_0_tpl@69
    // out out_c0_exit228_1_tpl@69
    // out out_c0_exit228_2_tpl@69
    // out out_c0_exit228_3_tpl@69
    // out out_c0_exit228_4_tpl@69
    // out out_c0_exit228_5_tpl@69
    // out out_c0_exit228_6_tpl@69
    // out out_c0_exit228_7_tpl@69
    // out out_c0_exit228_8_tpl@69
    atax_i_sfc_s_c0_in_for_body78_s_c0_enter21717_atax4 thei_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x (
        .in_flush(in_flush),
        .in_forked(redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(in_intel_reserved_ffwd_3_0),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_atax0_b),
        .in_unnamed_atax18_atax_avm_readdata(in_unnamed_atax18_atax_avm_readdata),
        .in_unnamed_atax18_atax_avm_readdatavalid(in_unnamed_atax18_atax_avm_readdatavalid),
        .in_unnamed_atax18_atax_avm_waitrequest(in_unnamed_atax18_atax_avm_waitrequest),
        .in_unnamed_atax18_atax_avm_writeack(in_unnamed_atax18_atax_avm_writeack),
        .in_unnamed_atax19_atax_avm_readdata(in_unnamed_atax19_atax_avm_readdata),
        .in_unnamed_atax19_atax_avm_readdatavalid(in_unnamed_atax19_atax_avm_readdatavalid),
        .in_unnamed_atax19_atax_avm_waitrequest(in_unnamed_atax19_atax_avm_waitrequest),
        .in_unnamed_atax19_atax_avm_writeack(in_unnamed_atax19_atax_avm_writeack),
        .in_c0_eni2216_0_tpl(GND_q),
        .in_c0_eni2216_1_tpl(redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q),
        .in_c0_eni2216_2_tpl(bubble_select_i_llvm_fpga_pipeline_keep_going_atax0_b),
        .out_o_stall(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_o_valid),
        .out_unnamed_atax18_atax_avm_address(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_address),
        .out_unnamed_atax18_atax_avm_burstcount(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_burstcount),
        .out_unnamed_atax18_atax_avm_byteenable(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_byteenable),
        .out_unnamed_atax18_atax_avm_enable(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_enable),
        .out_unnamed_atax18_atax_avm_read(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_read),
        .out_unnamed_atax18_atax_avm_write(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_write),
        .out_unnamed_atax18_atax_avm_writedata(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_writedata),
        .out_unnamed_atax19_atax_avm_address(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_address),
        .out_unnamed_atax19_atax_avm_burstcount(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_burstcount),
        .out_unnamed_atax19_atax_avm_byteenable(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_byteenable),
        .out_unnamed_atax19_atax_avm_enable(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_enable),
        .out_unnamed_atax19_atax_avm_read(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_read),
        .out_unnamed_atax19_atax_avm_write(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_write),
        .out_unnamed_atax19_atax_avm_writedata(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_writedata),
        .out_c0_exit228_0_tpl(),
        .out_c0_exit228_1_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_1_tpl),
        .out_c0_exit228_2_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_2_tpl),
        .out_c0_exit228_3_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_3_tpl),
        .out_c0_exit228_4_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_4_tpl),
        .out_c0_exit228_5_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_5_tpl),
        .out_c0_exit228_6_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_6_tpl),
        .out_c0_exit228_7_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_7_tpl),
        .out_c0_exit228_8_tpl(i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x(STALLENABLE,172)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_backStall) & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed1 = (~ (i_llvm_fpga_push_i1_notexitcond_atax8_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed2 = (~ (redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2(STALLENABLE,153)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_backStall = i_llvm_fpga_mem_memdep_6_atax7_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_and0 = i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_wireValid = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2(BITJOIN,118)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_q = i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2(BITSELECT,119)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_q[0:0]);

    // bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x(BITJOIN,132)
    assign bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q = {i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl, i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_7_tpl, i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_6_tpl, i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_5_tpl, i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_4_tpl, i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_3_tpl, i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_2_tpl, i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x(BITSELECT,133)
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[97:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[129:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[193:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[194:194]);
    assign bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_q[195:195]);

    // i_llvm_fpga_mem_memdep_6_atax7(BLACKBOX,10)@69
    // in in_i_stall@20000000
    // out out_lsu_memdep_6_o_active@20000000
    // out out_memdep_6_atax_avm_address@20000000
    // out out_memdep_6_atax_avm_burstcount@20000000
    // out out_memdep_6_atax_avm_byteenable@20000000
    // out out_memdep_6_atax_avm_enable@20000000
    // out out_memdep_6_atax_avm_read@20000000
    // out out_memdep_6_atax_avm_write@20000000
    // out out_memdep_6_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@100
    // out out_o_writeack@100
    atax_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_atax7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_e),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_b),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_c),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_d),
        .in_memdep_6_atax_avm_readdata(in_memdep_6_atax_avm_readdata),
        .in_memdep_6_atax_avm_readdatavalid(in_memdep_6_atax_avm_readdatavalid),
        .in_memdep_6_atax_avm_waitrequest(in_memdep_6_atax_avm_waitrequest),
        .in_memdep_6_atax_avm_writeack(in_memdep_6_atax_avm_writeack),
        .out_lsu_memdep_6_o_active(i_llvm_fpga_mem_memdep_6_atax7_out_lsu_memdep_6_o_active),
        .out_memdep_6_atax_avm_address(i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_address),
        .out_memdep_6_atax_avm_burstcount(i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_burstcount),
        .out_memdep_6_atax_avm_byteenable(i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_byteenable),
        .out_memdep_6_atax_avm_enable(i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_enable),
        .out_memdep_6_atax_avm_read(i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_read),
        .out_memdep_6_atax_avm_write(i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_write),
        .out_memdep_6_atax_avm_writedata(i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_6_atax7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_6_atax7_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_6_atax7_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,91)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_g};

    // coalesced_delay_0_fifo(STALLFIFO,106)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V3;
    assign coalesced_delay_0_fifo_stall_in = SE_out_coalesced_delay_0_fifo_backStall;
    assign coalesced_delay_0_fifo_data_in = join_for_coalesced_delay_0_q;
    assign coalesced_delay_0_fifo_valid_in_bitsignaltemp = coalesced_delay_0_fifo_valid_in[0];
    assign coalesced_delay_0_fifo_stall_in_bitsignaltemp = coalesced_delay_0_fifo_stall_in[0];
    assign coalesced_delay_0_fifo_valid_out[0] = coalesced_delay_0_fifo_valid_out_bitsignaltemp;
    assign coalesced_delay_0_fifo_stall_out[0] = coalesced_delay_0_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(32),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(97),
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,195)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_7_atax11_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_memdep_6_atax7_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_memdep_6_atax7(BITJOIN,108)
    assign bubble_join_i_llvm_fpga_mem_memdep_6_atax7_q = i_llvm_fpga_mem_memdep_6_atax7_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_6_atax7(BITSELECT,109)
    assign bubble_select_i_llvm_fpga_mem_memdep_6_atax7_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_6_atax7_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,144)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,145)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[96:0]);

    // sel_for_coalesced_delay_0(BITSELECT,92)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[96:96]);

    // i_llvm_fpga_mem_memdep_7_atax11(BLACKBOX,11)@100
    // in in_i_stall@20000000
    // out out_lsu_memdep_7_o_active@20000000
    // out out_memdep_7_atax_avm_address@20000000
    // out out_memdep_7_atax_avm_burstcount@20000000
    // out out_memdep_7_atax_avm_byteenable@20000000
    // out out_memdep_7_atax_avm_enable@20000000
    // out out_memdep_7_atax_avm_read@20000000
    // out out_memdep_7_atax_avm_write@20000000
    // out out_memdep_7_atax_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@131
    // out out_o_writeack@131
    atax_i_llvm_fpga_mem_memdep_7_0 thei_llvm_fpga_mem_memdep_7_atax11 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_6_atax7_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_7_atax11_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(sel_for_coalesced_delay_0_c),
        .in_memdep_7_atax_avm_readdata(in_memdep_7_atax_avm_readdata),
        .in_memdep_7_atax_avm_readdatavalid(in_memdep_7_atax_avm_readdatavalid),
        .in_memdep_7_atax_avm_waitrequest(in_memdep_7_atax_avm_waitrequest),
        .in_memdep_7_atax_avm_writeack(in_memdep_7_atax_avm_writeack),
        .out_lsu_memdep_7_o_active(i_llvm_fpga_mem_memdep_7_atax11_out_lsu_memdep_7_o_active),
        .out_memdep_7_atax_avm_address(i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_address),
        .out_memdep_7_atax_avm_burstcount(i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_burstcount),
        .out_memdep_7_atax_avm_byteenable(i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_byteenable),
        .out_memdep_7_atax_avm_enable(i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_enable),
        .out_memdep_7_atax_avm_read(i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_read),
        .out_memdep_7_atax_avm_write(i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_write),
        .out_memdep_7_atax_avm_writedata(i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_7_atax11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_7_atax11_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_7_atax11_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_7_atax11(BITJOIN,111)
    assign bubble_join_i_llvm_fpga_mem_memdep_7_atax11_q = i_llvm_fpga_mem_memdep_7_atax11_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_7_atax11(BITSELECT,112)
    assign bubble_select_i_llvm_fpga_mem_memdep_7_atax11_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_7_atax11_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi8_push23_atax13(BLACKBOX,16)@131
    // in in_stall_in@20000000
    // out out_data_out@132
    // out out_feedback_out_23@20000000
    // out out_feedback_valid_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@132
    atax_i_llvm_fpga_push_i1_memdep_phi8_push23_0 thei_llvm_fpga_push_i1_memdep_phi8_push23_atax13 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_7_atax11_b),
        .in_feedback_stall_in_23(i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_feedback_stall_out_23),
        .in_keep_going(bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_backStall),
        .in_valid_in(SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_V0),
        .out_data_out(),
        .out_feedback_out_23(i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_feedback_out_23),
        .out_feedback_valid_out_23(i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_feedback_valid_out_23),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_7_atax11(STALLENABLE,149)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_7_atax11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_7_atax11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed0 = (~ (SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireValid) | SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed1 = (~ (SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireValid) | SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_StallValid = SE_out_i_llvm_fpga_mem_memdep_7_atax11_backStall & SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_toReg0 = SE_out_i_llvm_fpga_mem_memdep_7_atax11_StallValid & SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_toReg1 = SE_out_i_llvm_fpga_mem_memdep_7_atax11_StallValid & SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_or0 = SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_7_atax11_consumed1 & SE_out_i_llvm_fpga_mem_memdep_7_atax11_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_backStall = SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_V0 = SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_V1 = SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_7_atax11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_7_atax11_wireValid = i_llvm_fpga_mem_memdep_7_atax11_out_o_valid;

    // SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo(STALLENABLE,193)
    // Valid signal propagation
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_V0 = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_backStall = i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_stall_out | ~ (SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_and0 = redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_out;
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_7_atax11_V1 & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_and0;

    // redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo(STALLFIFO,105)
    assign redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_in = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_V1;
    assign redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_in = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_backStall;
    assign redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_data_in = redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q;
    assign redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_in_bitsignaltemp = redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_in[0];
    assign redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_in_bitsignaltemp = redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_in[0];
    assign redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_out[0] = redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_out_bitsignaltemp;
    assign redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_out[0] = redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo (
        .valid_in(redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_in_bitsignaltemp),
        .data_in(redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q),
        .valid_out(redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4(STALLENABLE,191)
    // Valid signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_V0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_0;
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_V1 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_1;
    // Stall signal propagation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_0 = SR_SE_i_next_initerations_atax6_vt_join_backStall & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_0;
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_1 = redist8_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_67_fifo_stall_out & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_1;
    // Backward Enable generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_or0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_0;
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backEN = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_1 | SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_v_s_0 = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backEN & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_3_V0;
    // Backward Stall generation
    assign SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backStall = ~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_0 <= 1'b0;
            SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_0 & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_0;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_0 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_v_s_0;
            end

            if (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_backEN == 1'b0)
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_1 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_1 & SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_s_tv_1;
            end
            else
            begin
                SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_R_v_1 <= SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_v_s_0;
            end

        end
    end

    // SE_i_next_initerations_atax6_vt_join(STALLENABLE,164)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_atax6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_atax6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_atax6_vt_join_fromReg0 <= SE_i_next_initerations_atax6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_atax6_vt_join_fromReg1 <= SE_i_next_initerations_atax6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_atax6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_atax12_out_stall_out) & SE_i_next_initerations_atax6_vt_join_wireValid) | SE_i_next_initerations_atax6_vt_join_fromReg0;
    assign SE_i_next_initerations_atax6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push24_atax9_out_stall_out) & SE_i_next_initerations_atax6_vt_join_wireValid) | SE_i_next_initerations_atax6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_atax6_vt_join_StallValid = SE_i_next_initerations_atax6_vt_join_backStall & SE_i_next_initerations_atax6_vt_join_wireValid;
    assign SE_i_next_initerations_atax6_vt_join_toReg0 = SE_i_next_initerations_atax6_vt_join_StallValid & SE_i_next_initerations_atax6_vt_join_consumed0;
    assign SE_i_next_initerations_atax6_vt_join_toReg1 = SE_i_next_initerations_atax6_vt_join_StallValid & SE_i_next_initerations_atax6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_atax6_vt_join_or0 = SE_i_next_initerations_atax6_vt_join_consumed0;
    assign SE_i_next_initerations_atax6_vt_join_wireStall = ~ (SE_i_next_initerations_atax6_vt_join_consumed1 & SE_i_next_initerations_atax6_vt_join_or0);
    assign SE_i_next_initerations_atax6_vt_join_backStall = SE_i_next_initerations_atax6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_atax6_vt_join_V0 = SE_i_next_initerations_atax6_vt_join_wireValid & ~ (SE_i_next_initerations_atax6_vt_join_fromReg0);
    assign SE_i_next_initerations_atax6_vt_join_V1 = SE_i_next_initerations_atax6_vt_join_wireValid & ~ (SE_i_next_initerations_atax6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_atax6_vt_join_wireValid = SR_SE_i_next_initerations_atax6_vt_join_V;

    // SR_SE_i_next_initerations_atax6_vt_join(STALLREG,251)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_i_next_initerations_atax6_vt_join_r_valid <= 1'b0;
            SR_SE_i_next_initerations_atax6_vt_join_r_data0 <= 1'bx;
            SR_SE_i_next_initerations_atax6_vt_join_r_data1 <= 1'bx;
            SR_SE_i_next_initerations_atax6_vt_join_r_data2 <= 1'bx;
            SR_SE_i_next_initerations_atax6_vt_join_r_data3 <= 4'bxxxx;
        end
        else
        begin
            // Valid
            SR_SE_i_next_initerations_atax6_vt_join_r_valid <= SE_i_next_initerations_atax6_vt_join_backStall & (SR_SE_i_next_initerations_atax6_vt_join_r_valid | SR_SE_i_next_initerations_atax6_vt_join_i_valid);

            if (SR_SE_i_next_initerations_atax6_vt_join_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_i_next_initerations_atax6_vt_join_r_data0 <= i_last_initeration_atax10_sel_x_b;
                SR_SE_i_next_initerations_atax6_vt_join_r_data1 <= $unsigned(redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q);
                SR_SE_i_next_initerations_atax6_vt_join_r_data2 <= $unsigned(redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q);
                SR_SE_i_next_initerations_atax6_vt_join_r_data3 <= i_next_initerations_atax6_vt_join_q;
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_i_next_initerations_atax6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_V1;
    assign SR_SE_i_next_initerations_atax6_vt_join_i_valid = SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_V0 & SR_SE_i_next_initerations_atax6_vt_join_and0;
    // Stall signal propagation
    assign SR_SE_i_next_initerations_atax6_vt_join_backStall = SR_SE_i_next_initerations_atax6_vt_join_r_valid | ~ (SR_SE_i_next_initerations_atax6_vt_join_i_valid);

    // Valid
    assign SR_SE_i_next_initerations_atax6_vt_join_V = SR_SE_i_next_initerations_atax6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_join_r_valid : SR_SE_i_next_initerations_atax6_vt_join_i_valid;

    // Data0
    assign SR_SE_i_next_initerations_atax6_vt_join_D0 = SR_SE_i_next_initerations_atax6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_join_r_data0 : i_last_initeration_atax10_sel_x_b;
    // Data1
    assign SR_SE_i_next_initerations_atax6_vt_join_D1 = SR_SE_i_next_initerations_atax6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_join_r_data1 : redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q;
    // Data2
    assign SR_SE_i_next_initerations_atax6_vt_join_D2 = SR_SE_i_next_initerations_atax6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_join_r_data2 : redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_4_q;
    // Data3
    assign SR_SE_i_next_initerations_atax6_vt_join_D3 = SR_SE_i_next_initerations_atax6_vt_join_r_valid == 1'b1 ? SR_SE_i_next_initerations_atax6_vt_join_r_data3 : i_next_initerations_atax6_vt_join_q;

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg(STALLFIFO,250)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_in = SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1(STALLENABLE,155)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed1 = (~ (SR_SE_i_next_initerations_atax6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_wireValid = i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i4_initerations_push24_atax9(STALLENABLE,163)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push24_atax9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push24_atax9_wireValid = i_llvm_fpga_push_i4_initerations_push24_atax9_out_valid_out;

    // i_llvm_fpga_push_i4_initerations_push24_atax9(BLACKBOX,18)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_24@20000000
    // out out_feedback_valid_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    atax_i_llvm_fpga_push_i4_initerations_push24_0 thei_llvm_fpga_push_i4_initerations_push24_atax9 (
        .in_data_in(SR_SE_i_next_initerations_atax6_vt_join_D3),
        .in_feedback_stall_in_24(i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_feedback_stall_out_24),
        .in_keep_going(SR_SE_i_next_initerations_atax6_vt_join_D2),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push24_atax9_backStall),
        .in_valid_in(SE_i_next_initerations_atax6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_24(i_llvm_fpga_push_i4_initerations_push24_atax9_out_feedback_out_24),
        .out_feedback_valid_out_24(i_llvm_fpga_push_i4_initerations_push24_atax9_out_feedback_valid_out_24),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push24_atax9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push24_atax9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b1)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q);
        end
    end

    // redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b1)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q <= $unsigned(redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q);
        end
    end

    // redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN == 1'b1)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q <= $unsigned(redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q);
        end
    end

    // redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3(REG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN == 1'b1)
        begin
            redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q <= $unsigned(redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q);
        end
    end

    // c_i4_714(CONSTANT,4)
    assign c_i4_714_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop24_atax1(BLACKBOX,14)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_24@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    atax_i_llvm_fpga_pop_i4_initerations_pop24_0 thei_llvm_fpga_pop_i4_initerations_pop24_atax1 (
        .in_data_in(c_i4_714_q),
        .in_dir(redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q),
        .in_feedback_in_24(i_llvm_fpga_push_i4_initerations_push24_atax9_out_feedback_out_24),
        .in_feedback_valid_in_24(i_llvm_fpga_push_i4_initerations_push24_atax9_out_feedback_valid_out_24),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop24_atax1_backStall),
        .in_valid_in(SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V1),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_data_out),
        .out_feedback_stall_out_24(i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_feedback_stall_out_24),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2(BLACKBOX,13)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_23@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    atax_i_llvm_fpga_pop_i1_memdep_phi8_pop23_0 thei_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2 (
        .in_data_in(GND_q),
        .in_dir(redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q),
        .in_feedback_in_23(i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_feedback_out_23),
        .in_feedback_valid_in_23(i_llvm_fpga_push_i1_memdep_phi8_push23_atax13_out_feedback_valid_out_23),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_backStall),
        .in_valid_in(SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_data_out),
        .out_feedback_stall_out_23(i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_feedback_stall_out_23),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3(STALLENABLE,186)
    // Valid signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0;
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V1 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1;
    // Stall signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi8_pop23_atax2_out_stall_out & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0;
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1 = i_llvm_fpga_pop_i4_initerations_pop24_atax1_out_stall_out & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1;
    // Backward Enable generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_or0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0;
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1 | SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_V0;
    // Backward Stall generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backStall = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 <= 1'b0;
            SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN == 1'b0)
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0;
            end
            else
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0;
            end

            if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN == 1'b0)
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1;
            end
            else
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0;
            end

        end
    end

    // SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2(STALLENABLE,185)
    // Valid signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_V0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0;
    // Stall signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backStall & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0;
    // Backward Enable generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0;
    // Backward Stall generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backStall = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN == 1'b0)
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0;
            end
            else
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0;
            end

        end
    end

    // SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1(STALLENABLE,184)
    // Valid signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    // Stall signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backStall & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    // Backward Enable generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    // Backward Stall generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b0)
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0;
            end
            else
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
            end

        end
    end

    // SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(STALLENABLE,183)
    // Valid signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    // Stall signal propagation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    // Backward Enable generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN & SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V1;
    // Backward Stall generation
    assign SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall = ~ (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b0)
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 & SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
            end
            else
            begin
                SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
            end

        end
    end

    // SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x(STALLENABLE,171)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V0 = SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_and0 = SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V0;
    assign SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_V0 & SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_and0;

    // SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0(STALLENABLE,182)
    // Valid signal propagation
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V0 = SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0;
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V1 = SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1;
    // Stall signal propagation
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0 = SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall & SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0;
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1 = SE_redist6_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall & SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1;
    // Backward Enable generation
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_or0 = SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0;
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN = ~ (SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1 | SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0 = SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN & SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V0;
    // Backward Stall generation
    assign SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backStall = ~ (SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 <= 1'b0;
            SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN == 1'b0)
            begin
                SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 <= SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 & SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0;
            end
            else
            begin
                SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 <= SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0;
            end

            if (SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN == 1'b0)
            begin
                SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 <= SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 & SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1;
            end
            else
            begin
                SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 <= SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,125)
    assign bubble_join_stall_entry_q = in_forked;

    // bubble_select_stall_entry(BITSELECT,126)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,166)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = atax_B13_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // atax_B13_merge_reg_aunroll_x(BLACKBOX,54)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    atax_B13_merge_reg theatax_B13_merge_reg_aunroll_x (
        .in_stall_in(SE_out_atax_B13_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(atax_B13_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(atax_B13_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_atax_B13_merge_reg_aunroll_x(BITJOIN,129)
    assign bubble_join_atax_B13_merge_reg_aunroll_x_q = atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_atax_B13_merge_reg_aunroll_x(BITSELECT,130)
    assign bubble_select_atax_B13_merge_reg_aunroll_x_b = $unsigned(bubble_join_atax_B13_merge_reg_aunroll_x_q[0:0]);

    // SE_out_atax_B13_merge_reg_aunroll_x(STALLENABLE,169)
    // Valid signal propagation
    assign SE_out_atax_B13_merge_reg_aunroll_x_V0 = SE_out_atax_B13_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_atax_B13_merge_reg_aunroll_x_backStall = redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out | ~ (SE_out_atax_B13_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_atax_B13_merge_reg_aunroll_x_wireValid = atax_B13_merge_reg_aunroll_x_out_valid_out;

    // redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(STALLFIFO,94)
    assign redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in = SE_out_atax_B13_merge_reg_aunroll_x_V0;
    assign redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall;
    assign redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_in = bubble_select_atax_B13_merge_reg_aunroll_x_b;
    assign redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in_bitsignaltemp = redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in[0];
    assign redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in_bitsignaltemp = redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in[0];
    assign redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out[0] = redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out_bitsignaltemp;
    assign redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out[0] = redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo (
        .valid_in(redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_atax_B13_merge_reg_aunroll_x_b),
        .valid_out(redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(STALLENABLE,181)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0 <= '0;
            SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0 <= SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg0;
            // Successor 1
            SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1 <= SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0 = (~ (SE_redist5_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backStall) & SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid) | SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0;
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_atax0_out_stall_out) & SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid) | SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1;
    // Consuming
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall & SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid;
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg0 = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid & SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0;
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg1 = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid & SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_or0 = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0;
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireStall = ~ (SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1 & SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_or0);
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V0 = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid & ~ (SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0);
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V1 = SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid & ~ (SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid = redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_atax0(STALLENABLE,151)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_atax0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed0 = (~ (SE_in_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed1 = (~ (SE_redist7_i_llvm_fpga_pipeline_keep_going_atax0_out_data_out_5_0_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax0_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_atax0_or0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_atax0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_atax0_wireValid = i_llvm_fpga_pipeline_keep_going_atax0_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_atax8(STALLENABLE,161)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_atax8_wireValid = i_llvm_fpga_push_i1_notexitcond_atax8_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_atax8(BLACKBOX,17)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    atax_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_atax8 (
        .in_c0_exe1229(bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_b),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_h),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_atax0_out_not_exitcond_stall_out),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_atax8_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_V1),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_atax8_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_atax8_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_atax8_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_atax8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_atax12(STALLENABLE,157)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_atax12_wireValid = i_llvm_fpga_push_i1_lastiniteration_atax12_out_valid_out;

    // i_llvm_fpga_push_i1_lastiniteration_atax12(BLACKBOX,15)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    atax_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_atax12 (
        .in_data_in(SR_SE_i_next_initerations_atax6_vt_join_D0),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_atax0_out_initeration_stall_out),
        .in_keep_going(SR_SE_i_next_initerations_atax6_vt_join_D1),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_atax12_backStall),
        .in_valid_in(SE_i_next_initerations_atax6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_atax12_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_atax12_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_atax12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_atax12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(BITJOIN,138)
    assign bubble_join_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_q = redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_out;

    // bubble_select_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(BITSELECT,139)
    assign bubble_select_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b = $unsigned(bubble_join_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_atax0(BLACKBOX,12)@63
    // in in_stall_in@20000000
    // out out_data_out@64
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@64
    atax_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_atax0 (
        .in_data_in(bubble_select_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_atax12_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_atax12_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_atax8_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_atax8_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_atax0_backStall),
        .in_valid_in(SE_out_redist4_atax_B13_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_atax0_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_atax0_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_atax0_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_atax0_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_atax0_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_atax0_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_atax0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_atax0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax0_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_atax0_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_atax0_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_atax0_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,45)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_atax0_out_pipeline_valid_out;

    // sync_out(GPOUT,52)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,56)
    assign out_unnamed_atax18_atax_avm_address = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_address;
    assign out_unnamed_atax18_atax_avm_enable = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_enable;
    assign out_unnamed_atax18_atax_avm_read = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_read;
    assign out_unnamed_atax18_atax_avm_write = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_write;
    assign out_unnamed_atax18_atax_avm_writedata = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_writedata;
    assign out_unnamed_atax18_atax_avm_byteenable = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_byteenable;
    assign out_unnamed_atax18_atax_avm_burstcount = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax18_atax_avm_burstcount;

    // bubble_join_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo(BITJOIN,135)
    assign bubble_join_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_q = redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_data_out;

    // bubble_select_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo(BITSELECT,136)
    assign bubble_select_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_b = $unsigned(bubble_join_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,57)@131
    assign out_c0_exe8236 = bubble_select_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_b;
    assign out_valid_out = SE_out_redist3_i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_c0_exit228_8_tpl_62_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,59)
    assign out_unnamed_atax19_atax_avm_address = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_address;
    assign out_unnamed_atax19_atax_avm_enable = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_enable;
    assign out_unnamed_atax19_atax_avm_read = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_read;
    assign out_unnamed_atax19_atax_avm_write = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_write;
    assign out_unnamed_atax19_atax_avm_writedata = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_writedata;
    assign out_unnamed_atax19_atax_avm_byteenable = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_byteenable;
    assign out_unnamed_atax19_atax_avm_burstcount = i_sfc_s_c0_in_for_body78_ataxs_c0_enter21717_atax4_aunroll_x_out_unnamed_atax19_atax_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,61)
    assign out_memdep_6_atax_avm_address = i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_address;
    assign out_memdep_6_atax_avm_enable = i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_enable;
    assign out_memdep_6_atax_avm_read = i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_read;
    assign out_memdep_6_atax_avm_write = i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_write;
    assign out_memdep_6_atax_avm_writedata = i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_writedata;
    assign out_memdep_6_atax_avm_byteenable = i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_byteenable;
    assign out_memdep_6_atax_avm_burstcount = i_llvm_fpga_mem_memdep_6_atax7_out_memdep_6_atax_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,62)
    assign out_lsu_memdep_6_o_active = i_llvm_fpga_mem_memdep_6_atax7_out_lsu_memdep_6_o_active;

    // dupName_4_ext_sig_sync_out_x(GPOUT,63)
    assign out_memdep_7_atax_avm_address = i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_address;
    assign out_memdep_7_atax_avm_enable = i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_enable;
    assign out_memdep_7_atax_avm_read = i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_read;
    assign out_memdep_7_atax_avm_write = i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_write;
    assign out_memdep_7_atax_avm_writedata = i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_writedata;
    assign out_memdep_7_atax_avm_byteenable = i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_byteenable;
    assign out_memdep_7_atax_avm_burstcount = i_llvm_fpga_mem_memdep_7_atax11_out_memdep_7_atax_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,64)
    assign out_lsu_memdep_7_o_active = i_llvm_fpga_mem_memdep_7_atax11_out_lsu_memdep_7_o_active;

endmodule
