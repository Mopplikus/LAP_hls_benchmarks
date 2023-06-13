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
// SystemVerilog created on Tue Jun 13 01:54:01 2023


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
    input wire [31:0] in_memdep_2_atax_avm_readdata,
    input wire [0:0] in_memdep_2_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_2_atax_avm_waitrequest,
    input wire [0:0] in_memdep_2_atax_avm_writeack,
    input wire [31:0] in_memdep_atax_avm_readdata,
    input wire [0:0] in_memdep_atax_avm_readdatavalid,
    input wire [0:0] in_memdep_atax_avm_waitrequest,
    input wire [0:0] in_memdep_atax_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_atax12_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax12_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax12_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax12_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax13_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax13_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax13_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax13_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax15_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax15_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax15_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax15_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax17_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax17_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax17_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax17_atax_avm_writeack,
    input wire [31:0] in_unnamed_atax7_atax_avm_readdata,
    input wire [0:0] in_unnamed_atax7_atax_avm_readdatavalid,
    input wire [0:0] in_unnamed_atax7_atax_avm_waitrequest,
    input wire [0:0] in_unnamed_atax7_atax_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_atax_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_atax_o_fifoready,
    output wire [0:0] out_iowr_bl_return_atax_o_fifodata,
    output wire [0:0] out_iowr_bl_return_atax_o_fifovalid,
    output wire [31:0] out_memdep_2_atax_avm_address,
    output wire [0:0] out_memdep_2_atax_avm_burstcount,
    output wire [3:0] out_memdep_2_atax_avm_byteenable,
    output wire [0:0] out_memdep_2_atax_avm_enable,
    output wire [0:0] out_memdep_2_atax_avm_read,
    output wire [0:0] out_memdep_2_atax_avm_write,
    output wire [31:0] out_memdep_2_atax_avm_writedata,
    output wire [31:0] out_memdep_atax_avm_address,
    output wire [0:0] out_memdep_atax_avm_burstcount,
    output wire [3:0] out_memdep_atax_avm_byteenable,
    output wire [0:0] out_memdep_atax_avm_enable,
    output wire [0:0] out_memdep_atax_avm_read,
    output wire [0:0] out_memdep_atax_avm_write,
    output wire [31:0] out_memdep_atax_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_2,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_atax12_atax_avm_address,
    output wire [0:0] out_unnamed_atax12_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax12_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax12_atax_avm_enable,
    output wire [0:0] out_unnamed_atax12_atax_avm_read,
    output wire [0:0] out_unnamed_atax12_atax_avm_write,
    output wire [31:0] out_unnamed_atax12_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax13_atax_avm_address,
    output wire [0:0] out_unnamed_atax13_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax13_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax13_atax_avm_enable,
    output wire [0:0] out_unnamed_atax13_atax_avm_read,
    output wire [0:0] out_unnamed_atax13_atax_avm_write,
    output wire [31:0] out_unnamed_atax13_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax15_atax_avm_address,
    output wire [0:0] out_unnamed_atax15_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax15_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax15_atax_avm_enable,
    output wire [0:0] out_unnamed_atax15_atax_avm_read,
    output wire [0:0] out_unnamed_atax15_atax_avm_write,
    output wire [31:0] out_unnamed_atax15_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax17_atax_avm_address,
    output wire [0:0] out_unnamed_atax17_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax17_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax17_atax_avm_enable,
    output wire [0:0] out_unnamed_atax17_atax_avm_read,
    output wire [0:0] out_unnamed_atax17_atax_avm_write,
    output wire [31:0] out_unnamed_atax17_atax_avm_writedata,
    output wire [31:0] out_unnamed_atax7_atax_avm_address,
    output wire [0:0] out_unnamed_atax7_atax_avm_burstcount,
    output wire [3:0] out_unnamed_atax7_atax_avm_byteenable,
    output wire [0:0] out_unnamed_atax7_atax_avm_enable,
    output wire [0:0] out_unnamed_atax7_atax_avm_read,
    output wire [0:0] out_unnamed_atax7_atax_avm_write,
    output wire [31:0] out_unnamed_atax7_atax_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_atax_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B2_sr_1_aunroll_x_out_o_valid;
    wire [63:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_atax_B3_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B3_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B5_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_atax_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_atax_B7_sr_0_aunroll_x_out_o_valid;
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
    wire [0:0] atax_B2_x_i_capture;
    wire atax_B2_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B2_x_i_clear;
    wire atax_B2_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B2_x_i_enable;
    wire atax_B2_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B2_x_i_shift;
    wire atax_B2_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B2_x_i_stall_pred;
    wire atax_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B2_x_i_stall_succ;
    wire atax_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B2_x_i_valid_loop;
    wire atax_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B2_x_i_valid_pred;
    wire atax_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B2_x_i_valid_succ;
    wire atax_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] atax_B4_x_i_capture;
    wire atax_B4_x_i_capture_bitsignaltemp;
    wire [0:0] atax_B4_x_i_clear;
    wire atax_B4_x_i_clear_bitsignaltemp;
    wire [0:0] atax_B4_x_i_enable;
    wire atax_B4_x_i_enable_bitsignaltemp;
    wire [0:0] atax_B4_x_i_shift;
    wire atax_B4_x_i_shift_bitsignaltemp;
    wire [0:0] atax_B4_x_i_stall_pred;
    wire atax_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] atax_B4_x_i_stall_succ;
    wire atax_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] atax_B4_x_i_valid_loop;
    wire atax_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] atax_B4_x_i_valid_pred;
    wire atax_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] atax_B4_x_i_valid_succ;
    wire atax_B4_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] bb_atax_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_atax_B1_start_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;
    wire [0:0] bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;
    wire [0:0] bb_atax_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_atax_B1_start_out_stall_out_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_0;
    wire [0:0] bb_atax_B1_start_out_valid_in_1;
    wire [0:0] bb_atax_B1_start_out_valid_out_0;
    wire [0:0] bb_atax_B2_out_c0_exe189;
    wire [0:0] bb_atax_B2_out_c0_exe2;
    wire [63:0] bb_atax_B2_out_c1_exe1;
    wire [31:0] bb_atax_B2_out_c1_exe2;
    wire [0:0] bb_atax_B2_out_exiting_stall_out;
    wire [0:0] bb_atax_B2_out_exiting_valid_out;
    wire [0:0] bb_atax_B2_out_feedback_stall_out_12;
    wire [0:0] bb_atax_B2_out_feedback_stall_out_13;
    wire [0:0] bb_atax_B2_out_memdep_phi3_pop13;
    wire [0:0] bb_atax_B2_out_memdep_phi_pop12;
    wire [0:0] bb_atax_B2_out_pipeline_valid_out;
    wire [0:0] bb_atax_B2_out_stall_out_0;
    wire [0:0] bb_atax_B2_out_stall_out_1;
    wire [31:0] bb_atax_B2_out_unnamed_atax7;
    wire [31:0] bb_atax_B2_out_unnamed_atax7_atax_avm_address;
    wire [0:0] bb_atax_B2_out_unnamed_atax7_atax_avm_burstcount;
    wire [3:0] bb_atax_B2_out_unnamed_atax7_atax_avm_byteenable;
    wire [0:0] bb_atax_B2_out_unnamed_atax7_atax_avm_enable;
    wire [0:0] bb_atax_B2_out_unnamed_atax7_atax_avm_read;
    wire [0:0] bb_atax_B2_out_unnamed_atax7_atax_avm_write;
    wire [31:0] bb_atax_B2_out_unnamed_atax7_atax_avm_writedata;
    wire [0:0] bb_atax_B2_out_valid_in_0;
    wire [0:0] bb_atax_B2_out_valid_in_1;
    wire [0:0] bb_atax_B2_out_valid_out_0;
    wire [63:0] bb_atax_B3_out_c0_exe105;
    wire [0:0] bb_atax_B3_out_c0_exe116;
    wire [0:0] bb_atax_B3_out_c0_exe127;
    wire [63:0] bb_atax_B3_out_c0_exe3991;
    wire [31:0] bb_atax_B3_out_c0_exe42;
    wire [0:0] bb_atax_B3_out_c0_exe63;
    wire [0:0] bb_atax_B3_out_c0_exe74;
    wire [31:0] bb_atax_B3_out_c1_exe11078;
    wire [0:0] bb_atax_B3_out_stall_out_0;
    wire [0:0] bb_atax_B3_out_valid_out_0;
    wire [63:0] bb_atax_B4_out_c0_exe10;
    wire [0:0] bb_atax_B4_out_c0_exe11;
    wire [0:0] bb_atax_B4_out_c0_exe12;
    wire [63:0] bb_atax_B4_out_c0_exe399;
    wire [31:0] bb_atax_B4_out_c0_exe4;
    wire [0:0] bb_atax_B4_out_c0_exe6;
    wire [0:0] bb_atax_B4_out_c0_exe7;
    wire [31:0] bb_atax_B4_out_c1_exe1107;
    wire [0:0] bb_atax_B4_out_exiting_stall_out;
    wire [0:0] bb_atax_B4_out_exiting_valid_out;
    wire [0:0] bb_atax_B4_out_pipeline_valid_out;
    wire [0:0] bb_atax_B4_out_stall_in_0;
    wire [0:0] bb_atax_B4_out_stall_out_0;
    wire [0:0] bb_atax_B4_out_stall_out_1;
    wire [31:0] bb_atax_B4_out_unnamed_atax12_atax_avm_address;
    wire [0:0] bb_atax_B4_out_unnamed_atax12_atax_avm_burstcount;
    wire [3:0] bb_atax_B4_out_unnamed_atax12_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_out_unnamed_atax12_atax_avm_enable;
    wire [0:0] bb_atax_B4_out_unnamed_atax12_atax_avm_read;
    wire [0:0] bb_atax_B4_out_unnamed_atax12_atax_avm_write;
    wire [31:0] bb_atax_B4_out_unnamed_atax12_atax_avm_writedata;
    wire [31:0] bb_atax_B4_out_unnamed_atax13_atax_avm_address;
    wire [0:0] bb_atax_B4_out_unnamed_atax13_atax_avm_burstcount;
    wire [3:0] bb_atax_B4_out_unnamed_atax13_atax_avm_byteenable;
    wire [0:0] bb_atax_B4_out_unnamed_atax13_atax_avm_enable;
    wire [0:0] bb_atax_B4_out_unnamed_atax13_atax_avm_read;
    wire [0:0] bb_atax_B4_out_unnamed_atax13_atax_avm_write;
    wire [31:0] bb_atax_B4_out_unnamed_atax13_atax_avm_writedata;
    wire [0:0] bb_atax_B4_out_valid_in_0;
    wire [0:0] bb_atax_B4_out_valid_in_1;
    wire [0:0] bb_atax_B4_out_valid_out_0;
    wire [31:0] bb_atax_B5_out_add758_pop37;
    wire [0:0] bb_atax_B5_out_exitcond1251_pop32;
    wire [0:0] bb_atax_B5_out_exiting_stall_out;
    wire [0:0] bb_atax_B5_out_exiting_valid_out;
    wire [0:0] bb_atax_B5_out_lsu_memdep_o_active;
    wire [63:0] bb_atax_B5_out_mPtr_bitcast_index8846_pop30;
    wire [0:0] bb_atax_B5_out_memdep;
    wire [31:0] bb_atax_B5_out_memdep_atax_avm_address;
    wire [0:0] bb_atax_B5_out_memdep_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_out_memdep_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_out_memdep_atax_avm_enable;
    wire [0:0] bb_atax_B5_out_memdep_atax_avm_read;
    wire [0:0] bb_atax_B5_out_memdep_atax_avm_write;
    wire [31:0] bb_atax_B5_out_memdep_atax_avm_writedata;
    wire [0:0] bb_atax_B5_out_notcmp3553_pop33;
    wire [0:0] bb_atax_B5_out_pipeline_valid_out;
    wire [0:0] bb_atax_B5_out_stall_in_0;
    wire [0:0] bb_atax_B5_out_stall_out_0;
    wire [0:0] bb_atax_B5_out_stall_out_1;
    wire [31:0] bb_atax_B5_out_unnamed_atax15_atax_avm_address;
    wire [0:0] bb_atax_B5_out_unnamed_atax15_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_out_unnamed_atax15_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_out_unnamed_atax15_atax_avm_enable;
    wire [0:0] bb_atax_B5_out_unnamed_atax15_atax_avm_read;
    wire [0:0] bb_atax_B5_out_unnamed_atax15_atax_avm_write;
    wire [31:0] bb_atax_B5_out_unnamed_atax15_atax_avm_writedata;
    wire [31:0] bb_atax_B5_out_unnamed_atax17_atax_avm_address;
    wire [0:0] bb_atax_B5_out_unnamed_atax17_atax_avm_burstcount;
    wire [3:0] bb_atax_B5_out_unnamed_atax17_atax_avm_byteenable;
    wire [0:0] bb_atax_B5_out_unnamed_atax17_atax_avm_enable;
    wire [0:0] bb_atax_B5_out_unnamed_atax17_atax_avm_read;
    wire [0:0] bb_atax_B5_out_unnamed_atax17_atax_avm_write;
    wire [31:0] bb_atax_B5_out_unnamed_atax17_atax_avm_writedata;
    wire [0:0] bb_atax_B5_out_valid_in_0;
    wire [0:0] bb_atax_B5_out_valid_in_1;
    wire [0:0] bb_atax_B5_out_valid_out_0;
    wire [0:0] bb_atax_B6_out_feedback_out_12;
    wire [0:0] bb_atax_B6_out_feedback_out_13;
    wire [0:0] bb_atax_B6_out_feedback_valid_out_12;
    wire [0:0] bb_atax_B6_out_feedback_valid_out_13;
    wire [0:0] bb_atax_B6_out_lsu_memdep_2_o_active;
    wire [31:0] bb_atax_B6_out_memdep_2_atax_avm_address;
    wire [0:0] bb_atax_B6_out_memdep_2_atax_avm_burstcount;
    wire [3:0] bb_atax_B6_out_memdep_2_atax_avm_byteenable;
    wire [0:0] bb_atax_B6_out_memdep_2_atax_avm_enable;
    wire [0:0] bb_atax_B6_out_memdep_2_atax_avm_read;
    wire [0:0] bb_atax_B6_out_memdep_2_atax_avm_write;
    wire [31:0] bb_atax_B6_out_memdep_2_atax_avm_writedata;
    wire [0:0] bb_atax_B6_out_stall_in_0;
    wire [0:0] bb_atax_B6_out_stall_out_0;
    wire [0:0] bb_atax_B6_out_valid_out_0;
    wire [0:0] bb_atax_B7_out_feedback_out_1;
    wire [0:0] bb_atax_B7_out_feedback_valid_out_1;
    wire [0:0] bb_atax_B7_out_iowr_bl_return_atax_o_fifodata;
    wire [0:0] bb_atax_B7_out_iowr_bl_return_atax_o_fifovalid;
    wire [0:0] bb_atax_B7_out_stall_in_0;
    wire [0:0] bb_atax_B7_out_stall_out_0;
    wire [0:0] bb_atax_B7_out_valid_out_0;
    wire [1:0] c_i2_063_q;
    wire [63:0] c_i32_addrspace_1025_undef22_q;
    wire [31:0] c_i32_undef26_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_atax2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_atax2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_atax1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_atax1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_atax4_sr_out_o_valid;
    wire [0:0] loop_limiter_atax0_out_o_stall;
    wire [0:0] loop_limiter_atax0_out_o_valid;
    wire [0:0] loop_limiter_atax1_out_o_stall;
    wire [0:0] loop_limiter_atax1_out_o_valid;
    wire [0:0] loop_limiter_atax2_out_o_stall;
    wire [0:0] loop_limiter_atax2_out_o_valid;


    // c_i2_063(CONSTANT,52)
    assign c_i2_063_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo(BLACKBOX,68)
    atax_i_llvm_fpga_pipeline_keep_going41_1_valid_fifo thei_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo (
        .in_data_in(c_i2_063_q),
        .in_stall_in(bb_atax_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going41_atax1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo(BLACKBOX,66)
    atax_i_llvm_fpga_pipeline_keep_going37_2_valid_fifo thei_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo (
        .in_data_in(c_i2_063_q),
        .in_stall_in(bb_atax_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going37_atax2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo(BLACKBOX,64)
    atax_i_llvm_fpga_pipeline_keep_going23_6_valid_fifo thei_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo (
        .in_data_in(c_i2_063_q),
        .in_stall_in(bb_atax_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going23_atax6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6_sr_0_aunroll_x(BLACKBOX,6)
    atax_bb_B6_sr_0 thebb_atax_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_atax_B5_out_add758_pop37),
        .in_i_data_1_tpl(bb_atax_B5_out_memdep),
        .in_i_data_2_tpl(bb_atax_B5_out_mPtr_bitcast_index8846_pop30),
        .in_i_data_3_tpl(bb_atax_B5_out_exitcond1251_pop32),
        .in_i_data_4_tpl(bb_atax_B5_out_notcmp3553_pop33),
        .in_i_stall(bb_atax_B6_out_stall_out_0),
        .in_i_valid(bb_atax_B5_out_valid_out_0),
        .out_o_data_0_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_stall(bb_atax_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_atax4_sr(BLACKBOX,69)
    atax_i_llvm_fpga_pipeline_keep_going_4_sr thei_llvm_fpga_pipeline_keep_going_atax4_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_atax_B5_out_stall_out_0),
        .in_i_valid(bb_atax_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_atax4_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_atax4_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5(BLACKBOX,17)
    atax_bb_B5 thebb_atax_B5 (
        .in_add773_0(c_i32_undef26_q),
        .in_add773_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_exitcond1250_pop2277_0(GND_q),
        .in_exitcond1250_pop2277_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_3_0(bb_atax_B1_start_out_intel_reserved_ffwd_3_0),
        .in_mPtr_bitcast778965_0(c_i32_addrspace_1025_undef22_q),
        .in_mPtr_bitcast778965_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mPtr_bitcast_index8845_pop1975_0(c_i32_addrspace_1025_undef22_q),
        .in_mPtr_bitcast_index8845_pop1975_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_atax_avm_readdata(in_memdep_atax_avm_readdata),
        .in_memdep_atax_avm_readdatavalid(in_memdep_atax_avm_readdatavalid),
        .in_memdep_atax_avm_waitrequest(in_memdep_atax_avm_waitrequest),
        .in_memdep_atax_avm_writeack(in_memdep_atax_avm_writeack),
        .in_memdep_phi3_or71_0(GND_q),
        .in_memdep_phi3_or71_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi3_pop1354_pop2469_0(GND_q),
        .in_memdep_phi3_pop1354_pop2469_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_mul_add1448_pop2167_0(c_i32_undef26_q),
        .in_mul_add1448_pop2167_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp3552_pop2379_0(GND_q),
        .in_notcmp3552_pop2379_1(bb_atax_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_atax4_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax15_atax_avm_readdata(in_unnamed_atax15_atax_avm_readdata),
        .in_unnamed_atax15_atax_avm_readdatavalid(in_unnamed_atax15_atax_avm_readdatavalid),
        .in_unnamed_atax15_atax_avm_waitrequest(in_unnamed_atax15_atax_avm_waitrequest),
        .in_unnamed_atax15_atax_avm_writeack(in_unnamed_atax15_atax_avm_writeack),
        .in_unnamed_atax17_atax_avm_readdata(in_unnamed_atax17_atax_avm_readdata),
        .in_unnamed_atax17_atax_avm_readdatavalid(in_unnamed_atax17_atax_avm_readdatavalid),
        .in_unnamed_atax17_atax_avm_waitrequest(in_unnamed_atax17_atax_avm_waitrequest),
        .in_unnamed_atax17_atax_avm_writeack(in_unnamed_atax17_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_atax4_sr_out_o_valid),
        .in_valid_in_1(bb_atax_B5_sr_1_aunroll_x_out_o_valid),
        .out_add758_pop37(bb_atax_B5_out_add758_pop37),
        .out_exitcond1251_pop32(bb_atax_B5_out_exitcond1251_pop32),
        .out_exiting_stall_out(bb_atax_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B5_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_atax_B5_out_lsu_memdep_o_active),
        .out_mPtr_bitcast_index8846_pop30(bb_atax_B5_out_mPtr_bitcast_index8846_pop30),
        .out_memdep(bb_atax_B5_out_memdep),
        .out_memdep_atax_avm_address(bb_atax_B5_out_memdep_atax_avm_address),
        .out_memdep_atax_avm_burstcount(bb_atax_B5_out_memdep_atax_avm_burstcount),
        .out_memdep_atax_avm_byteenable(bb_atax_B5_out_memdep_atax_avm_byteenable),
        .out_memdep_atax_avm_enable(bb_atax_B5_out_memdep_atax_avm_enable),
        .out_memdep_atax_avm_read(bb_atax_B5_out_memdep_atax_avm_read),
        .out_memdep_atax_avm_write(bb_atax_B5_out_memdep_atax_avm_write),
        .out_memdep_atax_avm_writedata(bb_atax_B5_out_memdep_atax_avm_writedata),
        .out_notcmp3553_pop33(bb_atax_B5_out_notcmp3553_pop33),
        .out_pipeline_valid_out(bb_atax_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B5_out_stall_in_0),
        .out_stall_out_0(bb_atax_B5_out_stall_out_0),
        .out_stall_out_1(bb_atax_B5_out_stall_out_1),
        .out_unnamed_atax15_atax_avm_address(bb_atax_B5_out_unnamed_atax15_atax_avm_address),
        .out_unnamed_atax15_atax_avm_burstcount(bb_atax_B5_out_unnamed_atax15_atax_avm_burstcount),
        .out_unnamed_atax15_atax_avm_byteenable(bb_atax_B5_out_unnamed_atax15_atax_avm_byteenable),
        .out_unnamed_atax15_atax_avm_enable(bb_atax_B5_out_unnamed_atax15_atax_avm_enable),
        .out_unnamed_atax15_atax_avm_read(bb_atax_B5_out_unnamed_atax15_atax_avm_read),
        .out_unnamed_atax15_atax_avm_write(bb_atax_B5_out_unnamed_atax15_atax_avm_write),
        .out_unnamed_atax15_atax_avm_writedata(bb_atax_B5_out_unnamed_atax15_atax_avm_writedata),
        .out_unnamed_atax17_atax_avm_address(bb_atax_B5_out_unnamed_atax17_atax_avm_address),
        .out_unnamed_atax17_atax_avm_burstcount(bb_atax_B5_out_unnamed_atax17_atax_avm_burstcount),
        .out_unnamed_atax17_atax_avm_byteenable(bb_atax_B5_out_unnamed_atax17_atax_avm_byteenable),
        .out_unnamed_atax17_atax_avm_enable(bb_atax_B5_out_unnamed_atax17_atax_avm_enable),
        .out_unnamed_atax17_atax_avm_read(bb_atax_B5_out_unnamed_atax17_atax_avm_read),
        .out_unnamed_atax17_atax_avm_write(bb_atax_B5_out_unnamed_atax17_atax_avm_write),
        .out_unnamed_atax17_atax_avm_writedata(bb_atax_B5_out_unnamed_atax17_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B5_out_valid_in_0),
        .out_valid_in_1(bb_atax_B5_out_valid_in_1),
        .out_valid_out_0(bb_atax_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B5_sr_1_aunroll_x(BLACKBOX,5)
    atax_bb_B5_sr_1 thebb_atax_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B3_out_c0_exe3991),
        .in_i_data_2_tpl(bb_atax_B3_out_c0_exe42),
        .in_i_data_3_tpl(bb_atax_B3_out_c0_exe63),
        .in_i_data_4_tpl(bb_atax_B3_out_c0_exe74),
        .in_i_data_5_tpl(bb_atax_B3_out_c1_exe11078),
        .in_i_data_6_tpl(bb_atax_B3_out_c0_exe105),
        .in_i_data_7_tpl(bb_atax_B3_out_c0_exe116),
        .in_i_data_8_tpl(bb_atax_B3_out_c0_exe127),
        .in_i_stall(bb_atax_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_atax2_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_atax_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_stall(bb_atax_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax2(BLACKBOX,112)
    atax_loop_limiter_2 theloop_limiter_atax2 (
        .in_i_stall(bb_atax_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B5_out_exiting_stall_out),
        .in_i_valid(bb_atax_B3_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax2_out_o_stall),
        .out_o_valid(loop_limiter_atax2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3(BLACKBOX,15)
    atax_bb_B3 thebb_atax_B3 (
        .in_c0_exe105_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe116_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe127_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe3991_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe63_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe74_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c1_exe11078_0(bb_atax_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_stall_in_0(loop_limiter_atax2_out_o_stall),
        .in_valid_in_0(bb_atax_B3_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe105(bb_atax_B3_out_c0_exe105),
        .out_c0_exe116(bb_atax_B3_out_c0_exe116),
        .out_c0_exe127(bb_atax_B3_out_c0_exe127),
        .out_c0_exe3991(bb_atax_B3_out_c0_exe3991),
        .out_c0_exe42(bb_atax_B3_out_c0_exe42),
        .out_c0_exe63(bb_atax_B3_out_c0_exe63),
        .out_c0_exe74(bb_atax_B3_out_c0_exe74),
        .out_c1_exe11078(bb_atax_B3_out_c1_exe11078),
        .out_stall_out_0(bb_atax_B3_out_stall_out_0),
        .out_valid_out_0(bb_atax_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B3_sr_0_aunroll_x(BLACKBOX,3)
    atax_bb_B3_sr_0 thebb_atax_B3_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_atax_B4_out_c0_exe399),
        .in_i_data_1_tpl(bb_atax_B4_out_c0_exe4),
        .in_i_data_2_tpl(bb_atax_B4_out_c0_exe6),
        .in_i_data_3_tpl(bb_atax_B4_out_c0_exe7),
        .in_i_data_4_tpl(bb_atax_B4_out_c0_exe10),
        .in_i_data_5_tpl(bb_atax_B4_out_c0_exe11),
        .in_i_data_6_tpl(bb_atax_B4_out_c0_exe12),
        .in_i_data_7_tpl(bb_atax_B4_out_c1_exe1107),
        .in_i_stall(bb_atax_B3_out_stall_out_0),
        .in_i_valid(bb_atax_B4_out_valid_out_0),
        .out_o_data_0_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_atax_B3_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_stall(bb_atax_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B3_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going23_atax6_sr(BLACKBOX,63)
    atax_i_llvm_fpga_pipeline_keep_going23_6_sr thei_llvm_fpga_pipeline_keep_going23_atax6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going23_atax6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going23_atax6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef26(CONSTANT,58)
    assign c_i32_undef26_q = $unsigned(32'b00000000000000000000000000000000);

    // c_i32_addrspace_1025_undef22(CONSTANT,55)
    assign c_i32_addrspace_1025_undef22_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_atax_B4(BLACKBOX,16)
    atax_bb_B4 thebb_atax_B4 (
        .in_exitcond1262_0(GND_q),
        .in_exitcond1262_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked20_0(GND_q),
        .in_forked20_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_atax_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_2_0(bb_atax_B1_start_out_intel_reserved_ffwd_2_0),
        .in_mPtr_bitcast_index8859_0(c_i32_addrspace_1025_undef22_q),
        .in_mPtr_bitcast_index8859_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_phi3_pop1364_0(GND_q),
        .in_memdep_phi3_pop1364_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi_pop1260_0(GND_q),
        .in_memdep_phi_pop1260_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_mul_add1461_0(c_i32_undef26_q),
        .in_mul_add1461_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp3563_0(GND_q),
        .in_notcmp3563_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going23_atax6_sr_out_o_stall),
        .in_stall_in_0(bb_atax_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_atax12_atax_avm_readdata(in_unnamed_atax12_atax_avm_readdata),
        .in_unnamed_atax12_atax_avm_readdatavalid(in_unnamed_atax12_atax_avm_readdatavalid),
        .in_unnamed_atax12_atax_avm_waitrequest(in_unnamed_atax12_atax_avm_waitrequest),
        .in_unnamed_atax12_atax_avm_writeack(in_unnamed_atax12_atax_avm_writeack),
        .in_unnamed_atax13_atax_avm_readdata(in_unnamed_atax13_atax_avm_readdata),
        .in_unnamed_atax13_atax_avm_readdatavalid(in_unnamed_atax13_atax_avm_readdatavalid),
        .in_unnamed_atax13_atax_avm_waitrequest(in_unnamed_atax13_atax_avm_waitrequest),
        .in_unnamed_atax13_atax_avm_writeack(in_unnamed_atax13_atax_avm_writeack),
        .in_unnamed_atax9_0(c_i32_undef26_q),
        .in_unnamed_atax9_1(bb_atax_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going23_atax6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_atax_B4_out_c0_exe10),
        .out_c0_exe11(bb_atax_B4_out_c0_exe11),
        .out_c0_exe12(bb_atax_B4_out_c0_exe12),
        .out_c0_exe399(bb_atax_B4_out_c0_exe399),
        .out_c0_exe4(bb_atax_B4_out_c0_exe4),
        .out_c0_exe6(bb_atax_B4_out_c0_exe6),
        .out_c0_exe7(bb_atax_B4_out_c0_exe7),
        .out_c1_exe1107(bb_atax_B4_out_c1_exe1107),
        .out_exiting_stall_out(bb_atax_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_atax_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_atax_B4_out_stall_in_0),
        .out_stall_out_0(bb_atax_B4_out_stall_out_0),
        .out_stall_out_1(bb_atax_B4_out_stall_out_1),
        .out_unnamed_atax12_atax_avm_address(bb_atax_B4_out_unnamed_atax12_atax_avm_address),
        .out_unnamed_atax12_atax_avm_burstcount(bb_atax_B4_out_unnamed_atax12_atax_avm_burstcount),
        .out_unnamed_atax12_atax_avm_byteenable(bb_atax_B4_out_unnamed_atax12_atax_avm_byteenable),
        .out_unnamed_atax12_atax_avm_enable(bb_atax_B4_out_unnamed_atax12_atax_avm_enable),
        .out_unnamed_atax12_atax_avm_read(bb_atax_B4_out_unnamed_atax12_atax_avm_read),
        .out_unnamed_atax12_atax_avm_write(bb_atax_B4_out_unnamed_atax12_atax_avm_write),
        .out_unnamed_atax12_atax_avm_writedata(bb_atax_B4_out_unnamed_atax12_atax_avm_writedata),
        .out_unnamed_atax13_atax_avm_address(bb_atax_B4_out_unnamed_atax13_atax_avm_address),
        .out_unnamed_atax13_atax_avm_burstcount(bb_atax_B4_out_unnamed_atax13_atax_avm_burstcount),
        .out_unnamed_atax13_atax_avm_byteenable(bb_atax_B4_out_unnamed_atax13_atax_avm_byteenable),
        .out_unnamed_atax13_atax_avm_enable(bb_atax_B4_out_unnamed_atax13_atax_avm_enable),
        .out_unnamed_atax13_atax_avm_read(bb_atax_B4_out_unnamed_atax13_atax_avm_read),
        .out_unnamed_atax13_atax_avm_write(bb_atax_B4_out_unnamed_atax13_atax_avm_write),
        .out_unnamed_atax13_atax_avm_writedata(bb_atax_B4_out_unnamed_atax13_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B4_out_valid_in_0),
        .out_valid_in_1(bb_atax_B4_out_valid_in_1),
        .out_valid_out_0(bb_atax_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B4_sr_1_aunroll_x(BLACKBOX,4)
    atax_bb_B4_sr_1 thebb_atax_B4_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_atax_B2_out_c1_exe1),
        .in_i_data_2_tpl(bb_atax_B2_out_memdep_phi_pop12),
        .in_i_data_3_tpl(bb_atax_B2_out_unnamed_atax7),
        .in_i_data_4_tpl(bb_atax_B2_out_c1_exe2),
        .in_i_data_5_tpl(bb_atax_B2_out_c0_exe189),
        .in_i_data_6_tpl(bb_atax_B2_out_c0_exe2),
        .in_i_data_7_tpl(bb_atax_B2_out_memdep_phi3_pop13),
        .in_i_stall(bb_atax_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_atax1_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_atax_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B4_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax1(BLACKBOX,111)
    atax_loop_limiter_1 theloop_limiter_atax1 (
        .in_i_stall(bb_atax_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B4_out_exiting_stall_out),
        .in_i_valid(bb_atax_B2_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax1_out_o_stall),
        .out_o_valid(loop_limiter_atax1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going37_atax2_sr(BLACKBOX,65)
    atax_i_llvm_fpga_pipeline_keep_going37_2_sr thei_llvm_fpga_pipeline_keep_going37_atax2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going37_atax2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going37_atax2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7_sr_0_aunroll_x(BLACKBOX,7)
    atax_bb_B7_sr_0 thebb_atax_B7_sr_0_aunroll_x (
        .in_i_data_0_tpl(GND_q),
        .in_i_stall(bb_atax_B7_out_stall_out_0),
        .in_i_valid(bb_atax_B6_out_valid_out_0),
        .out_o_data_0_tpl(),
        .out_o_stall(bb_atax_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B7_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B6(BLACKBOX,18)
    atax_bb_B6 thebb_atax_B6 (
        .in_add758_pop379_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_exitcond1251_pop3212_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_12(bb_atax_B2_out_feedback_stall_out_12),
        .in_feedback_stall_in_13(bb_atax_B2_out_feedback_stall_out_13),
        .in_flush(in_start),
        .in_mPtr_bitcast_index8846_pop3011_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_memdep_10_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_memdep_2_atax_avm_readdata(in_memdep_2_atax_avm_readdata),
        .in_memdep_2_atax_avm_readdatavalid(in_memdep_2_atax_avm_readdatavalid),
        .in_memdep_2_atax_avm_waitrequest(in_memdep_2_atax_avm_waitrequest),
        .in_memdep_2_atax_avm_writeack(in_memdep_2_atax_avm_writeack),
        .in_notcmp3553_pop3313_0(bb_atax_B6_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_stall_in_0(bb_atax_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_atax_B6_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_12(bb_atax_B6_out_feedback_out_12),
        .out_feedback_out_13(bb_atax_B6_out_feedback_out_13),
        .out_feedback_valid_out_12(bb_atax_B6_out_feedback_valid_out_12),
        .out_feedback_valid_out_13(bb_atax_B6_out_feedback_valid_out_13),
        .out_lsu_memdep_2_o_active(bb_atax_B6_out_lsu_memdep_2_o_active),
        .out_memdep_2_atax_avm_address(bb_atax_B6_out_memdep_2_atax_avm_address),
        .out_memdep_2_atax_avm_burstcount(bb_atax_B6_out_memdep_2_atax_avm_burstcount),
        .out_memdep_2_atax_avm_byteenable(bb_atax_B6_out_memdep_2_atax_avm_byteenable),
        .out_memdep_2_atax_avm_enable(bb_atax_B6_out_memdep_2_atax_avm_enable),
        .out_memdep_2_atax_avm_read(bb_atax_B6_out_memdep_2_atax_avm_read),
        .out_memdep_2_atax_avm_write(bb_atax_B6_out_memdep_2_atax_avm_write),
        .out_memdep_2_atax_avm_writedata(bb_atax_B6_out_memdep_2_atax_avm_writedata),
        .out_stall_in_0(bb_atax_B6_out_stall_in_0),
        .out_stall_out_0(bb_atax_B6_out_stall_out_0),
        .out_valid_out_0(bb_atax_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2(BLACKBOX,14)
    atax_bb_B2 thebb_atax_B2 (
        .in_feedback_in_12(bb_atax_B6_out_feedback_out_12),
        .in_feedback_in_13(bb_atax_B6_out_feedback_out_13),
        .in_feedback_valid_in_12(bb_atax_B6_out_feedback_valid_out_12),
        .in_feedback_valid_in_13(bb_atax_B6_out_feedback_valid_out_13),
        .in_flush(in_start),
        .in_forked44_0(GND_q),
        .in_forked44_1(bb_atax_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_1_0(bb_atax_B1_start_out_intel_reserved_ffwd_1_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going37_atax2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax1_out_o_stall),
        .in_unnamed_atax7_atax_avm_readdata(in_unnamed_atax7_atax_avm_readdata),
        .in_unnamed_atax7_atax_avm_readdatavalid(in_unnamed_atax7_atax_avm_readdatavalid),
        .in_unnamed_atax7_atax_avm_waitrequest(in_unnamed_atax7_atax_avm_waitrequest),
        .in_unnamed_atax7_atax_avm_writeack(in_unnamed_atax7_atax_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going37_atax2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_atax_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe189(bb_atax_B2_out_c0_exe189),
        .out_c0_exe2(bb_atax_B2_out_c0_exe2),
        .out_c1_exe1(bb_atax_B2_out_c1_exe1),
        .out_c1_exe2(bb_atax_B2_out_c1_exe2),
        .out_exiting_stall_out(bb_atax_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_atax_B2_out_exiting_valid_out),
        .out_feedback_stall_out_12(bb_atax_B2_out_feedback_stall_out_12),
        .out_feedback_stall_out_13(bb_atax_B2_out_feedback_stall_out_13),
        .out_memdep_phi3_pop13(bb_atax_B2_out_memdep_phi3_pop13),
        .out_memdep_phi_pop12(bb_atax_B2_out_memdep_phi_pop12),
        .out_pipeline_valid_out(bb_atax_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B2_out_stall_out_0),
        .out_stall_out_1(bb_atax_B2_out_stall_out_1),
        .out_unnamed_atax7(bb_atax_B2_out_unnamed_atax7),
        .out_unnamed_atax7_atax_avm_address(bb_atax_B2_out_unnamed_atax7_atax_avm_address),
        .out_unnamed_atax7_atax_avm_burstcount(bb_atax_B2_out_unnamed_atax7_atax_avm_burstcount),
        .out_unnamed_atax7_atax_avm_byteenable(bb_atax_B2_out_unnamed_atax7_atax_avm_byteenable),
        .out_unnamed_atax7_atax_avm_enable(bb_atax_B2_out_unnamed_atax7_atax_avm_enable),
        .out_unnamed_atax7_atax_avm_read(bb_atax_B2_out_unnamed_atax7_atax_avm_read),
        .out_unnamed_atax7_atax_avm_write(bb_atax_B2_out_unnamed_atax7_atax_avm_write),
        .out_unnamed_atax7_atax_avm_writedata(bb_atax_B2_out_unnamed_atax7_atax_avm_writedata),
        .out_valid_in_0(bb_atax_B2_out_valid_in_0),
        .out_valid_in_1(bb_atax_B2_out_valid_in_1),
        .out_valid_out_0(bb_atax_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B2_sr_1_aunroll_x(BLACKBOX,2)
    atax_bb_B2_sr_1 thebb_atax_B2_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_stall(bb_atax_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_atax0_out_o_valid),
        .out_o_data_0_tpl(bb_atax_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_atax_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_atax_B2_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_atax0(BLACKBOX,110)
    atax_loop_limiter_0 theloop_limiter_atax0 (
        .in_i_stall(bb_atax_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_atax_B2_out_exiting_stall_out),
        .in_i_valid(bb_atax_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_atax_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_atax0_out_o_stall),
        .out_o_valid(loop_limiter_atax0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_atax1_sr(BLACKBOX,67)
    atax_i_llvm_fpga_pipeline_keep_going41_1_sr thei_llvm_fpga_pipeline_keep_going41_atax1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo_out_stall_out),
        .in_i_valid(bb_atax_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going41_atax1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going41_atax1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B1_start(BLACKBOX,13)
    atax_bb_B1_start thebb_atax_B1_start (
        .in_feedback_in_1(bb_atax_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_atax_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_atax_i_fifodata(in_iord_bl_call_atax_i_fifodata),
        .in_iord_bl_call_atax_i_fifovalid(in_iord_bl_call_atax_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going41_atax1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_atax0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going41_atax1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_atax_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_atax_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_atax_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_atax_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_atax_B1_start_out_intel_reserved_ffwd_3_0),
        .out_iord_bl_call_atax_o_fifoalmost_full(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full),
        .out_iord_bl_call_atax_o_fifoready(bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready),
        .out_pipeline_valid_out(bb_atax_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_atax_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_atax_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_atax_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_atax_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_atax_B7(BLACKBOX,19)
    atax_bb_B7 thebb_atax_B7 (
        .in_feedback_stall_in_1(bb_atax_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_atax_i_fifoready(in_iowr_bl_return_atax_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_atax_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_atax_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_atax_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_atax_o_fifodata(bb_atax_B7_out_iowr_bl_return_atax_o_fifodata),
        .out_iowr_bl_return_atax_o_fifovalid(bb_atax_B7_out_iowr_bl_return_atax_o_fifovalid),
        .out_stall_in_0(bb_atax_B7_out_stall_in_0),
        .out_stall_out_0(bb_atax_B7_out_stall_out_0),
        .out_valid_out_0(bb_atax_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // atax_B1_start_x(EXTIFACE,8)
    assign atax_B1_start_x_i_capture = GND_q;
    assign atax_B1_start_x_i_clear = GND_q;
    assign atax_B1_start_x_i_enable = VCC_q;
    assign atax_B1_start_x_i_shift = GND_q;
    assign atax_B1_start_x_i_stall_pred = GND_q;
    assign atax_B1_start_x_i_stall_succ = bb_atax_B7_out_stall_in_0;
    assign atax_B1_start_x_i_valid_loop = bb_atax_B1_start_out_valid_in_0;
    assign atax_B1_start_x_i_valid_pred = bb_atax_B1_start_out_valid_in_1;
    assign atax_B1_start_x_i_valid_succ = bb_atax_B7_out_valid_out_0;
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

    // atax_B2_x(EXTIFACE,9)
    assign atax_B2_x_i_capture = GND_q;
    assign atax_B2_x_i_clear = GND_q;
    assign atax_B2_x_i_enable = VCC_q;
    assign atax_B2_x_i_shift = GND_q;
    assign atax_B2_x_i_stall_pred = loop_limiter_atax0_out_o_stall;
    assign atax_B2_x_i_stall_succ = bb_atax_B6_out_stall_in_0;
    assign atax_B2_x_i_valid_loop = bb_atax_B2_out_valid_in_0;
    assign atax_B2_x_i_valid_pred = bb_atax_B2_out_valid_in_1;
    assign atax_B2_x_i_valid_succ = bb_atax_B6_out_valid_out_0;
    assign atax_B2_x_i_capture_bitsignaltemp = atax_B2_x_i_capture[0];
    assign atax_B2_x_i_clear_bitsignaltemp = atax_B2_x_i_clear[0];
    assign atax_B2_x_i_enable_bitsignaltemp = atax_B2_x_i_enable[0];
    assign atax_B2_x_i_shift_bitsignaltemp = atax_B2_x_i_shift[0];
    assign atax_B2_x_i_stall_pred_bitsignaltemp = atax_B2_x_i_stall_pred[0];
    assign atax_B2_x_i_stall_succ_bitsignaltemp = atax_B2_x_i_stall_succ[0];
    assign atax_B2_x_i_valid_loop_bitsignaltemp = atax_B2_x_i_valid_loop[0];
    assign atax_B2_x_i_valid_pred_bitsignaltemp = atax_B2_x_i_valid_pred[0];
    assign atax_B2_x_i_valid_succ_bitsignaltemp = atax_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B2")
    ) theatax_B2_x (
        .i_capture(atax_B2_x_i_capture_bitsignaltemp),
        .i_clear(atax_B2_x_i_clear_bitsignaltemp),
        .i_enable(atax_B2_x_i_enable_bitsignaltemp),
        .i_shift(atax_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B4_x(EXTIFACE,10)
    assign atax_B4_x_i_capture = GND_q;
    assign atax_B4_x_i_clear = GND_q;
    assign atax_B4_x_i_enable = VCC_q;
    assign atax_B4_x_i_shift = GND_q;
    assign atax_B4_x_i_stall_pred = loop_limiter_atax1_out_o_stall;
    assign atax_B4_x_i_stall_succ = bb_atax_B4_out_stall_in_0;
    assign atax_B4_x_i_valid_loop = bb_atax_B4_out_valid_in_0;
    assign atax_B4_x_i_valid_pred = bb_atax_B4_out_valid_in_1;
    assign atax_B4_x_i_valid_succ = bb_atax_B4_out_valid_out_0;
    assign atax_B4_x_i_capture_bitsignaltemp = atax_B4_x_i_capture[0];
    assign atax_B4_x_i_clear_bitsignaltemp = atax_B4_x_i_clear[0];
    assign atax_B4_x_i_enable_bitsignaltemp = atax_B4_x_i_enable[0];
    assign atax_B4_x_i_shift_bitsignaltemp = atax_B4_x_i_shift[0];
    assign atax_B4_x_i_stall_pred_bitsignaltemp = atax_B4_x_i_stall_pred[0];
    assign atax_B4_x_i_stall_succ_bitsignaltemp = atax_B4_x_i_stall_succ[0];
    assign atax_B4_x_i_valid_loop_bitsignaltemp = atax_B4_x_i_valid_loop[0];
    assign atax_B4_x_i_valid_pred_bitsignaltemp = atax_B4_x_i_valid_pred[0];
    assign atax_B4_x_i_valid_succ_bitsignaltemp = atax_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("atax.B4")
    ) theatax_B4_x (
        .i_capture(atax_B4_x_i_capture_bitsignaltemp),
        .i_clear(atax_B4_x_i_clear_bitsignaltemp),
        .i_enable(atax_B4_x_i_enable_bitsignaltemp),
        .i_shift(atax_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(atax_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(atax_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(atax_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(atax_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(atax_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // atax_B5_x(EXTIFACE,11)
    assign atax_B5_x_i_capture = GND_q;
    assign atax_B5_x_i_clear = GND_q;
    assign atax_B5_x_i_enable = VCC_q;
    assign atax_B5_x_i_shift = GND_q;
    assign atax_B5_x_i_stall_pred = loop_limiter_atax2_out_o_stall;
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

    // out_iord_bl_call_atax_o_fifoalmost_full(GPOUT,113)
    assign out_iord_bl_call_atax_o_fifoalmost_full = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoalmost_full;

    // out_iord_bl_call_atax_o_fifoready(GPOUT,114)
    assign out_iord_bl_call_atax_o_fifoready = bb_atax_B1_start_out_iord_bl_call_atax_o_fifoready;

    // out_iowr_bl_return_atax_o_fifodata(GPOUT,115)
    assign out_iowr_bl_return_atax_o_fifodata = bb_atax_B7_out_iowr_bl_return_atax_o_fifodata;

    // out_iowr_bl_return_atax_o_fifovalid(GPOUT,116)
    assign out_iowr_bl_return_atax_o_fifovalid = bb_atax_B7_out_iowr_bl_return_atax_o_fifovalid;

    // out_memdep_2_atax_avm_address(GPOUT,117)
    assign out_memdep_2_atax_avm_address = bb_atax_B6_out_memdep_2_atax_avm_address;

    // out_memdep_2_atax_avm_burstcount(GPOUT,118)
    assign out_memdep_2_atax_avm_burstcount = bb_atax_B6_out_memdep_2_atax_avm_burstcount;

    // out_memdep_2_atax_avm_byteenable(GPOUT,119)
    assign out_memdep_2_atax_avm_byteenable = bb_atax_B6_out_memdep_2_atax_avm_byteenable;

    // out_memdep_2_atax_avm_enable(GPOUT,120)
    assign out_memdep_2_atax_avm_enable = bb_atax_B6_out_memdep_2_atax_avm_enable;

    // out_memdep_2_atax_avm_read(GPOUT,121)
    assign out_memdep_2_atax_avm_read = bb_atax_B6_out_memdep_2_atax_avm_read;

    // out_memdep_2_atax_avm_write(GPOUT,122)
    assign out_memdep_2_atax_avm_write = bb_atax_B6_out_memdep_2_atax_avm_write;

    // out_memdep_2_atax_avm_writedata(GPOUT,123)
    assign out_memdep_2_atax_avm_writedata = bb_atax_B6_out_memdep_2_atax_avm_writedata;

    // out_memdep_atax_avm_address(GPOUT,124)
    assign out_memdep_atax_avm_address = bb_atax_B5_out_memdep_atax_avm_address;

    // out_memdep_atax_avm_burstcount(GPOUT,125)
    assign out_memdep_atax_avm_burstcount = bb_atax_B5_out_memdep_atax_avm_burstcount;

    // out_memdep_atax_avm_byteenable(GPOUT,126)
    assign out_memdep_atax_avm_byteenable = bb_atax_B5_out_memdep_atax_avm_byteenable;

    // out_memdep_atax_avm_enable(GPOUT,127)
    assign out_memdep_atax_avm_enable = bb_atax_B5_out_memdep_atax_avm_enable;

    // out_memdep_atax_avm_read(GPOUT,128)
    assign out_memdep_atax_avm_read = bb_atax_B5_out_memdep_atax_avm_read;

    // out_memdep_atax_avm_write(GPOUT,129)
    assign out_memdep_atax_avm_write = bb_atax_B5_out_memdep_atax_avm_write;

    // out_memdep_atax_avm_writedata(GPOUT,130)
    assign out_memdep_atax_avm_writedata = bb_atax_B5_out_memdep_atax_avm_writedata;

    // out_o_active_memdep(GPOUT,131)
    assign out_o_active_memdep = bb_atax_B5_out_lsu_memdep_o_active;

    // out_o_active_memdep_2(GPOUT,132)
    assign out_o_active_memdep_2 = bb_atax_B6_out_lsu_memdep_2_o_active;

    // bb_atax_B0_runOnce(BLACKBOX,12)
    atax_bb_B0_runOnce thebb_atax_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_atax_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,133)
    assign out_stall_out = bb_atax_B0_runOnce_out_stall_out_0;

    // out_unnamed_atax12_atax_avm_address(GPOUT,134)
    assign out_unnamed_atax12_atax_avm_address = bb_atax_B4_out_unnamed_atax12_atax_avm_address;

    // out_unnamed_atax12_atax_avm_burstcount(GPOUT,135)
    assign out_unnamed_atax12_atax_avm_burstcount = bb_atax_B4_out_unnamed_atax12_atax_avm_burstcount;

    // out_unnamed_atax12_atax_avm_byteenable(GPOUT,136)
    assign out_unnamed_atax12_atax_avm_byteenable = bb_atax_B4_out_unnamed_atax12_atax_avm_byteenable;

    // out_unnamed_atax12_atax_avm_enable(GPOUT,137)
    assign out_unnamed_atax12_atax_avm_enable = bb_atax_B4_out_unnamed_atax12_atax_avm_enable;

    // out_unnamed_atax12_atax_avm_read(GPOUT,138)
    assign out_unnamed_atax12_atax_avm_read = bb_atax_B4_out_unnamed_atax12_atax_avm_read;

    // out_unnamed_atax12_atax_avm_write(GPOUT,139)
    assign out_unnamed_atax12_atax_avm_write = bb_atax_B4_out_unnamed_atax12_atax_avm_write;

    // out_unnamed_atax12_atax_avm_writedata(GPOUT,140)
    assign out_unnamed_atax12_atax_avm_writedata = bb_atax_B4_out_unnamed_atax12_atax_avm_writedata;

    // out_unnamed_atax13_atax_avm_address(GPOUT,141)
    assign out_unnamed_atax13_atax_avm_address = bb_atax_B4_out_unnamed_atax13_atax_avm_address;

    // out_unnamed_atax13_atax_avm_burstcount(GPOUT,142)
    assign out_unnamed_atax13_atax_avm_burstcount = bb_atax_B4_out_unnamed_atax13_atax_avm_burstcount;

    // out_unnamed_atax13_atax_avm_byteenable(GPOUT,143)
    assign out_unnamed_atax13_atax_avm_byteenable = bb_atax_B4_out_unnamed_atax13_atax_avm_byteenable;

    // out_unnamed_atax13_atax_avm_enable(GPOUT,144)
    assign out_unnamed_atax13_atax_avm_enable = bb_atax_B4_out_unnamed_atax13_atax_avm_enable;

    // out_unnamed_atax13_atax_avm_read(GPOUT,145)
    assign out_unnamed_atax13_atax_avm_read = bb_atax_B4_out_unnamed_atax13_atax_avm_read;

    // out_unnamed_atax13_atax_avm_write(GPOUT,146)
    assign out_unnamed_atax13_atax_avm_write = bb_atax_B4_out_unnamed_atax13_atax_avm_write;

    // out_unnamed_atax13_atax_avm_writedata(GPOUT,147)
    assign out_unnamed_atax13_atax_avm_writedata = bb_atax_B4_out_unnamed_atax13_atax_avm_writedata;

    // out_unnamed_atax15_atax_avm_address(GPOUT,148)
    assign out_unnamed_atax15_atax_avm_address = bb_atax_B5_out_unnamed_atax15_atax_avm_address;

    // out_unnamed_atax15_atax_avm_burstcount(GPOUT,149)
    assign out_unnamed_atax15_atax_avm_burstcount = bb_atax_B5_out_unnamed_atax15_atax_avm_burstcount;

    // out_unnamed_atax15_atax_avm_byteenable(GPOUT,150)
    assign out_unnamed_atax15_atax_avm_byteenable = bb_atax_B5_out_unnamed_atax15_atax_avm_byteenable;

    // out_unnamed_atax15_atax_avm_enable(GPOUT,151)
    assign out_unnamed_atax15_atax_avm_enable = bb_atax_B5_out_unnamed_atax15_atax_avm_enable;

    // out_unnamed_atax15_atax_avm_read(GPOUT,152)
    assign out_unnamed_atax15_atax_avm_read = bb_atax_B5_out_unnamed_atax15_atax_avm_read;

    // out_unnamed_atax15_atax_avm_write(GPOUT,153)
    assign out_unnamed_atax15_atax_avm_write = bb_atax_B5_out_unnamed_atax15_atax_avm_write;

    // out_unnamed_atax15_atax_avm_writedata(GPOUT,154)
    assign out_unnamed_atax15_atax_avm_writedata = bb_atax_B5_out_unnamed_atax15_atax_avm_writedata;

    // out_unnamed_atax17_atax_avm_address(GPOUT,155)
    assign out_unnamed_atax17_atax_avm_address = bb_atax_B5_out_unnamed_atax17_atax_avm_address;

    // out_unnamed_atax17_atax_avm_burstcount(GPOUT,156)
    assign out_unnamed_atax17_atax_avm_burstcount = bb_atax_B5_out_unnamed_atax17_atax_avm_burstcount;

    // out_unnamed_atax17_atax_avm_byteenable(GPOUT,157)
    assign out_unnamed_atax17_atax_avm_byteenable = bb_atax_B5_out_unnamed_atax17_atax_avm_byteenable;

    // out_unnamed_atax17_atax_avm_enable(GPOUT,158)
    assign out_unnamed_atax17_atax_avm_enable = bb_atax_B5_out_unnamed_atax17_atax_avm_enable;

    // out_unnamed_atax17_atax_avm_read(GPOUT,159)
    assign out_unnamed_atax17_atax_avm_read = bb_atax_B5_out_unnamed_atax17_atax_avm_read;

    // out_unnamed_atax17_atax_avm_write(GPOUT,160)
    assign out_unnamed_atax17_atax_avm_write = bb_atax_B5_out_unnamed_atax17_atax_avm_write;

    // out_unnamed_atax17_atax_avm_writedata(GPOUT,161)
    assign out_unnamed_atax17_atax_avm_writedata = bb_atax_B5_out_unnamed_atax17_atax_avm_writedata;

    // out_unnamed_atax7_atax_avm_address(GPOUT,162)
    assign out_unnamed_atax7_atax_avm_address = bb_atax_B2_out_unnamed_atax7_atax_avm_address;

    // out_unnamed_atax7_atax_avm_burstcount(GPOUT,163)
    assign out_unnamed_atax7_atax_avm_burstcount = bb_atax_B2_out_unnamed_atax7_atax_avm_burstcount;

    // out_unnamed_atax7_atax_avm_byteenable(GPOUT,164)
    assign out_unnamed_atax7_atax_avm_byteenable = bb_atax_B2_out_unnamed_atax7_atax_avm_byteenable;

    // out_unnamed_atax7_atax_avm_enable(GPOUT,165)
    assign out_unnamed_atax7_atax_avm_enable = bb_atax_B2_out_unnamed_atax7_atax_avm_enable;

    // out_unnamed_atax7_atax_avm_read(GPOUT,166)
    assign out_unnamed_atax7_atax_avm_read = bb_atax_B2_out_unnamed_atax7_atax_avm_read;

    // out_unnamed_atax7_atax_avm_write(GPOUT,167)
    assign out_unnamed_atax7_atax_avm_write = bb_atax_B2_out_unnamed_atax7_atax_avm_write;

    // out_unnamed_atax7_atax_avm_writedata(GPOUT,168)
    assign out_unnamed_atax7_atax_avm_writedata = bb_atax_B2_out_unnamed_atax7_atax_avm_writedata;

    // out_valid_out(GPOUT,169)
    assign out_valid_out = GND_q;

endmodule
