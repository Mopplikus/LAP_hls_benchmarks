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

// SystemVerilog created from kernel_3mm_function
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_C,
    input wire [63:0] in_arg_D,
    input wire [63:0] in_arg_E,
    input wire [63:0] in_arg_F,
    input wire [63:0] in_arg_G,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [447:0] in_iord_bl_call_kernel_3mm_i_fifodata,
    input wire [0:0] in_iord_bl_call_kernel_3mm_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_kernel_3mm_i_fifoready,
    input wire [63:0] in_memdep_10_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_10_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_10_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_1_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_2_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_2_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_3_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_3_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_4_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_4_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_5_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_5_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_6_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_7_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_7_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_8_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_8_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_8_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_9_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_9_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_9_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm23_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm24_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm25_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm25_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm25_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm25_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoready,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifodata,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifovalid,
    output wire [63:0] out_memdep_10_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_10_kernel_3mm_avm_burstcount,
    output wire [7:0] out_memdep_10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_10_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_10_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_10_kernel_3mm_avm_write,
    output wire [63:0] out_memdep_10_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_2_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_2_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_2_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_2_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_3_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_3_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_4_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_4_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_4_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_5_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_5_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_5_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_7_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_7_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_7_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_8_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_8_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_8_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_8_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_8_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_8_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_9_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_9_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_9_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_9_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_9_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_9_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [0:0] out_o_active_memdep_10,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_write,
    output wire [63:0] out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm25_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm25_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm25_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm25_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kernel_3mm_B0_runOnce_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B10_out_c0_exe2359;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe4361;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe5362;
    wire [63:0] bb_kernel_3mm_B10_out_c0_exe6363;
    wire [0:0] bb_kernel_3mm_B10_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B10_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B10_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B10_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B10_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B10_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B10_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B10_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe436113;
    wire [31:0] bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B11_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B11_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B11_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B12_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B12_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B12_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B13_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B13_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B14_out_c0_exe2374;
    wire [31:0] bb_kernel_3mm_B14_out_c0_exe3375;
    wire [0:0] bb_kernel_3mm_B14_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B14_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B14_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B14_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B14_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B14_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B14_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B14_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B15_out_c0_exe10403;
    wire [31:0] bb_kernel_3mm_B15_out_c0_exe1394;
    wire [63:0] bb_kernel_3mm_B15_out_c0_exe2395;
    wire [63:0] bb_kernel_3mm_B15_out_c0_exe3396;
    wire [63:0] bb_kernel_3mm_B15_out_c0_exe4397;
    wire [31:0] bb_kernel_3mm_B15_out_c0_exe5398;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe7400;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe8401;
    wire [0:0] bb_kernel_3mm_B15_out_c0_exe9402;
    wire [0:0] bb_kernel_3mm_B15_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B15_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B15_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B15_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B15_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B15_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B15_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B15_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B16_out_c0_exe2435;
    wire [0:0] bb_kernel_3mm_B16_out_c0_exe4437;
    wire [63:0] bb_kernel_3mm_B16_out_c0_exe5438;
    wire [0:0] bb_kernel_3mm_B16_out_c0_exe6439;
    wire [0:0] bb_kernel_3mm_B16_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B16_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B16_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B16_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B16_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B16_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B16_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B16_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B16_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B17_out_c0_exe443718;
    wire [31:0] bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B17_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B17_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B17_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B18_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B18_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B18_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B19_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B19_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_5_0;
    wire [63:0] bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_6_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] bb_kernel_3mm_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe2;
    wire [31:0] bb_kernel_3mm_B2_out_c0_exe3;
    wire [0:0] bb_kernel_3mm_B2_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B2_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B2_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B2_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B2_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B2_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B2_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B20_out_c0_exe2450;
    wire [31:0] bb_kernel_3mm_B20_out_c0_exe3451;
    wire [0:0] bb_kernel_3mm_B20_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B20_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B20_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B20_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B20_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B20_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B20_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B20_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B21_out_c0_exe3465;
    wire [0:0] bb_kernel_3mm_B21_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B21_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B21_out_lsu_memdep_10_o_active;
    wire [63:0] bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B21_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B21_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B21_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B21_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B21_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B21_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B21_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B22_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B22_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B22_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B23_out_feedback_out_1;
    wire [0:0] bb_kernel_3mm_B23_out_feedback_valid_out_1;
    wire [0:0] bb_kernel_3mm_B23_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] bb_kernel_3mm_B23_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [0:0] bb_kernel_3mm_B23_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B23_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B23_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe18;
    wire [0:0] bb_kernel_3mm_B3_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B3_out_exiting_valid_out;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B3_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B3_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B3_out_stall_out_1;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;
    wire [7:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;
    wire [63:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B3_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B3_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B4_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B4_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B4_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B5_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B5_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B6_out_c0_exe1257;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe3259;
    wire [0:0] bb_kernel_3mm_B6_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B6_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B6_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B6_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B6_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B6_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B6_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B6_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe10287;
    wire [31:0] bb_kernel_3mm_B7_out_c0_exe1278;
    wire [63:0] bb_kernel_3mm_B7_out_c0_exe2279;
    wire [63:0] bb_kernel_3mm_B7_out_c0_exe3280;
    wire [63:0] bb_kernel_3mm_B7_out_c0_exe4281;
    wire [31:0] bb_kernel_3mm_B7_out_c0_exe5282;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe7284;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe8285;
    wire [31:0] bb_kernel_3mm_B7_out_c0_exe9286;
    wire [0:0] bb_kernel_3mm_B7_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B7_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B7_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B7_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B7_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B7_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B7_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B8_out_c0_exe10316;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe11317;
    wire [63:0] bb_kernel_3mm_B8_out_c0_exe2308;
    wire [63:0] bb_kernel_3mm_B8_out_c0_exe3309;
    wire [31:0] bb_kernel_3mm_B8_out_c0_exe4310;
    wire [31:0] bb_kernel_3mm_B8_out_c0_exe6312;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe7313;
    wire [63:0] bb_kernel_3mm_B8_out_c0_exe8314;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe9315;
    wire [0:0] bb_kernel_3mm_B8_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B8_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B8_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B8_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B8_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B8_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B8_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B8_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B9_out_c0_exe103169;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe1131710;
    wire [63:0] bb_kernel_3mm_B9_out_c0_exe1326;
    wire [63:0] bb_kernel_3mm_B9_out_c0_exe23082;
    wire [31:0] bb_kernel_3mm_B9_out_c0_exe2327;
    wire [63:0] bb_kernel_3mm_B9_out_c0_exe33093;
    wire [31:0] bb_kernel_3mm_B9_out_c0_exe63125;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe73136;
    wire [0:0] bb_kernel_3mm_B9_out_c0_exe93158;
    wire [31:0] bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B9_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B9_out_valid_out_0;
    wire [1:0] c_i2_0146_q;
    wire [63:0] c_i32_addrspace_68_undef48_q;
    wire [31:0] c_i32_undef102_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] kernel_3mm_B1_start_x_i_capture;
    wire kernel_3mm_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_clear;
    wire kernel_3mm_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_enable;
    wire kernel_3mm_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_shift;
    wire kernel_3mm_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_stall_pred;
    wire kernel_3mm_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_stall_succ;
    wire kernel_3mm_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_valid_loop;
    wire kernel_3mm_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_valid_pred;
    wire kernel_3mm_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B1_start_x_i_valid_succ;
    wire kernel_3mm_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_capture;
    wire kernel_3mm_B10_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_clear;
    wire kernel_3mm_B10_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_enable;
    wire kernel_3mm_B10_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_shift;
    wire kernel_3mm_B10_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_stall_pred;
    wire kernel_3mm_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_stall_succ;
    wire kernel_3mm_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_valid_loop;
    wire kernel_3mm_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_valid_pred;
    wire kernel_3mm_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B10_x_i_valid_succ;
    wire kernel_3mm_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_capture;
    wire kernel_3mm_B14_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_clear;
    wire kernel_3mm_B14_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_enable;
    wire kernel_3mm_B14_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_shift;
    wire kernel_3mm_B14_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_stall_pred;
    wire kernel_3mm_B14_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_stall_succ;
    wire kernel_3mm_B14_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_valid_loop;
    wire kernel_3mm_B14_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_valid_pred;
    wire kernel_3mm_B14_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B14_x_i_valid_succ;
    wire kernel_3mm_B14_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_capture;
    wire kernel_3mm_B15_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_clear;
    wire kernel_3mm_B15_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_enable;
    wire kernel_3mm_B15_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_shift;
    wire kernel_3mm_B15_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_stall_pred;
    wire kernel_3mm_B15_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_stall_succ;
    wire kernel_3mm_B15_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_valid_loop;
    wire kernel_3mm_B15_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_valid_pred;
    wire kernel_3mm_B15_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B15_x_i_valid_succ;
    wire kernel_3mm_B15_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_capture;
    wire kernel_3mm_B16_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_clear;
    wire kernel_3mm_B16_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_enable;
    wire kernel_3mm_B16_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_shift;
    wire kernel_3mm_B16_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_stall_pred;
    wire kernel_3mm_B16_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_stall_succ;
    wire kernel_3mm_B16_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_valid_loop;
    wire kernel_3mm_B16_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_valid_pred;
    wire kernel_3mm_B16_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B16_x_i_valid_succ;
    wire kernel_3mm_B16_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_capture;
    wire kernel_3mm_B2_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_clear;
    wire kernel_3mm_B2_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_enable;
    wire kernel_3mm_B2_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_shift;
    wire kernel_3mm_B2_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_stall_pred;
    wire kernel_3mm_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_stall_succ;
    wire kernel_3mm_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_valid_loop;
    wire kernel_3mm_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_valid_pred;
    wire kernel_3mm_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B2_x_i_valid_succ;
    wire kernel_3mm_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_capture;
    wire kernel_3mm_B20_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_clear;
    wire kernel_3mm_B20_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_enable;
    wire kernel_3mm_B20_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_shift;
    wire kernel_3mm_B20_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_stall_pred;
    wire kernel_3mm_B20_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_stall_succ;
    wire kernel_3mm_B20_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_valid_loop;
    wire kernel_3mm_B20_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_valid_pred;
    wire kernel_3mm_B20_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B20_x_i_valid_succ;
    wire kernel_3mm_B20_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_capture;
    wire kernel_3mm_B21_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_clear;
    wire kernel_3mm_B21_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_enable;
    wire kernel_3mm_B21_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_shift;
    wire kernel_3mm_B21_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_stall_pred;
    wire kernel_3mm_B21_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_stall_succ;
    wire kernel_3mm_B21_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_valid_loop;
    wire kernel_3mm_B21_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_valid_pred;
    wire kernel_3mm_B21_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B21_x_i_valid_succ;
    wire kernel_3mm_B21_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_capture;
    wire kernel_3mm_B3_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_clear;
    wire kernel_3mm_B3_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_enable;
    wire kernel_3mm_B3_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_shift;
    wire kernel_3mm_B3_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_stall_pred;
    wire kernel_3mm_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_stall_succ;
    wire kernel_3mm_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_valid_loop;
    wire kernel_3mm_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_valid_pred;
    wire kernel_3mm_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B3_x_i_valid_succ;
    wire kernel_3mm_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_capture;
    wire kernel_3mm_B6_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_clear;
    wire kernel_3mm_B6_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_enable;
    wire kernel_3mm_B6_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_shift;
    wire kernel_3mm_B6_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_stall_pred;
    wire kernel_3mm_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_stall_succ;
    wire kernel_3mm_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_valid_loop;
    wire kernel_3mm_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_valid_pred;
    wire kernel_3mm_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B6_x_i_valid_succ;
    wire kernel_3mm_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_capture;
    wire kernel_3mm_B7_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_clear;
    wire kernel_3mm_B7_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_enable;
    wire kernel_3mm_B7_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_shift;
    wire kernel_3mm_B7_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_stall_pred;
    wire kernel_3mm_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_stall_succ;
    wire kernel_3mm_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_valid_loop;
    wire kernel_3mm_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_valid_pred;
    wire kernel_3mm_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B7_x_i_valid_succ;
    wire kernel_3mm_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_capture;
    wire kernel_3mm_B8_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_clear;
    wire kernel_3mm_B8_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_enable;
    wire kernel_3mm_B8_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_shift;
    wire kernel_3mm_B8_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_stall_pred;
    wire kernel_3mm_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_stall_succ;
    wire kernel_3mm_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_valid_loop;
    wire kernel_3mm_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_valid_pred;
    wire kernel_3mm_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B8_x_i_valid_succ;
    wire kernel_3mm_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_kernel_3mm0_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm0_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm1_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm1_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm10_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm10_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm2_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm2_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm3_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm3_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm4_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm4_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm5_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm5_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm6_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm6_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm7_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm7_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm8_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm8_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm9_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm9_out_o_valid;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B23_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B23_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_8_tpl;


    // c_i2_0146(CONSTANT,114)
    assign c_i2_0146_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo(BLACKBOX,160)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going144_1_valid_fifo thei_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo(BLACKBOX,158)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going140_2_valid_fifo thei_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo(BLACKBOX,156)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going126_6_valid_fifo thei_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo(BLACKBOX,154)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going119_2_valid_fifo thei_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo(BLACKBOX,152)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going114_2_valid_fifo thei_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo(BLACKBOX,150)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going100_6_valid_fifo thei_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo(BLACKBOX,170)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going84_6_valid_fifo thei_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo(BLACKBOX,168)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going77_2_valid_fifo thei_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B14_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo(BLACKBOX,166)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going72_2_valid_fifo thei_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B15_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo(BLACKBOX,164)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going58_6_valid_fifo thei_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo(BLACKBOX,162)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going51_2_valid_fifo thei_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B20_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo(BLACKBOX,172)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0146_q),
        .in_stall_in(bb_kernel_3mm_B21_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B23_sr_0_aunroll_x(BLACKBOX,539)
    kernel_3mm_bb_B23_sr_0 thebb_kernel_3mm_B23_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B23_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B22_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_3mm_B23_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B23_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B22(BLACKBOX,17)
    kernel_3mm_bb_B22 thebb_kernel_3mm_B22 (
        .in_c0_exe346521_0(bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_3mm_B23_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_3mm_B22_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B22_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B22_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B22_sr_0_aunroll_x(BLACKBOX,538)
    kernel_3mm_bb_B22_sr_0 thebb_kernel_3mm_B22_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B22_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B21_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B21_out_c0_exe3465),
        .out_o_stall(bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr(BLACKBOX,171)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B21_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B21(BLACKBOX,16)
    kernel_3mm_bb_B21 thebb_kernel_3mm_B21 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_490_pop33234_0(c_i32_undef102_q),
        .in_i_490_pop33234_1(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_6_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_6_0),
        .in_memdep_10_kernel_3mm_avm_readdata(in_memdep_10_kernel_3mm_avm_readdata),
        .in_memdep_10_kernel_3mm_avm_readdatavalid(in_memdep_10_kernel_3mm_avm_readdatavalid),
        .in_memdep_10_kernel_3mm_avm_waitrequest(in_memdep_10_kernel_3mm_avm_waitrequest),
        .in_memdep_10_kernel_3mm_avm_writeack(in_memdep_10_kernel_3mm_avm_writeack),
        .in_notcmp49233_0(GND_q),
        .in_notcmp49233_1(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B22_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3465(bb_kernel_3mm_B21_out_c0_exe3465),
        .out_exiting_stall_out(bb_kernel_3mm_B21_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B21_out_exiting_valid_out),
        .out_lsu_memdep_10_o_active(bb_kernel_3mm_B21_out_lsu_memdep_10_o_active),
        .out_memdep_10_kernel_3mm_avm_address(bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_address),
        .out_memdep_10_kernel_3mm_avm_burstcount(bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_burstcount),
        .out_memdep_10_kernel_3mm_avm_byteenable(bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_byteenable),
        .out_memdep_10_kernel_3mm_avm_enable(bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_enable),
        .out_memdep_10_kernel_3mm_avm_read(bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_read),
        .out_memdep_10_kernel_3mm_avm_write(bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_write),
        .out_memdep_10_kernel_3mm_avm_writedata(bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_writedata),
        .out_pipeline_valid_out(bb_kernel_3mm_B21_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B21_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B21_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B21_out_stall_out_1),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_address(bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_read(bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_write(bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B21_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B21_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B21_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B21_sr_1_aunroll_x(BLACKBOX,537)
    kernel_3mm_bb_B21_sr_1 thebb_kernel_3mm_B21_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B21_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm7_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B20_out_c0_exe2450),
        .in_i_data_2_tpl(bb_kernel_3mm_B20_out_c0_exe3451),
        .out_o_stall(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm7(BLACKBOX,320)
    kernel_3mm_loop_limiter_7 theloop_limiter_kernel_3mm7 (
        .in_i_stall(bb_kernel_3mm_B21_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B21_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B20_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B21_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm7_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr(BLACKBOX,161)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going51_2_sr thei_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B20_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B20(BLACKBOX,15)
    kernel_3mm_bb_B20 thebb_kernel_3mm_B20 (
        .in_forked150_0(GND_q),
        .in_forked150_1(bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm7_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going51_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2450(bb_kernel_3mm_B20_out_c0_exe2450),
        .out_c0_exe3451(bb_kernel_3mm_B20_out_c0_exe3451),
        .out_exiting_stall_out(bb_kernel_3mm_B20_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B20_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B20_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B20_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B20_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B20_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B20_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B20_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B20_sr_1_aunroll_x(BLACKBOX,536)
    kernel_3mm_bb_B20_sr_1 thebb_kernel_3mm_B20_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B20_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm3(BLACKBOX,316)
    kernel_3mm_loop_limiter_3 theloop_limiter_kernel_3mm3 (
        .in_i_stall(bb_kernel_3mm_B20_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B20_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B19_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B20_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm3_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B19(BLACKBOX,12)
    kernel_3mm_bb_B19 thebb_kernel_3mm_B19 (
        .in_stall_in_0(loop_limiter_kernel_3mm3_out_o_stall),
        .in_valid_in_0(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kernel_3mm_B19_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B19_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B19_sr_0_aunroll_x(BLACKBOX,535)
    kernel_3mm_bb_B19_sr_0 thebb_kernel_3mm_B19_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B19_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B18_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B18(BLACKBOX,11)
    kernel_3mm_bb_B18 thebb_kernel_3mm_B18 (
        .in_c0_exe443717_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_3mm_B19_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_3mm_B18_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B18_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B18_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B18_sr_0_aunroll_x(BLACKBOX,534)
    kernel_3mm_bb_B18_sr_0 thebb_kernel_3mm_B18_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B18_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B17_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B17_out_c0_exe443718),
        .out_o_stall(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B17(BLACKBOX,10)
    kernel_3mm_bb_B17 thebb_kernel_3mm_B17 (
        .in_c0_exe243516_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe443718_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe543819_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe643920_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_memdep_9_kernel_3mm_avm_readdata(in_memdep_9_kernel_3mm_avm_readdata),
        .in_memdep_9_kernel_3mm_avm_readdatavalid(in_memdep_9_kernel_3mm_avm_readdatavalid),
        .in_memdep_9_kernel_3mm_avm_waitrequest(in_memdep_9_kernel_3mm_avm_waitrequest),
        .in_memdep_9_kernel_3mm_avm_writeack(in_memdep_9_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B18_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe443718(bb_kernel_3mm_B17_out_c0_exe443718),
        .out_memdep_9_kernel_3mm_avm_address(bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_address),
        .out_memdep_9_kernel_3mm_avm_burstcount(bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_burstcount),
        .out_memdep_9_kernel_3mm_avm_byteenable(bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_byteenable),
        .out_memdep_9_kernel_3mm_avm_enable(bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_enable),
        .out_memdep_9_kernel_3mm_avm_read(bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_read),
        .out_memdep_9_kernel_3mm_avm_write(bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_write),
        .out_memdep_9_kernel_3mm_avm_writedata(bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B17_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B17_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B17_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B17_sr_0_aunroll_x(BLACKBOX,533)
    kernel_3mm_bb_B17_sr_0 thebb_kernel_3mm_B17_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B17_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B16_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B16_out_c0_exe2435),
        .in_i_data_1_tpl(bb_kernel_3mm_B16_out_c0_exe4437),
        .in_i_data_2_tpl(bb_kernel_3mm_B16_out_c0_exe5438),
        .in_i_data_3_tpl(bb_kernel_3mm_B16_out_c0_exe6439),
        .out_o_stall(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr(BLACKBOX,163)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going58_6_sr thei_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B16(BLACKBOX,9)
    kernel_3mm_bb_B16 thebb_kernel_3mm_B16 (
        .in_arrayidx14914225_0(c_i32_addrspace_68_undef48_q),
        .in_arrayidx14914225_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked55_0(GND_q),
        .in_forked55_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_394_pop31163_pop47222_0(c_i32_undef102_q),
        .in_i_394_pop31163_pop47222_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i_394_pop31221_0(c_i32_undef102_q),
        .in_i_394_pop31221_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_idxprom146223_0(c_i32_addrspace_68_undef48_q),
        .in_idxprom146223_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_idxprom148224_0(c_i32_addrspace_68_undef48_q),
        .in_idxprom148224_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp70226_0(GND_q),
        .in_notcmp70226_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp75161_pop46227_0(GND_q),
        .in_notcmp75161_pop46227_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp75218_0(GND_q),
        .in_notcmp75218_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B17_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm26_0(c_i32_undef102_q),
        .in_unnamed_kernel_3mm26_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going58_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2435(bb_kernel_3mm_B16_out_c0_exe2435),
        .out_c0_exe4437(bb_kernel_3mm_B16_out_c0_exe4437),
        .out_c0_exe5438(bb_kernel_3mm_B16_out_c0_exe5438),
        .out_c0_exe6439(bb_kernel_3mm_B16_out_c0_exe6439),
        .out_exiting_stall_out(bb_kernel_3mm_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B16_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B16_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B16_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B16_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B16_out_stall_out_1),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_address(bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_read(bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_write(bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_address(bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount(bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_enable(bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_read(bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_write(bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata(bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B16_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B16_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B16_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B16_sr_1_aunroll_x(BLACKBOX,532)
    kernel_3mm_bb_B16_sr_1 thebb_kernel_3mm_B16_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm10_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B15_out_c0_exe9402),
        .in_i_data_2_tpl(bb_kernel_3mm_B15_out_c0_exe10403),
        .in_i_data_3_tpl(bb_kernel_3mm_B15_out_c0_exe1394),
        .in_i_data_4_tpl(bb_kernel_3mm_B15_out_c0_exe2395),
        .in_i_data_5_tpl(bb_kernel_3mm_B15_out_c0_exe3396),
        .in_i_data_6_tpl(bb_kernel_3mm_B15_out_c0_exe4397),
        .in_i_data_7_tpl(bb_kernel_3mm_B15_out_c0_exe5398),
        .in_i_data_8_tpl(bb_kernel_3mm_B15_out_c0_exe7400),
        .in_i_data_9_tpl(bb_kernel_3mm_B15_out_c0_exe8401),
        .out_o_stall(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm10(BLACKBOX,314)
    kernel_3mm_loop_limiter_10 theloop_limiter_kernel_3mm10 (
        .in_i_stall(bb_kernel_3mm_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B16_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B15_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm10_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm10_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr(BLACKBOX,165)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going72_2_sr thei_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B15_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15(BLACKBOX,8)
    kernel_3mm_bb_B15 thebb_kernel_3mm_B15 (
        .in_flush(in_start),
        .in_forked160_0(GND_q),
        .in_forked160_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_394_pop31219_0(c_i32_undef102_q),
        .in_i_394_pop31219_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp75216_0(GND_q),
        .in_notcmp75216_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm10_out_o_stall),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm25_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm25_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm25_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm25_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going72_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10403(bb_kernel_3mm_B15_out_c0_exe10403),
        .out_c0_exe1394(bb_kernel_3mm_B15_out_c0_exe1394),
        .out_c0_exe2395(bb_kernel_3mm_B15_out_c0_exe2395),
        .out_c0_exe3396(bb_kernel_3mm_B15_out_c0_exe3396),
        .out_c0_exe4397(bb_kernel_3mm_B15_out_c0_exe4397),
        .out_c0_exe5398(bb_kernel_3mm_B15_out_c0_exe5398),
        .out_c0_exe7400(bb_kernel_3mm_B15_out_c0_exe7400),
        .out_c0_exe8401(bb_kernel_3mm_B15_out_c0_exe8401),
        .out_c0_exe9402(bb_kernel_3mm_B15_out_c0_exe9402),
        .out_exiting_stall_out(bb_kernel_3mm_B15_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B15_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B15_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B15_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B15_out_stall_out_1),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_address(bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount(bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable(bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_enable(bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_read(bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_write(bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata(bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B15_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B15_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B15_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15_sr_1_aunroll_x(BLACKBOX,531)
    kernel_3mm_bb_B15_sr_1 thebb_kernel_3mm_B15_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B15_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm6_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B14_out_c0_exe2374),
        .in_i_data_2_tpl(bb_kernel_3mm_B14_out_c0_exe3375),
        .out_o_stall(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm6(BLACKBOX,319)
    kernel_3mm_loop_limiter_6 theloop_limiter_kernel_3mm6 (
        .in_i_stall(bb_kernel_3mm_B15_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B15_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B14_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B15_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm6_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr(BLACKBOX,167)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going77_2_sr thei_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B14_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14(BLACKBOX,7)
    kernel_3mm_bb_B14 thebb_kernel_3mm_B14 (
        .in_forked149_0(GND_q),
        .in_forked149_1(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm6_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going77_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2374(bb_kernel_3mm_B14_out_c0_exe2374),
        .out_c0_exe3375(bb_kernel_3mm_B14_out_c0_exe3375),
        .out_exiting_stall_out(bb_kernel_3mm_B14_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B14_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B14_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B14_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B14_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B14_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B14_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B14_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14_sr_1_aunroll_x(BLACKBOX,530)
    kernel_3mm_bb_B14_sr_1 thebb_kernel_3mm_B14_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B14_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm2(BLACKBOX,315)
    kernel_3mm_loop_limiter_2 theloop_limiter_kernel_3mm2 (
        .in_i_stall(bb_kernel_3mm_B14_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B14_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B13_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B14_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm2_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B13(BLACKBOX,6)
    kernel_3mm_bb_B13 thebb_kernel_3mm_B13 (
        .in_stall_in_0(loop_limiter_kernel_3mm2_out_o_stall),
        .in_valid_in_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kernel_3mm_B13_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B13_sr_0_aunroll_x(BLACKBOX,529)
    kernel_3mm_bb_B13_sr_0 thebb_kernel_3mm_B13_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B13_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B12_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12(BLACKBOX,5)
    kernel_3mm_bb_B12 thebb_kernel_3mm_B12 (
        .in_c0_exe436112_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_3mm_B12_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B12_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12_sr_0_aunroll_x(BLACKBOX,528)
    kernel_3mm_bb_B12_sr_0 thebb_kernel_3mm_B12_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B12_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B11_out_c0_exe436113),
        .out_o_stall(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B11(BLACKBOX,4)
    kernel_3mm_bb_B11 thebb_kernel_3mm_B11 (
        .in_c0_exe235911_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe436113_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe536214_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe636315_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_memdep_8_kernel_3mm_avm_readdata(in_memdep_8_kernel_3mm_avm_readdata),
        .in_memdep_8_kernel_3mm_avm_readdatavalid(in_memdep_8_kernel_3mm_avm_readdatavalid),
        .in_memdep_8_kernel_3mm_avm_waitrequest(in_memdep_8_kernel_3mm_avm_waitrequest),
        .in_memdep_8_kernel_3mm_avm_writeack(in_memdep_8_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe436113(bb_kernel_3mm_B11_out_c0_exe436113),
        .out_memdep_8_kernel_3mm_avm_address(bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_address),
        .out_memdep_8_kernel_3mm_avm_burstcount(bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_burstcount),
        .out_memdep_8_kernel_3mm_avm_byteenable(bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_byteenable),
        .out_memdep_8_kernel_3mm_avm_enable(bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_enable),
        .out_memdep_8_kernel_3mm_avm_read(bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_read),
        .out_memdep_8_kernel_3mm_avm_write(bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_write),
        .out_memdep_8_kernel_3mm_avm_writedata(bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B11_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B11_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B11_sr_0_aunroll_x(BLACKBOX,527)
    kernel_3mm_bb_B11_sr_0 thebb_kernel_3mm_B11_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B11_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B10_out_c0_exe2359),
        .in_i_data_1_tpl(bb_kernel_3mm_B10_out_c0_exe4361),
        .in_i_data_2_tpl(bb_kernel_3mm_B10_out_c0_exe5362),
        .in_i_data_3_tpl(bb_kernel_3mm_B10_out_c0_exe6363),
        .out_o_stall(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr(BLACKBOX,169)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going84_6_sr thei_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10(BLACKBOX,3)
    kernel_3mm_bb_B10 thebb_kernel_3mm_B10 (
        .in_arrayidx11211210_0(c_i32_addrspace_68_undef48_q),
        .in_arrayidx11211210_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_flush(in_start),
        .in_forked81_0(GND_q),
        .in_forked81_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_1102_pop29155_pop59203_0(c_i32_undef102_q),
        .in_i_1102_pop29155_pop59203_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_i_1102_pop29184_0(c_i32_undef102_q),
        .in_i_1102_pop29184_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_idxprom74167_pop61198_0(c_i32_addrspace_68_undef48_q),
        .in_idxprom74167_pop61198_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_idxprom76169_pop62200_0(c_i32_addrspace_68_undef48_q),
        .in_idxprom76169_pop62200_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp112172_pop64208_0(GND_q),
        .in_notcmp112172_pop64208_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp117158_pop60205_0(GND_q),
        .in_notcmp117158_pop60205_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp117189_0(GND_q),
        .in_notcmp117189_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm22_0(c_i32_undef102_q),
        .in_unnamed_kernel_3mm22_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm23_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm23_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm23_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm23_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm24_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm24_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm24_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm24_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going84_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2359(bb_kernel_3mm_B10_out_c0_exe2359),
        .out_c0_exe4361(bb_kernel_3mm_B10_out_c0_exe4361),
        .out_c0_exe5362(bb_kernel_3mm_B10_out_c0_exe5362),
        .out_c0_exe6363(bb_kernel_3mm_B10_out_c0_exe6363),
        .out_exiting_stall_out(bb_kernel_3mm_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B10_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B10_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B10_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B10_out_stall_out_1),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_address(bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_enable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_read(bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_write(bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_address(bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount(bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_enable(bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_read(bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_write(bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata(bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B10_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B10_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10_sr_1_aunroll_x(BLACKBOX,526)
    kernel_3mm_bb_B10_sr_1 thebb_kernel_3mm_B10_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm9_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B9_out_c0_exe103169),
        .in_i_data_2_tpl(bb_kernel_3mm_B9_out_c0_exe1131710),
        .in_i_data_3_tpl(bb_kernel_3mm_B9_out_c0_exe23082),
        .in_i_data_4_tpl(bb_kernel_3mm_B9_out_c0_exe33093),
        .in_i_data_5_tpl(bb_kernel_3mm_B9_out_c0_exe63125),
        .in_i_data_6_tpl(bb_kernel_3mm_B9_out_c0_exe73136),
        .in_i_data_7_tpl(bb_kernel_3mm_B9_out_c0_exe93158),
        .in_i_data_8_tpl(bb_kernel_3mm_B9_out_c0_exe1326),
        .in_i_data_9_tpl(bb_kernel_3mm_B9_out_c0_exe2327),
        .out_o_stall(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm9(BLACKBOX,322)
    kernel_3mm_loop_limiter_9 theloop_limiter_kernel_3mm9 (
        .in_i_stall(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B10_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B9_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm9_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm9_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9(BLACKBOX,25)
    kernel_3mm_bb_B9 thebb_kernel_3mm_B9 (
        .in_c0_exe103169_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe1131710_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe23082_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe33093_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe43104_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe63125_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe73136_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe83147_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe93158_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_memdep_7_kernel_3mm_avm_readdata(in_memdep_7_kernel_3mm_avm_readdata),
        .in_memdep_7_kernel_3mm_avm_readdatavalid(in_memdep_7_kernel_3mm_avm_readdatavalid),
        .in_memdep_7_kernel_3mm_avm_waitrequest(in_memdep_7_kernel_3mm_avm_waitrequest),
        .in_memdep_7_kernel_3mm_avm_writeack(in_memdep_7_kernel_3mm_avm_writeack),
        .in_stall_in_0(loop_limiter_kernel_3mm9_out_o_stall),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe103169(bb_kernel_3mm_B9_out_c0_exe103169),
        .out_c0_exe1131710(bb_kernel_3mm_B9_out_c0_exe1131710),
        .out_c0_exe1326(bb_kernel_3mm_B9_out_c0_exe1326),
        .out_c0_exe23082(bb_kernel_3mm_B9_out_c0_exe23082),
        .out_c0_exe2327(bb_kernel_3mm_B9_out_c0_exe2327),
        .out_c0_exe33093(bb_kernel_3mm_B9_out_c0_exe33093),
        .out_c0_exe63125(bb_kernel_3mm_B9_out_c0_exe63125),
        .out_c0_exe73136(bb_kernel_3mm_B9_out_c0_exe73136),
        .out_c0_exe93158(bb_kernel_3mm_B9_out_c0_exe93158),
        .out_memdep_7_kernel_3mm_avm_address(bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_address),
        .out_memdep_7_kernel_3mm_avm_burstcount(bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_burstcount),
        .out_memdep_7_kernel_3mm_avm_byteenable(bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_byteenable),
        .out_memdep_7_kernel_3mm_avm_enable(bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_enable),
        .out_memdep_7_kernel_3mm_avm_read(bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_read),
        .out_memdep_7_kernel_3mm_avm_write(bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_write),
        .out_memdep_7_kernel_3mm_avm_writedata(bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_writedata),
        .out_stall_out_0(bb_kernel_3mm_B9_out_stall_out_0),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_address(bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_read(bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_write(bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata),
        .out_valid_out_0(bb_kernel_3mm_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9_sr_0_aunroll_x(BLACKBOX,547)
    kernel_3mm_bb_B9_sr_0 thebb_kernel_3mm_B9_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B9_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B8_out_c0_exe2308),
        .in_i_data_1_tpl(bb_kernel_3mm_B8_out_c0_exe3309),
        .in_i_data_2_tpl(bb_kernel_3mm_B8_out_c0_exe4310),
        .in_i_data_3_tpl(bb_kernel_3mm_B8_out_c0_exe6312),
        .in_i_data_4_tpl(bb_kernel_3mm_B8_out_c0_exe7313),
        .in_i_data_5_tpl(bb_kernel_3mm_B8_out_c0_exe8314),
        .in_i_data_6_tpl(bb_kernel_3mm_B8_out_c0_exe9315),
        .in_i_data_7_tpl(bb_kernel_3mm_B8_out_c0_exe10316),
        .in_i_data_8_tpl(bb_kernel_3mm_B8_out_c0_exe11317),
        .out_o_stall(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr(BLACKBOX,149)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going100_6_sr thei_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_68_undef48(CONSTANT,126)
    assign c_i32_addrspace_68_undef48_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_kernel_3mm_B8(BLACKBOX,24)
    kernel_3mm_bb_B8 thebb_kernel_3mm_B8 (
        .in_arrayidx778195_0(c_i32_addrspace_68_undef48_q),
        .in_arrayidx778195_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked97_0(GND_q),
        .in_forked97_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_1102_pop29154_pop42192_0(c_i32_undef102_q),
        .in_i_1102_pop29154_pop42192_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i_1102_pop29186_0(c_i32_undef102_q),
        .in_i_1102_pop29186_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_idxprom74193_0(c_i32_addrspace_68_undef48_q),
        .in_idxprom74193_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_idxprom76194_0(c_i32_addrspace_68_undef48_q),
        .in_idxprom76194_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp112196_0(GND_q),
        .in_notcmp112196_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp117157_pop43197_0(GND_q),
        .in_notcmp117157_pop43197_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp117191_0(GND_q),
        .in_notcmp117191_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm18_0(c_i32_undef102_q),
        .in_unnamed_kernel_3mm18_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going100_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10316(bb_kernel_3mm_B8_out_c0_exe10316),
        .out_c0_exe11317(bb_kernel_3mm_B8_out_c0_exe11317),
        .out_c0_exe2308(bb_kernel_3mm_B8_out_c0_exe2308),
        .out_c0_exe3309(bb_kernel_3mm_B8_out_c0_exe3309),
        .out_c0_exe4310(bb_kernel_3mm_B8_out_c0_exe4310),
        .out_c0_exe6312(bb_kernel_3mm_B8_out_c0_exe6312),
        .out_c0_exe7313(bb_kernel_3mm_B8_out_c0_exe7313),
        .out_c0_exe8314(bb_kernel_3mm_B8_out_c0_exe8314),
        .out_c0_exe9315(bb_kernel_3mm_B8_out_c0_exe9315),
        .out_exiting_stall_out(bb_kernel_3mm_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B8_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B8_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B8_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B8_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B8_out_stall_out_1),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_address(bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount(bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable(bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_enable(bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_read(bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_write(bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata(bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_address(bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_read(bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_write(bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B8_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B8_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B8_sr_1_aunroll_x(BLACKBOX,546)
    kernel_3mm_bb_B8_sr_1 thebb_kernel_3mm_B8_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm8_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B7_out_c0_exe9286),
        .in_i_data_2_tpl(bb_kernel_3mm_B7_out_c0_exe10287),
        .in_i_data_3_tpl(bb_kernel_3mm_B7_out_c0_exe1278),
        .in_i_data_4_tpl(bb_kernel_3mm_B7_out_c0_exe2279),
        .in_i_data_5_tpl(bb_kernel_3mm_B7_out_c0_exe3280),
        .in_i_data_6_tpl(bb_kernel_3mm_B7_out_c0_exe4281),
        .in_i_data_7_tpl(bb_kernel_3mm_B7_out_c0_exe5282),
        .in_i_data_8_tpl(bb_kernel_3mm_B7_out_c0_exe7284),
        .in_i_data_9_tpl(bb_kernel_3mm_B7_out_c0_exe8285),
        .out_o_stall(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm8(BLACKBOX,321)
    kernel_3mm_loop_limiter_8 theloop_limiter_kernel_3mm8 (
        .in_i_stall(bb_kernel_3mm_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B8_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B7_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm8_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr(BLACKBOX,151)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going114_2_sr thei_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B7(BLACKBOX,23)
    kernel_3mm_bb_B7 thebb_kernel_3mm_B7 (
        .in_flush(in_start),
        .in_forked153_0(GND_q),
        .in_forked153_1(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_1102_pop29182_0(c_i32_undef102_q),
        .in_i_1102_pop29182_1(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp117187_0(GND_q),
        .in_notcmp117187_1(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm8_out_o_stall),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going114_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10287(bb_kernel_3mm_B7_out_c0_exe10287),
        .out_c0_exe1278(bb_kernel_3mm_B7_out_c0_exe1278),
        .out_c0_exe2279(bb_kernel_3mm_B7_out_c0_exe2279),
        .out_c0_exe3280(bb_kernel_3mm_B7_out_c0_exe3280),
        .out_c0_exe4281(bb_kernel_3mm_B7_out_c0_exe4281),
        .out_c0_exe5282(bb_kernel_3mm_B7_out_c0_exe5282),
        .out_c0_exe7284(bb_kernel_3mm_B7_out_c0_exe7284),
        .out_c0_exe8285(bb_kernel_3mm_B7_out_c0_exe8285),
        .out_c0_exe9286(bb_kernel_3mm_B7_out_c0_exe9286),
        .out_exiting_stall_out(bb_kernel_3mm_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B7_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B7_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B7_out_stall_out_1),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_address(bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_read(bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_write(bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B7_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B7_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B7_sr_1_aunroll_x(BLACKBOX,545)
    kernel_3mm_bb_B7_sr_1 thebb_kernel_3mm_B7_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B6_out_c0_exe1257),
        .in_i_data_2_tpl(bb_kernel_3mm_B6_out_c0_exe3259),
        .out_o_stall(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm5(BLACKBOX,318)
    kernel_3mm_loop_limiter_5 theloop_limiter_kernel_3mm5 (
        .in_i_stall(bb_kernel_3mm_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B7_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B6_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm5_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr(BLACKBOX,153)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going119_2_sr thei_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6(BLACKBOX,22)
    kernel_3mm_bb_B6 thebb_kernel_3mm_B6 (
        .in_forked148_0(GND_q),
        .in_forked148_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going119_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1257(bb_kernel_3mm_B6_out_c0_exe1257),
        .out_c0_exe3259(bb_kernel_3mm_B6_out_c0_exe3259),
        .out_exiting_stall_out(bb_kernel_3mm_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B6_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B6_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B6_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B6_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6_sr_1_aunroll_x(BLACKBOX,544)
    kernel_3mm_bb_B6_sr_1 thebb_kernel_3mm_B6_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm1(BLACKBOX,313)
    kernel_3mm_loop_limiter_1 theloop_limiter_kernel_3mm1 (
        .in_i_stall(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B6_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B5_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm1_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5(BLACKBOX,21)
    kernel_3mm_bb_B5 thebb_kernel_3mm_B5 (
        .in_stall_in_0(loop_limiter_kernel_3mm1_out_o_stall),
        .in_valid_in_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kernel_3mm_B5_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5_sr_0_aunroll_x(BLACKBOX,543)
    kernel_3mm_bb_B5_sr_0 thebb_kernel_3mm_B5_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B5_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4(BLACKBOX,20)
    kernel_3mm_bb_B4 thebb_kernel_3mm_B4 (
        .in_c0_exe181_0(bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_3mm_B4_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B4_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4_sr_0_aunroll_x(BLACKBOX,542)
    kernel_3mm_bb_B4_sr_0 thebb_kernel_3mm_B4_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B4_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B3_out_c0_exe18),
        .out_o_stall(bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr(BLACKBOX,155)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going126_6_sr thei_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef102(CONSTANT,129)
    assign c_i32_undef102_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_kernel_3mm_B3(BLACKBOX,19)
    kernel_3mm_bb_B3 thebb_kernel_3mm_B3 (
        .in_flush(in_start),
        .in_forked123_0(GND_q),
        .in_forked123_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_0104_pop27180_0(c_i32_undef102_q),
        .in_i_0104_pop27180_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_0_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_5_0),
        .in_intel_reserved_ffwd_6_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_6_0),
        .in_memdep_1_kernel_3mm_avm_readdata(in_memdep_1_kernel_3mm_avm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(in_memdep_1_kernel_3mm_avm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(in_memdep_1_kernel_3mm_avm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(in_memdep_1_kernel_3mm_avm_writeack),
        .in_memdep_2_kernel_3mm_avm_readdata(in_memdep_2_kernel_3mm_avm_readdata),
        .in_memdep_2_kernel_3mm_avm_readdatavalid(in_memdep_2_kernel_3mm_avm_readdatavalid),
        .in_memdep_2_kernel_3mm_avm_waitrequest(in_memdep_2_kernel_3mm_avm_waitrequest),
        .in_memdep_2_kernel_3mm_avm_writeack(in_memdep_2_kernel_3mm_avm_writeack),
        .in_memdep_3_kernel_3mm_avm_readdata(in_memdep_3_kernel_3mm_avm_readdata),
        .in_memdep_3_kernel_3mm_avm_readdatavalid(in_memdep_3_kernel_3mm_avm_readdatavalid),
        .in_memdep_3_kernel_3mm_avm_waitrequest(in_memdep_3_kernel_3mm_avm_waitrequest),
        .in_memdep_3_kernel_3mm_avm_writeack(in_memdep_3_kernel_3mm_avm_writeack),
        .in_memdep_4_kernel_3mm_avm_readdata(in_memdep_4_kernel_3mm_avm_readdata),
        .in_memdep_4_kernel_3mm_avm_readdatavalid(in_memdep_4_kernel_3mm_avm_readdatavalid),
        .in_memdep_4_kernel_3mm_avm_waitrequest(in_memdep_4_kernel_3mm_avm_waitrequest),
        .in_memdep_4_kernel_3mm_avm_writeack(in_memdep_4_kernel_3mm_avm_writeack),
        .in_memdep_5_kernel_3mm_avm_readdata(in_memdep_5_kernel_3mm_avm_readdata),
        .in_memdep_5_kernel_3mm_avm_readdatavalid(in_memdep_5_kernel_3mm_avm_readdatavalid),
        .in_memdep_5_kernel_3mm_avm_waitrequest(in_memdep_5_kernel_3mm_avm_waitrequest),
        .in_memdep_5_kernel_3mm_avm_writeack(in_memdep_5_kernel_3mm_avm_writeack),
        .in_memdep_6_kernel_3mm_avm_readdata(in_memdep_6_kernel_3mm_avm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(in_memdep_6_kernel_3mm_avm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(in_memdep_6_kernel_3mm_avm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(in_memdep_6_kernel_3mm_avm_writeack),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_notcmp138179_0(GND_q),
        .in_notcmp138179_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going126_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe18(bb_kernel_3mm_B3_out_c0_exe18),
        .out_exiting_stall_out(bb_kernel_3mm_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B3_out_exiting_valid_out),
        .out_memdep_1_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_writedata),
        .out_memdep_2_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_address),
        .out_memdep_2_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_burstcount),
        .out_memdep_2_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_byteenable),
        .out_memdep_2_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_enable),
        .out_memdep_2_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_read),
        .out_memdep_2_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_write),
        .out_memdep_2_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_writedata),
        .out_memdep_3_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_address),
        .out_memdep_3_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_burstcount),
        .out_memdep_3_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_byteenable),
        .out_memdep_3_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_enable),
        .out_memdep_3_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_read),
        .out_memdep_3_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_write),
        .out_memdep_3_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_writedata),
        .out_memdep_4_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_address),
        .out_memdep_4_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_burstcount),
        .out_memdep_4_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_byteenable),
        .out_memdep_4_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_enable),
        .out_memdep_4_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_read),
        .out_memdep_4_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_write),
        .out_memdep_4_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_writedata),
        .out_memdep_5_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_address),
        .out_memdep_5_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_burstcount),
        .out_memdep_5_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_byteenable),
        .out_memdep_5_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_enable),
        .out_memdep_5_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_read),
        .out_memdep_5_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_write),
        .out_memdep_5_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_writedata),
        .out_memdep_6_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_writedata),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_writedata),
        .out_pipeline_valid_out(bb_kernel_3mm_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B3_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B3_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B3_out_stall_out_1),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B3_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B3_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3_sr_1_aunroll_x(BLACKBOX,541)
    kernel_3mm_bb_B3_sr_1 thebb_kernel_3mm_B3_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B2_out_c0_exe2),
        .in_i_data_2_tpl(bb_kernel_3mm_B2_out_c0_exe3),
        .out_o_stall(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm4(BLACKBOX,317)
    kernel_3mm_loop_limiter_4 theloop_limiter_kernel_3mm4 (
        .in_i_stall(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B3_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B2_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm4_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr(BLACKBOX,157)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going140_2_sr thei_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2(BLACKBOX,14)
    kernel_3mm_bb_B2 thebb_kernel_3mm_B2 (
        .in_forked147_0(GND_q),
        .in_forked147_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going140_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_kernel_3mm_B2_out_c0_exe2),
        .out_c0_exe3(bb_kernel_3mm_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_kernel_3mm_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B2_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B2_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B2_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B2_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B2_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2_sr_1_aunroll_x(BLACKBOX,540)
    kernel_3mm_bb_B2_sr_1 thebb_kernel_3mm_B2_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm0(BLACKBOX,312)
    kernel_3mm_loop_limiter_0 theloop_limiter_kernel_3mm0 (
        .in_i_stall(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B2_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm0_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr(BLACKBOX,159)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going144_1_sr thei_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B1_start(BLACKBOX,13)
    kernel_3mm_bb_B1_start thebb_kernel_3mm_B1_start (
        .in_feedback_in_1(bb_kernel_3mm_B23_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_kernel_3mm_B23_out_feedback_valid_out_1),
        .in_iord_bl_call_kernel_3mm_i_fifodata(in_iord_bl_call_kernel_3mm_i_fifodata),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(in_iord_bl_call_kernel_3mm_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going144_kernel_3mm1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_kernel_3mm_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_5_0),
        .out_intel_reserved_ffwd_6_0(bb_kernel_3mm_B1_start_out_intel_reserved_ffwd_6_0),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_pipeline_valid_out(bb_kernel_3mm_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_kernel_3mm_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B23(BLACKBOX,18)
    kernel_3mm_bb_B23 thebb_kernel_3mm_B23 (
        .in_feedback_stall_in_1(bb_kernel_3mm_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(in_iowr_bl_return_kernel_3mm_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B23_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_kernel_3mm_B23_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_kernel_3mm_B23_out_feedback_valid_out_1),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(bb_kernel_3mm_B23_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(bb_kernel_3mm_B23_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_3mm_B23_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B23_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B23_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_3mm_B1_start_x(EXTIFACE,300)
    assign kernel_3mm_B1_start_x_i_capture = GND_q;
    assign kernel_3mm_B1_start_x_i_clear = GND_q;
    assign kernel_3mm_B1_start_x_i_enable = VCC_q;
    assign kernel_3mm_B1_start_x_i_shift = GND_q;
    assign kernel_3mm_B1_start_x_i_stall_pred = GND_q;
    assign kernel_3mm_B1_start_x_i_stall_succ = bb_kernel_3mm_B23_out_stall_in_0;
    assign kernel_3mm_B1_start_x_i_valid_loop = bb_kernel_3mm_B1_start_out_valid_in_0;
    assign kernel_3mm_B1_start_x_i_valid_pred = bb_kernel_3mm_B1_start_out_valid_in_1;
    assign kernel_3mm_B1_start_x_i_valid_succ = bb_kernel_3mm_B23_out_valid_out_0;
    assign kernel_3mm_B1_start_x_i_capture_bitsignaltemp = kernel_3mm_B1_start_x_i_capture[0];
    assign kernel_3mm_B1_start_x_i_clear_bitsignaltemp = kernel_3mm_B1_start_x_i_clear[0];
    assign kernel_3mm_B1_start_x_i_enable_bitsignaltemp = kernel_3mm_B1_start_x_i_enable[0];
    assign kernel_3mm_B1_start_x_i_shift_bitsignaltemp = kernel_3mm_B1_start_x_i_shift[0];
    assign kernel_3mm_B1_start_x_i_stall_pred_bitsignaltemp = kernel_3mm_B1_start_x_i_stall_pred[0];
    assign kernel_3mm_B1_start_x_i_stall_succ_bitsignaltemp = kernel_3mm_B1_start_x_i_stall_succ[0];
    assign kernel_3mm_B1_start_x_i_valid_loop_bitsignaltemp = kernel_3mm_B1_start_x_i_valid_loop[0];
    assign kernel_3mm_B1_start_x_i_valid_pred_bitsignaltemp = kernel_3mm_B1_start_x_i_valid_pred[0];
    assign kernel_3mm_B1_start_x_i_valid_succ_bitsignaltemp = kernel_3mm_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B1.start")
    ) thekernel_3mm_B1_start_x (
        .i_capture(kernel_3mm_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B10_x(EXTIFACE,301)
    assign kernel_3mm_B10_x_i_capture = GND_q;
    assign kernel_3mm_B10_x_i_clear = GND_q;
    assign kernel_3mm_B10_x_i_enable = VCC_q;
    assign kernel_3mm_B10_x_i_shift = GND_q;
    assign kernel_3mm_B10_x_i_stall_pred = loop_limiter_kernel_3mm9_out_o_stall;
    assign kernel_3mm_B10_x_i_stall_succ = bb_kernel_3mm_B10_out_stall_in_0;
    assign kernel_3mm_B10_x_i_valid_loop = bb_kernel_3mm_B10_out_valid_in_0;
    assign kernel_3mm_B10_x_i_valid_pred = bb_kernel_3mm_B10_out_valid_in_1;
    assign kernel_3mm_B10_x_i_valid_succ = bb_kernel_3mm_B10_out_valid_out_0;
    assign kernel_3mm_B10_x_i_capture_bitsignaltemp = kernel_3mm_B10_x_i_capture[0];
    assign kernel_3mm_B10_x_i_clear_bitsignaltemp = kernel_3mm_B10_x_i_clear[0];
    assign kernel_3mm_B10_x_i_enable_bitsignaltemp = kernel_3mm_B10_x_i_enable[0];
    assign kernel_3mm_B10_x_i_shift_bitsignaltemp = kernel_3mm_B10_x_i_shift[0];
    assign kernel_3mm_B10_x_i_stall_pred_bitsignaltemp = kernel_3mm_B10_x_i_stall_pred[0];
    assign kernel_3mm_B10_x_i_stall_succ_bitsignaltemp = kernel_3mm_B10_x_i_stall_succ[0];
    assign kernel_3mm_B10_x_i_valid_loop_bitsignaltemp = kernel_3mm_B10_x_i_valid_loop[0];
    assign kernel_3mm_B10_x_i_valid_pred_bitsignaltemp = kernel_3mm_B10_x_i_valid_pred[0];
    assign kernel_3mm_B10_x_i_valid_succ_bitsignaltemp = kernel_3mm_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B10")
    ) thekernel_3mm_B10_x (
        .i_capture(kernel_3mm_B10_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B10_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B10_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B14_x(EXTIFACE,302)
    assign kernel_3mm_B14_x_i_capture = GND_q;
    assign kernel_3mm_B14_x_i_clear = GND_q;
    assign kernel_3mm_B14_x_i_enable = VCC_q;
    assign kernel_3mm_B14_x_i_shift = GND_q;
    assign kernel_3mm_B14_x_i_stall_pred = loop_limiter_kernel_3mm2_out_o_stall;
    assign kernel_3mm_B14_x_i_stall_succ = bb_kernel_3mm_B18_out_stall_in_0;
    assign kernel_3mm_B14_x_i_valid_loop = bb_kernel_3mm_B14_out_valid_in_0;
    assign kernel_3mm_B14_x_i_valid_pred = bb_kernel_3mm_B14_out_valid_in_1;
    assign kernel_3mm_B14_x_i_valid_succ = bb_kernel_3mm_B18_out_valid_out_0;
    assign kernel_3mm_B14_x_i_capture_bitsignaltemp = kernel_3mm_B14_x_i_capture[0];
    assign kernel_3mm_B14_x_i_clear_bitsignaltemp = kernel_3mm_B14_x_i_clear[0];
    assign kernel_3mm_B14_x_i_enable_bitsignaltemp = kernel_3mm_B14_x_i_enable[0];
    assign kernel_3mm_B14_x_i_shift_bitsignaltemp = kernel_3mm_B14_x_i_shift[0];
    assign kernel_3mm_B14_x_i_stall_pred_bitsignaltemp = kernel_3mm_B14_x_i_stall_pred[0];
    assign kernel_3mm_B14_x_i_stall_succ_bitsignaltemp = kernel_3mm_B14_x_i_stall_succ[0];
    assign kernel_3mm_B14_x_i_valid_loop_bitsignaltemp = kernel_3mm_B14_x_i_valid_loop[0];
    assign kernel_3mm_B14_x_i_valid_pred_bitsignaltemp = kernel_3mm_B14_x_i_valid_pred[0];
    assign kernel_3mm_B14_x_i_valid_succ_bitsignaltemp = kernel_3mm_B14_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B14")
    ) thekernel_3mm_B14_x (
        .i_capture(kernel_3mm_B14_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B14_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B14_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B14_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B14_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B14_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B14_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B14_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B14_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B15_x(EXTIFACE,303)
    assign kernel_3mm_B15_x_i_capture = GND_q;
    assign kernel_3mm_B15_x_i_clear = GND_q;
    assign kernel_3mm_B15_x_i_enable = VCC_q;
    assign kernel_3mm_B15_x_i_shift = GND_q;
    assign kernel_3mm_B15_x_i_stall_pred = loop_limiter_kernel_3mm6_out_o_stall;
    assign kernel_3mm_B15_x_i_stall_succ = bb_kernel_3mm_B17_out_stall_in_0;
    assign kernel_3mm_B15_x_i_valid_loop = bb_kernel_3mm_B15_out_valid_in_0;
    assign kernel_3mm_B15_x_i_valid_pred = bb_kernel_3mm_B15_out_valid_in_1;
    assign kernel_3mm_B15_x_i_valid_succ = bb_kernel_3mm_B17_out_valid_out_0;
    assign kernel_3mm_B15_x_i_capture_bitsignaltemp = kernel_3mm_B15_x_i_capture[0];
    assign kernel_3mm_B15_x_i_clear_bitsignaltemp = kernel_3mm_B15_x_i_clear[0];
    assign kernel_3mm_B15_x_i_enable_bitsignaltemp = kernel_3mm_B15_x_i_enable[0];
    assign kernel_3mm_B15_x_i_shift_bitsignaltemp = kernel_3mm_B15_x_i_shift[0];
    assign kernel_3mm_B15_x_i_stall_pred_bitsignaltemp = kernel_3mm_B15_x_i_stall_pred[0];
    assign kernel_3mm_B15_x_i_stall_succ_bitsignaltemp = kernel_3mm_B15_x_i_stall_succ[0];
    assign kernel_3mm_B15_x_i_valid_loop_bitsignaltemp = kernel_3mm_B15_x_i_valid_loop[0];
    assign kernel_3mm_B15_x_i_valid_pred_bitsignaltemp = kernel_3mm_B15_x_i_valid_pred[0];
    assign kernel_3mm_B15_x_i_valid_succ_bitsignaltemp = kernel_3mm_B15_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B15")
    ) thekernel_3mm_B15_x (
        .i_capture(kernel_3mm_B15_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B15_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B15_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B15_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B15_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B15_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B15_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B15_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B15_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B16_x(EXTIFACE,304)
    assign kernel_3mm_B16_x_i_capture = GND_q;
    assign kernel_3mm_B16_x_i_clear = GND_q;
    assign kernel_3mm_B16_x_i_enable = VCC_q;
    assign kernel_3mm_B16_x_i_shift = GND_q;
    assign kernel_3mm_B16_x_i_stall_pred = loop_limiter_kernel_3mm10_out_o_stall;
    assign kernel_3mm_B16_x_i_stall_succ = bb_kernel_3mm_B16_out_stall_in_0;
    assign kernel_3mm_B16_x_i_valid_loop = bb_kernel_3mm_B16_out_valid_in_0;
    assign kernel_3mm_B16_x_i_valid_pred = bb_kernel_3mm_B16_out_valid_in_1;
    assign kernel_3mm_B16_x_i_valid_succ = bb_kernel_3mm_B16_out_valid_out_0;
    assign kernel_3mm_B16_x_i_capture_bitsignaltemp = kernel_3mm_B16_x_i_capture[0];
    assign kernel_3mm_B16_x_i_clear_bitsignaltemp = kernel_3mm_B16_x_i_clear[0];
    assign kernel_3mm_B16_x_i_enable_bitsignaltemp = kernel_3mm_B16_x_i_enable[0];
    assign kernel_3mm_B16_x_i_shift_bitsignaltemp = kernel_3mm_B16_x_i_shift[0];
    assign kernel_3mm_B16_x_i_stall_pred_bitsignaltemp = kernel_3mm_B16_x_i_stall_pred[0];
    assign kernel_3mm_B16_x_i_stall_succ_bitsignaltemp = kernel_3mm_B16_x_i_stall_succ[0];
    assign kernel_3mm_B16_x_i_valid_loop_bitsignaltemp = kernel_3mm_B16_x_i_valid_loop[0];
    assign kernel_3mm_B16_x_i_valid_pred_bitsignaltemp = kernel_3mm_B16_x_i_valid_pred[0];
    assign kernel_3mm_B16_x_i_valid_succ_bitsignaltemp = kernel_3mm_B16_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B16")
    ) thekernel_3mm_B16_x (
        .i_capture(kernel_3mm_B16_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B16_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B16_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B16_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B16_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B16_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B16_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B16_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B16_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B2_x(EXTIFACE,305)
    assign kernel_3mm_B2_x_i_capture = GND_q;
    assign kernel_3mm_B2_x_i_clear = GND_q;
    assign kernel_3mm_B2_x_i_enable = VCC_q;
    assign kernel_3mm_B2_x_i_shift = GND_q;
    assign kernel_3mm_B2_x_i_stall_pred = loop_limiter_kernel_3mm0_out_o_stall;
    assign kernel_3mm_B2_x_i_stall_succ = bb_kernel_3mm_B4_out_stall_in_0;
    assign kernel_3mm_B2_x_i_valid_loop = bb_kernel_3mm_B2_out_valid_in_0;
    assign kernel_3mm_B2_x_i_valid_pred = bb_kernel_3mm_B2_out_valid_in_1;
    assign kernel_3mm_B2_x_i_valid_succ = bb_kernel_3mm_B4_out_valid_out_0;
    assign kernel_3mm_B2_x_i_capture_bitsignaltemp = kernel_3mm_B2_x_i_capture[0];
    assign kernel_3mm_B2_x_i_clear_bitsignaltemp = kernel_3mm_B2_x_i_clear[0];
    assign kernel_3mm_B2_x_i_enable_bitsignaltemp = kernel_3mm_B2_x_i_enable[0];
    assign kernel_3mm_B2_x_i_shift_bitsignaltemp = kernel_3mm_B2_x_i_shift[0];
    assign kernel_3mm_B2_x_i_stall_pred_bitsignaltemp = kernel_3mm_B2_x_i_stall_pred[0];
    assign kernel_3mm_B2_x_i_stall_succ_bitsignaltemp = kernel_3mm_B2_x_i_stall_succ[0];
    assign kernel_3mm_B2_x_i_valid_loop_bitsignaltemp = kernel_3mm_B2_x_i_valid_loop[0];
    assign kernel_3mm_B2_x_i_valid_pred_bitsignaltemp = kernel_3mm_B2_x_i_valid_pred[0];
    assign kernel_3mm_B2_x_i_valid_succ_bitsignaltemp = kernel_3mm_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B2")
    ) thekernel_3mm_B2_x (
        .i_capture(kernel_3mm_B2_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B2_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B2_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B20_x(EXTIFACE,306)
    assign kernel_3mm_B20_x_i_capture = GND_q;
    assign kernel_3mm_B20_x_i_clear = GND_q;
    assign kernel_3mm_B20_x_i_enable = VCC_q;
    assign kernel_3mm_B20_x_i_shift = GND_q;
    assign kernel_3mm_B20_x_i_stall_pred = loop_limiter_kernel_3mm3_out_o_stall;
    assign kernel_3mm_B20_x_i_stall_succ = bb_kernel_3mm_B22_out_stall_in_0;
    assign kernel_3mm_B20_x_i_valid_loop = bb_kernel_3mm_B20_out_valid_in_0;
    assign kernel_3mm_B20_x_i_valid_pred = bb_kernel_3mm_B20_out_valid_in_1;
    assign kernel_3mm_B20_x_i_valid_succ = bb_kernel_3mm_B22_out_valid_out_0;
    assign kernel_3mm_B20_x_i_capture_bitsignaltemp = kernel_3mm_B20_x_i_capture[0];
    assign kernel_3mm_B20_x_i_clear_bitsignaltemp = kernel_3mm_B20_x_i_clear[0];
    assign kernel_3mm_B20_x_i_enable_bitsignaltemp = kernel_3mm_B20_x_i_enable[0];
    assign kernel_3mm_B20_x_i_shift_bitsignaltemp = kernel_3mm_B20_x_i_shift[0];
    assign kernel_3mm_B20_x_i_stall_pred_bitsignaltemp = kernel_3mm_B20_x_i_stall_pred[0];
    assign kernel_3mm_B20_x_i_stall_succ_bitsignaltemp = kernel_3mm_B20_x_i_stall_succ[0];
    assign kernel_3mm_B20_x_i_valid_loop_bitsignaltemp = kernel_3mm_B20_x_i_valid_loop[0];
    assign kernel_3mm_B20_x_i_valid_pred_bitsignaltemp = kernel_3mm_B20_x_i_valid_pred[0];
    assign kernel_3mm_B20_x_i_valid_succ_bitsignaltemp = kernel_3mm_B20_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B20")
    ) thekernel_3mm_B20_x (
        .i_capture(kernel_3mm_B20_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B20_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B20_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B20_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B20_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B20_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B20_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B20_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B20_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B21_x(EXTIFACE,307)
    assign kernel_3mm_B21_x_i_capture = GND_q;
    assign kernel_3mm_B21_x_i_clear = GND_q;
    assign kernel_3mm_B21_x_i_enable = VCC_q;
    assign kernel_3mm_B21_x_i_shift = GND_q;
    assign kernel_3mm_B21_x_i_stall_pred = loop_limiter_kernel_3mm7_out_o_stall;
    assign kernel_3mm_B21_x_i_stall_succ = bb_kernel_3mm_B21_out_stall_in_0;
    assign kernel_3mm_B21_x_i_valid_loop = bb_kernel_3mm_B21_out_valid_in_0;
    assign kernel_3mm_B21_x_i_valid_pred = bb_kernel_3mm_B21_out_valid_in_1;
    assign kernel_3mm_B21_x_i_valid_succ = bb_kernel_3mm_B21_out_valid_out_0;
    assign kernel_3mm_B21_x_i_capture_bitsignaltemp = kernel_3mm_B21_x_i_capture[0];
    assign kernel_3mm_B21_x_i_clear_bitsignaltemp = kernel_3mm_B21_x_i_clear[0];
    assign kernel_3mm_B21_x_i_enable_bitsignaltemp = kernel_3mm_B21_x_i_enable[0];
    assign kernel_3mm_B21_x_i_shift_bitsignaltemp = kernel_3mm_B21_x_i_shift[0];
    assign kernel_3mm_B21_x_i_stall_pred_bitsignaltemp = kernel_3mm_B21_x_i_stall_pred[0];
    assign kernel_3mm_B21_x_i_stall_succ_bitsignaltemp = kernel_3mm_B21_x_i_stall_succ[0];
    assign kernel_3mm_B21_x_i_valid_loop_bitsignaltemp = kernel_3mm_B21_x_i_valid_loop[0];
    assign kernel_3mm_B21_x_i_valid_pred_bitsignaltemp = kernel_3mm_B21_x_i_valid_pred[0];
    assign kernel_3mm_B21_x_i_valid_succ_bitsignaltemp = kernel_3mm_B21_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B21")
    ) thekernel_3mm_B21_x (
        .i_capture(kernel_3mm_B21_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B21_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B21_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B21_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B21_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B21_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B21_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B21_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B21_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B3_x(EXTIFACE,308)
    assign kernel_3mm_B3_x_i_capture = GND_q;
    assign kernel_3mm_B3_x_i_clear = GND_q;
    assign kernel_3mm_B3_x_i_enable = VCC_q;
    assign kernel_3mm_B3_x_i_shift = GND_q;
    assign kernel_3mm_B3_x_i_stall_pred = loop_limiter_kernel_3mm4_out_o_stall;
    assign kernel_3mm_B3_x_i_stall_succ = bb_kernel_3mm_B3_out_stall_in_0;
    assign kernel_3mm_B3_x_i_valid_loop = bb_kernel_3mm_B3_out_valid_in_0;
    assign kernel_3mm_B3_x_i_valid_pred = bb_kernel_3mm_B3_out_valid_in_1;
    assign kernel_3mm_B3_x_i_valid_succ = bb_kernel_3mm_B3_out_valid_out_0;
    assign kernel_3mm_B3_x_i_capture_bitsignaltemp = kernel_3mm_B3_x_i_capture[0];
    assign kernel_3mm_B3_x_i_clear_bitsignaltemp = kernel_3mm_B3_x_i_clear[0];
    assign kernel_3mm_B3_x_i_enable_bitsignaltemp = kernel_3mm_B3_x_i_enable[0];
    assign kernel_3mm_B3_x_i_shift_bitsignaltemp = kernel_3mm_B3_x_i_shift[0];
    assign kernel_3mm_B3_x_i_stall_pred_bitsignaltemp = kernel_3mm_B3_x_i_stall_pred[0];
    assign kernel_3mm_B3_x_i_stall_succ_bitsignaltemp = kernel_3mm_B3_x_i_stall_succ[0];
    assign kernel_3mm_B3_x_i_valid_loop_bitsignaltemp = kernel_3mm_B3_x_i_valid_loop[0];
    assign kernel_3mm_B3_x_i_valid_pred_bitsignaltemp = kernel_3mm_B3_x_i_valid_pred[0];
    assign kernel_3mm_B3_x_i_valid_succ_bitsignaltemp = kernel_3mm_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B3")
    ) thekernel_3mm_B3_x (
        .i_capture(kernel_3mm_B3_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B3_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B3_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B6_x(EXTIFACE,309)
    assign kernel_3mm_B6_x_i_capture = GND_q;
    assign kernel_3mm_B6_x_i_clear = GND_q;
    assign kernel_3mm_B6_x_i_enable = VCC_q;
    assign kernel_3mm_B6_x_i_shift = GND_q;
    assign kernel_3mm_B6_x_i_stall_pred = loop_limiter_kernel_3mm1_out_o_stall;
    assign kernel_3mm_B6_x_i_stall_succ = bb_kernel_3mm_B12_out_stall_in_0;
    assign kernel_3mm_B6_x_i_valid_loop = bb_kernel_3mm_B6_out_valid_in_0;
    assign kernel_3mm_B6_x_i_valid_pred = bb_kernel_3mm_B6_out_valid_in_1;
    assign kernel_3mm_B6_x_i_valid_succ = bb_kernel_3mm_B12_out_valid_out_0;
    assign kernel_3mm_B6_x_i_capture_bitsignaltemp = kernel_3mm_B6_x_i_capture[0];
    assign kernel_3mm_B6_x_i_clear_bitsignaltemp = kernel_3mm_B6_x_i_clear[0];
    assign kernel_3mm_B6_x_i_enable_bitsignaltemp = kernel_3mm_B6_x_i_enable[0];
    assign kernel_3mm_B6_x_i_shift_bitsignaltemp = kernel_3mm_B6_x_i_shift[0];
    assign kernel_3mm_B6_x_i_stall_pred_bitsignaltemp = kernel_3mm_B6_x_i_stall_pred[0];
    assign kernel_3mm_B6_x_i_stall_succ_bitsignaltemp = kernel_3mm_B6_x_i_stall_succ[0];
    assign kernel_3mm_B6_x_i_valid_loop_bitsignaltemp = kernel_3mm_B6_x_i_valid_loop[0];
    assign kernel_3mm_B6_x_i_valid_pred_bitsignaltemp = kernel_3mm_B6_x_i_valid_pred[0];
    assign kernel_3mm_B6_x_i_valid_succ_bitsignaltemp = kernel_3mm_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B6")
    ) thekernel_3mm_B6_x (
        .i_capture(kernel_3mm_B6_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B6_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B6_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B7_x(EXTIFACE,310)
    assign kernel_3mm_B7_x_i_capture = GND_q;
    assign kernel_3mm_B7_x_i_clear = GND_q;
    assign kernel_3mm_B7_x_i_enable = VCC_q;
    assign kernel_3mm_B7_x_i_shift = GND_q;
    assign kernel_3mm_B7_x_i_stall_pred = loop_limiter_kernel_3mm5_out_o_stall;
    assign kernel_3mm_B7_x_i_stall_succ = bb_kernel_3mm_B11_out_stall_in_0;
    assign kernel_3mm_B7_x_i_valid_loop = bb_kernel_3mm_B7_out_valid_in_0;
    assign kernel_3mm_B7_x_i_valid_pred = bb_kernel_3mm_B7_out_valid_in_1;
    assign kernel_3mm_B7_x_i_valid_succ = bb_kernel_3mm_B11_out_valid_out_0;
    assign kernel_3mm_B7_x_i_capture_bitsignaltemp = kernel_3mm_B7_x_i_capture[0];
    assign kernel_3mm_B7_x_i_clear_bitsignaltemp = kernel_3mm_B7_x_i_clear[0];
    assign kernel_3mm_B7_x_i_enable_bitsignaltemp = kernel_3mm_B7_x_i_enable[0];
    assign kernel_3mm_B7_x_i_shift_bitsignaltemp = kernel_3mm_B7_x_i_shift[0];
    assign kernel_3mm_B7_x_i_stall_pred_bitsignaltemp = kernel_3mm_B7_x_i_stall_pred[0];
    assign kernel_3mm_B7_x_i_stall_succ_bitsignaltemp = kernel_3mm_B7_x_i_stall_succ[0];
    assign kernel_3mm_B7_x_i_valid_loop_bitsignaltemp = kernel_3mm_B7_x_i_valid_loop[0];
    assign kernel_3mm_B7_x_i_valid_pred_bitsignaltemp = kernel_3mm_B7_x_i_valid_pred[0];
    assign kernel_3mm_B7_x_i_valid_succ_bitsignaltemp = kernel_3mm_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B7")
    ) thekernel_3mm_B7_x (
        .i_capture(kernel_3mm_B7_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B7_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B7_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_3mm_B8_x(EXTIFACE,311)
    assign kernel_3mm_B8_x_i_capture = GND_q;
    assign kernel_3mm_B8_x_i_clear = GND_q;
    assign kernel_3mm_B8_x_i_enable = VCC_q;
    assign kernel_3mm_B8_x_i_shift = GND_q;
    assign kernel_3mm_B8_x_i_stall_pred = loop_limiter_kernel_3mm8_out_o_stall;
    assign kernel_3mm_B8_x_i_stall_succ = bb_kernel_3mm_B8_out_stall_in_0;
    assign kernel_3mm_B8_x_i_valid_loop = bb_kernel_3mm_B8_out_valid_in_0;
    assign kernel_3mm_B8_x_i_valid_pred = bb_kernel_3mm_B8_out_valid_in_1;
    assign kernel_3mm_B8_x_i_valid_succ = bb_kernel_3mm_B8_out_valid_out_0;
    assign kernel_3mm_B8_x_i_capture_bitsignaltemp = kernel_3mm_B8_x_i_capture[0];
    assign kernel_3mm_B8_x_i_clear_bitsignaltemp = kernel_3mm_B8_x_i_clear[0];
    assign kernel_3mm_B8_x_i_enable_bitsignaltemp = kernel_3mm_B8_x_i_enable[0];
    assign kernel_3mm_B8_x_i_shift_bitsignaltemp = kernel_3mm_B8_x_i_shift[0];
    assign kernel_3mm_B8_x_i_stall_pred_bitsignaltemp = kernel_3mm_B8_x_i_stall_pred[0];
    assign kernel_3mm_B8_x_i_stall_succ_bitsignaltemp = kernel_3mm_B8_x_i_stall_succ[0];
    assign kernel_3mm_B8_x_i_valid_loop_bitsignaltemp = kernel_3mm_B8_x_i_valid_loop[0];
    assign kernel_3mm_B8_x_i_valid_pred_bitsignaltemp = kernel_3mm_B8_x_i_valid_pred[0];
    assign kernel_3mm_B8_x_i_valid_succ_bitsignaltemp = kernel_3mm_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B8")
    ) thekernel_3mm_B8_x (
        .i_capture(kernel_3mm_B8_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B8_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B8_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_kernel_3mm_o_fifoalmost_full(GPOUT,323)
    assign out_iord_bl_call_kernel_3mm_o_fifoalmost_full = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_3mm_o_fifoready(GPOUT,324)
    assign out_iord_bl_call_kernel_3mm_o_fifoready = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;

    // out_iowr_bl_return_kernel_3mm_o_fifodata(GPOUT,325)
    assign out_iowr_bl_return_kernel_3mm_o_fifodata = bb_kernel_3mm_B23_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // out_iowr_bl_return_kernel_3mm_o_fifovalid(GPOUT,326)
    assign out_iowr_bl_return_kernel_3mm_o_fifovalid = bb_kernel_3mm_B23_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // out_memdep_10_kernel_3mm_avm_address(GPOUT,327)
    assign out_memdep_10_kernel_3mm_avm_address = bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_address;

    // out_memdep_10_kernel_3mm_avm_burstcount(GPOUT,328)
    assign out_memdep_10_kernel_3mm_avm_burstcount = bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_burstcount;

    // out_memdep_10_kernel_3mm_avm_byteenable(GPOUT,329)
    assign out_memdep_10_kernel_3mm_avm_byteenable = bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_byteenable;

    // out_memdep_10_kernel_3mm_avm_enable(GPOUT,330)
    assign out_memdep_10_kernel_3mm_avm_enable = bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_enable;

    // out_memdep_10_kernel_3mm_avm_read(GPOUT,331)
    assign out_memdep_10_kernel_3mm_avm_read = bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_read;

    // out_memdep_10_kernel_3mm_avm_write(GPOUT,332)
    assign out_memdep_10_kernel_3mm_avm_write = bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_write;

    // out_memdep_10_kernel_3mm_avm_writedata(GPOUT,333)
    assign out_memdep_10_kernel_3mm_avm_writedata = bb_kernel_3mm_B21_out_memdep_10_kernel_3mm_avm_writedata;

    // out_memdep_1_kernel_3mm_avm_address(GPOUT,334)
    assign out_memdep_1_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_address;

    // out_memdep_1_kernel_3mm_avm_burstcount(GPOUT,335)
    assign out_memdep_1_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_burstcount;

    // out_memdep_1_kernel_3mm_avm_byteenable(GPOUT,336)
    assign out_memdep_1_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_byteenable;

    // out_memdep_1_kernel_3mm_avm_enable(GPOUT,337)
    assign out_memdep_1_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_enable;

    // out_memdep_1_kernel_3mm_avm_read(GPOUT,338)
    assign out_memdep_1_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_read;

    // out_memdep_1_kernel_3mm_avm_write(GPOUT,339)
    assign out_memdep_1_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_write;

    // out_memdep_1_kernel_3mm_avm_writedata(GPOUT,340)
    assign out_memdep_1_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_memdep_1_kernel_3mm_avm_writedata;

    // out_memdep_2_kernel_3mm_avm_address(GPOUT,341)
    assign out_memdep_2_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_address;

    // out_memdep_2_kernel_3mm_avm_burstcount(GPOUT,342)
    assign out_memdep_2_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_burstcount;

    // out_memdep_2_kernel_3mm_avm_byteenable(GPOUT,343)
    assign out_memdep_2_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_byteenable;

    // out_memdep_2_kernel_3mm_avm_enable(GPOUT,344)
    assign out_memdep_2_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_enable;

    // out_memdep_2_kernel_3mm_avm_read(GPOUT,345)
    assign out_memdep_2_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_read;

    // out_memdep_2_kernel_3mm_avm_write(GPOUT,346)
    assign out_memdep_2_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_write;

    // out_memdep_2_kernel_3mm_avm_writedata(GPOUT,347)
    assign out_memdep_2_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_memdep_2_kernel_3mm_avm_writedata;

    // out_memdep_3_kernel_3mm_avm_address(GPOUT,348)
    assign out_memdep_3_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_address;

    // out_memdep_3_kernel_3mm_avm_burstcount(GPOUT,349)
    assign out_memdep_3_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_burstcount;

    // out_memdep_3_kernel_3mm_avm_byteenable(GPOUT,350)
    assign out_memdep_3_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_byteenable;

    // out_memdep_3_kernel_3mm_avm_enable(GPOUT,351)
    assign out_memdep_3_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_enable;

    // out_memdep_3_kernel_3mm_avm_read(GPOUT,352)
    assign out_memdep_3_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_read;

    // out_memdep_3_kernel_3mm_avm_write(GPOUT,353)
    assign out_memdep_3_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_write;

    // out_memdep_3_kernel_3mm_avm_writedata(GPOUT,354)
    assign out_memdep_3_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_memdep_3_kernel_3mm_avm_writedata;

    // out_memdep_4_kernel_3mm_avm_address(GPOUT,355)
    assign out_memdep_4_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_address;

    // out_memdep_4_kernel_3mm_avm_burstcount(GPOUT,356)
    assign out_memdep_4_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_burstcount;

    // out_memdep_4_kernel_3mm_avm_byteenable(GPOUT,357)
    assign out_memdep_4_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_byteenable;

    // out_memdep_4_kernel_3mm_avm_enable(GPOUT,358)
    assign out_memdep_4_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_enable;

    // out_memdep_4_kernel_3mm_avm_read(GPOUT,359)
    assign out_memdep_4_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_read;

    // out_memdep_4_kernel_3mm_avm_write(GPOUT,360)
    assign out_memdep_4_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_write;

    // out_memdep_4_kernel_3mm_avm_writedata(GPOUT,361)
    assign out_memdep_4_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_memdep_4_kernel_3mm_avm_writedata;

    // out_memdep_5_kernel_3mm_avm_address(GPOUT,362)
    assign out_memdep_5_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_address;

    // out_memdep_5_kernel_3mm_avm_burstcount(GPOUT,363)
    assign out_memdep_5_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_burstcount;

    // out_memdep_5_kernel_3mm_avm_byteenable(GPOUT,364)
    assign out_memdep_5_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_byteenable;

    // out_memdep_5_kernel_3mm_avm_enable(GPOUT,365)
    assign out_memdep_5_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_enable;

    // out_memdep_5_kernel_3mm_avm_read(GPOUT,366)
    assign out_memdep_5_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_read;

    // out_memdep_5_kernel_3mm_avm_write(GPOUT,367)
    assign out_memdep_5_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_write;

    // out_memdep_5_kernel_3mm_avm_writedata(GPOUT,368)
    assign out_memdep_5_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_memdep_5_kernel_3mm_avm_writedata;

    // out_memdep_6_kernel_3mm_avm_address(GPOUT,369)
    assign out_memdep_6_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_address;

    // out_memdep_6_kernel_3mm_avm_burstcount(GPOUT,370)
    assign out_memdep_6_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_burstcount;

    // out_memdep_6_kernel_3mm_avm_byteenable(GPOUT,371)
    assign out_memdep_6_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_byteenable;

    // out_memdep_6_kernel_3mm_avm_enable(GPOUT,372)
    assign out_memdep_6_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_enable;

    // out_memdep_6_kernel_3mm_avm_read(GPOUT,373)
    assign out_memdep_6_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_read;

    // out_memdep_6_kernel_3mm_avm_write(GPOUT,374)
    assign out_memdep_6_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_write;

    // out_memdep_6_kernel_3mm_avm_writedata(GPOUT,375)
    assign out_memdep_6_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_memdep_6_kernel_3mm_avm_writedata;

    // out_memdep_7_kernel_3mm_avm_address(GPOUT,376)
    assign out_memdep_7_kernel_3mm_avm_address = bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_address;

    // out_memdep_7_kernel_3mm_avm_burstcount(GPOUT,377)
    assign out_memdep_7_kernel_3mm_avm_burstcount = bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_burstcount;

    // out_memdep_7_kernel_3mm_avm_byteenable(GPOUT,378)
    assign out_memdep_7_kernel_3mm_avm_byteenable = bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_byteenable;

    // out_memdep_7_kernel_3mm_avm_enable(GPOUT,379)
    assign out_memdep_7_kernel_3mm_avm_enable = bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_enable;

    // out_memdep_7_kernel_3mm_avm_read(GPOUT,380)
    assign out_memdep_7_kernel_3mm_avm_read = bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_read;

    // out_memdep_7_kernel_3mm_avm_write(GPOUT,381)
    assign out_memdep_7_kernel_3mm_avm_write = bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_write;

    // out_memdep_7_kernel_3mm_avm_writedata(GPOUT,382)
    assign out_memdep_7_kernel_3mm_avm_writedata = bb_kernel_3mm_B9_out_memdep_7_kernel_3mm_avm_writedata;

    // out_memdep_8_kernel_3mm_avm_address(GPOUT,383)
    assign out_memdep_8_kernel_3mm_avm_address = bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_address;

    // out_memdep_8_kernel_3mm_avm_burstcount(GPOUT,384)
    assign out_memdep_8_kernel_3mm_avm_burstcount = bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_burstcount;

    // out_memdep_8_kernel_3mm_avm_byteenable(GPOUT,385)
    assign out_memdep_8_kernel_3mm_avm_byteenable = bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_byteenable;

    // out_memdep_8_kernel_3mm_avm_enable(GPOUT,386)
    assign out_memdep_8_kernel_3mm_avm_enable = bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_enable;

    // out_memdep_8_kernel_3mm_avm_read(GPOUT,387)
    assign out_memdep_8_kernel_3mm_avm_read = bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_read;

    // out_memdep_8_kernel_3mm_avm_write(GPOUT,388)
    assign out_memdep_8_kernel_3mm_avm_write = bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_write;

    // out_memdep_8_kernel_3mm_avm_writedata(GPOUT,389)
    assign out_memdep_8_kernel_3mm_avm_writedata = bb_kernel_3mm_B11_out_memdep_8_kernel_3mm_avm_writedata;

    // out_memdep_9_kernel_3mm_avm_address(GPOUT,390)
    assign out_memdep_9_kernel_3mm_avm_address = bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_address;

    // out_memdep_9_kernel_3mm_avm_burstcount(GPOUT,391)
    assign out_memdep_9_kernel_3mm_avm_burstcount = bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_burstcount;

    // out_memdep_9_kernel_3mm_avm_byteenable(GPOUT,392)
    assign out_memdep_9_kernel_3mm_avm_byteenable = bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_byteenable;

    // out_memdep_9_kernel_3mm_avm_enable(GPOUT,393)
    assign out_memdep_9_kernel_3mm_avm_enable = bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_enable;

    // out_memdep_9_kernel_3mm_avm_read(GPOUT,394)
    assign out_memdep_9_kernel_3mm_avm_read = bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_read;

    // out_memdep_9_kernel_3mm_avm_write(GPOUT,395)
    assign out_memdep_9_kernel_3mm_avm_write = bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_write;

    // out_memdep_9_kernel_3mm_avm_writedata(GPOUT,396)
    assign out_memdep_9_kernel_3mm_avm_writedata = bb_kernel_3mm_B17_out_memdep_9_kernel_3mm_avm_writedata;

    // out_memdep_kernel_3mm_avm_address(GPOUT,397)
    assign out_memdep_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_address;

    // out_memdep_kernel_3mm_avm_burstcount(GPOUT,398)
    assign out_memdep_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_burstcount;

    // out_memdep_kernel_3mm_avm_byteenable(GPOUT,399)
    assign out_memdep_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_byteenable;

    // out_memdep_kernel_3mm_avm_enable(GPOUT,400)
    assign out_memdep_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_enable;

    // out_memdep_kernel_3mm_avm_read(GPOUT,401)
    assign out_memdep_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_read;

    // out_memdep_kernel_3mm_avm_write(GPOUT,402)
    assign out_memdep_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_write;

    // out_memdep_kernel_3mm_avm_writedata(GPOUT,403)
    assign out_memdep_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_memdep_kernel_3mm_avm_writedata;

    // out_o_active_memdep_10(GPOUT,404)
    assign out_o_active_memdep_10 = bb_kernel_3mm_B21_out_lsu_memdep_10_o_active;

    // bb_kernel_3mm_B0_runOnce(BLACKBOX,2)
    kernel_3mm_bb_B0_runOnce thebb_kernel_3mm_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_3mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,405)
    assign out_stall_out = bb_kernel_3mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_address(GPOUT,406)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(GPOUT,407)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(GPOUT,408)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(GPOUT,409)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_read(GPOUT,410)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_write(GPOUT,411)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(GPOUT,412)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_address(GPOUT,413)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount(GPOUT,414)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable(GPOUT,415)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_enable(GPOUT,416)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_read(GPOUT,417)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_write(GPOUT,418)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata(GPOUT,419)
    assign out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_address(GPOUT,420)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(GPOUT,421)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(GPOUT,422)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(GPOUT,423)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_read(GPOUT,424)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_write(GPOUT,425)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(GPOUT,426)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_address(GPOUT,427)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(GPOUT,428)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(GPOUT,429)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(GPOUT,430)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_read(GPOUT,431)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_write(GPOUT,432)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(GPOUT,433)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_address(GPOUT,434)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount(GPOUT,435)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable(GPOUT,436)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_enable(GPOUT,437)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_read(GPOUT,438)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_write(GPOUT,439)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata(GPOUT,440)
    assign out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_address(GPOUT,441)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount(GPOUT,442)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable(GPOUT,443)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_enable(GPOUT,444)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_read(GPOUT,445)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_write(GPOUT,446)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata(GPOUT,447)
    assign out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_address(GPOUT,448)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(GPOUT,449)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(GPOUT,450)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(GPOUT,451)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_read(GPOUT,452)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_write(GPOUT,453)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(GPOUT,454)
    assign out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_address(GPOUT,455)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_address = bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(GPOUT,456)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount = bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(GPOUT,457)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable = bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(GPOUT,458)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_enable = bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_read(GPOUT,459)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_read = bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_write(GPOUT,460)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_write = bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(GPOUT,461)
    assign out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata = bb_kernel_3mm_B7_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_address(GPOUT,462)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_address = bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount(GPOUT,463)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount = bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable(GPOUT,464)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable = bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_enable(GPOUT,465)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_enable = bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_read(GPOUT,466)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_read = bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_write(GPOUT,467)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_write = bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata(GPOUT,468)
    assign out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata = bb_kernel_3mm_B8_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_address(GPOUT,469)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_address = bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(GPOUT,470)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount = bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(GPOUT,471)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable = bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(GPOUT,472)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_enable = bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_read(GPOUT,473)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_read = bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_write(GPOUT,474)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_write = bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(GPOUT,475)
    assign out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata = bb_kernel_3mm_B8_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_address(GPOUT,476)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_address = bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(GPOUT,477)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount = bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(GPOUT,478)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable = bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(GPOUT,479)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_enable = bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_read(GPOUT,480)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_read = bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_write(GPOUT,481)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_write = bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(GPOUT,482)
    assign out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata = bb_kernel_3mm_B9_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_address(GPOUT,483)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_address = bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount(GPOUT,484)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable(GPOUT,485)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_enable(GPOUT,486)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_enable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_read(GPOUT,487)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_read = bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_write(GPOUT,488)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_write = bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata(GPOUT,489)
    assign out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_address(GPOUT,490)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_address = bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount(GPOUT,491)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount = bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable(GPOUT,492)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_enable(GPOUT,493)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_enable = bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_read(GPOUT,494)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_read = bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_write(GPOUT,495)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_write = bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata(GPOUT,496)
    assign out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata = bb_kernel_3mm_B10_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm25_kernel_3mm_avm_address(GPOUT,497)
    assign out_unnamed_kernel_3mm25_kernel_3mm_avm_address = bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount(GPOUT,498)
    assign out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount = bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable(GPOUT,499)
    assign out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable = bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm25_kernel_3mm_avm_enable(GPOUT,500)
    assign out_unnamed_kernel_3mm25_kernel_3mm_avm_enable = bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm25_kernel_3mm_avm_read(GPOUT,501)
    assign out_unnamed_kernel_3mm25_kernel_3mm_avm_read = bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm25_kernel_3mm_avm_write(GPOUT,502)
    assign out_unnamed_kernel_3mm25_kernel_3mm_avm_write = bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata(GPOUT,503)
    assign out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata = bb_kernel_3mm_B15_out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_address(GPOUT,504)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_address = bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(GPOUT,505)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(GPOUT,506)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(GPOUT,507)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_enable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_read(GPOUT,508)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_read = bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_write(GPOUT,509)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_write = bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(GPOUT,510)
    assign out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_address(GPOUT,511)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_address = bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount(GPOUT,512)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount = bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable(GPOUT,513)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_enable(GPOUT,514)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_enable = bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_read(GPOUT,515)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_read = bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_write(GPOUT,516)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_write = bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata(GPOUT,517)
    assign out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata = bb_kernel_3mm_B16_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_address(GPOUT,518)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_address = bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(GPOUT,519)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount = bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(GPOUT,520)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable = bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(GPOUT,521)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_enable = bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_read(GPOUT,522)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_read = bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_write(GPOUT,523)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_write = bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(GPOUT,524)
    assign out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata = bb_kernel_3mm_B21_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;

    // out_valid_out(GPOUT,525)
    assign out_valid_out = GND_q;

endmodule
