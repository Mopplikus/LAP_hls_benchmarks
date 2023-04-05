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

// SystemVerilog created from kernel_2mm_function_wrapper
// Created for function/kernel kernel_2mm
// SystemVerilog created on Wed Apr  5 01:12:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module kernel_2mm_function_wrapper (
    input wire [63:0] A,
    input wire [63:0] B,
    input wire [63:0] C,
    input wire [63:0] D,
    input wire [31:0] alpha,
    input wire [31:0] avm_memdep_1_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_1_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_1_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_1_kernel_2mm_writeack,
    input wire [31:0] avm_memdep_2_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_2_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_2_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_2_kernel_2mm_writeack,
    input wire [31:0] avm_memdep_3_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_3_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_3_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_3_kernel_2mm_writeack,
    input wire [31:0] avm_memdep_4_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_4_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_4_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_4_kernel_2mm_writeack,
    input wire [31:0] avm_memdep_5_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_5_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_5_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_5_kernel_2mm_writeack,
    input wire [31:0] avm_memdep_6_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_6_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_6_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_6_kernel_2mm_writeack,
    input wire [63:0] avm_memdep_7_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_7_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_7_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_7_kernel_2mm_writeack,
    input wire [31:0] avm_memdep_kernel_2mm_readdata,
    input wire [0:0] avm_memdep_kernel_2mm_readdatavalid,
    input wire [0:0] avm_memdep_kernel_2mm_waitrequest,
    input wire [0:0] avm_memdep_kernel_2mm_writeack,
    input wire [63:0] avm_unnamed_kernel_2mm10_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_writeack,
    input wire [63:0] avm_unnamed_kernel_2mm11_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm11_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm11_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm11_kernel_2mm_writeack,
    input wire [63:0] avm_unnamed_kernel_2mm12_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm13_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm13_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm13_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm13_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm15_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm16_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm16_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm16_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm16_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm17_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm17_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm17_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm17_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm18_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm18_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm18_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm18_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm19_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm19_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm19_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm19_kernel_2mm_writeack,
    input wire [31:0] avm_unnamed_kernel_2mm21_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm21_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm21_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm21_kernel_2mm_writeack,
    input wire [63:0] avm_unnamed_kernel_2mm9_kernel_2mm_readdata,
    input wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_readdatavalid,
    input wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_waitrequest,
    input wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_writeack,
    input wire [319:0] avst_iord_bl_call_kernel_2mm_data,
    input wire [0:0] avst_iord_bl_call_kernel_2mm_valid,
    input wire [0:0] avst_iowr_bl_return_kernel_2mm_almostfull,
    input wire [0:0] avst_iowr_bl_return_kernel_2mm_ready,
    input wire [31:0] beta,
    input wire [0:0] stall,
    input wire [0:0] stall_in,
    input wire [0:0] start,
    input wire [0:0] valid_in,
    output wire [31:0] avm_memdep_1_kernel_2mm_address,
    output wire [0:0] avm_memdep_1_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_1_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_1_kernel_2mm_enable,
    output wire [0:0] avm_memdep_1_kernel_2mm_read,
    output wire [0:0] avm_memdep_1_kernel_2mm_write,
    output wire [31:0] avm_memdep_1_kernel_2mm_writedata,
    output wire [31:0] avm_memdep_2_kernel_2mm_address,
    output wire [0:0] avm_memdep_2_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_2_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_2_kernel_2mm_enable,
    output wire [0:0] avm_memdep_2_kernel_2mm_read,
    output wire [0:0] avm_memdep_2_kernel_2mm_write,
    output wire [31:0] avm_memdep_2_kernel_2mm_writedata,
    output wire [31:0] avm_memdep_3_kernel_2mm_address,
    output wire [0:0] avm_memdep_3_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_3_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_3_kernel_2mm_enable,
    output wire [0:0] avm_memdep_3_kernel_2mm_read,
    output wire [0:0] avm_memdep_3_kernel_2mm_write,
    output wire [31:0] avm_memdep_3_kernel_2mm_writedata,
    output wire [31:0] avm_memdep_4_kernel_2mm_address,
    output wire [0:0] avm_memdep_4_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_4_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_4_kernel_2mm_enable,
    output wire [0:0] avm_memdep_4_kernel_2mm_read,
    output wire [0:0] avm_memdep_4_kernel_2mm_write,
    output wire [31:0] avm_memdep_4_kernel_2mm_writedata,
    output wire [31:0] avm_memdep_5_kernel_2mm_address,
    output wire [0:0] avm_memdep_5_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_5_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_5_kernel_2mm_enable,
    output wire [0:0] avm_memdep_5_kernel_2mm_read,
    output wire [0:0] avm_memdep_5_kernel_2mm_write,
    output wire [31:0] avm_memdep_5_kernel_2mm_writedata,
    output wire [31:0] avm_memdep_6_kernel_2mm_address,
    output wire [0:0] avm_memdep_6_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_6_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_6_kernel_2mm_enable,
    output wire [0:0] avm_memdep_6_kernel_2mm_read,
    output wire [0:0] avm_memdep_6_kernel_2mm_write,
    output wire [31:0] avm_memdep_6_kernel_2mm_writedata,
    output wire [63:0] avm_memdep_7_kernel_2mm_address,
    output wire [0:0] avm_memdep_7_kernel_2mm_burstcount,
    output wire [7:0] avm_memdep_7_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_7_kernel_2mm_enable,
    output wire [0:0] avm_memdep_7_kernel_2mm_read,
    output wire [0:0] avm_memdep_7_kernel_2mm_write,
    output wire [63:0] avm_memdep_7_kernel_2mm_writedata,
    output wire [31:0] avm_memdep_kernel_2mm_address,
    output wire [0:0] avm_memdep_kernel_2mm_burstcount,
    output wire [3:0] avm_memdep_kernel_2mm_byteenable,
    output wire [0:0] avm_memdep_kernel_2mm_enable,
    output wire [0:0] avm_memdep_kernel_2mm_read,
    output wire [0:0] avm_memdep_kernel_2mm_write,
    output wire [31:0] avm_memdep_kernel_2mm_writedata,
    output wire [63:0] avm_unnamed_kernel_2mm10_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_2mm10_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm10_kernel_2mm_write,
    output wire [63:0] avm_unnamed_kernel_2mm10_kernel_2mm_writedata,
    output wire [63:0] avm_unnamed_kernel_2mm11_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm11_kernel_2mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_2mm11_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm11_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm11_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm11_kernel_2mm_write,
    output wire [63:0] avm_unnamed_kernel_2mm11_kernel_2mm_writedata,
    output wire [63:0] avm_unnamed_kernel_2mm12_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_2mm12_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm12_kernel_2mm_write,
    output wire [63:0] avm_unnamed_kernel_2mm12_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm13_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm13_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm13_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm13_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm13_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm13_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm13_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm15_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm15_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm15_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm15_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm16_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm16_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm16_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm16_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm16_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm16_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm16_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm17_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm17_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm17_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm17_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm17_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm17_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm17_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm18_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm18_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm18_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm18_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm18_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm18_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm18_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm19_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm19_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm19_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm19_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm19_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm19_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm19_kernel_2mm_writedata,
    output wire [31:0] avm_unnamed_kernel_2mm21_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm21_kernel_2mm_burstcount,
    output wire [3:0] avm_unnamed_kernel_2mm21_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm21_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm21_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm21_kernel_2mm_write,
    output wire [31:0] avm_unnamed_kernel_2mm21_kernel_2mm_writedata,
    output wire [63:0] avm_unnamed_kernel_2mm9_kernel_2mm_address,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_burstcount,
    output wire [7:0] avm_unnamed_kernel_2mm9_kernel_2mm_byteenable,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_enable,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_read,
    output wire [0:0] avm_unnamed_kernel_2mm9_kernel_2mm_write,
    output wire [63:0] avm_unnamed_kernel_2mm9_kernel_2mm_writedata,
    output wire [0:0] avst_iord_bl_call_kernel_2mm_almost_full,
    output wire [0:0] avst_iord_bl_call_kernel_2mm_ready,
    output wire [0:0] avst_iowr_bl_return_kernel_2mm_data,
    output wire [0:0] avst_iowr_bl_return_kernel_2mm_valid,
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
    wire [319:0] implicit_input_q;
    wire [0:0] kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;
    wire [0:0] kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready;
    wire [0:0] kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifodata;
    wire [0:0] kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid;
    wire [31:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_1_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_memdep_2_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_2_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_2_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_2_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_2_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_2_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_2_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_memdep_3_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_3_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_3_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_3_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_3_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_3_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_3_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_memdep_4_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_4_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_4_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_4_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_4_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_4_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_4_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_memdep_5_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_5_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_5_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_5_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_5_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_5_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_5_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_memdep_6_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_6_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_6_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_6_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_6_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_6_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_6_kernel_2mm_avm_writedata;
    wire [63:0] kernel_2mm_function_out_memdep_7_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_7_kernel_2mm_avm_burstcount;
    wire [7:0] kernel_2mm_function_out_memdep_7_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_7_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_7_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_7_kernel_2mm_avm_write;
    wire [63:0] kernel_2mm_function_out_memdep_7_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_memdep_kernel_2mm_avm_writedata;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;
    wire [7:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;
    wire [7:0] kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;
    wire [7:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount;
    wire [3:0] kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_write;
    wire [31:0] kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;
    wire [7:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;
    wire [0:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;
    wire [63:0] kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;
    wire [0:0] not_ready_q;
    wire [0:0] not_stall_q;
    wire [0:0] pos_reset_q;
    wire [0:0] reset_wire_inst_o_resetn;
    wire reset_wire_inst_o_resetn_bitsignaltemp;


    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // not_stall(LOGICAL,104)
    assign not_stall_q = ~ (stall);

    // implicit_input(BITJOIN,11)
    assign implicit_input_q = {D, C, B, A, beta, alpha};

    // A_const(CONSTANT,2)
    assign A_const_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // kernel_2mm_function(BLACKBOX,102)
    kernel_2mm_function thekernel_2mm_function (
        .in_arg_A(A_const_q),
        .in_arg_B(A_const_q),
        .in_arg_C(A_const_q),
        .in_arg_D(A_const_q),
        .in_arg_call(A_const_q),
        .in_arg_return(A_const_q),
        .in_iord_bl_call_kernel_2mm_i_fifodata(implicit_input_q),
        .in_iord_bl_call_kernel_2mm_i_fifovalid(start),
        .in_iowr_bl_return_kernel_2mm_i_fifoready(not_stall_q),
        .in_memdep_1_kernel_2mm_avm_readdata(avm_memdep_1_kernel_2mm_readdata),
        .in_memdep_1_kernel_2mm_avm_readdatavalid(avm_memdep_1_kernel_2mm_readdatavalid),
        .in_memdep_1_kernel_2mm_avm_waitrequest(avm_memdep_1_kernel_2mm_waitrequest),
        .in_memdep_1_kernel_2mm_avm_writeack(avm_memdep_1_kernel_2mm_writeack),
        .in_memdep_2_kernel_2mm_avm_readdata(avm_memdep_2_kernel_2mm_readdata),
        .in_memdep_2_kernel_2mm_avm_readdatavalid(avm_memdep_2_kernel_2mm_readdatavalid),
        .in_memdep_2_kernel_2mm_avm_waitrequest(avm_memdep_2_kernel_2mm_waitrequest),
        .in_memdep_2_kernel_2mm_avm_writeack(avm_memdep_2_kernel_2mm_writeack),
        .in_memdep_3_kernel_2mm_avm_readdata(avm_memdep_3_kernel_2mm_readdata),
        .in_memdep_3_kernel_2mm_avm_readdatavalid(avm_memdep_3_kernel_2mm_readdatavalid),
        .in_memdep_3_kernel_2mm_avm_waitrequest(avm_memdep_3_kernel_2mm_waitrequest),
        .in_memdep_3_kernel_2mm_avm_writeack(avm_memdep_3_kernel_2mm_writeack),
        .in_memdep_4_kernel_2mm_avm_readdata(avm_memdep_4_kernel_2mm_readdata),
        .in_memdep_4_kernel_2mm_avm_readdatavalid(avm_memdep_4_kernel_2mm_readdatavalid),
        .in_memdep_4_kernel_2mm_avm_waitrequest(avm_memdep_4_kernel_2mm_waitrequest),
        .in_memdep_4_kernel_2mm_avm_writeack(avm_memdep_4_kernel_2mm_writeack),
        .in_memdep_5_kernel_2mm_avm_readdata(avm_memdep_5_kernel_2mm_readdata),
        .in_memdep_5_kernel_2mm_avm_readdatavalid(avm_memdep_5_kernel_2mm_readdatavalid),
        .in_memdep_5_kernel_2mm_avm_waitrequest(avm_memdep_5_kernel_2mm_waitrequest),
        .in_memdep_5_kernel_2mm_avm_writeack(avm_memdep_5_kernel_2mm_writeack),
        .in_memdep_6_kernel_2mm_avm_readdata(avm_memdep_6_kernel_2mm_readdata),
        .in_memdep_6_kernel_2mm_avm_readdatavalid(avm_memdep_6_kernel_2mm_readdatavalid),
        .in_memdep_6_kernel_2mm_avm_waitrequest(avm_memdep_6_kernel_2mm_waitrequest),
        .in_memdep_6_kernel_2mm_avm_writeack(avm_memdep_6_kernel_2mm_writeack),
        .in_memdep_7_kernel_2mm_avm_readdata(avm_memdep_7_kernel_2mm_readdata),
        .in_memdep_7_kernel_2mm_avm_readdatavalid(avm_memdep_7_kernel_2mm_readdatavalid),
        .in_memdep_7_kernel_2mm_avm_waitrequest(avm_memdep_7_kernel_2mm_waitrequest),
        .in_memdep_7_kernel_2mm_avm_writeack(avm_memdep_7_kernel_2mm_writeack),
        .in_memdep_kernel_2mm_avm_readdata(avm_memdep_kernel_2mm_readdata),
        .in_memdep_kernel_2mm_avm_readdatavalid(avm_memdep_kernel_2mm_readdatavalid),
        .in_memdep_kernel_2mm_avm_waitrequest(avm_memdep_kernel_2mm_waitrequest),
        .in_memdep_kernel_2mm_avm_writeack(avm_memdep_kernel_2mm_writeack),
        .in_stall_in(GND_q),
        .in_start(GND_q),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm10_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm10_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm10_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm10_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm10_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm11_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm11_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm11_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm11_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm11_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm12_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm12_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm12_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm12_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm12_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm13_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm13_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm13_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm13_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm13_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm15_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm15_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm15_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm15_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm15_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm16_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm16_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm16_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm16_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm16_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm17_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm17_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm17_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm17_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm17_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm18_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm18_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm18_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm18_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm18_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm19_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm19_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm19_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm19_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm19_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm21_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm21_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm21_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm21_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm21_kernel_2mm_writeack),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdata(avm_unnamed_kernel_2mm9_kernel_2mm_readdata),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_readdatavalid(avm_unnamed_kernel_2mm9_kernel_2mm_readdatavalid),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_waitrequest(avm_unnamed_kernel_2mm9_kernel_2mm_waitrequest),
        .in_unnamed_kernel_2mm9_kernel_2mm_avm_writeack(avm_unnamed_kernel_2mm9_kernel_2mm_writeack),
        .in_valid_in(VCC_q),
        .out_iord_bl_call_kernel_2mm_o_fifoalmost_full(kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_2mm_o_fifoready(kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready),
        .out_iowr_bl_return_kernel_2mm_o_fifodata(kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifodata),
        .out_iowr_bl_return_kernel_2mm_o_fifovalid(kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid),
        .out_memdep_1_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_address),
        .out_memdep_1_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_burstcount),
        .out_memdep_1_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_byteenable),
        .out_memdep_1_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_enable),
        .out_memdep_1_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_read),
        .out_memdep_1_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_write),
        .out_memdep_1_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_1_kernel_2mm_avm_writedata),
        .out_memdep_2_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_2_kernel_2mm_avm_address),
        .out_memdep_2_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_2_kernel_2mm_avm_burstcount),
        .out_memdep_2_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_2_kernel_2mm_avm_byteenable),
        .out_memdep_2_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_2_kernel_2mm_avm_enable),
        .out_memdep_2_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_2_kernel_2mm_avm_read),
        .out_memdep_2_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_2_kernel_2mm_avm_write),
        .out_memdep_2_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_2_kernel_2mm_avm_writedata),
        .out_memdep_3_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_3_kernel_2mm_avm_address),
        .out_memdep_3_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_3_kernel_2mm_avm_burstcount),
        .out_memdep_3_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_3_kernel_2mm_avm_byteenable),
        .out_memdep_3_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_3_kernel_2mm_avm_enable),
        .out_memdep_3_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_3_kernel_2mm_avm_read),
        .out_memdep_3_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_3_kernel_2mm_avm_write),
        .out_memdep_3_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_3_kernel_2mm_avm_writedata),
        .out_memdep_4_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_4_kernel_2mm_avm_address),
        .out_memdep_4_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_4_kernel_2mm_avm_burstcount),
        .out_memdep_4_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_4_kernel_2mm_avm_byteenable),
        .out_memdep_4_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_4_kernel_2mm_avm_enable),
        .out_memdep_4_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_4_kernel_2mm_avm_read),
        .out_memdep_4_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_4_kernel_2mm_avm_write),
        .out_memdep_4_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_4_kernel_2mm_avm_writedata),
        .out_memdep_5_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_5_kernel_2mm_avm_address),
        .out_memdep_5_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_5_kernel_2mm_avm_burstcount),
        .out_memdep_5_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_5_kernel_2mm_avm_byteenable),
        .out_memdep_5_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_5_kernel_2mm_avm_enable),
        .out_memdep_5_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_5_kernel_2mm_avm_read),
        .out_memdep_5_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_5_kernel_2mm_avm_write),
        .out_memdep_5_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_5_kernel_2mm_avm_writedata),
        .out_memdep_6_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_6_kernel_2mm_avm_address),
        .out_memdep_6_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_6_kernel_2mm_avm_burstcount),
        .out_memdep_6_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_6_kernel_2mm_avm_byteenable),
        .out_memdep_6_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_6_kernel_2mm_avm_enable),
        .out_memdep_6_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_6_kernel_2mm_avm_read),
        .out_memdep_6_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_6_kernel_2mm_avm_write),
        .out_memdep_6_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_6_kernel_2mm_avm_writedata),
        .out_memdep_7_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_7_kernel_2mm_avm_address),
        .out_memdep_7_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_7_kernel_2mm_avm_burstcount),
        .out_memdep_7_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_7_kernel_2mm_avm_byteenable),
        .out_memdep_7_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_7_kernel_2mm_avm_enable),
        .out_memdep_7_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_7_kernel_2mm_avm_read),
        .out_memdep_7_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_7_kernel_2mm_avm_write),
        .out_memdep_7_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_7_kernel_2mm_avm_writedata),
        .out_memdep_kernel_2mm_avm_address(kernel_2mm_function_out_memdep_kernel_2mm_avm_address),
        .out_memdep_kernel_2mm_avm_burstcount(kernel_2mm_function_out_memdep_kernel_2mm_avm_burstcount),
        .out_memdep_kernel_2mm_avm_byteenable(kernel_2mm_function_out_memdep_kernel_2mm_avm_byteenable),
        .out_memdep_kernel_2mm_avm_enable(kernel_2mm_function_out_memdep_kernel_2mm_avm_enable),
        .out_memdep_kernel_2mm_avm_read(kernel_2mm_function_out_memdep_kernel_2mm_avm_read),
        .out_memdep_kernel_2mm_avm_write(kernel_2mm_function_out_memdep_kernel_2mm_avm_write),
        .out_memdep_kernel_2mm_avm_writedata(kernel_2mm_function_out_memdep_kernel_2mm_avm_writedata),
        .out_o_active_memdep_7(),
        .out_stall_out(),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_address(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_address),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_enable(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_read(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_read),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_write(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_write),
        .out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata(kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata),
        .out_valid_out(),
        .clock(clock),
        .resetn(resetn)
    );

    // avm_memdep_1_kernel_2mm_address(GPOUT,105)
    assign avm_memdep_1_kernel_2mm_address = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_address;

    // avm_memdep_1_kernel_2mm_burstcount(GPOUT,106)
    assign avm_memdep_1_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_burstcount;

    // avm_memdep_1_kernel_2mm_byteenable(GPOUT,107)
    assign avm_memdep_1_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_byteenable;

    // avm_memdep_1_kernel_2mm_enable(GPOUT,108)
    assign avm_memdep_1_kernel_2mm_enable = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_enable;

    // avm_memdep_1_kernel_2mm_read(GPOUT,109)
    assign avm_memdep_1_kernel_2mm_read = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_read;

    // avm_memdep_1_kernel_2mm_write(GPOUT,110)
    assign avm_memdep_1_kernel_2mm_write = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_write;

    // avm_memdep_1_kernel_2mm_writedata(GPOUT,111)
    assign avm_memdep_1_kernel_2mm_writedata = kernel_2mm_function_out_memdep_1_kernel_2mm_avm_writedata;

    // avm_memdep_2_kernel_2mm_address(GPOUT,112)
    assign avm_memdep_2_kernel_2mm_address = kernel_2mm_function_out_memdep_2_kernel_2mm_avm_address;

    // avm_memdep_2_kernel_2mm_burstcount(GPOUT,113)
    assign avm_memdep_2_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_2_kernel_2mm_avm_burstcount;

    // avm_memdep_2_kernel_2mm_byteenable(GPOUT,114)
    assign avm_memdep_2_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_2_kernel_2mm_avm_byteenable;

    // avm_memdep_2_kernel_2mm_enable(GPOUT,115)
    assign avm_memdep_2_kernel_2mm_enable = kernel_2mm_function_out_memdep_2_kernel_2mm_avm_enable;

    // avm_memdep_2_kernel_2mm_read(GPOUT,116)
    assign avm_memdep_2_kernel_2mm_read = kernel_2mm_function_out_memdep_2_kernel_2mm_avm_read;

    // avm_memdep_2_kernel_2mm_write(GPOUT,117)
    assign avm_memdep_2_kernel_2mm_write = kernel_2mm_function_out_memdep_2_kernel_2mm_avm_write;

    // avm_memdep_2_kernel_2mm_writedata(GPOUT,118)
    assign avm_memdep_2_kernel_2mm_writedata = kernel_2mm_function_out_memdep_2_kernel_2mm_avm_writedata;

    // avm_memdep_3_kernel_2mm_address(GPOUT,119)
    assign avm_memdep_3_kernel_2mm_address = kernel_2mm_function_out_memdep_3_kernel_2mm_avm_address;

    // avm_memdep_3_kernel_2mm_burstcount(GPOUT,120)
    assign avm_memdep_3_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_3_kernel_2mm_avm_burstcount;

    // avm_memdep_3_kernel_2mm_byteenable(GPOUT,121)
    assign avm_memdep_3_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_3_kernel_2mm_avm_byteenable;

    // avm_memdep_3_kernel_2mm_enable(GPOUT,122)
    assign avm_memdep_3_kernel_2mm_enable = kernel_2mm_function_out_memdep_3_kernel_2mm_avm_enable;

    // avm_memdep_3_kernel_2mm_read(GPOUT,123)
    assign avm_memdep_3_kernel_2mm_read = kernel_2mm_function_out_memdep_3_kernel_2mm_avm_read;

    // avm_memdep_3_kernel_2mm_write(GPOUT,124)
    assign avm_memdep_3_kernel_2mm_write = kernel_2mm_function_out_memdep_3_kernel_2mm_avm_write;

    // avm_memdep_3_kernel_2mm_writedata(GPOUT,125)
    assign avm_memdep_3_kernel_2mm_writedata = kernel_2mm_function_out_memdep_3_kernel_2mm_avm_writedata;

    // avm_memdep_4_kernel_2mm_address(GPOUT,126)
    assign avm_memdep_4_kernel_2mm_address = kernel_2mm_function_out_memdep_4_kernel_2mm_avm_address;

    // avm_memdep_4_kernel_2mm_burstcount(GPOUT,127)
    assign avm_memdep_4_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_4_kernel_2mm_avm_burstcount;

    // avm_memdep_4_kernel_2mm_byteenable(GPOUT,128)
    assign avm_memdep_4_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_4_kernel_2mm_avm_byteenable;

    // avm_memdep_4_kernel_2mm_enable(GPOUT,129)
    assign avm_memdep_4_kernel_2mm_enable = kernel_2mm_function_out_memdep_4_kernel_2mm_avm_enable;

    // avm_memdep_4_kernel_2mm_read(GPOUT,130)
    assign avm_memdep_4_kernel_2mm_read = kernel_2mm_function_out_memdep_4_kernel_2mm_avm_read;

    // avm_memdep_4_kernel_2mm_write(GPOUT,131)
    assign avm_memdep_4_kernel_2mm_write = kernel_2mm_function_out_memdep_4_kernel_2mm_avm_write;

    // avm_memdep_4_kernel_2mm_writedata(GPOUT,132)
    assign avm_memdep_4_kernel_2mm_writedata = kernel_2mm_function_out_memdep_4_kernel_2mm_avm_writedata;

    // avm_memdep_5_kernel_2mm_address(GPOUT,133)
    assign avm_memdep_5_kernel_2mm_address = kernel_2mm_function_out_memdep_5_kernel_2mm_avm_address;

    // avm_memdep_5_kernel_2mm_burstcount(GPOUT,134)
    assign avm_memdep_5_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_5_kernel_2mm_avm_burstcount;

    // avm_memdep_5_kernel_2mm_byteenable(GPOUT,135)
    assign avm_memdep_5_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_5_kernel_2mm_avm_byteenable;

    // avm_memdep_5_kernel_2mm_enable(GPOUT,136)
    assign avm_memdep_5_kernel_2mm_enable = kernel_2mm_function_out_memdep_5_kernel_2mm_avm_enable;

    // avm_memdep_5_kernel_2mm_read(GPOUT,137)
    assign avm_memdep_5_kernel_2mm_read = kernel_2mm_function_out_memdep_5_kernel_2mm_avm_read;

    // avm_memdep_5_kernel_2mm_write(GPOUT,138)
    assign avm_memdep_5_kernel_2mm_write = kernel_2mm_function_out_memdep_5_kernel_2mm_avm_write;

    // avm_memdep_5_kernel_2mm_writedata(GPOUT,139)
    assign avm_memdep_5_kernel_2mm_writedata = kernel_2mm_function_out_memdep_5_kernel_2mm_avm_writedata;

    // avm_memdep_6_kernel_2mm_address(GPOUT,140)
    assign avm_memdep_6_kernel_2mm_address = kernel_2mm_function_out_memdep_6_kernel_2mm_avm_address;

    // avm_memdep_6_kernel_2mm_burstcount(GPOUT,141)
    assign avm_memdep_6_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_6_kernel_2mm_avm_burstcount;

    // avm_memdep_6_kernel_2mm_byteenable(GPOUT,142)
    assign avm_memdep_6_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_6_kernel_2mm_avm_byteenable;

    // avm_memdep_6_kernel_2mm_enable(GPOUT,143)
    assign avm_memdep_6_kernel_2mm_enable = kernel_2mm_function_out_memdep_6_kernel_2mm_avm_enable;

    // avm_memdep_6_kernel_2mm_read(GPOUT,144)
    assign avm_memdep_6_kernel_2mm_read = kernel_2mm_function_out_memdep_6_kernel_2mm_avm_read;

    // avm_memdep_6_kernel_2mm_write(GPOUT,145)
    assign avm_memdep_6_kernel_2mm_write = kernel_2mm_function_out_memdep_6_kernel_2mm_avm_write;

    // avm_memdep_6_kernel_2mm_writedata(GPOUT,146)
    assign avm_memdep_6_kernel_2mm_writedata = kernel_2mm_function_out_memdep_6_kernel_2mm_avm_writedata;

    // avm_memdep_7_kernel_2mm_address(GPOUT,147)
    assign avm_memdep_7_kernel_2mm_address = kernel_2mm_function_out_memdep_7_kernel_2mm_avm_address;

    // avm_memdep_7_kernel_2mm_burstcount(GPOUT,148)
    assign avm_memdep_7_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_7_kernel_2mm_avm_burstcount;

    // avm_memdep_7_kernel_2mm_byteenable(GPOUT,149)
    assign avm_memdep_7_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_7_kernel_2mm_avm_byteenable;

    // avm_memdep_7_kernel_2mm_enable(GPOUT,150)
    assign avm_memdep_7_kernel_2mm_enable = kernel_2mm_function_out_memdep_7_kernel_2mm_avm_enable;

    // avm_memdep_7_kernel_2mm_read(GPOUT,151)
    assign avm_memdep_7_kernel_2mm_read = kernel_2mm_function_out_memdep_7_kernel_2mm_avm_read;

    // avm_memdep_7_kernel_2mm_write(GPOUT,152)
    assign avm_memdep_7_kernel_2mm_write = kernel_2mm_function_out_memdep_7_kernel_2mm_avm_write;

    // avm_memdep_7_kernel_2mm_writedata(GPOUT,153)
    assign avm_memdep_7_kernel_2mm_writedata = kernel_2mm_function_out_memdep_7_kernel_2mm_avm_writedata;

    // avm_memdep_kernel_2mm_address(GPOUT,154)
    assign avm_memdep_kernel_2mm_address = kernel_2mm_function_out_memdep_kernel_2mm_avm_address;

    // avm_memdep_kernel_2mm_burstcount(GPOUT,155)
    assign avm_memdep_kernel_2mm_burstcount = kernel_2mm_function_out_memdep_kernel_2mm_avm_burstcount;

    // avm_memdep_kernel_2mm_byteenable(GPOUT,156)
    assign avm_memdep_kernel_2mm_byteenable = kernel_2mm_function_out_memdep_kernel_2mm_avm_byteenable;

    // avm_memdep_kernel_2mm_enable(GPOUT,157)
    assign avm_memdep_kernel_2mm_enable = kernel_2mm_function_out_memdep_kernel_2mm_avm_enable;

    // avm_memdep_kernel_2mm_read(GPOUT,158)
    assign avm_memdep_kernel_2mm_read = kernel_2mm_function_out_memdep_kernel_2mm_avm_read;

    // avm_memdep_kernel_2mm_write(GPOUT,159)
    assign avm_memdep_kernel_2mm_write = kernel_2mm_function_out_memdep_kernel_2mm_avm_write;

    // avm_memdep_kernel_2mm_writedata(GPOUT,160)
    assign avm_memdep_kernel_2mm_writedata = kernel_2mm_function_out_memdep_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm10_kernel_2mm_address(GPOUT,161)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm10_kernel_2mm_burstcount(GPOUT,162)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm10_kernel_2mm_byteenable(GPOUT,163)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm10_kernel_2mm_enable(GPOUT,164)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm10_kernel_2mm_read(GPOUT,165)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm10_kernel_2mm_write(GPOUT,166)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm10_kernel_2mm_writedata(GPOUT,167)
    assign avm_unnamed_kernel_2mm10_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm10_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm11_kernel_2mm_address(GPOUT,168)
    assign avm_unnamed_kernel_2mm11_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm11_kernel_2mm_burstcount(GPOUT,169)
    assign avm_unnamed_kernel_2mm11_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm11_kernel_2mm_byteenable(GPOUT,170)
    assign avm_unnamed_kernel_2mm11_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm11_kernel_2mm_enable(GPOUT,171)
    assign avm_unnamed_kernel_2mm11_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm11_kernel_2mm_read(GPOUT,172)
    assign avm_unnamed_kernel_2mm11_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm11_kernel_2mm_write(GPOUT,173)
    assign avm_unnamed_kernel_2mm11_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm11_kernel_2mm_writedata(GPOUT,174)
    assign avm_unnamed_kernel_2mm11_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm11_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm12_kernel_2mm_address(GPOUT,175)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm12_kernel_2mm_burstcount(GPOUT,176)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm12_kernel_2mm_byteenable(GPOUT,177)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm12_kernel_2mm_enable(GPOUT,178)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm12_kernel_2mm_read(GPOUT,179)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm12_kernel_2mm_write(GPOUT,180)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm12_kernel_2mm_writedata(GPOUT,181)
    assign avm_unnamed_kernel_2mm12_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm12_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm13_kernel_2mm_address(GPOUT,182)
    assign avm_unnamed_kernel_2mm13_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm13_kernel_2mm_burstcount(GPOUT,183)
    assign avm_unnamed_kernel_2mm13_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm13_kernel_2mm_byteenable(GPOUT,184)
    assign avm_unnamed_kernel_2mm13_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm13_kernel_2mm_enable(GPOUT,185)
    assign avm_unnamed_kernel_2mm13_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm13_kernel_2mm_read(GPOUT,186)
    assign avm_unnamed_kernel_2mm13_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm13_kernel_2mm_write(GPOUT,187)
    assign avm_unnamed_kernel_2mm13_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm13_kernel_2mm_writedata(GPOUT,188)
    assign avm_unnamed_kernel_2mm13_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm13_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm15_kernel_2mm_address(GPOUT,189)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm15_kernel_2mm_burstcount(GPOUT,190)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm15_kernel_2mm_byteenable(GPOUT,191)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm15_kernel_2mm_enable(GPOUT,192)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm15_kernel_2mm_read(GPOUT,193)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm15_kernel_2mm_write(GPOUT,194)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm15_kernel_2mm_writedata(GPOUT,195)
    assign avm_unnamed_kernel_2mm15_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm15_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm16_kernel_2mm_address(GPOUT,196)
    assign avm_unnamed_kernel_2mm16_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm16_kernel_2mm_burstcount(GPOUT,197)
    assign avm_unnamed_kernel_2mm16_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm16_kernel_2mm_byteenable(GPOUT,198)
    assign avm_unnamed_kernel_2mm16_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm16_kernel_2mm_enable(GPOUT,199)
    assign avm_unnamed_kernel_2mm16_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm16_kernel_2mm_read(GPOUT,200)
    assign avm_unnamed_kernel_2mm16_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm16_kernel_2mm_write(GPOUT,201)
    assign avm_unnamed_kernel_2mm16_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm16_kernel_2mm_writedata(GPOUT,202)
    assign avm_unnamed_kernel_2mm16_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm16_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm17_kernel_2mm_address(GPOUT,203)
    assign avm_unnamed_kernel_2mm17_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm17_kernel_2mm_burstcount(GPOUT,204)
    assign avm_unnamed_kernel_2mm17_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm17_kernel_2mm_byteenable(GPOUT,205)
    assign avm_unnamed_kernel_2mm17_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm17_kernel_2mm_enable(GPOUT,206)
    assign avm_unnamed_kernel_2mm17_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm17_kernel_2mm_read(GPOUT,207)
    assign avm_unnamed_kernel_2mm17_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm17_kernel_2mm_write(GPOUT,208)
    assign avm_unnamed_kernel_2mm17_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm17_kernel_2mm_writedata(GPOUT,209)
    assign avm_unnamed_kernel_2mm17_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm17_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm18_kernel_2mm_address(GPOUT,210)
    assign avm_unnamed_kernel_2mm18_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm18_kernel_2mm_burstcount(GPOUT,211)
    assign avm_unnamed_kernel_2mm18_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm18_kernel_2mm_byteenable(GPOUT,212)
    assign avm_unnamed_kernel_2mm18_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm18_kernel_2mm_enable(GPOUT,213)
    assign avm_unnamed_kernel_2mm18_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm18_kernel_2mm_read(GPOUT,214)
    assign avm_unnamed_kernel_2mm18_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm18_kernel_2mm_write(GPOUT,215)
    assign avm_unnamed_kernel_2mm18_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm18_kernel_2mm_writedata(GPOUT,216)
    assign avm_unnamed_kernel_2mm18_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm18_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm19_kernel_2mm_address(GPOUT,217)
    assign avm_unnamed_kernel_2mm19_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm19_kernel_2mm_burstcount(GPOUT,218)
    assign avm_unnamed_kernel_2mm19_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm19_kernel_2mm_byteenable(GPOUT,219)
    assign avm_unnamed_kernel_2mm19_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm19_kernel_2mm_enable(GPOUT,220)
    assign avm_unnamed_kernel_2mm19_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm19_kernel_2mm_read(GPOUT,221)
    assign avm_unnamed_kernel_2mm19_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm19_kernel_2mm_write(GPOUT,222)
    assign avm_unnamed_kernel_2mm19_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm19_kernel_2mm_writedata(GPOUT,223)
    assign avm_unnamed_kernel_2mm19_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm19_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm21_kernel_2mm_address(GPOUT,224)
    assign avm_unnamed_kernel_2mm21_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm21_kernel_2mm_burstcount(GPOUT,225)
    assign avm_unnamed_kernel_2mm21_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm21_kernel_2mm_byteenable(GPOUT,226)
    assign avm_unnamed_kernel_2mm21_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm21_kernel_2mm_enable(GPOUT,227)
    assign avm_unnamed_kernel_2mm21_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm21_kernel_2mm_read(GPOUT,228)
    assign avm_unnamed_kernel_2mm21_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm21_kernel_2mm_write(GPOUT,229)
    assign avm_unnamed_kernel_2mm21_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm21_kernel_2mm_writedata(GPOUT,230)
    assign avm_unnamed_kernel_2mm21_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm21_kernel_2mm_avm_writedata;

    // avm_unnamed_kernel_2mm9_kernel_2mm_address(GPOUT,231)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_address = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_address;

    // avm_unnamed_kernel_2mm9_kernel_2mm_burstcount(GPOUT,232)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_burstcount = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_burstcount;

    // avm_unnamed_kernel_2mm9_kernel_2mm_byteenable(GPOUT,233)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_byteenable = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_byteenable;

    // avm_unnamed_kernel_2mm9_kernel_2mm_enable(GPOUT,234)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_enable = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_enable;

    // avm_unnamed_kernel_2mm9_kernel_2mm_read(GPOUT,235)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_read = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_read;

    // avm_unnamed_kernel_2mm9_kernel_2mm_write(GPOUT,236)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_write = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_write;

    // avm_unnamed_kernel_2mm9_kernel_2mm_writedata(GPOUT,237)
    assign avm_unnamed_kernel_2mm9_kernel_2mm_writedata = kernel_2mm_function_out_unnamed_kernel_2mm9_kernel_2mm_avm_writedata;

    // avst_iord_bl_call_kernel_2mm_almost_full(GPOUT,238)
    assign avst_iord_bl_call_kernel_2mm_almost_full = kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoalmost_full;

    // avst_iord_bl_call_kernel_2mm_ready(GPOUT,239)
    assign avst_iord_bl_call_kernel_2mm_ready = kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready;

    // avst_iowr_bl_return_kernel_2mm_data(GPOUT,240)
    assign avst_iowr_bl_return_kernel_2mm_data = kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifodata;

    // avst_iowr_bl_return_kernel_2mm_valid(GPOUT,241)
    assign avst_iowr_bl_return_kernel_2mm_valid = kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid;

    // not_ready(LOGICAL,103)
    assign not_ready_q = ~ (kernel_2mm_function_out_iord_bl_call_kernel_2mm_o_fifoready);

    // busy_and(LOGICAL,6)
    assign busy_and_q = not_ready_q & start;

    // reset_wire_inst(EXTIFACE,245)
    assign reset_wire_inst_o_resetn[0] = reset_wire_inst_o_resetn_bitsignaltemp;
    acl_reset_wire thereset_wire_inst (
        .o_resetn(reset_wire_inst_o_resetn_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // pos_reset(LOGICAL,244)
    assign pos_reset_q = ~ (reset_wire_inst_o_resetn);

    // busy_or(LOGICAL,7)
    assign busy_or_q = pos_reset_q | busy_and_q;

    // busy(GPOUT,242)
    assign busy = busy_or_q;

    // done(GPOUT,243)
    assign done = kernel_2mm_function_out_iowr_bl_return_kernel_2mm_o_fifovalid;

endmodule
