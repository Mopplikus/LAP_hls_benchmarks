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

// SystemVerilog created from kernel_2mm_function
// Created for function/kernel kernel_2mm
// SystemVerilog created on Thu Apr 27 14:25:48 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_C,
    input wire [63:0] in_arg_D,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [319:0] in_iord_bl_call_kernel_2mm_i_fifodata,
    input wire [0:0] in_iord_bl_call_kernel_2mm_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_kernel_2mm_i_fifoready,
    input wire [31:0] in_memdep_1_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_2mm_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm14_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm6_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kernel_2mm_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_kernel_2mm_o_fifoready,
    output wire [0:0] out_iowr_bl_return_kernel_2mm_o_fifodata,
    output wire [0:0] out_iowr_bl_return_kernel_2mm_o_fifovalid,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_1_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_kernel_2mm_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kernel_2mm_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B10_out_c0_exe420510;
    wire [31:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B10_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B10_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B10_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B11_out_c0_exe1202;
    wire [0:0] bb_kernel_2mm_B11_out_c0_exe4205;
    wire [63:0] bb_kernel_2mm_B11_out_c0_exe5206;
    wire [0:0] bb_kernel_2mm_B11_out_c0_exe6207;
    wire [0:0] bb_kernel_2mm_B11_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_2mm_B11_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B11_out_stall_out_0;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B11_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B11_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;
    wire [0:0] bb_kernel_2mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_c0_exe2;
    wire [31:0] bb_kernel_2mm_B2_out_c0_exe3;
    wire [0:0] bb_kernel_2mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B2_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B3_out_c0_exe11331;
    wire [0:0] bb_kernel_2mm_B3_out_c0_exe51374;
    wire [0:0] bb_kernel_2mm_B3_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B3_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B4_out_c0_exe10;
    wire [31:0] bb_kernel_2mm_B4_out_c0_exe1107;
    wire [63:0] bb_kernel_2mm_B4_out_c0_exe2108;
    wire [63:0] bb_kernel_2mm_B4_out_c0_exe3109;
    wire [63:0] bb_kernel_2mm_B4_out_c0_exe4;
    wire [31:0] bb_kernel_2mm_B4_out_c0_exe5;
    wire [0:0] bb_kernel_2mm_B4_out_c0_exe7;
    wire [0:0] bb_kernel_2mm_B4_out_c0_exe8;
    wire [0:0] bb_kernel_2mm_B4_out_c0_exe9;
    wire [0:0] bb_kernel_2mm_B4_out_stall_out_0;
    wire [31:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B4_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B4_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B5_out_c0_exe11332;
    wire [0:0] bb_kernel_2mm_B5_out_c0_exe51375;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B5_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B5_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B5_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B5_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B6_out_c0_exe1133;
    wire [31:0] bb_kernel_2mm_B6_out_c0_exe2134;
    wire [0:0] bb_kernel_2mm_B6_out_c0_exe5137;
    wire [63:0] bb_kernel_2mm_B6_out_c0_exe6138;
    wire [0:0] bb_kernel_2mm_B6_out_c0_exe7139;
    wire [0:0] bb_kernel_2mm_B6_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_2mm_B6_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B6_out_stall_out_0;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B6_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B6_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B7_out_feedback_almost_empty_out_1;
    wire [0:0] bb_kernel_2mm_B7_out_feedback_data_out_1;
    wire [0:0] bb_kernel_2mm_B7_out_feedback_empty_out_1;
    wire [0:0] bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifodata;
    wire [0:0] bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifovalid;
    wire [0:0] bb_kernel_2mm_B7_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B7_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B7_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B8_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B8_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B8_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe1159;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe2160;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe3161;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe4162;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe6164;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe7165;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe8166;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe9167;
    wire [0:0] bb_kernel_2mm_B9_out_stall_out_0;
    wire [31:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B9_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B9_out_valid_out_0;
    wire [0:0] kernel_2mm_B1_start_x_i_capture;
    wire kernel_2mm_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_clear;
    wire kernel_2mm_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_enable;
    wire kernel_2mm_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_shift;
    wire kernel_2mm_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_stall_pred;
    wire kernel_2mm_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_stall_succ;
    wire kernel_2mm_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_valid_loop;
    wire kernel_2mm_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_valid_pred;
    wire kernel_2mm_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B1_start_x_i_valid_succ;
    wire kernel_2mm_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_capture;
    wire kernel_2mm_B11_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_clear;
    wire kernel_2mm_B11_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_enable;
    wire kernel_2mm_B11_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_shift;
    wire kernel_2mm_B11_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_stall_pred;
    wire kernel_2mm_B11_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_stall_succ;
    wire kernel_2mm_B11_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_valid_loop;
    wire kernel_2mm_B11_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_valid_pred;
    wire kernel_2mm_B11_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B11_x_i_valid_succ;
    wire kernel_2mm_B11_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_capture;
    wire kernel_2mm_B2_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_clear;
    wire kernel_2mm_B2_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_enable;
    wire kernel_2mm_B2_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_shift;
    wire kernel_2mm_B2_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_stall_pred;
    wire kernel_2mm_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_stall_succ;
    wire kernel_2mm_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_valid_loop;
    wire kernel_2mm_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_valid_pred;
    wire kernel_2mm_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B2_x_i_valid_succ;
    wire kernel_2mm_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_capture;
    wire kernel_2mm_B4_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_clear;
    wire kernel_2mm_B4_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_enable;
    wire kernel_2mm_B4_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_shift;
    wire kernel_2mm_B4_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_stall_pred;
    wire kernel_2mm_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_stall_succ;
    wire kernel_2mm_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_valid_loop;
    wire kernel_2mm_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_valid_pred;
    wire kernel_2mm_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B4_x_i_valid_succ;
    wire kernel_2mm_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_capture;
    wire kernel_2mm_B6_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_clear;
    wire kernel_2mm_B6_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_enable;
    wire kernel_2mm_B6_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_shift;
    wire kernel_2mm_B6_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_stall_pred;
    wire kernel_2mm_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_stall_succ;
    wire kernel_2mm_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_valid_loop;
    wire kernel_2mm_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_valid_pred;
    wire kernel_2mm_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B6_x_i_valid_succ;
    wire kernel_2mm_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_capture;
    wire kernel_2mm_B9_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_clear;
    wire kernel_2mm_B9_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_enable;
    wire kernel_2mm_B9_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_shift;
    wire kernel_2mm_B9_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_stall_pred;
    wire kernel_2mm_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_stall_succ;
    wire kernel_2mm_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_valid_loop;
    wire kernel_2mm_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_valid_pred;
    wire kernel_2mm_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B9_x_i_valid_succ;
    wire kernel_2mm_B9_x_i_valid_succ_bitsignaltemp;
    reg [0:0] rst_sync_rst_sclrn;


    // bb_kernel_2mm_B2(BLACKBOX,6)
    kernel_2mm_bb_B2 thebb_kernel_2mm_B2 (
        .in_stall_in_0(bb_kernel_2mm_B4_out_stall_out_0),
        .in_valid_in_0(bb_kernel_2mm_B1_start_out_valid_out_0),
        .out_c0_exe2(bb_kernel_2mm_B2_out_c0_exe2),
        .out_c0_exe3(bb_kernel_2mm_B2_out_c0_exe3),
        .out_stall_out_0(bb_kernel_2mm_B2_out_stall_out_0),
        .out_valid_in_0(bb_kernel_2mm_B2_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B4(BLACKBOX,8)
    kernel_2mm_bb_B4 thebb_kernel_2mm_B4 (
        .in_flush(in_start),
        .in_i_040_pop1563_0(bb_kernel_2mm_B2_out_c0_exe3),
        .in_notcmp3160_0(bb_kernel_2mm_B2_out_c0_exe2),
        .in_stall_in_0(bb_kernel_2mm_B6_out_stall_out_0),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm6_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm6_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm6_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm6_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm6_kernel_2mm_avm_writeack),
        .in_valid_in_0(bb_kernel_2mm_B2_out_valid_out_0),
        .out_c0_exe10(bb_kernel_2mm_B4_out_c0_exe10),
        .out_c0_exe1107(bb_kernel_2mm_B4_out_c0_exe1107),
        .out_c0_exe2108(bb_kernel_2mm_B4_out_c0_exe2108),
        .out_c0_exe3109(bb_kernel_2mm_B4_out_c0_exe3109),
        .out_c0_exe4(bb_kernel_2mm_B4_out_c0_exe4),
        .out_c0_exe5(bb_kernel_2mm_B4_out_c0_exe5),
        .out_c0_exe7(bb_kernel_2mm_B4_out_c0_exe7),
        .out_c0_exe8(bb_kernel_2mm_B4_out_c0_exe8),
        .out_c0_exe9(bb_kernel_2mm_B4_out_c0_exe9),
        .out_stall_out_0(bb_kernel_2mm_B4_out_stall_out_0),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_address(bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount(bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable(bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_enable(bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_read(bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_write(bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata(bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B4_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6(BLACKBOX,10)
    kernel_2mm_bb_B6 thebb_kernel_2mm_B6 (
        .in_arrayidx11169_0(bb_kernel_2mm_B4_out_c0_exe4),
        .in_flush(in_start),
        .in_i_040_pop1545_pop1966_0(bb_kernel_2mm_B4_out_c0_exe1107),
        .in_i_040_pop1565_0(bb_kernel_2mm_B4_out_c0_exe10),
        .in_idxprom1068_0(bb_kernel_2mm_B4_out_c0_exe3109),
        .in_idxprom67_0(bb_kernel_2mm_B4_out_c0_exe2108),
        .in_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .in_notcmp2670_0(bb_kernel_2mm_B4_out_c0_exe7),
        .in_notcmp3141_pop1871_0(bb_kernel_2mm_B4_out_c0_exe8),
        .in_notcmp3162_0(bb_kernel_2mm_B4_out_c0_exe9),
        .in_stall_in_0(bb_kernel_2mm_B5_out_stall_out_0),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm8_0(bb_kernel_2mm_B4_out_c0_exe5),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack),
        .in_valid_in_0(bb_kernel_2mm_B4_out_valid_out_0),
        .out_c0_exe1133(bb_kernel_2mm_B6_out_c0_exe1133),
        .out_c0_exe2134(bb_kernel_2mm_B6_out_c0_exe2134),
        .out_c0_exe5137(bb_kernel_2mm_B6_out_c0_exe5137),
        .out_c0_exe6138(bb_kernel_2mm_B6_out_c0_exe6138),
        .out_c0_exe7139(bb_kernel_2mm_B6_out_c0_exe7139),
        .out_profile_loop_o_valid(bb_kernel_2mm_B6_out_profile_loop_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B6_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B6_out_stall_out_0),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_address(bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_read(bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_write(bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B6_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B5(BLACKBOX,9)
    kernel_2mm_bb_B5 thebb_kernel_2mm_B5 (
        .in_c0_exe11332_0(bb_kernel_2mm_B6_out_c0_exe1133),
        .in_c0_exe21343_0(bb_kernel_2mm_B6_out_c0_exe2134),
        .in_c0_exe51375_0(bb_kernel_2mm_B6_out_c0_exe5137),
        .in_c0_exe61386_0(bb_kernel_2mm_B6_out_c0_exe6138),
        .in_c0_exe71397_0(bb_kernel_2mm_B6_out_c0_exe7139),
        .in_flush(in_start),
        .in_memdep_kernel_2mm_avm_readdata(in_memdep_kernel_2mm_avm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(in_memdep_kernel_2mm_avm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(in_memdep_kernel_2mm_avm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(in_memdep_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B3_out_stall_out_0),
        .in_valid_in_0(bb_kernel_2mm_B6_out_valid_out_0),
        .out_c0_exe11332(bb_kernel_2mm_B5_out_c0_exe11332),
        .out_c0_exe51375(bb_kernel_2mm_B5_out_c0_exe51375),
        .out_memdep_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B5_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B5_out_stall_out_0),
        .out_valid_in_0(bb_kernel_2mm_B5_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3(BLACKBOX,7)
    kernel_2mm_bb_B3 thebb_kernel_2mm_B3 (
        .in_c0_exe11331_0(bb_kernel_2mm_B5_out_c0_exe11332),
        .in_c0_exe51374_0(bb_kernel_2mm_B5_out_c0_exe51375),
        .in_stall_in_0(bb_kernel_2mm_B9_out_stall_out_0),
        .in_valid_in_0(bb_kernel_2mm_B5_out_valid_out_0),
        .out_c0_exe11331(bb_kernel_2mm_B3_out_c0_exe11331),
        .out_c0_exe51374(bb_kernel_2mm_B3_out_c0_exe51374),
        .out_stall_out_0(bb_kernel_2mm_B3_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9(BLACKBOX,13)
    kernel_2mm_bb_B9 thebb_kernel_2mm_B9 (
        .in_flush(in_start),
        .in_idxprom52_pop2972_0(bb_kernel_2mm_B3_out_c0_exe11331),
        .in_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .in_notcmp3142_pop2778_0(bb_kernel_2mm_B3_out_c0_exe51374),
        .in_stall_in_0(bb_kernel_2mm_B11_out_stall_out_0),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack),
        .in_valid_in_0(bb_kernel_2mm_B3_out_valid_out_0),
        .out_c0_exe1159(bb_kernel_2mm_B9_out_c0_exe1159),
        .out_c0_exe2160(bb_kernel_2mm_B9_out_c0_exe2160),
        .out_c0_exe3161(bb_kernel_2mm_B9_out_c0_exe3161),
        .out_c0_exe4162(bb_kernel_2mm_B9_out_c0_exe4162),
        .out_c0_exe6164(bb_kernel_2mm_B9_out_c0_exe6164),
        .out_c0_exe7165(bb_kernel_2mm_B9_out_c0_exe7165),
        .out_c0_exe8166(bb_kernel_2mm_B9_out_c0_exe8166),
        .out_c0_exe9167(bb_kernel_2mm_B9_out_c0_exe9167),
        .out_stall_out_0(bb_kernel_2mm_B9_out_stall_out_0),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B9_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11(BLACKBOX,4)
    kernel_2mm_bb_B11 thebb_kernel_2mm_B11 (
        .in_arrayidx49487_0(bb_kernel_2mm_B9_out_c0_exe3161),
        .in_flush(in_start),
        .in_idxprom4885_0(bb_kernel_2mm_B9_out_c0_exe1159),
        .in_idxprom49_pop2386_0(bb_kernel_2mm_B9_out_c0_exe2160),
        .in_idxprom52_pop2974_0(bb_kernel_2mm_B9_out_c0_exe8166),
        .in_mul5088_0(bb_kernel_2mm_B9_out_c0_exe4162),
        .in_notcmp1689_0(bb_kernel_2mm_B9_out_c0_exe6164),
        .in_notcmp3142_pop2780_0(bb_kernel_2mm_B9_out_c0_exe9167),
        .in_notcmp3143_pop2290_0(bb_kernel_2mm_B9_out_c0_exe7165),
        .in_stall_in_0(bb_kernel_2mm_B10_out_stall_out_0),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm14_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm14_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm14_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm14_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm14_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack),
        .in_valid_in_0(bb_kernel_2mm_B9_out_valid_out_0),
        .out_c0_exe1202(bb_kernel_2mm_B11_out_c0_exe1202),
        .out_c0_exe4205(bb_kernel_2mm_B11_out_c0_exe4205),
        .out_c0_exe5206(bb_kernel_2mm_B11_out_c0_exe5206),
        .out_c0_exe6207(bb_kernel_2mm_B11_out_c0_exe6207),
        .out_profile_loop_o_valid(bb_kernel_2mm_B11_out_profile_loop_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B11_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B11_out_stall_out_0),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_address(bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_enable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_read(bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_write(bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B11_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10(BLACKBOX,3)
    kernel_2mm_bb_B10 thebb_kernel_2mm_B10 (
        .in_c0_exe12028_0(bb_kernel_2mm_B11_out_c0_exe1202),
        .in_c0_exe420510_0(bb_kernel_2mm_B11_out_c0_exe4205),
        .in_c0_exe520611_0(bb_kernel_2mm_B11_out_c0_exe5206),
        .in_c0_exe620712_0(bb_kernel_2mm_B11_out_c0_exe6207),
        .in_flush(in_start),
        .in_memdep_1_kernel_2mm_avm_readdata(in_memdep_1_kernel_2mm_avm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(in_memdep_1_kernel_2mm_avm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(in_memdep_1_kernel_2mm_avm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(in_memdep_1_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B8_out_stall_out_0),
        .in_valid_in_0(bb_kernel_2mm_B11_out_valid_out_0),
        .out_c0_exe420510(bb_kernel_2mm_B10_out_c0_exe420510),
        .out_memdep_1_kernel_2mm_avm_address(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B10_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B10_out_stall_out_0),
        .out_valid_in_0(bb_kernel_2mm_B10_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8(BLACKBOX,12)
    kernel_2mm_bb_B8 thebb_kernel_2mm_B8 (
        .in_c0_exe42059_0(bb_kernel_2mm_B10_out_c0_exe420510),
        .in_stall_in_0(bb_kernel_2mm_B7_out_stall_out_0),
        .in_valid_in_0(bb_kernel_2mm_B10_out_valid_out_0),
        .out_stall_in_0(bb_kernel_2mm_B8_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B8_out_stall_out_0),
        .out_valid_in_0(bb_kernel_2mm_B8_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B7(BLACKBOX,11)
    kernel_2mm_bb_B7 thebb_kernel_2mm_B7 (
        .in_feedback_stall_in_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_kernel_2mm_i_fifoready(in_iowr_bl_return_kernel_2mm_i_fifoready),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_kernel_2mm_B8_out_valid_out_0),
        .out_feedback_almost_empty_out_1(bb_kernel_2mm_B7_out_feedback_almost_empty_out_1),
        .out_feedback_data_out_1(bb_kernel_2mm_B7_out_feedback_data_out_1),
        .out_feedback_empty_out_1(bb_kernel_2mm_B7_out_feedback_empty_out_1),
        .out_iowr_bl_return_kernel_2mm_o_fifodata(bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifodata),
        .out_iowr_bl_return_kernel_2mm_o_fifovalid(bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_2mm_B7_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B7_out_stall_out_0),
        .out_valid_in_0(bb_kernel_2mm_B7_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B0_runOnce(BLACKBOX,2)
    kernel_2mm_bb_B0_runOnce thebb_kernel_2mm_B0_runOnce (
        .in_stall_in_0(bb_kernel_2mm_B1_start_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_2mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B1_start(BLACKBOX,5)
    kernel_2mm_bb_B1_start thebb_kernel_2mm_B1_start (
        .in_feedback_almost_empty_in_1(bb_kernel_2mm_B7_out_feedback_almost_empty_out_1),
        .in_feedback_data_in_1(bb_kernel_2mm_B7_out_feedback_data_out_1),
        .in_feedback_empty_in_1(bb_kernel_2mm_B7_out_feedback_empty_out_1),
        .in_iord_bl_call_kernel_2mm_i_fifodata(in_iord_bl_call_kernel_2mm_i_fifodata),
        .in_iord_bl_call_kernel_2mm_i_fifovalid(in_iord_bl_call_kernel_2mm_i_fifovalid),
        .in_stall_in_0(bb_kernel_2mm_B2_out_stall_out_0),
        .in_valid_in_0(bb_kernel_2mm_B0_runOnce_out_valid_out_0),
        .out_feedback_stall_out_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_kernel_2mm_o_fifoalmost_full(bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_2mm_o_fifoready(bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready),
        .out_stall_out_0(bb_kernel_2mm_B1_start_out_stall_out_0),
        .out_valid_in_0(bb_kernel_2mm_B1_start_out_valid_in_0),
        .out_valid_out_0(bb_kernel_2mm_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_2mm_B1_start_x(EXTIFACE,70)
    assign kernel_2mm_B1_start_x_i_capture = GND_q;
    assign kernel_2mm_B1_start_x_i_clear = GND_q;
    assign kernel_2mm_B1_start_x_i_enable = VCC_q;
    assign kernel_2mm_B1_start_x_i_shift = GND_q;
    assign kernel_2mm_B1_start_x_i_stall_pred = bb_kernel_2mm_B1_start_out_stall_out_0;
    assign kernel_2mm_B1_start_x_i_stall_succ = bb_kernel_2mm_B7_out_stall_in_0;
    assign kernel_2mm_B1_start_x_i_valid_loop = bb_kernel_2mm_B7_out_valid_in_0;
    assign kernel_2mm_B1_start_x_i_valid_pred = bb_kernel_2mm_B1_start_out_valid_in_0;
    assign kernel_2mm_B1_start_x_i_valid_succ = bb_kernel_2mm_B7_out_valid_out_0;
    assign kernel_2mm_B1_start_x_i_capture_bitsignaltemp = kernel_2mm_B1_start_x_i_capture[0];
    assign kernel_2mm_B1_start_x_i_clear_bitsignaltemp = kernel_2mm_B1_start_x_i_clear[0];
    assign kernel_2mm_B1_start_x_i_enable_bitsignaltemp = kernel_2mm_B1_start_x_i_enable[0];
    assign kernel_2mm_B1_start_x_i_shift_bitsignaltemp = kernel_2mm_B1_start_x_i_shift[0];
    assign kernel_2mm_B1_start_x_i_stall_pred_bitsignaltemp = kernel_2mm_B1_start_x_i_stall_pred[0];
    assign kernel_2mm_B1_start_x_i_stall_succ_bitsignaltemp = kernel_2mm_B1_start_x_i_stall_succ[0];
    assign kernel_2mm_B1_start_x_i_valid_loop_bitsignaltemp = kernel_2mm_B1_start_x_i_valid_loop[0];
    assign kernel_2mm_B1_start_x_i_valid_pred_bitsignaltemp = kernel_2mm_B1_start_x_i_valid_pred[0];
    assign kernel_2mm_B1_start_x_i_valid_succ_bitsignaltemp = kernel_2mm_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B1.start")
    ) thekernel_2mm_B1_start_x (
        .i_capture(kernel_2mm_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_2mm_B11_x(EXTIFACE,71)
    assign kernel_2mm_B11_x_i_capture = GND_q;
    assign kernel_2mm_B11_x_i_clear = GND_q;
    assign kernel_2mm_B11_x_i_enable = VCC_q;
    assign kernel_2mm_B11_x_i_shift = GND_q;
    assign kernel_2mm_B11_x_i_stall_pred = bb_kernel_2mm_B11_out_stall_out_0;
    assign kernel_2mm_B11_x_i_stall_succ = bb_kernel_2mm_B11_out_stall_in_0;
    assign kernel_2mm_B11_x_i_valid_loop = bb_kernel_2mm_B11_out_profile_loop_o_valid;
    assign kernel_2mm_B11_x_i_valid_pred = bb_kernel_2mm_B11_out_valid_in_0;
    assign kernel_2mm_B11_x_i_valid_succ = bb_kernel_2mm_B11_out_valid_out_0;
    assign kernel_2mm_B11_x_i_capture_bitsignaltemp = kernel_2mm_B11_x_i_capture[0];
    assign kernel_2mm_B11_x_i_clear_bitsignaltemp = kernel_2mm_B11_x_i_clear[0];
    assign kernel_2mm_B11_x_i_enable_bitsignaltemp = kernel_2mm_B11_x_i_enable[0];
    assign kernel_2mm_B11_x_i_shift_bitsignaltemp = kernel_2mm_B11_x_i_shift[0];
    assign kernel_2mm_B11_x_i_stall_pred_bitsignaltemp = kernel_2mm_B11_x_i_stall_pred[0];
    assign kernel_2mm_B11_x_i_stall_succ_bitsignaltemp = kernel_2mm_B11_x_i_stall_succ[0];
    assign kernel_2mm_B11_x_i_valid_loop_bitsignaltemp = kernel_2mm_B11_x_i_valid_loop[0];
    assign kernel_2mm_B11_x_i_valid_pred_bitsignaltemp = kernel_2mm_B11_x_i_valid_pred[0];
    assign kernel_2mm_B11_x_i_valid_succ_bitsignaltemp = kernel_2mm_B11_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B11")
    ) thekernel_2mm_B11_x (
        .i_capture(kernel_2mm_B11_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B11_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B11_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B11_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B11_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B11_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B11_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B11_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B11_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_2mm_B2_x(EXTIFACE,72)
    assign kernel_2mm_B2_x_i_capture = GND_q;
    assign kernel_2mm_B2_x_i_clear = GND_q;
    assign kernel_2mm_B2_x_i_enable = VCC_q;
    assign kernel_2mm_B2_x_i_shift = GND_q;
    assign kernel_2mm_B2_x_i_stall_pred = bb_kernel_2mm_B2_out_stall_out_0;
    assign kernel_2mm_B2_x_i_stall_succ = bb_kernel_2mm_B8_out_stall_in_0;
    assign kernel_2mm_B2_x_i_valid_loop = bb_kernel_2mm_B8_out_valid_in_0;
    assign kernel_2mm_B2_x_i_valid_pred = bb_kernel_2mm_B2_out_valid_in_0;
    assign kernel_2mm_B2_x_i_valid_succ = bb_kernel_2mm_B8_out_valid_out_0;
    assign kernel_2mm_B2_x_i_capture_bitsignaltemp = kernel_2mm_B2_x_i_capture[0];
    assign kernel_2mm_B2_x_i_clear_bitsignaltemp = kernel_2mm_B2_x_i_clear[0];
    assign kernel_2mm_B2_x_i_enable_bitsignaltemp = kernel_2mm_B2_x_i_enable[0];
    assign kernel_2mm_B2_x_i_shift_bitsignaltemp = kernel_2mm_B2_x_i_shift[0];
    assign kernel_2mm_B2_x_i_stall_pred_bitsignaltemp = kernel_2mm_B2_x_i_stall_pred[0];
    assign kernel_2mm_B2_x_i_stall_succ_bitsignaltemp = kernel_2mm_B2_x_i_stall_succ[0];
    assign kernel_2mm_B2_x_i_valid_loop_bitsignaltemp = kernel_2mm_B2_x_i_valid_loop[0];
    assign kernel_2mm_B2_x_i_valid_pred_bitsignaltemp = kernel_2mm_B2_x_i_valid_pred[0];
    assign kernel_2mm_B2_x_i_valid_succ_bitsignaltemp = kernel_2mm_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B2")
    ) thekernel_2mm_B2_x (
        .i_capture(kernel_2mm_B2_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B2_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B2_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_2mm_B4_x(EXTIFACE,73)
    assign kernel_2mm_B4_x_i_capture = GND_q;
    assign kernel_2mm_B4_x_i_clear = GND_q;
    assign kernel_2mm_B4_x_i_enable = VCC_q;
    assign kernel_2mm_B4_x_i_shift = GND_q;
    assign kernel_2mm_B4_x_i_stall_pred = bb_kernel_2mm_B4_out_stall_out_0;
    assign kernel_2mm_B4_x_i_stall_succ = bb_kernel_2mm_B5_out_stall_in_0;
    assign kernel_2mm_B4_x_i_valid_loop = bb_kernel_2mm_B5_out_valid_in_0;
    assign kernel_2mm_B4_x_i_valid_pred = bb_kernel_2mm_B4_out_valid_in_0;
    assign kernel_2mm_B4_x_i_valid_succ = bb_kernel_2mm_B5_out_valid_out_0;
    assign kernel_2mm_B4_x_i_capture_bitsignaltemp = kernel_2mm_B4_x_i_capture[0];
    assign kernel_2mm_B4_x_i_clear_bitsignaltemp = kernel_2mm_B4_x_i_clear[0];
    assign kernel_2mm_B4_x_i_enable_bitsignaltemp = kernel_2mm_B4_x_i_enable[0];
    assign kernel_2mm_B4_x_i_shift_bitsignaltemp = kernel_2mm_B4_x_i_shift[0];
    assign kernel_2mm_B4_x_i_stall_pred_bitsignaltemp = kernel_2mm_B4_x_i_stall_pred[0];
    assign kernel_2mm_B4_x_i_stall_succ_bitsignaltemp = kernel_2mm_B4_x_i_stall_succ[0];
    assign kernel_2mm_B4_x_i_valid_loop_bitsignaltemp = kernel_2mm_B4_x_i_valid_loop[0];
    assign kernel_2mm_B4_x_i_valid_pred_bitsignaltemp = kernel_2mm_B4_x_i_valid_pred[0];
    assign kernel_2mm_B4_x_i_valid_succ_bitsignaltemp = kernel_2mm_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B4")
    ) thekernel_2mm_B4_x (
        .i_capture(kernel_2mm_B4_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B4_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B4_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_2mm_B6_x(EXTIFACE,74)
    assign kernel_2mm_B6_x_i_capture = GND_q;
    assign kernel_2mm_B6_x_i_clear = GND_q;
    assign kernel_2mm_B6_x_i_enable = VCC_q;
    assign kernel_2mm_B6_x_i_shift = GND_q;
    assign kernel_2mm_B6_x_i_stall_pred = bb_kernel_2mm_B6_out_stall_out_0;
    assign kernel_2mm_B6_x_i_stall_succ = bb_kernel_2mm_B6_out_stall_in_0;
    assign kernel_2mm_B6_x_i_valid_loop = bb_kernel_2mm_B6_out_profile_loop_o_valid;
    assign kernel_2mm_B6_x_i_valid_pred = bb_kernel_2mm_B6_out_valid_in_0;
    assign kernel_2mm_B6_x_i_valid_succ = bb_kernel_2mm_B6_out_valid_out_0;
    assign kernel_2mm_B6_x_i_capture_bitsignaltemp = kernel_2mm_B6_x_i_capture[0];
    assign kernel_2mm_B6_x_i_clear_bitsignaltemp = kernel_2mm_B6_x_i_clear[0];
    assign kernel_2mm_B6_x_i_enable_bitsignaltemp = kernel_2mm_B6_x_i_enable[0];
    assign kernel_2mm_B6_x_i_shift_bitsignaltemp = kernel_2mm_B6_x_i_shift[0];
    assign kernel_2mm_B6_x_i_stall_pred_bitsignaltemp = kernel_2mm_B6_x_i_stall_pred[0];
    assign kernel_2mm_B6_x_i_stall_succ_bitsignaltemp = kernel_2mm_B6_x_i_stall_succ[0];
    assign kernel_2mm_B6_x_i_valid_loop_bitsignaltemp = kernel_2mm_B6_x_i_valid_loop[0];
    assign kernel_2mm_B6_x_i_valid_pred_bitsignaltemp = kernel_2mm_B6_x_i_valid_pred[0];
    assign kernel_2mm_B6_x_i_valid_succ_bitsignaltemp = kernel_2mm_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B6")
    ) thekernel_2mm_B6_x (
        .i_capture(kernel_2mm_B6_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B6_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B6_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_2mm_B9_x(EXTIFACE,75)
    assign kernel_2mm_B9_x_i_capture = GND_q;
    assign kernel_2mm_B9_x_i_clear = GND_q;
    assign kernel_2mm_B9_x_i_enable = VCC_q;
    assign kernel_2mm_B9_x_i_shift = GND_q;
    assign kernel_2mm_B9_x_i_stall_pred = bb_kernel_2mm_B9_out_stall_out_0;
    assign kernel_2mm_B9_x_i_stall_succ = bb_kernel_2mm_B10_out_stall_in_0;
    assign kernel_2mm_B9_x_i_valid_loop = bb_kernel_2mm_B10_out_valid_in_0;
    assign kernel_2mm_B9_x_i_valid_pred = bb_kernel_2mm_B9_out_valid_in_0;
    assign kernel_2mm_B9_x_i_valid_succ = bb_kernel_2mm_B10_out_valid_out_0;
    assign kernel_2mm_B9_x_i_capture_bitsignaltemp = kernel_2mm_B9_x_i_capture[0];
    assign kernel_2mm_B9_x_i_clear_bitsignaltemp = kernel_2mm_B9_x_i_clear[0];
    assign kernel_2mm_B9_x_i_enable_bitsignaltemp = kernel_2mm_B9_x_i_enable[0];
    assign kernel_2mm_B9_x_i_shift_bitsignaltemp = kernel_2mm_B9_x_i_shift[0];
    assign kernel_2mm_B9_x_i_stall_pred_bitsignaltemp = kernel_2mm_B9_x_i_stall_pred[0];
    assign kernel_2mm_B9_x_i_stall_succ_bitsignaltemp = kernel_2mm_B9_x_i_stall_succ[0];
    assign kernel_2mm_B9_x_i_valid_loop_bitsignaltemp = kernel_2mm_B9_x_i_valid_loop[0];
    assign kernel_2mm_B9_x_i_valid_pred_bitsignaltemp = kernel_2mm_B9_x_i_valid_pred[0];
    assign kernel_2mm_B9_x_i_valid_succ_bitsignaltemp = kernel_2mm_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B9")
    ) thekernel_2mm_B9_x (
        .i_capture(kernel_2mm_B9_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B9_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B9_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_call_kernel_2mm_o_fifoalmost_full(GPOUT,76)
    assign out_iord_bl_call_kernel_2mm_o_fifoalmost_full = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_2mm_o_fifoready(GPOUT,77)
    assign out_iord_bl_call_kernel_2mm_o_fifoready = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;

    // out_iowr_bl_return_kernel_2mm_o_fifodata(GPOUT,78)
    assign out_iowr_bl_return_kernel_2mm_o_fifodata = bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifodata;

    // out_iowr_bl_return_kernel_2mm_o_fifovalid(GPOUT,79)
    assign out_iowr_bl_return_kernel_2mm_o_fifovalid = bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifovalid;

    // out_memdep_1_kernel_2mm_avm_address(GPOUT,80)
    assign out_memdep_1_kernel_2mm_avm_address = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address;

    // out_memdep_1_kernel_2mm_avm_burstcount(GPOUT,81)
    assign out_memdep_1_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount;

    // out_memdep_1_kernel_2mm_avm_byteenable(GPOUT,82)
    assign out_memdep_1_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable;

    // out_memdep_1_kernel_2mm_avm_enable(GPOUT,83)
    assign out_memdep_1_kernel_2mm_avm_enable = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable;

    // out_memdep_1_kernel_2mm_avm_read(GPOUT,84)
    assign out_memdep_1_kernel_2mm_avm_read = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read;

    // out_memdep_1_kernel_2mm_avm_write(GPOUT,85)
    assign out_memdep_1_kernel_2mm_avm_write = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write;

    // out_memdep_1_kernel_2mm_avm_writedata(GPOUT,86)
    assign out_memdep_1_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata;

    // out_memdep_kernel_2mm_avm_address(GPOUT,87)
    assign out_memdep_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;

    // out_memdep_kernel_2mm_avm_burstcount(GPOUT,88)
    assign out_memdep_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;

    // out_memdep_kernel_2mm_avm_byteenable(GPOUT,89)
    assign out_memdep_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;

    // out_memdep_kernel_2mm_avm_enable(GPOUT,90)
    assign out_memdep_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;

    // out_memdep_kernel_2mm_avm_read(GPOUT,91)
    assign out_memdep_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;

    // out_memdep_kernel_2mm_avm_write(GPOUT,92)
    assign out_memdep_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;

    // out_memdep_kernel_2mm_avm_writedata(GPOUT,93)
    assign out_memdep_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;

    // out_stall_out(GPOUT,94)
    assign out_stall_out = bb_kernel_2mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_address(GPOUT,95)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(GPOUT,96)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(GPOUT,97)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(GPOUT,98)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_read(GPOUT,99)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_write(GPOUT,100)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(GPOUT,101)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_address(GPOUT,102)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_address = bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(GPOUT,103)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount = bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(GPOUT,104)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable = bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(GPOUT,105)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_enable = bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_read(GPOUT,106)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_read = bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_write(GPOUT,107)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_write = bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(GPOUT,108)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata = bb_kernel_2mm_B9_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_address(GPOUT,109)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_address = bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount(GPOUT,110)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable(GPOUT,111)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_enable(GPOUT,112)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_enable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_read(GPOUT,113)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_read = bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_write(GPOUT,114)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_write = bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata(GPOUT,115)
    assign out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_out_unnamed_kernel_2mm14_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_address(GPOUT,116)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_address = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(GPOUT,117)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(GPOUT,118)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(GPOUT,119)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_enable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_read(GPOUT,120)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_read = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_write(GPOUT,121)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_write = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(GPOUT,122)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_address(GPOUT,123)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_address = bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount(GPOUT,124)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount = bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable(GPOUT,125)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable = bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_enable(GPOUT,126)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_enable = bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_read(GPOUT,127)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_read = bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_write(GPOUT,128)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_write = bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata(GPOUT,129)
    assign out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata = bb_kernel_2mm_B4_out_unnamed_kernel_2mm6_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_address(GPOUT,130)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_address = bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(GPOUT,131)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(GPOUT,132)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(GPOUT,133)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_enable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_read(GPOUT,134)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_read = bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_write(GPOUT,135)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_write = bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(GPOUT,136)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;

    // out_valid_out(GPOUT,137)
    assign out_valid_out = bb_kernel_2mm_B7_out_valid_out_0;

    // rst_sync(RESETSYNC,138)
    acl_reset_handler #(
        .ASYNC_RESET(0),
        .USE_SYNCHRONIZER(1),
        .PULSE_EXTENSION(0),
        .PIPE_DEPTH(3),
        .DUPLICATE(1)
    ) therst_sync (
        .clk(clock),
        .i_resetn(resetn),
        .o_sclrn(rst_sync_rst_sclrn)
    );

endmodule
