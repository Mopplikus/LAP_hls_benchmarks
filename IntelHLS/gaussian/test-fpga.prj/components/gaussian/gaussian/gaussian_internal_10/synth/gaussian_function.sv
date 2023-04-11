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

// SystemVerilog created from gaussian_function
// Created for function/kernel gaussian
// SystemVerilog created on Fri Apr  7 17:25:52 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_function (
    input wire [63:0] in_arg_A_r,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_iord_bl_call_gaussian_i_fifodata,
    input wire [0:0] in_iord_bl_call_gaussian_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_gaussian_i_fifoready,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [31:0] in_lm62_gaussian_avm_readdata,
    input wire [0:0] in_lm62_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm62_gaussian_avm_waitrequest,
    input wire [0:0] in_lm62_gaussian_avm_writeack,
    input wire [31:0] in_lm83_gaussian_avm_readdata,
    input wire [0:0] in_lm83_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm83_gaussian_avm_waitrequest,
    input wire [0:0] in_lm83_gaussian_avm_writeack,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoready,
    output wire [0:0] out_iowr_bl_return_gaussian_o_fifodata,
    output wire [0:0] out_iowr_bl_return_gaussian_o_fifovalid,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm62_gaussian_avm_address,
    output wire [0:0] out_lm62_gaussian_avm_burstcount,
    output wire [3:0] out_lm62_gaussian_avm_byteenable,
    output wire [0:0] out_lm62_gaussian_avm_enable,
    output wire [0:0] out_lm62_gaussian_avm_read,
    output wire [0:0] out_lm62_gaussian_avm_write,
    output wire [31:0] out_lm62_gaussian_avm_writedata,
    output wire [31:0] out_lm83_gaussian_avm_address,
    output wire [0:0] out_lm83_gaussian_avm_burstcount,
    output wire [3:0] out_lm83_gaussian_avm_byteenable,
    output wire [0:0] out_lm83_gaussian_avm_enable,
    output wire [0:0] out_lm83_gaussian_avm_read,
    output wire [0:0] out_lm83_gaussian_avm_write,
    output wire [31:0] out_lm83_gaussian_avm_writedata,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_gaussian_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_gaussian_B1_start_out_feedback_stall_out_7;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;
    wire [0:0] bb_gaussian_B1_start_out_memdep_phi4_pop7;
    wire [0:0] bb_gaussian_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B1_start_out_stall_out_0;
    wire [0:0] bb_gaussian_B1_start_out_valid_in_0;
    wire [0:0] bb_gaussian_B1_start_out_valid_in_1;
    wire [0:0] bb_gaussian_B1_start_out_valid_out_0;
    wire [0:0] bb_gaussian_B2_out_c0_exe31303;
    wire [0:0] bb_gaussian_B2_out_c0_exe41317;
    wire [31:0] bb_gaussian_B2_out_c0_exe813512;
    wire [31:0] bb_gaussian_B2_out_fpga_indvars_iv_next10;
    wire [31:0] bb_gaussian_B2_out_fpga_indvars_iv_next8;
    wire [0:0] bb_gaussian_B2_out_stall_in_0;
    wire [0:0] bb_gaussian_B2_out_stall_out_0;
    wire [0:0] bb_gaussian_B2_out_valid_out_0;
    wire [0:0] bb_gaussian_B2_out_valid_out_1;
    wire [0:0] bb_gaussian_B3_out_feedback_out_7;
    wire [0:0] bb_gaussian_B3_out_feedback_valid_out_7;
    wire [0:0] bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata;
    wire [0:0] bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid;
    wire [0:0] bb_gaussian_B3_out_stall_in_0;
    wire [0:0] bb_gaussian_B3_out_stall_out_0;
    wire [0:0] bb_gaussian_B3_out_valid_out_0;
    wire [31:0] bb_gaussian_B4_out_add;
    wire [0:0] bb_gaussian_B4_out_cmp416;
    wire [31:0] bb_gaussian_B4_out_fpga_indvars_iv7;
    wire [31:0] bb_gaussian_B4_out_fpga_indvars_iv9;
    wire [31:0] bb_gaussian_B4_out_j_018;
    wire [0:0] bb_gaussian_B4_out_memdep_phi4_pop729;
    wire [0:0] bb_gaussian_B4_out_stall_out_0;
    wire [0:0] bb_gaussian_B4_out_stall_out_1;
    wire [32:0] bb_gaussian_B4_out_unnamed_gaussian3;
    wire [0:0] bb_gaussian_B4_out_valid_in_0;
    wire [0:0] bb_gaussian_B4_out_valid_in_1;
    wire [0:0] bb_gaussian_B4_out_valid_out_0;
    wire [31:0] bb_gaussian_B5_out_c0_exe11;
    wire [31:0] bb_gaussian_B5_out_c0_exe12;
    wire [31:0] bb_gaussian_B5_out_c0_exe13;
    wire [0:0] bb_gaussian_B5_out_c0_exe14;
    wire [32:0] bb_gaussian_B5_out_c0_exe15;
    wire [31:0] bb_gaussian_B5_out_c0_exe16;
    wire [0:0] bb_gaussian_B5_out_c0_exe17;
    wire [0:0] bb_gaussian_B5_out_c0_exe191;
    wire [0:0] bb_gaussian_B5_out_c0_exe292;
    wire [0:0] bb_gaussian_B5_out_c0_exe3;
    wire [31:0] bb_gaussian_B5_out_c0_exe4;
    wire [0:0] bb_gaussian_B5_out_c0_exe5;
    wire [31:0] bb_gaussian_B5_out_c0_exe6;
    wire [31:0] bb_gaussian_B5_out_c0_exe7;
    wire [31:0] bb_gaussian_B5_out_c0_exe8;
    wire [31:0] bb_gaussian_B5_out_c0_exe9;
    wire [0:0] bb_gaussian_B5_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B5_out_exiting_valid_out;
    wire [0:0] bb_gaussian_B5_out_feedback_stall_out_10;
    wire [0:0] bb_gaussian_B5_out_memdep_phi_pop10;
    wire [0:0] bb_gaussian_B5_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B5_out_stall_out_0;
    wire [0:0] bb_gaussian_B5_out_stall_out_1;
    wire [0:0] bb_gaussian_B5_out_valid_in_0;
    wire [0:0] bb_gaussian_B5_out_valid_in_1;
    wire [0:0] bb_gaussian_B5_out_valid_out_0;
    wire [0:0] bb_gaussian_B6_out_c0_exe21292;
    wire [0:0] bb_gaussian_B6_out_c0_exe31304;
    wire [0:0] bb_gaussian_B6_out_c0_exe41315;
    wire [31:0] bb_gaussian_B6_out_c0_exe61339;
    wire [31:0] bb_gaussian_B6_out_c0_exe713411;
    wire [31:0] bb_gaussian_B6_out_c0_exe813513;
    wire [0:0] bb_gaussian_B6_out_feedback_out_10;
    wire [0:0] bb_gaussian_B6_out_feedback_valid_out_10;
    wire [0:0] bb_gaussian_B6_out_stall_in_0;
    wire [0:0] bb_gaussian_B6_out_stall_out_0;
    wire [0:0] bb_gaussian_B6_out_valid_out_0;
    wire [0:0] bb_gaussian_B7_out_c0_exe10137;
    wire [0:0] bb_gaussian_B7_out_c0_exe2129;
    wire [0:0] bb_gaussian_B7_out_c0_exe3130;
    wire [0:0] bb_gaussian_B7_out_c0_exe4131;
    wire [31:0] bb_gaussian_B7_out_c0_exe6133;
    wire [31:0] bb_gaussian_B7_out_c0_exe7134;
    wire [31:0] bb_gaussian_B7_out_c0_exe8135;
    wire [0:0] bb_gaussian_B7_out_c0_exe9136;
    wire [0:0] bb_gaussian_B7_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B7_out_exiting_valid_out;
    wire [31:0] bb_gaussian_B7_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm1_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_lm1_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_out_lm62_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_lm62_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm62_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_lm62_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_out_lm83_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_lm83_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_lm83_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_lm83_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B7_out_memdep_gaussian_avm_address;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B7_out_memdep_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_read;
    wire [0:0] bb_gaussian_B7_out_memdep_gaussian_avm_write;
    wire [31:0] bb_gaussian_B7_out_memdep_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B7_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B7_out_stall_in_0;
    wire [0:0] bb_gaussian_B7_out_stall_out_0;
    wire [0:0] bb_gaussian_B7_out_stall_out_1;
    wire [0:0] bb_gaussian_B7_out_valid_in_0;
    wire [0:0] bb_gaussian_B7_out_valid_in_1;
    wire [0:0] bb_gaussian_B7_out_valid_out_0;
    wire [1:0] c_i2_090_q;
    wire [31:0] c_i32_121_q;
    wire [31:0] c_i32_315_q;
    wire [31:0] c_i32_318_q;
    wire [31:0] c_i32_undef28_q;
    wire [32:0] c_i33_undef36_q;
    wire [0:0] gaussian_B1_start_x_i_capture;
    wire gaussian_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_clear;
    wire gaussian_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_enable;
    wire gaussian_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_shift;
    wire gaussian_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_stall_pred;
    wire gaussian_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_stall_succ;
    wire gaussian_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_valid_loop;
    wire gaussian_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_valid_pred;
    wire gaussian_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B1_start_x_i_valid_succ;
    wire gaussian_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_capture;
    wire gaussian_B4_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_clear;
    wire gaussian_B4_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_enable;
    wire gaussian_B4_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_shift;
    wire gaussian_B4_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_stall_pred;
    wire gaussian_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_stall_succ;
    wire gaussian_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_valid_loop;
    wire gaussian_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_valid_pred;
    wire gaussian_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B4_x_i_valid_succ;
    wire gaussian_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_capture;
    wire gaussian_B5_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_clear;
    wire gaussian_B5_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_enable;
    wire gaussian_B5_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_shift;
    wire gaussian_B5_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_stall_pred;
    wire gaussian_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_stall_succ;
    wire gaussian_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_valid_loop;
    wire gaussian_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_valid_pred;
    wire gaussian_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B5_x_i_valid_succ;
    wire gaussian_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_capture;
    wire gaussian_B7_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_clear;
    wire gaussian_B7_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_enable;
    wire gaussian_B7_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_shift;
    wire gaussian_B7_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_stall_pred;
    wire gaussian_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_stall_succ;
    wire gaussian_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_valid_loop;
    wire gaussian_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_valid_pred;
    wire gaussian_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B7_x_i_valid_succ;
    wire gaussian_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_gaussian2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_gaussian2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_gaussian0_out_o_stall;
    wire [0:0] loop_limiter_gaussian0_out_o_valid;
    wire [0:0] loop_limiter_gaussian1_out_o_stall;
    wire [0:0] loop_limiter_gaussian1_out_o_valid;
    wire [0:0] loop_limiter_gaussian2_out_o_stall;
    wire [0:0] loop_limiter_gaussian2_out_o_valid;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [32:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [32:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_gaussian_B7_sr_1_aunroll_x_out_o_data_17_tpl;


    // c_i2_090(CONSTANT,40)
    assign c_i2_090_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo(BLACKBOX,69)
    gaussian_i_llvm_fpga_pipeline_keep_going23_2_valid_fifo thei_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_gaussian_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going23_gaussian2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo(BLACKBOX,67)
    gaussian_i_llvm_fpga_pipeline_keep_going19_2_valid_fifo thei_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_gaussian_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going19_gaussian2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef36(CONSTANT,59)
    assign c_i33_undef36_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo(BLACKBOX,71)
    gaussian_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_gaussian_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6_sr_0_aunroll_x(BLACKBOX,139)
    gaussian_bb_B6_sr_0 thebb_gaussian_B6_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B6_out_stall_out_0),
        .in_i_valid(bb_gaussian_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B7_out_c0_exe2129),
        .in_i_data_1_tpl(bb_gaussian_B7_out_c0_exe3130),
        .in_i_data_2_tpl(bb_gaussian_B7_out_c0_exe4131),
        .in_i_data_3_tpl(bb_gaussian_B7_out_c0_exe6133),
        .in_i_data_4_tpl(bb_gaussian_B7_out_c0_exe7134),
        .in_i_data_5_tpl(bb_gaussian_B7_out_c0_exe8135),
        .in_i_data_6_tpl(bb_gaussian_B7_out_c0_exe9136),
        .in_i_data_7_tpl(bb_gaussian_B7_out_c0_exe10137),
        .out_o_stall(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gaussian6_sr(BLACKBOX,70)
    gaussian_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_gaussian6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7(BLACKBOX,9)
    gaussian_bb_B7 thebb_gaussian_B7 (
        .in_add36_pop1569_0(c_i32_undef28_q),
        .in_add36_pop1569_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_add57_0(c_i32_undef28_q),
        .in_add57_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_cmp41638_pop1661_0(GND_q),
        .in_cmp41638_pop1661_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_cmp41660_0(GND_q),
        .in_cmp41660_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv732_pop1367_0(c_i32_undef28_q),
        .in_fpga_indvars_iv732_pop1367_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_fpga_indvars_iv748_0(c_i32_undef28_q),
        .in_fpga_indvars_iv748_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_fpga_indvars_iv930_pop1266_0(c_i32_undef28_q),
        .in_fpga_indvars_iv930_pop1266_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_fpga_indvars_iv945_0(c_i32_undef28_q),
        .in_fpga_indvars_iv945_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_i_017_pop963_0(c_i32_undef28_q),
        .in_i_017_pop963_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_j_01834_pop1468_0(c_i32_undef28_q),
        .in_j_01834_pop1468_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_j_01851_0(c_i32_undef28_q),
        .in_j_01851_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm62_gaussian_avm_readdata(in_lm62_gaussian_avm_readdata),
        .in_lm62_gaussian_avm_readdatavalid(in_lm62_gaussian_avm_readdatavalid),
        .in_lm62_gaussian_avm_waitrequest(in_lm62_gaussian_avm_waitrequest),
        .in_lm62_gaussian_avm_writeack(in_lm62_gaussian_avm_writeack),
        .in_lm83_gaussian_avm_readdata(in_lm83_gaussian_avm_readdata),
        .in_lm83_gaussian_avm_readdatavalid(in_lm83_gaussian_avm_readdatavalid),
        .in_lm83_gaussian_avm_waitrequest(in_lm83_gaussian_avm_waitrequest),
        .in_lm83_gaussian_avm_writeack(in_lm83_gaussian_avm_writeack),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_memdep_phi4_pop727_pop1165_0(GND_q),
        .in_memdep_phi4_pop727_pop1165_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_memdep_phi4_pop72954_0(GND_q),
        .in_memdep_phi4_pop72954_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi_pop1064_0(GND_q),
        .in_memdep_phi_pop1064_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_notcmp1762_0(GND_q),
        .in_notcmp1762_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_stall),
        .in_stall_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_gaussian5_0(c_i33_undef36_q),
        .in_unnamed_gaussian5_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_gaussian6_0(GND_q),
        .in_unnamed_gaussian6_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10137(bb_gaussian_B7_out_c0_exe10137),
        .out_c0_exe2129(bb_gaussian_B7_out_c0_exe2129),
        .out_c0_exe3130(bb_gaussian_B7_out_c0_exe3130),
        .out_c0_exe4131(bb_gaussian_B7_out_c0_exe4131),
        .out_c0_exe6133(bb_gaussian_B7_out_c0_exe6133),
        .out_c0_exe7134(bb_gaussian_B7_out_c0_exe7134),
        .out_c0_exe8135(bb_gaussian_B7_out_c0_exe8135),
        .out_c0_exe9136(bb_gaussian_B7_out_c0_exe9136),
        .out_exiting_stall_out(bb_gaussian_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B7_out_exiting_valid_out),
        .out_lm1_gaussian_avm_address(bb_gaussian_B7_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B7_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B7_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B7_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B7_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B7_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B7_out_lm1_gaussian_avm_writedata),
        .out_lm62_gaussian_avm_address(bb_gaussian_B7_out_lm62_gaussian_avm_address),
        .out_lm62_gaussian_avm_burstcount(bb_gaussian_B7_out_lm62_gaussian_avm_burstcount),
        .out_lm62_gaussian_avm_byteenable(bb_gaussian_B7_out_lm62_gaussian_avm_byteenable),
        .out_lm62_gaussian_avm_enable(bb_gaussian_B7_out_lm62_gaussian_avm_enable),
        .out_lm62_gaussian_avm_read(bb_gaussian_B7_out_lm62_gaussian_avm_read),
        .out_lm62_gaussian_avm_write(bb_gaussian_B7_out_lm62_gaussian_avm_write),
        .out_lm62_gaussian_avm_writedata(bb_gaussian_B7_out_lm62_gaussian_avm_writedata),
        .out_lm83_gaussian_avm_address(bb_gaussian_B7_out_lm83_gaussian_avm_address),
        .out_lm83_gaussian_avm_burstcount(bb_gaussian_B7_out_lm83_gaussian_avm_burstcount),
        .out_lm83_gaussian_avm_byteenable(bb_gaussian_B7_out_lm83_gaussian_avm_byteenable),
        .out_lm83_gaussian_avm_enable(bb_gaussian_B7_out_lm83_gaussian_avm_enable),
        .out_lm83_gaussian_avm_read(bb_gaussian_B7_out_lm83_gaussian_avm_read),
        .out_lm83_gaussian_avm_write(bb_gaussian_B7_out_lm83_gaussian_avm_write),
        .out_lm83_gaussian_avm_writedata(bb_gaussian_B7_out_lm83_gaussian_avm_writedata),
        .out_memdep_gaussian_avm_address(bb_gaussian_B7_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(bb_gaussian_B7_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(bb_gaussian_B7_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(bb_gaussian_B7_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(bb_gaussian_B7_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(bb_gaussian_B7_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(bb_gaussian_B7_out_memdep_gaussian_avm_writedata),
        .out_pipeline_valid_out(bb_gaussian_B7_out_pipeline_valid_out),
        .out_stall_in_0(bb_gaussian_B7_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B7_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B7_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B7_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B7_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7_sr_1_aunroll_x(BLACKBOX,140)
    gaussian_bb_B7_sr_1 thebb_gaussian_B7_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B5_out_c0_exe11),
        .in_i_data_2_tpl(bb_gaussian_B5_out_c0_exe12),
        .in_i_data_3_tpl(bb_gaussian_B5_out_c0_exe13),
        .in_i_data_4_tpl(bb_gaussian_B5_out_c0_exe14),
        .in_i_data_5_tpl(bb_gaussian_B5_out_c0_exe15),
        .in_i_data_6_tpl(bb_gaussian_B5_out_c0_exe16),
        .in_i_data_7_tpl(bb_gaussian_B5_out_c0_exe17),
        .in_i_data_8_tpl(bb_gaussian_B5_out_c0_exe191),
        .in_i_data_9_tpl(bb_gaussian_B5_out_c0_exe292),
        .in_i_data_10_tpl(bb_gaussian_B5_out_c0_exe3),
        .in_i_data_11_tpl(bb_gaussian_B5_out_c0_exe4),
        .in_i_data_12_tpl(bb_gaussian_B5_out_memdep_phi_pop10),
        .in_i_data_13_tpl(bb_gaussian_B5_out_c0_exe5),
        .in_i_data_14_tpl(bb_gaussian_B5_out_c0_exe6),
        .in_i_data_15_tpl(bb_gaussian_B5_out_c0_exe7),
        .in_i_data_16_tpl(bb_gaussian_B5_out_c0_exe8),
        .in_i_data_17_tpl(bb_gaussian_B5_out_c0_exe9),
        .out_o_stall(bb_gaussian_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_gaussian_B7_sr_1_aunroll_x_out_o_data_17_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian2(BLACKBOX,99)
    gaussian_loop_limiter_2 theloop_limiter_gaussian2 (
        .in_i_stall(bb_gaussian_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B7_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B5_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian2_out_o_stall),
        .out_o_valid(loop_limiter_gaussian2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going19_gaussian2_sr(BLACKBOX,66)
    gaussian_i_llvm_fpga_pipeline_keep_going19_2_sr thei_llvm_fpga_pipeline_keep_going19_gaussian2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going19_gaussian2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going19_gaussian2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6(BLACKBOX,8)
    gaussian_bb_B6 thebb_gaussian_B6 (
        .in_c0_exe1013715_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe21292_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31304_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe41315_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61339_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe713411_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe813513_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe913614_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_feedback_stall_in_10(bb_gaussian_B5_out_feedback_stall_out_10),
        .in_stall_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe21292(bb_gaussian_B6_out_c0_exe21292),
        .out_c0_exe31304(bb_gaussian_B6_out_c0_exe31304),
        .out_c0_exe41315(bb_gaussian_B6_out_c0_exe41315),
        .out_c0_exe61339(bb_gaussian_B6_out_c0_exe61339),
        .out_c0_exe713411(bb_gaussian_B6_out_c0_exe713411),
        .out_c0_exe813513(bb_gaussian_B6_out_c0_exe813513),
        .out_feedback_out_10(bb_gaussian_B6_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_gaussian_B6_out_feedback_valid_out_10),
        .out_stall_in_0(bb_gaussian_B6_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B6_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef28(CONSTANT,46)
    assign c_i32_undef28_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_gaussian_B5(BLACKBOX,7)
    gaussian_bb_B5 thebb_gaussian_B5 (
        .in_add55_0(c_i32_undef28_q),
        .in_add55_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_cmp41658_0(GND_q),
        .in_cmp41658_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_feedback_in_10(bb_gaussian_B6_out_feedback_out_10),
        .in_feedback_valid_in_10(bb_gaussian_B6_out_feedback_valid_out_10),
        .in_forked26_0(GND_q),
        .in_forked26_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv746_0(c_i32_undef28_q),
        .in_fpga_indvars_iv746_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_fpga_indvars_iv943_0(c_i32_undef28_q),
        .in_fpga_indvars_iv943_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_j_01849_0(c_i32_undef28_q),
        .in_j_01849_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi4_pop72952_0(GND_q),
        .in_memdep_phi4_pop72952_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going19_gaussian2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian2_out_o_stall),
        .in_unnamed_gaussian4_0(c_i33_undef36_q),
        .in_unnamed_gaussian4_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going19_gaussian2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe11(bb_gaussian_B5_out_c0_exe11),
        .out_c0_exe12(bb_gaussian_B5_out_c0_exe12),
        .out_c0_exe13(bb_gaussian_B5_out_c0_exe13),
        .out_c0_exe14(bb_gaussian_B5_out_c0_exe14),
        .out_c0_exe15(bb_gaussian_B5_out_c0_exe15),
        .out_c0_exe16(bb_gaussian_B5_out_c0_exe16),
        .out_c0_exe17(bb_gaussian_B5_out_c0_exe17),
        .out_c0_exe191(bb_gaussian_B5_out_c0_exe191),
        .out_c0_exe292(bb_gaussian_B5_out_c0_exe292),
        .out_c0_exe3(bb_gaussian_B5_out_c0_exe3),
        .out_c0_exe4(bb_gaussian_B5_out_c0_exe4),
        .out_c0_exe5(bb_gaussian_B5_out_c0_exe5),
        .out_c0_exe6(bb_gaussian_B5_out_c0_exe6),
        .out_c0_exe7(bb_gaussian_B5_out_c0_exe7),
        .out_c0_exe8(bb_gaussian_B5_out_c0_exe8),
        .out_c0_exe9(bb_gaussian_B5_out_c0_exe9),
        .out_exiting_stall_out(bb_gaussian_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B5_out_exiting_valid_out),
        .out_feedback_stall_out_10(bb_gaussian_B5_out_feedback_stall_out_10),
        .out_memdep_phi_pop10(bb_gaussian_B5_out_memdep_phi_pop10),
        .out_pipeline_valid_out(bb_gaussian_B5_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B5_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B5_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B5_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B5_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B5_sr_1_aunroll_x(BLACKBOX,138)
    gaussian_bb_B5_sr_1 thebb_gaussian_B5_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B4_out_fpga_indvars_iv9),
        .in_i_data_2_tpl(bb_gaussian_B4_out_fpga_indvars_iv7),
        .in_i_data_3_tpl(bb_gaussian_B4_out_j_018),
        .in_i_data_4_tpl(bb_gaussian_B4_out_memdep_phi4_pop729),
        .in_i_data_5_tpl(bb_gaussian_B4_out_unnamed_gaussian3),
        .in_i_data_6_tpl(bb_gaussian_B4_out_add),
        .in_i_data_7_tpl(bb_gaussian_B4_out_cmp416),
        .out_o_stall(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian1(BLACKBOX,98)
    gaussian_loop_limiter_1 theloop_limiter_gaussian1 (
        .in_i_stall(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B5_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B4_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian1_out_o_stall),
        .out_o_valid(loop_limiter_gaussian1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4(BLACKBOX,6)
    gaussian_bb_B4 thebb_gaussian_B4 (
        .in_fpga_indvars_iv7_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_fpga_indvars_iv7_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_fpga_indvars_iv9_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv9_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j_018_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_j_018_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi4_pop729_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi4_pop729_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(loop_limiter_gaussian1_out_o_stall),
        .in_valid_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_gaussian_B4_sr_1_aunroll_x_out_o_valid),
        .out_add(bb_gaussian_B4_out_add),
        .out_cmp416(bb_gaussian_B4_out_cmp416),
        .out_fpga_indvars_iv7(bb_gaussian_B4_out_fpga_indvars_iv7),
        .out_fpga_indvars_iv9(bb_gaussian_B4_out_fpga_indvars_iv9),
        .out_j_018(bb_gaussian_B4_out_j_018),
        .out_memdep_phi4_pop729(bb_gaussian_B4_out_memdep_phi4_pop729),
        .out_stall_out_0(bb_gaussian_B4_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B4_out_stall_out_1),
        .out_unnamed_gaussian3(bb_gaussian_B4_out_unnamed_gaussian3),
        .out_valid_in_0(bb_gaussian_B4_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B4_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4_sr_0_aunroll_x(BLACKBOX,136)
    gaussian_bb_B4_sr_0 thebb_gaussian_B4_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B4_out_stall_out_0),
        .in_i_valid(bb_gaussian_B2_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B2_out_fpga_indvars_iv_next10),
        .in_i_data_1_tpl(bb_gaussian_B2_out_fpga_indvars_iv_next8),
        .in_i_data_2_tpl(bb_gaussian_B2_out_c0_exe813512),
        .in_i_data_3_tpl(bb_gaussian_B2_out_c0_exe31303),
        .out_o_stall(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2_sr_0_aunroll_x(BLACKBOX,134)
    gaussian_bb_B2_sr_0 thebb_gaussian_B2_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B2_out_stall_out_0),
        .in_i_valid(bb_gaussian_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B6_out_c0_exe21292),
        .in_i_data_1_tpl(bb_gaussian_B6_out_c0_exe31304),
        .in_i_data_2_tpl(bb_gaussian_B6_out_c0_exe41315),
        .in_i_data_3_tpl(bb_gaussian_B6_out_c0_exe61339),
        .in_i_data_4_tpl(bb_gaussian_B6_out_c0_exe713411),
        .in_i_data_5_tpl(bb_gaussian_B6_out_c0_exe813513),
        .out_o_stall(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2(BLACKBOX,4)
    gaussian_bb_B2 thebb_gaussian_B2 (
        .in_c0_exe21291_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31303_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe41317_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61338_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe713410_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe813512_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe31303(bb_gaussian_B2_out_c0_exe31303),
        .out_c0_exe41317(bb_gaussian_B2_out_c0_exe41317),
        .out_c0_exe813512(bb_gaussian_B2_out_c0_exe813512),
        .out_fpga_indvars_iv_next10(bb_gaussian_B2_out_fpga_indvars_iv_next10),
        .out_fpga_indvars_iv_next8(bb_gaussian_B2_out_fpga_indvars_iv_next8),
        .out_stall_in_0(bb_gaussian_B2_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B2_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B2_out_valid_out_0),
        .out_valid_out_1(bb_gaussian_B2_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3_sr_0_aunroll_x(BLACKBOX,135)
    gaussian_bb_B3_sr_0 thebb_gaussian_B3_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B3_out_stall_out_0),
        .in_i_valid(bb_gaussian_B2_out_valid_out_1),
        .in_i_data_0_tpl(bb_gaussian_B2_out_c0_exe41317),
        .out_o_stall(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_121(CONSTANT,43)
    assign c_i32_121_q = $unsigned(32'b00000000000000000000000000000001);

    // c_i32_318(CONSTANT,45)
    assign c_i32_318_q = $unsigned(32'b00000000000000000000000000000011);

    // c_i32_315(CONSTANT,44)
    assign c_i32_315_q = $unsigned(32'b11111111111111111111111111111101);

    // bb_gaussian_B4_sr_1_aunroll_x(BLACKBOX,137)
    gaussian_bb_B4_sr_1 thebb_gaussian_B4_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian0_out_o_valid),
        .in_i_data_0_tpl(c_i32_315_q),
        .in_i_data_1_tpl(c_i32_318_q),
        .in_i_data_2_tpl(c_i32_121_q),
        .in_i_data_3_tpl(bb_gaussian_B1_start_out_memdep_phi4_pop7),
        .out_o_stall(bb_gaussian_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian0(BLACKBOX,97)
    gaussian_loop_limiter_0 theloop_limiter_gaussian0 (
        .in_i_stall(bb_gaussian_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B3_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_gaussian_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B2_out_valid_out_1),
        .out_o_stall(loop_limiter_gaussian0_out_o_stall),
        .out_o_valid(loop_limiter_gaussian0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going23_gaussian2_sr(BLACKBOX,68)
    gaussian_i_llvm_fpga_pipeline_keep_going23_2_sr thei_llvm_fpga_pipeline_keep_going23_gaussian2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going23_gaussian2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going23_gaussian2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B1_start(BLACKBOX,3)
    gaussian_bb_B1_start thebb_gaussian_B1_start (
        .in_feedback_in_7(bb_gaussian_B3_out_feedback_out_7),
        .in_feedback_valid_in_7(bb_gaussian_B3_out_feedback_valid_out_7),
        .in_forked25_0(GND_q),
        .in_forked25_1(VCC_q),
        .in_iord_bl_call_gaussian_i_fifodata(in_iord_bl_call_gaussian_i_fifodata),
        .in_iord_bl_call_gaussian_i_fifovalid(in_iord_bl_call_gaussian_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going23_gaussian2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going23_gaussian2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_7(bb_gaussian_B1_start_out_feedback_stall_out_7),
        .out_iord_bl_call_gaussian_o_fifoalmost_full(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full),
        .out_iord_bl_call_gaussian_o_fifoready(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready),
        .out_memdep_phi4_pop7(bb_gaussian_B1_start_out_memdep_phi4_pop7),
        .out_pipeline_valid_out(bb_gaussian_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_gaussian_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3(BLACKBOX,5)
    gaussian_bb_B3 thebb_gaussian_B3 (
        .in_c0_exe41316_0(bb_gaussian_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_7(bb_gaussian_B1_start_out_feedback_stall_out_7),
        .in_iowr_bl_return_gaussian_i_fifoready(in_iowr_bl_return_gaussian_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_gaussian_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_7(bb_gaussian_B3_out_feedback_out_7),
        .out_feedback_valid_out_7(bb_gaussian_B3_out_feedback_valid_out_7),
        .out_iowr_bl_return_gaussian_o_fifodata(bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata),
        .out_iowr_bl_return_gaussian_o_fifovalid(bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid),
        .out_stall_in_0(bb_gaussian_B3_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B3_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // gaussian_B1_start_x(EXTIFACE,62)
    assign gaussian_B1_start_x_i_capture = GND_q;
    assign gaussian_B1_start_x_i_clear = GND_q;
    assign gaussian_B1_start_x_i_enable = VCC_q;
    assign gaussian_B1_start_x_i_shift = GND_q;
    assign gaussian_B1_start_x_i_stall_pred = GND_q;
    assign gaussian_B1_start_x_i_stall_succ = bb_gaussian_B3_out_stall_in_0;
    assign gaussian_B1_start_x_i_valid_loop = bb_gaussian_B1_start_out_valid_in_0;
    assign gaussian_B1_start_x_i_valid_pred = bb_gaussian_B1_start_out_valid_in_1;
    assign gaussian_B1_start_x_i_valid_succ = bb_gaussian_B3_out_valid_out_0;
    assign gaussian_B1_start_x_i_capture_bitsignaltemp = gaussian_B1_start_x_i_capture[0];
    assign gaussian_B1_start_x_i_clear_bitsignaltemp = gaussian_B1_start_x_i_clear[0];
    assign gaussian_B1_start_x_i_enable_bitsignaltemp = gaussian_B1_start_x_i_enable[0];
    assign gaussian_B1_start_x_i_shift_bitsignaltemp = gaussian_B1_start_x_i_shift[0];
    assign gaussian_B1_start_x_i_stall_pred_bitsignaltemp = gaussian_B1_start_x_i_stall_pred[0];
    assign gaussian_B1_start_x_i_stall_succ_bitsignaltemp = gaussian_B1_start_x_i_stall_succ[0];
    assign gaussian_B1_start_x_i_valid_loop_bitsignaltemp = gaussian_B1_start_x_i_valid_loop[0];
    assign gaussian_B1_start_x_i_valid_pred_bitsignaltemp = gaussian_B1_start_x_i_valid_pred[0];
    assign gaussian_B1_start_x_i_valid_succ_bitsignaltemp = gaussian_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B1.start")
    ) thegaussian_B1_start_x (
        .i_capture(gaussian_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B4_x(EXTIFACE,63)
    assign gaussian_B4_x_i_capture = GND_q;
    assign gaussian_B4_x_i_clear = GND_q;
    assign gaussian_B4_x_i_enable = VCC_q;
    assign gaussian_B4_x_i_shift = GND_q;
    assign gaussian_B4_x_i_stall_pred = loop_limiter_gaussian0_out_o_stall;
    assign gaussian_B4_x_i_stall_succ = bb_gaussian_B2_out_stall_in_0;
    assign gaussian_B4_x_i_valid_loop = bb_gaussian_B4_out_valid_in_0;
    assign gaussian_B4_x_i_valid_pred = bb_gaussian_B4_out_valid_in_1;
    assign gaussian_B4_x_i_valid_succ = bb_gaussian_B2_out_valid_out_0;
    assign gaussian_B4_x_i_capture_bitsignaltemp = gaussian_B4_x_i_capture[0];
    assign gaussian_B4_x_i_clear_bitsignaltemp = gaussian_B4_x_i_clear[0];
    assign gaussian_B4_x_i_enable_bitsignaltemp = gaussian_B4_x_i_enable[0];
    assign gaussian_B4_x_i_shift_bitsignaltemp = gaussian_B4_x_i_shift[0];
    assign gaussian_B4_x_i_stall_pred_bitsignaltemp = gaussian_B4_x_i_stall_pred[0];
    assign gaussian_B4_x_i_stall_succ_bitsignaltemp = gaussian_B4_x_i_stall_succ[0];
    assign gaussian_B4_x_i_valid_loop_bitsignaltemp = gaussian_B4_x_i_valid_loop[0];
    assign gaussian_B4_x_i_valid_pred_bitsignaltemp = gaussian_B4_x_i_valid_pred[0];
    assign gaussian_B4_x_i_valid_succ_bitsignaltemp = gaussian_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B4")
    ) thegaussian_B4_x (
        .i_capture(gaussian_B4_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B4_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B4_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B5_x(EXTIFACE,64)
    assign gaussian_B5_x_i_capture = GND_q;
    assign gaussian_B5_x_i_clear = GND_q;
    assign gaussian_B5_x_i_enable = VCC_q;
    assign gaussian_B5_x_i_shift = GND_q;
    assign gaussian_B5_x_i_stall_pred = loop_limiter_gaussian1_out_o_stall;
    assign gaussian_B5_x_i_stall_succ = bb_gaussian_B6_out_stall_in_0;
    assign gaussian_B5_x_i_valid_loop = bb_gaussian_B5_out_valid_in_0;
    assign gaussian_B5_x_i_valid_pred = bb_gaussian_B5_out_valid_in_1;
    assign gaussian_B5_x_i_valid_succ = bb_gaussian_B6_out_valid_out_0;
    assign gaussian_B5_x_i_capture_bitsignaltemp = gaussian_B5_x_i_capture[0];
    assign gaussian_B5_x_i_clear_bitsignaltemp = gaussian_B5_x_i_clear[0];
    assign gaussian_B5_x_i_enable_bitsignaltemp = gaussian_B5_x_i_enable[0];
    assign gaussian_B5_x_i_shift_bitsignaltemp = gaussian_B5_x_i_shift[0];
    assign gaussian_B5_x_i_stall_pred_bitsignaltemp = gaussian_B5_x_i_stall_pred[0];
    assign gaussian_B5_x_i_stall_succ_bitsignaltemp = gaussian_B5_x_i_stall_succ[0];
    assign gaussian_B5_x_i_valid_loop_bitsignaltemp = gaussian_B5_x_i_valid_loop[0];
    assign gaussian_B5_x_i_valid_pred_bitsignaltemp = gaussian_B5_x_i_valid_pred[0];
    assign gaussian_B5_x_i_valid_succ_bitsignaltemp = gaussian_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B5")
    ) thegaussian_B5_x (
        .i_capture(gaussian_B5_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B5_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B5_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B7_x(EXTIFACE,65)
    assign gaussian_B7_x_i_capture = GND_q;
    assign gaussian_B7_x_i_clear = GND_q;
    assign gaussian_B7_x_i_enable = VCC_q;
    assign gaussian_B7_x_i_shift = GND_q;
    assign gaussian_B7_x_i_stall_pred = loop_limiter_gaussian2_out_o_stall;
    assign gaussian_B7_x_i_stall_succ = bb_gaussian_B7_out_stall_in_0;
    assign gaussian_B7_x_i_valid_loop = bb_gaussian_B7_out_valid_in_0;
    assign gaussian_B7_x_i_valid_pred = bb_gaussian_B7_out_valid_in_1;
    assign gaussian_B7_x_i_valid_succ = bb_gaussian_B7_out_valid_out_0;
    assign gaussian_B7_x_i_capture_bitsignaltemp = gaussian_B7_x_i_capture[0];
    assign gaussian_B7_x_i_clear_bitsignaltemp = gaussian_B7_x_i_clear[0];
    assign gaussian_B7_x_i_enable_bitsignaltemp = gaussian_B7_x_i_enable[0];
    assign gaussian_B7_x_i_shift_bitsignaltemp = gaussian_B7_x_i_shift[0];
    assign gaussian_B7_x_i_stall_pred_bitsignaltemp = gaussian_B7_x_i_stall_pred[0];
    assign gaussian_B7_x_i_stall_succ_bitsignaltemp = gaussian_B7_x_i_stall_succ[0];
    assign gaussian_B7_x_i_valid_loop_bitsignaltemp = gaussian_B7_x_i_valid_loop[0];
    assign gaussian_B7_x_i_valid_pred_bitsignaltemp = gaussian_B7_x_i_valid_pred[0];
    assign gaussian_B7_x_i_valid_succ_bitsignaltemp = gaussian_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B7")
    ) thegaussian_B7_x (
        .i_capture(gaussian_B7_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B7_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B7_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_gaussian_o_fifoalmost_full(GPOUT,100)
    assign out_iord_bl_call_gaussian_o_fifoalmost_full = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;

    // out_iord_bl_call_gaussian_o_fifoready(GPOUT,101)
    assign out_iord_bl_call_gaussian_o_fifoready = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;

    // out_iowr_bl_return_gaussian_o_fifodata(GPOUT,102)
    assign out_iowr_bl_return_gaussian_o_fifodata = bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifodata;

    // out_iowr_bl_return_gaussian_o_fifovalid(GPOUT,103)
    assign out_iowr_bl_return_gaussian_o_fifovalid = bb_gaussian_B3_out_iowr_bl_return_gaussian_o_fifovalid;

    // out_lm1_gaussian_avm_address(GPOUT,104)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B7_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,105)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B7_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,106)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B7_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,107)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B7_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,108)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B7_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,109)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B7_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,110)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B7_out_lm1_gaussian_avm_writedata;

    // out_lm62_gaussian_avm_address(GPOUT,111)
    assign out_lm62_gaussian_avm_address = bb_gaussian_B7_out_lm62_gaussian_avm_address;

    // out_lm62_gaussian_avm_burstcount(GPOUT,112)
    assign out_lm62_gaussian_avm_burstcount = bb_gaussian_B7_out_lm62_gaussian_avm_burstcount;

    // out_lm62_gaussian_avm_byteenable(GPOUT,113)
    assign out_lm62_gaussian_avm_byteenable = bb_gaussian_B7_out_lm62_gaussian_avm_byteenable;

    // out_lm62_gaussian_avm_enable(GPOUT,114)
    assign out_lm62_gaussian_avm_enable = bb_gaussian_B7_out_lm62_gaussian_avm_enable;

    // out_lm62_gaussian_avm_read(GPOUT,115)
    assign out_lm62_gaussian_avm_read = bb_gaussian_B7_out_lm62_gaussian_avm_read;

    // out_lm62_gaussian_avm_write(GPOUT,116)
    assign out_lm62_gaussian_avm_write = bb_gaussian_B7_out_lm62_gaussian_avm_write;

    // out_lm62_gaussian_avm_writedata(GPOUT,117)
    assign out_lm62_gaussian_avm_writedata = bb_gaussian_B7_out_lm62_gaussian_avm_writedata;

    // out_lm83_gaussian_avm_address(GPOUT,118)
    assign out_lm83_gaussian_avm_address = bb_gaussian_B7_out_lm83_gaussian_avm_address;

    // out_lm83_gaussian_avm_burstcount(GPOUT,119)
    assign out_lm83_gaussian_avm_burstcount = bb_gaussian_B7_out_lm83_gaussian_avm_burstcount;

    // out_lm83_gaussian_avm_byteenable(GPOUT,120)
    assign out_lm83_gaussian_avm_byteenable = bb_gaussian_B7_out_lm83_gaussian_avm_byteenable;

    // out_lm83_gaussian_avm_enable(GPOUT,121)
    assign out_lm83_gaussian_avm_enable = bb_gaussian_B7_out_lm83_gaussian_avm_enable;

    // out_lm83_gaussian_avm_read(GPOUT,122)
    assign out_lm83_gaussian_avm_read = bb_gaussian_B7_out_lm83_gaussian_avm_read;

    // out_lm83_gaussian_avm_write(GPOUT,123)
    assign out_lm83_gaussian_avm_write = bb_gaussian_B7_out_lm83_gaussian_avm_write;

    // out_lm83_gaussian_avm_writedata(GPOUT,124)
    assign out_lm83_gaussian_avm_writedata = bb_gaussian_B7_out_lm83_gaussian_avm_writedata;

    // out_memdep_gaussian_avm_address(GPOUT,125)
    assign out_memdep_gaussian_avm_address = bb_gaussian_B7_out_memdep_gaussian_avm_address;

    // out_memdep_gaussian_avm_burstcount(GPOUT,126)
    assign out_memdep_gaussian_avm_burstcount = bb_gaussian_B7_out_memdep_gaussian_avm_burstcount;

    // out_memdep_gaussian_avm_byteenable(GPOUT,127)
    assign out_memdep_gaussian_avm_byteenable = bb_gaussian_B7_out_memdep_gaussian_avm_byteenable;

    // out_memdep_gaussian_avm_enable(GPOUT,128)
    assign out_memdep_gaussian_avm_enable = bb_gaussian_B7_out_memdep_gaussian_avm_enable;

    // out_memdep_gaussian_avm_read(GPOUT,129)
    assign out_memdep_gaussian_avm_read = bb_gaussian_B7_out_memdep_gaussian_avm_read;

    // out_memdep_gaussian_avm_write(GPOUT,130)
    assign out_memdep_gaussian_avm_write = bb_gaussian_B7_out_memdep_gaussian_avm_write;

    // out_memdep_gaussian_avm_writedata(GPOUT,131)
    assign out_memdep_gaussian_avm_writedata = bb_gaussian_B7_out_memdep_gaussian_avm_writedata;

    // bb_gaussian_B0_runOnce(BLACKBOX,2)
    gaussian_bb_B0_runOnce thebb_gaussian_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_gaussian_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,132)
    assign out_stall_out = bb_gaussian_B0_runOnce_out_stall_out_0;

    // out_valid_out(GPOUT,133)
    assign out_valid_out = GND_q;

endmodule
