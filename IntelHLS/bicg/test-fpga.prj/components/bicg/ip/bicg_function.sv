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

// SystemVerilog created from bicg_function
// Created for function/kernel bicg
// SystemVerilog created on Fri Apr  7 18:01:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_p,
    input wire [63:0] in_arg_q,
    input wire [63:0] in_arg_r,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_s,
    input wire [319:0] in_iord_bl_call_bicg_i_fifodata,
    input wire [0:0] in_iord_bl_call_bicg_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_bicg_i_fifoready,
    input wire [31:0] in_memdep_1_bicg_avm_readdata,
    input wire [0:0] in_memdep_1_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_1_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_1_bicg_avm_writeack,
    input wire [31:0] in_memdep_bicg_avm_readdata,
    input wire [0:0] in_memdep_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_bicg_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_bicg3_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg3_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg3_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg3_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg5_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg5_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg6_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg6_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg7_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg7_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_bicg_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_bicg_o_fifoready,
    output wire [0:0] out_iowr_bl_return_bicg_o_fifodata,
    output wire [0:0] out_iowr_bl_return_bicg_o_fifovalid,
    output wire [31:0] out_memdep_1_bicg_avm_address,
    output wire [0:0] out_memdep_1_bicg_avm_burstcount,
    output wire [3:0] out_memdep_1_bicg_avm_byteenable,
    output wire [0:0] out_memdep_1_bicg_avm_enable,
    output wire [0:0] out_memdep_1_bicg_avm_read,
    output wire [0:0] out_memdep_1_bicg_avm_write,
    output wire [31:0] out_memdep_1_bicg_avm_writedata,
    output wire [31:0] out_memdep_bicg_avm_address,
    output wire [0:0] out_memdep_bicg_avm_burstcount,
    output wire [3:0] out_memdep_bicg_avm_byteenable,
    output wire [0:0] out_memdep_bicg_avm_enable,
    output wire [0:0] out_memdep_bicg_avm_read,
    output wire [0:0] out_memdep_bicg_avm_write,
    output wire [31:0] out_memdep_bicg_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_bicg3_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg3_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg3_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg3_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg5_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg5_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg5_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg6_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg6_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg6_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg7_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg7_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg7_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_bicg_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_bicg_B1_start_out_feedback_stall_out_8;
    wire [0:0] bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full;
    wire [0:0] bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready;
    wire [0:0] bb_bicg_B1_start_out_memdep_phi_pop7;
    wire [0:0] bb_bicg_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B1_start_out_stall_out_0;
    wire [0:0] bb_bicg_B1_start_out_valid_in_0;
    wire [0:0] bb_bicg_B1_start_out_valid_in_1;
    wire [0:0] bb_bicg_B1_start_out_valid_out_0;
    wire [0:0] bb_bicg_B2_out_feedback_out_8;
    wire [0:0] bb_bicg_B2_out_feedback_valid_out_8;
    wire [0:0] bb_bicg_B2_out_iowr_bl_return_bicg_o_fifodata;
    wire [0:0] bb_bicg_B2_out_iowr_bl_return_bicg_o_fifovalid;
    wire [0:0] bb_bicg_B2_out_stall_in_0;
    wire [0:0] bb_bicg_B2_out_stall_out_0;
    wire [0:0] bb_bicg_B2_out_valid_out_0;
    wire [0:0] bb_bicg_B3_out_c0_exe10;
    wire [63:0] bb_bicg_B3_out_c0_exe153;
    wire [63:0] bb_bicg_B3_out_c0_exe254;
    wire [0:0] bb_bicg_B3_out_c0_exe3;
    wire [31:0] bb_bicg_B3_out_c0_exe4;
    wire [0:0] bb_bicg_B3_out_c0_exe5;
    wire [0:0] bb_bicg_B3_out_c0_exe6;
    wire [0:0] bb_bicg_B3_out_c0_exe7;
    wire [0:0] bb_bicg_B3_out_c0_exe9;
    wire [0:0] bb_bicg_B3_out_exiting_stall_out;
    wire [0:0] bb_bicg_B3_out_exiting_valid_out;
    wire [0:0] bb_bicg_B3_out_feedback_stall_out_11;
    wire [0:0] bb_bicg_B3_out_memdep_phi2_pop11;
    wire [0:0] bb_bicg_B3_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B3_out_stall_out_0;
    wire [0:0] bb_bicg_B3_out_stall_out_1;
    wire [31:0] bb_bicg_B3_out_unnamed_bicg3_bicg_avm_address;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg3_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B3_out_unnamed_bicg3_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg3_bicg_avm_enable;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg3_bicg_avm_read;
    wire [0:0] bb_bicg_B3_out_unnamed_bicg3_bicg_avm_write;
    wire [31:0] bb_bicg_B3_out_unnamed_bicg3_bicg_avm_writedata;
    wire [0:0] bb_bicg_B3_out_valid_in_0;
    wire [0:0] bb_bicg_B3_out_valid_in_1;
    wire [0:0] bb_bicg_B3_out_valid_out_0;
    wire [0:0] bb_bicg_B4_out_feedback_out_11;
    wire [0:0] bb_bicg_B4_out_feedback_valid_out_11;
    wire [0:0] bb_bicg_B4_out_memdep;
    wire [31:0] bb_bicg_B4_out_memdep_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_out_memdep_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_write;
    wire [31:0] bb_bicg_B4_out_memdep_bicg_avm_writedata;
    wire [0:0] bb_bicg_B4_out_stall_in_0;
    wire [0:0] bb_bicg_B4_out_stall_out_0;
    wire [0:0] bb_bicg_B4_out_valid_out_0;
    wire [0:0] bb_bicg_B5_out_c0_exe273;
    wire [31:0] bb_bicg_B5_out_c0_exe374;
    wire [63:0] bb_bicg_B5_out_c0_exe576;
    wire [0:0] bb_bicg_B5_out_c0_exe677;
    wire [0:0] bb_bicg_B5_out_c0_exe778;
    wire [0:0] bb_bicg_B5_out_exiting_stall_out;
    wire [0:0] bb_bicg_B5_out_exiting_valid_out;
    wire [31:0] bb_bicg_B5_out_memdep_1_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_memdep_1_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_memdep_1_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B5_out_stall_in_0;
    wire [0:0] bb_bicg_B5_out_stall_out_0;
    wire [0:0] bb_bicg_B5_out_stall_out_1;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg5_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg6_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg7_bicg_avm_writedata;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_unnamed_bicg8_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_out_valid_in_0;
    wire [0:0] bb_bicg_B5_out_valid_in_1;
    wire [0:0] bb_bicg_B5_out_valid_out_0;
    wire [0:0] bicg_B1_start_x_i_capture;
    wire bicg_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_clear;
    wire bicg_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_enable;
    wire bicg_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_shift;
    wire bicg_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_stall_pred;
    wire bicg_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_stall_succ;
    wire bicg_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_valid_loop;
    wire bicg_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_valid_pred;
    wire bicg_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_valid_succ;
    wire bicg_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_capture;
    wire bicg_B3_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_clear;
    wire bicg_B3_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_enable;
    wire bicg_B3_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_shift;
    wire bicg_B3_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_stall_pred;
    wire bicg_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_stall_succ;
    wire bicg_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_valid_loop;
    wire bicg_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_valid_pred;
    wire bicg_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_valid_succ;
    wire bicg_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_capture;
    wire bicg_B5_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_clear;
    wire bicg_B5_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_enable;
    wire bicg_B5_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_shift;
    wire bicg_B5_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_stall_pred;
    wire bicg_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_stall_succ;
    wire bicg_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_valid_loop;
    wire bicg_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_valid_pred;
    wire bicg_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_valid_succ;
    wire bicg_B5_x_i_valid_succ_bitsignaltemp;
    wire [1:0] c_i2_049_q;
    wire [63:0] c_i32_addrspace_66_undef33_q;
    wire [31:0] c_i32_undef37_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_bicg2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_bicg2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going9_bicg2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going9_bicg2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_bicg0_out_o_stall;
    wire [0:0] loop_limiter_bicg0_out_o_valid;
    wire [0:0] loop_limiter_bicg1_out_o_stall;
    wire [0:0] loop_limiter_bicg1_out_o_valid;
    wire [0:0] bb_bicg_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_bicg_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_bicg_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_10_tpl;


    // c_i2_049(CONSTANT,39)
    assign c_i2_049_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo(BLACKBOX,47)
    bicg_i_llvm_fpga_pipeline_keep_going13_2_valid_fifo thei_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo (
        .in_data_in(c_i2_049_q),
        .in_stall_in(bb_bicg_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going13_bicg2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo(BLACKBOX,49)
    bicg_i_llvm_fpga_pipeline_keep_going9_2_valid_fifo thei_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo (
        .in_data_in(c_i2_049_q),
        .in_stall_in(bb_bicg_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going9_bicg2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo(BLACKBOX,51)
    bicg_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo (
        .in_data_in(c_i2_049_q),
        .in_stall_in(bb_bicg_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef37(CONSTANT,43)
    assign c_i32_undef37_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_bicg_B4_sr_0_aunroll_x(BLACKBOX,152)
    bicg_bb_B4_sr_0 thebb_bicg_B4_sr_0_aunroll_x (
        .in_i_stall(bb_bicg_B4_out_stall_out_0),
        .in_i_valid(bb_bicg_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_bicg_B5_out_c0_exe273),
        .in_i_data_1_tpl(bb_bicg_B5_out_c0_exe374),
        .in_i_data_2_tpl(bb_bicg_B5_out_c0_exe576),
        .in_i_data_3_tpl(bb_bicg_B5_out_c0_exe677),
        .in_i_data_4_tpl(bb_bicg_B5_out_c0_exe778),
        .out_o_stall(bb_bicg_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_bicg_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_bicg_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_bicg_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_bicg_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_bicg6_sr(BLACKBOX,50)
    bicg_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_bicg6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_66_undef33(CONSTANT,42)
    assign c_i32_addrspace_66_undef33_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_bicg_B5(BLACKBOX,7)
    bicg_bb_B5 thebb_bicg_B5 (
        .in_arrayidx134_0(c_i32_addrspace_66_undef33_q),
        .in_arrayidx134_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_exitcond636_0(GND_q),
        .in_exitcond636_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom32_0(c_i32_addrspace_66_undef33_q),
        .in_idxprom32_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .in_memdep_phi2_pop1138_0(GND_q),
        .in_memdep_phi2_pop1138_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi3_pop819_pop1339_0(GND_q),
        .in_memdep_phi3_pop819_pop1339_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_phi3_pop831_0(GND_q),
        .in_memdep_phi3_pop831_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop717_pop1235_0(GND_q),
        .in_memdep_phi_pop717_pop1235_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi_pop728_0(GND_q),
        .in_memdep_phi_pop728_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp737_0(GND_q),
        .in_notcmp737_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_stall),
        .in_stall_in_0(bb_bicg_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_bicg4_0(c_i32_undef37_q),
        .in_unnamed_bicg4_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_unnamed_bicg5_bicg_avm_readdata(in_unnamed_bicg5_bicg_avm_readdata),
        .in_unnamed_bicg5_bicg_avm_readdatavalid(in_unnamed_bicg5_bicg_avm_readdatavalid),
        .in_unnamed_bicg5_bicg_avm_waitrequest(in_unnamed_bicg5_bicg_avm_waitrequest),
        .in_unnamed_bicg5_bicg_avm_writeack(in_unnamed_bicg5_bicg_avm_writeack),
        .in_unnamed_bicg6_bicg_avm_readdata(in_unnamed_bicg6_bicg_avm_readdata),
        .in_unnamed_bicg6_bicg_avm_readdatavalid(in_unnamed_bicg6_bicg_avm_readdatavalid),
        .in_unnamed_bicg6_bicg_avm_waitrequest(in_unnamed_bicg6_bicg_avm_waitrequest),
        .in_unnamed_bicg6_bicg_avm_writeack(in_unnamed_bicg6_bicg_avm_writeack),
        .in_unnamed_bicg7_bicg_avm_readdata(in_unnamed_bicg7_bicg_avm_readdata),
        .in_unnamed_bicg7_bicg_avm_readdatavalid(in_unnamed_bicg7_bicg_avm_readdatavalid),
        .in_unnamed_bicg7_bicg_avm_waitrequest(in_unnamed_bicg7_bicg_avm_waitrequest),
        .in_unnamed_bicg7_bicg_avm_writeack(in_unnamed_bicg7_bicg_avm_writeack),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_bicg_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe273(bb_bicg_B5_out_c0_exe273),
        .out_c0_exe374(bb_bicg_B5_out_c0_exe374),
        .out_c0_exe576(bb_bicg_B5_out_c0_exe576),
        .out_c0_exe677(bb_bicg_B5_out_c0_exe677),
        .out_c0_exe778(bb_bicg_B5_out_c0_exe778),
        .out_exiting_stall_out(bb_bicg_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_bicg_B5_out_exiting_valid_out),
        .out_memdep_1_bicg_avm_address(bb_bicg_B5_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(bb_bicg_B5_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(bb_bicg_B5_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(bb_bicg_B5_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(bb_bicg_B5_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(bb_bicg_B5_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(bb_bicg_B5_out_memdep_1_bicg_avm_writedata),
        .out_pipeline_valid_out(bb_bicg_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_bicg_B5_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B5_out_stall_out_0),
        .out_stall_out_1(bb_bicg_B5_out_stall_out_1),
        .out_unnamed_bicg5_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_address),
        .out_unnamed_bicg5_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_burstcount),
        .out_unnamed_bicg5_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_byteenable),
        .out_unnamed_bicg5_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_enable),
        .out_unnamed_bicg5_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_read),
        .out_unnamed_bicg5_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_write),
        .out_unnamed_bicg5_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg5_bicg_avm_writedata),
        .out_unnamed_bicg6_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_address),
        .out_unnamed_bicg6_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_burstcount),
        .out_unnamed_bicg6_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_byteenable),
        .out_unnamed_bicg6_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_enable),
        .out_unnamed_bicg6_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_read),
        .out_unnamed_bicg6_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_write),
        .out_unnamed_bicg6_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg6_bicg_avm_writedata),
        .out_unnamed_bicg7_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_address),
        .out_unnamed_bicg7_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_burstcount),
        .out_unnamed_bicg7_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_byteenable),
        .out_unnamed_bicg7_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_enable),
        .out_unnamed_bicg7_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_read),
        .out_unnamed_bicg7_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_write),
        .out_unnamed_bicg7_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg7_bicg_avm_writedata),
        .out_unnamed_bicg8_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg8_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B5_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B5_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B5_sr_1_aunroll_x(BLACKBOX,153)
    bicg_bb_B5_sr_1 thebb_bicg_B5_sr_1_aunroll_x (
        .in_i_stall(bb_bicg_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_bicg1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_bicg_B3_out_c0_exe9),
        .in_i_data_2_tpl(bb_bicg_B3_out_c0_exe10),
        .in_i_data_3_tpl(bb_bicg_B3_out_c0_exe153),
        .in_i_data_4_tpl(bb_bicg_B3_out_c0_exe254),
        .in_i_data_5_tpl(bb_bicg_B3_out_c0_exe3),
        .in_i_data_6_tpl(bb_bicg_B3_out_c0_exe4),
        .in_i_data_7_tpl(bb_bicg_B3_out_c0_exe5),
        .in_i_data_8_tpl(bb_bicg_B3_out_c0_exe6),
        .in_i_data_9_tpl(bb_bicg_B3_out_memdep_phi2_pop11),
        .in_i_data_10_tpl(bb_bicg_B3_out_c0_exe7),
        .out_o_stall(bb_bicg_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_bicg1(BLACKBOX,94)
    bicg_loop_limiter_1 theloop_limiter_bicg1 (
        .in_i_stall(bb_bicg_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_bicg_B5_out_exiting_stall_out),
        .in_i_valid(bb_bicg_B3_out_valid_out_0),
        .in_i_valid_exit(bb_bicg_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_bicg1_out_o_stall),
        .out_o_valid(loop_limiter_bicg1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going9_bicg2_sr(BLACKBOX,48)
    bicg_i_llvm_fpga_pipeline_keep_going9_2_sr thei_llvm_fpga_pipeline_keep_going9_bicg2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going9_bicg2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going9_bicg2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B2_sr_0_aunroll_x(BLACKBOX,150)
    bicg_bb_B2_sr_0 thebb_bicg_B2_sr_0_aunroll_x (
        .in_i_stall(bb_bicg_B2_out_stall_out_0),
        .in_i_valid(bb_bicg_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_bicg_B4_out_memdep),
        .out_o_stall(bb_bicg_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B4(BLACKBOX,6)
    bicg_bb_B4 thebb_bicg_B4 (
        .in_c0_exe2733_0(bb_bicg_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe3744_0(bb_bicg_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe5765_0(bb_bicg_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe6776_0(bb_bicg_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe7787_0(bb_bicg_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_feedback_stall_in_11(bb_bicg_B3_out_feedback_stall_out_11),
        .in_flush(in_start),
        .in_memdep_bicg_avm_readdata(in_memdep_bicg_avm_readdata),
        .in_memdep_bicg_avm_readdatavalid(in_memdep_bicg_avm_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(in_memdep_bicg_avm_waitrequest),
        .in_memdep_bicg_avm_writeack(in_memdep_bicg_avm_writeack),
        .in_stall_in_0(bb_bicg_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_bicg_B4_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_11(bb_bicg_B4_out_feedback_out_11),
        .out_feedback_valid_out_11(bb_bicg_B4_out_feedback_valid_out_11),
        .out_memdep(bb_bicg_B4_out_memdep),
        .out_memdep_bicg_avm_address(bb_bicg_B4_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(bb_bicg_B4_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(bb_bicg_B4_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(bb_bicg_B4_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(bb_bicg_B4_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(bb_bicg_B4_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(bb_bicg_B4_out_memdep_bicg_avm_writedata),
        .out_stall_in_0(bb_bicg_B4_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B4_out_stall_out_0),
        .out_valid_out_0(bb_bicg_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B3(BLACKBOX,5)
    bicg_bb_B3 thebb_bicg_B3 (
        .in_feedback_in_11(bb_bicg_B4_out_feedback_out_11),
        .in_feedback_valid_in_11(bb_bicg_B4_out_feedback_valid_out_11),
        .in_flush(in_start),
        .in_forked16_0(GND_q),
        .in_forked16_1(bb_bicg_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi3_pop829_0(GND_q),
        .in_memdep_phi3_pop829_1(bb_bicg_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop726_0(GND_q),
        .in_memdep_phi_pop726_1(bb_bicg_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going9_bicg2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_bicg1_out_o_stall),
        .in_unnamed_bicg3_bicg_avm_readdata(in_unnamed_bicg3_bicg_avm_readdata),
        .in_unnamed_bicg3_bicg_avm_readdatavalid(in_unnamed_bicg3_bicg_avm_readdatavalid),
        .in_unnamed_bicg3_bicg_avm_waitrequest(in_unnamed_bicg3_bicg_avm_waitrequest),
        .in_unnamed_bicg3_bicg_avm_writeack(in_unnamed_bicg3_bicg_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going9_bicg2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_bicg_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_bicg_B3_out_c0_exe10),
        .out_c0_exe153(bb_bicg_B3_out_c0_exe153),
        .out_c0_exe254(bb_bicg_B3_out_c0_exe254),
        .out_c0_exe3(bb_bicg_B3_out_c0_exe3),
        .out_c0_exe4(bb_bicg_B3_out_c0_exe4),
        .out_c0_exe5(bb_bicg_B3_out_c0_exe5),
        .out_c0_exe6(bb_bicg_B3_out_c0_exe6),
        .out_c0_exe7(bb_bicg_B3_out_c0_exe7),
        .out_c0_exe9(bb_bicg_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_bicg_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_bicg_B3_out_exiting_valid_out),
        .out_feedback_stall_out_11(bb_bicg_B3_out_feedback_stall_out_11),
        .out_memdep_phi2_pop11(bb_bicg_B3_out_memdep_phi2_pop11),
        .out_pipeline_valid_out(bb_bicg_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_bicg_B3_out_stall_out_0),
        .out_stall_out_1(bb_bicg_B3_out_stall_out_1),
        .out_unnamed_bicg3_bicg_avm_address(bb_bicg_B3_out_unnamed_bicg3_bicg_avm_address),
        .out_unnamed_bicg3_bicg_avm_burstcount(bb_bicg_B3_out_unnamed_bicg3_bicg_avm_burstcount),
        .out_unnamed_bicg3_bicg_avm_byteenable(bb_bicg_B3_out_unnamed_bicg3_bicg_avm_byteenable),
        .out_unnamed_bicg3_bicg_avm_enable(bb_bicg_B3_out_unnamed_bicg3_bicg_avm_enable),
        .out_unnamed_bicg3_bicg_avm_read(bb_bicg_B3_out_unnamed_bicg3_bicg_avm_read),
        .out_unnamed_bicg3_bicg_avm_write(bb_bicg_B3_out_unnamed_bicg3_bicg_avm_write),
        .out_unnamed_bicg3_bicg_avm_writedata(bb_bicg_B3_out_unnamed_bicg3_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B3_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B3_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B3_sr_1_aunroll_x(BLACKBOX,151)
    bicg_bb_B3_sr_1 thebb_bicg_B3_sr_1_aunroll_x (
        .in_i_stall(bb_bicg_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_bicg0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_bicg_B1_start_out_memdep_phi_pop7),
        .in_i_data_2_tpl(bb_bicg_B1_start_out_memdep_phi_pop7),
        .out_o_stall(bb_bicg_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_bicg_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_bicg_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_bicg0(BLACKBOX,93)
    bicg_loop_limiter_0 theloop_limiter_bicg0 (
        .in_i_stall(bb_bicg_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_bicg_B3_out_exiting_stall_out),
        .in_i_valid(bb_bicg_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_bicg_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_bicg0_out_o_stall),
        .out_o_valid(loop_limiter_bicg0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going13_bicg2_sr(BLACKBOX,46)
    bicg_i_llvm_fpga_pipeline_keep_going13_2_sr thei_llvm_fpga_pipeline_keep_going13_bicg2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going13_bicg2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going13_bicg2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B1_start(BLACKBOX,3)
    bicg_bb_B1_start thebb_bicg_B1_start (
        .in_feedback_in_8(bb_bicg_B2_out_feedback_out_8),
        .in_feedback_valid_in_8(bb_bicg_B2_out_feedback_valid_out_8),
        .in_forked15_0(GND_q),
        .in_forked15_1(VCC_q),
        .in_iord_bl_call_bicg_i_fifodata(in_iord_bl_call_bicg_i_fifodata),
        .in_iord_bl_call_bicg_i_fifovalid(in_iord_bl_call_bicg_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going13_bicg2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_bicg0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going13_bicg2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_8(bb_bicg_B1_start_out_feedback_stall_out_8),
        .out_iord_bl_call_bicg_o_fifoalmost_full(bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full),
        .out_iord_bl_call_bicg_o_fifoready(bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready),
        .out_memdep_phi_pop7(bb_bicg_B1_start_out_memdep_phi_pop7),
        .out_pipeline_valid_out(bb_bicg_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_bicg_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_bicg_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B2(BLACKBOX,4)
    bicg_bb_B2 thebb_bicg_B2 (
        .in_feedback_stall_in_8(bb_bicg_B1_start_out_feedback_stall_out_8),
        .in_iowr_bl_return_bicg_i_fifoready(in_iowr_bl_return_bicg_i_fifoready),
        .in_memdep_2_0(bb_bicg_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_bicg_B2_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_8(bb_bicg_B2_out_feedback_out_8),
        .out_feedback_valid_out_8(bb_bicg_B2_out_feedback_valid_out_8),
        .out_iowr_bl_return_bicg_o_fifodata(bb_bicg_B2_out_iowr_bl_return_bicg_o_fifodata),
        .out_iowr_bl_return_bicg_o_fifovalid(bb_bicg_B2_out_iowr_bl_return_bicg_o_fifovalid),
        .out_stall_in_0(bb_bicg_B2_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B2_out_stall_out_0),
        .out_valid_out_0(bb_bicg_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bicg_B1_start_x(EXTIFACE,8)
    assign bicg_B1_start_x_i_capture = GND_q;
    assign bicg_B1_start_x_i_clear = GND_q;
    assign bicg_B1_start_x_i_enable = VCC_q;
    assign bicg_B1_start_x_i_shift = GND_q;
    assign bicg_B1_start_x_i_stall_pred = GND_q;
    assign bicg_B1_start_x_i_stall_succ = bb_bicg_B2_out_stall_in_0;
    assign bicg_B1_start_x_i_valid_loop = bb_bicg_B1_start_out_valid_in_0;
    assign bicg_B1_start_x_i_valid_pred = bb_bicg_B1_start_out_valid_in_1;
    assign bicg_B1_start_x_i_valid_succ = bb_bicg_B2_out_valid_out_0;
    assign bicg_B1_start_x_i_capture_bitsignaltemp = bicg_B1_start_x_i_capture[0];
    assign bicg_B1_start_x_i_clear_bitsignaltemp = bicg_B1_start_x_i_clear[0];
    assign bicg_B1_start_x_i_enable_bitsignaltemp = bicg_B1_start_x_i_enable[0];
    assign bicg_B1_start_x_i_shift_bitsignaltemp = bicg_B1_start_x_i_shift[0];
    assign bicg_B1_start_x_i_stall_pred_bitsignaltemp = bicg_B1_start_x_i_stall_pred[0];
    assign bicg_B1_start_x_i_stall_succ_bitsignaltemp = bicg_B1_start_x_i_stall_succ[0];
    assign bicg_B1_start_x_i_valid_loop_bitsignaltemp = bicg_B1_start_x_i_valid_loop[0];
    assign bicg_B1_start_x_i_valid_pred_bitsignaltemp = bicg_B1_start_x_i_valid_pred[0];
    assign bicg_B1_start_x_i_valid_succ_bitsignaltemp = bicg_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B1.start")
    ) thebicg_B1_start_x (
        .i_capture(bicg_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B3_x(EXTIFACE,9)
    assign bicg_B3_x_i_capture = GND_q;
    assign bicg_B3_x_i_clear = GND_q;
    assign bicg_B3_x_i_enable = VCC_q;
    assign bicg_B3_x_i_shift = GND_q;
    assign bicg_B3_x_i_stall_pred = loop_limiter_bicg0_out_o_stall;
    assign bicg_B3_x_i_stall_succ = bb_bicg_B4_out_stall_in_0;
    assign bicg_B3_x_i_valid_loop = bb_bicg_B3_out_valid_in_0;
    assign bicg_B3_x_i_valid_pred = bb_bicg_B3_out_valid_in_1;
    assign bicg_B3_x_i_valid_succ = bb_bicg_B4_out_valid_out_0;
    assign bicg_B3_x_i_capture_bitsignaltemp = bicg_B3_x_i_capture[0];
    assign bicg_B3_x_i_clear_bitsignaltemp = bicg_B3_x_i_clear[0];
    assign bicg_B3_x_i_enable_bitsignaltemp = bicg_B3_x_i_enable[0];
    assign bicg_B3_x_i_shift_bitsignaltemp = bicg_B3_x_i_shift[0];
    assign bicg_B3_x_i_stall_pred_bitsignaltemp = bicg_B3_x_i_stall_pred[0];
    assign bicg_B3_x_i_stall_succ_bitsignaltemp = bicg_B3_x_i_stall_succ[0];
    assign bicg_B3_x_i_valid_loop_bitsignaltemp = bicg_B3_x_i_valid_loop[0];
    assign bicg_B3_x_i_valid_pred_bitsignaltemp = bicg_B3_x_i_valid_pred[0];
    assign bicg_B3_x_i_valid_succ_bitsignaltemp = bicg_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B3")
    ) thebicg_B3_x (
        .i_capture(bicg_B3_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B3_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B3_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B5_x(EXTIFACE,10)
    assign bicg_B5_x_i_capture = GND_q;
    assign bicg_B5_x_i_clear = GND_q;
    assign bicg_B5_x_i_enable = VCC_q;
    assign bicg_B5_x_i_shift = GND_q;
    assign bicg_B5_x_i_stall_pred = loop_limiter_bicg1_out_o_stall;
    assign bicg_B5_x_i_stall_succ = bb_bicg_B5_out_stall_in_0;
    assign bicg_B5_x_i_valid_loop = bb_bicg_B5_out_valid_in_0;
    assign bicg_B5_x_i_valid_pred = bb_bicg_B5_out_valid_in_1;
    assign bicg_B5_x_i_valid_succ = bb_bicg_B5_out_valid_out_0;
    assign bicg_B5_x_i_capture_bitsignaltemp = bicg_B5_x_i_capture[0];
    assign bicg_B5_x_i_clear_bitsignaltemp = bicg_B5_x_i_clear[0];
    assign bicg_B5_x_i_enable_bitsignaltemp = bicg_B5_x_i_enable[0];
    assign bicg_B5_x_i_shift_bitsignaltemp = bicg_B5_x_i_shift[0];
    assign bicg_B5_x_i_stall_pred_bitsignaltemp = bicg_B5_x_i_stall_pred[0];
    assign bicg_B5_x_i_stall_succ_bitsignaltemp = bicg_B5_x_i_stall_succ[0];
    assign bicg_B5_x_i_valid_loop_bitsignaltemp = bicg_B5_x_i_valid_loop[0];
    assign bicg_B5_x_i_valid_pred_bitsignaltemp = bicg_B5_x_i_valid_pred[0];
    assign bicg_B5_x_i_valid_succ_bitsignaltemp = bicg_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B5")
    ) thebicg_B5_x (
        .i_capture(bicg_B5_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B5_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B5_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_bicg_o_fifoalmost_full(GPOUT,95)
    assign out_iord_bl_call_bicg_o_fifoalmost_full = bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full;

    // out_iord_bl_call_bicg_o_fifoready(GPOUT,96)
    assign out_iord_bl_call_bicg_o_fifoready = bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready;

    // out_iowr_bl_return_bicg_o_fifodata(GPOUT,97)
    assign out_iowr_bl_return_bicg_o_fifodata = bb_bicg_B2_out_iowr_bl_return_bicg_o_fifodata;

    // out_iowr_bl_return_bicg_o_fifovalid(GPOUT,98)
    assign out_iowr_bl_return_bicg_o_fifovalid = bb_bicg_B2_out_iowr_bl_return_bicg_o_fifovalid;

    // out_memdep_1_bicg_avm_address(GPOUT,99)
    assign out_memdep_1_bicg_avm_address = bb_bicg_B5_out_memdep_1_bicg_avm_address;

    // out_memdep_1_bicg_avm_burstcount(GPOUT,100)
    assign out_memdep_1_bicg_avm_burstcount = bb_bicg_B5_out_memdep_1_bicg_avm_burstcount;

    // out_memdep_1_bicg_avm_byteenable(GPOUT,101)
    assign out_memdep_1_bicg_avm_byteenable = bb_bicg_B5_out_memdep_1_bicg_avm_byteenable;

    // out_memdep_1_bicg_avm_enable(GPOUT,102)
    assign out_memdep_1_bicg_avm_enable = bb_bicg_B5_out_memdep_1_bicg_avm_enable;

    // out_memdep_1_bicg_avm_read(GPOUT,103)
    assign out_memdep_1_bicg_avm_read = bb_bicg_B5_out_memdep_1_bicg_avm_read;

    // out_memdep_1_bicg_avm_write(GPOUT,104)
    assign out_memdep_1_bicg_avm_write = bb_bicg_B5_out_memdep_1_bicg_avm_write;

    // out_memdep_1_bicg_avm_writedata(GPOUT,105)
    assign out_memdep_1_bicg_avm_writedata = bb_bicg_B5_out_memdep_1_bicg_avm_writedata;

    // out_memdep_bicg_avm_address(GPOUT,106)
    assign out_memdep_bicg_avm_address = bb_bicg_B4_out_memdep_bicg_avm_address;

    // out_memdep_bicg_avm_burstcount(GPOUT,107)
    assign out_memdep_bicg_avm_burstcount = bb_bicg_B4_out_memdep_bicg_avm_burstcount;

    // out_memdep_bicg_avm_byteenable(GPOUT,108)
    assign out_memdep_bicg_avm_byteenable = bb_bicg_B4_out_memdep_bicg_avm_byteenable;

    // out_memdep_bicg_avm_enable(GPOUT,109)
    assign out_memdep_bicg_avm_enable = bb_bicg_B4_out_memdep_bicg_avm_enable;

    // out_memdep_bicg_avm_read(GPOUT,110)
    assign out_memdep_bicg_avm_read = bb_bicg_B4_out_memdep_bicg_avm_read;

    // out_memdep_bicg_avm_write(GPOUT,111)
    assign out_memdep_bicg_avm_write = bb_bicg_B4_out_memdep_bicg_avm_write;

    // out_memdep_bicg_avm_writedata(GPOUT,112)
    assign out_memdep_bicg_avm_writedata = bb_bicg_B4_out_memdep_bicg_avm_writedata;

    // bb_bicg_B0_runOnce(BLACKBOX,2)
    bicg_bb_B0_runOnce thebb_bicg_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_bicg_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,113)
    assign out_stall_out = bb_bicg_B0_runOnce_out_stall_out_0;

    // out_unnamed_bicg3_bicg_avm_address(GPOUT,114)
    assign out_unnamed_bicg3_bicg_avm_address = bb_bicg_B3_out_unnamed_bicg3_bicg_avm_address;

    // out_unnamed_bicg3_bicg_avm_burstcount(GPOUT,115)
    assign out_unnamed_bicg3_bicg_avm_burstcount = bb_bicg_B3_out_unnamed_bicg3_bicg_avm_burstcount;

    // out_unnamed_bicg3_bicg_avm_byteenable(GPOUT,116)
    assign out_unnamed_bicg3_bicg_avm_byteenable = bb_bicg_B3_out_unnamed_bicg3_bicg_avm_byteenable;

    // out_unnamed_bicg3_bicg_avm_enable(GPOUT,117)
    assign out_unnamed_bicg3_bicg_avm_enable = bb_bicg_B3_out_unnamed_bicg3_bicg_avm_enable;

    // out_unnamed_bicg3_bicg_avm_read(GPOUT,118)
    assign out_unnamed_bicg3_bicg_avm_read = bb_bicg_B3_out_unnamed_bicg3_bicg_avm_read;

    // out_unnamed_bicg3_bicg_avm_write(GPOUT,119)
    assign out_unnamed_bicg3_bicg_avm_write = bb_bicg_B3_out_unnamed_bicg3_bicg_avm_write;

    // out_unnamed_bicg3_bicg_avm_writedata(GPOUT,120)
    assign out_unnamed_bicg3_bicg_avm_writedata = bb_bicg_B3_out_unnamed_bicg3_bicg_avm_writedata;

    // out_unnamed_bicg5_bicg_avm_address(GPOUT,121)
    assign out_unnamed_bicg5_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_address;

    // out_unnamed_bicg5_bicg_avm_burstcount(GPOUT,122)
    assign out_unnamed_bicg5_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_burstcount;

    // out_unnamed_bicg5_bicg_avm_byteenable(GPOUT,123)
    assign out_unnamed_bicg5_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_byteenable;

    // out_unnamed_bicg5_bicg_avm_enable(GPOUT,124)
    assign out_unnamed_bicg5_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_enable;

    // out_unnamed_bicg5_bicg_avm_read(GPOUT,125)
    assign out_unnamed_bicg5_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_read;

    // out_unnamed_bicg5_bicg_avm_write(GPOUT,126)
    assign out_unnamed_bicg5_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_write;

    // out_unnamed_bicg5_bicg_avm_writedata(GPOUT,127)
    assign out_unnamed_bicg5_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg5_bicg_avm_writedata;

    // out_unnamed_bicg6_bicg_avm_address(GPOUT,128)
    assign out_unnamed_bicg6_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_address;

    // out_unnamed_bicg6_bicg_avm_burstcount(GPOUT,129)
    assign out_unnamed_bicg6_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_burstcount;

    // out_unnamed_bicg6_bicg_avm_byteenable(GPOUT,130)
    assign out_unnamed_bicg6_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_byteenable;

    // out_unnamed_bicg6_bicg_avm_enable(GPOUT,131)
    assign out_unnamed_bicg6_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_enable;

    // out_unnamed_bicg6_bicg_avm_read(GPOUT,132)
    assign out_unnamed_bicg6_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_read;

    // out_unnamed_bicg6_bicg_avm_write(GPOUT,133)
    assign out_unnamed_bicg6_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_write;

    // out_unnamed_bicg6_bicg_avm_writedata(GPOUT,134)
    assign out_unnamed_bicg6_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg6_bicg_avm_writedata;

    // out_unnamed_bicg7_bicg_avm_address(GPOUT,135)
    assign out_unnamed_bicg7_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_address;

    // out_unnamed_bicg7_bicg_avm_burstcount(GPOUT,136)
    assign out_unnamed_bicg7_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_burstcount;

    // out_unnamed_bicg7_bicg_avm_byteenable(GPOUT,137)
    assign out_unnamed_bicg7_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_byteenable;

    // out_unnamed_bicg7_bicg_avm_enable(GPOUT,138)
    assign out_unnamed_bicg7_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_enable;

    // out_unnamed_bicg7_bicg_avm_read(GPOUT,139)
    assign out_unnamed_bicg7_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_read;

    // out_unnamed_bicg7_bicg_avm_write(GPOUT,140)
    assign out_unnamed_bicg7_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_write;

    // out_unnamed_bicg7_bicg_avm_writedata(GPOUT,141)
    assign out_unnamed_bicg7_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg7_bicg_avm_writedata;

    // out_unnamed_bicg8_bicg_avm_address(GPOUT,142)
    assign out_unnamed_bicg8_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_address;

    // out_unnamed_bicg8_bicg_avm_burstcount(GPOUT,143)
    assign out_unnamed_bicg8_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_burstcount;

    // out_unnamed_bicg8_bicg_avm_byteenable(GPOUT,144)
    assign out_unnamed_bicg8_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_byteenable;

    // out_unnamed_bicg8_bicg_avm_enable(GPOUT,145)
    assign out_unnamed_bicg8_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_enable;

    // out_unnamed_bicg8_bicg_avm_read(GPOUT,146)
    assign out_unnamed_bicg8_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_read;

    // out_unnamed_bicg8_bicg_avm_write(GPOUT,147)
    assign out_unnamed_bicg8_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_write;

    // out_unnamed_bicg8_bicg_avm_writedata(GPOUT,148)
    assign out_unnamed_bicg8_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg8_bicg_avm_writedata;

    // out_valid_out(GPOUT,149)
    assign out_valid_out = GND_q;

endmodule
