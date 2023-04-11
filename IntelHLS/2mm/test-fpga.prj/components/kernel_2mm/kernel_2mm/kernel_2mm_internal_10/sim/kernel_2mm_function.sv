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
// SystemVerilog created on Fri Apr  7 18:35:52 2023


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
    input wire [31:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm5_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm5_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm5_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm5_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack,
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
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm5_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm5_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm5_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm5_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm5_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm5_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm5_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kernel_2mm_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B10_out_c0_exe420210;
    wire [31:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B10_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B10_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B11_out_c0_exe2200;
    wire [0:0] bb_kernel_2mm_B11_out_c0_exe4202;
    wire [63:0] bb_kernel_2mm_B11_out_c0_exe5203;
    wire [0:0] bb_kernel_2mm_B11_out_c0_exe6204;
    wire [0:0] bb_kernel_2mm_B11_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B11_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B11_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B11_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B11_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B11_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B11_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B11_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B11_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;
    wire [0:0] bb_kernel_2mm_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_c0_exe2;
    wire [31:0] bb_kernel_2mm_B2_out_c0_exe3;
    wire [0:0] bb_kernel_2mm_B2_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B2_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B2_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B2_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B2_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B2_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B3_out_c0_exe21371;
    wire [0:0] bb_kernel_2mm_B3_out_c0_exe51404;
    wire [0:0] bb_kernel_2mm_B3_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B3_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B4_out_c0_exe10;
    wire [31:0] bb_kernel_2mm_B4_out_c0_exe1116;
    wire [63:0] bb_kernel_2mm_B4_out_c0_exe2117;
    wire [63:0] bb_kernel_2mm_B4_out_c0_exe3118;
    wire [63:0] bb_kernel_2mm_B4_out_c0_exe4;
    wire [31:0] bb_kernel_2mm_B4_out_c0_exe5;
    wire [0:0] bb_kernel_2mm_B4_out_c0_exe7;
    wire [0:0] bb_kernel_2mm_B4_out_c0_exe8;
    wire [0:0] bb_kernel_2mm_B4_out_c0_exe9;
    wire [0:0] bb_kernel_2mm_B4_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B4_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B4_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B4_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B4_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B4_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B4_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B4_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B5_out_c0_exe21372;
    wire [0:0] bb_kernel_2mm_B5_out_c0_exe51405;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B5_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B5_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B5_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B6_out_c0_exe2137;
    wire [31:0] bb_kernel_2mm_B6_out_c0_exe3138;
    wire [0:0] bb_kernel_2mm_B6_out_c0_exe5140;
    wire [63:0] bb_kernel_2mm_B6_out_c0_exe6141;
    wire [0:0] bb_kernel_2mm_B6_out_c0_exe7142;
    wire [0:0] bb_kernel_2mm_B6_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B6_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B6_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B6_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B6_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B6_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B6_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B6_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B6_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B7_out_feedback_out_1;
    wire [0:0] bb_kernel_2mm_B7_out_feedback_valid_out_1;
    wire [0:0] bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifodata;
    wire [0:0] bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifovalid;
    wire [0:0] bb_kernel_2mm_B7_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B7_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B8_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B8_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe1162;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe2163;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe3164;
    wire [31:0] bb_kernel_2mm_B9_out_c0_exe4165;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe6167;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe7168;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe8169;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe9170;
    wire [0:0] bb_kernel_2mm_B9_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B9_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B9_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B9_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B9_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B9_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B9_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B9_out_valid_out_0;
    wire [1:0] c_i2_082_q;
    wire [63:0] c_i32_addrspace_64_undef39_q;
    wire [31:0] c_i32_undef18_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out;
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
    wire [0:0] loop_limiter_kernel_2mm0_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm0_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm1_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm1_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm2_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm2_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm3_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm3_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm4_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm4_out_o_valid;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_2_tpl;


    // c_i2_082(CONSTANT,58)
    assign c_i2_082_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo(BLACKBOX,87)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going48_1_valid_fifo thei_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_kernel_2mm_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo(BLACKBOX,85)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going44_2_valid_fifo thei_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_kernel_2mm_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo(BLACKBOX,83)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going39_2_valid_fifo thei_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_kernel_2mm_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo(BLACKBOX,81)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going25_6_valid_fifo thei_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_kernel_2mm_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo(BLACKBOX,79)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going18_2_valid_fifo thei_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_kernel_2mm_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo(BLACKBOX,89)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_082_q),
        .in_stall_in(bb_kernel_2mm_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B7_sr_0_aunroll_x(BLACKBOX,214)
    kernel_2mm_bb_B7_sr_0 thebb_kernel_2mm_B7_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B7_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B8_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8(BLACKBOX,12)
    kernel_2mm_bb_B8 thebb_kernel_2mm_B8 (
        .in_c0_exe42029_0(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B8_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B8_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8_sr_0_aunroll_x(BLACKBOX,215)
    kernel_2mm_bb_B8_sr_0 thebb_kernel_2mm_B8_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B8_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B10_out_c0_exe420210),
        .out_o_stall(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10(BLACKBOX,3)
    kernel_2mm_bb_B10 thebb_kernel_2mm_B10 (
        .in_c0_exe22008_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe420210_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe520311_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe620412_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_memdep_1_kernel_2mm_avm_readdata(in_memdep_1_kernel_2mm_avm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(in_memdep_1_kernel_2mm_avm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(in_memdep_1_kernel_2mm_avm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(in_memdep_1_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe420210(bb_kernel_2mm_B10_out_c0_exe420210),
        .out_memdep_1_kernel_2mm_avm_address(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B10_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B10_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10_sr_0_aunroll_x(BLACKBOX,207)
    kernel_2mm_bb_B10_sr_0 thebb_kernel_2mm_B10_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B10_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B11_out_c0_exe2200),
        .in_i_data_1_tpl(bb_kernel_2mm_B11_out_c0_exe4202),
        .in_i_data_2_tpl(bb_kernel_2mm_B11_out_c0_exe5203),
        .in_i_data_3_tpl(bb_kernel_2mm_B11_out_c0_exe6204),
        .out_o_stall(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr(BLACKBOX,88)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11(BLACKBOX,4)
    kernel_2mm_bb_B11 thebb_kernel_2mm_B11 (
        .in_arrayidx49496_0(c_i32_addrspace_64_undef39_q),
        .in_arrayidx49496_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom4894_0(c_i32_addrspace_64_undef39_q),
        .in_idxprom4894_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_idxprom60_pop2395_0(c_i32_addrspace_64_undef39_q),
        .in_idxprom60_pop2395_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_idxprom62_pop3183_0(c_i32_addrspace_64_undef39_q),
        .in_idxprom62_pop3183_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mul5097_0(c_i32_undef18_q),
        .in_mul5097_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp1698_0(GND_q),
        .in_notcmp1698_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp4254_pop2989_0(GND_q),
        .in_notcmp4254_pop2989_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp4255_pop2299_0(GND_q),
        .in_notcmp4255_pop2299_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2200(bb_kernel_2mm_B11_out_c0_exe2200),
        .out_c0_exe4202(bb_kernel_2mm_B11_out_c0_exe4202),
        .out_c0_exe5203(bb_kernel_2mm_B11_out_c0_exe5203),
        .out_c0_exe6204(bb_kernel_2mm_B11_out_c0_exe6204),
        .out_exiting_stall_out(bb_kernel_2mm_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B11_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B11_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B11_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B11_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B11_out_stall_out_1),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B11_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B11_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11_sr_1_aunroll_x(BLACKBOX,208)
    kernel_2mm_bb_B11_sr_1 thebb_kernel_2mm_B11_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B9_out_c0_exe8169),
        .in_i_data_2_tpl(bb_kernel_2mm_B9_out_c0_exe9170),
        .in_i_data_3_tpl(bb_kernel_2mm_B9_out_c0_exe1162),
        .in_i_data_4_tpl(bb_kernel_2mm_B9_out_c0_exe2163),
        .in_i_data_5_tpl(bb_kernel_2mm_B9_out_c0_exe3164),
        .in_i_data_6_tpl(bb_kernel_2mm_B9_out_c0_exe4165),
        .in_i_data_7_tpl(bb_kernel_2mm_B9_out_c0_exe6167),
        .in_i_data_8_tpl(bb_kernel_2mm_B9_out_c0_exe7168),
        .out_o_stall(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm4(BLACKBOX,144)
    kernel_2mm_loop_limiter_4 theloop_limiter_kernel_2mm4 (
        .in_i_stall(bb_kernel_2mm_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B11_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B9_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm4_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr(BLACKBOX,78)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going18_2_sr thei_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9(BLACKBOX,13)
    kernel_2mm_bb_B9 thebb_kernel_2mm_B9 (
        .in_flush(in_start),
        .in_forked59_0(GND_q),
        .in_forked59_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom62_pop3181_0(c_i32_addrspace_64_undef39_q),
        .in_idxprom62_pop3181_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .in_notcmp4254_pop2987_0(GND_q),
        .in_notcmp4254_pop2987_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm4_out_o_stall),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going18_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1162(bb_kernel_2mm_B9_out_c0_exe1162),
        .out_c0_exe2163(bb_kernel_2mm_B9_out_c0_exe2163),
        .out_c0_exe3164(bb_kernel_2mm_B9_out_c0_exe3164),
        .out_c0_exe4165(bb_kernel_2mm_B9_out_c0_exe4165),
        .out_c0_exe6167(bb_kernel_2mm_B9_out_c0_exe6167),
        .out_c0_exe7168(bb_kernel_2mm_B9_out_c0_exe7168),
        .out_c0_exe8169(bb_kernel_2mm_B9_out_c0_exe8169),
        .out_c0_exe9170(bb_kernel_2mm_B9_out_c0_exe9170),
        .out_exiting_stall_out(bb_kernel_2mm_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B9_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B9_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B9_out_stall_out_1),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B9_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B9_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9_sr_1_aunroll_x(BLACKBOX,216)
    kernel_2mm_bb_B9_sr_1 thebb_kernel_2mm_B9_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B3_out_c0_exe21371),
        .in_i_data_2_tpl(bb_kernel_2mm_B3_out_c0_exe51404),
        .out_o_stall(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm2(BLACKBOX,142)
    kernel_2mm_loop_limiter_2 theloop_limiter_kernel_2mm2 (
        .in_i_stall(bb_kernel_2mm_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B9_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B3_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm2_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3(BLACKBOX,7)
    kernel_2mm_bb_B3 thebb_kernel_2mm_B3 (
        .in_c0_exe21371_0(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe51404_0(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_kernel_2mm2_out_o_stall),
        .in_valid_in_0(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe21371(bb_kernel_2mm_B3_out_c0_exe21371),
        .out_c0_exe51404(bb_kernel_2mm_B3_out_c0_exe51404),
        .out_stall_out_0(bb_kernel_2mm_B3_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3_sr_0_aunroll_x(BLACKBOX,210)
    kernel_2mm_bb_B3_sr_0 thebb_kernel_2mm_B3_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B3_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B5_out_c0_exe21372),
        .in_i_data_1_tpl(bb_kernel_2mm_B5_out_c0_exe51405),
        .out_o_stall(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B5(BLACKBOX,9)
    kernel_2mm_bb_B5 thebb_kernel_2mm_B5 (
        .in_c0_exe21372_0(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31383_0(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51405_0(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61416_0(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe71427_0(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_memdep_kernel_2mm_avm_readdata(in_memdep_kernel_2mm_avm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(in_memdep_kernel_2mm_avm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(in_memdep_kernel_2mm_avm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(in_memdep_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B3_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe21372(bb_kernel_2mm_B5_out_c0_exe21372),
        .out_c0_exe51405(bb_kernel_2mm_B5_out_c0_exe51405),
        .out_memdep_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B5_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B5_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B5_sr_0_aunroll_x(BLACKBOX,212)
    kernel_2mm_bb_B5_sr_0 thebb_kernel_2mm_B5_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B5_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B6_out_c0_exe2137),
        .in_i_data_1_tpl(bb_kernel_2mm_B6_out_c0_exe3138),
        .in_i_data_2_tpl(bb_kernel_2mm_B6_out_c0_exe5140),
        .in_i_data_3_tpl(bb_kernel_2mm_B6_out_c0_exe6141),
        .in_i_data_4_tpl(bb_kernel_2mm_B6_out_c0_exe7142),
        .out_o_stall(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr(BLACKBOX,80)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going25_6_sr thei_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_64_undef39(CONSTANT,64)
    assign c_i32_addrspace_64_undef39_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_kernel_2mm_B6(BLACKBOX,10)
    kernel_2mm_bb_B6 thebb_kernel_2mm_B6 (
        .in_arrayidx11178_0(c_i32_addrspace_64_undef39_q),
        .in_arrayidx11178_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked22_0(GND_q),
        .in_forked22_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_040_pop1557_pop1975_0(c_i32_undef18_q),
        .in_i_040_pop1557_pop1975_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i_040_pop1574_0(c_i32_undef18_q),
        .in_i_040_pop1574_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_idxprom1077_0(c_i32_addrspace_64_undef39_q),
        .in_idxprom1077_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_idxprom76_0(c_i32_addrspace_64_undef39_q),
        .in_idxprom76_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .in_notcmp3779_0(GND_q),
        .in_notcmp3779_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp4253_pop1880_0(GND_q),
        .in_notcmp4253_pop1880_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp4271_0(GND_q),
        .in_notcmp4271_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm6_0(c_i32_undef18_q),
        .in_unnamed_kernel_2mm6_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm7_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm7_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm7_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm7_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm8_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm8_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm8_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm8_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going25_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2137(bb_kernel_2mm_B6_out_c0_exe2137),
        .out_c0_exe3138(bb_kernel_2mm_B6_out_c0_exe3138),
        .out_c0_exe5140(bb_kernel_2mm_B6_out_c0_exe5140),
        .out_c0_exe6141(bb_kernel_2mm_B6_out_c0_exe6141),
        .out_c0_exe7142(bb_kernel_2mm_B6_out_c0_exe7142),
        .out_exiting_stall_out(bb_kernel_2mm_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B6_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B6_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B6_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B6_out_stall_out_1),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_address(bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_enable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_read(bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_write(bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_address(bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount(bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_enable(bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_read(bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_write(bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata(bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B6_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B6_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6_sr_1_aunroll_x(BLACKBOX,213)
    kernel_2mm_bb_B6_sr_1 thebb_kernel_2mm_B6_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B4_out_c0_exe9),
        .in_i_data_2_tpl(bb_kernel_2mm_B4_out_c0_exe10),
        .in_i_data_3_tpl(bb_kernel_2mm_B4_out_c0_exe1116),
        .in_i_data_4_tpl(bb_kernel_2mm_B4_out_c0_exe2117),
        .in_i_data_5_tpl(bb_kernel_2mm_B4_out_c0_exe3118),
        .in_i_data_6_tpl(bb_kernel_2mm_B4_out_c0_exe4),
        .in_i_data_7_tpl(bb_kernel_2mm_B4_out_c0_exe5),
        .in_i_data_8_tpl(bb_kernel_2mm_B4_out_c0_exe7),
        .in_i_data_9_tpl(bb_kernel_2mm_B4_out_c0_exe8),
        .out_o_stall(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm3(BLACKBOX,143)
    kernel_2mm_loop_limiter_3 theloop_limiter_kernel_2mm3 (
        .in_i_stall(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B6_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B4_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm3_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr(BLACKBOX,82)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going39_2_sr thei_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef18(CONSTANT,66)
    assign c_i32_undef18_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_kernel_2mm_B4(BLACKBOX,8)
    kernel_2mm_bb_B4 thebb_kernel_2mm_B4 (
        .in_flush(in_start),
        .in_forked52_0(GND_q),
        .in_forked52_1(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_040_pop1572_0(c_i32_undef18_q),
        .in_i_040_pop1572_1(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp4269_0(GND_q),
        .in_notcmp4269_1(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm3_out_o_stall),
        .in_unnamed_kernel_2mm5_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm5_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm5_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm5_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm5_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm5_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm5_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm5_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going39_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_kernel_2mm_B4_out_c0_exe10),
        .out_c0_exe1116(bb_kernel_2mm_B4_out_c0_exe1116),
        .out_c0_exe2117(bb_kernel_2mm_B4_out_c0_exe2117),
        .out_c0_exe3118(bb_kernel_2mm_B4_out_c0_exe3118),
        .out_c0_exe4(bb_kernel_2mm_B4_out_c0_exe4),
        .out_c0_exe5(bb_kernel_2mm_B4_out_c0_exe5),
        .out_c0_exe7(bb_kernel_2mm_B4_out_c0_exe7),
        .out_c0_exe8(bb_kernel_2mm_B4_out_c0_exe8),
        .out_c0_exe9(bb_kernel_2mm_B4_out_c0_exe9),
        .out_exiting_stall_out(bb_kernel_2mm_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B4_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B4_out_stall_out_1),
        .out_unnamed_kernel_2mm5_kernel_2mm_avm_address(bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm5_kernel_2mm_avm_burstcount(bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm5_kernel_2mm_avm_byteenable(bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm5_kernel_2mm_avm_enable(bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm5_kernel_2mm_avm_read(bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm5_kernel_2mm_avm_write(bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm5_kernel_2mm_avm_writedata(bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B4_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B4_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B4_sr_1_aunroll_x(BLACKBOX,211)
    kernel_2mm_bb_B4_sr_1 thebb_kernel_2mm_B4_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B2_out_c0_exe2),
        .in_i_data_2_tpl(bb_kernel_2mm_B2_out_c0_exe3),
        .out_o_stall(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm1(BLACKBOX,141)
    kernel_2mm_loop_limiter_1 theloop_limiter_kernel_2mm1 (
        .in_i_stall(bb_kernel_2mm_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B4_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B2_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm1_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr(BLACKBOX,84)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going44_2_sr thei_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B2(BLACKBOX,6)
    kernel_2mm_bb_B2 thebb_kernel_2mm_B2 (
        .in_forked51_0(GND_q),
        .in_forked51_1(bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm1_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going44_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_kernel_2mm_B2_out_c0_exe2),
        .out_c0_exe3(bb_kernel_2mm_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_kernel_2mm_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B2_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B2_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B2_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B2_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B2_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B2_sr_1_aunroll_x(BLACKBOX,209)
    kernel_2mm_bb_B2_sr_1 thebb_kernel_2mm_B2_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm0(BLACKBOX,140)
    kernel_2mm_loop_limiter_0 theloop_limiter_kernel_2mm0 (
        .in_i_stall(bb_kernel_2mm_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B2_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm0_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr(BLACKBOX,86)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going48_1_sr thei_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B1_start(BLACKBOX,5)
    kernel_2mm_bb_B1_start thebb_kernel_2mm_B1_start (
        .in_feedback_in_1(bb_kernel_2mm_B7_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_kernel_2mm_B7_out_feedback_valid_out_1),
        .in_iord_bl_call_kernel_2mm_i_fifodata(in_iord_bl_call_kernel_2mm_i_fifodata),
        .in_iord_bl_call_kernel_2mm_i_fifovalid(in_iord_bl_call_kernel_2mm_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_kernel_2mm1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_kernel_2mm_o_fifoalmost_full(bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_2mm_o_fifoready(bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready),
        .out_pipeline_valid_out(bb_kernel_2mm_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_kernel_2mm_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B7(BLACKBOX,11)
    kernel_2mm_bb_B7 thebb_kernel_2mm_B7 (
        .in_feedback_stall_in_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_kernel_2mm_i_fifoready(in_iowr_bl_return_kernel_2mm_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_kernel_2mm_B7_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_kernel_2mm_B7_out_feedback_valid_out_1),
        .out_iowr_bl_return_kernel_2mm_o_fifodata(bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifodata),
        .out_iowr_bl_return_kernel_2mm_o_fifovalid(bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_2mm_B7_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B7_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_2mm_B1_start_x(EXTIFACE,134)
    assign kernel_2mm_B1_start_x_i_capture = GND_q;
    assign kernel_2mm_B1_start_x_i_clear = GND_q;
    assign kernel_2mm_B1_start_x_i_enable = VCC_q;
    assign kernel_2mm_B1_start_x_i_shift = GND_q;
    assign kernel_2mm_B1_start_x_i_stall_pred = GND_q;
    assign kernel_2mm_B1_start_x_i_stall_succ = bb_kernel_2mm_B7_out_stall_in_0;
    assign kernel_2mm_B1_start_x_i_valid_loop = bb_kernel_2mm_B1_start_out_valid_in_0;
    assign kernel_2mm_B1_start_x_i_valid_pred = bb_kernel_2mm_B1_start_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_2mm_B11_x(EXTIFACE,135)
    assign kernel_2mm_B11_x_i_capture = GND_q;
    assign kernel_2mm_B11_x_i_clear = GND_q;
    assign kernel_2mm_B11_x_i_enable = VCC_q;
    assign kernel_2mm_B11_x_i_shift = GND_q;
    assign kernel_2mm_B11_x_i_stall_pred = loop_limiter_kernel_2mm4_out_o_stall;
    assign kernel_2mm_B11_x_i_stall_succ = bb_kernel_2mm_B11_out_stall_in_0;
    assign kernel_2mm_B11_x_i_valid_loop = bb_kernel_2mm_B11_out_valid_in_0;
    assign kernel_2mm_B11_x_i_valid_pred = bb_kernel_2mm_B11_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_2mm_B2_x(EXTIFACE,136)
    assign kernel_2mm_B2_x_i_capture = GND_q;
    assign kernel_2mm_B2_x_i_clear = GND_q;
    assign kernel_2mm_B2_x_i_enable = VCC_q;
    assign kernel_2mm_B2_x_i_shift = GND_q;
    assign kernel_2mm_B2_x_i_stall_pred = loop_limiter_kernel_2mm0_out_o_stall;
    assign kernel_2mm_B2_x_i_stall_succ = bb_kernel_2mm_B8_out_stall_in_0;
    assign kernel_2mm_B2_x_i_valid_loop = bb_kernel_2mm_B2_out_valid_in_0;
    assign kernel_2mm_B2_x_i_valid_pred = bb_kernel_2mm_B2_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_2mm_B4_x(EXTIFACE,137)
    assign kernel_2mm_B4_x_i_capture = GND_q;
    assign kernel_2mm_B4_x_i_clear = GND_q;
    assign kernel_2mm_B4_x_i_enable = VCC_q;
    assign kernel_2mm_B4_x_i_shift = GND_q;
    assign kernel_2mm_B4_x_i_stall_pred = loop_limiter_kernel_2mm1_out_o_stall;
    assign kernel_2mm_B4_x_i_stall_succ = bb_kernel_2mm_B5_out_stall_in_0;
    assign kernel_2mm_B4_x_i_valid_loop = bb_kernel_2mm_B4_out_valid_in_0;
    assign kernel_2mm_B4_x_i_valid_pred = bb_kernel_2mm_B4_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_2mm_B6_x(EXTIFACE,138)
    assign kernel_2mm_B6_x_i_capture = GND_q;
    assign kernel_2mm_B6_x_i_clear = GND_q;
    assign kernel_2mm_B6_x_i_enable = VCC_q;
    assign kernel_2mm_B6_x_i_shift = GND_q;
    assign kernel_2mm_B6_x_i_stall_pred = loop_limiter_kernel_2mm3_out_o_stall;
    assign kernel_2mm_B6_x_i_stall_succ = bb_kernel_2mm_B6_out_stall_in_0;
    assign kernel_2mm_B6_x_i_valid_loop = bb_kernel_2mm_B6_out_valid_in_0;
    assign kernel_2mm_B6_x_i_valid_pred = bb_kernel_2mm_B6_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_2mm_B9_x(EXTIFACE,139)
    assign kernel_2mm_B9_x_i_capture = GND_q;
    assign kernel_2mm_B9_x_i_clear = GND_q;
    assign kernel_2mm_B9_x_i_enable = VCC_q;
    assign kernel_2mm_B9_x_i_shift = GND_q;
    assign kernel_2mm_B9_x_i_stall_pred = loop_limiter_kernel_2mm2_out_o_stall;
    assign kernel_2mm_B9_x_i_stall_succ = bb_kernel_2mm_B10_out_stall_in_0;
    assign kernel_2mm_B9_x_i_valid_loop = bb_kernel_2mm_B9_out_valid_in_0;
    assign kernel_2mm_B9_x_i_valid_pred = bb_kernel_2mm_B9_out_valid_in_1;
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
        .resetn(resetn)
    );

    // out_iord_bl_call_kernel_2mm_o_fifoalmost_full(GPOUT,145)
    assign out_iord_bl_call_kernel_2mm_o_fifoalmost_full = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_2mm_o_fifoready(GPOUT,146)
    assign out_iord_bl_call_kernel_2mm_o_fifoready = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;

    // out_iowr_bl_return_kernel_2mm_o_fifodata(GPOUT,147)
    assign out_iowr_bl_return_kernel_2mm_o_fifodata = bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifodata;

    // out_iowr_bl_return_kernel_2mm_o_fifovalid(GPOUT,148)
    assign out_iowr_bl_return_kernel_2mm_o_fifovalid = bb_kernel_2mm_B7_out_iowr_bl_return_kernel_2mm_o_fifovalid;

    // out_memdep_1_kernel_2mm_avm_address(GPOUT,149)
    assign out_memdep_1_kernel_2mm_avm_address = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_address;

    // out_memdep_1_kernel_2mm_avm_burstcount(GPOUT,150)
    assign out_memdep_1_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_burstcount;

    // out_memdep_1_kernel_2mm_avm_byteenable(GPOUT,151)
    assign out_memdep_1_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_byteenable;

    // out_memdep_1_kernel_2mm_avm_enable(GPOUT,152)
    assign out_memdep_1_kernel_2mm_avm_enable = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_enable;

    // out_memdep_1_kernel_2mm_avm_read(GPOUT,153)
    assign out_memdep_1_kernel_2mm_avm_read = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_read;

    // out_memdep_1_kernel_2mm_avm_write(GPOUT,154)
    assign out_memdep_1_kernel_2mm_avm_write = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_write;

    // out_memdep_1_kernel_2mm_avm_writedata(GPOUT,155)
    assign out_memdep_1_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_out_memdep_1_kernel_2mm_avm_writedata;

    // out_memdep_kernel_2mm_avm_address(GPOUT,156)
    assign out_memdep_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;

    // out_memdep_kernel_2mm_avm_burstcount(GPOUT,157)
    assign out_memdep_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;

    // out_memdep_kernel_2mm_avm_byteenable(GPOUT,158)
    assign out_memdep_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;

    // out_memdep_kernel_2mm_avm_enable(GPOUT,159)
    assign out_memdep_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;

    // out_memdep_kernel_2mm_avm_read(GPOUT,160)
    assign out_memdep_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;

    // out_memdep_kernel_2mm_avm_write(GPOUT,161)
    assign out_memdep_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;

    // out_memdep_kernel_2mm_avm_writedata(GPOUT,162)
    assign out_memdep_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;

    // bb_kernel_2mm_B0_runOnce(BLACKBOX,2)
    kernel_2mm_bb_B0_runOnce thebb_kernel_2mm_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_2mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,163)
    assign out_stall_out = bb_kernel_2mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_address(GPOUT,164)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(GPOUT,165)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(GPOUT,166)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(GPOUT,167)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_read(GPOUT,168)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_write(GPOUT,169)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(GPOUT,170)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = bb_kernel_2mm_B9_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_address(GPOUT,171)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(GPOUT,172)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(GPOUT,173)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(GPOUT,174)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_read(GPOUT,175)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_write(GPOUT,176)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(GPOUT,177)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_address(GPOUT,178)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_address = bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(GPOUT,179)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount = bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(GPOUT,180)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(GPOUT,181)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_enable = bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_read(GPOUT,182)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_read = bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_write(GPOUT,183)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_write = bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(GPOUT,184)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata = bb_kernel_2mm_B11_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm5_kernel_2mm_avm_address(GPOUT,185)
    assign out_unnamed_kernel_2mm5_kernel_2mm_avm_address = bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm5_kernel_2mm_avm_burstcount(GPOUT,186)
    assign out_unnamed_kernel_2mm5_kernel_2mm_avm_burstcount = bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm5_kernel_2mm_avm_byteenable(GPOUT,187)
    assign out_unnamed_kernel_2mm5_kernel_2mm_avm_byteenable = bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm5_kernel_2mm_avm_enable(GPOUT,188)
    assign out_unnamed_kernel_2mm5_kernel_2mm_avm_enable = bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm5_kernel_2mm_avm_read(GPOUT,189)
    assign out_unnamed_kernel_2mm5_kernel_2mm_avm_read = bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm5_kernel_2mm_avm_write(GPOUT,190)
    assign out_unnamed_kernel_2mm5_kernel_2mm_avm_write = bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm5_kernel_2mm_avm_writedata(GPOUT,191)
    assign out_unnamed_kernel_2mm5_kernel_2mm_avm_writedata = bb_kernel_2mm_B4_out_unnamed_kernel_2mm5_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_address(GPOUT,192)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_address = bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount(GPOUT,193)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable(GPOUT,194)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_enable(GPOUT,195)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_enable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_read(GPOUT,196)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_read = bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_write(GPOUT,197)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_write = bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata(GPOUT,198)
    assign out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_out_unnamed_kernel_2mm7_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_address(GPOUT,199)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_address = bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount(GPOUT,200)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount = bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable(GPOUT,201)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_enable(GPOUT,202)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_enable = bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_read(GPOUT,203)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_read = bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_write(GPOUT,204)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_write = bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata(GPOUT,205)
    assign out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata = bb_kernel_2mm_B6_out_unnamed_kernel_2mm8_kernel_2mm_avm_writedata;

    // out_valid_out(GPOUT,206)
    assign out_valid_out = GND_q;

endmodule
