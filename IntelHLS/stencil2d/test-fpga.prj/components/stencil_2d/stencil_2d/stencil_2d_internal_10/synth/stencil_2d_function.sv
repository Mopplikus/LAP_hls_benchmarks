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

// SystemVerilog created from stencil_2d_function
// Created for function/kernel stencil_2d
// SystemVerilog created on Fri Apr  7 16:44:44 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module stencil_2d_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifodata,
    input wire [0:0] in_iord_bl_call_stencil_2d_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_stencil_2d_i_fifoready,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_stencil_2d4_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d4_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d5_stencil_2d_avm_writeack,
    input wire [31:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdata,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest,
    input wire [0:0] in_unnamed_stencil_2d6_stencil_2d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_stencil_2d_o_fifoready,
    output wire [31:0] out_iowr_bl_return_stencil_2d_o_fifodata,
    output wire [0:0] out_iowr_bl_return_stencil_2d_o_fifovalid,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_stencil_2d4_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d4_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d4_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d4_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d5_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d5_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d5_stencil_2d_avm_writedata,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_address,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_burstcount,
    output wire [3:0] out_unnamed_stencil_2d6_stencil_2d_avm_byteenable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_enable,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_read,
    output wire [0:0] out_unnamed_stencil_2d6_stencil_2d_avm_write,
    output wire [31:0] out_unnamed_stencil_2d6_stencil_2d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_stencil_2d_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B1_start_out_feedback_stall_out_1;
    wire [0:0] bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full;
    wire [0:0] bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready;
    wire [0:0] bb_stencil_2d_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B1_start_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B1_start_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B2_out_c0_exe1111;
    wire [31:0] bb_stencil_2d_B2_out_c0_exe2;
    wire [0:0] bb_stencil_2d_B2_out_c0_exe4;
    wire [0:0] bb_stencil_2d_B2_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B2_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B2_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B2_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B2_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B2_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B2_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B2_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B3_out_feedback_out_1;
    wire [0:0] bb_stencil_2d_B3_out_feedback_valid_out_1;
    wire [31:0] bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifodata;
    wire [0:0] bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifovalid;
    wire [0:0] bb_stencil_2d_B3_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B3_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B3_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe2121;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe3122;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe4123;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe5;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe6;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe7;
    wire [31:0] bb_stencil_2d_B4_out_c0_exe8;
    wire [0:0] bb_stencil_2d_B4_out_c0_exe9;
    wire [0:0] bb_stencil_2d_B4_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B4_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B4_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B4_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B4_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B4_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B4_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B4_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B5_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B5_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B5_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe10;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe11;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe1143;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe12;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe13;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe14;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe15;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe16;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe17;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe18;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe2144;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe3145;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe4146;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe5147;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe6148;
    wire [31:0] bb_stencil_2d_B6_out_c0_exe7149;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe8150;
    wire [0:0] bb_stencil_2d_B6_out_c0_exe9151;
    wire [0:0] bb_stencil_2d_B6_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B6_out_exiting_valid_out;
    wire [0:0] bb_stencil_2d_B6_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B6_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B6_out_stall_out_1;
    wire [0:0] bb_stencil_2d_B6_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B6_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B6_out_valid_out_0;
    wire [0:0] bb_stencil_2d_B7_out_c0_exe51926;
    wire [0:0] bb_stencil_2d_B7_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B7_out_stall_out_0;
    wire [31:0] bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B7_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe21892;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe41914;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe51927;
    wire [0:0] bb_stencil_2d_B8_out_c0_exe61939;
    wire [31:0] bb_stencil_2d_B8_out_c0_exe719411;
    wire [0:0] bb_stencil_2d_B8_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B8_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B8_out_valid_out_0;
    wire [31:0] bb_stencil_2d_B9_out_c0_exe2189;
    wire [31:0] bb_stencil_2d_B9_out_c0_exe4191;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe5192;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe6193;
    wire [31:0] bb_stencil_2d_B9_out_c0_exe7194;
    wire [0:0] bb_stencil_2d_B9_out_c0_exe8195;
    wire [0:0] bb_stencil_2d_B9_out_exiting_stall_out;
    wire [0:0] bb_stencil_2d_B9_out_exiting_valid_out;
    wire [31:0] bb_stencil_2d_B9_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_stencil_2d_B9_out_pipeline_valid_out;
    wire [0:0] bb_stencil_2d_B9_out_stall_in_0;
    wire [0:0] bb_stencil_2d_B9_out_stall_out_0;
    wire [0:0] bb_stencil_2d_B9_out_stall_out_1;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_address;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;
    wire [3:0] bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_enable;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_read;
    wire [0:0] bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_write;
    wire [31:0] bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;
    wire [0:0] bb_stencil_2d_B9_out_valid_in_0;
    wire [0:0] bb_stencil_2d_B9_out_valid_in_1;
    wire [0:0] bb_stencil_2d_B9_out_valid_out_0;
    wire [1:0] c_i2_090_q;
    wire [31:0] c_i32_undef10_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_stencil_2d0_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d0_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d1_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d1_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d2_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d2_out_o_valid;
    wire [0:0] loop_limiter_stencil_2d3_out_o_stall;
    wire [0:0] loop_limiter_stencil_2d3_out_o_valid;
    wire [0:0] stencil_2d_B1_start_x_i_capture;
    wire stencil_2d_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_clear;
    wire stencil_2d_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_enable;
    wire stencil_2d_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_shift;
    wire stencil_2d_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_stall_pred;
    wire stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_stall_succ;
    wire stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_loop;
    wire stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_pred;
    wire stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B1_start_x_i_valid_succ;
    wire stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_capture;
    wire stencil_2d_B2_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_clear;
    wire stencil_2d_B2_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_enable;
    wire stencil_2d_B2_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_shift;
    wire stencil_2d_B2_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_stall_pred;
    wire stencil_2d_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_stall_succ;
    wire stencil_2d_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_valid_loop;
    wire stencil_2d_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_valid_pred;
    wire stencil_2d_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B2_x_i_valid_succ;
    wire stencil_2d_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_capture;
    wire stencil_2d_B4_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_clear;
    wire stencil_2d_B4_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_enable;
    wire stencil_2d_B4_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_shift;
    wire stencil_2d_B4_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_stall_pred;
    wire stencil_2d_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_stall_succ;
    wire stencil_2d_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_valid_loop;
    wire stencil_2d_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_valid_pred;
    wire stencil_2d_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B4_x_i_valid_succ;
    wire stencil_2d_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_capture;
    wire stencil_2d_B6_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_clear;
    wire stencil_2d_B6_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_enable;
    wire stencil_2d_B6_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_shift;
    wire stencil_2d_B6_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_stall_pred;
    wire stencil_2d_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_stall_succ;
    wire stencil_2d_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_loop;
    wire stencil_2d_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_pred;
    wire stencil_2d_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B6_x_i_valid_succ;
    wire stencil_2d_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_capture;
    wire stencil_2d_B9_x_i_capture_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_clear;
    wire stencil_2d_B9_x_i_clear_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_enable;
    wire stencil_2d_B9_x_i_enable_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_shift;
    wire stencil_2d_B9_x_i_shift_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_stall_pred;
    wire stencil_2d_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_stall_succ;
    wire stencil_2d_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_valid_loop;
    wire stencil_2d_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_valid_pred;
    wire stencil_2d_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] stencil_2d_B9_x_i_valid_succ;
    wire stencil_2d_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_stencil_2d_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_18_tpl;


    // c_i2_090(CONSTANT,54)
    assign c_i2_090_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo(BLACKBOX,84)
    stencil_2d_i_llvm_fpga_pipeline_keep_going30_1_valid_fifo thei_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_stencil_2d_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo(BLACKBOX,82)
    stencil_2d_i_llvm_fpga_pipeline_keep_going26_2_valid_fifo thei_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_stencil_2d_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo(BLACKBOX,80)
    stencil_2d_i_llvm_fpga_pipeline_keep_going21_2_valid_fifo thei_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_stencil_2d_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo(BLACKBOX,78)
    stencil_2d_i_llvm_fpga_pipeline_keep_going16_2_valid_fifo thei_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_stencil_2d_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo(BLACKBOX,86)
    stencil_2d_i_llvm_fpga_pipeline_keep_going_8_valid_fifo thei_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo (
        .in_data_in(c_i2_090_q),
        .in_stall_in(bb_stencil_2d_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B3_sr_0_aunroll_x(BLACKBOX,144)
    stencil_2d_bb_B3_sr_0 thebb_stencil_2d_B3_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B3_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B5_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B5(BLACKBOX,7)
    stencil_2d_bb_B5 thebb_stencil_2d_B5 (
        .in_c0_exe51925_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_stencil_2d_B5_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B5_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B5_sr_0_aunroll_x(BLACKBOX,146)
    stencil_2d_bb_B5_sr_0 thebb_stencil_2d_B5_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B5_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_stencil_2d_B7_out_c0_exe51926),
        .out_o_stall(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7(BLACKBOX,9)
    stencil_2d_bb_B7 thebb_stencil_2d_B7 (
        .in_c0_exe21891_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe41913_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51926_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61938_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe719410_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_stall_in_0(bb_stencil_2d_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdata(in_unnamed_stencil_2d4_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d4_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d4_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d4_stencil_2d_avm_writeack(in_unnamed_stencil_2d4_stencil_2d_avm_writeack),
        .in_valid_in_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe51926(bb_stencil_2d_B7_out_c0_exe51926),
        .out_stall_in_0(bb_stencil_2d_B7_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B7_out_stall_out_0),
        .out_unnamed_stencil_2d4_stencil_2d_avm_address(bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_address),
        .out_unnamed_stencil_2d4_stencil_2d_avm_burstcount(bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d4_stencil_2d_avm_byteenable(bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_enable(bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d4_stencil_2d_avm_read(bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_read),
        .out_unnamed_stencil_2d4_stencil_2d_avm_write(bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_write),
        .out_unnamed_stencil_2d4_stencil_2d_avm_writedata(bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_writedata),
        .out_valid_out_0(bb_stencil_2d_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B7_sr_0_aunroll_x(BLACKBOX,148)
    stencil_2d_bb_B7_sr_0 thebb_stencil_2d_B7_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B7_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_stencil_2d_B8_out_c0_exe21892),
        .in_i_data_1_tpl(bb_stencil_2d_B8_out_c0_exe41914),
        .in_i_data_2_tpl(bb_stencil_2d_B8_out_c0_exe51927),
        .in_i_data_3_tpl(bb_stencil_2d_B8_out_c0_exe61939),
        .in_i_data_4_tpl(bb_stencil_2d_B8_out_c0_exe719411),
        .out_o_stall(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B8(BLACKBOX,10)
    stencil_2d_bb_B8 thebb_stencil_2d_B8 (
        .in_c0_exe21892_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe41914_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51927_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61939_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe719411_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe819512_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(bb_stencil_2d_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe21892(bb_stencil_2d_B8_out_c0_exe21892),
        .out_c0_exe41914(bb_stencil_2d_B8_out_c0_exe41914),
        .out_c0_exe51927(bb_stencil_2d_B8_out_c0_exe51927),
        .out_c0_exe61939(bb_stencil_2d_B8_out_c0_exe61939),
        .out_c0_exe719411(bb_stencil_2d_B8_out_c0_exe719411),
        .out_stall_in_0(bb_stencil_2d_B8_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B8_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B8_sr_0_aunroll_x(BLACKBOX,149)
    stencil_2d_bb_B8_sr_0 thebb_stencil_2d_B8_sr_0_aunroll_x (
        .in_i_stall(bb_stencil_2d_B8_out_stall_out_0),
        .in_i_valid(bb_stencil_2d_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_stencil_2d_B9_out_c0_exe2189),
        .in_i_data_1_tpl(bb_stencil_2d_B9_out_c0_exe4191),
        .in_i_data_2_tpl(bb_stencil_2d_B9_out_c0_exe5192),
        .in_i_data_3_tpl(bb_stencil_2d_B9_out_c0_exe6193),
        .in_i_data_4_tpl(bb_stencil_2d_B9_out_c0_exe7194),
        .in_i_data_5_tpl(bb_stencil_2d_B9_out_c0_exe8195),
        .out_o_stall(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr(BLACKBOX,85)
    stencil_2d_i_llvm_fpga_pipeline_keep_going_8_sr thei_llvm_fpga_pipeline_keep_going_stencil_2d8_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B9(BLACKBOX,11)
    stencil_2d_bb_B9 thebb_stencil_2d_B9 (
        .in_c_025_pop1547_pop2589_0(c_i32_undef10_q),
        .in_c_025_pop1547_pop2589_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_c_025_pop1576_0(c_i32_undef10_q),
        .in_c_025_pop1576_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_dot_prod_add90_0(c_i32_undef10_q),
        .in_dot_prod_add90_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_exitcond391_0(GND_q),
        .in_exitcond391_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_flush(in_start),
        .in_forked3286_0(GND_q),
        .in_forked3286_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul16_add1187_0(c_i32_undef10_q),
        .in_mul16_add1187_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_mul2839_pop1782_0(c_i32_undef10_q),
        .in_mul2839_pop1782_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul2840_pop2293_0(c_i32_undef10_q),
        .in_mul2840_pop2293_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_mul2864_0(c_i32_undef10_q),
        .in_mul2864_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp1492_0(GND_q),
        .in_notcmp1492_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_notcmp1945_pop2495_0(GND_q),
        .in_notcmp1945_pop2495_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_notcmp1973_0(GND_q),
        .in_notcmp1973_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp2442_pop1885_0(GND_q),
        .in_notcmp2442_pop1885_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp2443_pop2394_0(GND_q),
        .in_notcmp2443_pop2394_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_notcmp2469_0(GND_q),
        .in_notcmp2469_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_stencil_2d8_sr_out_o_stall),
        .in_r_026_pop1336_pop1679_0(c_i32_undef10_q),
        .in_r_026_pop1336_pop1679_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_r_026_pop1337_pop2188_0(c_i32_undef10_q),
        .in_r_026_pop1337_pop2188_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_r_026_pop1359_0(c_i32_undef10_q),
        .in_r_026_pop1359_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_stencil_2d_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdata(in_unnamed_stencil_2d5_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d5_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d5_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d5_stencil_2d_avm_writeack(in_unnamed_stencil_2d5_stencil_2d_avm_writeack),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdata(in_unnamed_stencil_2d6_stencil_2d_avm_readdata),
        .in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid(in_unnamed_stencil_2d6_stencil_2d_avm_readdatavalid),
        .in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest(in_unnamed_stencil_2d6_stencil_2d_avm_waitrequest),
        .in_unnamed_stencil_2d6_stencil_2d_avm_writeack(in_unnamed_stencil_2d6_stencil_2d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_stencil_2d8_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2189(bb_stencil_2d_B9_out_c0_exe2189),
        .out_c0_exe4191(bb_stencil_2d_B9_out_c0_exe4191),
        .out_c0_exe5192(bb_stencil_2d_B9_out_c0_exe5192),
        .out_c0_exe6193(bb_stencil_2d_B9_out_c0_exe6193),
        .out_c0_exe7194(bb_stencil_2d_B9_out_c0_exe7194),
        .out_c0_exe8195(bb_stencil_2d_B9_out_c0_exe8195),
        .out_exiting_stall_out(bb_stencil_2d_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B9_out_exiting_valid_out),
        .out_intel_reserved_ffwd_0_0(bb_stencil_2d_B9_out_intel_reserved_ffwd_0_0),
        .out_pipeline_valid_out(bb_stencil_2d_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_stencil_2d_B9_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B9_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B9_out_stall_out_1),
        .out_unnamed_stencil_2d5_stencil_2d_avm_address(bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_address),
        .out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_enable(bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d5_stencil_2d_avm_read(bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_read),
        .out_unnamed_stencil_2d5_stencil_2d_avm_write(bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_write),
        .out_unnamed_stencil_2d5_stencil_2d_avm_writedata(bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_writedata),
        .out_unnamed_stencil_2d6_stencil_2d_avm_address(bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_address),
        .out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount),
        .out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_enable(bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_enable),
        .out_unnamed_stencil_2d6_stencil_2d_avm_read(bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_read),
        .out_unnamed_stencil_2d6_stencil_2d_avm_write(bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_write),
        .out_unnamed_stencil_2d6_stencil_2d_avm_writedata(bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_writedata),
        .out_valid_in_0(bb_stencil_2d_B9_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B9_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // bb_stencil_2d_B9_sr_1_aunroll_x(BLACKBOX,150)
    stencil_2d_bb_B9_sr_1 thebb_stencil_2d_B9_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B6_out_c0_exe11),
        .in_i_data_2_tpl(bb_stencil_2d_B6_out_c0_exe12),
        .in_i_data_3_tpl(bb_stencil_2d_B6_out_c0_exe13),
        .in_i_data_4_tpl(bb_stencil_2d_B6_out_c0_exe14),
        .in_i_data_5_tpl(bb_stencil_2d_B6_out_c0_exe15),
        .in_i_data_6_tpl(bb_stencil_2d_B6_out_c0_exe16),
        .in_i_data_7_tpl(bb_stencil_2d_B6_out_c0_exe17),
        .in_i_data_8_tpl(bb_stencil_2d_B6_out_c0_exe18),
        .in_i_data_9_tpl(bb_stencil_2d_B6_out_c0_exe10),
        .in_i_data_10_tpl(bb_stencil_2d_B6_out_c0_exe1143),
        .in_i_data_11_tpl(bb_stencil_2d_B6_out_c0_exe2144),
        .in_i_data_12_tpl(bb_stencil_2d_B6_out_c0_exe3145),
        .in_i_data_13_tpl(bb_stencil_2d_B6_out_c0_exe4146),
        .in_i_data_14_tpl(bb_stencil_2d_B6_out_c0_exe5147),
        .in_i_data_15_tpl(bb_stencil_2d_B6_out_c0_exe6148),
        .in_i_data_16_tpl(bb_stencil_2d_B6_out_c0_exe7149),
        .in_i_data_17_tpl(bb_stencil_2d_B6_out_c0_exe8150),
        .in_i_data_18_tpl(bb_stencil_2d_B6_out_c0_exe9151),
        .out_o_stall(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_data_18_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d3(BLACKBOX,110)
    stencil_2d_loop_limiter_3 theloop_limiter_stencil_2d3 (
        .in_i_stall(bb_stencil_2d_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B9_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B6_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d3_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr(BLACKBOX,77)
    stencil_2d_i_llvm_fpga_pipeline_keep_going16_2_sr thei_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6(BLACKBOX,8)
    stencil_2d_bb_B6 thebb_stencil_2d_B6 (
        .in_c_025_pop1574_0(c_i32_undef10_q),
        .in_c_025_pop1574_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_forked32_0(GND_q),
        .in_forked32_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul2839_pop1780_0(c_i32_undef10_q),
        .in_mul2839_pop1780_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_mul2865_0(c_i32_undef10_q),
        .in_mul2865_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp1971_0(GND_q),
        .in_notcmp1971_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp2442_pop1883_0(GND_q),
        .in_notcmp2442_pop1883_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp2470_0(GND_q),
        .in_notcmp2470_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_sr_out_o_stall),
        .in_r_026_pop1336_pop1677_0(c_i32_undef10_q),
        .in_r_026_pop1336_pop1677_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_r_026_pop1360_0(c_i32_undef10_q),
        .in_r_026_pop1360_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_stencil_2d3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going16_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_stencil_2d_B6_out_c0_exe10),
        .out_c0_exe11(bb_stencil_2d_B6_out_c0_exe11),
        .out_c0_exe1143(bb_stencil_2d_B6_out_c0_exe1143),
        .out_c0_exe12(bb_stencil_2d_B6_out_c0_exe12),
        .out_c0_exe13(bb_stencil_2d_B6_out_c0_exe13),
        .out_c0_exe14(bb_stencil_2d_B6_out_c0_exe14),
        .out_c0_exe15(bb_stencil_2d_B6_out_c0_exe15),
        .out_c0_exe16(bb_stencil_2d_B6_out_c0_exe16),
        .out_c0_exe17(bb_stencil_2d_B6_out_c0_exe17),
        .out_c0_exe18(bb_stencil_2d_B6_out_c0_exe18),
        .out_c0_exe2144(bb_stencil_2d_B6_out_c0_exe2144),
        .out_c0_exe3145(bb_stencil_2d_B6_out_c0_exe3145),
        .out_c0_exe4146(bb_stencil_2d_B6_out_c0_exe4146),
        .out_c0_exe5147(bb_stencil_2d_B6_out_c0_exe5147),
        .out_c0_exe6148(bb_stencil_2d_B6_out_c0_exe6148),
        .out_c0_exe7149(bb_stencil_2d_B6_out_c0_exe7149),
        .out_c0_exe8150(bb_stencil_2d_B6_out_c0_exe8150),
        .out_c0_exe9151(bb_stencil_2d_B6_out_c0_exe9151),
        .out_exiting_stall_out(bb_stencil_2d_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B6_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B6_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B6_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B6_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B6_sr_1_aunroll_x(BLACKBOX,147)
    stencil_2d_bb_B6_sr_1 thebb_stencil_2d_B6_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B4_out_c0_exe7),
        .in_i_data_2_tpl(bb_stencil_2d_B4_out_c0_exe8),
        .in_i_data_3_tpl(bb_stencil_2d_B4_out_c0_exe9),
        .in_i_data_4_tpl(bb_stencil_2d_B4_out_c0_exe2121),
        .in_i_data_5_tpl(bb_stencil_2d_B4_out_c0_exe3122),
        .in_i_data_6_tpl(bb_stencil_2d_B4_out_c0_exe4123),
        .in_i_data_7_tpl(bb_stencil_2d_B4_out_c0_exe5),
        .in_i_data_8_tpl(bb_stencil_2d_B4_out_c0_exe6),
        .out_o_stall(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d2(BLACKBOX,109)
    stencil_2d_loop_limiter_2 theloop_limiter_stencil_2d2 (
        .in_i_stall(bb_stencil_2d_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B6_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B4_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d2_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr(BLACKBOX,79)
    stencil_2d_i_llvm_fpga_pipeline_keep_going21_2_sr thei_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef10(CONSTANT,59)
    assign c_i32_undef10_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_stencil_2d_B4(BLACKBOX,6)
    stencil_2d_bb_B4 thebb_stencil_2d_B4 (
        .in_forked35_0(GND_q),
        .in_forked35_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_mul2861_0(c_i32_undef10_q),
        .in_mul2861_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp2466_0(GND_q),
        .in_notcmp2466_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_sr_out_o_stall),
        .in_r_026_pop1356_0(c_i32_undef10_q),
        .in_r_026_pop1356_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_stencil_2d2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going21_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2121(bb_stencil_2d_B4_out_c0_exe2121),
        .out_c0_exe3122(bb_stencil_2d_B4_out_c0_exe3122),
        .out_c0_exe4123(bb_stencil_2d_B4_out_c0_exe4123),
        .out_c0_exe5(bb_stencil_2d_B4_out_c0_exe5),
        .out_c0_exe6(bb_stencil_2d_B4_out_c0_exe6),
        .out_c0_exe7(bb_stencil_2d_B4_out_c0_exe7),
        .out_c0_exe8(bb_stencil_2d_B4_out_c0_exe8),
        .out_c0_exe9(bb_stencil_2d_B4_out_c0_exe9),
        .out_exiting_stall_out(bb_stencil_2d_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B4_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B4_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B4_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B4_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B4_sr_1_aunroll_x(BLACKBOX,145)
    stencil_2d_bb_B4_sr_1 thebb_stencil_2d_B4_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_stencil_2d_B2_out_c0_exe1111),
        .in_i_data_2_tpl(bb_stencil_2d_B2_out_c0_exe2),
        .in_i_data_3_tpl(bb_stencil_2d_B2_out_c0_exe4),
        .out_o_stall(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d1(BLACKBOX,108)
    stencil_2d_loop_limiter_1 theloop_limiter_stencil_2d1 (
        .in_i_stall(bb_stencil_2d_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B4_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B2_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d1_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr(BLACKBOX,81)
    stencil_2d_i_llvm_fpga_pipeline_keep_going26_2_sr thei_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_stencil_2d_B2(BLACKBOX,4)
    stencil_2d_bb_B2 thebb_stencil_2d_B2 (
        .in_forked34_0(GND_q),
        .in_forked34_1(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_stencil_2d1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going26_stencil_2d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1111(bb_stencil_2d_B2_out_c0_exe1111),
        .out_c0_exe2(bb_stencil_2d_B2_out_c0_exe2),
        .out_c0_exe4(bb_stencil_2d_B2_out_c0_exe4),
        .out_exiting_stall_out(bb_stencil_2d_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_stencil_2d_B2_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_stencil_2d_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B2_out_stall_out_0),
        .out_stall_out_1(bb_stencil_2d_B2_out_stall_out_1),
        .out_valid_in_0(bb_stencil_2d_B2_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B2_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B2_sr_1_aunroll_x(BLACKBOX,143)
    stencil_2d_bb_B2_sr_1 thebb_stencil_2d_B2_sr_1_aunroll_x (
        .in_i_stall(bb_stencil_2d_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_stencil_2d0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_stencil_2d0(BLACKBOX,107)
    stencil_2d_loop_limiter_0 theloop_limiter_stencil_2d0 (
        .in_i_stall(bb_stencil_2d_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_stencil_2d_B2_out_exiting_stall_out),
        .in_i_valid(bb_stencil_2d_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_stencil_2d_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_stencil_2d0_out_o_stall),
        .out_o_valid(loop_limiter_stencil_2d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr(BLACKBOX,83)
    stencil_2d_i_llvm_fpga_pipeline_keep_going30_1_sr thei_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo_out_stall_out),
        .in_i_valid(bb_stencil_2d_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B3(BLACKBOX,5)
    stencil_2d_bb_B3 thebb_stencil_2d_B3 (
        .in_feedback_stall_in_1(bb_stencil_2d_B1_start_out_feedback_stall_out_1),
        .in_intel_reserved_ffwd_0_0(bb_stencil_2d_B9_out_intel_reserved_ffwd_0_0),
        .in_iowr_bl_return_stencil_2d_i_fifoready(in_iowr_bl_return_stencil_2d_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_stencil_2d_B3_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_stencil_2d_B3_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_stencil_2d_B3_out_feedback_valid_out_1),
        .out_iowr_bl_return_stencil_2d_o_fifodata(bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifodata),
        .out_iowr_bl_return_stencil_2d_o_fifovalid(bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifovalid),
        .out_stall_in_0(bb_stencil_2d_B3_out_stall_in_0),
        .out_stall_out_0(bb_stencil_2d_B3_out_stall_out_0),
        .out_valid_out_0(bb_stencil_2d_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_stencil_2d_B1_start(BLACKBOX,3)
    stencil_2d_bb_B1_start thebb_stencil_2d_B1_start (
        .in_feedback_in_1(bb_stencil_2d_B3_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_stencil_2d_B3_out_feedback_valid_out_1),
        .in_iord_bl_call_stencil_2d_i_fifodata(in_iord_bl_call_stencil_2d_i_fifodata),
        .in_iord_bl_call_stencil_2d_i_fifovalid(in_iord_bl_call_stencil_2d_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_stencil_2d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going30_stencil_2d1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_stencil_2d_B1_start_out_feedback_stall_out_1),
        .out_iord_bl_call_stencil_2d_o_fifoalmost_full(bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full),
        .out_iord_bl_call_stencil_2d_o_fifoready(bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready),
        .out_pipeline_valid_out(bb_stencil_2d_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_stencil_2d_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_stencil_2d_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_stencil_2d_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_stencil_2d_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_stencil_2d_o_fifoalmost_full(GPOUT,111)
    assign out_iord_bl_call_stencil_2d_o_fifoalmost_full = bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoalmost_full;

    // out_iord_bl_call_stencil_2d_o_fifoready(GPOUT,112)
    assign out_iord_bl_call_stencil_2d_o_fifoready = bb_stencil_2d_B1_start_out_iord_bl_call_stencil_2d_o_fifoready;

    // out_iowr_bl_return_stencil_2d_o_fifodata(GPOUT,113)
    assign out_iowr_bl_return_stencil_2d_o_fifodata = bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifodata;

    // out_iowr_bl_return_stencil_2d_o_fifovalid(GPOUT,114)
    assign out_iowr_bl_return_stencil_2d_o_fifovalid = bb_stencil_2d_B3_out_iowr_bl_return_stencil_2d_o_fifovalid;

    // bb_stencil_2d_B0_runOnce(BLACKBOX,2)
    stencil_2d_bb_B0_runOnce thebb_stencil_2d_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_stencil_2d_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,115)
    assign out_stall_out = bb_stencil_2d_B0_runOnce_out_stall_out_0;

    // out_unnamed_stencil_2d4_stencil_2d_avm_address(GPOUT,116)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_address = bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_address;

    // out_unnamed_stencil_2d4_stencil_2d_avm_burstcount(GPOUT,117)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_burstcount = bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d4_stencil_2d_avm_byteenable(GPOUT,118)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_byteenable = bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d4_stencil_2d_avm_enable(GPOUT,119)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_enable = bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d4_stencil_2d_avm_read(GPOUT,120)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_read = bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_read;

    // out_unnamed_stencil_2d4_stencil_2d_avm_write(GPOUT,121)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_write = bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_write;

    // out_unnamed_stencil_2d4_stencil_2d_avm_writedata(GPOUT,122)
    assign out_unnamed_stencil_2d4_stencil_2d_avm_writedata = bb_stencil_2d_B7_out_unnamed_stencil_2d4_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d5_stencil_2d_avm_address(GPOUT,123)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_address = bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_address;

    // out_unnamed_stencil_2d5_stencil_2d_avm_burstcount(GPOUT,124)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_burstcount = bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d5_stencil_2d_avm_byteenable(GPOUT,125)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_byteenable = bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_enable(GPOUT,126)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_enable = bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d5_stencil_2d_avm_read(GPOUT,127)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_read = bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_read;

    // out_unnamed_stencil_2d5_stencil_2d_avm_write(GPOUT,128)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_write = bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_write;

    // out_unnamed_stencil_2d5_stencil_2d_avm_writedata(GPOUT,129)
    assign out_unnamed_stencil_2d5_stencil_2d_avm_writedata = bb_stencil_2d_B9_out_unnamed_stencil_2d5_stencil_2d_avm_writedata;

    // out_unnamed_stencil_2d6_stencil_2d_avm_address(GPOUT,130)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_address = bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_address;

    // out_unnamed_stencil_2d6_stencil_2d_avm_burstcount(GPOUT,131)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_burstcount = bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_burstcount;

    // out_unnamed_stencil_2d6_stencil_2d_avm_byteenable(GPOUT,132)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_byteenable = bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_byteenable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_enable(GPOUT,133)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_enable = bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_enable;

    // out_unnamed_stencil_2d6_stencil_2d_avm_read(GPOUT,134)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_read = bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_read;

    // out_unnamed_stencil_2d6_stencil_2d_avm_write(GPOUT,135)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_write = bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_write;

    // out_unnamed_stencil_2d6_stencil_2d_avm_writedata(GPOUT,136)
    assign out_unnamed_stencil_2d6_stencil_2d_avm_writedata = bb_stencil_2d_B9_out_unnamed_stencil_2d6_stencil_2d_avm_writedata;

    // out_valid_out(GPOUT,137)
    assign out_valid_out = GND_q;

    // stencil_2d_B1_start_x(EXTIFACE,138)
    assign stencil_2d_B1_start_x_i_capture = GND_q;
    assign stencil_2d_B1_start_x_i_clear = GND_q;
    assign stencil_2d_B1_start_x_i_enable = VCC_q;
    assign stencil_2d_B1_start_x_i_shift = GND_q;
    assign stencil_2d_B1_start_x_i_stall_pred = GND_q;
    assign stencil_2d_B1_start_x_i_stall_succ = bb_stencil_2d_B3_out_stall_in_0;
    assign stencil_2d_B1_start_x_i_valid_loop = bb_stencil_2d_B1_start_out_valid_in_0;
    assign stencil_2d_B1_start_x_i_valid_pred = bb_stencil_2d_B1_start_out_valid_in_1;
    assign stencil_2d_B1_start_x_i_valid_succ = bb_stencil_2d_B3_out_valid_out_0;
    assign stencil_2d_B1_start_x_i_capture_bitsignaltemp = stencil_2d_B1_start_x_i_capture[0];
    assign stencil_2d_B1_start_x_i_clear_bitsignaltemp = stencil_2d_B1_start_x_i_clear[0];
    assign stencil_2d_B1_start_x_i_enable_bitsignaltemp = stencil_2d_B1_start_x_i_enable[0];
    assign stencil_2d_B1_start_x_i_shift_bitsignaltemp = stencil_2d_B1_start_x_i_shift[0];
    assign stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp = stencil_2d_B1_start_x_i_stall_pred[0];
    assign stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp = stencil_2d_B1_start_x_i_stall_succ[0];
    assign stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp = stencil_2d_B1_start_x_i_valid_loop[0];
    assign stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp = stencil_2d_B1_start_x_i_valid_pred[0];
    assign stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp = stencil_2d_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B1.start")
    ) thestencil_2d_B1_start_x (
        .i_capture(stencil_2d_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B2_x(EXTIFACE,139)
    assign stencil_2d_B2_x_i_capture = GND_q;
    assign stencil_2d_B2_x_i_clear = GND_q;
    assign stencil_2d_B2_x_i_enable = VCC_q;
    assign stencil_2d_B2_x_i_shift = GND_q;
    assign stencil_2d_B2_x_i_stall_pred = loop_limiter_stencil_2d0_out_o_stall;
    assign stencil_2d_B2_x_i_stall_succ = bb_stencil_2d_B5_out_stall_in_0;
    assign stencil_2d_B2_x_i_valid_loop = bb_stencil_2d_B2_out_valid_in_0;
    assign stencil_2d_B2_x_i_valid_pred = bb_stencil_2d_B2_out_valid_in_1;
    assign stencil_2d_B2_x_i_valid_succ = bb_stencil_2d_B5_out_valid_out_0;
    assign stencil_2d_B2_x_i_capture_bitsignaltemp = stencil_2d_B2_x_i_capture[0];
    assign stencil_2d_B2_x_i_clear_bitsignaltemp = stencil_2d_B2_x_i_clear[0];
    assign stencil_2d_B2_x_i_enable_bitsignaltemp = stencil_2d_B2_x_i_enable[0];
    assign stencil_2d_B2_x_i_shift_bitsignaltemp = stencil_2d_B2_x_i_shift[0];
    assign stencil_2d_B2_x_i_stall_pred_bitsignaltemp = stencil_2d_B2_x_i_stall_pred[0];
    assign stencil_2d_B2_x_i_stall_succ_bitsignaltemp = stencil_2d_B2_x_i_stall_succ[0];
    assign stencil_2d_B2_x_i_valid_loop_bitsignaltemp = stencil_2d_B2_x_i_valid_loop[0];
    assign stencil_2d_B2_x_i_valid_pred_bitsignaltemp = stencil_2d_B2_x_i_valid_pred[0];
    assign stencil_2d_B2_x_i_valid_succ_bitsignaltemp = stencil_2d_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B2")
    ) thestencil_2d_B2_x (
        .i_capture(stencil_2d_B2_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B2_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B2_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B4_x(EXTIFACE,140)
    assign stencil_2d_B4_x_i_capture = GND_q;
    assign stencil_2d_B4_x_i_clear = GND_q;
    assign stencil_2d_B4_x_i_enable = VCC_q;
    assign stencil_2d_B4_x_i_shift = GND_q;
    assign stencil_2d_B4_x_i_stall_pred = loop_limiter_stencil_2d1_out_o_stall;
    assign stencil_2d_B4_x_i_stall_succ = bb_stencil_2d_B7_out_stall_in_0;
    assign stencil_2d_B4_x_i_valid_loop = bb_stencil_2d_B4_out_valid_in_0;
    assign stencil_2d_B4_x_i_valid_pred = bb_stencil_2d_B4_out_valid_in_1;
    assign stencil_2d_B4_x_i_valid_succ = bb_stencil_2d_B7_out_valid_out_0;
    assign stencil_2d_B4_x_i_capture_bitsignaltemp = stencil_2d_B4_x_i_capture[0];
    assign stencil_2d_B4_x_i_clear_bitsignaltemp = stencil_2d_B4_x_i_clear[0];
    assign stencil_2d_B4_x_i_enable_bitsignaltemp = stencil_2d_B4_x_i_enable[0];
    assign stencil_2d_B4_x_i_shift_bitsignaltemp = stencil_2d_B4_x_i_shift[0];
    assign stencil_2d_B4_x_i_stall_pred_bitsignaltemp = stencil_2d_B4_x_i_stall_pred[0];
    assign stencil_2d_B4_x_i_stall_succ_bitsignaltemp = stencil_2d_B4_x_i_stall_succ[0];
    assign stencil_2d_B4_x_i_valid_loop_bitsignaltemp = stencil_2d_B4_x_i_valid_loop[0];
    assign stencil_2d_B4_x_i_valid_pred_bitsignaltemp = stencil_2d_B4_x_i_valid_pred[0];
    assign stencil_2d_B4_x_i_valid_succ_bitsignaltemp = stencil_2d_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B4")
    ) thestencil_2d_B4_x (
        .i_capture(stencil_2d_B4_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B4_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B4_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B6_x(EXTIFACE,141)
    assign stencil_2d_B6_x_i_capture = GND_q;
    assign stencil_2d_B6_x_i_clear = GND_q;
    assign stencil_2d_B6_x_i_enable = VCC_q;
    assign stencil_2d_B6_x_i_shift = GND_q;
    assign stencil_2d_B6_x_i_stall_pred = loop_limiter_stencil_2d2_out_o_stall;
    assign stencil_2d_B6_x_i_stall_succ = bb_stencil_2d_B8_out_stall_in_0;
    assign stencil_2d_B6_x_i_valid_loop = bb_stencil_2d_B6_out_valid_in_0;
    assign stencil_2d_B6_x_i_valid_pred = bb_stencil_2d_B6_out_valid_in_1;
    assign stencil_2d_B6_x_i_valid_succ = bb_stencil_2d_B8_out_valid_out_0;
    assign stencil_2d_B6_x_i_capture_bitsignaltemp = stencil_2d_B6_x_i_capture[0];
    assign stencil_2d_B6_x_i_clear_bitsignaltemp = stencil_2d_B6_x_i_clear[0];
    assign stencil_2d_B6_x_i_enable_bitsignaltemp = stencil_2d_B6_x_i_enable[0];
    assign stencil_2d_B6_x_i_shift_bitsignaltemp = stencil_2d_B6_x_i_shift[0];
    assign stencil_2d_B6_x_i_stall_pred_bitsignaltemp = stencil_2d_B6_x_i_stall_pred[0];
    assign stencil_2d_B6_x_i_stall_succ_bitsignaltemp = stencil_2d_B6_x_i_stall_succ[0];
    assign stencil_2d_B6_x_i_valid_loop_bitsignaltemp = stencil_2d_B6_x_i_valid_loop[0];
    assign stencil_2d_B6_x_i_valid_pred_bitsignaltemp = stencil_2d_B6_x_i_valid_pred[0];
    assign stencil_2d_B6_x_i_valid_succ_bitsignaltemp = stencil_2d_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B6")
    ) thestencil_2d_B6_x (
        .i_capture(stencil_2d_B6_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B6_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B6_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // stencil_2d_B9_x(EXTIFACE,142)
    assign stencil_2d_B9_x_i_capture = GND_q;
    assign stencil_2d_B9_x_i_clear = GND_q;
    assign stencil_2d_B9_x_i_enable = VCC_q;
    assign stencil_2d_B9_x_i_shift = GND_q;
    assign stencil_2d_B9_x_i_stall_pred = loop_limiter_stencil_2d3_out_o_stall;
    assign stencil_2d_B9_x_i_stall_succ = bb_stencil_2d_B9_out_stall_in_0;
    assign stencil_2d_B9_x_i_valid_loop = bb_stencil_2d_B9_out_valid_in_0;
    assign stencil_2d_B9_x_i_valid_pred = bb_stencil_2d_B9_out_valid_in_1;
    assign stencil_2d_B9_x_i_valid_succ = bb_stencil_2d_B9_out_valid_out_0;
    assign stencil_2d_B9_x_i_capture_bitsignaltemp = stencil_2d_B9_x_i_capture[0];
    assign stencil_2d_B9_x_i_clear_bitsignaltemp = stencil_2d_B9_x_i_clear[0];
    assign stencil_2d_B9_x_i_enable_bitsignaltemp = stencil_2d_B9_x_i_enable[0];
    assign stencil_2d_B9_x_i_shift_bitsignaltemp = stencil_2d_B9_x_i_shift[0];
    assign stencil_2d_B9_x_i_stall_pred_bitsignaltemp = stencil_2d_B9_x_i_stall_pred[0];
    assign stencil_2d_B9_x_i_stall_succ_bitsignaltemp = stencil_2d_B9_x_i_stall_succ[0];
    assign stencil_2d_B9_x_i_valid_loop_bitsignaltemp = stencil_2d_B9_x_i_valid_loop[0];
    assign stencil_2d_B9_x_i_valid_pred_bitsignaltemp = stencil_2d_B9_x_i_valid_pred[0];
    assign stencil_2d_B9_x_i_valid_succ_bitsignaltemp = stencil_2d_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("stencil_2d.B9")
    ) thestencil_2d_B9_x (
        .i_capture(stencil_2d_B9_x_i_capture_bitsignaltemp),
        .i_clear(stencil_2d_B9_x_i_clear_bitsignaltemp),
        .i_enable(stencil_2d_B9_x_i_enable_bitsignaltemp),
        .i_shift(stencil_2d_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(stencil_2d_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(stencil_2d_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(stencil_2d_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(stencil_2d_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(stencil_2d_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
