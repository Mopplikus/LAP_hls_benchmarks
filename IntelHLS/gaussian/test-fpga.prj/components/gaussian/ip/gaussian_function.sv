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
// SystemVerilog created on Tue Apr  4 21:38:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module gaussian_function (
    input wire [63:0] in_arg_A_r,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_iord_bl_call_gaussian_i_fifodata,
    input wire [0:0] in_iord_bl_call_gaussian_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_gaussian_i_fifoready,
    input wire [31:0] in_lm113_gaussian_avm_readdata,
    input wire [0:0] in_lm113_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm113_gaussian_avm_waitrequest,
    input wire [0:0] in_lm113_gaussian_avm_writeack,
    input wire [31:0] in_lm1_gaussian_avm_readdata,
    input wire [0:0] in_lm1_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm1_gaussian_avm_waitrequest,
    input wire [0:0] in_lm1_gaussian_avm_writeack,
    input wire [31:0] in_lm92_gaussian_avm_readdata,
    input wire [0:0] in_lm92_gaussian_avm_readdatavalid,
    input wire [0:0] in_lm92_gaussian_avm_waitrequest,
    input wire [0:0] in_lm92_gaussian_avm_writeack,
    input wire [31:0] in_memdep_4_gaussian_avm_readdata,
    input wire [0:0] in_memdep_4_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_4_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_4_gaussian_avm_writeack,
    input wire [31:0] in_memdep_5_gaussian_avm_readdata,
    input wire [0:0] in_memdep_5_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_5_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_5_gaussian_avm_writeack,
    input wire [31:0] in_memdep_gaussian_avm_readdata,
    input wire [0:0] in_memdep_gaussian_avm_readdatavalid,
    input wire [0:0] in_memdep_gaussian_avm_waitrequest,
    input wire [0:0] in_memdep_gaussian_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_gaussian15_gaussian_avm_readdata,
    input wire [0:0] in_unnamed_gaussian15_gaussian_avm_readdatavalid,
    input wire [0:0] in_unnamed_gaussian15_gaussian_avm_waitrequest,
    input wire [0:0] in_unnamed_gaussian15_gaussian_avm_writeack,
    input wire [63:0] in_unnamed_gaussian16_gaussian_avm_readdata,
    input wire [0:0] in_unnamed_gaussian16_gaussian_avm_readdatavalid,
    input wire [0:0] in_unnamed_gaussian16_gaussian_avm_waitrequest,
    input wire [0:0] in_unnamed_gaussian16_gaussian_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_gaussian_o_fifoready,
    output wire [0:0] out_iowr_bl_return_gaussian_o_fifodata,
    output wire [0:0] out_iowr_bl_return_gaussian_o_fifovalid,
    output wire [31:0] out_lm113_gaussian_avm_address,
    output wire [0:0] out_lm113_gaussian_avm_burstcount,
    output wire [3:0] out_lm113_gaussian_avm_byteenable,
    output wire [0:0] out_lm113_gaussian_avm_enable,
    output wire [0:0] out_lm113_gaussian_avm_read,
    output wire [0:0] out_lm113_gaussian_avm_write,
    output wire [31:0] out_lm113_gaussian_avm_writedata,
    output wire [31:0] out_lm1_gaussian_avm_address,
    output wire [0:0] out_lm1_gaussian_avm_burstcount,
    output wire [3:0] out_lm1_gaussian_avm_byteenable,
    output wire [0:0] out_lm1_gaussian_avm_enable,
    output wire [0:0] out_lm1_gaussian_avm_read,
    output wire [0:0] out_lm1_gaussian_avm_write,
    output wire [31:0] out_lm1_gaussian_avm_writedata,
    output wire [31:0] out_lm92_gaussian_avm_address,
    output wire [0:0] out_lm92_gaussian_avm_burstcount,
    output wire [3:0] out_lm92_gaussian_avm_byteenable,
    output wire [0:0] out_lm92_gaussian_avm_enable,
    output wire [0:0] out_lm92_gaussian_avm_read,
    output wire [0:0] out_lm92_gaussian_avm_write,
    output wire [31:0] out_lm92_gaussian_avm_writedata,
    output wire [31:0] out_memdep_4_gaussian_avm_address,
    output wire [0:0] out_memdep_4_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_4_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_4_gaussian_avm_enable,
    output wire [0:0] out_memdep_4_gaussian_avm_read,
    output wire [0:0] out_memdep_4_gaussian_avm_write,
    output wire [31:0] out_memdep_4_gaussian_avm_writedata,
    output wire [31:0] out_memdep_5_gaussian_avm_address,
    output wire [0:0] out_memdep_5_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_5_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_5_gaussian_avm_enable,
    output wire [0:0] out_memdep_5_gaussian_avm_read,
    output wire [0:0] out_memdep_5_gaussian_avm_write,
    output wire [31:0] out_memdep_5_gaussian_avm_writedata,
    output wire [31:0] out_memdep_gaussian_avm_address,
    output wire [0:0] out_memdep_gaussian_avm_burstcount,
    output wire [3:0] out_memdep_gaussian_avm_byteenable,
    output wire [0:0] out_memdep_gaussian_avm_enable,
    output wire [0:0] out_memdep_gaussian_avm_read,
    output wire [0:0] out_memdep_gaussian_avm_write,
    output wire [31:0] out_memdep_gaussian_avm_writedata,
    output wire [0:0] out_o_active_unnamed_gaussian16,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_gaussian15_gaussian_avm_address,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_burstcount,
    output wire [3:0] out_unnamed_gaussian15_gaussian_avm_byteenable,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_enable,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_read,
    output wire [0:0] out_unnamed_gaussian15_gaussian_avm_write,
    output wire [31:0] out_unnamed_gaussian15_gaussian_avm_writedata,
    output wire [63:0] out_unnamed_gaussian16_gaussian_avm_address,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_burstcount,
    output wire [7:0] out_unnamed_gaussian16_gaussian_avm_byteenable,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_enable,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_read,
    output wire [0:0] out_unnamed_gaussian16_gaussian_avm_write,
    output wire [63:0] out_unnamed_gaussian16_gaussian_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_gaussian_B0_runOnce_out_stall_out_0;
    wire [31:0] bb_gaussian_B10_out_c0_exe41644;
    wire [0:0] bb_gaussian_B10_out_feedback_out_28;
    wire [0:0] bb_gaussian_B10_out_feedback_valid_out_28;
    wire [0:0] bb_gaussian_B10_out_stall_in_0;
    wire [0:0] bb_gaussian_B10_out_stall_out_0;
    wire [0:0] bb_gaussian_B10_out_valid_out_0;
    wire [0:0] bb_gaussian_B11_out_c0_exe2162;
    wire [31:0] bb_gaussian_B11_out_c0_exe4164;
    wire [0:0] bb_gaussian_B11_out_c0_exe5165;
    wire [0:0] bb_gaussian_B11_out_c0_exe6166;
    wire [0:0] bb_gaussian_B11_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B11_out_exiting_valid_out;
    wire [31:0] bb_gaussian_B11_out_lm113_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_out_lm113_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_out_lm113_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_out_lm113_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_out_lm113_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_out_lm113_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_out_lm113_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B11_out_lm1_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_out_lm1_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_out_lm1_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_out_lm1_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_out_lm1_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_out_lm1_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_out_lm1_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B11_out_lm92_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_out_lm92_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_out_lm92_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_out_lm92_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_out_lm92_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_out_lm92_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_out_lm92_gaussian_avm_writedata;
    wire [31:0] bb_gaussian_B11_out_memdep_5_gaussian_avm_address;
    wire [0:0] bb_gaussian_B11_out_memdep_5_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B11_out_memdep_5_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B11_out_memdep_5_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B11_out_memdep_5_gaussian_avm_read;
    wire [0:0] bb_gaussian_B11_out_memdep_5_gaussian_avm_write;
    wire [31:0] bb_gaussian_B11_out_memdep_5_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B11_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B11_out_stall_in_0;
    wire [0:0] bb_gaussian_B11_out_stall_out_0;
    wire [0:0] bb_gaussian_B11_out_stall_out_1;
    wire [0:0] bb_gaussian_B11_out_valid_in_0;
    wire [0:0] bb_gaussian_B11_out_valid_in_1;
    wire [0:0] bb_gaussian_B11_out_valid_out_0;
    wire [0:0] bb_gaussian_B12_out_c0_exe2175;
    wire [31:0] bb_gaussian_B12_out_c0_exe3176;
    wire [0:0] bb_gaussian_B12_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B12_out_exiting_valid_out;
    wire [0:0] bb_gaussian_B12_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B12_out_stall_out_0;
    wire [0:0] bb_gaussian_B12_out_stall_out_1;
    wire [0:0] bb_gaussian_B12_out_valid_in_0;
    wire [0:0] bb_gaussian_B12_out_valid_in_1;
    wire [0:0] bb_gaussian_B12_out_valid_out_0;
    wire [0:0] bb_gaussian_B13_out_feedback_out_1;
    wire [0:0] bb_gaussian_B13_out_feedback_valid_out_1;
    wire [0:0] bb_gaussian_B13_out_iowr_bl_return_gaussian_o_fifodata;
    wire [0:0] bb_gaussian_B13_out_iowr_bl_return_gaussian_o_fifovalid;
    wire [0:0] bb_gaussian_B13_out_stall_in_0;
    wire [0:0] bb_gaussian_B13_out_stall_out_0;
    wire [0:0] bb_gaussian_B13_out_valid_out_0;
    wire [0:0] bb_gaussian_B14_out_stall_in_0;
    wire [0:0] bb_gaussian_B14_out_stall_out_0;
    wire [0:0] bb_gaussian_B14_out_valid_out_0;
    wire [0:0] bb_gaussian_B15_out_c0_exe3190;
    wire [0:0] bb_gaussian_B15_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B15_out_exiting_valid_out;
    wire [0:0] bb_gaussian_B15_out_lsu_unnamed_gaussian16_o_active;
    wire [0:0] bb_gaussian_B15_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B15_out_stall_in_0;
    wire [0:0] bb_gaussian_B15_out_stall_out_0;
    wire [0:0] bb_gaussian_B15_out_stall_out_1;
    wire [31:0] bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_address;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_read;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_write;
    wire [31:0] bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_writedata;
    wire [63:0] bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_address;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_burstcount;
    wire [7:0] bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_read;
    wire [0:0] bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_write;
    wire [63:0] bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B15_out_valid_in_0;
    wire [0:0] bb_gaussian_B15_out_valid_in_1;
    wire [0:0] bb_gaussian_B15_out_valid_out_0;
    wire [0:0] bb_gaussian_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_gaussian_B1_start_out_intel_reserved_ffwd_0_0;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;
    wire [0:0] bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;
    wire [0:0] bb_gaussian_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B1_start_out_stall_out_0;
    wire [0:0] bb_gaussian_B1_start_out_valid_in_0;
    wire [0:0] bb_gaussian_B1_start_out_valid_in_1;
    wire [0:0] bb_gaussian_B1_start_out_valid_out_0;
    wire [0:0] bb_gaussian_B2_out_stall_out_0;
    wire [0:0] bb_gaussian_B2_out_valid_out_0;
    wire [63:0] bb_gaussian_B3_out_c0_exe1124;
    wire [0:0] bb_gaussian_B3_out_c0_exe3;
    wire [0:0] bb_gaussian_B3_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B3_out_exiting_valid_out;
    wire [31:0] bb_gaussian_B3_out_memdep_gaussian_avm_address;
    wire [0:0] bb_gaussian_B3_out_memdep_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B3_out_memdep_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B3_out_memdep_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B3_out_memdep_gaussian_avm_read;
    wire [0:0] bb_gaussian_B3_out_memdep_gaussian_avm_write;
    wire [31:0] bb_gaussian_B3_out_memdep_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B3_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B3_out_stall_out_0;
    wire [0:0] bb_gaussian_B3_out_stall_out_1;
    wire [0:0] bb_gaussian_B3_out_valid_in_0;
    wire [0:0] bb_gaussian_B3_out_valid_in_1;
    wire [0:0] bb_gaussian_B3_out_valid_out_0;
    wire [0:0] bb_gaussian_B4_out_stall_in_0;
    wire [0:0] bb_gaussian_B4_out_stall_out_0;
    wire [0:0] bb_gaussian_B4_out_valid_out_0;
    wire [0:0] bb_gaussian_B5_out_c0_exe3134;
    wire [0:0] bb_gaussian_B5_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B5_out_exiting_valid_out;
    wire [31:0] bb_gaussian_B5_out_memdep_4_gaussian_avm_address;
    wire [0:0] bb_gaussian_B5_out_memdep_4_gaussian_avm_burstcount;
    wire [3:0] bb_gaussian_B5_out_memdep_4_gaussian_avm_byteenable;
    wire [0:0] bb_gaussian_B5_out_memdep_4_gaussian_avm_enable;
    wire [0:0] bb_gaussian_B5_out_memdep_4_gaussian_avm_read;
    wire [0:0] bb_gaussian_B5_out_memdep_4_gaussian_avm_write;
    wire [31:0] bb_gaussian_B5_out_memdep_4_gaussian_avm_writedata;
    wire [0:0] bb_gaussian_B5_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B5_out_stall_in_0;
    wire [0:0] bb_gaussian_B5_out_stall_out_0;
    wire [0:0] bb_gaussian_B5_out_stall_out_1;
    wire [0:0] bb_gaussian_B5_out_valid_in_0;
    wire [0:0] bb_gaussian_B5_out_valid_in_1;
    wire [0:0] bb_gaussian_B5_out_valid_out_0;
    wire [31:0] bb_gaussian_B6_out_c0_exe41643;
    wire [31:0] bb_gaussian_B6_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_gaussian_B6_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_gaussian_B6_out_stall_in_0;
    wire [0:0] bb_gaussian_B6_out_stall_out_0;
    wire [0:0] bb_gaussian_B6_out_valid_out_0;
    wire [0:0] bb_gaussian_B6_out_valid_out_1;
    wire [0:0] bb_gaussian_B7_out_stall_out_0;
    wire [0:0] bb_gaussian_B7_out_valid_out_0;
    wire [31:0] bb_gaussian_B8_out_add;
    wire [31:0] bb_gaussian_B8_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_gaussian_B8_out_intel_reserved_ffwd_4_0;
    wire [31:0] bb_gaussian_B8_out_intel_reserved_ffwd_5_0;
    wire [32:0] bb_gaussian_B8_out_intel_reserved_ffwd_6_0;
    wire [31:0] bb_gaussian_B8_out_intel_reserved_ffwd_7_0;
    wire [0:0] bb_gaussian_B8_out_intel_reserved_ffwd_8_0;
    wire [0:0] bb_gaussian_B8_out_stall_out_0;
    wire [0:0] bb_gaussian_B8_out_stall_out_1;
    wire [0:0] bb_gaussian_B8_out_valid_in_0;
    wire [0:0] bb_gaussian_B8_out_valid_in_1;
    wire [0:0] bb_gaussian_B8_out_valid_out_0;
    wire [31:0] bb_gaussian_B9_out_c0_exe1144;
    wire [0:0] bb_gaussian_B9_out_c0_exe2145;
    wire [0:0] bb_gaussian_B9_out_c0_exe3146;
    wire [31:0] bb_gaussian_B9_out_c0_exe4;
    wire [31:0] bb_gaussian_B9_out_c0_exe6;
    wire [0:0] bb_gaussian_B9_out_exiting_stall_out;
    wire [0:0] bb_gaussian_B9_out_exiting_valid_out;
    wire [0:0] bb_gaussian_B9_out_feedback_stall_out_28;
    wire [0:0] bb_gaussian_B9_out_memdep_phi_pop28;
    wire [0:0] bb_gaussian_B9_out_pipeline_valid_out;
    wire [0:0] bb_gaussian_B9_out_stall_out_0;
    wire [0:0] bb_gaussian_B9_out_stall_out_1;
    wire [0:0] bb_gaussian_B9_out_valid_in_0;
    wire [0:0] bb_gaussian_B9_out_valid_in_1;
    wire [0:0] bb_gaussian_B9_out_valid_out_0;
    wire [1:0] c_i2_065_q;
    wire [31:0] c_i32_119_q;
    wire [31:0] c_i32_undef28_q;
    wire [63:0] c_i64_undef12_q;
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
    wire [0:0] gaussian_B11_x_i_capture;
    wire gaussian_B11_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_clear;
    wire gaussian_B11_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_enable;
    wire gaussian_B11_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_shift;
    wire gaussian_B11_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_stall_pred;
    wire gaussian_B11_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_stall_succ;
    wire gaussian_B11_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_valid_loop;
    wire gaussian_B11_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_valid_pred;
    wire gaussian_B11_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B11_x_i_valid_succ;
    wire gaussian_B11_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_capture;
    wire gaussian_B12_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_clear;
    wire gaussian_B12_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_enable;
    wire gaussian_B12_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_shift;
    wire gaussian_B12_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_stall_pred;
    wire gaussian_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_stall_succ;
    wire gaussian_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_valid_loop;
    wire gaussian_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_valid_pred;
    wire gaussian_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B12_x_i_valid_succ;
    wire gaussian_B12_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_capture;
    wire gaussian_B15_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_clear;
    wire gaussian_B15_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_enable;
    wire gaussian_B15_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_shift;
    wire gaussian_B15_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_stall_pred;
    wire gaussian_B15_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_stall_succ;
    wire gaussian_B15_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_valid_loop;
    wire gaussian_B15_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_valid_pred;
    wire gaussian_B15_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B15_x_i_valid_succ;
    wire gaussian_B15_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_capture;
    wire gaussian_B3_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_clear;
    wire gaussian_B3_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_enable;
    wire gaussian_B3_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_shift;
    wire gaussian_B3_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_stall_pred;
    wire gaussian_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_stall_succ;
    wire gaussian_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_valid_loop;
    wire gaussian_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_valid_pred;
    wire gaussian_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B3_x_i_valid_succ;
    wire gaussian_B3_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] gaussian_B8_x_i_capture;
    wire gaussian_B8_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_clear;
    wire gaussian_B8_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_enable;
    wire gaussian_B8_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_shift;
    wire gaussian_B8_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_stall_pred;
    wire gaussian_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_stall_succ;
    wire gaussian_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_valid_loop;
    wire gaussian_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_valid_pred;
    wire gaussian_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B8_x_i_valid_succ;
    wire gaussian_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_capture;
    wire gaussian_B9_x_i_capture_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_clear;
    wire gaussian_B9_x_i_clear_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_enable;
    wire gaussian_B9_x_i_enable_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_shift;
    wire gaussian_B9_x_i_shift_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_stall_pred;
    wire gaussian_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_stall_succ;
    wire gaussian_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_valid_loop;
    wire gaussian_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_valid_pred;
    wire gaussian_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] gaussian_B9_x_i_valid_succ;
    wire gaussian_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_gaussian2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_gaussian2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_gaussian1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_gaussian1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo_out_valid_out;
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
    wire [0:0] loop_limiter_gaussian3_out_o_stall;
    wire [0:0] loop_limiter_gaussian3_out_o_valid;
    wire [0:0] loop_limiter_gaussian4_out_o_stall;
    wire [0:0] loop_limiter_gaussian4_out_o_valid;
    wire [0:0] loop_limiter_gaussian5_out_o_stall;
    wire [0:0] loop_limiter_gaussian5_out_o_valid;
    wire [0:0] loop_limiter_gaussian6_out_o_stall;
    wire [0:0] loop_limiter_gaussian6_out_o_valid;
    wire [0:0] bb_gaussian_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B10_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_gaussian_B11_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_gaussian_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B14_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B14_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B15_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B15_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B15_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B15_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_gaussian_B15_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B8_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B8_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_gaussian_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_gaussian_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_gaussian_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_gaussian_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_gaussian_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_gaussian_B9_sr_1_aunroll_x_out_o_data_1_tpl;


    // c_i2_065(CONSTANT,71)
    assign c_i2_065_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo(BLACKBOX,105)
    gaussian_i_llvm_fpga_pipeline_keep_going89_1_valid_fifo thei_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo (
        .in_data_in(c_i2_065_q),
        .in_stall_in(bb_gaussian_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going89_gaussian1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo(BLACKBOX,103)
    gaussian_i_llvm_fpga_pipeline_keep_going85_2_valid_fifo thei_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo (
        .in_data_in(c_i2_065_q),
        .in_stall_in(bb_gaussian_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going85_gaussian2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo(BLACKBOX,101)
    gaussian_i_llvm_fpga_pipeline_keep_going71_6_valid_fifo thei_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo (
        .in_data_in(c_i2_065_q),
        .in_stall_in(bb_gaussian_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going71_gaussian6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B8_sr_0_aunroll_x(BLACKBOX,231)
    gaussian_bb_B8_sr_0 thebb_gaussian_B8_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B8_out_stall_out_0),
        .in_i_valid(bb_gaussian_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B6_out_c0_exe41643),
        .in_i_data_1_tpl(GND_q),
        .out_o_stall(bb_gaussian_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo(BLACKBOX,99)
    gaussian_i_llvm_fpga_pipeline_keep_going64_2_valid_fifo thei_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo (
        .in_data_in(c_i2_065_q),
        .in_stall_in(bb_gaussian_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going64_gaussian2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo(BLACKBOX,97)
    gaussian_i_llvm_fpga_pipeline_keep_going48_6_valid_fifo thei_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo (
        .in_data_in(c_i2_065_q),
        .in_stall_in(bb_gaussian_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_gaussian6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B10_sr_0_aunroll_x(BLACKBOX,219)
    gaussian_bb_B10_sr_0 thebb_gaussian_B10_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B10_out_stall_out_0),
        .in_i_valid(bb_gaussian_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B11_out_c0_exe2162),
        .in_i_data_1_tpl(bb_gaussian_B11_out_c0_exe4164),
        .in_i_data_2_tpl(bb_gaussian_B11_out_c0_exe5165),
        .in_i_data_3_tpl(bb_gaussian_B11_out_c0_exe6166),
        .out_o_stall(bb_gaussian_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_gaussian6_sr(BLACKBOX,96)
    gaussian_i_llvm_fpga_pipeline_keep_going48_6_sr thei_llvm_fpga_pipeline_keep_going48_gaussian6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_gaussian6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_gaussian6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B11(BLACKBOX,4)
    gaussian_bb_B11 thebb_gaussian_B11 (
        .in_add108_0(c_i32_undef28_q),
        .in_add108_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_add96_pop29112_0(c_i32_undef28_q),
        .in_add96_pop29112_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked45_0(GND_q),
        .in_forked45_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_034_replace_phi109_0(c_i32_undef28_q),
        .in_i_034_replace_phi109_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_3_0(bb_gaussian_B8_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_8_0(bb_gaussian_B8_out_intel_reserved_ffwd_8_0),
        .in_lm113_gaussian_avm_readdata(in_lm113_gaussian_avm_readdata),
        .in_lm113_gaussian_avm_readdatavalid(in_lm113_gaussian_avm_readdatavalid),
        .in_lm113_gaussian_avm_waitrequest(in_lm113_gaussian_avm_waitrequest),
        .in_lm113_gaussian_avm_writeack(in_lm113_gaussian_avm_writeack),
        .in_lm1_gaussian_avm_readdata(in_lm1_gaussian_avm_readdata),
        .in_lm1_gaussian_avm_readdatavalid(in_lm1_gaussian_avm_readdatavalid),
        .in_lm1_gaussian_avm_waitrequest(in_lm1_gaussian_avm_waitrequest),
        .in_lm1_gaussian_avm_writeack(in_lm1_gaussian_avm_writeack),
        .in_lm92_gaussian_avm_readdata(in_lm92_gaussian_avm_readdata),
        .in_lm92_gaussian_avm_readdatavalid(in_lm92_gaussian_avm_readdatavalid),
        .in_lm92_gaussian_avm_waitrequest(in_lm92_gaussian_avm_waitrequest),
        .in_lm92_gaussian_avm_writeack(in_lm92_gaussian_avm_writeack),
        .in_memdep_5_gaussian_avm_readdata(in_memdep_5_gaussian_avm_readdata),
        .in_memdep_5_gaussian_avm_readdatavalid(in_memdep_5_gaussian_avm_readdatavalid),
        .in_memdep_5_gaussian_avm_waitrequest(in_memdep_5_gaussian_avm_waitrequest),
        .in_memdep_5_gaussian_avm_writeack(in_memdep_5_gaussian_avm_writeack),
        .in_memdep_phi_pop28111_0(GND_q),
        .in_memdep_phi_pop28111_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp63110_0(GND_q),
        .in_notcmp63110_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_gaussian6_sr_out_o_stall),
        .in_stall_in_0(bb_gaussian_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_gaussian13_0(GND_q),
        .in_unnamed_gaussian13_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_gaussian6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B11_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2162(bb_gaussian_B11_out_c0_exe2162),
        .out_c0_exe4164(bb_gaussian_B11_out_c0_exe4164),
        .out_c0_exe5165(bb_gaussian_B11_out_c0_exe5165),
        .out_c0_exe6166(bb_gaussian_B11_out_c0_exe6166),
        .out_exiting_stall_out(bb_gaussian_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B11_out_exiting_valid_out),
        .out_lm113_gaussian_avm_address(bb_gaussian_B11_out_lm113_gaussian_avm_address),
        .out_lm113_gaussian_avm_burstcount(bb_gaussian_B11_out_lm113_gaussian_avm_burstcount),
        .out_lm113_gaussian_avm_byteenable(bb_gaussian_B11_out_lm113_gaussian_avm_byteenable),
        .out_lm113_gaussian_avm_enable(bb_gaussian_B11_out_lm113_gaussian_avm_enable),
        .out_lm113_gaussian_avm_read(bb_gaussian_B11_out_lm113_gaussian_avm_read),
        .out_lm113_gaussian_avm_write(bb_gaussian_B11_out_lm113_gaussian_avm_write),
        .out_lm113_gaussian_avm_writedata(bb_gaussian_B11_out_lm113_gaussian_avm_writedata),
        .out_lm1_gaussian_avm_address(bb_gaussian_B11_out_lm1_gaussian_avm_address),
        .out_lm1_gaussian_avm_burstcount(bb_gaussian_B11_out_lm1_gaussian_avm_burstcount),
        .out_lm1_gaussian_avm_byteenable(bb_gaussian_B11_out_lm1_gaussian_avm_byteenable),
        .out_lm1_gaussian_avm_enable(bb_gaussian_B11_out_lm1_gaussian_avm_enable),
        .out_lm1_gaussian_avm_read(bb_gaussian_B11_out_lm1_gaussian_avm_read),
        .out_lm1_gaussian_avm_write(bb_gaussian_B11_out_lm1_gaussian_avm_write),
        .out_lm1_gaussian_avm_writedata(bb_gaussian_B11_out_lm1_gaussian_avm_writedata),
        .out_lm92_gaussian_avm_address(bb_gaussian_B11_out_lm92_gaussian_avm_address),
        .out_lm92_gaussian_avm_burstcount(bb_gaussian_B11_out_lm92_gaussian_avm_burstcount),
        .out_lm92_gaussian_avm_byteenable(bb_gaussian_B11_out_lm92_gaussian_avm_byteenable),
        .out_lm92_gaussian_avm_enable(bb_gaussian_B11_out_lm92_gaussian_avm_enable),
        .out_lm92_gaussian_avm_read(bb_gaussian_B11_out_lm92_gaussian_avm_read),
        .out_lm92_gaussian_avm_write(bb_gaussian_B11_out_lm92_gaussian_avm_write),
        .out_lm92_gaussian_avm_writedata(bb_gaussian_B11_out_lm92_gaussian_avm_writedata),
        .out_memdep_5_gaussian_avm_address(bb_gaussian_B11_out_memdep_5_gaussian_avm_address),
        .out_memdep_5_gaussian_avm_burstcount(bb_gaussian_B11_out_memdep_5_gaussian_avm_burstcount),
        .out_memdep_5_gaussian_avm_byteenable(bb_gaussian_B11_out_memdep_5_gaussian_avm_byteenable),
        .out_memdep_5_gaussian_avm_enable(bb_gaussian_B11_out_memdep_5_gaussian_avm_enable),
        .out_memdep_5_gaussian_avm_read(bb_gaussian_B11_out_memdep_5_gaussian_avm_read),
        .out_memdep_5_gaussian_avm_write(bb_gaussian_B11_out_memdep_5_gaussian_avm_write),
        .out_memdep_5_gaussian_avm_writedata(bb_gaussian_B11_out_memdep_5_gaussian_avm_writedata),
        .out_pipeline_valid_out(bb_gaussian_B11_out_pipeline_valid_out),
        .out_stall_in_0(bb_gaussian_B11_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B11_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B11_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B11_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B11_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B11_sr_1_aunroll_x(BLACKBOX,220)
    gaussian_bb_B11_sr_1 thebb_gaussian_B11_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian6_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B9_out_c0_exe6),
        .in_i_data_2_tpl(bb_gaussian_B9_out_c0_exe1144),
        .in_i_data_3_tpl(bb_gaussian_B9_out_c0_exe2145),
        .in_i_data_4_tpl(bb_gaussian_B9_out_c0_exe3146),
        .in_i_data_5_tpl(bb_gaussian_B9_out_memdep_phi_pop28),
        .in_i_data_6_tpl(bb_gaussian_B9_out_c0_exe4),
        .out_o_stall(bb_gaussian_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B11_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_gaussian_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian6(BLACKBOX,155)
    gaussian_loop_limiter_6 theloop_limiter_gaussian6 (
        .in_i_stall(bb_gaussian_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B11_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B9_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian6_out_o_stall),
        .out_o_valid(loop_limiter_gaussian6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going64_gaussian2_sr(BLACKBOX,98)
    gaussian_i_llvm_fpga_pipeline_keep_going64_2_sr thei_llvm_fpga_pipeline_keep_going64_gaussian2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going64_gaussian2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going64_gaussian2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B10(BLACKBOX,3)
    gaussian_bb_B10 thebb_gaussian_B10 (
        .in_c0_exe21622_0(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe41644_0(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51655_0(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61666_0(bb_gaussian_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_28(bb_gaussian_B9_out_feedback_stall_out_28),
        .in_stall_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_gaussian_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe41644(bb_gaussian_B10_out_c0_exe41644),
        .out_feedback_out_28(bb_gaussian_B10_out_feedback_out_28),
        .out_feedback_valid_out_28(bb_gaussian_B10_out_feedback_valid_out_28),
        .out_stall_in_0(bb_gaussian_B10_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B10_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef28(CONSTANT,79)
    assign c_i32_undef28_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_gaussian_B9(BLACKBOX,17)
    gaussian_bb_B9 thebb_gaussian_B9 (
        .in_add106_0(c_i32_undef28_q),
        .in_add106_1(bb_gaussian_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_feedback_in_28(bb_gaussian_B10_out_feedback_out_28),
        .in_feedback_valid_in_28(bb_gaussian_B10_out_feedback_valid_out_28),
        .in_forked32_0(GND_q),
        .in_forked32_1(bb_gaussian_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_6_0(bb_gaussian_B8_out_intel_reserved_ffwd_6_0),
        .in_intel_reserved_ffwd_7_0(bb_gaussian_B8_out_intel_reserved_ffwd_7_0),
        .in_intel_reserved_ffwd_8_0(bb_gaussian_B8_out_intel_reserved_ffwd_8_0),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going64_gaussian2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian6_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going64_gaussian2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1144(bb_gaussian_B9_out_c0_exe1144),
        .out_c0_exe2145(bb_gaussian_B9_out_c0_exe2145),
        .out_c0_exe3146(bb_gaussian_B9_out_c0_exe3146),
        .out_c0_exe4(bb_gaussian_B9_out_c0_exe4),
        .out_c0_exe6(bb_gaussian_B9_out_c0_exe6),
        .out_exiting_stall_out(bb_gaussian_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B9_out_exiting_valid_out),
        .out_feedback_stall_out_28(bb_gaussian_B9_out_feedback_stall_out_28),
        .out_memdep_phi_pop28(bb_gaussian_B9_out_memdep_phi_pop28),
        .out_pipeline_valid_out(bb_gaussian_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B9_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B9_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B9_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B9_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B9_sr_1_aunroll_x(BLACKBOX,233)
    gaussian_bb_B9_sr_1 thebb_gaussian_B9_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B8_out_add),
        .out_o_stall(bb_gaussian_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian4(BLACKBOX,153)
    gaussian_loop_limiter_4 theloop_limiter_gaussian4 (
        .in_i_stall(bb_gaussian_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B9_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B8_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian4_out_o_stall),
        .out_o_valid(loop_limiter_gaussian4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B8(BLACKBOX,16)
    gaussian_bb_B8 thebb_gaussian_B8 (
        .in_forked_0(bb_gaussian_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_forked_1(bb_gaussian_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_1_0(bb_gaussian_B6_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_gaussian_B6_out_intel_reserved_ffwd_2_0),
        .in_j_035_0(bb_gaussian_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_j_035_1(bb_gaussian_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_gaussian4_out_o_stall),
        .in_valid_in_0(bb_gaussian_B8_sr_0_aunroll_x_out_o_valid),
        .in_valid_in_1(bb_gaussian_B8_sr_1_aunroll_x_out_o_valid),
        .out_add(bb_gaussian_B8_out_add),
        .out_intel_reserved_ffwd_3_0(bb_gaussian_B8_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_gaussian_B8_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_gaussian_B8_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_gaussian_B8_out_intel_reserved_ffwd_6_0),
        .out_intel_reserved_ffwd_7_0(bb_gaussian_B8_out_intel_reserved_ffwd_7_0),
        .out_intel_reserved_ffwd_8_0(bb_gaussian_B8_out_intel_reserved_ffwd_8_0),
        .out_stall_out_0(bb_gaussian_B8_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B8_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B8_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B8_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6_sr_0_aunroll_x(BLACKBOX,229)
    gaussian_bb_B6_sr_0 thebb_gaussian_B6_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B6_out_stall_out_0),
        .in_i_valid(bb_gaussian_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B10_out_c0_exe41644),
        .out_o_stall(bb_gaussian_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B6(BLACKBOX,14)
    gaussian_bb_B6 thebb_gaussian_B6 (
        .in_c0_exe41643_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_4_0(bb_gaussian_B8_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_gaussian_B8_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_8_0(bb_gaussian_B8_out_intel_reserved_ffwd_8_0),
        .in_stall_in_0(bb_gaussian_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(bb_gaussian_B7_sr_0_aunroll_x_out_o_stall),
        .in_valid_in_0(bb_gaussian_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe41643(bb_gaussian_B6_out_c0_exe41643),
        .out_intel_reserved_ffwd_1_0(bb_gaussian_B6_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_gaussian_B6_out_intel_reserved_ffwd_2_0),
        .out_stall_in_0(bb_gaussian_B6_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B6_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B6_out_valid_out_0),
        .out_valid_out_1(bb_gaussian_B6_out_valid_out_1),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo(BLACKBOX,95)
    gaussian_i_llvm_fpga_pipeline_keep_going41_2_valid_fifo thei_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo (
        .in_data_in(c_i2_065_q),
        .in_stall_in(bb_gaussian_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going41_gaussian2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo(BLACKBOX,107)
    gaussian_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo (
        .in_data_in(c_i2_065_q),
        .in_stall_in(bb_gaussian_B15_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B13_sr_0_aunroll_x(BLACKBOX,222)
    gaussian_bb_B13_sr_0 thebb_gaussian_B13_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B13_out_stall_out_0),
        .in_i_valid(bb_gaussian_B14_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_gaussian_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B14(BLACKBOX,7)
    gaussian_bb_B14 thebb_gaussian_B14 (
        .in_c0_exe31907_0(bb_gaussian_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_gaussian_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_gaussian_B14_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_gaussian_B14_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B14_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B14_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B14_sr_0_aunroll_x(BLACKBOX,223)
    gaussian_bb_B14_sr_0 thebb_gaussian_B14_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B14_out_stall_out_0),
        .in_i_valid(bb_gaussian_B15_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B15_out_c0_exe3190),
        .out_o_stall(bb_gaussian_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B14_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_gaussian6_sr(BLACKBOX,106)
    gaussian_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_gaussian6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B15_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B15(BLACKBOX,8)
    gaussian_bb_B15 thebb_gaussian_B15 (
        .in_flush(in_start),
        .in_forked38_0(GND_q),
        .in_forked38_1(bb_gaussian_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i49_031_pop19119_0(c_i32_undef28_q),
        .in_i49_031_pop19119_1(bb_gaussian_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_0_0(bb_gaussian_B1_start_out_intel_reserved_ffwd_0_0),
        .in_notcmp39118_0(GND_q),
        .in_notcmp39118_1(bb_gaussian_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_gaussian6_sr_out_o_stall),
        .in_stall_in_0(bb_gaussian_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_gaussian15_gaussian_avm_readdata(in_unnamed_gaussian15_gaussian_avm_readdata),
        .in_unnamed_gaussian15_gaussian_avm_readdatavalid(in_unnamed_gaussian15_gaussian_avm_readdatavalid),
        .in_unnamed_gaussian15_gaussian_avm_waitrequest(in_unnamed_gaussian15_gaussian_avm_waitrequest),
        .in_unnamed_gaussian15_gaussian_avm_writeack(in_unnamed_gaussian15_gaussian_avm_writeack),
        .in_unnamed_gaussian16_gaussian_avm_readdata(in_unnamed_gaussian16_gaussian_avm_readdata),
        .in_unnamed_gaussian16_gaussian_avm_readdatavalid(in_unnamed_gaussian16_gaussian_avm_readdatavalid),
        .in_unnamed_gaussian16_gaussian_avm_waitrequest(in_unnamed_gaussian16_gaussian_avm_waitrequest),
        .in_unnamed_gaussian16_gaussian_avm_writeack(in_unnamed_gaussian16_gaussian_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_gaussian6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B15_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3190(bb_gaussian_B15_out_c0_exe3190),
        .out_exiting_stall_out(bb_gaussian_B15_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B15_out_exiting_valid_out),
        .out_lsu_unnamed_gaussian16_o_active(bb_gaussian_B15_out_lsu_unnamed_gaussian16_o_active),
        .out_pipeline_valid_out(bb_gaussian_B15_out_pipeline_valid_out),
        .out_stall_in_0(bb_gaussian_B15_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B15_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B15_out_stall_out_1),
        .out_unnamed_gaussian15_gaussian_avm_address(bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_address),
        .out_unnamed_gaussian15_gaussian_avm_burstcount(bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_burstcount),
        .out_unnamed_gaussian15_gaussian_avm_byteenable(bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_byteenable),
        .out_unnamed_gaussian15_gaussian_avm_enable(bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_enable),
        .out_unnamed_gaussian15_gaussian_avm_read(bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_read),
        .out_unnamed_gaussian15_gaussian_avm_write(bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_write),
        .out_unnamed_gaussian15_gaussian_avm_writedata(bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_writedata),
        .out_unnamed_gaussian16_gaussian_avm_address(bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_address),
        .out_unnamed_gaussian16_gaussian_avm_burstcount(bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_burstcount),
        .out_unnamed_gaussian16_gaussian_avm_byteenable(bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_byteenable),
        .out_unnamed_gaussian16_gaussian_avm_enable(bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_enable),
        .out_unnamed_gaussian16_gaussian_avm_read(bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_read),
        .out_unnamed_gaussian16_gaussian_avm_write(bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_write),
        .out_unnamed_gaussian16_gaussian_avm_writedata(bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_writedata),
        .out_valid_in_0(bb_gaussian_B15_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B15_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B15_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B15_sr_1_aunroll_x(BLACKBOX,224)
    gaussian_bb_B15_sr_1 thebb_gaussian_B15_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B15_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B12_out_c0_exe2175),
        .in_i_data_2_tpl(bb_gaussian_B12_out_c0_exe3176),
        .out_o_stall(bb_gaussian_B15_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B15_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian5(BLACKBOX,154)
    gaussian_loop_limiter_5 theloop_limiter_gaussian5 (
        .in_i_stall(bb_gaussian_B15_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B15_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B12_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B15_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian5_out_o_stall),
        .out_o_valid(loop_limiter_gaussian5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_gaussian2_sr(BLACKBOX,94)
    gaussian_i_llvm_fpga_pipeline_keep_going41_2_sr thei_llvm_fpga_pipeline_keep_going41_gaussian2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going41_gaussian2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going41_gaussian2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B12(BLACKBOX,5)
    gaussian_bb_B12 thebb_gaussian_B12 (
        .in_forked93_0(GND_q),
        .in_forked93_1(bb_gaussian_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going41_gaussian2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going41_gaussian2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2175(bb_gaussian_B12_out_c0_exe2175),
        .out_c0_exe3176(bb_gaussian_B12_out_c0_exe3176),
        .out_exiting_stall_out(bb_gaussian_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_gaussian_B12_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B12_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B12_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B12_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B12_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B12_sr_1_aunroll_x(BLACKBOX,221)
    gaussian_bb_B12_sr_1 thebb_gaussian_B12_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_gaussian_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian2(BLACKBOX,151)
    gaussian_loop_limiter_2 theloop_limiter_gaussian2 (
        .in_i_stall(bb_gaussian_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B12_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B7_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian2_out_o_stall),
        .out_o_valid(loop_limiter_gaussian2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7(BLACKBOX,15)
    gaussian_bb_B7 thebb_gaussian_B7 (
        .in_stall_in_0(loop_limiter_gaussian2_out_o_stall),
        .in_valid_in_0(bb_gaussian_B7_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_gaussian_B7_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B7_sr_0_aunroll_x(BLACKBOX,230)
    gaussian_bb_B7_sr_0 thebb_gaussian_B7_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B7_out_stall_out_0),
        .in_i_valid(bb_gaussian_B6_out_valid_out_1),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_gaussian_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_119(CONSTANT,78)
    assign c_i32_119_q = $unsigned(32'b00000000000000000000000000000001);

    // bb_gaussian_B8_sr_1_aunroll_x(BLACKBOX,232)
    gaussian_bb_B8_sr_1 thebb_gaussian_B8_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian1_out_o_valid),
        .in_i_data_0_tpl(c_i32_119_q),
        .in_i_data_1_tpl(VCC_q),
        .out_o_stall(bb_gaussian_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian1(BLACKBOX,150)
    gaussian_loop_limiter_1 theloop_limiter_gaussian1 (
        .in_i_stall(bb_gaussian_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B7_sr_0_aunroll_x_out_o_stall),
        .in_i_valid(bb_gaussian_B2_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B6_out_valid_out_1),
        .out_o_stall(loop_limiter_gaussian1_out_o_stall),
        .out_o_valid(loop_limiter_gaussian1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2(BLACKBOX,10)
    gaussian_bb_B2 thebb_gaussian_B2 (
        .in_stall_in_0(loop_limiter_gaussian1_out_o_stall),
        .in_valid_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_gaussian_B2_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B2_sr_0_aunroll_x(BLACKBOX,225)
    gaussian_bb_B2_sr_0 thebb_gaussian_B2_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B2_out_stall_out_0),
        .in_i_valid(bb_gaussian_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4(BLACKBOX,12)
    gaussian_bb_B4 thebb_gaussian_B4 (
        .in_c0_exe31341_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_gaussian_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_gaussian_B4_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B4_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B4_sr_0_aunroll_x(BLACKBOX,227)
    gaussian_bb_B4_sr_0 thebb_gaussian_B4_sr_0_aunroll_x (
        .in_i_stall(bb_gaussian_B4_out_stall_out_0),
        .in_i_valid(bb_gaussian_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_gaussian_B5_out_c0_exe3134),
        .out_o_stall(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_gaussian6_sr(BLACKBOX,100)
    gaussian_i_llvm_fpga_pipeline_keep_going71_6_sr thei_llvm_fpga_pipeline_keep_going71_gaussian6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going71_gaussian6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going71_gaussian6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef12(CONSTANT,84)
    assign c_i64_undef12_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_gaussian_B5(BLACKBOX,13)
    gaussian_bb_B5 thebb_gaussian_B5 (
        .in_flush(in_start),
        .in_forked68_0(GND_q),
        .in_forked68_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom103_0(c_i64_undef12_q),
        .in_idxprom103_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_4_gaussian_avm_readdata(in_memdep_4_gaussian_avm_readdata),
        .in_memdep_4_gaussian_avm_readdatavalid(in_memdep_4_gaussian_avm_readdatavalid),
        .in_memdep_4_gaussian_avm_waitrequest(in_memdep_4_gaussian_avm_waitrequest),
        .in_memdep_4_gaussian_avm_writeack(in_memdep_4_gaussian_avm_writeack),
        .in_notcmp83104_0(GND_q),
        .in_notcmp83104_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going71_gaussian6_sr_out_o_stall),
        .in_stall_in_0(bb_gaussian_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going71_gaussian6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3134(bb_gaussian_B5_out_c0_exe3134),
        .out_exiting_stall_out(bb_gaussian_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B5_out_exiting_valid_out),
        .out_memdep_4_gaussian_avm_address(bb_gaussian_B5_out_memdep_4_gaussian_avm_address),
        .out_memdep_4_gaussian_avm_burstcount(bb_gaussian_B5_out_memdep_4_gaussian_avm_burstcount),
        .out_memdep_4_gaussian_avm_byteenable(bb_gaussian_B5_out_memdep_4_gaussian_avm_byteenable),
        .out_memdep_4_gaussian_avm_enable(bb_gaussian_B5_out_memdep_4_gaussian_avm_enable),
        .out_memdep_4_gaussian_avm_read(bb_gaussian_B5_out_memdep_4_gaussian_avm_read),
        .out_memdep_4_gaussian_avm_write(bb_gaussian_B5_out_memdep_4_gaussian_avm_write),
        .out_memdep_4_gaussian_avm_writedata(bb_gaussian_B5_out_memdep_4_gaussian_avm_writedata),
        .out_pipeline_valid_out(bb_gaussian_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_gaussian_B5_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B5_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B5_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B5_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B5_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B5_sr_1_aunroll_x(BLACKBOX,228)
    gaussian_bb_B5_sr_1 thebb_gaussian_B5_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_gaussian_B3_out_c0_exe1124),
        .in_i_data_2_tpl(bb_gaussian_B3_out_c0_exe3),
        .out_o_stall(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_gaussian_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian3(BLACKBOX,152)
    gaussian_loop_limiter_3 theloop_limiter_gaussian3 (
        .in_i_stall(bb_gaussian_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B5_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B3_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian3_out_o_stall),
        .out_o_valid(loop_limiter_gaussian3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going85_gaussian2_sr(BLACKBOX,102)
    gaussian_i_llvm_fpga_pipeline_keep_going85_2_sr thei_llvm_fpga_pipeline_keep_going85_gaussian2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going85_gaussian2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going85_gaussian2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3(BLACKBOX,11)
    gaussian_bb_B3 thebb_gaussian_B3 (
        .in_flush(in_start),
        .in_forked92_0(GND_q),
        .in_forked92_1(bb_gaussian_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_gaussian_avm_readdata(in_memdep_gaussian_avm_readdata),
        .in_memdep_gaussian_avm_readdatavalid(in_memdep_gaussian_avm_readdatavalid),
        .in_memdep_gaussian_avm_waitrequest(in_memdep_gaussian_avm_waitrequest),
        .in_memdep_gaussian_avm_writeack(in_memdep_gaussian_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going85_gaussian2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going85_gaussian2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_gaussian_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1124(bb_gaussian_B3_out_c0_exe1124),
        .out_c0_exe3(bb_gaussian_B3_out_c0_exe3),
        .out_exiting_stall_out(bb_gaussian_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_gaussian_B3_out_exiting_valid_out),
        .out_memdep_gaussian_avm_address(bb_gaussian_B3_out_memdep_gaussian_avm_address),
        .out_memdep_gaussian_avm_burstcount(bb_gaussian_B3_out_memdep_gaussian_avm_burstcount),
        .out_memdep_gaussian_avm_byteenable(bb_gaussian_B3_out_memdep_gaussian_avm_byteenable),
        .out_memdep_gaussian_avm_enable(bb_gaussian_B3_out_memdep_gaussian_avm_enable),
        .out_memdep_gaussian_avm_read(bb_gaussian_B3_out_memdep_gaussian_avm_read),
        .out_memdep_gaussian_avm_write(bb_gaussian_B3_out_memdep_gaussian_avm_write),
        .out_memdep_gaussian_avm_writedata(bb_gaussian_B3_out_memdep_gaussian_avm_writedata),
        .out_pipeline_valid_out(bb_gaussian_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B3_out_stall_out_0),
        .out_stall_out_1(bb_gaussian_B3_out_stall_out_1),
        .out_valid_in_0(bb_gaussian_B3_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B3_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B3_sr_1_aunroll_x(BLACKBOX,226)
    gaussian_bb_B3_sr_1 thebb_gaussian_B3_sr_1_aunroll_x (
        .in_i_stall(bb_gaussian_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_gaussian0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_gaussian_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_gaussian_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_gaussian_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_gaussian0(BLACKBOX,149)
    gaussian_loop_limiter_0 theloop_limiter_gaussian0 (
        .in_i_stall(bb_gaussian_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_gaussian_B3_out_exiting_stall_out),
        .in_i_valid(bb_gaussian_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_gaussian_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_gaussian0_out_o_stall),
        .out_o_valid(loop_limiter_gaussian0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going89_gaussian1_sr(BLACKBOX,104)
    gaussian_i_llvm_fpga_pipeline_keep_going89_1_sr thei_llvm_fpga_pipeline_keep_going89_gaussian1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo_out_stall_out),
        .in_i_valid(bb_gaussian_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going89_gaussian1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going89_gaussian1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B1_start(BLACKBOX,9)
    gaussian_bb_B1_start thebb_gaussian_B1_start (
        .in_feedback_in_1(bb_gaussian_B13_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_gaussian_B13_out_feedback_valid_out_1),
        .in_iord_bl_call_gaussian_i_fifodata(in_iord_bl_call_gaussian_i_fifodata),
        .in_iord_bl_call_gaussian_i_fifovalid(in_iord_bl_call_gaussian_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going89_gaussian1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_gaussian0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going89_gaussian1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_gaussian_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_gaussian_B1_start_out_intel_reserved_ffwd_0_0),
        .out_iord_bl_call_gaussian_o_fifoalmost_full(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full),
        .out_iord_bl_call_gaussian_o_fifoready(bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready),
        .out_pipeline_valid_out(bb_gaussian_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_gaussian_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_gaussian_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_gaussian_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_gaussian_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_gaussian_B13(BLACKBOX,6)
    gaussian_bb_B13 thebb_gaussian_B13 (
        .in_feedback_stall_in_1(bb_gaussian_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_gaussian_i_fifoready(in_iowr_bl_return_gaussian_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_gaussian_B13_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_gaussian_B13_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_gaussian_B13_out_feedback_valid_out_1),
        .out_iowr_bl_return_gaussian_o_fifodata(bb_gaussian_B13_out_iowr_bl_return_gaussian_o_fifodata),
        .out_iowr_bl_return_gaussian_o_fifovalid(bb_gaussian_B13_out_iowr_bl_return_gaussian_o_fifovalid),
        .out_stall_in_0(bb_gaussian_B13_out_stall_in_0),
        .out_stall_out_0(bb_gaussian_B13_out_stall_out_0),
        .out_valid_out_0(bb_gaussian_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // gaussian_B1_start_x(EXTIFACE,86)
    assign gaussian_B1_start_x_i_capture = GND_q;
    assign gaussian_B1_start_x_i_clear = GND_q;
    assign gaussian_B1_start_x_i_enable = VCC_q;
    assign gaussian_B1_start_x_i_shift = GND_q;
    assign gaussian_B1_start_x_i_stall_pred = GND_q;
    assign gaussian_B1_start_x_i_stall_succ = bb_gaussian_B13_out_stall_in_0;
    assign gaussian_B1_start_x_i_valid_loop = bb_gaussian_B1_start_out_valid_in_0;
    assign gaussian_B1_start_x_i_valid_pred = bb_gaussian_B1_start_out_valid_in_1;
    assign gaussian_B1_start_x_i_valid_succ = bb_gaussian_B13_out_valid_out_0;
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

    // gaussian_B11_x(EXTIFACE,87)
    assign gaussian_B11_x_i_capture = GND_q;
    assign gaussian_B11_x_i_clear = GND_q;
    assign gaussian_B11_x_i_enable = VCC_q;
    assign gaussian_B11_x_i_shift = GND_q;
    assign gaussian_B11_x_i_stall_pred = loop_limiter_gaussian6_out_o_stall;
    assign gaussian_B11_x_i_stall_succ = bb_gaussian_B11_out_stall_in_0;
    assign gaussian_B11_x_i_valid_loop = bb_gaussian_B11_out_valid_in_0;
    assign gaussian_B11_x_i_valid_pred = bb_gaussian_B11_out_valid_in_1;
    assign gaussian_B11_x_i_valid_succ = bb_gaussian_B11_out_valid_out_0;
    assign gaussian_B11_x_i_capture_bitsignaltemp = gaussian_B11_x_i_capture[0];
    assign gaussian_B11_x_i_clear_bitsignaltemp = gaussian_B11_x_i_clear[0];
    assign gaussian_B11_x_i_enable_bitsignaltemp = gaussian_B11_x_i_enable[0];
    assign gaussian_B11_x_i_shift_bitsignaltemp = gaussian_B11_x_i_shift[0];
    assign gaussian_B11_x_i_stall_pred_bitsignaltemp = gaussian_B11_x_i_stall_pred[0];
    assign gaussian_B11_x_i_stall_succ_bitsignaltemp = gaussian_B11_x_i_stall_succ[0];
    assign gaussian_B11_x_i_valid_loop_bitsignaltemp = gaussian_B11_x_i_valid_loop[0];
    assign gaussian_B11_x_i_valid_pred_bitsignaltemp = gaussian_B11_x_i_valid_pred[0];
    assign gaussian_B11_x_i_valid_succ_bitsignaltemp = gaussian_B11_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B11")
    ) thegaussian_B11_x (
        .i_capture(gaussian_B11_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B11_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B11_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B11_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B11_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B11_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B11_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B11_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B11_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B12_x(EXTIFACE,88)
    assign gaussian_B12_x_i_capture = GND_q;
    assign gaussian_B12_x_i_clear = GND_q;
    assign gaussian_B12_x_i_enable = VCC_q;
    assign gaussian_B12_x_i_shift = GND_q;
    assign gaussian_B12_x_i_stall_pred = loop_limiter_gaussian2_out_o_stall;
    assign gaussian_B12_x_i_stall_succ = bb_gaussian_B14_out_stall_in_0;
    assign gaussian_B12_x_i_valid_loop = bb_gaussian_B12_out_valid_in_0;
    assign gaussian_B12_x_i_valid_pred = bb_gaussian_B12_out_valid_in_1;
    assign gaussian_B12_x_i_valid_succ = bb_gaussian_B14_out_valid_out_0;
    assign gaussian_B12_x_i_capture_bitsignaltemp = gaussian_B12_x_i_capture[0];
    assign gaussian_B12_x_i_clear_bitsignaltemp = gaussian_B12_x_i_clear[0];
    assign gaussian_B12_x_i_enable_bitsignaltemp = gaussian_B12_x_i_enable[0];
    assign gaussian_B12_x_i_shift_bitsignaltemp = gaussian_B12_x_i_shift[0];
    assign gaussian_B12_x_i_stall_pred_bitsignaltemp = gaussian_B12_x_i_stall_pred[0];
    assign gaussian_B12_x_i_stall_succ_bitsignaltemp = gaussian_B12_x_i_stall_succ[0];
    assign gaussian_B12_x_i_valid_loop_bitsignaltemp = gaussian_B12_x_i_valid_loop[0];
    assign gaussian_B12_x_i_valid_pred_bitsignaltemp = gaussian_B12_x_i_valid_pred[0];
    assign gaussian_B12_x_i_valid_succ_bitsignaltemp = gaussian_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B12")
    ) thegaussian_B12_x (
        .i_capture(gaussian_B12_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B12_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B12_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B15_x(EXTIFACE,89)
    assign gaussian_B15_x_i_capture = GND_q;
    assign gaussian_B15_x_i_clear = GND_q;
    assign gaussian_B15_x_i_enable = VCC_q;
    assign gaussian_B15_x_i_shift = GND_q;
    assign gaussian_B15_x_i_stall_pred = loop_limiter_gaussian5_out_o_stall;
    assign gaussian_B15_x_i_stall_succ = bb_gaussian_B15_out_stall_in_0;
    assign gaussian_B15_x_i_valid_loop = bb_gaussian_B15_out_valid_in_0;
    assign gaussian_B15_x_i_valid_pred = bb_gaussian_B15_out_valid_in_1;
    assign gaussian_B15_x_i_valid_succ = bb_gaussian_B15_out_valid_out_0;
    assign gaussian_B15_x_i_capture_bitsignaltemp = gaussian_B15_x_i_capture[0];
    assign gaussian_B15_x_i_clear_bitsignaltemp = gaussian_B15_x_i_clear[0];
    assign gaussian_B15_x_i_enable_bitsignaltemp = gaussian_B15_x_i_enable[0];
    assign gaussian_B15_x_i_shift_bitsignaltemp = gaussian_B15_x_i_shift[0];
    assign gaussian_B15_x_i_stall_pred_bitsignaltemp = gaussian_B15_x_i_stall_pred[0];
    assign gaussian_B15_x_i_stall_succ_bitsignaltemp = gaussian_B15_x_i_stall_succ[0];
    assign gaussian_B15_x_i_valid_loop_bitsignaltemp = gaussian_B15_x_i_valid_loop[0];
    assign gaussian_B15_x_i_valid_pred_bitsignaltemp = gaussian_B15_x_i_valid_pred[0];
    assign gaussian_B15_x_i_valid_succ_bitsignaltemp = gaussian_B15_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B15")
    ) thegaussian_B15_x (
        .i_capture(gaussian_B15_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B15_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B15_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B15_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B15_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B15_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B15_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B15_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B15_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B3_x(EXTIFACE,90)
    assign gaussian_B3_x_i_capture = GND_q;
    assign gaussian_B3_x_i_clear = GND_q;
    assign gaussian_B3_x_i_enable = VCC_q;
    assign gaussian_B3_x_i_shift = GND_q;
    assign gaussian_B3_x_i_stall_pred = loop_limiter_gaussian0_out_o_stall;
    assign gaussian_B3_x_i_stall_succ = bb_gaussian_B4_out_stall_in_0;
    assign gaussian_B3_x_i_valid_loop = bb_gaussian_B3_out_valid_in_0;
    assign gaussian_B3_x_i_valid_pred = bb_gaussian_B3_out_valid_in_1;
    assign gaussian_B3_x_i_valid_succ = bb_gaussian_B4_out_valid_out_0;
    assign gaussian_B3_x_i_capture_bitsignaltemp = gaussian_B3_x_i_capture[0];
    assign gaussian_B3_x_i_clear_bitsignaltemp = gaussian_B3_x_i_clear[0];
    assign gaussian_B3_x_i_enable_bitsignaltemp = gaussian_B3_x_i_enable[0];
    assign gaussian_B3_x_i_shift_bitsignaltemp = gaussian_B3_x_i_shift[0];
    assign gaussian_B3_x_i_stall_pred_bitsignaltemp = gaussian_B3_x_i_stall_pred[0];
    assign gaussian_B3_x_i_stall_succ_bitsignaltemp = gaussian_B3_x_i_stall_succ[0];
    assign gaussian_B3_x_i_valid_loop_bitsignaltemp = gaussian_B3_x_i_valid_loop[0];
    assign gaussian_B3_x_i_valid_pred_bitsignaltemp = gaussian_B3_x_i_valid_pred[0];
    assign gaussian_B3_x_i_valid_succ_bitsignaltemp = gaussian_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B3")
    ) thegaussian_B3_x (
        .i_capture(gaussian_B3_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B3_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B3_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B5_x(EXTIFACE,91)
    assign gaussian_B5_x_i_capture = GND_q;
    assign gaussian_B5_x_i_clear = GND_q;
    assign gaussian_B5_x_i_enable = VCC_q;
    assign gaussian_B5_x_i_shift = GND_q;
    assign gaussian_B5_x_i_stall_pred = loop_limiter_gaussian3_out_o_stall;
    assign gaussian_B5_x_i_stall_succ = bb_gaussian_B5_out_stall_in_0;
    assign gaussian_B5_x_i_valid_loop = bb_gaussian_B5_out_valid_in_0;
    assign gaussian_B5_x_i_valid_pred = bb_gaussian_B5_out_valid_in_1;
    assign gaussian_B5_x_i_valid_succ = bb_gaussian_B5_out_valid_out_0;
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

    // gaussian_B8_x(EXTIFACE,92)
    assign gaussian_B8_x_i_capture = GND_q;
    assign gaussian_B8_x_i_clear = GND_q;
    assign gaussian_B8_x_i_enable = VCC_q;
    assign gaussian_B8_x_i_shift = GND_q;
    assign gaussian_B8_x_i_stall_pred = loop_limiter_gaussian1_out_o_stall;
    assign gaussian_B8_x_i_stall_succ = bb_gaussian_B6_out_stall_in_0;
    assign gaussian_B8_x_i_valid_loop = bb_gaussian_B8_out_valid_in_0;
    assign gaussian_B8_x_i_valid_pred = bb_gaussian_B8_out_valid_in_1;
    assign gaussian_B8_x_i_valid_succ = bb_gaussian_B6_out_valid_out_0;
    assign gaussian_B8_x_i_capture_bitsignaltemp = gaussian_B8_x_i_capture[0];
    assign gaussian_B8_x_i_clear_bitsignaltemp = gaussian_B8_x_i_clear[0];
    assign gaussian_B8_x_i_enable_bitsignaltemp = gaussian_B8_x_i_enable[0];
    assign gaussian_B8_x_i_shift_bitsignaltemp = gaussian_B8_x_i_shift[0];
    assign gaussian_B8_x_i_stall_pred_bitsignaltemp = gaussian_B8_x_i_stall_pred[0];
    assign gaussian_B8_x_i_stall_succ_bitsignaltemp = gaussian_B8_x_i_stall_succ[0];
    assign gaussian_B8_x_i_valid_loop_bitsignaltemp = gaussian_B8_x_i_valid_loop[0];
    assign gaussian_B8_x_i_valid_pred_bitsignaltemp = gaussian_B8_x_i_valid_pred[0];
    assign gaussian_B8_x_i_valid_succ_bitsignaltemp = gaussian_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B8")
    ) thegaussian_B8_x (
        .i_capture(gaussian_B8_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B8_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B8_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // gaussian_B9_x(EXTIFACE,93)
    assign gaussian_B9_x_i_capture = GND_q;
    assign gaussian_B9_x_i_clear = GND_q;
    assign gaussian_B9_x_i_enable = VCC_q;
    assign gaussian_B9_x_i_shift = GND_q;
    assign gaussian_B9_x_i_stall_pred = loop_limiter_gaussian4_out_o_stall;
    assign gaussian_B9_x_i_stall_succ = bb_gaussian_B10_out_stall_in_0;
    assign gaussian_B9_x_i_valid_loop = bb_gaussian_B9_out_valid_in_0;
    assign gaussian_B9_x_i_valid_pred = bb_gaussian_B9_out_valid_in_1;
    assign gaussian_B9_x_i_valid_succ = bb_gaussian_B10_out_valid_out_0;
    assign gaussian_B9_x_i_capture_bitsignaltemp = gaussian_B9_x_i_capture[0];
    assign gaussian_B9_x_i_clear_bitsignaltemp = gaussian_B9_x_i_clear[0];
    assign gaussian_B9_x_i_enable_bitsignaltemp = gaussian_B9_x_i_enable[0];
    assign gaussian_B9_x_i_shift_bitsignaltemp = gaussian_B9_x_i_shift[0];
    assign gaussian_B9_x_i_stall_pred_bitsignaltemp = gaussian_B9_x_i_stall_pred[0];
    assign gaussian_B9_x_i_stall_succ_bitsignaltemp = gaussian_B9_x_i_stall_succ[0];
    assign gaussian_B9_x_i_valid_loop_bitsignaltemp = gaussian_B9_x_i_valid_loop[0];
    assign gaussian_B9_x_i_valid_pred_bitsignaltemp = gaussian_B9_x_i_valid_pred[0];
    assign gaussian_B9_x_i_valid_succ_bitsignaltemp = gaussian_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("gaussian.B9")
    ) thegaussian_B9_x (
        .i_capture(gaussian_B9_x_i_capture_bitsignaltemp),
        .i_clear(gaussian_B9_x_i_clear_bitsignaltemp),
        .i_enable(gaussian_B9_x_i_enable_bitsignaltemp),
        .i_shift(gaussian_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(gaussian_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(gaussian_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(gaussian_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(gaussian_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(gaussian_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_gaussian_o_fifoalmost_full(GPOUT,156)
    assign out_iord_bl_call_gaussian_o_fifoalmost_full = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoalmost_full;

    // out_iord_bl_call_gaussian_o_fifoready(GPOUT,157)
    assign out_iord_bl_call_gaussian_o_fifoready = bb_gaussian_B1_start_out_iord_bl_call_gaussian_o_fifoready;

    // out_iowr_bl_return_gaussian_o_fifodata(GPOUT,158)
    assign out_iowr_bl_return_gaussian_o_fifodata = bb_gaussian_B13_out_iowr_bl_return_gaussian_o_fifodata;

    // out_iowr_bl_return_gaussian_o_fifovalid(GPOUT,159)
    assign out_iowr_bl_return_gaussian_o_fifovalid = bb_gaussian_B13_out_iowr_bl_return_gaussian_o_fifovalid;

    // out_lm113_gaussian_avm_address(GPOUT,160)
    assign out_lm113_gaussian_avm_address = bb_gaussian_B11_out_lm113_gaussian_avm_address;

    // out_lm113_gaussian_avm_burstcount(GPOUT,161)
    assign out_lm113_gaussian_avm_burstcount = bb_gaussian_B11_out_lm113_gaussian_avm_burstcount;

    // out_lm113_gaussian_avm_byteenable(GPOUT,162)
    assign out_lm113_gaussian_avm_byteenable = bb_gaussian_B11_out_lm113_gaussian_avm_byteenable;

    // out_lm113_gaussian_avm_enable(GPOUT,163)
    assign out_lm113_gaussian_avm_enable = bb_gaussian_B11_out_lm113_gaussian_avm_enable;

    // out_lm113_gaussian_avm_read(GPOUT,164)
    assign out_lm113_gaussian_avm_read = bb_gaussian_B11_out_lm113_gaussian_avm_read;

    // out_lm113_gaussian_avm_write(GPOUT,165)
    assign out_lm113_gaussian_avm_write = bb_gaussian_B11_out_lm113_gaussian_avm_write;

    // out_lm113_gaussian_avm_writedata(GPOUT,166)
    assign out_lm113_gaussian_avm_writedata = bb_gaussian_B11_out_lm113_gaussian_avm_writedata;

    // out_lm1_gaussian_avm_address(GPOUT,167)
    assign out_lm1_gaussian_avm_address = bb_gaussian_B11_out_lm1_gaussian_avm_address;

    // out_lm1_gaussian_avm_burstcount(GPOUT,168)
    assign out_lm1_gaussian_avm_burstcount = bb_gaussian_B11_out_lm1_gaussian_avm_burstcount;

    // out_lm1_gaussian_avm_byteenable(GPOUT,169)
    assign out_lm1_gaussian_avm_byteenable = bb_gaussian_B11_out_lm1_gaussian_avm_byteenable;

    // out_lm1_gaussian_avm_enable(GPOUT,170)
    assign out_lm1_gaussian_avm_enable = bb_gaussian_B11_out_lm1_gaussian_avm_enable;

    // out_lm1_gaussian_avm_read(GPOUT,171)
    assign out_lm1_gaussian_avm_read = bb_gaussian_B11_out_lm1_gaussian_avm_read;

    // out_lm1_gaussian_avm_write(GPOUT,172)
    assign out_lm1_gaussian_avm_write = bb_gaussian_B11_out_lm1_gaussian_avm_write;

    // out_lm1_gaussian_avm_writedata(GPOUT,173)
    assign out_lm1_gaussian_avm_writedata = bb_gaussian_B11_out_lm1_gaussian_avm_writedata;

    // out_lm92_gaussian_avm_address(GPOUT,174)
    assign out_lm92_gaussian_avm_address = bb_gaussian_B11_out_lm92_gaussian_avm_address;

    // out_lm92_gaussian_avm_burstcount(GPOUT,175)
    assign out_lm92_gaussian_avm_burstcount = bb_gaussian_B11_out_lm92_gaussian_avm_burstcount;

    // out_lm92_gaussian_avm_byteenable(GPOUT,176)
    assign out_lm92_gaussian_avm_byteenable = bb_gaussian_B11_out_lm92_gaussian_avm_byteenable;

    // out_lm92_gaussian_avm_enable(GPOUT,177)
    assign out_lm92_gaussian_avm_enable = bb_gaussian_B11_out_lm92_gaussian_avm_enable;

    // out_lm92_gaussian_avm_read(GPOUT,178)
    assign out_lm92_gaussian_avm_read = bb_gaussian_B11_out_lm92_gaussian_avm_read;

    // out_lm92_gaussian_avm_write(GPOUT,179)
    assign out_lm92_gaussian_avm_write = bb_gaussian_B11_out_lm92_gaussian_avm_write;

    // out_lm92_gaussian_avm_writedata(GPOUT,180)
    assign out_lm92_gaussian_avm_writedata = bb_gaussian_B11_out_lm92_gaussian_avm_writedata;

    // out_memdep_4_gaussian_avm_address(GPOUT,181)
    assign out_memdep_4_gaussian_avm_address = bb_gaussian_B5_out_memdep_4_gaussian_avm_address;

    // out_memdep_4_gaussian_avm_burstcount(GPOUT,182)
    assign out_memdep_4_gaussian_avm_burstcount = bb_gaussian_B5_out_memdep_4_gaussian_avm_burstcount;

    // out_memdep_4_gaussian_avm_byteenable(GPOUT,183)
    assign out_memdep_4_gaussian_avm_byteenable = bb_gaussian_B5_out_memdep_4_gaussian_avm_byteenable;

    // out_memdep_4_gaussian_avm_enable(GPOUT,184)
    assign out_memdep_4_gaussian_avm_enable = bb_gaussian_B5_out_memdep_4_gaussian_avm_enable;

    // out_memdep_4_gaussian_avm_read(GPOUT,185)
    assign out_memdep_4_gaussian_avm_read = bb_gaussian_B5_out_memdep_4_gaussian_avm_read;

    // out_memdep_4_gaussian_avm_write(GPOUT,186)
    assign out_memdep_4_gaussian_avm_write = bb_gaussian_B5_out_memdep_4_gaussian_avm_write;

    // out_memdep_4_gaussian_avm_writedata(GPOUT,187)
    assign out_memdep_4_gaussian_avm_writedata = bb_gaussian_B5_out_memdep_4_gaussian_avm_writedata;

    // out_memdep_5_gaussian_avm_address(GPOUT,188)
    assign out_memdep_5_gaussian_avm_address = bb_gaussian_B11_out_memdep_5_gaussian_avm_address;

    // out_memdep_5_gaussian_avm_burstcount(GPOUT,189)
    assign out_memdep_5_gaussian_avm_burstcount = bb_gaussian_B11_out_memdep_5_gaussian_avm_burstcount;

    // out_memdep_5_gaussian_avm_byteenable(GPOUT,190)
    assign out_memdep_5_gaussian_avm_byteenable = bb_gaussian_B11_out_memdep_5_gaussian_avm_byteenable;

    // out_memdep_5_gaussian_avm_enable(GPOUT,191)
    assign out_memdep_5_gaussian_avm_enable = bb_gaussian_B11_out_memdep_5_gaussian_avm_enable;

    // out_memdep_5_gaussian_avm_read(GPOUT,192)
    assign out_memdep_5_gaussian_avm_read = bb_gaussian_B11_out_memdep_5_gaussian_avm_read;

    // out_memdep_5_gaussian_avm_write(GPOUT,193)
    assign out_memdep_5_gaussian_avm_write = bb_gaussian_B11_out_memdep_5_gaussian_avm_write;

    // out_memdep_5_gaussian_avm_writedata(GPOUT,194)
    assign out_memdep_5_gaussian_avm_writedata = bb_gaussian_B11_out_memdep_5_gaussian_avm_writedata;

    // out_memdep_gaussian_avm_address(GPOUT,195)
    assign out_memdep_gaussian_avm_address = bb_gaussian_B3_out_memdep_gaussian_avm_address;

    // out_memdep_gaussian_avm_burstcount(GPOUT,196)
    assign out_memdep_gaussian_avm_burstcount = bb_gaussian_B3_out_memdep_gaussian_avm_burstcount;

    // out_memdep_gaussian_avm_byteenable(GPOUT,197)
    assign out_memdep_gaussian_avm_byteenable = bb_gaussian_B3_out_memdep_gaussian_avm_byteenable;

    // out_memdep_gaussian_avm_enable(GPOUT,198)
    assign out_memdep_gaussian_avm_enable = bb_gaussian_B3_out_memdep_gaussian_avm_enable;

    // out_memdep_gaussian_avm_read(GPOUT,199)
    assign out_memdep_gaussian_avm_read = bb_gaussian_B3_out_memdep_gaussian_avm_read;

    // out_memdep_gaussian_avm_write(GPOUT,200)
    assign out_memdep_gaussian_avm_write = bb_gaussian_B3_out_memdep_gaussian_avm_write;

    // out_memdep_gaussian_avm_writedata(GPOUT,201)
    assign out_memdep_gaussian_avm_writedata = bb_gaussian_B3_out_memdep_gaussian_avm_writedata;

    // out_o_active_unnamed_gaussian16(GPOUT,202)
    assign out_o_active_unnamed_gaussian16 = bb_gaussian_B15_out_lsu_unnamed_gaussian16_o_active;

    // bb_gaussian_B0_runOnce(BLACKBOX,2)
    gaussian_bb_B0_runOnce thebb_gaussian_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_gaussian_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,203)
    assign out_stall_out = bb_gaussian_B0_runOnce_out_stall_out_0;

    // out_unnamed_gaussian15_gaussian_avm_address(GPOUT,204)
    assign out_unnamed_gaussian15_gaussian_avm_address = bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_address;

    // out_unnamed_gaussian15_gaussian_avm_burstcount(GPOUT,205)
    assign out_unnamed_gaussian15_gaussian_avm_burstcount = bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_burstcount;

    // out_unnamed_gaussian15_gaussian_avm_byteenable(GPOUT,206)
    assign out_unnamed_gaussian15_gaussian_avm_byteenable = bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_byteenable;

    // out_unnamed_gaussian15_gaussian_avm_enable(GPOUT,207)
    assign out_unnamed_gaussian15_gaussian_avm_enable = bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_enable;

    // out_unnamed_gaussian15_gaussian_avm_read(GPOUT,208)
    assign out_unnamed_gaussian15_gaussian_avm_read = bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_read;

    // out_unnamed_gaussian15_gaussian_avm_write(GPOUT,209)
    assign out_unnamed_gaussian15_gaussian_avm_write = bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_write;

    // out_unnamed_gaussian15_gaussian_avm_writedata(GPOUT,210)
    assign out_unnamed_gaussian15_gaussian_avm_writedata = bb_gaussian_B15_out_unnamed_gaussian15_gaussian_avm_writedata;

    // out_unnamed_gaussian16_gaussian_avm_address(GPOUT,211)
    assign out_unnamed_gaussian16_gaussian_avm_address = bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_address;

    // out_unnamed_gaussian16_gaussian_avm_burstcount(GPOUT,212)
    assign out_unnamed_gaussian16_gaussian_avm_burstcount = bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_burstcount;

    // out_unnamed_gaussian16_gaussian_avm_byteenable(GPOUT,213)
    assign out_unnamed_gaussian16_gaussian_avm_byteenable = bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_byteenable;

    // out_unnamed_gaussian16_gaussian_avm_enable(GPOUT,214)
    assign out_unnamed_gaussian16_gaussian_avm_enable = bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_enable;

    // out_unnamed_gaussian16_gaussian_avm_read(GPOUT,215)
    assign out_unnamed_gaussian16_gaussian_avm_read = bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_read;

    // out_unnamed_gaussian16_gaussian_avm_write(GPOUT,216)
    assign out_unnamed_gaussian16_gaussian_avm_write = bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_write;

    // out_unnamed_gaussian16_gaussian_avm_writedata(GPOUT,217)
    assign out_unnamed_gaussian16_gaussian_avm_writedata = bb_gaussian_B15_out_unnamed_gaussian16_gaussian_avm_writedata;

    // out_valid_out(GPOUT,218)
    assign out_valid_out = GND_q;

endmodule
