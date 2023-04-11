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

// SystemVerilog created from atax_function
// Created for function/kernel atax
// SystemVerilog created on Fri Apr  7 18:08:55 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module atax_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_tmp,
    input wire [63:0] in_arg_x,
    input wire [63:0] in_arg_y,
    input wire [255:0] in_iord_bl_call_atax_i_fifodata,
    input wire [0:0] in_iord_bl_call_atax_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_atax_i_fifoready,
    input wire [31:0] in_memdep_1_atax_avm_readdata,
    input wire [0:0] in_memdep_1_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_1_atax_avm_waitrequest,
    input wire [0:0] in_memdep_1_atax_avm_writeack,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_atax3_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax3_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax3_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax3_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax5_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax5_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax5_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax5_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax6_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax6_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax6_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax6_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax8_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax8_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax8_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax8_atax_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iowr_bl_return_atax_o_fifodata,
    output wire [0:0] out_iowr_bl_return_atax_o_fifovalid,
    output wire [31:0] out_memdep_1_atax_avm_address,
    output wire [0:0] out_memdep_1_atax_avm_burstcount,
    output wire [3:0] out_memdep_1_atax_avm_byteenable,
    output wire [0:0] out_memdep_1_atax_avm_enable,
    output wire [0:0] out_memdep_1_atax_avm_read,
    output wire [0:0] out_memdep_1_atax_avm_write,
    output wire [31:0] out_memdep_1_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_atax3_atax_avm_address,
    output wire [0:0] out_unnamed_atax3_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax3_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax3_atax_avm_enable,
    output wire [0:0] out_unnamed_atax3_atax_avm_read,
    output wire [0:0] out_unnamed_atax3_atax_avm_write,
    output wire [31:0] out_unnamed_atax3_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax5_atax_avm_address,
    output wire [0:0] out_unnamed_atax5_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax5_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax5_atax_avm_enable,
    output wire [0:0] out_unnamed_atax5_atax_avm_read,
    output wire [0:0] out_unnamed_atax5_atax_avm_write,
    output wire [31:0] out_unnamed_atax5_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax6_atax_avm_address,
    output wire [0:0] out_unnamed_atax6_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax6_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax6_atax_avm_enable,
    output wire [0:0] out_unnamed_atax6_atax_avm_read,
    output wire [0:0] out_unnamed_atax6_atax_avm_write,
    output wire [31:0] out_unnamed_atax6_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax8_atax_avm_address,
    output wire [0:0] out_unnamed_atax8_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax8_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax8_atax_avm_enable,
    output wire [0:0] out_unnamed_atax8_atax_avm_read,
    output wire [0:0] out_unnamed_atax8_atax_avm_write,
    output wire [31:0] out_unnamed_atax8_atax_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] atax_B1_start_x_i_capture;
    wire atax_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_clear;
    wire atax_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_enable;
    wire atax_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_shift;
    wire atax_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_stall_pred;
    wire atax_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_stall_succ;
    wire atax_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_loop;
    wire atax_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_pred;
    wire atax_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B1_start_x_i_valid_succ;
    wire atax_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B3_x_i_capture;
    wire atax_B3_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B3_x_i_clear;
    wire atax_B3_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B3_x_i_enable;
    wire atax_B3_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B3_x_i_shift;
    wire atax_B3_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B3_x_i_stall_pred;
    wire atax_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B3_x_i_stall_succ;
    wire atax_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_loop;
    wire atax_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_pred;
    wire atax_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B3_x_i_valid_succ;
    wire atax_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B5_x_i_capture;
    wire atax_B5_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B5_x_i_clear;
    wire atax_B5_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B5_x_i_enable;
    wire atax_B5_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B5_x_i_shift;
    wire atax_B5_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B5_x_i_stall_pred;
    wire atax_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B5_x_i_stall_succ;
    wire atax_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B5_x_i_valid_loop;
    wire atax_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B5_x_i_valid_pred;
    wire atax_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B5_x_i_valid_succ;
    wire atax_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B7_x_i_capture;
    wire atax_B7_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B7_x_i_clear;
    wire atax_B7_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B7_x_i_enable;
    wire atax_B7_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B7_x_i_shift;
    wire atax_B7_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B7_x_i_stall_pred;
    wire atax_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B7_x_i_stall_succ;
    wire atax_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_loop;
    wire atax_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_pred;
    wire atax_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B7_x_i_valid_succ;
    wire atax_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_atax_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_out_feedback_stall_out_10;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] bb_atax_B1_start_out_memdep_phi_pop9;
    wire [0:0] bb_atax_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_atax_B1_start_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_1;
    wire [0:0] bb_atax_B1_start_out_valid_out_0;
    wire [0:0] bb_atax_B2_out_feedback_out_10;
    wire [0:0] bb_atax_B2_out_feedback_valid_out_10;
    wire [0:0] bb_atax_B2_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] bb_atax_B2_out_iowr_bl_return_atax_o_fifovalid;
    wire [0:0] bb_atax_B2_out_stall_in_0;
    wire [0:0] bb_atax_B2_out_stall_out_0;
    wire [0:0] bb_atax_B2_out_valid_out_0;
    wire [0:0] bb_atax_B3_out_c0_exe10;
    wire [63:0] bb_atax_B3_out_c0_exe199;
    wire [63:0] bb_atax_B3_out_c0_exe2100;
    wire [0:0] bb_atax_B3_out_c0_exe3;
    wire [31:0] bb_atax_B3_out_c0_exe4;
    wire [0:0] bb_atax_B3_out_c0_exe5;
    wire [0:0] bb_atax_B3_out_c0_exe6;
    wire [0:0] bb_atax_B3_out_c0_exe7;
    wire [0:0] bb_atax_B3_out_c0_exe8;
    wire [0:0] bb_atax_B3_out_c0_exe9;
    wire [0:0] bb_atax_B3_out_exiting_stall_out;
    wire [0:0] bb_atax_B3_out_exiting_valid_out;
    wire [0:0] bb_atax_B3_out_pipeline_valid_out;
    wire [0:0] bb_atax_B3_out_stall_out_0;
    wire [0:0] bb_atax_B3_out_stall_out_1;
    wire [31:0] bb_atax_B3_out_unnamed_atax3_atax_avm_address;
    wire [0:0] bb_atax_B3_out_unnamed_atax3_atax_avm_burstcount;
    wire [3:0] bb_atax_B3_out_unnamed_atax3_atax_avm_byteenable;
    wire [0:0] bb_atax_B3_out_unnamed_atax3_atax_avm_enable;
    wire [0:0] bb_atax_B3_out_unnamed_atax3_atax_avm_read;
    wire [0:0] bb_atax_B3_out_unnamed_atax3_atax_avm_write;
    wire [31:0] bb_atax_B3_out_unnamed_atax3_atax_avm_writedata;
    wire [0:0] bb_atax_B3_out_valid_in_0;
    wire [0:0] bb_atax_B3_out_valid_in_1;
    wire [0:0] bb_atax_B3_out_valid_out_0;
    wire [0:0] bb_atax_B4_out_c0_exe101288;
    wire [0:0] bb_atax_B4_out_c0_exe119;
    wire [0:0] bb_atax_B4_out_c0_exe1210;
    wire [63:0] bb_atax_B4_out_c0_exe21201;
    wire [31:0] bb_atax_B4_out_c0_exe31212;
    wire [0:0] bb_atax_B4_out_c0_exe51233;
    wire [0:0] bb_atax_B4_out_c0_exe61244;
    wire [63:0] bb_atax_B4_out_c0_exe81266;
    wire [0:0] bb_atax_B4_out_c0_exe91277;
    wire [0:0] bb_atax_B4_out_feedback_stall_out_13;
    wire [0:0] bb_atax_B4_out_memdep_phi2_pop13;
    wire [0:0] bb_atax_B4_out_stall_out_0;
    wire [0:0] bb_atax_B4_out_valid_out_0;
    wire [0:0] bb_atax_B5_out_c0_exe10128;
    wire [0:0] bb_atax_B5_out_c0_exe11;
    wire [0:0] bb_atax_B5_out_c0_exe12;
    wire [63:0] bb_atax_B5_out_c0_exe2120;
    wire [31:0] bb_atax_B5_out_c0_exe3121;
    wire [0:0] bb_atax_B5_out_c0_exe5123;
    wire [0:0] bb_atax_B5_out_c0_exe6124;
    wire [0:0] bb_atax_B5_out_c0_exe7125;
    wire [63:0] bb_atax_B5_out_c0_exe8126;
    wire [0:0] bb_atax_B5_out_c0_exe9127;
    wire [0:0] bb_atax_B5_out_exiting_stall_out;
    wire [0:0] bb_atax_B5_out_exiting_valid_out;
    wire [0:0] bb_atax_B5_out_pipeline_valid_out;
    wire [0:0] bb_atax_B5_out_stall_in_0;
    wire [0:0] bb_atax_B5_out_stall_out_0;
    wire [0:0] bb_atax_B5_out_stall_out_1;
    wire [31:0] bb_atax_B5_out_unnamed_atax5_atax_avm_address;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_out_unnamed_atax5_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_enable;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_read;
    wire [0:0] bb_atax_B5_out_unnamed_atax5_atax_avm_write;
    wire [31:0] bb_atax_B5_out_unnamed_atax5_atax_avm_writedata;
    wire [31:0] bb_atax_B5_out_unnamed_atax6_atax_avm_address;
    wire [0:0] bb_atax_B5_out_unnamed_atax6_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_out_unnamed_atax6_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_out_unnamed_atax6_atax_avm_enable;
    wire [0:0] bb_atax_B5_out_unnamed_atax6_atax_avm_read;
    wire [0:0] bb_atax_B5_out_unnamed_atax6_atax_avm_write;
    wire [31:0] bb_atax_B5_out_unnamed_atax6_atax_avm_writedata;
    wire [0:0] bb_atax_B5_out_valid_in_0;
    wire [0:0] bb_atax_B5_out_valid_in_1;
    wire [0:0] bb_atax_B5_out_valid_out_0;
    wire [0:0] bb_atax_B6_out_feedback_out_13;
    wire [0:0] bb_atax_B6_out_feedback_valid_out_13;
    wire [0:0] bb_atax_B6_out_memdep;
    wire [31:0] bb_atax_B6_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B6_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B6_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B6_out_stall_in_0;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [31:0] bb_atax_B7_out_c0_exe2163;
    wire [0:0] bb_atax_B7_out_c0_exe3164;
    wire [63:0] bb_atax_B7_out_c0_exe5166;
    wire [0:0] bb_atax_B7_out_c0_exe6167;
    wire [0:0] bb_atax_B7_out_c0_exe7168;
    wire [0:0] bb_atax_B7_out_exiting_stall_out;
    wire [0:0] bb_atax_B7_out_exiting_valid_out;
    wire [31:0] bb_atax_B7_out_memdep_1_atax_avm_address;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_memdep_1_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_read;
    wire [0:0] bb_atax_B7_out_memdep_1_atax_avm_write;
    wire [31:0] bb_atax_B7_out_memdep_1_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_pipeline_valid_out;
    wire [0:0] bb_atax_B7_out_stall_in_0;
    wire [0:0] bb_atax_B7_out_stall_out_0;
    wire [0:0] bb_atax_B7_out_stall_out_1;
    wire [31:0] bb_atax_B7_out_unnamed_atax7_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax7_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax7_atax_avm_writedata;
    wire [31:0] bb_atax_B7_out_unnamed_atax8_atax_avm_address;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_burstcount;
    wire [3:0] bb_atax_B7_out_unnamed_atax8_atax_avm_byteenable;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_enable;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_read;
    wire [0:0] bb_atax_B7_out_unnamed_atax8_atax_avm_write;
    wire [31:0] bb_atax_B7_out_unnamed_atax8_atax_avm_writedata;
    wire [0:0] bb_atax_B7_out_valid_in_0;
    wire [0:0] bb_atax_B7_out_valid_in_1;
    wire [0:0] bb_atax_B7_out_valid_out_0;
    wire [1:0] c_i2_082_q;
    wire [63:0] c_i32_addrspace_67_undef39_q;
    wire [31:0] c_i32_undef43_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_atax2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_atax2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_atax0_out_o_stall;
    wire [0:0] loop_limiter_atax0_out_o_valid;
    wire [0:0] loop_limiter_atax1_out_o_stall;
    wire [0:0] loop_limiter_atax1_out_o_valid;
    wire [0:0] loop_limiter_atax2_out_o_stall;
    wire [0:0] loop_limiter_atax2_out_o_valid;
    wire [0:0] bb_atax_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_atax_B4_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_atax_B7_sr_1_aunroll_x_out_o_data_10_tpl;


    // c_i2_082(CONSTANT,55)
    assign c_i2_082_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo(BLACKBOX,71)
    atax_i_llvm_fpga_pipeline_keep_going32_2_valid_fifo thei_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_atax_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going32_atax2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo(BLACKBOX,69)
    atax_i_llvm_fpga_pipeline_keep_going28_2_valid_fifo thei_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_atax_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going28_atax2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo(BLACKBOX,67)
    atax_i_llvm_fpga_pipeline_keep_going14_6_valid_fifo thei_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_atax_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going14_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef43(CONSTANT,61)
    assign c_i32_undef43_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo(BLACKBOX,73)
    atax_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_atax6_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_atax_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_sr_0_aunroll_x(BLACKBOX,176)
    atax_bb_B6_sr_0 thebb_atax_B6_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B6_out_stall_out_0),
        .in_i_valid(bb_atax_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B7_out_c0_exe2163),
        .in_i_data_1_tpl(bb_atax_B7_out_c0_exe3164),
        .in_i_data_2_tpl(bb_atax_B7_out_c0_exe5166),
        .in_i_data_3_tpl(bb_atax_B7_out_c0_exe6167),
        .in_i_data_4_tpl(bb_atax_B7_out_c0_exe7168),
        .out_o_stall(bb_atax_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_atax6_sr(BLACKBOX,72)
    atax_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7(BLACKBOX,13)
    atax_bb_B7 thebb_atax_B7 (
        .in_add73_0(c_i32_undef43_q),
        .in_add73_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_arrayidx145_pop2580_0(c_i32_addrspace_67_undef39_q),
        .in_arrayidx145_pop2580_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_exitcond947_pop2682_0(GND_q),
        .in_exitcond947_pop2682_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom43_pop2471_0(c_i32_addrspace_67_undef39_q),
        .in_idxprom43_pop2471_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_1_atax_avm_readdata(in_memdep_1_atax_avm_readdata),
        .in_memdep_1_atax_avm_readdatavalid(in_memdep_1_atax_avm_readdatavalid),
        .in_memdep_1_atax_avm_waitrequest(in_memdep_1_atax_avm_waitrequest),
        .in_memdep_1_atax_avm_writeack(in_memdep_1_atax_avm_writeack),
        .in_memdep_phi2_pop1370_0(GND_q),
        .in_memdep_phi2_pop1370_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi3_pop1040_pop2277_0(GND_q),
        .in_memdep_phi3_pop1040_pop2277_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi3_pop1060_0(GND_q),
        .in_memdep_phi3_pop1060_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop937_pop2175_0(GND_q),
        .in_memdep_phi_pop937_pop2175_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_phi_pop955_0(GND_q),
        .in_memdep_phi_pop955_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp2649_pop2784_0(GND_q),
        .in_notcmp2649_pop2784_1(bb_atax_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .in_unnamed_atax8_atax_avm_readdata(in_unnamed_atax8_atax_avm_readdata),
        .in_unnamed_atax8_atax_avm_readdatavalid(in_unnamed_atax8_atax_avm_readdatavalid),
        .in_unnamed_atax8_atax_avm_waitrequest(in_unnamed_atax8_atax_avm_waitrequest),
        .in_unnamed_atax8_atax_avm_writeack(in_unnamed_atax8_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2163(bb_atax_B7_out_c0_exe2163),
        .out_c0_exe3164(bb_atax_B7_out_c0_exe3164),
        .out_c0_exe5166(bb_atax_B7_out_c0_exe5166),
        .out_c0_exe6167(bb_atax_B7_out_c0_exe6167),
        .out_c0_exe7168(bb_atax_B7_out_c0_exe7168),
        .out_exiting_stall_out(bb_atax_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B7_out_exiting_valid_out),
        .out_memdep_1_atax_avm_address(bb_atax_B7_out_memdep_1_atax_avm_address),
        .out_memdep_1_atax_avm_burstcount(bb_atax_B7_out_memdep_1_atax_avm_burstcount),
        .out_memdep_1_atax_avm_byteenable(bb_atax_B7_out_memdep_1_atax_avm_byteenable),
        .out_memdep_1_atax_avm_enable(bb_atax_B7_out_memdep_1_atax_avm_enable),
        .out_memdep_1_atax_avm_read(bb_atax_B7_out_memdep_1_atax_avm_read),
        .out_memdep_1_atax_avm_write(bb_atax_B7_out_memdep_1_atax_avm_write),
        .out_memdep_1_atax_avm_writedata(bb_atax_B7_out_memdep_1_atax_avm_writedata),
        .out_pipeline_valid_out(bb_atax_B7_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B7_out_stall_in_0),
        .out_stall_out_0(bb_atax_B7_out_stall_out_0),
        .out_stall_out_1(bb_atax_B7_out_stall_out_1),
        .out_unnamed_atax7_atax_avm_address(bb_atax_B7_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(bb_atax_B7_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(bb_atax_B7_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(bb_atax_B7_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(bb_atax_B7_out_unnamed_atax7_atax_avm_writedata),
        .out_unnamed_atax8_atax_avm_address(bb_atax_B7_out_unnamed_atax8_atax_avm_address),
        .out_unnamed_atax8_atax_avm_burstcount(bb_atax_B7_out_unnamed_atax8_atax_avm_burstcount),
        .out_unnamed_atax8_atax_avm_byteenable(bb_atax_B7_out_unnamed_atax8_atax_avm_byteenable),
        .out_unnamed_atax8_atax_avm_enable(bb_atax_B7_out_unnamed_atax8_atax_avm_enable),
        .out_unnamed_atax8_atax_avm_read(bb_atax_B7_out_unnamed_atax8_atax_avm_read),
        .out_unnamed_atax8_atax_avm_write(bb_atax_B7_out_unnamed_atax8_atax_avm_write),
        .out_unnamed_atax8_atax_avm_writedata(bb_atax_B7_out_unnamed_atax8_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B7_out_valid_in_0),
        .out_valid_in_1(bb_atax_B7_out_valid_in_1),
        .out_valid_out_0(bb_atax_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_sr_1_aunroll_x(BLACKBOX,177)
    atax_bb_B7_sr_1 thebb_atax_B7_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_atax2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B4_out_c0_exe119),
        .in_i_data_2_tpl(bb_atax_B4_out_c0_exe1210),
        .in_i_data_3_tpl(bb_atax_B4_out_memdep_phi2_pop13),
        .in_i_data_4_tpl(bb_atax_B4_out_c0_exe21201),
        .in_i_data_5_tpl(bb_atax_B4_out_c0_exe31212),
        .in_i_data_6_tpl(bb_atax_B4_out_c0_exe51233),
        .in_i_data_7_tpl(bb_atax_B4_out_c0_exe61244),
        .in_i_data_8_tpl(bb_atax_B4_out_c0_exe81266),
        .in_i_data_9_tpl(bb_atax_B4_out_c0_exe91277),
        .in_i_data_10_tpl(bb_atax_B4_out_c0_exe101288),
        .out_o_stall(bb_atax_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_atax_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax2(BLACKBOX,116)
    atax_loop_limiter_2 theloop_limiter_atax2 (
        .in_i_stall(bb_atax_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B7_out_exiting_stall_out),
        .in_i_valid(bb_atax_B4_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax2_out_o_stall),
        .out_o_valid(loop_limiter_atax2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2_sr_0_aunroll_x(BLACKBOX,172)
    atax_bb_B2_sr_0 thebb_atax_B2_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B2_out_stall_out_0),
        .in_i_valid(bb_atax_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B6_out_memdep),
        .out_o_stall(bb_atax_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6(BLACKBOX,12)
    atax_bb_B6 thebb_atax_B6 (
        .in_c0_exe216312_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe316413_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe516614_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe616715_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe716816_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_feedback_stall_in_13(bb_atax_B4_out_feedback_stall_out_13),
        .in_flush(in_start),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_stall_in_0(bb_atax_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_atax_B6_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_13(bb_atax_B6_out_feedback_out_13),
        .out_feedback_valid_out_13(bb_atax_B6_out_feedback_valid_out_13),
        .out_memdep(bb_atax_B6_out_memdep),
        .out_memdep_atax_avm_address(bb_atax_B6_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B6_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B6_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B6_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B6_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B6_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B6_out_memdep_atax_avm_writedata),
        .out_stall_in_0(bb_atax_B6_out_stall_in_0),
        .out_stall_out_0(bb_atax_B6_out_stall_out_0),
        .out_valid_out_0(bb_atax_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4(BLACKBOX,10)
    atax_bb_B4 thebb_atax_B4 (
        .in_c0_exe101288_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe119_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1210_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe21201_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31212_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51233_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61244_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe71255_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe81266_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe91277_0(bb_atax_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_feedback_in_13(bb_atax_B6_out_feedback_out_13),
        .in_feedback_valid_in_13(bb_atax_B6_out_feedback_valid_out_13),
        .in_stall_in_0(loop_limiter_atax2_out_o_stall),
        .in_valid_in_0(bb_atax_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe101288(bb_atax_B4_out_c0_exe101288),
        .out_c0_exe119(bb_atax_B4_out_c0_exe119),
        .out_c0_exe1210(bb_atax_B4_out_c0_exe1210),
        .out_c0_exe21201(bb_atax_B4_out_c0_exe21201),
        .out_c0_exe31212(bb_atax_B4_out_c0_exe31212),
        .out_c0_exe51233(bb_atax_B4_out_c0_exe51233),
        .out_c0_exe61244(bb_atax_B4_out_c0_exe61244),
        .out_c0_exe81266(bb_atax_B4_out_c0_exe81266),
        .out_c0_exe91277(bb_atax_B4_out_c0_exe91277),
        .out_feedback_stall_out_13(bb_atax_B4_out_feedback_stall_out_13),
        .out_memdep_phi2_pop13(bb_atax_B4_out_memdep_phi2_pop13),
        .out_stall_out_0(bb_atax_B4_out_stall_out_0),
        .out_valid_out_0(bb_atax_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_sr_0_aunroll_x(BLACKBOX,174)
    atax_bb_B4_sr_0 thebb_atax_B4_sr_0_aunroll_x (
        .in_i_stall(bb_atax_B4_out_stall_out_0),
        .in_i_valid(bb_atax_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_atax_B5_out_c0_exe2120),
        .in_i_data_1_tpl(bb_atax_B5_out_c0_exe3121),
        .in_i_data_2_tpl(bb_atax_B5_out_c0_exe5123),
        .in_i_data_3_tpl(bb_atax_B5_out_c0_exe6124),
        .in_i_data_4_tpl(bb_atax_B5_out_c0_exe7125),
        .in_i_data_5_tpl(bb_atax_B5_out_c0_exe8126),
        .in_i_data_6_tpl(bb_atax_B5_out_c0_exe9127),
        .in_i_data_7_tpl(bb_atax_B5_out_c0_exe10128),
        .in_i_data_8_tpl(bb_atax_B5_out_c0_exe11),
        .in_i_data_9_tpl(bb_atax_B5_out_c0_exe12),
        .out_o_stall(bb_atax_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_atax_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going14_atax6_sr(BLACKBOX,66)
    atax_i_llvm_fpga_pipeline_keep_going14_6_sr thei_llvm_fpga_pipeline_keep_going14_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going14_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going14_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_67_undef39(CONSTANT,59)
    assign c_i32_addrspace_67_undef39_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_atax_B5(BLACKBOX,11)
    atax_bb_B5 thebb_atax_B5 (
        .in_arrayidx165_0(c_i32_addrspace_67_undef39_q),
        .in_arrayidx165_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_exitcond967_0(GND_q),
        .in_exitcond967_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_flush(in_start),
        .in_forked11_0(GND_q),
        .in_forked11_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked3563_0(GND_q),
        .in_forked3563_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_idxprom64_0(c_i32_addrspace_67_undef39_q),
        .in_idxprom64_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi3_pop1039_pop1569_0(GND_q),
        .in_memdep_phi3_pop1039_pop1569_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_phi3_pop1062_0(GND_q),
        .in_memdep_phi3_pop1062_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop936_pop1466_0(GND_q),
        .in_memdep_phi_pop936_pop1466_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_phi_pop957_0(GND_q),
        .in_memdep_phi_pop957_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp2668_0(GND_q),
        .in_notcmp2668_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going14_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax4_0(c_i32_undef43_q),
        .in_unnamed_atax4_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_unnamed_atax5_atax_avm_readdata(in_unnamed_atax5_atax_avm_readdata),
        .in_unnamed_atax5_atax_avm_readdatavalid(in_unnamed_atax5_atax_avm_readdatavalid),
        .in_unnamed_atax5_atax_avm_waitrequest(in_unnamed_atax5_atax_avm_waitrequest),
        .in_unnamed_atax5_atax_avm_writeack(in_unnamed_atax5_atax_avm_writeack),
        .in_unnamed_atax6_atax_avm_readdata(in_unnamed_atax6_atax_avm_readdata),
        .in_unnamed_atax6_atax_avm_readdatavalid(in_unnamed_atax6_atax_avm_readdatavalid),
        .in_unnamed_atax6_atax_avm_waitrequest(in_unnamed_atax6_atax_avm_waitrequest),
        .in_unnamed_atax6_atax_avm_writeack(in_unnamed_atax6_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going14_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10128(bb_atax_B5_out_c0_exe10128),
        .out_c0_exe11(bb_atax_B5_out_c0_exe11),
        .out_c0_exe12(bb_atax_B5_out_c0_exe12),
        .out_c0_exe2120(bb_atax_B5_out_c0_exe2120),
        .out_c0_exe3121(bb_atax_B5_out_c0_exe3121),
        .out_c0_exe5123(bb_atax_B5_out_c0_exe5123),
        .out_c0_exe6124(bb_atax_B5_out_c0_exe6124),
        .out_c0_exe7125(bb_atax_B5_out_c0_exe7125),
        .out_c0_exe8126(bb_atax_B5_out_c0_exe8126),
        .out_c0_exe9127(bb_atax_B5_out_c0_exe9127),
        .out_exiting_stall_out(bb_atax_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B5_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_atax_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B5_out_stall_in_0),
        .out_stall_out_0(bb_atax_B5_out_stall_out_0),
        .out_stall_out_1(bb_atax_B5_out_stall_out_1),
        .out_unnamed_atax5_atax_avm_address(bb_atax_B5_out_unnamed_atax5_atax_avm_address),
        .out_unnamed_atax5_atax_avm_burstcount(bb_atax_B5_out_unnamed_atax5_atax_avm_burstcount),
        .out_unnamed_atax5_atax_avm_byteenable(bb_atax_B5_out_unnamed_atax5_atax_avm_byteenable),
        .out_unnamed_atax5_atax_avm_enable(bb_atax_B5_out_unnamed_atax5_atax_avm_enable),
        .out_unnamed_atax5_atax_avm_read(bb_atax_B5_out_unnamed_atax5_atax_avm_read),
        .out_unnamed_atax5_atax_avm_write(bb_atax_B5_out_unnamed_atax5_atax_avm_write),
        .out_unnamed_atax5_atax_avm_writedata(bb_atax_B5_out_unnamed_atax5_atax_avm_writedata),
        .out_unnamed_atax6_atax_avm_address(bb_atax_B5_out_unnamed_atax6_atax_avm_address),
        .out_unnamed_atax6_atax_avm_burstcount(bb_atax_B5_out_unnamed_atax6_atax_avm_burstcount),
        .out_unnamed_atax6_atax_avm_byteenable(bb_atax_B5_out_unnamed_atax6_atax_avm_byteenable),
        .out_unnamed_atax6_atax_avm_enable(bb_atax_B5_out_unnamed_atax6_atax_avm_enable),
        .out_unnamed_atax6_atax_avm_read(bb_atax_B5_out_unnamed_atax6_atax_avm_read),
        .out_unnamed_atax6_atax_avm_write(bb_atax_B5_out_unnamed_atax6_atax_avm_write),
        .out_unnamed_atax6_atax_avm_writedata(bb_atax_B5_out_unnamed_atax6_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B5_out_valid_in_0),
        .out_valid_in_1(bb_atax_B5_out_valid_in_1),
        .out_valid_out_0(bb_atax_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5_sr_1_aunroll_x(BLACKBOX,175)
    atax_bb_B5_sr_1 thebb_atax_B5_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_atax1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B3_out_c0_exe9),
        .in_i_data_2_tpl(bb_atax_B3_out_c0_exe10),
        .in_i_data_3_tpl(bb_atax_B3_out_c0_exe8),
        .in_i_data_4_tpl(bb_atax_B3_out_c0_exe199),
        .in_i_data_5_tpl(bb_atax_B3_out_c0_exe2100),
        .in_i_data_6_tpl(bb_atax_B3_out_c0_exe3),
        .in_i_data_7_tpl(bb_atax_B3_out_c0_exe4),
        .in_i_data_8_tpl(bb_atax_B3_out_c0_exe5),
        .in_i_data_9_tpl(bb_atax_B3_out_c0_exe6),
        .in_i_data_10_tpl(bb_atax_B3_out_c0_exe7),
        .out_o_stall(bb_atax_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax1(BLACKBOX,115)
    atax_loop_limiter_1 theloop_limiter_atax1 (
        .in_i_stall(bb_atax_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B5_out_exiting_stall_out),
        .in_i_valid(bb_atax_B3_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax1_out_o_stall),
        .out_o_valid(loop_limiter_atax1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_atax2_sr(BLACKBOX,68)
    atax_i_llvm_fpga_pipeline_keep_going28_2_sr thei_llvm_fpga_pipeline_keep_going28_atax2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going28_atax2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going28_atax2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3(BLACKBOX,9)
    atax_bb_B3 thebb_atax_B3 (
        .in_flush(in_start),
        .in_forked35_0(GND_q),
        .in_forked35_1(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi3_pop1058_0(GND_q),
        .in_memdep_phi3_pop1058_1(bb_atax_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop953_0(GND_q),
        .in_memdep_phi_pop953_1(bb_atax_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going28_atax2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax1_out_o_stall),
        .in_unnamed_atax3_atax_avm_readdata(in_unnamed_atax3_atax_avm_readdata),
        .in_unnamed_atax3_atax_avm_readdatavalid(in_unnamed_atax3_atax_avm_readdatavalid),
        .in_unnamed_atax3_atax_avm_waitrequest(in_unnamed_atax3_atax_avm_waitrequest),
        .in_unnamed_atax3_atax_avm_writeack(in_unnamed_atax3_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going28_atax2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_atax_B3_out_c0_exe10),
        .out_c0_exe199(bb_atax_B3_out_c0_exe199),
        .out_c0_exe2100(bb_atax_B3_out_c0_exe2100),
        .out_c0_exe3(bb_atax_B3_out_c0_exe3),
        .out_c0_exe4(bb_atax_B3_out_c0_exe4),
        .out_c0_exe5(bb_atax_B3_out_c0_exe5),
        .out_c0_exe6(bb_atax_B3_out_c0_exe6),
        .out_c0_exe7(bb_atax_B3_out_c0_exe7),
        .out_c0_exe8(bb_atax_B3_out_c0_exe8),
        .out_c0_exe9(bb_atax_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_atax_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_atax_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B3_out_stall_out_0),
        .out_stall_out_1(bb_atax_B3_out_stall_out_1),
        .out_unnamed_atax3_atax_avm_address(bb_atax_B3_out_unnamed_atax3_atax_avm_address),
        .out_unnamed_atax3_atax_avm_burstcount(bb_atax_B3_out_unnamed_atax3_atax_avm_burstcount),
        .out_unnamed_atax3_atax_avm_byteenable(bb_atax_B3_out_unnamed_atax3_atax_avm_byteenable),
        .out_unnamed_atax3_atax_avm_enable(bb_atax_B3_out_unnamed_atax3_atax_avm_enable),
        .out_unnamed_atax3_atax_avm_read(bb_atax_B3_out_unnamed_atax3_atax_avm_read),
        .out_unnamed_atax3_atax_avm_write(bb_atax_B3_out_unnamed_atax3_atax_avm_write),
        .out_unnamed_atax3_atax_avm_writedata(bb_atax_B3_out_unnamed_atax3_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B3_out_valid_in_0),
        .out_valid_in_1(bb_atax_B3_out_valid_in_1),
        .out_valid_out_0(bb_atax_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_sr_1_aunroll_x(BLACKBOX,173)
    atax_bb_B3_sr_1 thebb_atax_B3_sr_1_aunroll_x (
        .in_i_stall(bb_atax_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_atax0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B1_start_out_memdep_phi_pop9),
        .in_i_data_2_tpl(bb_atax_B1_start_out_memdep_phi_pop9),
        .out_o_stall(bb_atax_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax0(BLACKBOX,114)
    atax_loop_limiter_0 theloop_limiter_atax0 (
        .in_i_stall(bb_atax_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B3_out_exiting_stall_out),
        .in_i_valid(bb_atax_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax0_out_o_stall),
        .out_o_valid(loop_limiter_atax0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going32_atax2_sr(BLACKBOX,70)
    atax_i_llvm_fpga_pipeline_keep_going32_2_sr thei_llvm_fpga_pipeline_keep_going32_atax2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going32_atax2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going32_atax2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start(BLACKBOX,7)
    atax_bb_B1_start thebb_atax_B1_start (
        .in_feedback_in_10(bb_atax_B2_out_feedback_out_10),
        .in_feedback_valid_in_10(bb_atax_B2_out_feedback_valid_out_10),
        .in_forked34_0(GND_q),
        .in_forked34_1(VCC_q),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going32_atax2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going32_atax2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_10(bb_atax_B1_start_out_feedback_stall_out_10),
        .out_iord_bl_call_atax_o_fifoalmost_full(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready),
        .out_memdep_phi_pop9(bb_atax_B1_start_out_memdep_phi_pop9),
        .out_pipeline_valid_out(bb_atax_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_atax_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_atax_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_atax_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2(BLACKBOX,8)
    atax_bb_B2 thebb_atax_B2 (
        .in_feedback_stall_in_10(bb_atax_B1_start_out_feedback_stall_out_10),
        .in_iowr_bl_return_atax_i_fifoready(in_iowr_bl_return_atax_i_fifoready),
        .in_memdep_11_0(bb_atax_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_atax_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_10(bb_atax_B2_out_feedback_out_10),
        .out_feedback_valid_out_10(bb_atax_B2_out_feedback_valid_out_10),
        .out_iowr_bl_return_atax_o_fifodata(bb_atax_B2_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(bb_atax_B2_out_iowr_bl_return_atax_o_fifovalid),
        .out_stall_in_0(bb_atax_B2_out_stall_in_0),
        .out_stall_out_0(bb_atax_B2_out_stall_out_0),
        .out_valid_out_0(bb_atax_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // atax_B1_start_x(EXTIFACE,2)
    assign atax_B1_start_x_i_capture = GND_q;
    assign atax_B1_start_x_i_clear = GND_q;
    assign atax_B1_start_x_i_enable = VCC_q;
    assign atax_B1_start_x_i_shift = GND_q;
    assign atax_B1_start_x_i_stall_pred = GND_q;
    assign atax_B1_start_x_i_stall_succ = bb_atax_B2_out_stall_in_0;
    assign atax_B1_start_x_i_valid_loop = bb_atax_B1_start_out_valid_in_0;
    assign atax_B1_start_x_i_valid_pred = bb_atax_B1_start_out_valid_in_1;
    assign atax_B1_start_x_i_valid_succ = bb_atax_B2_out_valid_out_0;
    assign atax_B1_start_x_i_capture_bitsignaltemp = atax_B1_start_x_i_capture[0];
    assign atax_B1_start_x_i_clear_bitsignaltemp = atax_B1_start_x_i_clear[0];
    assign atax_B1_start_x_i_enable_bitsignaltemp = atax_B1_start_x_i_enable[0];
    assign atax_B1_start_x_i_shift_bitsignaltemp = atax_B1_start_x_i_shift[0];
    assign atax_B1_start_x_i_stall_pred_bitsignaltemp = atax_B1_start_x_i_stall_pred[0];
    assign atax_B1_start_x_i_stall_succ_bitsignaltemp = atax_B1_start_x_i_stall_succ[0];
    assign atax_B1_start_x_i_valid_loop_bitsignaltemp = atax_B1_start_x_i_valid_loop[0];
    assign atax_B1_start_x_i_valid_pred_bitsignaltemp = atax_B1_start_x_i_valid_pred[0];
    assign atax_B1_start_x_i_valid_succ_bitsignaltemp = atax_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B1.start")
    ) theatax_B1_start_x (
        .i_capture(atax_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(atax_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(atax_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(atax_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B3_x(EXTIFACE,3)
    assign atax_B3_x_i_capture = GND_q;
    assign atax_B3_x_i_clear = GND_q;
    assign atax_B3_x_i_enable = VCC_q;
    assign atax_B3_x_i_shift = GND_q;
    assign atax_B3_x_i_stall_pred = loop_limiter_atax0_out_o_stall;
    assign atax_B3_x_i_stall_succ = bb_atax_B6_out_stall_in_0;
    assign atax_B3_x_i_valid_loop = bb_atax_B3_out_valid_in_0;
    assign atax_B3_x_i_valid_pred = bb_atax_B3_out_valid_in_1;
    assign atax_B3_x_i_valid_succ = bb_atax_B6_out_valid_out_0;
    assign atax_B3_x_i_capture_bitsignaltemp = atax_B3_x_i_capture[0];
    assign atax_B3_x_i_clear_bitsignaltemp = atax_B3_x_i_clear[0];
    assign atax_B3_x_i_enable_bitsignaltemp = atax_B3_x_i_enable[0];
    assign atax_B3_x_i_shift_bitsignaltemp = atax_B3_x_i_shift[0];
    assign atax_B3_x_i_stall_pred_bitsignaltemp = atax_B3_x_i_stall_pred[0];
    assign atax_B3_x_i_stall_succ_bitsignaltemp = atax_B3_x_i_stall_succ[0];
    assign atax_B3_x_i_valid_loop_bitsignaltemp = atax_B3_x_i_valid_loop[0];
    assign atax_B3_x_i_valid_pred_bitsignaltemp = atax_B3_x_i_valid_pred[0];
    assign atax_B3_x_i_valid_succ_bitsignaltemp = atax_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B3")
    ) theatax_B3_x (
        .i_capture(atax_B3_x_i_capture_bitsignaltemp),
        .i_clear(atax_B3_x_i_clear_bitsignaltemp),
        .i_enable(atax_B3_x_i_enable_bitsignaltemp),
        .i_shift(atax_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B5_x(EXTIFACE,4)
    assign atax_B5_x_i_capture = GND_q;
    assign atax_B5_x_i_clear = GND_q;
    assign atax_B5_x_i_enable = VCC_q;
    assign atax_B5_x_i_shift = GND_q;
    assign atax_B5_x_i_stall_pred = loop_limiter_atax1_out_o_stall;
    assign atax_B5_x_i_stall_succ = bb_atax_B5_out_stall_in_0;
    assign atax_B5_x_i_valid_loop = bb_atax_B5_out_valid_in_0;
    assign atax_B5_x_i_valid_pred = bb_atax_B5_out_valid_in_1;
    assign atax_B5_x_i_valid_succ = bb_atax_B5_out_valid_out_0;
    assign atax_B5_x_i_capture_bitsignaltemp = atax_B5_x_i_capture[0];
    assign atax_B5_x_i_clear_bitsignaltemp = atax_B5_x_i_clear[0];
    assign atax_B5_x_i_enable_bitsignaltemp = atax_B5_x_i_enable[0];
    assign atax_B5_x_i_shift_bitsignaltemp = atax_B5_x_i_shift[0];
    assign atax_B5_x_i_stall_pred_bitsignaltemp = atax_B5_x_i_stall_pred[0];
    assign atax_B5_x_i_stall_succ_bitsignaltemp = atax_B5_x_i_stall_succ[0];
    assign atax_B5_x_i_valid_loop_bitsignaltemp = atax_B5_x_i_valid_loop[0];
    assign atax_B5_x_i_valid_pred_bitsignaltemp = atax_B5_x_i_valid_pred[0];
    assign atax_B5_x_i_valid_succ_bitsignaltemp = atax_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B5")
    ) theatax_B5_x (
        .i_capture(atax_B5_x_i_capture_bitsignaltemp),
        .i_clear(atax_B5_x_i_clear_bitsignaltemp),
        .i_enable(atax_B5_x_i_enable_bitsignaltemp),
        .i_shift(atax_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B7_x(EXTIFACE,5)
    assign atax_B7_x_i_capture = GND_q;
    assign atax_B7_x_i_clear = GND_q;
    assign atax_B7_x_i_enable = VCC_q;
    assign atax_B7_x_i_shift = GND_q;
    assign atax_B7_x_i_stall_pred = loop_limiter_atax2_out_o_stall;
    assign atax_B7_x_i_stall_succ = bb_atax_B7_out_stall_in_0;
    assign atax_B7_x_i_valid_loop = bb_atax_B7_out_valid_in_0;
    assign atax_B7_x_i_valid_pred = bb_atax_B7_out_valid_in_1;
    assign atax_B7_x_i_valid_succ = bb_atax_B7_out_valid_out_0;
    assign atax_B7_x_i_capture_bitsignaltemp = atax_B7_x_i_capture[0];
    assign atax_B7_x_i_clear_bitsignaltemp = atax_B7_x_i_clear[0];
    assign atax_B7_x_i_enable_bitsignaltemp = atax_B7_x_i_enable[0];
    assign atax_B7_x_i_shift_bitsignaltemp = atax_B7_x_i_shift[0];
    assign atax_B7_x_i_stall_pred_bitsignaltemp = atax_B7_x_i_stall_pred[0];
    assign atax_B7_x_i_stall_succ_bitsignaltemp = atax_B7_x_i_stall_succ[0];
    assign atax_B7_x_i_valid_loop_bitsignaltemp = atax_B7_x_i_valid_loop[0];
    assign atax_B7_x_i_valid_pred_bitsignaltemp = atax_B7_x_i_valid_pred[0];
    assign atax_B7_x_i_valid_succ_bitsignaltemp = atax_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B7")
    ) theatax_B7_x (
        .i_capture(atax_B7_x_i_capture_bitsignaltemp),
        .i_clear(atax_B7_x_i_clear_bitsignaltemp),
        .i_enable(atax_B7_x_i_enable_bitsignaltemp),
        .i_shift(atax_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,117)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,118)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,119)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B2_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,120)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B2_out_iowr_bl_return_atax_o_fifovalid;

    // out_memdep_1_atax_avm_address(GPOUT,121)
    assign out_memdep_1_atax_avm_address = bb_atax_B7_out_memdep_1_atax_avm_address;

    // out_memdep_1_atax_avm_burstcount(GPOUT,122)
    assign out_memdep_1_atax_avm_burstcount = bb_atax_B7_out_memdep_1_atax_avm_burstcount;

    // out_memdep_1_atax_avm_byteenable(GPOUT,123)
    assign out_memdep_1_atax_avm_byteenable = bb_atax_B7_out_memdep_1_atax_avm_byteenable;

    // out_memdep_1_atax_avm_enable(GPOUT,124)
    assign out_memdep_1_atax_avm_enable = bb_atax_B7_out_memdep_1_atax_avm_enable;

    // out_memdep_1_atax_avm_read(GPOUT,125)
    assign out_memdep_1_atax_avm_read = bb_atax_B7_out_memdep_1_atax_avm_read;

    // out_memdep_1_atax_avm_write(GPOUT,126)
    assign out_memdep_1_atax_avm_write = bb_atax_B7_out_memdep_1_atax_avm_write;

    // out_memdep_1_atax_avm_writedata(GPOUT,127)
    assign out_memdep_1_atax_avm_writedata = bb_atax_B7_out_memdep_1_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,128)
    assign out_memdep_atax_avm_address = bb_atax_B6_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,129)
    assign out_memdep_atax_avm_burstcount = bb_atax_B6_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,130)
    assign out_memdep_atax_avm_byteenable = bb_atax_B6_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,131)
    assign out_memdep_atax_avm_enable = bb_atax_B6_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,132)
    assign out_memdep_atax_avm_read = bb_atax_B6_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,133)
    assign out_memdep_atax_avm_write = bb_atax_B6_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,134)
    assign out_memdep_atax_avm_writedata = bb_atax_B6_out_memdep_atax_avm_writedata;

    // bb_atax_B0_runOnce(BLACKBOX,6)
    atax_bb_B0_runOnce thebb_atax_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_atax_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,135)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax3_atax_avm_address(GPOUT,136)
    assign out_unnamed_atax3_atax_avm_address = bb_atax_B3_out_unnamed_atax3_atax_avm_address;

    // out_unnamed_atax3_atax_avm_burstcount(GPOUT,137)
    assign out_unnamed_atax3_atax_avm_burstcount = bb_atax_B3_out_unnamed_atax3_atax_avm_burstcount;

    // out_unnamed_atax3_atax_avm_byteenable(GPOUT,138)
    assign out_unnamed_atax3_atax_avm_byteenable = bb_atax_B3_out_unnamed_atax3_atax_avm_byteenable;

    // out_unnamed_atax3_atax_avm_enable(GPOUT,139)
    assign out_unnamed_atax3_atax_avm_enable = bb_atax_B3_out_unnamed_atax3_atax_avm_enable;

    // out_unnamed_atax3_atax_avm_read(GPOUT,140)
    assign out_unnamed_atax3_atax_avm_read = bb_atax_B3_out_unnamed_atax3_atax_avm_read;

    // out_unnamed_atax3_atax_avm_write(GPOUT,141)
    assign out_unnamed_atax3_atax_avm_write = bb_atax_B3_out_unnamed_atax3_atax_avm_write;

    // out_unnamed_atax3_atax_avm_writedata(GPOUT,142)
    assign out_unnamed_atax3_atax_avm_writedata = bb_atax_B3_out_unnamed_atax3_atax_avm_writedata;

    // out_unnamed_atax5_atax_avm_address(GPOUT,143)
    assign out_unnamed_atax5_atax_avm_address = bb_atax_B5_out_unnamed_atax5_atax_avm_address;

    // out_unnamed_atax5_atax_avm_burstcount(GPOUT,144)
    assign out_unnamed_atax5_atax_avm_burstcount = bb_atax_B5_out_unnamed_atax5_atax_avm_burstcount;

    // out_unnamed_atax5_atax_avm_byteenable(GPOUT,145)
    assign out_unnamed_atax5_atax_avm_byteenable = bb_atax_B5_out_unnamed_atax5_atax_avm_byteenable;

    // out_unnamed_atax5_atax_avm_enable(GPOUT,146)
    assign out_unnamed_atax5_atax_avm_enable = bb_atax_B5_out_unnamed_atax5_atax_avm_enable;

    // out_unnamed_atax5_atax_avm_read(GPOUT,147)
    assign out_unnamed_atax5_atax_avm_read = bb_atax_B5_out_unnamed_atax5_atax_avm_read;

    // out_unnamed_atax5_atax_avm_write(GPOUT,148)
    assign out_unnamed_atax5_atax_avm_write = bb_atax_B5_out_unnamed_atax5_atax_avm_write;

    // out_unnamed_atax5_atax_avm_writedata(GPOUT,149)
    assign out_unnamed_atax5_atax_avm_writedata = bb_atax_B5_out_unnamed_atax5_atax_avm_writedata;

    // out_unnamed_atax6_atax_avm_address(GPOUT,150)
    assign out_unnamed_atax6_atax_avm_address = bb_atax_B5_out_unnamed_atax6_atax_avm_address;

    // out_unnamed_atax6_atax_avm_burstcount(GPOUT,151)
    assign out_unnamed_atax6_atax_avm_burstcount = bb_atax_B5_out_unnamed_atax6_atax_avm_burstcount;

    // out_unnamed_atax6_atax_avm_byteenable(GPOUT,152)
    assign out_unnamed_atax6_atax_avm_byteenable = bb_atax_B5_out_unnamed_atax6_atax_avm_byteenable;

    // out_unnamed_atax6_atax_avm_enable(GPOUT,153)
    assign out_unnamed_atax6_atax_avm_enable = bb_atax_B5_out_unnamed_atax6_atax_avm_enable;

    // out_unnamed_atax6_atax_avm_read(GPOUT,154)
    assign out_unnamed_atax6_atax_avm_read = bb_atax_B5_out_unnamed_atax6_atax_avm_read;

    // out_unnamed_atax6_atax_avm_write(GPOUT,155)
    assign out_unnamed_atax6_atax_avm_write = bb_atax_B5_out_unnamed_atax6_atax_avm_write;

    // out_unnamed_atax6_atax_avm_writedata(GPOUT,156)
    assign out_unnamed_atax6_atax_avm_writedata = bb_atax_B5_out_unnamed_atax6_atax_avm_writedata;

    // out_unnamed_atax7_atax_avm_address(GPOUT,157)
    assign out_unnamed_atax7_atax_avm_address = bb_atax_B7_out_unnamed_atax7_atax_avm_address;

    // out_unnamed_atax7_atax_avm_burstcount(GPOUT,158)
    assign out_unnamed_atax7_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax7_atax_avm_burstcount;

    // out_unnamed_atax7_atax_avm_byteenable(GPOUT,159)
    assign out_unnamed_atax7_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax7_atax_avm_byteenable;

    // out_unnamed_atax7_atax_avm_enable(GPOUT,160)
    assign out_unnamed_atax7_atax_avm_enable = bb_atax_B7_out_unnamed_atax7_atax_avm_enable;

    // out_unnamed_atax7_atax_avm_read(GPOUT,161)
    assign out_unnamed_atax7_atax_avm_read = bb_atax_B7_out_unnamed_atax7_atax_avm_read;

    // out_unnamed_atax7_atax_avm_write(GPOUT,162)
    assign out_unnamed_atax7_atax_avm_write = bb_atax_B7_out_unnamed_atax7_atax_avm_write;

    // out_unnamed_atax7_atax_avm_writedata(GPOUT,163)
    assign out_unnamed_atax7_atax_avm_writedata = bb_atax_B7_out_unnamed_atax7_atax_avm_writedata;

    // out_unnamed_atax8_atax_avm_address(GPOUT,164)
    assign out_unnamed_atax8_atax_avm_address = bb_atax_B7_out_unnamed_atax8_atax_avm_address;

    // out_unnamed_atax8_atax_avm_burstcount(GPOUT,165)
    assign out_unnamed_atax8_atax_avm_burstcount = bb_atax_B7_out_unnamed_atax8_atax_avm_burstcount;

    // out_unnamed_atax8_atax_avm_byteenable(GPOUT,166)
    assign out_unnamed_atax8_atax_avm_byteenable = bb_atax_B7_out_unnamed_atax8_atax_avm_byteenable;

    // out_unnamed_atax8_atax_avm_enable(GPOUT,167)
    assign out_unnamed_atax8_atax_avm_enable = bb_atax_B7_out_unnamed_atax8_atax_avm_enable;

    // out_unnamed_atax8_atax_avm_read(GPOUT,168)
    assign out_unnamed_atax8_atax_avm_read = bb_atax_B7_out_unnamed_atax8_atax_avm_read;

    // out_unnamed_atax8_atax_avm_write(GPOUT,169)
    assign out_unnamed_atax8_atax_avm_write = bb_atax_B7_out_unnamed_atax8_atax_avm_write;

    // out_unnamed_atax8_atax_avm_writedata(GPOUT,170)
    assign out_unnamed_atax8_atax_avm_writedata = bb_atax_B7_out_unnamed_atax8_atax_avm_writedata;

    // out_valid_out(GPOUT,171)
    assign out_valid_out = GND_q;

endmodule
