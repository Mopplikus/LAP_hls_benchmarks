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

// SystemVerilog created from kernel_3mm_function_wrapper
// Created for function/kernel kernel_3mm
// SystemVerilog created on Wed Apr  5 01:38:04 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_3mm_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] B,
    input wire [63:0] C,
    input wire [63:0] D,
    input wire [63:0] E,
    input wire [63:0] F,
    input wire [63:0] G,
    input wire [63:0] avm_memdep_10_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_10_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_10_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_10_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_1_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_1_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_1_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_1_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_2_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_2_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_2_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_2_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_3_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_3_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_3_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_3_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_4_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_4_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_4_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_4_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_5_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_5_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_5_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_5_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_6_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_6_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_6_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_6_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_7_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_7_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_7_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_7_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_8_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_8_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_8_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_8_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_9_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_9_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_9_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_9_kernel_3mm_writeack,
    input wire [31:0] avm_memdep_kernel_3mm_readdata,
    input wire [0:0] avm_memdep_kernel_3mm_readdatavalid,
    input wire [0:0] avm_memdep_kernel_3mm_waitrequest,
    input wire [0:0] avm_memdep_kernel_3mm_writeack,
    input wire [63:0] avm_unnamed_kernel_3mm10_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_writeack,
    input wire [63:0] avm_unnamed_kernel_3mm11_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm11_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm11_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm11_kernel_3mm_writeack,
    input wire [63:0] avm_unnamed_kernel_3mm12_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_writeack,
    input wire [63:0] avm_unnamed_kernel_3mm13_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_writeack,
    input wire [63:0] avm_unnamed_kernel_3mm14_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm14_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm14_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm14_kernel_3mm_writeack,
    input wire [63:0] avm_unnamed_kernel_3mm15_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm15_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm15_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm15_kernel_3mm_writeack,
    input wire [63:0] avm_unnamed_kernel_3mm16_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm16_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm16_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm16_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm17_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm17_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm17_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm17_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm19_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm19_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm19_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm19_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm20_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm20_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm20_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm20_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm21_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm21_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm21_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm21_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm23_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm23_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm23_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm23_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm24_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm24_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm24_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm24_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm25_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm25_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm25_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm25_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm27_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm27_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm27_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm27_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm28_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm28_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm28_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm28_kernel_3mm_writeack,
    input wire [31:0] avm_unnamed_kernel_3mm29_kernel_3mm_readdata,
    input wire [0:0] avm_unnamed_kernel_3mm29_kernel_3mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_3mm29_kernel_3mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_3mm29_kernel_3mm_writeack,
    input wire [447:0] avst_iord_bl_call_kernel_3mm_data,
    input wire [0:0] avst_iord_bl_call_kernel_3mm_valid,
    input wire [0:0] avst_iowr_bl_return_kernel_3mm_almostfull,
    input wire [0:0] avst_iowr_bl_return_kernel_3mm_ready,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [63:0] avm_memdep_10_kernel_3mm_address,
    output wire [0:0] avm_memdep_10_kernel_3mm_burstcount,
    output wire [7:0] avm_memdep_10_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_10_kernel_3mm_enable,
    output wire [0:0] avm_memdep_10_kernel_3mm_read,
    output wire [0:0] avm_memdep_10_kernel_3mm_write,
    output wire [63:0] avm_memdep_10_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_1_kernel_3mm_address,
    output wire [0:0] avm_memdep_1_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_1_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_1_kernel_3mm_enable,
    output wire [0:0] avm_memdep_1_kernel_3mm_read,
    output wire [0:0] avm_memdep_1_kernel_3mm_write,
    output wire [31:0] avm_memdep_1_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_2_kernel_3mm_address,
    output wire [0:0] avm_memdep_2_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_2_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_2_kernel_3mm_enable,
    output wire [0:0] avm_memdep_2_kernel_3mm_read,
    output wire [0:0] avm_memdep_2_kernel_3mm_write,
    output wire [31:0] avm_memdep_2_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_3_kernel_3mm_address,
    output wire [0:0] avm_memdep_3_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_3_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_3_kernel_3mm_enable,
    output wire [0:0] avm_memdep_3_kernel_3mm_read,
    output wire [0:0] avm_memdep_3_kernel_3mm_write,
    output wire [31:0] avm_memdep_3_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_4_kernel_3mm_address,
    output wire [0:0] avm_memdep_4_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_4_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_4_kernel_3mm_enable,
    output wire [0:0] avm_memdep_4_kernel_3mm_read,
    output wire [0:0] avm_memdep_4_kernel_3mm_write,
    output wire [31:0] avm_memdep_4_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_5_kernel_3mm_address,
    output wire [0:0] avm_memdep_5_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_5_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_5_kernel_3mm_enable,
    output wire [0:0] avm_memdep_5_kernel_3mm_read,
    output wire [0:0] avm_memdep_5_kernel_3mm_write,
    output wire [31:0] avm_memdep_5_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_6_kernel_3mm_address,
    output wire [0:0] avm_memdep_6_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_6_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_6_kernel_3mm_enable,
    output wire [0:0] avm_memdep_6_kernel_3mm_read,
    output wire [0:0] avm_memdep_6_kernel_3mm_write,
    output wire [31:0] avm_memdep_6_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_7_kernel_3mm_address,
    output wire [0:0] avm_memdep_7_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_7_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_7_kernel_3mm_enable,
    output wire [0:0] avm_memdep_7_kernel_3mm_read,
    output wire [0:0] avm_memdep_7_kernel_3mm_write,
    output wire [31:0] avm_memdep_7_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_8_kernel_3mm_address,
    output wire [0:0] avm_memdep_8_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_8_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_8_kernel_3mm_enable,
    output wire [0:0] avm_memdep_8_kernel_3mm_read,
    output wire [0:0] avm_memdep_8_kernel_3mm_write,
    output wire [31:0] avm_memdep_8_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_9_kernel_3mm_address,
    output wire [0:0] avm_memdep_9_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_9_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_9_kernel_3mm_enable,
    output wire [0:0] avm_memdep_9_kernel_3mm_read,
    output wire [0:0] avm_memdep_9_kernel_3mm_write,
    output wire [31:0] avm_memdep_9_kernel_3mm_writedata,
    output wire [31:0] avm_memdep_kernel_3mm_address,
    output wire [0:0] avm_memdep_kernel_3mm_burstcount,
    output wire [3:0] avm_memdep_kernel_3mm_byteenable,
    output wire [0:0] avm_memdep_kernel_3mm_enable,
    output wire [0:0] avm_memdep_kernel_3mm_read,
    output wire [0:0] avm_memdep_kernel_3mm_write,
    output wire [31:0] avm_memdep_kernel_3mm_writedata,
    output wire [63:0] avm_unnamed_kernel_3mm10_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_3mm10_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm10_kernel_3mm_write,
    output wire [63:0] avm_unnamed_kernel_3mm10_kernel_3mm_writedata,
    output wire [63:0] avm_unnamed_kernel_3mm11_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm11_kernel_3mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_3mm11_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm11_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm11_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm11_kernel_3mm_write,
    output wire [63:0] avm_unnamed_kernel_3mm11_kernel_3mm_writedata,
    output wire [63:0] avm_unnamed_kernel_3mm12_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_3mm12_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm12_kernel_3mm_write,
    output wire [63:0] avm_unnamed_kernel_3mm12_kernel_3mm_writedata,
    output wire [63:0] avm_unnamed_kernel_3mm13_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_3mm13_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm13_kernel_3mm_write,
    output wire [63:0] avm_unnamed_kernel_3mm13_kernel_3mm_writedata,
    output wire [63:0] avm_unnamed_kernel_3mm14_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm14_kernel_3mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_3mm14_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm14_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm14_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm14_kernel_3mm_write,
    output wire [63:0] avm_unnamed_kernel_3mm14_kernel_3mm_writedata,
    output wire [63:0] avm_unnamed_kernel_3mm15_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm15_kernel_3mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_3mm15_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm15_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm15_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm15_kernel_3mm_write,
    output wire [63:0] avm_unnamed_kernel_3mm15_kernel_3mm_writedata,
    output wire [63:0] avm_unnamed_kernel_3mm16_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm16_kernel_3mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_3mm16_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm16_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm16_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm16_kernel_3mm_write,
    output wire [63:0] avm_unnamed_kernel_3mm16_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm17_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm17_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm17_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm17_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm17_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm17_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm17_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm19_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm19_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm19_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm19_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm19_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm19_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm19_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm20_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm20_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm20_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm20_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm20_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm20_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm20_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm21_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm21_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm21_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm21_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm21_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm21_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm21_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm23_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm23_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm23_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm23_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm23_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm23_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm23_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm24_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm24_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm24_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm24_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm24_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm24_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm24_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm25_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm25_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm25_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm25_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm25_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm25_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm25_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm27_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm27_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm27_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm27_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm27_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm27_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm27_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm28_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm28_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm28_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm28_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm28_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm28_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm28_kernel_3mm_writedata,
    output wire [31:0] avm_unnamed_kernel_3mm29_kernel_3mm_address,
    output wire [0:0] avm_unnamed_kernel_3mm29_kernel_3mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_3mm29_kernel_3mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_3mm29_kernel_3mm_enable,
    output wire [0:0] avm_unnamed_kernel_3mm29_kernel_3mm_read,
    output wire [0:0] avm_unnamed_kernel_3mm29_kernel_3mm_write,
    output wire [31:0] avm_unnamed_kernel_3mm29_kernel_3mm_writedata,
    output wire [0:0] avst_iord_bl_call_kernel_3mm_almost_full,
    output wire [0:0] avst_iord_bl_call_kernel_3mm_ready,
    output wire [0:0] avst_iowr_bl_return_kernel_3mm_data,
    output wire [0:0] avst_iowr_bl_return_kernel_3mm_valid,
    output wire [0:0] busy,
    output wire [0:0] done,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [63:0] A_const_q;
    wire [0:0] busy_and_q;
    wire [0:0] busy_or_q;
    wire [447:0] implicit_input_q;
    wire [0:0] kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [63:0] kernel_3mm_function_out_memdep_10_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_10_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_memdep_10_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_10_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_10_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_10_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_memdep_10_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_2_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_2_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_2_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_2_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_2_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_2_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_2_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_3_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_3_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_3_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_3_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_3_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_3_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_3_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_4_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_4_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_4_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_4_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_4_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_4_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_4_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_5_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_5_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_5_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_5_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_5_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_5_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_5_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_7_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_7_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_7_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_7_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_7_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_7_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_7_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_8_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_8_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_8_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_8_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_8_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_8_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_8_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_9_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_9_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_9_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_9_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_9_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_9_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_9_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;
    wire [7:0] kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;
    wire [63:0] kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;
    wire [3:0] kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;
    wire [0:0] kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;
    wire [31:0] kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,144)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,14)
    assign implicit_input_q = {G, F, E, D, C, B, A};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // kernel_3mm_function(BLACKBOX,142)
    kernel_3mm_function thekernel_3mm_function (
        .in_arg_A(A_const_q),
        .in_arg_B(A_const_q),
        .in_arg_C(A_const_q),
        .in_arg_D(A_const_q),
        .in_arg_E(A_const_q),
        .in_arg_F(A_const_q),
        .in_arg_G(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_kernel_3mm_i_fifodata(implicit_input_q),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(start),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(not_stall_q),
        .in_memdep_10_kernel_3mm_avm_readdata(avm_memdep_10_kernel_3mm_readdata),
        .in_memdep_10_kernel_3mm_avm_readdatavalid(avm_memdep_10_kernel_3mm_readdatavalid),
        .in_memdep_10_kernel_3mm_avm_waitrequest(avm_memdep_10_kernel_3mm_waitrequest),
        .in_memdep_10_kernel_3mm_avm_writeack(avm_memdep_10_kernel_3mm_writeack),
        .in_memdep_1_kernel_3mm_avm_readdata(avm_memdep_1_kernel_3mm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(avm_memdep_1_kernel_3mm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(avm_memdep_1_kernel_3mm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(avm_memdep_1_kernel_3mm_writeack),
        .in_memdep_2_kernel_3mm_avm_readdata(avm_memdep_2_kernel_3mm_readdata),
        .in_memdep_2_kernel_3mm_avm_readdatavalid(avm_memdep_2_kernel_3mm_readdatavalid),
        .in_memdep_2_kernel_3mm_avm_waitrequest(avm_memdep_2_kernel_3mm_waitrequest),
        .in_memdep_2_kernel_3mm_avm_writeack(avm_memdep_2_kernel_3mm_writeack),
        .in_memdep_3_kernel_3mm_avm_readdata(avm_memdep_3_kernel_3mm_readdata),
        .in_memdep_3_kernel_3mm_avm_readdatavalid(avm_memdep_3_kernel_3mm_readdatavalid),
        .in_memdep_3_kernel_3mm_avm_waitrequest(avm_memdep_3_kernel_3mm_waitrequest),
        .in_memdep_3_kernel_3mm_avm_writeack(avm_memdep_3_kernel_3mm_writeack),
        .in_memdep_4_kernel_3mm_avm_readdata(avm_memdep_4_kernel_3mm_readdata),
        .in_memdep_4_kernel_3mm_avm_readdatavalid(avm_memdep_4_kernel_3mm_readdatavalid),
        .in_memdep_4_kernel_3mm_avm_waitrequest(avm_memdep_4_kernel_3mm_waitrequest),
        .in_memdep_4_kernel_3mm_avm_writeack(avm_memdep_4_kernel_3mm_writeack),
        .in_memdep_5_kernel_3mm_avm_readdata(avm_memdep_5_kernel_3mm_readdata),
        .in_memdep_5_kernel_3mm_avm_readdatavalid(avm_memdep_5_kernel_3mm_readdatavalid),
        .in_memdep_5_kernel_3mm_avm_waitrequest(avm_memdep_5_kernel_3mm_waitrequest),
        .in_memdep_5_kernel_3mm_avm_writeack(avm_memdep_5_kernel_3mm_writeack),
        .in_memdep_6_kernel_3mm_avm_readdata(avm_memdep_6_kernel_3mm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(avm_memdep_6_kernel_3mm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(avm_memdep_6_kernel_3mm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(avm_memdep_6_kernel_3mm_writeack),
        .in_memdep_7_kernel_3mm_avm_readdata(avm_memdep_7_kernel_3mm_readdata),
        .in_memdep_7_kernel_3mm_avm_readdatavalid(avm_memdep_7_kernel_3mm_readdatavalid),
        .in_memdep_7_kernel_3mm_avm_waitrequest(avm_memdep_7_kernel_3mm_waitrequest),
        .in_memdep_7_kernel_3mm_avm_writeack(avm_memdep_7_kernel_3mm_writeack),
        .in_memdep_8_kernel_3mm_avm_readdata(avm_memdep_8_kernel_3mm_readdata),
        .in_memdep_8_kernel_3mm_avm_readdatavalid(avm_memdep_8_kernel_3mm_readdatavalid),
        .in_memdep_8_kernel_3mm_avm_waitrequest(avm_memdep_8_kernel_3mm_waitrequest),
        .in_memdep_8_kernel_3mm_avm_writeack(avm_memdep_8_kernel_3mm_writeack),
        .in_memdep_9_kernel_3mm_avm_readdata(avm_memdep_9_kernel_3mm_readdata),
        .in_memdep_9_kernel_3mm_avm_readdatavalid(avm_memdep_9_kernel_3mm_readdatavalid),
        .in_memdep_9_kernel_3mm_avm_waitrequest(avm_memdep_9_kernel_3mm_waitrequest),
        .in_memdep_9_kernel_3mm_avm_writeack(avm_memdep_9_kernel_3mm_writeack),
        .in_memdep_kernel_3mm_avm_readdata(avm_memdep_kernel_3mm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(avm_memdep_kernel_3mm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(avm_memdep_kernel_3mm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(avm_memdep_kernel_3mm_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm10_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm10_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm10_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm10_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm11_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm11_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm11_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm11_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm11_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm12_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm12_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm12_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm12_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm13_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm13_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm13_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm13_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm14_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm14_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm14_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm14_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm14_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm15_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm15_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm15_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm15_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm15_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm16_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm16_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm16_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm16_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm16_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm17_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm17_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm17_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm17_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm17_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm19_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm19_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm19_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm19_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm19_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm20_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm20_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm20_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm20_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm20_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm21_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm21_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm21_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm21_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm21_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm23_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm23_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm23_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm23_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm23_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm24_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm24_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm24_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm24_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm24_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm25_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm25_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm25_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm25_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm25_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm27_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm27_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm27_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm27_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm27_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm28_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm28_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm28_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm28_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm28_kernel_3mm_writeack),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdata(avm_unnamed_kernel_3mm29_kernel_3mm_readdata),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_readdatavalid(avm_unnamed_kernel_3mm29_kernel_3mm_readdatavalid),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_waitrequest(avm_unnamed_kernel_3mm29_kernel_3mm_waitrequest),
        .in_unnamed_kernel_3mm29_kernel_3mm_avm_writeack(avm_unnamed_kernel_3mm29_kernel_3mm_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_memdep_10_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_10_kernel_3mm_avm_address),
        .out_memdep_10_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_10_kernel_3mm_avm_burstcount),
        .out_memdep_10_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_10_kernel_3mm_avm_byteenable),
        .out_memdep_10_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_10_kernel_3mm_avm_enable),
        .out_memdep_10_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_10_kernel_3mm_avm_read),
        .out_memdep_10_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_10_kernel_3mm_avm_write),
        .out_memdep_10_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_10_kernel_3mm_avm_writedata),
        .out_memdep_1_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata),
        .out_memdep_2_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_2_kernel_3mm_avm_address),
        .out_memdep_2_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_2_kernel_3mm_avm_burstcount),
        .out_memdep_2_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_2_kernel_3mm_avm_byteenable),
        .out_memdep_2_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_2_kernel_3mm_avm_enable),
        .out_memdep_2_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_2_kernel_3mm_avm_read),
        .out_memdep_2_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_2_kernel_3mm_avm_write),
        .out_memdep_2_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_2_kernel_3mm_avm_writedata),
        .out_memdep_3_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_3_kernel_3mm_avm_address),
        .out_memdep_3_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_3_kernel_3mm_avm_burstcount),
        .out_memdep_3_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_3_kernel_3mm_avm_byteenable),
        .out_memdep_3_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_3_kernel_3mm_avm_enable),
        .out_memdep_3_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_3_kernel_3mm_avm_read),
        .out_memdep_3_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_3_kernel_3mm_avm_write),
        .out_memdep_3_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_3_kernel_3mm_avm_writedata),
        .out_memdep_4_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_4_kernel_3mm_avm_address),
        .out_memdep_4_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_4_kernel_3mm_avm_burstcount),
        .out_memdep_4_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_4_kernel_3mm_avm_byteenable),
        .out_memdep_4_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_4_kernel_3mm_avm_enable),
        .out_memdep_4_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_4_kernel_3mm_avm_read),
        .out_memdep_4_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_4_kernel_3mm_avm_write),
        .out_memdep_4_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_4_kernel_3mm_avm_writedata),
        .out_memdep_5_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_5_kernel_3mm_avm_address),
        .out_memdep_5_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_5_kernel_3mm_avm_burstcount),
        .out_memdep_5_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_5_kernel_3mm_avm_byteenable),
        .out_memdep_5_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_5_kernel_3mm_avm_enable),
        .out_memdep_5_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_5_kernel_3mm_avm_read),
        .out_memdep_5_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_5_kernel_3mm_avm_write),
        .out_memdep_5_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_5_kernel_3mm_avm_writedata),
        .out_memdep_6_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata),
        .out_memdep_7_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_7_kernel_3mm_avm_address),
        .out_memdep_7_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_7_kernel_3mm_avm_burstcount),
        .out_memdep_7_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_7_kernel_3mm_avm_byteenable),
        .out_memdep_7_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_7_kernel_3mm_avm_enable),
        .out_memdep_7_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_7_kernel_3mm_avm_read),
        .out_memdep_7_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_7_kernel_3mm_avm_write),
        .out_memdep_7_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_7_kernel_3mm_avm_writedata),
        .out_memdep_8_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_8_kernel_3mm_avm_address),
        .out_memdep_8_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_8_kernel_3mm_avm_burstcount),
        .out_memdep_8_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_8_kernel_3mm_avm_byteenable),
        .out_memdep_8_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_8_kernel_3mm_avm_enable),
        .out_memdep_8_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_8_kernel_3mm_avm_read),
        .out_memdep_8_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_8_kernel_3mm_avm_write),
        .out_memdep_8_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_8_kernel_3mm_avm_writedata),
        .out_memdep_9_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_9_kernel_3mm_avm_address),
        .out_memdep_9_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_9_kernel_3mm_avm_burstcount),
        .out_memdep_9_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_9_kernel_3mm_avm_byteenable),
        .out_memdep_9_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_9_kernel_3mm_avm_enable),
        .out_memdep_9_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_9_kernel_3mm_avm_read),
        .out_memdep_9_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_9_kernel_3mm_avm_write),
        .out_memdep_9_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_9_kernel_3mm_avm_writedata),
        .out_memdep_kernel_3mm_avm_address(kernel_3mm_function_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(kernel_3mm_function_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(kernel_3mm_function_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(kernel_3mm_function_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata),
        .out_o_active_memdep_10(),
        .out_stall_out(),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_address(kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount(kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable(kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_enable(kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_read(kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_write(kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata(kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_10_kernel_3mm_address(GPOUT,145)
    assign avm_memdep_10_kernel_3mm_address = kernel_3mm_function_out_memdep_10_kernel_3mm_avm_address;

    // avm_memdep_10_kernel_3mm_burstcount(GPOUT,146)
    assign avm_memdep_10_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_10_kernel_3mm_avm_burstcount;

    // avm_memdep_10_kernel_3mm_byteenable(GPOUT,147)
    assign avm_memdep_10_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_10_kernel_3mm_avm_byteenable;

    // avm_memdep_10_kernel_3mm_enable(GPOUT,148)
    assign avm_memdep_10_kernel_3mm_enable = kernel_3mm_function_out_memdep_10_kernel_3mm_avm_enable;

    // avm_memdep_10_kernel_3mm_read(GPOUT,149)
    assign avm_memdep_10_kernel_3mm_read = kernel_3mm_function_out_memdep_10_kernel_3mm_avm_read;

    // avm_memdep_10_kernel_3mm_write(GPOUT,150)
    assign avm_memdep_10_kernel_3mm_write = kernel_3mm_function_out_memdep_10_kernel_3mm_avm_write;

    // avm_memdep_10_kernel_3mm_writedata(GPOUT,151)
    assign avm_memdep_10_kernel_3mm_writedata = kernel_3mm_function_out_memdep_10_kernel_3mm_avm_writedata;

    // avm_memdep_1_kernel_3mm_address(GPOUT,152)
    assign avm_memdep_1_kernel_3mm_address = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_address;

    // avm_memdep_1_kernel_3mm_burstcount(GPOUT,153)
    assign avm_memdep_1_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_burstcount;

    // avm_memdep_1_kernel_3mm_byteenable(GPOUT,154)
    assign avm_memdep_1_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_byteenable;

    // avm_memdep_1_kernel_3mm_enable(GPOUT,155)
    assign avm_memdep_1_kernel_3mm_enable = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_enable;

    // avm_memdep_1_kernel_3mm_read(GPOUT,156)
    assign avm_memdep_1_kernel_3mm_read = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_read;

    // avm_memdep_1_kernel_3mm_write(GPOUT,157)
    assign avm_memdep_1_kernel_3mm_write = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_write;

    // avm_memdep_1_kernel_3mm_writedata(GPOUT,158)
    assign avm_memdep_1_kernel_3mm_writedata = kernel_3mm_function_out_memdep_1_kernel_3mm_avm_writedata;

    // avm_memdep_2_kernel_3mm_address(GPOUT,159)
    assign avm_memdep_2_kernel_3mm_address = kernel_3mm_function_out_memdep_2_kernel_3mm_avm_address;

    // avm_memdep_2_kernel_3mm_burstcount(GPOUT,160)
    assign avm_memdep_2_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_2_kernel_3mm_avm_burstcount;

    // avm_memdep_2_kernel_3mm_byteenable(GPOUT,161)
    assign avm_memdep_2_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_2_kernel_3mm_avm_byteenable;

    // avm_memdep_2_kernel_3mm_enable(GPOUT,162)
    assign avm_memdep_2_kernel_3mm_enable = kernel_3mm_function_out_memdep_2_kernel_3mm_avm_enable;

    // avm_memdep_2_kernel_3mm_read(GPOUT,163)
    assign avm_memdep_2_kernel_3mm_read = kernel_3mm_function_out_memdep_2_kernel_3mm_avm_read;

    // avm_memdep_2_kernel_3mm_write(GPOUT,164)
    assign avm_memdep_2_kernel_3mm_write = kernel_3mm_function_out_memdep_2_kernel_3mm_avm_write;

    // avm_memdep_2_kernel_3mm_writedata(GPOUT,165)
    assign avm_memdep_2_kernel_3mm_writedata = kernel_3mm_function_out_memdep_2_kernel_3mm_avm_writedata;

    // avm_memdep_3_kernel_3mm_address(GPOUT,166)
    assign avm_memdep_3_kernel_3mm_address = kernel_3mm_function_out_memdep_3_kernel_3mm_avm_address;

    // avm_memdep_3_kernel_3mm_burstcount(GPOUT,167)
    assign avm_memdep_3_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_3_kernel_3mm_avm_burstcount;

    // avm_memdep_3_kernel_3mm_byteenable(GPOUT,168)
    assign avm_memdep_3_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_3_kernel_3mm_avm_byteenable;

    // avm_memdep_3_kernel_3mm_enable(GPOUT,169)
    assign avm_memdep_3_kernel_3mm_enable = kernel_3mm_function_out_memdep_3_kernel_3mm_avm_enable;

    // avm_memdep_3_kernel_3mm_read(GPOUT,170)
    assign avm_memdep_3_kernel_3mm_read = kernel_3mm_function_out_memdep_3_kernel_3mm_avm_read;

    // avm_memdep_3_kernel_3mm_write(GPOUT,171)
    assign avm_memdep_3_kernel_3mm_write = kernel_3mm_function_out_memdep_3_kernel_3mm_avm_write;

    // avm_memdep_3_kernel_3mm_writedata(GPOUT,172)
    assign avm_memdep_3_kernel_3mm_writedata = kernel_3mm_function_out_memdep_3_kernel_3mm_avm_writedata;

    // avm_memdep_4_kernel_3mm_address(GPOUT,173)
    assign avm_memdep_4_kernel_3mm_address = kernel_3mm_function_out_memdep_4_kernel_3mm_avm_address;

    // avm_memdep_4_kernel_3mm_burstcount(GPOUT,174)
    assign avm_memdep_4_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_4_kernel_3mm_avm_burstcount;

    // avm_memdep_4_kernel_3mm_byteenable(GPOUT,175)
    assign avm_memdep_4_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_4_kernel_3mm_avm_byteenable;

    // avm_memdep_4_kernel_3mm_enable(GPOUT,176)
    assign avm_memdep_4_kernel_3mm_enable = kernel_3mm_function_out_memdep_4_kernel_3mm_avm_enable;

    // avm_memdep_4_kernel_3mm_read(GPOUT,177)
    assign avm_memdep_4_kernel_3mm_read = kernel_3mm_function_out_memdep_4_kernel_3mm_avm_read;

    // avm_memdep_4_kernel_3mm_write(GPOUT,178)
    assign avm_memdep_4_kernel_3mm_write = kernel_3mm_function_out_memdep_4_kernel_3mm_avm_write;

    // avm_memdep_4_kernel_3mm_writedata(GPOUT,179)
    assign avm_memdep_4_kernel_3mm_writedata = kernel_3mm_function_out_memdep_4_kernel_3mm_avm_writedata;

    // avm_memdep_5_kernel_3mm_address(GPOUT,180)
    assign avm_memdep_5_kernel_3mm_address = kernel_3mm_function_out_memdep_5_kernel_3mm_avm_address;

    // avm_memdep_5_kernel_3mm_burstcount(GPOUT,181)
    assign avm_memdep_5_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_5_kernel_3mm_avm_burstcount;

    // avm_memdep_5_kernel_3mm_byteenable(GPOUT,182)
    assign avm_memdep_5_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_5_kernel_3mm_avm_byteenable;

    // avm_memdep_5_kernel_3mm_enable(GPOUT,183)
    assign avm_memdep_5_kernel_3mm_enable = kernel_3mm_function_out_memdep_5_kernel_3mm_avm_enable;

    // avm_memdep_5_kernel_3mm_read(GPOUT,184)
    assign avm_memdep_5_kernel_3mm_read = kernel_3mm_function_out_memdep_5_kernel_3mm_avm_read;

    // avm_memdep_5_kernel_3mm_write(GPOUT,185)
    assign avm_memdep_5_kernel_3mm_write = kernel_3mm_function_out_memdep_5_kernel_3mm_avm_write;

    // avm_memdep_5_kernel_3mm_writedata(GPOUT,186)
    assign avm_memdep_5_kernel_3mm_writedata = kernel_3mm_function_out_memdep_5_kernel_3mm_avm_writedata;

    // avm_memdep_6_kernel_3mm_address(GPOUT,187)
    assign avm_memdep_6_kernel_3mm_address = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_address;

    // avm_memdep_6_kernel_3mm_burstcount(GPOUT,188)
    assign avm_memdep_6_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_burstcount;

    // avm_memdep_6_kernel_3mm_byteenable(GPOUT,189)
    assign avm_memdep_6_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_byteenable;

    // avm_memdep_6_kernel_3mm_enable(GPOUT,190)
    assign avm_memdep_6_kernel_3mm_enable = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_enable;

    // avm_memdep_6_kernel_3mm_read(GPOUT,191)
    assign avm_memdep_6_kernel_3mm_read = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_read;

    // avm_memdep_6_kernel_3mm_write(GPOUT,192)
    assign avm_memdep_6_kernel_3mm_write = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_write;

    // avm_memdep_6_kernel_3mm_writedata(GPOUT,193)
    assign avm_memdep_6_kernel_3mm_writedata = kernel_3mm_function_out_memdep_6_kernel_3mm_avm_writedata;

    // avm_memdep_7_kernel_3mm_address(GPOUT,194)
    assign avm_memdep_7_kernel_3mm_address = kernel_3mm_function_out_memdep_7_kernel_3mm_avm_address;

    // avm_memdep_7_kernel_3mm_burstcount(GPOUT,195)
    assign avm_memdep_7_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_7_kernel_3mm_avm_burstcount;

    // avm_memdep_7_kernel_3mm_byteenable(GPOUT,196)
    assign avm_memdep_7_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_7_kernel_3mm_avm_byteenable;

    // avm_memdep_7_kernel_3mm_enable(GPOUT,197)
    assign avm_memdep_7_kernel_3mm_enable = kernel_3mm_function_out_memdep_7_kernel_3mm_avm_enable;

    // avm_memdep_7_kernel_3mm_read(GPOUT,198)
    assign avm_memdep_7_kernel_3mm_read = kernel_3mm_function_out_memdep_7_kernel_3mm_avm_read;

    // avm_memdep_7_kernel_3mm_write(GPOUT,199)
    assign avm_memdep_7_kernel_3mm_write = kernel_3mm_function_out_memdep_7_kernel_3mm_avm_write;

    // avm_memdep_7_kernel_3mm_writedata(GPOUT,200)
    assign avm_memdep_7_kernel_3mm_writedata = kernel_3mm_function_out_memdep_7_kernel_3mm_avm_writedata;

    // avm_memdep_8_kernel_3mm_address(GPOUT,201)
    assign avm_memdep_8_kernel_3mm_address = kernel_3mm_function_out_memdep_8_kernel_3mm_avm_address;

    // avm_memdep_8_kernel_3mm_burstcount(GPOUT,202)
    assign avm_memdep_8_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_8_kernel_3mm_avm_burstcount;

    // avm_memdep_8_kernel_3mm_byteenable(GPOUT,203)
    assign avm_memdep_8_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_8_kernel_3mm_avm_byteenable;

    // avm_memdep_8_kernel_3mm_enable(GPOUT,204)
    assign avm_memdep_8_kernel_3mm_enable = kernel_3mm_function_out_memdep_8_kernel_3mm_avm_enable;

    // avm_memdep_8_kernel_3mm_read(GPOUT,205)
    assign avm_memdep_8_kernel_3mm_read = kernel_3mm_function_out_memdep_8_kernel_3mm_avm_read;

    // avm_memdep_8_kernel_3mm_write(GPOUT,206)
    assign avm_memdep_8_kernel_3mm_write = kernel_3mm_function_out_memdep_8_kernel_3mm_avm_write;

    // avm_memdep_8_kernel_3mm_writedata(GPOUT,207)
    assign avm_memdep_8_kernel_3mm_writedata = kernel_3mm_function_out_memdep_8_kernel_3mm_avm_writedata;

    // avm_memdep_9_kernel_3mm_address(GPOUT,208)
    assign avm_memdep_9_kernel_3mm_address = kernel_3mm_function_out_memdep_9_kernel_3mm_avm_address;

    // avm_memdep_9_kernel_3mm_burstcount(GPOUT,209)
    assign avm_memdep_9_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_9_kernel_3mm_avm_burstcount;

    // avm_memdep_9_kernel_3mm_byteenable(GPOUT,210)
    assign avm_memdep_9_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_9_kernel_3mm_avm_byteenable;

    // avm_memdep_9_kernel_3mm_enable(GPOUT,211)
    assign avm_memdep_9_kernel_3mm_enable = kernel_3mm_function_out_memdep_9_kernel_3mm_avm_enable;

    // avm_memdep_9_kernel_3mm_read(GPOUT,212)
    assign avm_memdep_9_kernel_3mm_read = kernel_3mm_function_out_memdep_9_kernel_3mm_avm_read;

    // avm_memdep_9_kernel_3mm_write(GPOUT,213)
    assign avm_memdep_9_kernel_3mm_write = kernel_3mm_function_out_memdep_9_kernel_3mm_avm_write;

    // avm_memdep_9_kernel_3mm_writedata(GPOUT,214)
    assign avm_memdep_9_kernel_3mm_writedata = kernel_3mm_function_out_memdep_9_kernel_3mm_avm_writedata;

    // avm_memdep_kernel_3mm_address(GPOUT,215)
    assign avm_memdep_kernel_3mm_address = kernel_3mm_function_out_memdep_kernel_3mm_avm_address;

    // avm_memdep_kernel_3mm_burstcount(GPOUT,216)
    assign avm_memdep_kernel_3mm_burstcount = kernel_3mm_function_out_memdep_kernel_3mm_avm_burstcount;

    // avm_memdep_kernel_3mm_byteenable(GPOUT,217)
    assign avm_memdep_kernel_3mm_byteenable = kernel_3mm_function_out_memdep_kernel_3mm_avm_byteenable;

    // avm_memdep_kernel_3mm_enable(GPOUT,218)
    assign avm_memdep_kernel_3mm_enable = kernel_3mm_function_out_memdep_kernel_3mm_avm_enable;

    // avm_memdep_kernel_3mm_read(GPOUT,219)
    assign avm_memdep_kernel_3mm_read = kernel_3mm_function_out_memdep_kernel_3mm_avm_read;

    // avm_memdep_kernel_3mm_write(GPOUT,220)
    assign avm_memdep_kernel_3mm_write = kernel_3mm_function_out_memdep_kernel_3mm_avm_write;

    // avm_memdep_kernel_3mm_writedata(GPOUT,221)
    assign avm_memdep_kernel_3mm_writedata = kernel_3mm_function_out_memdep_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm10_kernel_3mm_address(GPOUT,222)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm10_kernel_3mm_burstcount(GPOUT,223)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm10_kernel_3mm_byteenable(GPOUT,224)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm10_kernel_3mm_enable(GPOUT,225)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm10_kernel_3mm_read(GPOUT,226)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm10_kernel_3mm_write(GPOUT,227)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm10_kernel_3mm_writedata(GPOUT,228)
    assign avm_unnamed_kernel_3mm10_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm11_kernel_3mm_address(GPOUT,229)
    assign avm_unnamed_kernel_3mm11_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm11_kernel_3mm_burstcount(GPOUT,230)
    assign avm_unnamed_kernel_3mm11_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm11_kernel_3mm_byteenable(GPOUT,231)
    assign avm_unnamed_kernel_3mm11_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm11_kernel_3mm_enable(GPOUT,232)
    assign avm_unnamed_kernel_3mm11_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm11_kernel_3mm_read(GPOUT,233)
    assign avm_unnamed_kernel_3mm11_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm11_kernel_3mm_write(GPOUT,234)
    assign avm_unnamed_kernel_3mm11_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm11_kernel_3mm_writedata(GPOUT,235)
    assign avm_unnamed_kernel_3mm11_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm11_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm12_kernel_3mm_address(GPOUT,236)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm12_kernel_3mm_burstcount(GPOUT,237)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm12_kernel_3mm_byteenable(GPOUT,238)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm12_kernel_3mm_enable(GPOUT,239)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm12_kernel_3mm_read(GPOUT,240)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm12_kernel_3mm_write(GPOUT,241)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm12_kernel_3mm_writedata(GPOUT,242)
    assign avm_unnamed_kernel_3mm12_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm13_kernel_3mm_address(GPOUT,243)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm13_kernel_3mm_burstcount(GPOUT,244)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm13_kernel_3mm_byteenable(GPOUT,245)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm13_kernel_3mm_enable(GPOUT,246)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm13_kernel_3mm_read(GPOUT,247)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm13_kernel_3mm_write(GPOUT,248)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm13_kernel_3mm_writedata(GPOUT,249)
    assign avm_unnamed_kernel_3mm13_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm14_kernel_3mm_address(GPOUT,250)
    assign avm_unnamed_kernel_3mm14_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm14_kernel_3mm_burstcount(GPOUT,251)
    assign avm_unnamed_kernel_3mm14_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm14_kernel_3mm_byteenable(GPOUT,252)
    assign avm_unnamed_kernel_3mm14_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm14_kernel_3mm_enable(GPOUT,253)
    assign avm_unnamed_kernel_3mm14_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm14_kernel_3mm_read(GPOUT,254)
    assign avm_unnamed_kernel_3mm14_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm14_kernel_3mm_write(GPOUT,255)
    assign avm_unnamed_kernel_3mm14_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm14_kernel_3mm_writedata(GPOUT,256)
    assign avm_unnamed_kernel_3mm14_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm14_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm15_kernel_3mm_address(GPOUT,257)
    assign avm_unnamed_kernel_3mm15_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm15_kernel_3mm_burstcount(GPOUT,258)
    assign avm_unnamed_kernel_3mm15_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm15_kernel_3mm_byteenable(GPOUT,259)
    assign avm_unnamed_kernel_3mm15_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm15_kernel_3mm_enable(GPOUT,260)
    assign avm_unnamed_kernel_3mm15_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm15_kernel_3mm_read(GPOUT,261)
    assign avm_unnamed_kernel_3mm15_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm15_kernel_3mm_write(GPOUT,262)
    assign avm_unnamed_kernel_3mm15_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm15_kernel_3mm_writedata(GPOUT,263)
    assign avm_unnamed_kernel_3mm15_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm15_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm16_kernel_3mm_address(GPOUT,264)
    assign avm_unnamed_kernel_3mm16_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm16_kernel_3mm_burstcount(GPOUT,265)
    assign avm_unnamed_kernel_3mm16_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm16_kernel_3mm_byteenable(GPOUT,266)
    assign avm_unnamed_kernel_3mm16_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm16_kernel_3mm_enable(GPOUT,267)
    assign avm_unnamed_kernel_3mm16_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm16_kernel_3mm_read(GPOUT,268)
    assign avm_unnamed_kernel_3mm16_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm16_kernel_3mm_write(GPOUT,269)
    assign avm_unnamed_kernel_3mm16_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm16_kernel_3mm_writedata(GPOUT,270)
    assign avm_unnamed_kernel_3mm16_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm16_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm17_kernel_3mm_address(GPOUT,271)
    assign avm_unnamed_kernel_3mm17_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm17_kernel_3mm_burstcount(GPOUT,272)
    assign avm_unnamed_kernel_3mm17_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm17_kernel_3mm_byteenable(GPOUT,273)
    assign avm_unnamed_kernel_3mm17_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm17_kernel_3mm_enable(GPOUT,274)
    assign avm_unnamed_kernel_3mm17_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm17_kernel_3mm_read(GPOUT,275)
    assign avm_unnamed_kernel_3mm17_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm17_kernel_3mm_write(GPOUT,276)
    assign avm_unnamed_kernel_3mm17_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm17_kernel_3mm_writedata(GPOUT,277)
    assign avm_unnamed_kernel_3mm17_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm17_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm19_kernel_3mm_address(GPOUT,278)
    assign avm_unnamed_kernel_3mm19_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm19_kernel_3mm_burstcount(GPOUT,279)
    assign avm_unnamed_kernel_3mm19_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm19_kernel_3mm_byteenable(GPOUT,280)
    assign avm_unnamed_kernel_3mm19_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm19_kernel_3mm_enable(GPOUT,281)
    assign avm_unnamed_kernel_3mm19_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm19_kernel_3mm_read(GPOUT,282)
    assign avm_unnamed_kernel_3mm19_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm19_kernel_3mm_write(GPOUT,283)
    assign avm_unnamed_kernel_3mm19_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm19_kernel_3mm_writedata(GPOUT,284)
    assign avm_unnamed_kernel_3mm19_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm19_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm20_kernel_3mm_address(GPOUT,285)
    assign avm_unnamed_kernel_3mm20_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm20_kernel_3mm_burstcount(GPOUT,286)
    assign avm_unnamed_kernel_3mm20_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm20_kernel_3mm_byteenable(GPOUT,287)
    assign avm_unnamed_kernel_3mm20_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm20_kernel_3mm_enable(GPOUT,288)
    assign avm_unnamed_kernel_3mm20_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm20_kernel_3mm_read(GPOUT,289)
    assign avm_unnamed_kernel_3mm20_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm20_kernel_3mm_write(GPOUT,290)
    assign avm_unnamed_kernel_3mm20_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm20_kernel_3mm_writedata(GPOUT,291)
    assign avm_unnamed_kernel_3mm20_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm20_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm21_kernel_3mm_address(GPOUT,292)
    assign avm_unnamed_kernel_3mm21_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm21_kernel_3mm_burstcount(GPOUT,293)
    assign avm_unnamed_kernel_3mm21_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm21_kernel_3mm_byteenable(GPOUT,294)
    assign avm_unnamed_kernel_3mm21_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm21_kernel_3mm_enable(GPOUT,295)
    assign avm_unnamed_kernel_3mm21_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm21_kernel_3mm_read(GPOUT,296)
    assign avm_unnamed_kernel_3mm21_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm21_kernel_3mm_write(GPOUT,297)
    assign avm_unnamed_kernel_3mm21_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm21_kernel_3mm_writedata(GPOUT,298)
    assign avm_unnamed_kernel_3mm21_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm21_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm23_kernel_3mm_address(GPOUT,299)
    assign avm_unnamed_kernel_3mm23_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm23_kernel_3mm_burstcount(GPOUT,300)
    assign avm_unnamed_kernel_3mm23_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm23_kernel_3mm_byteenable(GPOUT,301)
    assign avm_unnamed_kernel_3mm23_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm23_kernel_3mm_enable(GPOUT,302)
    assign avm_unnamed_kernel_3mm23_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm23_kernel_3mm_read(GPOUT,303)
    assign avm_unnamed_kernel_3mm23_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm23_kernel_3mm_write(GPOUT,304)
    assign avm_unnamed_kernel_3mm23_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm23_kernel_3mm_writedata(GPOUT,305)
    assign avm_unnamed_kernel_3mm23_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm23_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm24_kernel_3mm_address(GPOUT,306)
    assign avm_unnamed_kernel_3mm24_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm24_kernel_3mm_burstcount(GPOUT,307)
    assign avm_unnamed_kernel_3mm24_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm24_kernel_3mm_byteenable(GPOUT,308)
    assign avm_unnamed_kernel_3mm24_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm24_kernel_3mm_enable(GPOUT,309)
    assign avm_unnamed_kernel_3mm24_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm24_kernel_3mm_read(GPOUT,310)
    assign avm_unnamed_kernel_3mm24_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm24_kernel_3mm_write(GPOUT,311)
    assign avm_unnamed_kernel_3mm24_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm24_kernel_3mm_writedata(GPOUT,312)
    assign avm_unnamed_kernel_3mm24_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm24_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm25_kernel_3mm_address(GPOUT,313)
    assign avm_unnamed_kernel_3mm25_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm25_kernel_3mm_burstcount(GPOUT,314)
    assign avm_unnamed_kernel_3mm25_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm25_kernel_3mm_byteenable(GPOUT,315)
    assign avm_unnamed_kernel_3mm25_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm25_kernel_3mm_enable(GPOUT,316)
    assign avm_unnamed_kernel_3mm25_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm25_kernel_3mm_read(GPOUT,317)
    assign avm_unnamed_kernel_3mm25_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm25_kernel_3mm_write(GPOUT,318)
    assign avm_unnamed_kernel_3mm25_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm25_kernel_3mm_writedata(GPOUT,319)
    assign avm_unnamed_kernel_3mm25_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm25_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm27_kernel_3mm_address(GPOUT,320)
    assign avm_unnamed_kernel_3mm27_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm27_kernel_3mm_burstcount(GPOUT,321)
    assign avm_unnamed_kernel_3mm27_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm27_kernel_3mm_byteenable(GPOUT,322)
    assign avm_unnamed_kernel_3mm27_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm27_kernel_3mm_enable(GPOUT,323)
    assign avm_unnamed_kernel_3mm27_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm27_kernel_3mm_read(GPOUT,324)
    assign avm_unnamed_kernel_3mm27_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm27_kernel_3mm_write(GPOUT,325)
    assign avm_unnamed_kernel_3mm27_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm27_kernel_3mm_writedata(GPOUT,326)
    assign avm_unnamed_kernel_3mm27_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm27_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm28_kernel_3mm_address(GPOUT,327)
    assign avm_unnamed_kernel_3mm28_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm28_kernel_3mm_burstcount(GPOUT,328)
    assign avm_unnamed_kernel_3mm28_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm28_kernel_3mm_byteenable(GPOUT,329)
    assign avm_unnamed_kernel_3mm28_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm28_kernel_3mm_enable(GPOUT,330)
    assign avm_unnamed_kernel_3mm28_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm28_kernel_3mm_read(GPOUT,331)
    assign avm_unnamed_kernel_3mm28_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm28_kernel_3mm_write(GPOUT,332)
    assign avm_unnamed_kernel_3mm28_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm28_kernel_3mm_writedata(GPOUT,333)
    assign avm_unnamed_kernel_3mm28_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm28_kernel_3mm_avm_writedata;

    // avm_unnamed_kernel_3mm29_kernel_3mm_address(GPOUT,334)
    assign avm_unnamed_kernel_3mm29_kernel_3mm_address = kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_address;

    // avm_unnamed_kernel_3mm29_kernel_3mm_burstcount(GPOUT,335)
    assign avm_unnamed_kernel_3mm29_kernel_3mm_burstcount = kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_burstcount;

    // avm_unnamed_kernel_3mm29_kernel_3mm_byteenable(GPOUT,336)
    assign avm_unnamed_kernel_3mm29_kernel_3mm_byteenable = kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_byteenable;

    // avm_unnamed_kernel_3mm29_kernel_3mm_enable(GPOUT,337)
    assign avm_unnamed_kernel_3mm29_kernel_3mm_enable = kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_enable;

    // avm_unnamed_kernel_3mm29_kernel_3mm_read(GPOUT,338)
    assign avm_unnamed_kernel_3mm29_kernel_3mm_read = kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_read;

    // avm_unnamed_kernel_3mm29_kernel_3mm_write(GPOUT,339)
    assign avm_unnamed_kernel_3mm29_kernel_3mm_write = kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_write;

    // avm_unnamed_kernel_3mm29_kernel_3mm_writedata(GPOUT,340)
    assign avm_unnamed_kernel_3mm29_kernel_3mm_writedata = kernel_3mm_function_out_unnamed_kernel_3mm29_kernel_3mm_avm_writedata;

    // avst_iord_bl_call_kernel_3mm_almost_full(GPOUT,341)
    assign avst_iord_bl_call_kernel_3mm_almost_full = kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // avst_iord_bl_call_kernel_3mm_ready(GPOUT,342)
    assign avst_iord_bl_call_kernel_3mm_ready = kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready;

    // avst_iowr_bl_return_kernel_3mm_data(GPOUT,343)
    assign avst_iowr_bl_return_kernel_3mm_data = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // avst_iowr_bl_return_kernel_3mm_valid(GPOUT,344)
    assign avst_iowr_bl_return_kernel_3mm_valid = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // not_ready(LOGICAL,143)
    assign not_ready_q = ~ (kernel_3mm_function_out_iord_bl_call_kernel_3mm_o_fifoready);

    // busy_and(LOGICAL,9)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,348)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,347)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,10)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,345)
    assign busy = busy_or_q;

    // done(GPOUT,346)
    assign done = kernel_3mm_function_out_iowr_bl_return_kernel_3mm_o_fifovalid;

endmodule
