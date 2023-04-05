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
// SystemVerilog created on Wed Apr  5 01:12:29 2023


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
    input wire [31:0] in_memdep_2_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_2_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_3_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_3_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_3_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_3_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_4_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_4_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_5_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_5_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_5_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_5_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_6_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_6_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_6_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_6_kernel_2mm_avm_writeack,
    input wire [63:0] in_memdep_7_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_7_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_7_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_7_kernel_2mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_2mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_2mm_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm17_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm18_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_2mm21_kernel_2mm_avm_writeack,
    input wire [63:0] in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata,
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
    output wire [31:0] out_memdep_2_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_2_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_2_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_2_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_3_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_3_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_3_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_3_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_4_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_4_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_4_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_5_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_5_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_5_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_5_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_6_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_6_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_6_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_6_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_6_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_6_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_6_kernel_2mm_avm_writedata,
    output wire [63:0] out_memdep_7_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_burstcount,
    output wire [7:0] out_memdep_7_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_7_kernel_2mm_avm_write,
    output wire [63:0] out_memdep_7_kernel_2mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_2mm_avm_address,
    output wire [0:0] out_memdep_kernel_2mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_2mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_2mm_avm_enable,
    output wire [0:0] out_memdep_kernel_2mm_avm_read,
    output wire [0:0] out_memdep_kernel_2mm_avm_write,
    output wire [31:0] out_memdep_kernel_2mm_avm_writedata,
    output wire [0:0] out_o_active_memdep_7,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_write,
    output wire [31:0] out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata,
    output wire [63:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_address,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount,
    output wire [7:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_read,
    output wire [0:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_write,
    output wire [63:0] out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kernel_2mm_B0_runOnce_out_stall_out_0;
    wire [63:0] bb_kernel_2mm_B10_out_c0_exe2252;
    wire [31:0] bb_kernel_2mm_B10_out_c0_exe3253;
    wire [0:0] bb_kernel_2mm_B10_out_c0_exe5255;
    wire [63:0] bb_kernel_2mm_B10_out_c0_exe6256;
    wire [0:0] bb_kernel_2mm_B10_out_c0_exe7257;
    wire [0:0] bb_kernel_2mm_B10_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B10_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B10_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B10_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B10_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B10_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B10_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B10_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B11_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B11_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B12_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B12_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B12_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B13_out_c0_exe1277;
    wire [63:0] bb_kernel_2mm_B13_out_c0_exe2278;
    wire [63:0] bb_kernel_2mm_B13_out_c0_exe3279;
    wire [31:0] bb_kernel_2mm_B13_out_c0_exe4280;
    wire [0:0] bb_kernel_2mm_B13_out_c0_exe6282;
    wire [0:0] bb_kernel_2mm_B13_out_c0_exe7283;
    wire [63:0] bb_kernel_2mm_B13_out_c0_exe8284;
    wire [0:0] bb_kernel_2mm_B13_out_c0_exe9285;
    wire [0:0] bb_kernel_2mm_B13_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B13_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B13_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B13_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B13_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B13_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B13_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B13_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B14_out_c0_exe431711;
    wire [31:0] bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B14_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B14_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B14_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B15_out_c0_exe2315;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe4317;
    wire [63:0] bb_kernel_2mm_B15_out_c0_exe5318;
    wire [0:0] bb_kernel_2mm_B15_out_c0_exe6319;
    wire [0:0] bb_kernel_2mm_B15_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B15_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B15_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B15_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B15_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B15_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B15_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B15_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B15_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B16_out_c0_exe2330;
    wire [31:0] bb_kernel_2mm_B16_out_c0_exe3331;
    wire [0:0] bb_kernel_2mm_B16_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B16_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B16_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B16_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B16_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B16_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B16_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B16_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B17_out_feedback_out_1;
    wire [0:0] bb_kernel_2mm_B17_out_feedback_valid_out_1;
    wire [0:0] bb_kernel_2mm_B17_out_iowr_bl_return_kernel_2mm_o_fifodata;
    wire [0:0] bb_kernel_2mm_B17_out_iowr_bl_return_kernel_2mm_o_fifovalid;
    wire [0:0] bb_kernel_2mm_B17_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B17_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B17_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B18_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B18_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B18_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B19_out_c0_exe3345;
    wire [0:0] bb_kernel_2mm_B19_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B19_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B19_out_lsu_memdep_7_o_active;
    wire [63:0] bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B19_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B19_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B19_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B19_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B19_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B19_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B19_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_feedback_stall_out_1;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0;
    wire [31:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_4_0;
    wire [63:0] bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_5_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;
    wire [0:0] bb_kernel_2mm_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B1_start_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B2_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B3_out_c0_exe2;
    wire [31:0] bb_kernel_2mm_B3_out_c0_exe3;
    wire [0:0] bb_kernel_2mm_B3_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B3_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B3_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B3_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B3_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B3_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B3_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B3_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B4_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B4_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B4_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B5_out_c0_exe12;
    wire [0:0] bb_kernel_2mm_B5_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B5_out_exiting_valid_out;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_writedata;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B5_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B5_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B5_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B5_out_stall_out_1;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;
    wire [7:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    wire [63:0] bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B5_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B5_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B5_out_valid_out_0;
    wire [0:0] bb_kernel_2mm_B6_out_c0_exe2204;
    wire [31:0] bb_kernel_2mm_B6_out_c0_exe3205;
    wire [0:0] bb_kernel_2mm_B6_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B6_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B6_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B6_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B6_out_stall_out_1;
    wire [0:0] bb_kernel_2mm_B6_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B6_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B6_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B7_out_c0_exe22522;
    wire [0:0] bb_kernel_2mm_B7_out_c0_exe52555;
    wire [0:0] bb_kernel_2mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B7_out_valid_out_0;
    wire [31:0] bb_kernel_2mm_B8_out_c0_exe10233;
    wire [31:0] bb_kernel_2mm_B8_out_c0_exe1224;
    wire [63:0] bb_kernel_2mm_B8_out_c0_exe2225;
    wire [63:0] bb_kernel_2mm_B8_out_c0_exe3226;
    wire [63:0] bb_kernel_2mm_B8_out_c0_exe4227;
    wire [31:0] bb_kernel_2mm_B8_out_c0_exe5228;
    wire [0:0] bb_kernel_2mm_B8_out_c0_exe7230;
    wire [0:0] bb_kernel_2mm_B8_out_c0_exe8231;
    wire [0:0] bb_kernel_2mm_B8_out_c0_exe9232;
    wire [0:0] bb_kernel_2mm_B8_out_exiting_stall_out;
    wire [0:0] bb_kernel_2mm_B8_out_exiting_valid_out;
    wire [0:0] bb_kernel_2mm_B8_out_pipeline_valid_out;
    wire [0:0] bb_kernel_2mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B8_out_stall_out_1;
    wire [31:0] bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B8_out_valid_in_0;
    wire [0:0] bb_kernel_2mm_B8_out_valid_in_1;
    wire [0:0] bb_kernel_2mm_B8_out_valid_out_0;
    wire [63:0] bb_kernel_2mm_B9_out_c0_exe22523;
    wire [0:0] bb_kernel_2mm_B9_out_c0_exe52556;
    wire [31:0] bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_address;
    wire [0:0] bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_burstcount;
    wire [3:0] bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_byteenable;
    wire [0:0] bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_enable;
    wire [0:0] bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_read;
    wire [0:0] bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_write;
    wire [31:0] bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_writedata;
    wire [0:0] bb_kernel_2mm_B9_out_stall_in_0;
    wire [0:0] bb_kernel_2mm_B9_out_stall_out_0;
    wire [0:0] bb_kernel_2mm_B9_out_valid_out_0;
    wire [1:0] c_i2_0108_q;
    wire [63:0] c_i32_addrspace_64_undef52_q;
    wire [31:0] c_i32_undef104_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo_out_valid_out;
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
    wire [0:0] kernel_2mm_B10_x_i_capture;
    wire kernel_2mm_B10_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_clear;
    wire kernel_2mm_B10_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_enable;
    wire kernel_2mm_B10_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_shift;
    wire kernel_2mm_B10_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_stall_pred;
    wire kernel_2mm_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_stall_succ;
    wire kernel_2mm_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_valid_loop;
    wire kernel_2mm_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_valid_pred;
    wire kernel_2mm_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B10_x_i_valid_succ;
    wire kernel_2mm_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_capture;
    wire kernel_2mm_B13_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_clear;
    wire kernel_2mm_B13_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_enable;
    wire kernel_2mm_B13_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_shift;
    wire kernel_2mm_B13_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_stall_pred;
    wire kernel_2mm_B13_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_stall_succ;
    wire kernel_2mm_B13_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_valid_loop;
    wire kernel_2mm_B13_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_valid_pred;
    wire kernel_2mm_B13_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B13_x_i_valid_succ;
    wire kernel_2mm_B13_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_capture;
    wire kernel_2mm_B15_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_clear;
    wire kernel_2mm_B15_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_enable;
    wire kernel_2mm_B15_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_shift;
    wire kernel_2mm_B15_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_stall_pred;
    wire kernel_2mm_B15_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_stall_succ;
    wire kernel_2mm_B15_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_valid_loop;
    wire kernel_2mm_B15_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_valid_pred;
    wire kernel_2mm_B15_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B15_x_i_valid_succ;
    wire kernel_2mm_B15_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_capture;
    wire kernel_2mm_B16_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_clear;
    wire kernel_2mm_B16_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_enable;
    wire kernel_2mm_B16_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_shift;
    wire kernel_2mm_B16_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_stall_pred;
    wire kernel_2mm_B16_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_stall_succ;
    wire kernel_2mm_B16_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_valid_loop;
    wire kernel_2mm_B16_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_valid_pred;
    wire kernel_2mm_B16_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B16_x_i_valid_succ;
    wire kernel_2mm_B16_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_capture;
    wire kernel_2mm_B19_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_clear;
    wire kernel_2mm_B19_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_enable;
    wire kernel_2mm_B19_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_shift;
    wire kernel_2mm_B19_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_stall_pred;
    wire kernel_2mm_B19_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_stall_succ;
    wire kernel_2mm_B19_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_valid_loop;
    wire kernel_2mm_B19_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_valid_pred;
    wire kernel_2mm_B19_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B19_x_i_valid_succ;
    wire kernel_2mm_B19_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_capture;
    wire kernel_2mm_B3_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_clear;
    wire kernel_2mm_B3_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_enable;
    wire kernel_2mm_B3_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_shift;
    wire kernel_2mm_B3_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_stall_pred;
    wire kernel_2mm_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_stall_succ;
    wire kernel_2mm_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_valid_loop;
    wire kernel_2mm_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_valid_pred;
    wire kernel_2mm_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B3_x_i_valid_succ;
    wire kernel_2mm_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_capture;
    wire kernel_2mm_B5_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_clear;
    wire kernel_2mm_B5_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_enable;
    wire kernel_2mm_B5_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_shift;
    wire kernel_2mm_B5_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_stall_pred;
    wire kernel_2mm_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_stall_succ;
    wire kernel_2mm_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_valid_loop;
    wire kernel_2mm_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_valid_pred;
    wire kernel_2mm_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B5_x_i_valid_succ;
    wire kernel_2mm_B5_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] kernel_2mm_B8_x_i_capture;
    wire kernel_2mm_B8_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_clear;
    wire kernel_2mm_B8_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_enable;
    wire kernel_2mm_B8_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_shift;
    wire kernel_2mm_B8_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_stall_pred;
    wire kernel_2mm_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_stall_succ;
    wire kernel_2mm_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_valid_loop;
    wire kernel_2mm_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_valid_pred;
    wire kernel_2mm_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_2mm_B8_x_i_valid_succ;
    wire kernel_2mm_B8_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] loop_limiter_kernel_2mm5_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm5_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm6_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm6_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm7_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm7_out_o_valid;
    wire [0:0] loop_limiter_kernel_2mm8_out_o_stall;
    wire [0:0] loop_limiter_kernel_2mm8_out_o_valid;
    wire [0:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_2mm_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [63:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B17_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B17_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_4_tpl;


    // c_i2_0108(CONSTANT,94)
    assign c_i2_0108_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo(BLACKBOX,123)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going113_1_valid_fifo thei_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo(BLACKBOX,121)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going109_2_valid_fifo thei_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo(BLACKBOX,137)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going95_6_valid_fifo thei_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo(BLACKBOX,135)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going88_2_valid_fifo thei_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo(BLACKBOX,133)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going83_2_valid_fifo thei_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo(BLACKBOX,131)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going69_6_valid_fifo thei_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo(BLACKBOX,129)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going62_2_valid_fifo thei_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B13_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo(BLACKBOX,127)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going48_6_valid_fifo thei_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B15_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo(BLACKBOX,125)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going41_2_valid_fifo thei_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo(BLACKBOX,139)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo (
        .in_data_in(c_i2_0108_q),
        .in_stall_in(bb_kernel_2mm_B19_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B17_sr_0_aunroll_x(BLACKBOX,394)
    kernel_2mm_bb_B17_sr_0 thebb_kernel_2mm_B17_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B17_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B18_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_2mm_B17_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B17_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B18(BLACKBOX,11)
    kernel_2mm_bb_B18 thebb_kernel_2mm_B18 (
        .in_c0_exe334514_0(bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_2mm_B17_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B18_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B18_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B18_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B18_sr_0_aunroll_x(BLACKBOX,395)
    kernel_2mm_bb_B18_sr_0 thebb_kernel_2mm_B18_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B18_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B19_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B19_out_c0_exe3345),
        .out_o_stall(bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr(BLACKBOX,138)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B19_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B19(BLACKBOX,12)
    kernel_2mm_bb_B19 thebb_kernel_2mm_B19 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i131_065_pop27180_0(c_i32_undef104_q),
        .in_i131_065_pop27180_1(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_5_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_5_0),
        .in_memdep_7_kernel_2mm_avm_readdata(in_memdep_7_kernel_2mm_avm_readdata),
        .in_memdep_7_kernel_2mm_avm_readdatavalid(in_memdep_7_kernel_2mm_avm_readdatavalid),
        .in_memdep_7_kernel_2mm_avm_waitrequest(in_memdep_7_kernel_2mm_avm_waitrequest),
        .in_memdep_7_kernel_2mm_avm_writeack(in_memdep_7_kernel_2mm_avm_writeack),
        .in_notcmp39179_0(GND_q),
        .in_notcmp39179_1(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B18_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm21_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm21_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm21_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm21_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3345(bb_kernel_2mm_B19_out_c0_exe3345),
        .out_exiting_stall_out(bb_kernel_2mm_B19_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B19_out_exiting_valid_out),
        .out_lsu_memdep_7_o_active(bb_kernel_2mm_B19_out_lsu_memdep_7_o_active),
        .out_memdep_7_kernel_2mm_avm_address(bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_address),
        .out_memdep_7_kernel_2mm_avm_burstcount(bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_burstcount),
        .out_memdep_7_kernel_2mm_avm_byteenable(bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_byteenable),
        .out_memdep_7_kernel_2mm_avm_enable(bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_enable),
        .out_memdep_7_kernel_2mm_avm_read(bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_read),
        .out_memdep_7_kernel_2mm_avm_write(bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_write),
        .out_memdep_7_kernel_2mm_avm_writedata(bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_writedata),
        .out_pipeline_valid_out(bb_kernel_2mm_B19_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B19_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B19_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B19_out_stall_out_1),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_address(bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount(bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable(bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_enable(bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_read(bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_write(bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata(bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B19_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B19_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B19_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B19_sr_1_aunroll_x(BLACKBOX,396)
    kernel_2mm_bb_B19_sr_1 thebb_kernel_2mm_B19_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B19_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm6_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B16_out_c0_exe2330),
        .in_i_data_2_tpl(bb_kernel_2mm_B16_out_c0_exe3331),
        .out_o_stall(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm6(BLACKBOX,244)
    kernel_2mm_loop_limiter_6 theloop_limiter_kernel_2mm6 (
        .in_i_stall(bb_kernel_2mm_B19_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B19_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B16_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B19_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm6_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr(BLACKBOX,124)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going41_2_sr thei_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B16(BLACKBOX,9)
    kernel_2mm_bb_B16 thebb_kernel_2mm_B16 (
        .in_forked118_0(GND_q),
        .in_forked118_1(bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm6_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going41_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2330(bb_kernel_2mm_B16_out_c0_exe2330),
        .out_c0_exe3331(bb_kernel_2mm_B16_out_c0_exe3331),
        .out_exiting_stall_out(bb_kernel_2mm_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B16_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B16_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B16_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B16_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B16_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B16_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B16_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B16_sr_1_aunroll_x(BLACKBOX,393)
    kernel_2mm_bb_B16_sr_1 thebb_kernel_2mm_B16_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm2(BLACKBOX,240)
    kernel_2mm_loop_limiter_2 theloop_limiter_kernel_2mm2 (
        .in_i_stall(bb_kernel_2mm_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B16_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B11_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm2_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11(BLACKBOX,4)
    kernel_2mm_bb_B11 thebb_kernel_2mm_B11 (
        .in_stall_in_0(loop_limiter_kernel_2mm2_out_o_stall),
        .in_valid_in_0(bb_kernel_2mm_B11_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kernel_2mm_B11_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B11_sr_0_aunroll_x(BLACKBOX,388)
    kernel_2mm_bb_B11_sr_0 thebb_kernel_2mm_B11_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B11_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B12_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_2mm_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B12(BLACKBOX,5)
    kernel_2mm_bb_B12 thebb_kernel_2mm_B12 (
        .in_c0_exe431710_0(bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_2mm_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B12_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B12_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B12_sr_0_aunroll_x(BLACKBOX,389)
    kernel_2mm_bb_B12_sr_0 thebb_kernel_2mm_B12_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B12_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B14_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B14_out_c0_exe431711),
        .out_o_stall(bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B14(BLACKBOX,7)
    kernel_2mm_bb_B14 thebb_kernel_2mm_B14 (
        .in_c0_exe23159_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe431711_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe531812_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe631913_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_flush(in_start),
        .in_memdep_6_kernel_2mm_avm_readdata(in_memdep_6_kernel_2mm_avm_readdata),
        .in_memdep_6_kernel_2mm_avm_readdatavalid(in_memdep_6_kernel_2mm_avm_readdatavalid),
        .in_memdep_6_kernel_2mm_avm_waitrequest(in_memdep_6_kernel_2mm_avm_waitrequest),
        .in_memdep_6_kernel_2mm_avm_writeack(in_memdep_6_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe431711(bb_kernel_2mm_B14_out_c0_exe431711),
        .out_memdep_6_kernel_2mm_avm_address(bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_address),
        .out_memdep_6_kernel_2mm_avm_burstcount(bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_burstcount),
        .out_memdep_6_kernel_2mm_avm_byteenable(bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_byteenable),
        .out_memdep_6_kernel_2mm_avm_enable(bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_enable),
        .out_memdep_6_kernel_2mm_avm_read(bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_read),
        .out_memdep_6_kernel_2mm_avm_write(bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_write),
        .out_memdep_6_kernel_2mm_avm_writedata(bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B14_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B14_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B14_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B14_sr_0_aunroll_x(BLACKBOX,391)
    kernel_2mm_bb_B14_sr_0 thebb_kernel_2mm_B14_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B14_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B15_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B15_out_c0_exe2315),
        .in_i_data_1_tpl(bb_kernel_2mm_B15_out_c0_exe4317),
        .in_i_data_2_tpl(bb_kernel_2mm_B15_out_c0_exe5318),
        .in_i_data_3_tpl(bb_kernel_2mm_B15_out_c0_exe6319),
        .out_o_stall(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr(BLACKBOX,126)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going48_6_sr thei_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B15_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B15(BLACKBOX,8)
    kernel_2mm_bb_B15 thebb_kernel_2mm_B15 (
        .in_arrayidx1019170_0(c_i32_addrspace_64_undef52_q),
        .in_arrayidx1019170_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked45_0(GND_q),
        .in_forked45_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom100168_0(c_i32_addrspace_64_undef52_q),
        .in_idxprom100168_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_idxprom57129_pop41169_0(c_i32_addrspace_64_undef52_q),
        .in_idxprom57129_pop41169_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_idxprom57133_pop55157_0(c_i32_addrspace_64_undef52_q),
        .in_idxprom57133_pop55157_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_mul102171_0(c_i32_undef104_q),
        .in_mul102171_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp60172_0(GND_q),
        .in_notcmp60172_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_notcmp86123_pop53163_0(GND_q),
        .in_notcmp86123_pop53163_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp86124_pop40173_0(GND_q),
        .in_notcmp86124_pop40173_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm18_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm18_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm18_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm18_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going48_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2315(bb_kernel_2mm_B15_out_c0_exe2315),
        .out_c0_exe4317(bb_kernel_2mm_B15_out_c0_exe4317),
        .out_c0_exe5318(bb_kernel_2mm_B15_out_c0_exe5318),
        .out_c0_exe6319(bb_kernel_2mm_B15_out_c0_exe6319),
        .out_exiting_stall_out(bb_kernel_2mm_B15_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B15_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B15_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B15_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B15_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B15_out_stall_out_1),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_address(bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount(bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable(bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_enable(bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_read(bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_write(bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata(bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_address(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_read(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_write(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B15_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B15_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B15_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B15_sr_1_aunroll_x(BLACKBOX,392)
    kernel_2mm_bb_B15_sr_1 thebb_kernel_2mm_B15_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B15_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm8_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B13_out_c0_exe8284),
        .in_i_data_2_tpl(bb_kernel_2mm_B13_out_c0_exe9285),
        .in_i_data_3_tpl(bb_kernel_2mm_B13_out_c0_exe1277),
        .in_i_data_4_tpl(bb_kernel_2mm_B13_out_c0_exe2278),
        .in_i_data_5_tpl(bb_kernel_2mm_B13_out_c0_exe3279),
        .in_i_data_6_tpl(bb_kernel_2mm_B13_out_c0_exe4280),
        .in_i_data_7_tpl(bb_kernel_2mm_B13_out_c0_exe6282),
        .in_i_data_8_tpl(bb_kernel_2mm_B13_out_c0_exe7283),
        .out_o_stall(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm8(BLACKBOX,246)
    kernel_2mm_loop_limiter_8 theloop_limiter_kernel_2mm8 (
        .in_i_stall(bb_kernel_2mm_B15_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B15_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B13_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B15_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm8_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr(BLACKBOX,128)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going62_2_sr thei_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B13_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B13(BLACKBOX,6)
    kernel_2mm_bb_B13 thebb_kernel_2mm_B13 (
        .in_flush(in_start),
        .in_forked128_0(GND_q),
        .in_forked128_1(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom57133_pop55155_0(c_i32_addrspace_64_undef52_q),
        .in_idxprom57133_pop55155_1(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .in_notcmp86123_pop53161_0(GND_q),
        .in_notcmp86123_pop53161_1(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm8_out_o_stall),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm17_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm17_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm17_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm17_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going62_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1277(bb_kernel_2mm_B13_out_c0_exe1277),
        .out_c0_exe2278(bb_kernel_2mm_B13_out_c0_exe2278),
        .out_c0_exe3279(bb_kernel_2mm_B13_out_c0_exe3279),
        .out_c0_exe4280(bb_kernel_2mm_B13_out_c0_exe4280),
        .out_c0_exe6282(bb_kernel_2mm_B13_out_c0_exe6282),
        .out_c0_exe7283(bb_kernel_2mm_B13_out_c0_exe7283),
        .out_c0_exe8284(bb_kernel_2mm_B13_out_c0_exe8284),
        .out_c0_exe9285(bb_kernel_2mm_B13_out_c0_exe9285),
        .out_exiting_stall_out(bb_kernel_2mm_B13_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B13_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B13_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B13_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B13_out_stall_out_1),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_address(bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount(bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable(bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_enable(bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_read(bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_write(bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata(bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B13_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B13_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B13_sr_1_aunroll_x(BLACKBOX,390)
    kernel_2mm_bb_B13_sr_1 thebb_kernel_2mm_B13_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B13_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B7_out_c0_exe22522),
        .in_i_data_2_tpl(bb_kernel_2mm_B7_out_c0_exe52555),
        .out_o_stall(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm5(BLACKBOX,243)
    kernel_2mm_loop_limiter_5 theloop_limiter_kernel_2mm5 (
        .in_i_stall(bb_kernel_2mm_B13_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B13_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B7_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B13_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm5_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B7(BLACKBOX,19)
    kernel_2mm_bb_B7 thebb_kernel_2mm_B7 (
        .in_c0_exe22522_0(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe52555_0(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_kernel_2mm5_out_o_stall),
        .in_valid_in_0(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe22522(bb_kernel_2mm_B7_out_c0_exe22522),
        .out_c0_exe52555(bb_kernel_2mm_B7_out_c0_exe52555),
        .out_stall_out_0(bb_kernel_2mm_B7_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B7_sr_0_aunroll_x(BLACKBOX,402)
    kernel_2mm_bb_B7_sr_0 thebb_kernel_2mm_B7_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B7_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B9_out_c0_exe22523),
        .in_i_data_1_tpl(bb_kernel_2mm_B9_out_c0_exe52556),
        .out_o_stall(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9(BLACKBOX,21)
    kernel_2mm_bb_B9 thebb_kernel_2mm_B9 (
        .in_c0_exe22523_0(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe32534_0(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52556_0(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62567_0(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe72578_0(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_memdep_5_kernel_2mm_avm_readdata(in_memdep_5_kernel_2mm_avm_readdata),
        .in_memdep_5_kernel_2mm_avm_readdatavalid(in_memdep_5_kernel_2mm_avm_readdatavalid),
        .in_memdep_5_kernel_2mm_avm_waitrequest(in_memdep_5_kernel_2mm_avm_waitrequest),
        .in_memdep_5_kernel_2mm_avm_writeack(in_memdep_5_kernel_2mm_avm_writeack),
        .in_stall_in_0(bb_kernel_2mm_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe22523(bb_kernel_2mm_B9_out_c0_exe22523),
        .out_c0_exe52556(bb_kernel_2mm_B9_out_c0_exe52556),
        .out_memdep_5_kernel_2mm_avm_address(bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_address),
        .out_memdep_5_kernel_2mm_avm_burstcount(bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_burstcount),
        .out_memdep_5_kernel_2mm_avm_byteenable(bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_byteenable),
        .out_memdep_5_kernel_2mm_avm_enable(bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_enable),
        .out_memdep_5_kernel_2mm_avm_read(bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_read),
        .out_memdep_5_kernel_2mm_avm_write(bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_write),
        .out_memdep_5_kernel_2mm_avm_writedata(bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_writedata),
        .out_stall_in_0(bb_kernel_2mm_B9_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B9_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B9_sr_0_aunroll_x(BLACKBOX,404)
    kernel_2mm_bb_B9_sr_0 thebb_kernel_2mm_B9_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B9_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B10_out_c0_exe2252),
        .in_i_data_1_tpl(bb_kernel_2mm_B10_out_c0_exe3253),
        .in_i_data_2_tpl(bb_kernel_2mm_B10_out_c0_exe5255),
        .in_i_data_3_tpl(bb_kernel_2mm_B10_out_c0_exe6256),
        .in_i_data_4_tpl(bb_kernel_2mm_B10_out_c0_exe7257),
        .out_o_stall(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr(BLACKBOX,130)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going69_6_sr thei_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_64_undef52(CONSTANT,104)
    assign c_i32_addrspace_64_undef52_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_kernel_2mm_B10(BLACKBOX,3)
    kernel_2mm_bb_B10 thebb_kernel_2mm_B10 (
        .in_arrayidx606152_0(c_i32_addrspace_64_undef52_q),
        .in_arrayidx606152_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked66_0(GND_q),
        .in_forked66_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i47_073_pop25126_pop37149_0(c_i32_undef104_q),
        .in_i47_073_pop25126_pop37149_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i47_073_pop25148_0(c_i32_undef104_q),
        .in_i47_073_pop25148_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_idxprom57150_0(c_i32_addrspace_64_undef52_q),
        .in_idxprom57150_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_idxprom59151_0(c_i32_addrspace_64_undef52_q),
        .in_idxprom59151_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .in_notcmp81153_0(GND_q),
        .in_notcmp81153_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp86122_pop36154_0(GND_q),
        .in_notcmp86122_pop36154_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp86145_0(GND_q),
        .in_notcmp86145_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm14_0(c_i32_undef104_q),
        .in_unnamed_kernel_2mm14_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going69_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2252(bb_kernel_2mm_B10_out_c0_exe2252),
        .out_c0_exe3253(bb_kernel_2mm_B10_out_c0_exe3253),
        .out_c0_exe5255(bb_kernel_2mm_B10_out_c0_exe5255),
        .out_c0_exe6256(bb_kernel_2mm_B10_out_c0_exe6256),
        .out_c0_exe7257(bb_kernel_2mm_B10_out_c0_exe7257),
        .out_exiting_stall_out(bb_kernel_2mm_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B10_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B10_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B10_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B10_out_stall_out_1),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_address(bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_read(bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_write(bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B10_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B10_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B10_sr_1_aunroll_x(BLACKBOX,387)
    kernel_2mm_bb_B10_sr_1 thebb_kernel_2mm_B10_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm7_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B8_out_c0_exe9232),
        .in_i_data_2_tpl(bb_kernel_2mm_B8_out_c0_exe10233),
        .in_i_data_3_tpl(bb_kernel_2mm_B8_out_c0_exe1224),
        .in_i_data_4_tpl(bb_kernel_2mm_B8_out_c0_exe2225),
        .in_i_data_5_tpl(bb_kernel_2mm_B8_out_c0_exe3226),
        .in_i_data_6_tpl(bb_kernel_2mm_B8_out_c0_exe4227),
        .in_i_data_7_tpl(bb_kernel_2mm_B8_out_c0_exe5228),
        .in_i_data_8_tpl(bb_kernel_2mm_B8_out_c0_exe7230),
        .in_i_data_9_tpl(bb_kernel_2mm_B8_out_c0_exe8231),
        .out_o_stall(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm7(BLACKBOX,245)
    kernel_2mm_loop_limiter_7 theloop_limiter_kernel_2mm7 (
        .in_i_stall(bb_kernel_2mm_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B10_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B8_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm7_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr(BLACKBOX,132)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going83_2_sr thei_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8(BLACKBOX,20)
    kernel_2mm_bb_B8 thebb_kernel_2mm_B8 (
        .in_flush(in_start),
        .in_forked121_0(GND_q),
        .in_forked121_1(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i47_073_pop25146_0(c_i32_undef104_q),
        .in_i47_073_pop25146_1(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp86143_0(GND_q),
        .in_notcmp86143_1(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm7_out_o_stall),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going83_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10233(bb_kernel_2mm_B8_out_c0_exe10233),
        .out_c0_exe1224(bb_kernel_2mm_B8_out_c0_exe1224),
        .out_c0_exe2225(bb_kernel_2mm_B8_out_c0_exe2225),
        .out_c0_exe3226(bb_kernel_2mm_B8_out_c0_exe3226),
        .out_c0_exe4227(bb_kernel_2mm_B8_out_c0_exe4227),
        .out_c0_exe5228(bb_kernel_2mm_B8_out_c0_exe5228),
        .out_c0_exe7230(bb_kernel_2mm_B8_out_c0_exe7230),
        .out_c0_exe8231(bb_kernel_2mm_B8_out_c0_exe8231),
        .out_c0_exe9232(bb_kernel_2mm_B8_out_c0_exe9232),
        .out_exiting_stall_out(bb_kernel_2mm_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B8_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B8_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B8_out_stall_out_1),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_address(bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount(bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable(bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_enable(bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_read(bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_write(bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata(bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B8_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B8_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B8_sr_1_aunroll_x(BLACKBOX,403)
    kernel_2mm_bb_B8_sr_1 thebb_kernel_2mm_B8_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B6_out_c0_exe2204),
        .in_i_data_2_tpl(bb_kernel_2mm_B6_out_c0_exe3205),
        .out_o_stall(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm4(BLACKBOX,242)
    kernel_2mm_loop_limiter_4 theloop_limiter_kernel_2mm4 (
        .in_i_stall(bb_kernel_2mm_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B8_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B6_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm4_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr(BLACKBOX,134)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going88_2_sr thei_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6(BLACKBOX,18)
    kernel_2mm_bb_B6 thebb_kernel_2mm_B6 (
        .in_forked117_0(GND_q),
        .in_forked117_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going88_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2204(bb_kernel_2mm_B6_out_c0_exe2204),
        .out_c0_exe3205(bb_kernel_2mm_B6_out_c0_exe3205),
        .out_exiting_stall_out(bb_kernel_2mm_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B6_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B6_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B6_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B6_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B6_sr_1_aunroll_x(BLACKBOX,401)
    kernel_2mm_bb_B6_sr_1 thebb_kernel_2mm_B6_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm1(BLACKBOX,239)
    kernel_2mm_loop_limiter_1 theloop_limiter_kernel_2mm1 (
        .in_i_stall(bb_kernel_2mm_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B6_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B2_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm1_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B2(BLACKBOX,14)
    kernel_2mm_bb_B2 thebb_kernel_2mm_B2 (
        .in_stall_in_0(loop_limiter_kernel_2mm1_out_o_stall),
        .in_valid_in_0(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_kernel_2mm_B2_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B2_sr_0_aunroll_x(BLACKBOX,397)
    kernel_2mm_bb_B2_sr_0 thebb_kernel_2mm_B2_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B2_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B4(BLACKBOX,16)
    kernel_2mm_bb_B4 thebb_kernel_2mm_B4 (
        .in_c0_exe121_0(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_kernel_2mm_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_kernel_2mm_B4_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B4_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B4_sr_0_aunroll_x(BLACKBOX,399)
    kernel_2mm_bb_B4_sr_0 thebb_kernel_2mm_B4_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B4_out_stall_out_0),
        .in_i_valid(bb_kernel_2mm_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_2mm_B5_out_c0_exe12),
        .out_o_stall(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr(BLACKBOX,136)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going95_6_sr thei_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef104(CONSTANT,106)
    assign c_i32_undef104_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_kernel_2mm_B5(BLACKBOX,17)
    kernel_2mm_bb_B5 thebb_kernel_2mm_B5 (
        .in_flush(in_start),
        .in_forked92_0(GND_q),
        .in_forked92_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_075_pop23141_0(c_i32_undef104_q),
        .in_i_075_pop23141_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_2_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_5_0),
        .in_memdep_1_kernel_2mm_avm_readdata(in_memdep_1_kernel_2mm_avm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(in_memdep_1_kernel_2mm_avm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(in_memdep_1_kernel_2mm_avm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(in_memdep_1_kernel_2mm_avm_writeack),
        .in_memdep_2_kernel_2mm_avm_readdata(in_memdep_2_kernel_2mm_avm_readdata),
        .in_memdep_2_kernel_2mm_avm_readdatavalid(in_memdep_2_kernel_2mm_avm_readdatavalid),
        .in_memdep_2_kernel_2mm_avm_waitrequest(in_memdep_2_kernel_2mm_avm_waitrequest),
        .in_memdep_2_kernel_2mm_avm_writeack(in_memdep_2_kernel_2mm_avm_writeack),
        .in_memdep_3_kernel_2mm_avm_readdata(in_memdep_3_kernel_2mm_avm_readdata),
        .in_memdep_3_kernel_2mm_avm_readdatavalid(in_memdep_3_kernel_2mm_avm_readdatavalid),
        .in_memdep_3_kernel_2mm_avm_waitrequest(in_memdep_3_kernel_2mm_avm_waitrequest),
        .in_memdep_3_kernel_2mm_avm_writeack(in_memdep_3_kernel_2mm_avm_writeack),
        .in_memdep_4_kernel_2mm_avm_readdata(in_memdep_4_kernel_2mm_avm_readdata),
        .in_memdep_4_kernel_2mm_avm_readdatavalid(in_memdep_4_kernel_2mm_avm_readdatavalid),
        .in_memdep_4_kernel_2mm_avm_waitrequest(in_memdep_4_kernel_2mm_avm_waitrequest),
        .in_memdep_4_kernel_2mm_avm_writeack(in_memdep_4_kernel_2mm_avm_writeack),
        .in_memdep_kernel_2mm_avm_readdata(in_memdep_kernel_2mm_avm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(in_memdep_kernel_2mm_avm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(in_memdep_kernel_2mm_avm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(in_memdep_kernel_2mm_avm_writeack),
        .in_notcmp107140_0(GND_q),
        .in_notcmp107140_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_2mm_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid(in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest(in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack(in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going95_kernel_2mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe12(bb_kernel_2mm_B5_out_c0_exe12),
        .out_exiting_stall_out(bb_kernel_2mm_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B5_out_exiting_valid_out),
        .out_memdep_1_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_writedata),
        .out_memdep_2_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_address),
        .out_memdep_2_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_burstcount),
        .out_memdep_2_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_byteenable),
        .out_memdep_2_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_enable),
        .out_memdep_2_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_read),
        .out_memdep_2_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_write),
        .out_memdep_2_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_writedata),
        .out_memdep_3_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_address),
        .out_memdep_3_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_burstcount),
        .out_memdep_3_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_byteenable),
        .out_memdep_3_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_enable),
        .out_memdep_3_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_read),
        .out_memdep_3_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_write),
        .out_memdep_3_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_writedata),
        .out_memdep_4_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_address),
        .out_memdep_4_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_burstcount),
        .out_memdep_4_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_byteenable),
        .out_memdep_4_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_enable),
        .out_memdep_4_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_read),
        .out_memdep_4_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_write),
        .out_memdep_4_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_writedata),
        .out_memdep_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata),
        .out_pipeline_valid_out(bb_kernel_2mm_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_2mm_B5_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B5_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B5_out_stall_out_1),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_address(bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_read(bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_write(bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata),
        .out_valid_in_0(bb_kernel_2mm_B5_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B5_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B5_sr_1_aunroll_x(BLACKBOX,400)
    kernel_2mm_bb_B5_sr_1 thebb_kernel_2mm_B5_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_2mm_B3_out_c0_exe2),
        .in_i_data_2_tpl(bb_kernel_2mm_B3_out_c0_exe3),
        .out_o_stall(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm3(BLACKBOX,241)
    kernel_2mm_loop_limiter_3 theloop_limiter_kernel_2mm3 (
        .in_i_stall(bb_kernel_2mm_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B5_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B3_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm3_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr(BLACKBOX,120)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going109_2_sr thei_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3(BLACKBOX,15)
    kernel_2mm_bb_B3 thebb_kernel_2mm_B3 (
        .in_forked116_0(GND_q),
        .in_forked116_1(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going109_kernel_2mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_kernel_2mm_B3_out_c0_exe2),
        .out_c0_exe3(bb_kernel_2mm_B3_out_c0_exe3),
        .out_exiting_stall_out(bb_kernel_2mm_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_2mm_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_2mm_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_2mm_B3_out_stall_out_0),
        .out_stall_out_1(bb_kernel_2mm_B3_out_stall_out_1),
        .out_valid_in_0(bb_kernel_2mm_B3_out_valid_in_0),
        .out_valid_in_1(bb_kernel_2mm_B3_out_valid_in_1),
        .out_valid_out_0(bb_kernel_2mm_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B3_sr_1_aunroll_x(BLACKBOX,398)
    kernel_2mm_bb_B3_sr_1 thebb_kernel_2mm_B3_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_2mm_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_2mm0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_2mm0(BLACKBOX,238)
    kernel_2mm_loop_limiter_0 theloop_limiter_kernel_2mm0 (
        .in_i_stall(bb_kernel_2mm_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_2mm_B3_out_exiting_stall_out),
        .in_i_valid(bb_kernel_2mm_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_2mm_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_2mm0_out_o_stall),
        .out_o_valid(loop_limiter_kernel_2mm0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr(BLACKBOX,122)
    kernel_2mm_i_llvm_fpga_pipeline_keep_going113_1_sr thei_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_2mm_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_2mm_B1_start(BLACKBOX,13)
    kernel_2mm_bb_B1_start thebb_kernel_2mm_B1_start (
        .in_feedback_in_1(bb_kernel_2mm_B17_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_kernel_2mm_B17_out_feedback_valid_out_1),
        .in_iord_bl_call_kernel_2mm_i_fifodata(in_iord_bl_call_kernel_2mm_i_fifodata),
        .in_iord_bl_call_kernel_2mm_i_fifovalid(in_iord_bl_call_kernel_2mm_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_2mm0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going113_kernel_2mm1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_kernel_2mm_B1_start_out_intel_reserved_ffwd_5_0),
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

    // bb_kernel_2mm_B17(BLACKBOX,10)
    kernel_2mm_bb_B17 thebb_kernel_2mm_B17 (
        .in_feedback_stall_in_1(bb_kernel_2mm_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_kernel_2mm_i_fifoready(in_iowr_bl_return_kernel_2mm_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_kernel_2mm_B17_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_kernel_2mm_B17_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_kernel_2mm_B17_out_feedback_valid_out_1),
        .out_iowr_bl_return_kernel_2mm_o_fifodata(bb_kernel_2mm_B17_out_iowr_bl_return_kernel_2mm_o_fifodata),
        .out_iowr_bl_return_kernel_2mm_o_fifovalid(bb_kernel_2mm_B17_out_iowr_bl_return_kernel_2mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_2mm_B17_out_stall_in_0),
        .out_stall_out_0(bb_kernel_2mm_B17_out_stall_out_0),
        .out_valid_out_0(bb_kernel_2mm_B17_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_2mm_B1_start_x(EXTIFACE,228)
    assign kernel_2mm_B1_start_x_i_capture = GND_q;
    assign kernel_2mm_B1_start_x_i_clear = GND_q;
    assign kernel_2mm_B1_start_x_i_enable = VCC_q;
    assign kernel_2mm_B1_start_x_i_shift = GND_q;
    assign kernel_2mm_B1_start_x_i_stall_pred = GND_q;
    assign kernel_2mm_B1_start_x_i_stall_succ = bb_kernel_2mm_B17_out_stall_in_0;
    assign kernel_2mm_B1_start_x_i_valid_loop = bb_kernel_2mm_B1_start_out_valid_in_0;
    assign kernel_2mm_B1_start_x_i_valid_pred = bb_kernel_2mm_B1_start_out_valid_in_1;
    assign kernel_2mm_B1_start_x_i_valid_succ = bb_kernel_2mm_B17_out_valid_out_0;
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

    // kernel_2mm_B10_x(EXTIFACE,229)
    assign kernel_2mm_B10_x_i_capture = GND_q;
    assign kernel_2mm_B10_x_i_clear = GND_q;
    assign kernel_2mm_B10_x_i_enable = VCC_q;
    assign kernel_2mm_B10_x_i_shift = GND_q;
    assign kernel_2mm_B10_x_i_stall_pred = loop_limiter_kernel_2mm7_out_o_stall;
    assign kernel_2mm_B10_x_i_stall_succ = bb_kernel_2mm_B10_out_stall_in_0;
    assign kernel_2mm_B10_x_i_valid_loop = bb_kernel_2mm_B10_out_valid_in_0;
    assign kernel_2mm_B10_x_i_valid_pred = bb_kernel_2mm_B10_out_valid_in_1;
    assign kernel_2mm_B10_x_i_valid_succ = bb_kernel_2mm_B10_out_valid_out_0;
    assign kernel_2mm_B10_x_i_capture_bitsignaltemp = kernel_2mm_B10_x_i_capture[0];
    assign kernel_2mm_B10_x_i_clear_bitsignaltemp = kernel_2mm_B10_x_i_clear[0];
    assign kernel_2mm_B10_x_i_enable_bitsignaltemp = kernel_2mm_B10_x_i_enable[0];
    assign kernel_2mm_B10_x_i_shift_bitsignaltemp = kernel_2mm_B10_x_i_shift[0];
    assign kernel_2mm_B10_x_i_stall_pred_bitsignaltemp = kernel_2mm_B10_x_i_stall_pred[0];
    assign kernel_2mm_B10_x_i_stall_succ_bitsignaltemp = kernel_2mm_B10_x_i_stall_succ[0];
    assign kernel_2mm_B10_x_i_valid_loop_bitsignaltemp = kernel_2mm_B10_x_i_valid_loop[0];
    assign kernel_2mm_B10_x_i_valid_pred_bitsignaltemp = kernel_2mm_B10_x_i_valid_pred[0];
    assign kernel_2mm_B10_x_i_valid_succ_bitsignaltemp = kernel_2mm_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B10")
    ) thekernel_2mm_B10_x (
        .i_capture(kernel_2mm_B10_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B10_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B10_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B13_x(EXTIFACE,230)
    assign kernel_2mm_B13_x_i_capture = GND_q;
    assign kernel_2mm_B13_x_i_clear = GND_q;
    assign kernel_2mm_B13_x_i_enable = VCC_q;
    assign kernel_2mm_B13_x_i_shift = GND_q;
    assign kernel_2mm_B13_x_i_stall_pred = loop_limiter_kernel_2mm5_out_o_stall;
    assign kernel_2mm_B13_x_i_stall_succ = bb_kernel_2mm_B14_out_stall_in_0;
    assign kernel_2mm_B13_x_i_valid_loop = bb_kernel_2mm_B13_out_valid_in_0;
    assign kernel_2mm_B13_x_i_valid_pred = bb_kernel_2mm_B13_out_valid_in_1;
    assign kernel_2mm_B13_x_i_valid_succ = bb_kernel_2mm_B14_out_valid_out_0;
    assign kernel_2mm_B13_x_i_capture_bitsignaltemp = kernel_2mm_B13_x_i_capture[0];
    assign kernel_2mm_B13_x_i_clear_bitsignaltemp = kernel_2mm_B13_x_i_clear[0];
    assign kernel_2mm_B13_x_i_enable_bitsignaltemp = kernel_2mm_B13_x_i_enable[0];
    assign kernel_2mm_B13_x_i_shift_bitsignaltemp = kernel_2mm_B13_x_i_shift[0];
    assign kernel_2mm_B13_x_i_stall_pred_bitsignaltemp = kernel_2mm_B13_x_i_stall_pred[0];
    assign kernel_2mm_B13_x_i_stall_succ_bitsignaltemp = kernel_2mm_B13_x_i_stall_succ[0];
    assign kernel_2mm_B13_x_i_valid_loop_bitsignaltemp = kernel_2mm_B13_x_i_valid_loop[0];
    assign kernel_2mm_B13_x_i_valid_pred_bitsignaltemp = kernel_2mm_B13_x_i_valid_pred[0];
    assign kernel_2mm_B13_x_i_valid_succ_bitsignaltemp = kernel_2mm_B13_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B13")
    ) thekernel_2mm_B13_x (
        .i_capture(kernel_2mm_B13_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B13_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B13_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B13_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B13_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B13_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B13_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B13_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B13_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B15_x(EXTIFACE,231)
    assign kernel_2mm_B15_x_i_capture = GND_q;
    assign kernel_2mm_B15_x_i_clear = GND_q;
    assign kernel_2mm_B15_x_i_enable = VCC_q;
    assign kernel_2mm_B15_x_i_shift = GND_q;
    assign kernel_2mm_B15_x_i_stall_pred = loop_limiter_kernel_2mm8_out_o_stall;
    assign kernel_2mm_B15_x_i_stall_succ = bb_kernel_2mm_B15_out_stall_in_0;
    assign kernel_2mm_B15_x_i_valid_loop = bb_kernel_2mm_B15_out_valid_in_0;
    assign kernel_2mm_B15_x_i_valid_pred = bb_kernel_2mm_B15_out_valid_in_1;
    assign kernel_2mm_B15_x_i_valid_succ = bb_kernel_2mm_B15_out_valid_out_0;
    assign kernel_2mm_B15_x_i_capture_bitsignaltemp = kernel_2mm_B15_x_i_capture[0];
    assign kernel_2mm_B15_x_i_clear_bitsignaltemp = kernel_2mm_B15_x_i_clear[0];
    assign kernel_2mm_B15_x_i_enable_bitsignaltemp = kernel_2mm_B15_x_i_enable[0];
    assign kernel_2mm_B15_x_i_shift_bitsignaltemp = kernel_2mm_B15_x_i_shift[0];
    assign kernel_2mm_B15_x_i_stall_pred_bitsignaltemp = kernel_2mm_B15_x_i_stall_pred[0];
    assign kernel_2mm_B15_x_i_stall_succ_bitsignaltemp = kernel_2mm_B15_x_i_stall_succ[0];
    assign kernel_2mm_B15_x_i_valid_loop_bitsignaltemp = kernel_2mm_B15_x_i_valid_loop[0];
    assign kernel_2mm_B15_x_i_valid_pred_bitsignaltemp = kernel_2mm_B15_x_i_valid_pred[0];
    assign kernel_2mm_B15_x_i_valid_succ_bitsignaltemp = kernel_2mm_B15_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B15")
    ) thekernel_2mm_B15_x (
        .i_capture(kernel_2mm_B15_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B15_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B15_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B15_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B15_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B15_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B15_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B15_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B15_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B16_x(EXTIFACE,232)
    assign kernel_2mm_B16_x_i_capture = GND_q;
    assign kernel_2mm_B16_x_i_clear = GND_q;
    assign kernel_2mm_B16_x_i_enable = VCC_q;
    assign kernel_2mm_B16_x_i_shift = GND_q;
    assign kernel_2mm_B16_x_i_stall_pred = loop_limiter_kernel_2mm2_out_o_stall;
    assign kernel_2mm_B16_x_i_stall_succ = bb_kernel_2mm_B18_out_stall_in_0;
    assign kernel_2mm_B16_x_i_valid_loop = bb_kernel_2mm_B16_out_valid_in_0;
    assign kernel_2mm_B16_x_i_valid_pred = bb_kernel_2mm_B16_out_valid_in_1;
    assign kernel_2mm_B16_x_i_valid_succ = bb_kernel_2mm_B18_out_valid_out_0;
    assign kernel_2mm_B16_x_i_capture_bitsignaltemp = kernel_2mm_B16_x_i_capture[0];
    assign kernel_2mm_B16_x_i_clear_bitsignaltemp = kernel_2mm_B16_x_i_clear[0];
    assign kernel_2mm_B16_x_i_enable_bitsignaltemp = kernel_2mm_B16_x_i_enable[0];
    assign kernel_2mm_B16_x_i_shift_bitsignaltemp = kernel_2mm_B16_x_i_shift[0];
    assign kernel_2mm_B16_x_i_stall_pred_bitsignaltemp = kernel_2mm_B16_x_i_stall_pred[0];
    assign kernel_2mm_B16_x_i_stall_succ_bitsignaltemp = kernel_2mm_B16_x_i_stall_succ[0];
    assign kernel_2mm_B16_x_i_valid_loop_bitsignaltemp = kernel_2mm_B16_x_i_valid_loop[0];
    assign kernel_2mm_B16_x_i_valid_pred_bitsignaltemp = kernel_2mm_B16_x_i_valid_pred[0];
    assign kernel_2mm_B16_x_i_valid_succ_bitsignaltemp = kernel_2mm_B16_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B16")
    ) thekernel_2mm_B16_x (
        .i_capture(kernel_2mm_B16_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B16_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B16_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B16_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B16_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B16_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B16_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B16_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B16_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B19_x(EXTIFACE,233)
    assign kernel_2mm_B19_x_i_capture = GND_q;
    assign kernel_2mm_B19_x_i_clear = GND_q;
    assign kernel_2mm_B19_x_i_enable = VCC_q;
    assign kernel_2mm_B19_x_i_shift = GND_q;
    assign kernel_2mm_B19_x_i_stall_pred = loop_limiter_kernel_2mm6_out_o_stall;
    assign kernel_2mm_B19_x_i_stall_succ = bb_kernel_2mm_B19_out_stall_in_0;
    assign kernel_2mm_B19_x_i_valid_loop = bb_kernel_2mm_B19_out_valid_in_0;
    assign kernel_2mm_B19_x_i_valid_pred = bb_kernel_2mm_B19_out_valid_in_1;
    assign kernel_2mm_B19_x_i_valid_succ = bb_kernel_2mm_B19_out_valid_out_0;
    assign kernel_2mm_B19_x_i_capture_bitsignaltemp = kernel_2mm_B19_x_i_capture[0];
    assign kernel_2mm_B19_x_i_clear_bitsignaltemp = kernel_2mm_B19_x_i_clear[0];
    assign kernel_2mm_B19_x_i_enable_bitsignaltemp = kernel_2mm_B19_x_i_enable[0];
    assign kernel_2mm_B19_x_i_shift_bitsignaltemp = kernel_2mm_B19_x_i_shift[0];
    assign kernel_2mm_B19_x_i_stall_pred_bitsignaltemp = kernel_2mm_B19_x_i_stall_pred[0];
    assign kernel_2mm_B19_x_i_stall_succ_bitsignaltemp = kernel_2mm_B19_x_i_stall_succ[0];
    assign kernel_2mm_B19_x_i_valid_loop_bitsignaltemp = kernel_2mm_B19_x_i_valid_loop[0];
    assign kernel_2mm_B19_x_i_valid_pred_bitsignaltemp = kernel_2mm_B19_x_i_valid_pred[0];
    assign kernel_2mm_B19_x_i_valid_succ_bitsignaltemp = kernel_2mm_B19_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B19")
    ) thekernel_2mm_B19_x (
        .i_capture(kernel_2mm_B19_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B19_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B19_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B19_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B19_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B19_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B19_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B19_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B19_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B3_x(EXTIFACE,234)
    assign kernel_2mm_B3_x_i_capture = GND_q;
    assign kernel_2mm_B3_x_i_clear = GND_q;
    assign kernel_2mm_B3_x_i_enable = VCC_q;
    assign kernel_2mm_B3_x_i_shift = GND_q;
    assign kernel_2mm_B3_x_i_stall_pred = loop_limiter_kernel_2mm0_out_o_stall;
    assign kernel_2mm_B3_x_i_stall_succ = bb_kernel_2mm_B4_out_stall_in_0;
    assign kernel_2mm_B3_x_i_valid_loop = bb_kernel_2mm_B3_out_valid_in_0;
    assign kernel_2mm_B3_x_i_valid_pred = bb_kernel_2mm_B3_out_valid_in_1;
    assign kernel_2mm_B3_x_i_valid_succ = bb_kernel_2mm_B4_out_valid_out_0;
    assign kernel_2mm_B3_x_i_capture_bitsignaltemp = kernel_2mm_B3_x_i_capture[0];
    assign kernel_2mm_B3_x_i_clear_bitsignaltemp = kernel_2mm_B3_x_i_clear[0];
    assign kernel_2mm_B3_x_i_enable_bitsignaltemp = kernel_2mm_B3_x_i_enable[0];
    assign kernel_2mm_B3_x_i_shift_bitsignaltemp = kernel_2mm_B3_x_i_shift[0];
    assign kernel_2mm_B3_x_i_stall_pred_bitsignaltemp = kernel_2mm_B3_x_i_stall_pred[0];
    assign kernel_2mm_B3_x_i_stall_succ_bitsignaltemp = kernel_2mm_B3_x_i_stall_succ[0];
    assign kernel_2mm_B3_x_i_valid_loop_bitsignaltemp = kernel_2mm_B3_x_i_valid_loop[0];
    assign kernel_2mm_B3_x_i_valid_pred_bitsignaltemp = kernel_2mm_B3_x_i_valid_pred[0];
    assign kernel_2mm_B3_x_i_valid_succ_bitsignaltemp = kernel_2mm_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B3")
    ) thekernel_2mm_B3_x (
        .i_capture(kernel_2mm_B3_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B3_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B3_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B5_x(EXTIFACE,235)
    assign kernel_2mm_B5_x_i_capture = GND_q;
    assign kernel_2mm_B5_x_i_clear = GND_q;
    assign kernel_2mm_B5_x_i_enable = VCC_q;
    assign kernel_2mm_B5_x_i_shift = GND_q;
    assign kernel_2mm_B5_x_i_stall_pred = loop_limiter_kernel_2mm3_out_o_stall;
    assign kernel_2mm_B5_x_i_stall_succ = bb_kernel_2mm_B5_out_stall_in_0;
    assign kernel_2mm_B5_x_i_valid_loop = bb_kernel_2mm_B5_out_valid_in_0;
    assign kernel_2mm_B5_x_i_valid_pred = bb_kernel_2mm_B5_out_valid_in_1;
    assign kernel_2mm_B5_x_i_valid_succ = bb_kernel_2mm_B5_out_valid_out_0;
    assign kernel_2mm_B5_x_i_capture_bitsignaltemp = kernel_2mm_B5_x_i_capture[0];
    assign kernel_2mm_B5_x_i_clear_bitsignaltemp = kernel_2mm_B5_x_i_clear[0];
    assign kernel_2mm_B5_x_i_enable_bitsignaltemp = kernel_2mm_B5_x_i_enable[0];
    assign kernel_2mm_B5_x_i_shift_bitsignaltemp = kernel_2mm_B5_x_i_shift[0];
    assign kernel_2mm_B5_x_i_stall_pred_bitsignaltemp = kernel_2mm_B5_x_i_stall_pred[0];
    assign kernel_2mm_B5_x_i_stall_succ_bitsignaltemp = kernel_2mm_B5_x_i_stall_succ[0];
    assign kernel_2mm_B5_x_i_valid_loop_bitsignaltemp = kernel_2mm_B5_x_i_valid_loop[0];
    assign kernel_2mm_B5_x_i_valid_pred_bitsignaltemp = kernel_2mm_B5_x_i_valid_pred[0];
    assign kernel_2mm_B5_x_i_valid_succ_bitsignaltemp = kernel_2mm_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B5")
    ) thekernel_2mm_B5_x (
        .i_capture(kernel_2mm_B5_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B5_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B5_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // kernel_2mm_B6_x(EXTIFACE,236)
    assign kernel_2mm_B6_x_i_capture = GND_q;
    assign kernel_2mm_B6_x_i_clear = GND_q;
    assign kernel_2mm_B6_x_i_enable = VCC_q;
    assign kernel_2mm_B6_x_i_shift = GND_q;
    assign kernel_2mm_B6_x_i_stall_pred = loop_limiter_kernel_2mm1_out_o_stall;
    assign kernel_2mm_B6_x_i_stall_succ = bb_kernel_2mm_B12_out_stall_in_0;
    assign kernel_2mm_B6_x_i_valid_loop = bb_kernel_2mm_B6_out_valid_in_0;
    assign kernel_2mm_B6_x_i_valid_pred = bb_kernel_2mm_B6_out_valid_in_1;
    assign kernel_2mm_B6_x_i_valid_succ = bb_kernel_2mm_B12_out_valid_out_0;
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

    // kernel_2mm_B8_x(EXTIFACE,237)
    assign kernel_2mm_B8_x_i_capture = GND_q;
    assign kernel_2mm_B8_x_i_clear = GND_q;
    assign kernel_2mm_B8_x_i_enable = VCC_q;
    assign kernel_2mm_B8_x_i_shift = GND_q;
    assign kernel_2mm_B8_x_i_stall_pred = loop_limiter_kernel_2mm4_out_o_stall;
    assign kernel_2mm_B8_x_i_stall_succ = bb_kernel_2mm_B9_out_stall_in_0;
    assign kernel_2mm_B8_x_i_valid_loop = bb_kernel_2mm_B8_out_valid_in_0;
    assign kernel_2mm_B8_x_i_valid_pred = bb_kernel_2mm_B8_out_valid_in_1;
    assign kernel_2mm_B8_x_i_valid_succ = bb_kernel_2mm_B9_out_valid_out_0;
    assign kernel_2mm_B8_x_i_capture_bitsignaltemp = kernel_2mm_B8_x_i_capture[0];
    assign kernel_2mm_B8_x_i_clear_bitsignaltemp = kernel_2mm_B8_x_i_clear[0];
    assign kernel_2mm_B8_x_i_enable_bitsignaltemp = kernel_2mm_B8_x_i_enable[0];
    assign kernel_2mm_B8_x_i_shift_bitsignaltemp = kernel_2mm_B8_x_i_shift[0];
    assign kernel_2mm_B8_x_i_stall_pred_bitsignaltemp = kernel_2mm_B8_x_i_stall_pred[0];
    assign kernel_2mm_B8_x_i_stall_succ_bitsignaltemp = kernel_2mm_B8_x_i_stall_succ[0];
    assign kernel_2mm_B8_x_i_valid_loop_bitsignaltemp = kernel_2mm_B8_x_i_valid_loop[0];
    assign kernel_2mm_B8_x_i_valid_pred_bitsignaltemp = kernel_2mm_B8_x_i_valid_pred[0];
    assign kernel_2mm_B8_x_i_valid_succ_bitsignaltemp = kernel_2mm_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_2mm.B8")
    ) thekernel_2mm_B8_x (
        .i_capture(kernel_2mm_B8_x_i_capture_bitsignaltemp),
        .i_clear(kernel_2mm_B8_x_i_clear_bitsignaltemp),
        .i_enable(kernel_2mm_B8_x_i_enable_bitsignaltemp),
        .i_shift(kernel_2mm_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_2mm_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_2mm_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_2mm_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_2mm_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_2mm_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_kernel_2mm_o_fifoalmost_full(GPOUT,247)
    assign out_iord_bl_call_kernel_2mm_o_fifoalmost_full = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_2mm_o_fifoready(GPOUT,248)
    assign out_iord_bl_call_kernel_2mm_o_fifoready = bb_kernel_2mm_B1_start_out_iord_bl_call_kernel_2mm_o_fifoready;

    // out_iowr_bl_return_kernel_2mm_o_fifodata(GPOUT,249)
    assign out_iowr_bl_return_kernel_2mm_o_fifodata = bb_kernel_2mm_B17_out_iowr_bl_return_kernel_2mm_o_fifodata;

    // out_iowr_bl_return_kernel_2mm_o_fifovalid(GPOUT,250)
    assign out_iowr_bl_return_kernel_2mm_o_fifovalid = bb_kernel_2mm_B17_out_iowr_bl_return_kernel_2mm_o_fifovalid;

    // out_memdep_1_kernel_2mm_avm_address(GPOUT,251)
    assign out_memdep_1_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_address;

    // out_memdep_1_kernel_2mm_avm_burstcount(GPOUT,252)
    assign out_memdep_1_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_burstcount;

    // out_memdep_1_kernel_2mm_avm_byteenable(GPOUT,253)
    assign out_memdep_1_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_byteenable;

    // out_memdep_1_kernel_2mm_avm_enable(GPOUT,254)
    assign out_memdep_1_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_enable;

    // out_memdep_1_kernel_2mm_avm_read(GPOUT,255)
    assign out_memdep_1_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_read;

    // out_memdep_1_kernel_2mm_avm_write(GPOUT,256)
    assign out_memdep_1_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_write;

    // out_memdep_1_kernel_2mm_avm_writedata(GPOUT,257)
    assign out_memdep_1_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_1_kernel_2mm_avm_writedata;

    // out_memdep_2_kernel_2mm_avm_address(GPOUT,258)
    assign out_memdep_2_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_address;

    // out_memdep_2_kernel_2mm_avm_burstcount(GPOUT,259)
    assign out_memdep_2_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_burstcount;

    // out_memdep_2_kernel_2mm_avm_byteenable(GPOUT,260)
    assign out_memdep_2_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_byteenable;

    // out_memdep_2_kernel_2mm_avm_enable(GPOUT,261)
    assign out_memdep_2_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_enable;

    // out_memdep_2_kernel_2mm_avm_read(GPOUT,262)
    assign out_memdep_2_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_read;

    // out_memdep_2_kernel_2mm_avm_write(GPOUT,263)
    assign out_memdep_2_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_write;

    // out_memdep_2_kernel_2mm_avm_writedata(GPOUT,264)
    assign out_memdep_2_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_2_kernel_2mm_avm_writedata;

    // out_memdep_3_kernel_2mm_avm_address(GPOUT,265)
    assign out_memdep_3_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_address;

    // out_memdep_3_kernel_2mm_avm_burstcount(GPOUT,266)
    assign out_memdep_3_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_burstcount;

    // out_memdep_3_kernel_2mm_avm_byteenable(GPOUT,267)
    assign out_memdep_3_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_byteenable;

    // out_memdep_3_kernel_2mm_avm_enable(GPOUT,268)
    assign out_memdep_3_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_enable;

    // out_memdep_3_kernel_2mm_avm_read(GPOUT,269)
    assign out_memdep_3_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_read;

    // out_memdep_3_kernel_2mm_avm_write(GPOUT,270)
    assign out_memdep_3_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_write;

    // out_memdep_3_kernel_2mm_avm_writedata(GPOUT,271)
    assign out_memdep_3_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_3_kernel_2mm_avm_writedata;

    // out_memdep_4_kernel_2mm_avm_address(GPOUT,272)
    assign out_memdep_4_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_address;

    // out_memdep_4_kernel_2mm_avm_burstcount(GPOUT,273)
    assign out_memdep_4_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_burstcount;

    // out_memdep_4_kernel_2mm_avm_byteenable(GPOUT,274)
    assign out_memdep_4_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_byteenable;

    // out_memdep_4_kernel_2mm_avm_enable(GPOUT,275)
    assign out_memdep_4_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_enable;

    // out_memdep_4_kernel_2mm_avm_read(GPOUT,276)
    assign out_memdep_4_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_read;

    // out_memdep_4_kernel_2mm_avm_write(GPOUT,277)
    assign out_memdep_4_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_write;

    // out_memdep_4_kernel_2mm_avm_writedata(GPOUT,278)
    assign out_memdep_4_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_4_kernel_2mm_avm_writedata;

    // out_memdep_5_kernel_2mm_avm_address(GPOUT,279)
    assign out_memdep_5_kernel_2mm_avm_address = bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_address;

    // out_memdep_5_kernel_2mm_avm_burstcount(GPOUT,280)
    assign out_memdep_5_kernel_2mm_avm_burstcount = bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_burstcount;

    // out_memdep_5_kernel_2mm_avm_byteenable(GPOUT,281)
    assign out_memdep_5_kernel_2mm_avm_byteenable = bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_byteenable;

    // out_memdep_5_kernel_2mm_avm_enable(GPOUT,282)
    assign out_memdep_5_kernel_2mm_avm_enable = bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_enable;

    // out_memdep_5_kernel_2mm_avm_read(GPOUT,283)
    assign out_memdep_5_kernel_2mm_avm_read = bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_read;

    // out_memdep_5_kernel_2mm_avm_write(GPOUT,284)
    assign out_memdep_5_kernel_2mm_avm_write = bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_write;

    // out_memdep_5_kernel_2mm_avm_writedata(GPOUT,285)
    assign out_memdep_5_kernel_2mm_avm_writedata = bb_kernel_2mm_B9_out_memdep_5_kernel_2mm_avm_writedata;

    // out_memdep_6_kernel_2mm_avm_address(GPOUT,286)
    assign out_memdep_6_kernel_2mm_avm_address = bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_address;

    // out_memdep_6_kernel_2mm_avm_burstcount(GPOUT,287)
    assign out_memdep_6_kernel_2mm_avm_burstcount = bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_burstcount;

    // out_memdep_6_kernel_2mm_avm_byteenable(GPOUT,288)
    assign out_memdep_6_kernel_2mm_avm_byteenable = bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_byteenable;

    // out_memdep_6_kernel_2mm_avm_enable(GPOUT,289)
    assign out_memdep_6_kernel_2mm_avm_enable = bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_enable;

    // out_memdep_6_kernel_2mm_avm_read(GPOUT,290)
    assign out_memdep_6_kernel_2mm_avm_read = bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_read;

    // out_memdep_6_kernel_2mm_avm_write(GPOUT,291)
    assign out_memdep_6_kernel_2mm_avm_write = bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_write;

    // out_memdep_6_kernel_2mm_avm_writedata(GPOUT,292)
    assign out_memdep_6_kernel_2mm_avm_writedata = bb_kernel_2mm_B14_out_memdep_6_kernel_2mm_avm_writedata;

    // out_memdep_7_kernel_2mm_avm_address(GPOUT,293)
    assign out_memdep_7_kernel_2mm_avm_address = bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_address;

    // out_memdep_7_kernel_2mm_avm_burstcount(GPOUT,294)
    assign out_memdep_7_kernel_2mm_avm_burstcount = bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_burstcount;

    // out_memdep_7_kernel_2mm_avm_byteenable(GPOUT,295)
    assign out_memdep_7_kernel_2mm_avm_byteenable = bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_byteenable;

    // out_memdep_7_kernel_2mm_avm_enable(GPOUT,296)
    assign out_memdep_7_kernel_2mm_avm_enable = bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_enable;

    // out_memdep_7_kernel_2mm_avm_read(GPOUT,297)
    assign out_memdep_7_kernel_2mm_avm_read = bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_read;

    // out_memdep_7_kernel_2mm_avm_write(GPOUT,298)
    assign out_memdep_7_kernel_2mm_avm_write = bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_write;

    // out_memdep_7_kernel_2mm_avm_writedata(GPOUT,299)
    assign out_memdep_7_kernel_2mm_avm_writedata = bb_kernel_2mm_B19_out_memdep_7_kernel_2mm_avm_writedata;

    // out_memdep_kernel_2mm_avm_address(GPOUT,300)
    assign out_memdep_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_address;

    // out_memdep_kernel_2mm_avm_burstcount(GPOUT,301)
    assign out_memdep_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_burstcount;

    // out_memdep_kernel_2mm_avm_byteenable(GPOUT,302)
    assign out_memdep_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_byteenable;

    // out_memdep_kernel_2mm_avm_enable(GPOUT,303)
    assign out_memdep_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_enable;

    // out_memdep_kernel_2mm_avm_read(GPOUT,304)
    assign out_memdep_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_read;

    // out_memdep_kernel_2mm_avm_write(GPOUT,305)
    assign out_memdep_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_write;

    // out_memdep_kernel_2mm_avm_writedata(GPOUT,306)
    assign out_memdep_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_memdep_kernel_2mm_avm_writedata;

    // out_o_active_memdep_7(GPOUT,307)
    assign out_o_active_memdep_7 = bb_kernel_2mm_B19_out_lsu_memdep_7_o_active;

    // bb_kernel_2mm_B0_runOnce(BLACKBOX,2)
    kernel_2mm_bb_B0_runOnce thebb_kernel_2mm_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_2mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,308)
    assign out_stall_out = bb_kernel_2mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_address(GPOUT,309)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(GPOUT,310)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(GPOUT,311)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(GPOUT,312)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_read(GPOUT,313)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_write(GPOUT,314)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(GPOUT,315)
    assign out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_address(GPOUT,316)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(GPOUT,317)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(GPOUT,318)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(GPOUT,319)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_read(GPOUT,320)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_write(GPOUT,321)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(GPOUT,322)
    assign out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_address(GPOUT,323)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(GPOUT,324)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(GPOUT,325)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(GPOUT,326)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_read(GPOUT,327)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_write(GPOUT,328)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(GPOUT,329)
    assign out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_address(GPOUT,330)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_address = bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount(GPOUT,331)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount = bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable(GPOUT,332)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable = bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_enable(GPOUT,333)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_enable = bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_read(GPOUT,334)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_read = bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_write(GPOUT,335)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_write = bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata(GPOUT,336)
    assign out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata = bb_kernel_2mm_B8_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_address(GPOUT,337)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_address = bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(GPOUT,338)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(GPOUT,339)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(GPOUT,340)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_enable = bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_read(GPOUT,341)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_read = bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_write(GPOUT,342)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_write = bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(GPOUT,343)
    assign out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_address(GPOUT,344)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_address = bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(GPOUT,345)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount = bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(GPOUT,346)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable = bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(GPOUT,347)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_enable = bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_read(GPOUT,348)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_read = bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_write(GPOUT,349)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_write = bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(GPOUT,350)
    assign out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata = bb_kernel_2mm_B10_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_address(GPOUT,351)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_address = bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount(GPOUT,352)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount = bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable(GPOUT,353)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable = bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_enable(GPOUT,354)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_enable = bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_read(GPOUT,355)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_read = bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_write(GPOUT,356)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_write = bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata(GPOUT,357)
    assign out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata = bb_kernel_2mm_B13_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_address(GPOUT,358)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_address = bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount(GPOUT,359)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount = bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable(GPOUT,360)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable = bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_enable(GPOUT,361)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_enable = bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_read(GPOUT,362)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_read = bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_write(GPOUT,363)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_write = bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata(GPOUT,364)
    assign out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata = bb_kernel_2mm_B15_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_address(GPOUT,365)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_address = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(GPOUT,366)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(GPOUT,367)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(GPOUT,368)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_enable = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_read(GPOUT,369)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_read = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_write(GPOUT,370)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_write = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(GPOUT,371)
    assign out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata = bb_kernel_2mm_B15_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm21_kernel_2mm_avm_address(GPOUT,372)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_address = bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount(GPOUT,373)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount = bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable(GPOUT,374)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable = bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm21_kernel_2mm_avm_enable(GPOUT,375)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_enable = bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm21_kernel_2mm_avm_read(GPOUT,376)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_read = bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm21_kernel_2mm_avm_write(GPOUT,377)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_write = bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata(GPOUT,378)
    assign out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata = bb_kernel_2mm_B19_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_address(GPOUT,379)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_address = bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(GPOUT,380)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount = bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(GPOUT,381)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(GPOUT,382)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_enable = bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_read(GPOUT,383)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_read = bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_write(GPOUT,384)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_write = bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;

    // out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(GPOUT,385)
    assign out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata = bb_kernel_2mm_B5_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;

    // out_valid_out(GPOUT,386)
    assign out_valid_out = GND_q;

endmodule
