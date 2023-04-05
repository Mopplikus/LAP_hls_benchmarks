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

// SystemVerilog created from bb_jacobi_1d_B8_stall_region
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:11 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_bb_B8_stall_region (
    input wire [31:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_exiting_valid_out,
    output wire [0:0] out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_exiting_stall_out,
    input wire [0:0] in_pipeline_stall_in,
    output wire [0:0] out_pipeline_valid_out,
    input wire [0:0] in_flush,
    input wire [63:0] in_intel_reserved_ffwd_1_0,
    input wire [63:0] in_intel_reserved_ffwd_2_0,
    input wire [0:0] in_stall_in,
    output wire [0:0] out_stall_out,
    input wire [0:0] in_forked25,
    input wire [0:0] in_valid_in,
    input wire [31:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount,
    output wire [0:0] out_c0_exe8,
    output wire [0:0] out_valid_out,
    input wire [63:0] in_memdep_6_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_6_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_6_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_6_jacobi_1d_avm_readdatavalid,
    output wire [31:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata,
    output wire [3:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount,
    input wire [63:0] in_memdep_7_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_7_jacobi_1d_avm_writeack,
    input wire [0:0] in_memdep_7_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_7_jacobi_1d_avm_readdatavalid,
    output wire [63:0] out_memdep_6_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_write,
    output wire [63:0] out_memdep_6_jacobi_1d_avm_writedata,
    output wire [7:0] out_memdep_6_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_burstcount,
    output wire [0:0] out_lsu_memdep_6_o_active,
    output wire [63:0] out_memdep_7_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_write,
    output wire [63:0] out_memdep_7_jacobi_1d_avm_writedata,
    output wire [7:0] out_memdep_7_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_burstcount,
    output wire [0:0] out_lsu_memdep_7_o_active,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [3:0] c_i4_714_q;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_lsu_memdep_6_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_writeack;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_lsu_memdep_7_o_active;
    wire [63:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_address;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_burstcount;
    wire [7:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_byteenable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_enable;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_read;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_write;
    wire [63:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_writedata;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_stall;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_valid;
    wire [0:0] i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_writeack;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_exiting_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_exiting_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_initeration_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_not_exitcond_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_pipeline_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_valid_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_feedback_stall_out_19;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_valid_out;
    wire [3:0] i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_data_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_feedback_stall_out_20;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_stall_out;
    wire [0:0] i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_feedback_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_feedback_valid_out_2;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_feedback_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_feedback_valid_out_19;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_valid_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_feedback_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_feedback_valid_out_3;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_valid_out;
    wire [7:0] i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_feedback_out_20;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_feedback_valid_out_20;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_stall_out;
    wire [0:0] i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_valid_out;
    wire [3:0] i_next_initerations_jacobi_1d6_vt_join_q;
    wire [2:0] i_next_initerations_jacobi_1d6_vt_select_2_b;
    wire [0:0] i_last_initeration_jacobi_1d10_sel_x_b;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_o_stall;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_o_valid;
    wire [31:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;
    wire [31:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;
    wire [3:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;
    wire [31:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_1_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_2_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_3_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_4_tpl;
    wire [31:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_5_tpl;
    wire [63:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_6_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_7_tpl;
    wire [0:0] i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl;
    wire [0:0] jacobi_1d_B8_merge_reg_aunroll_x_out_stall_out;
    wire [0:0] jacobi_1d_B8_merge_reg_aunroll_x_out_valid_out;
    wire [0:0] jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl;
    wire [2:0] rightShiftStage0Idx1Rng1_uid76_i_next_initerations_jacobi_1d0_shift_x_b;
    wire [3:0] rightShiftStage0Idx1_uid78_i_next_initerations_jacobi_1d0_shift_x_q;
    wire [0:0] rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_s;
    reg [3:0] rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_q;
    wire [96:0] join_for_coalesced_delay_0_q;
    wire [63:0] sel_for_coalesced_delay_0_b;
    wire [31:0] sel_for_coalesced_delay_0_c;
    wire [0:0] sel_for_coalesced_delay_0_d;
    wire [0:0] redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in;
    wire redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in;
    wire redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_in;
    wire [0:0] redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out;
    wire redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out;
    wire redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_out;
    reg [0:0] redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q;
    reg [0:0] redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q;
    reg [0:0] redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q;
    reg [0:0] redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q;
    reg [0:0] redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q;
    wire [0:0] redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_in;
    wire redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_in;
    wire redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_data_in;
    wire [0:0] redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_out;
    wire redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_out;
    wire redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_data_out;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_in;
    wire redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_in;
    wire redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_data_in;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_out;
    wire redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_out;
    wire redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_data_out;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_in;
    wire redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_in_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_in;
    wire redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_in_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_data_in;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_out;
    wire redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_out_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_out;
    wire redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_out_bitsignaltemp;
    wire [0:0] redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_data_out;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_q;
    reg [0:0] redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_q;
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
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_6_jacobi_1d7_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_6_jacobi_1d7_b;
    wire [0:0] bubble_join_i_llvm_fpga_mem_memdep_7_jacobi_1d11_q;
    wire [0:0] bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_b;
    wire [0:0] bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_q;
    wire [0:0] bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_b;
    wire [0:0] bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_q;
    wire [0:0] bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_b;
    wire [3:0] bubble_join_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_q;
    wire [3:0] bubble_select_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_b;
    wire [0:0] bubble_join_stall_entry_q;
    wire [0:0] bubble_select_stall_entry_b;
    wire [195:0] bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_b;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_c;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_d;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_e;
    wire [31:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_f;
    wire [63:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_g;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_h;
    wire [0:0] bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_i;
    wire [0:0] bubble_join_jacobi_1d_B8_merge_reg_aunroll_x_q;
    wire [0:0] bubble_select_jacobi_1d_B8_merge_reg_aunroll_x_b;
    wire [0:0] bubble_join_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_q;
    wire [0:0] bubble_select_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b;
    wire [0:0] bubble_join_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_q;
    wire [0:0] bubble_select_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_b;
    wire [0:0] bubble_join_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_q;
    wire [0:0] bubble_select_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_b;
    wire [0:0] bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_q;
    wire [0:0] bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_b;
    wire [96:0] bubble_join_coalesced_delay_0_fifo_q;
    wire [96:0] bubble_select_coalesced_delay_0_fifo_b;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_or0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V0;
    wire [0:0] SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_or0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_V0;
    wire [0:0] SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_V1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_and0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_StallValid;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_toReg0;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_toReg1;
    reg [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed1;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_or0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_backStall;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_V0;
    wire [0:0] SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_V1;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_backStall;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_wireValid;
    wire [0:0] SE_out_i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_backStall;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_wireValid;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_wireStall;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_StallValid;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_toReg0;
    reg [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_fromReg0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_consumed0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_toReg1;
    reg [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_fromReg1;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_consumed1;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_and0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_or0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_backStall;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_V0;
    wire [0:0] SE_i_next_initerations_jacobi_1d6_vt_join_V1;
    wire [0:0] SE_stall_entry_wireValid;
    wire [0:0] SE_stall_entry_backStall;
    wire [0:0] SE_stall_entry_V0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_and0;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall;
    wire [0:0] SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_StallValid;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg0;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg1;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg2;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg3;
    reg [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed3;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V0;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V1;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V2;
    wire [0:0] SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V3;
    wire [0:0] SE_out_jacobi_1d_B8_merge_reg_aunroll_x_wireValid;
    wire [0:0] SE_out_jacobi_1d_B8_merge_reg_aunroll_x_backStall;
    wire [0:0] SE_out_jacobi_1d_B8_merge_reg_aunroll_x_V0;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireStall;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg0;
    reg [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg1;
    reg [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_or0;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V0;
    wire [0:0] SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V1;
    reg [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0;
    reg [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_or0;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backStall;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V0;
    wire [0:0] SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V1;
    reg [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    reg [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0;
    reg [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backStall;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_V0;
    reg [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0;
    reg [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_or0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backStall;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V0;
    wire [0:0] SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V1;
    wire [0:0] SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_wireValid;
    wire [0:0] SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_backStall;
    wire [0:0] SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_V0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_wireValid;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_and0;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_and1;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_backStall;
    wire [0:0] SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_V0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireValid;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireStall;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_StallValid;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_toReg0;
    reg [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_toReg1;
    reg [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed1;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_or0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_backStall;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_V0;
    wire [0:0] SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_V1;
    reg [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_R_v_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_v_s_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_s_tv_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backEN;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backStall;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_V0;
    reg [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_R_v_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_v_s_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_s_tv_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backEN;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backStall;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_V0;
    reg [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_R_v_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_v_s_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_s_tv_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backEN;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backStall;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_V0;
    reg [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_R_v_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_v_s_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_s_tv_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backEN;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backStall;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_V0;
    reg [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_R_v_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_v_s_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_s_tv_0;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backEN;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backStall;
    wire [0:0] SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_V0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_wireValid;
    wire [0:0] SE_out_coalesced_delay_0_fifo_and0;
    wire [0:0] SE_out_coalesced_delay_0_fifo_backStall;
    wire [0:0] SE_out_coalesced_delay_0_fifo_V0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_and0;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall;
    wire [0:0] SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V0;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_in;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_in_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_out_bitsignaltemp;
    wire [0:0] bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_out;
    wire bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_out_bitsignaltemp;
    wire [0:0] SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_i_valid;
    reg [0:0] SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid;
    reg [0:0] SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_data0;
    wire [0:0] SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backStall;
    wire [0:0] SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_V;
    wire [0:0] SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_D0;


    // redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0(REG,95)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN == 1'b1)
        begin
            redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q <= $unsigned(bubble_select_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b);
        end
    end

    // redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(REG,96)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b1)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q <= $unsigned(redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q);
        end
    end

    // redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1(REG,97)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b1)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q <= $unsigned(redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_q);
        end
    end

    // redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2(REG,98)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN == 1'b1)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q <= $unsigned(redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_q);
        end
    end

    // redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3(REG,99)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN == 1'b1)
        begin
            redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q <= $unsigned(redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_q);
        end
    end

    // bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo(BITJOIN,146)
    assign bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_q = redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_data_out;

    // bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo(BITSELECT,147)
    assign bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_b = $unsigned(bubble_join_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_q[0:0]);

    // redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0(REG,103)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backEN == 1'b1)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_q <= $unsigned(bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_b);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1(REG,104)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backEN == 1'b1)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_q <= $unsigned(redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_q);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2(REG,105)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backEN == 1'b1)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_q <= $unsigned(redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_q);
        end
    end

    // redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3(REG,106)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backEN == 1'b1)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_q <= $unsigned(redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_q);
        end
    end

    // SE_out_i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13(STALLENABLE,164)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_wireValid = i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_valid_out;

    // redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4(REG,107)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_q <= $unsigned(1'b0);
        end
        else if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backEN == 1'b1)
        begin
            redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_q <= $unsigned(SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_D0);
        end
    end

    // SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo(STALLENABLE,193)
    // Valid signal propagation
    assign SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_V0 = SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_backStall = in_stall_in | ~ (SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_and0 = redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_out;
    assign SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_and1 = bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_out & SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_and0;
    assign SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_wireValid = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V0 & SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_and1;

    // redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo(STALLFIFO,101)
    assign redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V2;
    assign redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_in = SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_backStall;
    assign redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_data_in = bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_i;
    assign redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_in_bitsignaltemp = redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_in[0];
    assign redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_in_bitsignaltemp = redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_in[0];
    assign redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_out[0] = redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_out_bitsignaltemp;
    assign redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_out[0] = redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo (
        .valid_in(redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_i),
        .valid_out(redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d0(BITJOIN,117)
    assign bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_q = i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out;

    // bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d0(BITSELECT,118)
    assign bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_b = $unsigned(bubble_join_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_q[0:0]);

    // i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x(BLACKBOX,69)@64
    // in in_i_stall@20000000
    // out out_o_stall@20000000
    // out out_o_valid@69
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_address@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_enable@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_read@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_write@20000000
    // out out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata@20000000
    // out out_c0_exit106_0_tpl@69
    // out out_c0_exit106_1_tpl@69
    // out out_c0_exit106_2_tpl@69
    // out out_c0_exit106_3_tpl@69
    // out out_c0_exit106_4_tpl@69
    // out out_c0_exit106_5_tpl@69
    // out out_c0_exit106_6_tpl@69
    // out out_c0_exit106_7_tpl@69
    // out out_c0_exit106_8_tpl@69
    jacobi_1d_i_sfc_s_c0_in_for_body49_s_c0_enter965_jacobi_1d4 thei_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x (
        .in_flush(in_flush),
        .in_forked25(redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q),
        .in_i_stall(SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall),
        .in_i_valid(SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V0),
        .in_intel_reserved_ffwd_1_0(in_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(in_intel_reserved_ffwd_2_0),
        .in_keep_going(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_b),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack),
        .in_c0_eni295_0_tpl(GND_q),
        .in_c0_eni295_1_tpl(redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_q),
        .in_c0_eni295_2_tpl(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_b),
        .out_o_stall(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_o_stall),
        .out_o_valid(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_o_valid),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_address(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_enable(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_read(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_write(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_address(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_enable(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_read(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_write(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata),
        .out_c0_exit106_0_tpl(),
        .out_c0_exit106_1_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_1_tpl),
        .out_c0_exit106_2_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_2_tpl),
        .out_c0_exit106_3_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_3_tpl),
        .out_c0_exit106_4_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_4_tpl),
        .out_c0_exit106_5_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_5_tpl),
        .out_c0_exit106_6_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_6_tpl),
        .out_c0_exit106_7_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_7_tpl),
        .out_c0_exit106_8_tpl(i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x(STALLENABLE,175)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg0 <= '0;
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg1 <= '0;
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg2 <= '0;
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg3 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg0 <= SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg0;
            // Successor 1
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg1 <= SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg1;
            // Successor 2
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg2 <= SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg2;
            // Successor 3
            SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg3 <= SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg3;
        end
    end
    // Input Stall processing
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed0 = (~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_backStall) & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg0;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed1 = (~ (i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_stall_out) & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg1;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed2 = (~ (redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg2;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed3 = (~ (coalesced_delay_0_fifo_stall_out) & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid) | SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg3;
    // Consuming
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_StallValid = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg0 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg1 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed1;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg2 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed2;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_toReg3 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_StallValid & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed3;
    // Backward Stall generation
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or0 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed0;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or1 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed1 & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or0;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or2 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed2 & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or1;
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireStall = ~ (SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_consumed3 & SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_or2);
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireStall;
    // Valid signal propagation
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V0 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg0);
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V1 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg1);
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V2 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg2);
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V3 = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid & ~ (SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_fromReg3);
    // Computing multiple Valid(s)
    assign SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_o_valid;

    // SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2(STALLENABLE,158)
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_V0 = SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_wireValid;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_backStall = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_stall | ~ (SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_and0 = i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_valid_out;
    assign SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_wireValid = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V0 & SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_and0;

    // bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2(BITJOIN,120)
    assign bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_q = i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2(BITSELECT,121)
    assign bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_b = $unsigned(bubble_join_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_q[0:0]);

    // bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x(BITJOIN,131)
    assign bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q = {i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl, i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_7_tpl, i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_6_tpl, i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_5_tpl, i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_4_tpl, i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_3_tpl, i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_2_tpl, i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_1_tpl};

    // bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x(BITSELECT,132)
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_b = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[0:0]);
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_c = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[1:1]);
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_d = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[33:2]);
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_e = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[97:34]);
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_f = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[129:98]);
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_g = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[193:130]);
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_h = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[194:194]);
    assign bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_i = $unsigned(bubble_join_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_q[195:195]);

    // i_llvm_fpga_mem_memdep_6_jacobi_1d7(BLACKBOX,10)@69
    // in in_i_stall@20000000
    // out out_lsu_memdep_6_o_active@20000000
    // out out_memdep_6_jacobi_1d_avm_address@20000000
    // out out_memdep_6_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_6_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_6_jacobi_1d_avm_enable@20000000
    // out out_memdep_6_jacobi_1d_avm_read@20000000
    // out out_memdep_6_jacobi_1d_avm_write@20000000
    // out out_memdep_6_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@100
    // out out_o_writeack@100
    jacobi_1d_i_llvm_fpga_mem_memdep_6_0 thei_llvm_fpga_mem_memdep_6_jacobi_1d7 (
        .in_flush(in_flush),
        .in_i_address(bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_e),
        .in_i_dependence(bubble_select_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_b),
        .in_i_predicate(bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_c),
        .in_i_stall(SE_out_coalesced_delay_0_fifo_backStall),
        .in_i_valid(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_V0),
        .in_i_writedata(bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_d),
        .in_memdep_6_jacobi_1d_avm_readdata(in_memdep_6_jacobi_1d_avm_readdata),
        .in_memdep_6_jacobi_1d_avm_readdatavalid(in_memdep_6_jacobi_1d_avm_readdatavalid),
        .in_memdep_6_jacobi_1d_avm_waitrequest(in_memdep_6_jacobi_1d_avm_waitrequest),
        .in_memdep_6_jacobi_1d_avm_writeack(in_memdep_6_jacobi_1d_avm_writeack),
        .out_lsu_memdep_6_o_active(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_lsu_memdep_6_o_active),
        .out_memdep_6_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_address),
        .out_memdep_6_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_burstcount),
        .out_memdep_6_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_byteenable),
        .out_memdep_6_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_enable),
        .out_memdep_6_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_read),
        .out_memdep_6_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_write),
        .out_memdep_6_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // join_for_coalesced_delay_0(BITJOIN,92)
    assign join_for_coalesced_delay_0_q = {bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_c, bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_f, bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_g};

    // coalesced_delay_0_fifo(STALLFIFO,108)
    assign coalesced_delay_0_fifo_valid_in = SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V3;
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

    // SE_out_coalesced_delay_0_fifo(STALLENABLE,202)
    // Valid signal propagation
    assign SE_out_coalesced_delay_0_fifo_V0 = SE_out_coalesced_delay_0_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_coalesced_delay_0_fifo_backStall = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_stall | ~ (SE_out_coalesced_delay_0_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_coalesced_delay_0_fifo_and0 = coalesced_delay_0_fifo_valid_out;
    assign SE_out_coalesced_delay_0_fifo_wireValid = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_valid & SE_out_coalesced_delay_0_fifo_and0;

    // bubble_join_i_llvm_fpga_mem_memdep_6_jacobi_1d7(BITJOIN,110)
    assign bubble_join_i_llvm_fpga_mem_memdep_6_jacobi_1d7_q = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_6_jacobi_1d7(BITSELECT,111)
    assign bubble_select_i_llvm_fpga_mem_memdep_6_jacobi_1d7_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_6_jacobi_1d7_q[0:0]);

    // bubble_join_coalesced_delay_0_fifo(BITJOIN,149)
    assign bubble_join_coalesced_delay_0_fifo_q = coalesced_delay_0_fifo_data_out;

    // bubble_select_coalesced_delay_0_fifo(BITSELECT,150)
    assign bubble_select_coalesced_delay_0_fifo_b = $unsigned(bubble_join_coalesced_delay_0_fifo_q[96:0]);

    // sel_for_coalesced_delay_0(BITSELECT,93)
    assign sel_for_coalesced_delay_0_b = $unsigned(bubble_select_coalesced_delay_0_fifo_b[63:0]);
    assign sel_for_coalesced_delay_0_c = $unsigned(bubble_select_coalesced_delay_0_fifo_b[95:64]);
    assign sel_for_coalesced_delay_0_d = $unsigned(bubble_select_coalesced_delay_0_fifo_b[96:96]);

    // i_llvm_fpga_mem_memdep_7_jacobi_1d11(BLACKBOX,11)@100
    // in in_i_stall@20000000
    // out out_lsu_memdep_7_o_active@20000000
    // out out_memdep_7_jacobi_1d_avm_address@20000000
    // out out_memdep_7_jacobi_1d_avm_burstcount@20000000
    // out out_memdep_7_jacobi_1d_avm_byteenable@20000000
    // out out_memdep_7_jacobi_1d_avm_enable@20000000
    // out out_memdep_7_jacobi_1d_avm_read@20000000
    // out out_memdep_7_jacobi_1d_avm_write@20000000
    // out out_memdep_7_jacobi_1d_avm_writedata@20000000
    // out out_o_stall@20000000
    // out out_o_valid@131
    // out out_o_writeack@131
    jacobi_1d_i_llvm_fpga_mem_memdep_7_0 thei_llvm_fpga_mem_memdep_7_jacobi_1d11 (
        .in_flush(in_flush),
        .in_i_address(sel_for_coalesced_delay_0_b),
        .in_i_dependence(bubble_select_i_llvm_fpga_mem_memdep_6_jacobi_1d7_b),
        .in_i_predicate(sel_for_coalesced_delay_0_d),
        .in_i_stall(SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall),
        .in_i_valid(SE_out_coalesced_delay_0_fifo_V0),
        .in_i_writedata(sel_for_coalesced_delay_0_c),
        .in_memdep_7_jacobi_1d_avm_readdata(in_memdep_7_jacobi_1d_avm_readdata),
        .in_memdep_7_jacobi_1d_avm_readdatavalid(in_memdep_7_jacobi_1d_avm_readdatavalid),
        .in_memdep_7_jacobi_1d_avm_waitrequest(in_memdep_7_jacobi_1d_avm_waitrequest),
        .in_memdep_7_jacobi_1d_avm_writeack(in_memdep_7_jacobi_1d_avm_writeack),
        .out_lsu_memdep_7_o_active(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_lsu_memdep_7_o_active),
        .out_memdep_7_jacobi_1d_avm_address(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_address),
        .out_memdep_7_jacobi_1d_avm_burstcount(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_burstcount),
        .out_memdep_7_jacobi_1d_avm_byteenable(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_byteenable),
        .out_memdep_7_jacobi_1d_avm_enable(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_enable),
        .out_memdep_7_jacobi_1d_avm_read(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_read),
        .out_memdep_7_jacobi_1d_avm_write(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_write),
        .out_memdep_7_jacobi_1d_avm_writedata(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_writedata),
        .out_o_stall(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_stall),
        .out_o_valid(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_valid),
        .out_o_writeack(i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_writeack),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_i_llvm_fpga_mem_memdep_7_jacobi_1d11(BITJOIN,113)
    assign bubble_join_i_llvm_fpga_mem_memdep_7_jacobi_1d11_q = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_writeack;

    // bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11(BITSELECT,114)
    assign bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_b = $unsigned(bubble_join_i_llvm_fpga_mem_memdep_7_jacobi_1d11_q[0:0]);

    // i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13(BLACKBOX,16)@131
    // in in_stall_in@20000000
    // out out_data_out@132
    // out out_feedback_out_19@20000000
    // out out_feedback_valid_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@132
    jacobi_1d_i_llvm_fpga_push_i1_memdep_phi_push19_0 thei_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13 (
        .in_data_in(bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_b),
        .in_feedback_stall_in_19(i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_feedback_stall_out_19),
        .in_keep_going(redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_q),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_backStall),
        .in_valid_in(SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V0),
        .out_data_out(),
        .out_feedback_out_19(i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_feedback_out_19),
        .out_feedback_valid_out_19(i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_feedback_valid_out_19),
        .out_stall_out(i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11(STALLENABLE,154)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg0 <= '0;
            SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg0 <= SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg1 <= SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed0 = (~ (SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_backStall) & SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid) | SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg0;
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed1 = (~ (SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall) & SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid) | SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_StallValid = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall & SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid;
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_toReg0 = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_StallValid & SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_toReg1 = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_StallValid & SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_or0 = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed0;
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireStall = ~ (SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_consumed1 & SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_or0);
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V0 = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg0);
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V1 = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid & ~ (SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_o_valid;

    // SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11(STALLENABLE,210)
    // Valid signal propagation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V0 = SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid;
    // Backward Stall generation
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall = i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_stall_out | ~ (SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid);
    // Computing multiple Valid(s)
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_and0 = SE_out_i_llvm_fpga_mem_memdep_7_jacobi_1d11_V1;
    assign SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_wireValid = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_V0 & SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_and0;

    // SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4(STALLENABLE,200)
    // Valid signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_V0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_s_tv_0 = SE_bubble_select_i_llvm_fpga_mem_memdep_7_jacobi_1d11_backStall & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backEN = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_v_s_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backEN & SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_V;
    // Backward Stall generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backStall = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backEN);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backEN == 1'b0)
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_R_v_0 & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_s_tv_0;
            end
            else
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_v_s_0;
            end

        end
    end

    // SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4(STALLREG,262)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid <= 1'b0;
            SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_data0 <= 1'bx;
        end
        else
        begin
            // Valid
            SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backStall & (SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid | SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_i_valid);

            if (SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid == 1'b0)
            begin
                // Data(s)
                SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_data0 <= $unsigned(redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_q);
            end

        end
    end
    // Computing multiple Valid(s)
    assign SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_i_valid = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_V0;
    // Stall signal propagation
    assign SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backStall = SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid | ~ (SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_i_valid);

    // Valid
    assign SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_V = SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid == 1'b1 ? SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid : SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_i_valid;

    assign SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_D0 = SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_valid == 1'b1 ? SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_r_data0 : redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_q;

    // SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3(STALLENABLE,199)
    // Valid signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_V0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_s_tv_0 = SR_SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_4_backStall & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backEN = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_v_s_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backEN & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_V0;
    // Backward Stall generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backStall = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backEN == 1'b0)
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_R_v_0 & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_s_tv_0;
            end
            else
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_v_s_0;
            end

        end
    end

    // SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2(STALLENABLE,198)
    // Valid signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_V0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_s_tv_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_3_backStall & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backEN = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_v_s_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backEN & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_V0;
    // Backward Stall generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backStall = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backEN == 1'b0)
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_R_v_0 & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_s_tv_0;
            end
            else
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_v_s_0;
            end

        end
    end

    // SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1(STALLENABLE,197)
    // Valid signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_V0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_s_tv_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_2_backStall & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backEN = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_v_s_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backEN & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_V0;
    // Backward Stall generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backStall = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backEN == 1'b0)
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_R_v_0 & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_s_tv_0;
            end
            else
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_v_s_0;
            end

        end
    end

    // SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0(STALLENABLE,196)
    // Valid signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_V0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_R_v_0;
    // Stall signal propagation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_s_tv_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_1_backStall & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_R_v_0;
    // Backward Enable generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backEN = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_v_s_0 = SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backEN & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_V1;
    // Backward Stall generation
    assign SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backStall = ~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backEN == 1'b0)
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_R_v_0 & SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_s_tv_0;
            end
            else
            begin
                SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_R_v_0 <= SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_v_s_0;
            end

        end
    end

    // redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo(STALLFIFO,102)
    assign redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_in = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_V1;
    assign redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_in = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_backStall;
    assign redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_data_in = bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_b;
    assign redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_in_bitsignaltemp = redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_in[0];
    assign redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_in_bitsignaltemp = redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_in[0];
    assign redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_out[0] = redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_out_bitsignaltemp;
    assign redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_out[0] = redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo (
        .valid_in(redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_b),
        .valid_out(redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo(STALLENABLE,195)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg0 <= '0;
            SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg0 <= SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_toReg0;
            // Successor 1
            SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg1 <= SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed0 = (~ (SE_i_next_initerations_jacobi_1d6_vt_join_backStall) & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireValid) | SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg0;
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed1 = (~ (SE_redist9_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_67_0_backStall) & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireValid) | SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg1;
    // Consuming
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_StallValid = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_backStall & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireValid;
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_toReg0 = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_StallValid & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed0;
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_toReg1 = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_StallValid & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_or0 = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed0;
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireStall = ~ (SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_consumed1 & SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_or0);
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_backStall = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_V0 = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireValid & ~ (SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg0);
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_V1 = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireValid & ~ (SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_wireValid = redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_valid_out;

    // SE_i_next_initerations_jacobi_1d6_vt_join(STALLENABLE,169)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_i_next_initerations_jacobi_1d6_vt_join_fromReg0 <= '0;
            SE_i_next_initerations_jacobi_1d6_vt_join_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_i_next_initerations_jacobi_1d6_vt_join_fromReg0 <= SE_i_next_initerations_jacobi_1d6_vt_join_toReg0;
            // Successor 1
            SE_i_next_initerations_jacobi_1d6_vt_join_fromReg1 <= SE_i_next_initerations_jacobi_1d6_vt_join_toReg1;
        end
    end
    // Input Stall processing
    assign SE_i_next_initerations_jacobi_1d6_vt_join_consumed0 = (~ (i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_stall_out) & SE_i_next_initerations_jacobi_1d6_vt_join_wireValid) | SE_i_next_initerations_jacobi_1d6_vt_join_fromReg0;
    assign SE_i_next_initerations_jacobi_1d6_vt_join_consumed1 = (~ (i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_stall_out) & SE_i_next_initerations_jacobi_1d6_vt_join_wireValid) | SE_i_next_initerations_jacobi_1d6_vt_join_fromReg1;
    // Consuming
    assign SE_i_next_initerations_jacobi_1d6_vt_join_StallValid = SE_i_next_initerations_jacobi_1d6_vt_join_backStall & SE_i_next_initerations_jacobi_1d6_vt_join_wireValid;
    assign SE_i_next_initerations_jacobi_1d6_vt_join_toReg0 = SE_i_next_initerations_jacobi_1d6_vt_join_StallValid & SE_i_next_initerations_jacobi_1d6_vt_join_consumed0;
    assign SE_i_next_initerations_jacobi_1d6_vt_join_toReg1 = SE_i_next_initerations_jacobi_1d6_vt_join_StallValid & SE_i_next_initerations_jacobi_1d6_vt_join_consumed1;
    // Backward Stall generation
    assign SE_i_next_initerations_jacobi_1d6_vt_join_or0 = SE_i_next_initerations_jacobi_1d6_vt_join_consumed0;
    assign SE_i_next_initerations_jacobi_1d6_vt_join_wireStall = ~ (SE_i_next_initerations_jacobi_1d6_vt_join_consumed1 & SE_i_next_initerations_jacobi_1d6_vt_join_or0);
    assign SE_i_next_initerations_jacobi_1d6_vt_join_backStall = SE_i_next_initerations_jacobi_1d6_vt_join_wireStall;
    // Valid signal propagation
    assign SE_i_next_initerations_jacobi_1d6_vt_join_V0 = SE_i_next_initerations_jacobi_1d6_vt_join_wireValid & ~ (SE_i_next_initerations_jacobi_1d6_vt_join_fromReg0);
    assign SE_i_next_initerations_jacobi_1d6_vt_join_V1 = SE_i_next_initerations_jacobi_1d6_vt_join_wireValid & ~ (SE_i_next_initerations_jacobi_1d6_vt_join_fromReg1);
    // Computing multiple Valid(s)
    assign SE_i_next_initerations_jacobi_1d6_vt_join_and0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_V1;
    assign SE_i_next_initerations_jacobi_1d6_vt_join_wireValid = SE_out_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_V0 & SE_i_next_initerations_jacobi_1d6_vt_join_and0;

    // bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg(STALLFIFO,261)
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_in = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_V0;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_in = SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_backStall;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_in_bitsignaltemp = bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_in[0];
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_out_bitsignaltemp;
    assign bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_out[0] = bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_out_bitsignaltemp;
    acl_valid_fifo_counter #(
        .DEPTH(6),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .ASYNC_RESET(1)
    ) thebubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg (
        .valid_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_in_bitsignaltemp),
        .stall_in(bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_in_bitsignaltemp),
        .valid_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_valid_out_bitsignaltemp),
        .stall_out(bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_out_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1(STALLENABLE,160)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg0 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg1 <= SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed0 = (~ (bubble_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_1_reg_stall_out) & SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed1 = (~ (SE_i_next_initerations_jacobi_1d6_vt_join_backStall) & SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireValid) | SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_StallValid = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_backStall & SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireValid;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_toReg0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_toReg1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_StallValid & SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_or0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed0;
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireStall = ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_consumed1 & SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_or0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_backStall = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_V0 = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg0);
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_V1 = SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireValid & ~ (SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_wireValid = i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_valid_out;

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // SE_out_i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9(STALLENABLE,168)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_wireValid = i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_valid_out;

    // rightShiftStage0Idx1Rng1_uid76_i_next_initerations_jacobi_1d0_shift_x(BITSELECT,75)@126
    assign rightShiftStage0Idx1Rng1_uid76_i_next_initerations_jacobi_1d0_shift_x_b = bubble_select_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_b[3:1];

    // rightShiftStage0Idx1_uid78_i_next_initerations_jacobi_1d0_shift_x(BITJOIN,77)@126
    assign rightShiftStage0Idx1_uid78_i_next_initerations_jacobi_1d0_shift_x_q = {GND_q, rightShiftStage0Idx1Rng1_uid76_i_next_initerations_jacobi_1d0_shift_x_b};

    // bubble_join_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1(BITJOIN,123)
    assign bubble_join_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_q = i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_data_out;

    // bubble_select_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1(BITSELECT,124)
    assign bubble_select_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_b = $unsigned(bubble_join_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_q[3:0]);

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x(MUX,79)@126
    assign rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_s = VCC_q;
    always @(rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_s or bubble_select_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_b or rightShiftStage0Idx1_uid78_i_next_initerations_jacobi_1d0_shift_x_q)
    begin
        unique case (rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_s)
            1'b0 : rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_q = bubble_select_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_b;
            1'b1 : rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_q = rightShiftStage0Idx1_uid78_i_next_initerations_jacobi_1d0_shift_x_q;
            default : rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_q = 4'b0;
        endcase
    end

    // i_next_initerations_jacobi_1d6_vt_select_2(BITSELECT,21)@126
    assign i_next_initerations_jacobi_1d6_vt_select_2_b = rightShiftStage0_uid80_i_next_initerations_jacobi_1d0_shift_x_q[2:0];

    // i_next_initerations_jacobi_1d6_vt_join(BITJOIN,20)@126
    assign i_next_initerations_jacobi_1d6_vt_join_q = {GND_q, i_next_initerations_jacobi_1d6_vt_select_2_b};

    // i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9(BLACKBOX,18)@126
    // in in_stall_in@20000000
    // out out_data_out@127
    // out out_feedback_out_20@20000000
    // out out_feedback_valid_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@127
    jacobi_1d_i_llvm_fpga_push_i4_initerations_push20_0 thei_llvm_fpga_push_i4_initerations_push20_jacobi_1d9 (
        .in_data_in(i_next_initerations_jacobi_1d6_vt_join_q),
        .in_feedback_stall_in_20(i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_feedback_stall_out_20),
        .in_keep_going(bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_backStall),
        .in_valid_in(SE_i_next_initerations_jacobi_1d6_vt_join_V1),
        .out_data_out(),
        .out_feedback_out_20(i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_feedback_out_20),
        .out_feedback_valid_out_20(i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_feedback_valid_out_20),
        .out_stall_out(i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo(BITJOIN,140)
    assign bubble_join_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_q = redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_data_out;

    // bubble_select_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo(BITSELECT,141)
    assign bubble_select_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_b = $unsigned(bubble_join_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_q[0:0]);

    // c_i4_714(CONSTANT,4)
    assign c_i4_714_q = $unsigned(4'b0111);

    // i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1(BLACKBOX,14)@125
    // in in_stall_in@20000000
    // out out_data_out@126
    // out out_feedback_stall_out_20@20000000
    // out out_stall_out@20000000
    // out out_valid_out@126
    jacobi_1d_i_llvm_fpga_pop_i4_initerations_pop20_0 thei_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1 (
        .in_data_in(c_i4_714_q),
        .in_dir(bubble_select_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_b),
        .in_feedback_in_20(i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_feedback_out_20),
        .in_feedback_valid_in_20(i_llvm_fpga_push_i4_initerations_push20_jacobi_1d9_out_feedback_valid_out_20),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_backStall),
        .in_valid_in(SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_V0),
        .out_data_out(i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_data_out),
        .out_feedback_stall_out_20(i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_feedback_stall_out_20),
        .out_stall_out(i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo(STALLENABLE,191)
    // Valid signal propagation
    assign SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_V0 = SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_wireValid;
    // Backward Stall generation
    assign SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_backStall = i_llvm_fpga_pop_i4_initerations_pop20_jacobi_1d1_out_stall_out | ~ (SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_wireValid = redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_out;

    // redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo(STALLFIFO,100)
    assign redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_in = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V1;
    assign redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_in = SE_out_redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_backStall;
    assign redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_data_in = redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q;
    assign redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_in_bitsignaltemp = redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_in[0];
    assign redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_in_bitsignaltemp = redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_in[0];
    assign redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_out[0] = redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_out_bitsignaltemp;
    assign redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_out[0] = redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(58),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo (
        .valid_in(redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_in_bitsignaltemp),
        .stall_in(redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_in_bitsignaltemp),
        .data_in(redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q),
        .valid_out(redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_valid_out_bitsignaltemp),
        .stall_out(redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_out_bitsignaltemp),
        .data_out(redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2(BLACKBOX,13)@68
    // in in_stall_in@20000000
    // out out_data_out@69
    // out out_feedback_stall_out_19@20000000
    // out out_stall_out@20000000
    // out out_valid_out@69
    jacobi_1d_i_llvm_fpga_pop_i1_memdep_phi_pop19_0 thei_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2 (
        .in_data_in(GND_q),
        .in_dir(redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_q),
        .in_feedback_in_19(i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_feedback_out_19),
        .in_feedback_valid_in_19(i_llvm_fpga_push_i1_memdep_phi_push19_jacobi_1d13_out_feedback_valid_out_19),
        .in_predicate(GND_q),
        .in_stall_in(SE_out_i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_backStall),
        .in_valid_in(SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V0),
        .out_data_out(i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_data_out),
        .out_feedback_stall_out_19(i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_feedback_stall_out_19),
        .out_stall_out(i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_stall_out),
        .out_valid_out(i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3(STALLENABLE,189)
    // Valid signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0;
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_V1 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1;
    // Stall signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0 = i_llvm_fpga_pop_i1_memdep_phi_pop19_jacobi_1d2_out_stall_out & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0;
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1 = redist3_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_124_fifo_stall_out & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1;
    // Backward Enable generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_or0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0;
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1 | SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_V0;
    // Backward Stall generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backStall = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 <= 1'b0;
            SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN == 1'b0)
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_0;
            end
            else
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0;
            end

            if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backEN == 1'b0)
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_s_tv_1;
            end
            else
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_R_v_1 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_v_s_0;
            end

        end
    end

    // SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2(STALLENABLE,188)
    // Valid signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_V0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0;
    // Stall signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_3_backStall & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0;
    // Backward Enable generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0;
    // Backward Stall generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backStall = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backEN == 1'b0)
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_s_tv_0;
            end
            else
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_v_s_0;
            end

        end
    end

    // SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1(STALLENABLE,187)
    // Valid signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_V0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    // Stall signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_2_backStall & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0;
    // Backward Enable generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0;
    // Backward Stall generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backEN == 1'b0)
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_s_tv_0;
            end
            else
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_v_s_0;
            end

        end
    end

    // SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0(STALLENABLE,186)
    // Valid signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_V0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    // Stall signal propagation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_1_backStall & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0;
    // Backward Enable generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN & SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V1;
    // Backward Stall generation
    assign SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall = ~ (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= 1'b0;
        end
        else
        begin
            if (SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backEN == 1'b0)
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 & SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_s_tv_0;
            end
            else
            begin
                SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_R_v_0 <= SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_v_s_0;
            end

        end
    end

    // SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x(STALLENABLE,174)
    // Valid signal propagation
    assign SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V0 = SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_o_stall | ~ (SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_and0 = SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V0;
    assign SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_wireValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_V0 & SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_and0;

    // SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0(STALLENABLE,185)
    // Valid signal propagation
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V0 = SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0;
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_V1 = SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1;
    // Stall signal propagation
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0 = SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall & SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0;
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1 = SE_redist2_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_67_0_backStall & SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1;
    // Backward Enable generation
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_or0 = SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0;
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN = ~ (SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1 | SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_or0);
    // Determine whether to write valid data into the first register stage
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0 = SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN & SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V0;
    // Backward Stall generation
    assign SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backStall = ~ (SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0);
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 <= 1'b0;
            SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 <= 1'b0;
        end
        else
        begin
            if (SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN == 1'b0)
            begin
                SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 <= SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 & SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_0;
            end
            else
            begin
                SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_0 <= SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0;
            end

            if (SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backEN == 1'b0)
            begin
                SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 <= SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 & SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_s_tv_1;
            end
            else
            begin
                SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_R_v_1 <= SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_v_s_0;
            end

        end
    end

    // bubble_join_stall_entry(BITJOIN,127)
    assign bubble_join_stall_entry_q = in_forked25;

    // bubble_select_stall_entry(BITSELECT,128)
    assign bubble_select_stall_entry_b = $unsigned(bubble_join_stall_entry_q[0:0]);

    // SE_stall_entry(STALLENABLE,171)
    // Valid signal propagation
    assign SE_stall_entry_V0 = SE_stall_entry_wireValid;
    // Backward Stall generation
    assign SE_stall_entry_backStall = jacobi_1d_B8_merge_reg_aunroll_x_out_stall_out | ~ (SE_stall_entry_wireValid);
    // Computing multiple Valid(s)
    assign SE_stall_entry_wireValid = in_valid_in;

    // jacobi_1d_B8_merge_reg_aunroll_x(BLACKBOX,70)@0
    // in in_stall_in@20000000
    // out out_stall_out@20000000
    // out out_valid_out@1
    // out out_data_out_0_tpl@1
    jacobi_1d_B8_merge_reg thejacobi_1d_B8_merge_reg_aunroll_x (
        .in_stall_in(SE_out_jacobi_1d_B8_merge_reg_aunroll_x_backStall),
        .in_valid_in(SE_stall_entry_V0),
        .in_data_in_0_tpl(bubble_select_stall_entry_b),
        .out_stall_out(jacobi_1d_B8_merge_reg_aunroll_x_out_stall_out),
        .out_valid_out(jacobi_1d_B8_merge_reg_aunroll_x_out_valid_out),
        .out_data_out_0_tpl(jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_jacobi_1d_B8_merge_reg_aunroll_x(BITJOIN,134)
    assign bubble_join_jacobi_1d_B8_merge_reg_aunroll_x_q = jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl;

    // bubble_select_jacobi_1d_B8_merge_reg_aunroll_x(BITSELECT,135)
    assign bubble_select_jacobi_1d_B8_merge_reg_aunroll_x_b = $unsigned(bubble_join_jacobi_1d_B8_merge_reg_aunroll_x_q[0:0]);

    // SE_out_jacobi_1d_B8_merge_reg_aunroll_x(STALLENABLE,177)
    // Valid signal propagation
    assign SE_out_jacobi_1d_B8_merge_reg_aunroll_x_V0 = SE_out_jacobi_1d_B8_merge_reg_aunroll_x_wireValid;
    // Backward Stall generation
    assign SE_out_jacobi_1d_B8_merge_reg_aunroll_x_backStall = redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out | ~ (SE_out_jacobi_1d_B8_merge_reg_aunroll_x_wireValid);
    // Computing multiple Valid(s)
    assign SE_out_jacobi_1d_B8_merge_reg_aunroll_x_wireValid = jacobi_1d_B8_merge_reg_aunroll_x_out_valid_out;

    // redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(STALLFIFO,94)
    assign redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in = SE_out_jacobi_1d_B8_merge_reg_aunroll_x_V0;
    assign redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall;
    assign redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_in = bubble_select_jacobi_1d_B8_merge_reg_aunroll_x_b;
    assign redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in_bitsignaltemp = redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in[0];
    assign redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in_bitsignaltemp = redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in[0];
    assign redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out[0] = redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out_bitsignaltemp;
    assign redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out[0] = redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out_bitsignaltemp;
    acl_data_fifo #(
        .DEPTH(63),
        .STRICT_DEPTH(0),
        .ALLOW_FULL_WRITE(0),
        .DATA_WIDTH(1),
        .IMPL("ram")
    ) theredist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo (
        .valid_in(redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_in_bitsignaltemp),
        .stall_in(redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_in_bitsignaltemp),
        .data_in(bubble_select_jacobi_1d_B8_merge_reg_aunroll_x_b),
        .valid_out(redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out_bitsignaltemp),
        .stall_out(redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_stall_out_bitsignaltemp),
        .data_out(redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(STALLENABLE,184)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0 <= '0;
            SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0 <= SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg0;
            // Successor 1
            SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1 <= SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0 = (~ (SE_redist1_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_63_0_backStall) & SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid) | SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0;
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1 = (~ (i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_stall_out) & SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid) | SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1;
    // Consuming
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall & SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid;
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg0 = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid & SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0;
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_toReg1 = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_StallValid & SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1;
    // Backward Stall generation
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_or0 = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed0;
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireStall = ~ (SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_consumed1 & SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_or0);
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_backStall = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireStall;
    // Valid signal propagation
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V0 = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid & ~ (SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg0);
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V1 = SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid & ~ (SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_wireValid = redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_valid_out;

    // SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0(STALLENABLE,156)
    always @ (posedge clock or negedge resetn)
    begin
        if (!resetn)
        begin
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg0 <= '0;
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg1 <= '0;
        end
        else
        begin
            // Successor 0
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg0 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_toReg0;
            // Successor 1
            SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg1 <= SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_toReg1;
        end
    end
    // Input Stall processing
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed0 = (~ (SE_in_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_backStall) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed1 = (~ (redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_stall_out) & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireValid) | SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg1;
    // Consuming
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_StallValid = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_backStall & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireValid;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_toReg0 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_toReg1 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_StallValid & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed1;
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_or0 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed0;
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireStall = ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_consumed1 & SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_or0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_backStall = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireStall;
    // Valid signal propagation
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_V0 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg0);
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_V1 = SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireValid & ~ (SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_fromReg1);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_wireValid = i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_valid_out;

    // SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d8(STALLENABLE,166)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_wireValid = i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_valid_out;

    // i_llvm_fpga_push_i1_notexitcond_jacobi_1d8(BLACKBOX,17)@69
    // in in_stall_in@20000000
    // out out_data_out@70
    // out out_feedback_out_3@20000000
    // out out_feedback_valid_out_3@20000000
    // out out_stall_out@20000000
    // out out_valid_out@70
    jacobi_1d_i_llvm_fpga_push_i1_notexitcond_0 thei_llvm_fpga_push_i1_notexitcond_jacobi_1d8 (
        .in_c0_exe1107(bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_b),
        .in_data_in(bubble_select_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_h),
        .in_feedback_stall_in_3(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_not_exitcond_stall_out),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_backStall),
        .in_valid_in(SE_out_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_V1),
        .out_data_out(),
        .out_feedback_out_3(i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_feedback_out_3),
        .out_feedback_valid_out_3(i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_feedback_valid_out_3),
        .out_stall_out(i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12(STALLENABLE,162)
    // Backward Stall generation
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_backStall = $unsigned(1'b0);
    // Computing multiple Valid(s)
    assign SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_wireValid = i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_valid_out;

    // i_last_initeration_jacobi_1d10_sel_x(BITSELECT,64)@126
    assign i_last_initeration_jacobi_1d10_sel_x_b = i_next_initerations_jacobi_1d6_vt_join_q[0:0];

    // i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12(BLACKBOX,15)@126
    // in in_stall_in@20000000
    // out out_data_out@127
    // out out_feedback_out_2@20000000
    // out out_feedback_valid_out_2@20000000
    // out out_stall_out@20000000
    // out out_valid_out@127
    jacobi_1d_i_llvm_fpga_push_i1_lastiniteration_0 thei_llvm_fpga_push_i1_lastiniteration_jacobi_1d12 (
        .in_data_in(i_last_initeration_jacobi_1d10_sel_x_b),
        .in_feedback_stall_in_2(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_initeration_stall_out),
        .in_keep_going(bubble_select_redist8_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out_62_fifo_b),
        .in_stall_in(SE_out_i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_backStall),
        .in_valid_in(SE_i_next_initerations_jacobi_1d6_vt_join_V0),
        .out_data_out(),
        .out_feedback_out_2(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_feedback_out_2),
        .out_feedback_valid_out_2(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_feedback_valid_out_2),
        .out_stall_out(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_stall_out),
        .out_valid_out(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bubble_join_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(BITJOIN,137)
    assign bubble_join_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_q = redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_data_out;

    // bubble_select_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo(BITSELECT,138)
    assign bubble_select_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b = $unsigned(bubble_join_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_q[0:0]);

    // i_llvm_fpga_pipeline_keep_going_jacobi_1d0(BLACKBOX,12)@63
    // in in_stall_in@20000000
    // out out_data_out@64
    // out out_exiting_stall_out@20000000
    // out out_exiting_valid_out@20000000
    // out out_initeration_stall_out@20000000
    // out out_not_exitcond_stall_out@20000000
    // out out_pipeline_valid_out@20000000
    // out out_stall_out@20000000
    // out out_valid_out@64
    jacobi_1d_i_llvm_fpga_pipeline_keep_going_0 thei_llvm_fpga_pipeline_keep_going_jacobi_1d0 (
        .in_data_in(bubble_select_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_b),
        .in_initeration_in(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_feedback_out_2),
        .in_initeration_valid_in(i_llvm_fpga_push_i1_lastiniteration_jacobi_1d12_out_feedback_valid_out_2),
        .in_not_exitcond_in(i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_feedback_out_3),
        .in_not_exitcond_valid_in(i_llvm_fpga_push_i1_notexitcond_jacobi_1d8_out_feedback_valid_out_3),
        .in_pipeline_stall_in(in_pipeline_stall_in),
        .in_stall_in(SE_out_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_backStall),
        .in_valid_in(SE_out_redist0_jacobi_1d_B8_merge_reg_aunroll_x_out_data_out_0_tpl_62_fifo_V1),
        .out_data_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_data_out),
        .out_exiting_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_exiting_stall_out),
        .out_exiting_valid_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_exiting_valid_out),
        .out_initeration_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_initeration_stall_out),
        .out_not_exitcond_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_not_exitcond_stall_out),
        .out_pipeline_valid_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_pipeline_valid_out),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // ext_sig_sync_out(GPOUT,8)
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_exiting_valid_out = i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_exiting_valid_out;
    assign out_aclp_to_limiter_i_llvm_fpga_pipeline_keep_going_jacobi_1d0_exiting_stall_out = i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_exiting_stall_out;

    // pipeline_valid_out_sync(GPOUT,45)
    assign out_pipeline_valid_out = i_llvm_fpga_pipeline_keep_going_jacobi_1d0_out_pipeline_valid_out;

    // sync_out(GPOUT,52)@0
    assign out_stall_out = SE_stall_entry_backStall;

    // dupName_0_ext_sig_sync_out_x(GPOUT,55)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_address = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_enable = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_read = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_write = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;

    // bubble_join_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo(BITJOIN,143)
    assign bubble_join_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_q = redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_data_out;

    // bubble_select_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo(BITSELECT,144)
    assign bubble_select_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_b = $unsigned(bubble_join_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_q[0:0]);

    // dupName_0_sync_out_x(GPOUT,56)@131
    assign out_c0_exe8 = bubble_select_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_b;
    assign out_valid_out = SE_out_redist7_i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_c0_exit106_8_tpl_62_fifo_V0;

    // dupName_1_ext_sig_sync_out_x(GPOUT,58)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_address = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_enable = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_read = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_write = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount = i_sfc_s_c0_in_for_body49_jacobi_1ds_c0_enter965_jacobi_1d4_aunroll_x_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;

    // dupName_2_ext_sig_sync_out_x(GPOUT,60)
    assign out_memdep_6_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_address;
    assign out_memdep_6_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_enable;
    assign out_memdep_6_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_read;
    assign out_memdep_6_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_write;
    assign out_memdep_6_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_writedata;
    assign out_memdep_6_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_byteenable;
    assign out_memdep_6_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_memdep_6_jacobi_1d_avm_burstcount;

    // dupName_3_ext_sig_sync_out_x(GPOUT,61)
    assign out_lsu_memdep_6_o_active = i_llvm_fpga_mem_memdep_6_jacobi_1d7_out_lsu_memdep_6_o_active;

    // dupName_4_ext_sig_sync_out_x(GPOUT,62)
    assign out_memdep_7_jacobi_1d_avm_address = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_address;
    assign out_memdep_7_jacobi_1d_avm_enable = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_enable;
    assign out_memdep_7_jacobi_1d_avm_read = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_read;
    assign out_memdep_7_jacobi_1d_avm_write = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_write;
    assign out_memdep_7_jacobi_1d_avm_writedata = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_writedata;
    assign out_memdep_7_jacobi_1d_avm_byteenable = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_byteenable;
    assign out_memdep_7_jacobi_1d_avm_burstcount = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_memdep_7_jacobi_1d_avm_burstcount;

    // dupName_5_ext_sig_sync_out_x(GPOUT,63)
    assign out_lsu_memdep_7_o_active = i_llvm_fpga_mem_memdep_7_jacobi_1d11_out_lsu_memdep_7_o_active;

endmodule
