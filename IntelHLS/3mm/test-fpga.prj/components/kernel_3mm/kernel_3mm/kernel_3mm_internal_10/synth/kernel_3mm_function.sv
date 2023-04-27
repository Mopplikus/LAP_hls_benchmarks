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
// SystemVerilog created on Thu Apr 27 14:26:51 2023


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
    input wire [31:0] in_memdep_1_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_1_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_6_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_6_kernel_3mm_avm_writeack,
    input wire [31:0] in_memdep_kernel_3mm_avm_readdata,
    input wire [0:0] in_memdep_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_memdep_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_memdep_kernel_3mm_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_kernel_3mm_o_fifoready,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifodata,
    output wire [0:0] out_iowr_bl_return_kernel_3mm_o_fifovalid,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_1_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_1_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_6_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_6_kernel_3mm_avm_writedata,
    output wire [31:0] out_memdep_kernel_3mm_avm_address,
    output wire [0:0] out_memdep_kernel_3mm_avm_burstcount,
    output wire [3:0] out_memdep_kernel_3mm_avm_byteenable,
    output wire [0:0] out_memdep_kernel_3mm_avm_enable,
    output wire [0:0] out_memdep_kernel_3mm_avm_read,
    output wire [0:0] out_memdep_kernel_3mm_avm_write,
    output wire [31:0] out_memdep_kernel_3mm_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_kernel_3mm_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B0_runOnce_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe2519;
    wire [31:0] bb_kernel_3mm_B10_out_c0_exe3520;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe4521;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe5522;
    wire [0:0] bb_kernel_3mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B10_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B10_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe10557;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe11558;
    wire [31:0] bb_kernel_3mm_B11_out_c0_exe12559;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe13560;
    wire [31:0] bb_kernel_3mm_B11_out_c0_exe1548;
    wire [63:0] bb_kernel_3mm_B11_out_c0_exe2549;
    wire [63:0] bb_kernel_3mm_B11_out_c0_exe3550;
    wire [63:0] bb_kernel_3mm_B11_out_c0_exe4551;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe5552;
    wire [31:0] bb_kernel_3mm_B11_out_c0_exe6553;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe8555;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe9556;
    wire [0:0] bb_kernel_3mm_B11_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B11_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B11_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B12_out_c0_exe1601;
    wire [31:0] bb_kernel_3mm_B12_out_c0_exe3603;
    wire [0:0] bb_kernel_3mm_B12_out_c0_exe6606;
    wire [63:0] bb_kernel_3mm_B12_out_c0_exe7607;
    wire [0:0] bb_kernel_3mm_B12_out_c0_exe8608;
    wire [0:0] bb_kernel_3mm_B12_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_3mm_B12_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B12_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B12_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B12_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B13_out_c0_exe160138;
    wire [0:0] bb_kernel_3mm_B13_out_c0_exe1620;
    wire [0:0] bb_kernel_3mm_B13_out_c0_exe660641;
    wire [31:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B13_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B13_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B13_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B13_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B14_out_c0_exe160137;
    wire [0:0] bb_kernel_3mm_B14_out_c0_exe162045;
    wire [0:0] bb_kernel_3mm_B14_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B14_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B14_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B14_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_almost_empty_out_20;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_almost_empty_out_21;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_data_out_20;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_data_out_21;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_empty_out_20;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_empty_out_21;
    wire [0:0] bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [0:0] bb_kernel_3mm_B15_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B15_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B15_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B15_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_c0_exe2;
    wire [0:0] bb_kernel_3mm_B1_start_out_feedback_stall_out_17;
    wire [0:0] bb_kernel_3mm_B1_start_out_feedback_stall_out_20;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] bb_kernel_3mm_B1_start_out_memdep_phi3_pop19;
    wire [0:0] bb_kernel_3mm_B1_start_out_memdep_phi_pop17;
    wire [0:0] bb_kernel_3mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe10;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe11;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe12;
    wire [31:0] bb_kernel_3mm_B2_out_c0_exe1271;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe13;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe3;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe4;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe5;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe6;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe7;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe8;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe9;
    wire [0:0] bb_kernel_3mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B2_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B2_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe10309;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe11310;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe12311;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe1300;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe13312;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe14;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe15;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe16;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe17;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe18;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe19;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe20;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe21;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe22;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe23;
    wire [63:0] bb_kernel_3mm_B3_out_c0_exe2301;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe24;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe25;
    wire [63:0] bb_kernel_3mm_B3_out_c0_exe3302;
    wire [63:0] bb_kernel_3mm_B3_out_c0_exe4303;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe5304;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe6305;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe8307;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe9308;
    wire [0:0] bb_kernel_3mm_B3_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B3_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe10375;
    wire [31:0] bb_kernel_3mm_B4_out_c0_exe11376;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe12377;
    wire [63:0] bb_kernel_3mm_B4_out_c0_exe13378;
    wire [63:0] bb_kernel_3mm_B4_out_c0_exe1366;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe14379;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe15380;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe16381;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe17382;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe18383;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe19384;
    wire [31:0] bb_kernel_3mm_B4_out_c0_exe20385;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe21386;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe22387;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe23388;
    wire [63:0] bb_kernel_3mm_B4_out_c0_exe2367;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe24389;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe25390;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe26;
    wire [31:0] bb_kernel_3mm_B4_out_c0_exe3368;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe6371;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe7372;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe8373;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe9374;
    wire [0:0] bb_kernel_3mm_B4_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_3mm_B4_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B4_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B4_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B4_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe103758;
    wire [31:0] bb_kernel_3mm_B5_out_c0_exe113769;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1237710;
    wire [63:0] bb_kernel_3mm_B5_out_c0_exe13661;
    wire [63:0] bb_kernel_3mm_B5_out_c0_exe1401;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1437912;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1538013;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1638114;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1738215;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1838316;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1938417;
    wire [31:0] bb_kernel_3mm_B5_out_c0_exe2038518;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2138619;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2238720;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2338821;
    wire [63:0] bb_kernel_3mm_B5_out_c0_exe23672;
    wire [31:0] bb_kernel_3mm_B5_out_c0_exe2402;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2438922;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2539023;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2624;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe63714;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe73725;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe83736;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe93747;
    wire [0:0] bb_kernel_3mm_B5_out_c1_exe1;
    wire [31:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B6_out_c0_exe1476;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe4479;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe5480;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe6481;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe7482;
    wire [63:0] bb_kernel_3mm_B6_out_c0_exe9484;
    wire [0:0] bb_kernel_3mm_B6_out_profile_loop_o_valid;
    wire [0:0] bb_kernel_3mm_B6_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B6_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B6_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B6_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe1506;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe447928;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe648131;
    wire [31:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B7_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B7_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B7_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe150635;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe447927;
    wire [0:0] bb_kernel_3mm_B8_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B8_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B8_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_almost_empty_out_17;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_data_out_17;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_empty_out_17;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_stall_out_21;
    wire [0:0] bb_kernel_3mm_B9_out_memdep_phi7_pop21;
    wire [0:0] bb_kernel_3mm_B9_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B9_out_valid_out_0;
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
    wire [0:0] kernel_3mm_B11_x_i_capture;
    wire kernel_3mm_B11_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_clear;
    wire kernel_3mm_B11_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_enable;
    wire kernel_3mm_B11_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_shift;
    wire kernel_3mm_B11_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_stall_pred;
    wire kernel_3mm_B11_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_stall_succ;
    wire kernel_3mm_B11_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_valid_loop;
    wire kernel_3mm_B11_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_valid_pred;
    wire kernel_3mm_B11_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B11_x_i_valid_succ;
    wire kernel_3mm_B11_x_i_valid_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_capture;
    wire kernel_3mm_B12_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_clear;
    wire kernel_3mm_B12_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_enable;
    wire kernel_3mm_B12_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_shift;
    wire kernel_3mm_B12_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_stall_pred;
    wire kernel_3mm_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_stall_succ;
    wire kernel_3mm_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_valid_loop;
    wire kernel_3mm_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_valid_pred;
    wire kernel_3mm_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B12_x_i_valid_succ;
    wire kernel_3mm_B12_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] kernel_3mm_B4_x_i_capture;
    wire kernel_3mm_B4_x_i_capture_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_clear;
    wire kernel_3mm_B4_x_i_clear_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_enable;
    wire kernel_3mm_B4_x_i_enable_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_shift;
    wire kernel_3mm_B4_x_i_shift_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_stall_pred;
    wire kernel_3mm_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_stall_succ;
    wire kernel_3mm_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_valid_loop;
    wire kernel_3mm_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_valid_pred;
    wire kernel_3mm_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] kernel_3mm_B4_x_i_valid_succ;
    wire kernel_3mm_B4_x_i_valid_succ_bitsignaltemp;
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
    reg [0:0] rst_sync_rst_sclrn;


    // bb_kernel_3mm_B13(BLACKBOX,6)
    kernel_3mm_bb_B13 thebb_kernel_3mm_B13 (
        .in_c0_exe160138_0(bb_kernel_3mm_B12_out_c0_exe1601),
        .in_c0_exe360339_0(bb_kernel_3mm_B12_out_c0_exe3603),
        .in_c0_exe660641_0(bb_kernel_3mm_B12_out_c0_exe6606),
        .in_c0_exe760742_0(bb_kernel_3mm_B12_out_c0_exe7607),
        .in_c0_exe860843_0(bb_kernel_3mm_B12_out_c0_exe8608),
        .in_flush(in_start),
        .in_memdep_6_kernel_3mm_avm_readdata(in_memdep_6_kernel_3mm_avm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(in_memdep_6_kernel_3mm_avm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(in_memdep_6_kernel_3mm_avm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(in_memdep_6_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B14_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B12_out_valid_out_0),
        .out_c0_exe160138(bb_kernel_3mm_B13_out_c0_exe160138),
        .out_c0_exe1620(bb_kernel_3mm_B13_out_c0_exe1620),
        .out_c0_exe660641(bb_kernel_3mm_B13_out_c0_exe660641),
        .out_memdep_6_kernel_3mm_avm_address(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B13_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B13_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B13_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12(BLACKBOX,5)
    kernel_3mm_bb_B12 thebb_kernel_3mm_B12 (
        .in_arrayidx817248_0(bb_kernel_3mm_B11_out_c0_exe4551),
        .in_flush(in_start),
        .in_i_252_pop30241_0(bb_kernel_3mm_B11_out_c0_exe12559),
        .in_i_252_pop3094_pop45245_0(bb_kernel_3mm_B11_out_c0_exe1548),
        .in_idxprom78246_0(bb_kernel_3mm_B11_out_c0_exe2549),
        .in_idxprom80247_0(bb_kernel_3mm_B11_out_c0_exe3550),
        .in_memdep_phi7_pop21234_0(bb_kernel_3mm_B11_out_c0_exe10557),
        .in_memdep_phi7_pop2181_pop31244_0(bb_kernel_3mm_B11_out_c0_exe13560),
        .in_memdep_phi7_pop2182_pop43249_0(bb_kernel_3mm_B11_out_c0_exe5552),
        .in_notcmp26250_0(bb_kernel_3mm_B11_out_c0_exe8555),
        .in_notcmp31238_0(bb_kernel_3mm_B11_out_c0_exe11558),
        .in_notcmp3192_pop44251_0(bb_kernel_3mm_B11_out_c0_exe9556),
        .in_stall_in_0(bb_kernel_3mm_B13_out_stall_out_0),
        .in_unnamed_kernel_3mm11_0(bb_kernel_3mm_B11_out_c0_exe6553),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B11_out_valid_out_0),
        .out_c0_exe1601(bb_kernel_3mm_B12_out_c0_exe1601),
        .out_c0_exe3603(bb_kernel_3mm_B12_out_c0_exe3603),
        .out_c0_exe6606(bb_kernel_3mm_B12_out_c0_exe6606),
        .out_c0_exe7607(bb_kernel_3mm_B12_out_c0_exe7607),
        .out_c0_exe8608(bb_kernel_3mm_B12_out_c0_exe8608),
        .out_profile_loop_o_valid(bb_kernel_3mm_B12_out_profile_loop_o_valid),
        .out_stall_in_0(bb_kernel_3mm_B12_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B12_out_stall_out_0),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_address(bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_read(bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_write(bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_address(bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_read(bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_write(bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B12_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B11(BLACKBOX,4)
    kernel_3mm_bb_B11 thebb_kernel_3mm_B11 (
        .in_flush(in_start),
        .in_i_252_pop30239_0(bb_kernel_3mm_B10_out_c0_exe3520),
        .in_memdep_phi7_pop21235_0(bb_kernel_3mm_B10_out_c0_exe5522),
        .in_memdep_phi7_pop2181_pop31242_0(bb_kernel_3mm_B10_out_c0_exe4521),
        .in_notcmp31236_0(bb_kernel_3mm_B10_out_c0_exe2519),
        .in_stall_in_0(bb_kernel_3mm_B12_out_stall_out_0),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B10_out_valid_out_0),
        .out_c0_exe10557(bb_kernel_3mm_B11_out_c0_exe10557),
        .out_c0_exe11558(bb_kernel_3mm_B11_out_c0_exe11558),
        .out_c0_exe12559(bb_kernel_3mm_B11_out_c0_exe12559),
        .out_c0_exe13560(bb_kernel_3mm_B11_out_c0_exe13560),
        .out_c0_exe1548(bb_kernel_3mm_B11_out_c0_exe1548),
        .out_c0_exe2549(bb_kernel_3mm_B11_out_c0_exe2549),
        .out_c0_exe3550(bb_kernel_3mm_B11_out_c0_exe3550),
        .out_c0_exe4551(bb_kernel_3mm_B11_out_c0_exe4551),
        .out_c0_exe5552(bb_kernel_3mm_B11_out_c0_exe5552),
        .out_c0_exe6553(bb_kernel_3mm_B11_out_c0_exe6553),
        .out_c0_exe8555(bb_kernel_3mm_B11_out_c0_exe8555),
        .out_c0_exe9556(bb_kernel_3mm_B11_out_c0_exe9556),
        .out_stall_out_0(bb_kernel_3mm_B11_out_stall_out_0),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B11_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10(BLACKBOX,3)
    kernel_3mm_bb_B10 thebb_kernel_3mm_B10 (
        .in_memdep_phi7_pop21231_0(bb_kernel_3mm_B9_out_memdep_phi7_pop21),
        .in_stall_in_0(bb_kernel_3mm_B11_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B9_out_valid_out_0),
        .out_c0_exe2519(bb_kernel_3mm_B10_out_c0_exe2519),
        .out_c0_exe3520(bb_kernel_3mm_B10_out_c0_exe3520),
        .out_c0_exe4521(bb_kernel_3mm_B10_out_c0_exe4521),
        .out_c0_exe5522(bb_kernel_3mm_B10_out_c0_exe5522),
        .out_stall_out_0(bb_kernel_3mm_B10_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B10_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2(BLACKBOX,10)
    kernel_3mm_bb_B2 thebb_kernel_3mm_B2 (
        .in_forked112_0(bb_kernel_3mm_B1_start_out_c0_exe2),
        .in_memdep_phi2_pop18126_0(bb_kernel_3mm_B1_start_out_memdep_phi_pop17),
        .in_memdep_phi3_pop19133_0(bb_kernel_3mm_B1_start_out_memdep_phi3_pop19),
        .in_memdep_phi5_pop20140_0(bb_kernel_3mm_B1_start_out_memdep_phi3_pop19),
        .in_memdep_phi_pop17119_0(bb_kernel_3mm_B1_start_out_memdep_phi_pop17),
        .in_stall_in_0(bb_kernel_3mm_B3_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B1_start_out_valid_out_0),
        .out_c0_exe10(bb_kernel_3mm_B2_out_c0_exe10),
        .out_c0_exe11(bb_kernel_3mm_B2_out_c0_exe11),
        .out_c0_exe12(bb_kernel_3mm_B2_out_c0_exe12),
        .out_c0_exe1271(bb_kernel_3mm_B2_out_c0_exe1271),
        .out_c0_exe13(bb_kernel_3mm_B2_out_c0_exe13),
        .out_c0_exe3(bb_kernel_3mm_B2_out_c0_exe3),
        .out_c0_exe4(bb_kernel_3mm_B2_out_c0_exe4),
        .out_c0_exe5(bb_kernel_3mm_B2_out_c0_exe5),
        .out_c0_exe6(bb_kernel_3mm_B2_out_c0_exe6),
        .out_c0_exe7(bb_kernel_3mm_B2_out_c0_exe7),
        .out_c0_exe8(bb_kernel_3mm_B2_out_c0_exe8),
        .out_c0_exe9(bb_kernel_3mm_B2_out_c0_exe9),
        .out_stall_out_0(bb_kernel_3mm_B2_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B2_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3(BLACKBOX,11)
    kernel_3mm_bb_B3 thebb_kernel_3mm_B3 (
        .in_flush(in_start),
        .in_forked118_0(bb_kernel_3mm_B2_out_c0_exe9),
        .in_forked60_pop24157_0(bb_kernel_3mm_B2_out_c0_exe4),
        .in_i_060_pop23147_0(bb_kernel_3mm_B2_out_c0_exe1271),
        .in_memdep_phi2_pop18132_0(bb_kernel_3mm_B2_out_c0_exe11),
        .in_memdep_phi2_pop1868_pop26167_0(bb_kernel_3mm_B2_out_c0_exe6),
        .in_memdep_phi3_pop19139_0(bb_kernel_3mm_B2_out_c0_exe12),
        .in_memdep_phi3_pop1972_pop27172_0(bb_kernel_3mm_B2_out_c0_exe7),
        .in_memdep_phi5_pop20146_0(bb_kernel_3mm_B2_out_c0_exe13),
        .in_memdep_phi5_pop2076_pop28177_0(bb_kernel_3mm_B2_out_c0_exe8),
        .in_memdep_phi_pop17125_0(bb_kernel_3mm_B2_out_c0_exe10),
        .in_memdep_phi_pop1764_pop25162_0(bb_kernel_3mm_B2_out_c0_exe5),
        .in_notcmp51152_0(bb_kernel_3mm_B2_out_c0_exe3),
        .in_stall_in_0(bb_kernel_3mm_B4_out_stall_out_0),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm1_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm1_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm1_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B2_out_valid_out_0),
        .out_c0_exe10309(bb_kernel_3mm_B3_out_c0_exe10309),
        .out_c0_exe11310(bb_kernel_3mm_B3_out_c0_exe11310),
        .out_c0_exe12311(bb_kernel_3mm_B3_out_c0_exe12311),
        .out_c0_exe1300(bb_kernel_3mm_B3_out_c0_exe1300),
        .out_c0_exe13312(bb_kernel_3mm_B3_out_c0_exe13312),
        .out_c0_exe14(bb_kernel_3mm_B3_out_c0_exe14),
        .out_c0_exe15(bb_kernel_3mm_B3_out_c0_exe15),
        .out_c0_exe16(bb_kernel_3mm_B3_out_c0_exe16),
        .out_c0_exe17(bb_kernel_3mm_B3_out_c0_exe17),
        .out_c0_exe18(bb_kernel_3mm_B3_out_c0_exe18),
        .out_c0_exe19(bb_kernel_3mm_B3_out_c0_exe19),
        .out_c0_exe20(bb_kernel_3mm_B3_out_c0_exe20),
        .out_c0_exe21(bb_kernel_3mm_B3_out_c0_exe21),
        .out_c0_exe22(bb_kernel_3mm_B3_out_c0_exe22),
        .out_c0_exe23(bb_kernel_3mm_B3_out_c0_exe23),
        .out_c0_exe2301(bb_kernel_3mm_B3_out_c0_exe2301),
        .out_c0_exe24(bb_kernel_3mm_B3_out_c0_exe24),
        .out_c0_exe25(bb_kernel_3mm_B3_out_c0_exe25),
        .out_c0_exe3302(bb_kernel_3mm_B3_out_c0_exe3302),
        .out_c0_exe4303(bb_kernel_3mm_B3_out_c0_exe4303),
        .out_c0_exe5304(bb_kernel_3mm_B3_out_c0_exe5304),
        .out_c0_exe6305(bb_kernel_3mm_B3_out_c0_exe6305),
        .out_c0_exe8307(bb_kernel_3mm_B3_out_c0_exe8307),
        .out_c0_exe9308(bb_kernel_3mm_B3_out_c0_exe9308),
        .out_stall_out_0(bb_kernel_3mm_B3_out_stall_out_0),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B3_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4(BLACKBOX,12)
    kernel_3mm_bb_B4 thebb_kernel_3mm_B4 (
        .in_arrayidx121185_0(bb_kernel_3mm_B3_out_c0_exe4303),
        .in_flush(in_start),
        .in_forked117_0(bb_kernel_3mm_B3_out_c0_exe14),
        .in_forked60_pop24161_0(bb_kernel_3mm_B3_out_c0_exe21),
        .in_forked61_pop34188_0(bb_kernel_3mm_B3_out_c0_exe9308),
        .in_i_060_pop23151_0(bb_kernel_3mm_B3_out_c0_exe19),
        .in_i_060_pop2385_pop39182_0(bb_kernel_3mm_B3_out_c0_exe1300),
        .in_idxprom11184_0(bb_kernel_3mm_B3_out_c0_exe3302),
        .in_idxprom183_0(bb_kernel_3mm_B3_out_c0_exe2301),
        .in_memdep_phi2_pop18131_0(bb_kernel_3mm_B3_out_c0_exe16),
        .in_memdep_phi2_pop1868_pop26171_0(bb_kernel_3mm_B3_out_c0_exe23),
        .in_memdep_phi2_pop1869_pop36189_0(bb_kernel_3mm_B3_out_c0_exe10309),
        .in_memdep_phi3_pop19138_0(bb_kernel_3mm_B3_out_c0_exe17),
        .in_memdep_phi3_pop1972_pop27176_0(bb_kernel_3mm_B3_out_c0_exe24),
        .in_memdep_phi3_pop1973_pop37190_0(bb_kernel_3mm_B3_out_c0_exe11310),
        .in_memdep_phi5_pop20145_0(bb_kernel_3mm_B3_out_c0_exe18),
        .in_memdep_phi5_pop2076_pop28181_0(bb_kernel_3mm_B3_out_c0_exe25),
        .in_memdep_phi5_pop2077_pop38191_0(bb_kernel_3mm_B3_out_c0_exe12311),
        .in_memdep_phi_pop17124_0(bb_kernel_3mm_B3_out_c0_exe15),
        .in_memdep_phi_pop1764_pop25166_0(bb_kernel_3mm_B3_out_c0_exe22),
        .in_memdep_phi_pop1765_pop35186_0(bb_kernel_3mm_B3_out_c0_exe5304),
        .in_notcmp46187_0(bb_kernel_3mm_B3_out_c0_exe8307),
        .in_notcmp51156_0(bb_kernel_3mm_B3_out_c0_exe20),
        .in_notcmp5188_pop40192_0(bb_kernel_3mm_B3_out_c0_exe13312),
        .in_stall_in_0(bb_kernel_3mm_B5_out_stall_out_0),
        .in_unnamed_kernel_3mm2_0(bb_kernel_3mm_B3_out_c0_exe6305),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm3_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm3_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm3_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B3_out_valid_out_0),
        .out_c0_exe10375(bb_kernel_3mm_B4_out_c0_exe10375),
        .out_c0_exe11376(bb_kernel_3mm_B4_out_c0_exe11376),
        .out_c0_exe12377(bb_kernel_3mm_B4_out_c0_exe12377),
        .out_c0_exe13378(bb_kernel_3mm_B4_out_c0_exe13378),
        .out_c0_exe1366(bb_kernel_3mm_B4_out_c0_exe1366),
        .out_c0_exe14379(bb_kernel_3mm_B4_out_c0_exe14379),
        .out_c0_exe15380(bb_kernel_3mm_B4_out_c0_exe15380),
        .out_c0_exe16381(bb_kernel_3mm_B4_out_c0_exe16381),
        .out_c0_exe17382(bb_kernel_3mm_B4_out_c0_exe17382),
        .out_c0_exe18383(bb_kernel_3mm_B4_out_c0_exe18383),
        .out_c0_exe19384(bb_kernel_3mm_B4_out_c0_exe19384),
        .out_c0_exe20385(bb_kernel_3mm_B4_out_c0_exe20385),
        .out_c0_exe21386(bb_kernel_3mm_B4_out_c0_exe21386),
        .out_c0_exe22387(bb_kernel_3mm_B4_out_c0_exe22387),
        .out_c0_exe23388(bb_kernel_3mm_B4_out_c0_exe23388),
        .out_c0_exe2367(bb_kernel_3mm_B4_out_c0_exe2367),
        .out_c0_exe24389(bb_kernel_3mm_B4_out_c0_exe24389),
        .out_c0_exe25390(bb_kernel_3mm_B4_out_c0_exe25390),
        .out_c0_exe26(bb_kernel_3mm_B4_out_c0_exe26),
        .out_c0_exe3368(bb_kernel_3mm_B4_out_c0_exe3368),
        .out_c0_exe6371(bb_kernel_3mm_B4_out_c0_exe6371),
        .out_c0_exe7372(bb_kernel_3mm_B4_out_c0_exe7372),
        .out_c0_exe8373(bb_kernel_3mm_B4_out_c0_exe8373),
        .out_c0_exe9374(bb_kernel_3mm_B4_out_c0_exe9374),
        .out_profile_loop_o_valid(bb_kernel_3mm_B4_out_profile_loop_o_valid),
        .out_stall_in_0(bb_kernel_3mm_B4_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B4_out_stall_out_0),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_address(bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_enable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_read(bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_write(bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B4_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5(BLACKBOX,13)
    kernel_3mm_bb_B5 thebb_kernel_3mm_B5 (
        .in_c0_exe103758_0(bb_kernel_3mm_B4_out_c0_exe10375),
        .in_c0_exe113769_0(bb_kernel_3mm_B4_out_c0_exe11376),
        .in_c0_exe1237710_0(bb_kernel_3mm_B4_out_c0_exe12377),
        .in_c0_exe1337811_0(bb_kernel_3mm_B4_out_c0_exe13378),
        .in_c0_exe13661_0(bb_kernel_3mm_B4_out_c0_exe1366),
        .in_c0_exe1437912_0(bb_kernel_3mm_B4_out_c0_exe14379),
        .in_c0_exe1538013_0(bb_kernel_3mm_B4_out_c0_exe15380),
        .in_c0_exe1638114_0(bb_kernel_3mm_B4_out_c0_exe16381),
        .in_c0_exe1738215_0(bb_kernel_3mm_B4_out_c0_exe17382),
        .in_c0_exe1838316_0(bb_kernel_3mm_B4_out_c0_exe18383),
        .in_c0_exe1938417_0(bb_kernel_3mm_B4_out_c0_exe19384),
        .in_c0_exe2038518_0(bb_kernel_3mm_B4_out_c0_exe20385),
        .in_c0_exe2138619_0(bb_kernel_3mm_B4_out_c0_exe21386),
        .in_c0_exe2238720_0(bb_kernel_3mm_B4_out_c0_exe22387),
        .in_c0_exe2338821_0(bb_kernel_3mm_B4_out_c0_exe23388),
        .in_c0_exe23672_0(bb_kernel_3mm_B4_out_c0_exe2367),
        .in_c0_exe2438922_0(bb_kernel_3mm_B4_out_c0_exe24389),
        .in_c0_exe2539023_0(bb_kernel_3mm_B4_out_c0_exe25390),
        .in_c0_exe2624_0(bb_kernel_3mm_B4_out_c0_exe26),
        .in_c0_exe33683_0(bb_kernel_3mm_B4_out_c0_exe3368),
        .in_c0_exe63714_0(bb_kernel_3mm_B4_out_c0_exe6371),
        .in_c0_exe73725_0(bb_kernel_3mm_B4_out_c0_exe7372),
        .in_c0_exe83736_0(bb_kernel_3mm_B4_out_c0_exe8373),
        .in_c0_exe93747_0(bb_kernel_3mm_B4_out_c0_exe9374),
        .in_flush(in_start),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B6_out_stall_out_0),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B4_out_valid_out_0),
        .out_c0_exe103758(bb_kernel_3mm_B5_out_c0_exe103758),
        .out_c0_exe113769(bb_kernel_3mm_B5_out_c0_exe113769),
        .out_c0_exe1237710(bb_kernel_3mm_B5_out_c0_exe1237710),
        .out_c0_exe13661(bb_kernel_3mm_B5_out_c0_exe13661),
        .out_c0_exe1401(bb_kernel_3mm_B5_out_c0_exe1401),
        .out_c0_exe1437912(bb_kernel_3mm_B5_out_c0_exe1437912),
        .out_c0_exe1538013(bb_kernel_3mm_B5_out_c0_exe1538013),
        .out_c0_exe1638114(bb_kernel_3mm_B5_out_c0_exe1638114),
        .out_c0_exe1738215(bb_kernel_3mm_B5_out_c0_exe1738215),
        .out_c0_exe1838316(bb_kernel_3mm_B5_out_c0_exe1838316),
        .out_c0_exe1938417(bb_kernel_3mm_B5_out_c0_exe1938417),
        .out_c0_exe2038518(bb_kernel_3mm_B5_out_c0_exe2038518),
        .out_c0_exe2138619(bb_kernel_3mm_B5_out_c0_exe2138619),
        .out_c0_exe2238720(bb_kernel_3mm_B5_out_c0_exe2238720),
        .out_c0_exe2338821(bb_kernel_3mm_B5_out_c0_exe2338821),
        .out_c0_exe23672(bb_kernel_3mm_B5_out_c0_exe23672),
        .out_c0_exe2402(bb_kernel_3mm_B5_out_c0_exe2402),
        .out_c0_exe2438922(bb_kernel_3mm_B5_out_c0_exe2438922),
        .out_c0_exe2539023(bb_kernel_3mm_B5_out_c0_exe2539023),
        .out_c0_exe2624(bb_kernel_3mm_B5_out_c0_exe2624),
        .out_c0_exe63714(bb_kernel_3mm_B5_out_c0_exe63714),
        .out_c0_exe73725(bb_kernel_3mm_B5_out_c0_exe73725),
        .out_c0_exe83736(bb_kernel_3mm_B5_out_c0_exe83736),
        .out_c0_exe93747(bb_kernel_3mm_B5_out_c0_exe93747),
        .out_c1_exe1(bb_kernel_3mm_B5_out_c1_exe1),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_out_0(bb_kernel_3mm_B5_out_stall_out_0),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .out_valid_out_0(bb_kernel_3mm_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6(BLACKBOX,14)
    kernel_3mm_bb_B6 thebb_kernel_3mm_B6 (
        .in_arrayidx444216_0(bb_kernel_3mm_B5_out_c0_exe1401),
        .in_flush(in_start),
        .in_forked115_0(bb_kernel_3mm_B5_out_c0_exe1538013),
        .in_forked60_pop24159_0(bb_kernel_3mm_B5_out_c0_exe2238720),
        .in_forked62_pop49198_0(bb_kernel_3mm_B5_out_c0_exe63714),
        .in_i_060_pop23149_0(bb_kernel_3mm_B5_out_c0_exe2038518),
        .in_i_060_pop2386_pop54208_0(bb_kernel_3mm_B5_out_c0_exe113769),
        .in_idxprom1199_pop57195_0(bb_kernel_3mm_B5_out_c0_exe23672),
        .in_idxprom97_pop56193_0(bb_kernel_3mm_B5_out_c0_exe13661),
        .in_memdep_215_0(bb_kernel_3mm_B5_out_c1_exe1),
        .in_memdep_phi2_pop18129_0(bb_kernel_3mm_B5_out_c0_exe1738215),
        .in_memdep_phi2_pop1868_pop26169_0(bb_kernel_3mm_B5_out_c0_exe2438922),
        .in_memdep_phi2_pop1870_pop51202_0(bb_kernel_3mm_B5_out_c0_exe83736),
        .in_memdep_phi3_pop19136_0(bb_kernel_3mm_B5_out_c0_exe1838316),
        .in_memdep_phi3_pop1972_pop27174_0(bb_kernel_3mm_B5_out_c0_exe2539023),
        .in_memdep_phi3_pop1974_pop52204_0(bb_kernel_3mm_B5_out_c0_exe93747),
        .in_memdep_phi5_pop20143_0(bb_kernel_3mm_B5_out_c0_exe1938417),
        .in_memdep_phi5_pop2076_pop28179_0(bb_kernel_3mm_B5_out_c0_exe2624),
        .in_memdep_phi5_pop2078_pop53206_0(bb_kernel_3mm_B5_out_c0_exe103758),
        .in_memdep_phi_pop17122_0(bb_kernel_3mm_B5_out_c0_exe1638114),
        .in_memdep_phi_pop1764_pop25164_0(bb_kernel_3mm_B5_out_c0_exe2338821),
        .in_memdep_phi_pop1766_pop50200_0(bb_kernel_3mm_B5_out_c0_exe73725),
        .in_notcmp46102_pop59213_0(bb_kernel_3mm_B5_out_c0_exe1437912),
        .in_notcmp51154_0(bb_kernel_3mm_B5_out_c0_exe2138619),
        .in_notcmp5189_pop55210_0(bb_kernel_3mm_B5_out_c0_exe1237710),
        .in_stall_in_0(bb_kernel_3mm_B7_out_stall_out_0),
        .in_unnamed_kernel_3mm7_0(bb_kernel_3mm_B5_out_c0_exe2402),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B5_out_valid_out_0),
        .out_c0_exe1476(bb_kernel_3mm_B6_out_c0_exe1476),
        .out_c0_exe4479(bb_kernel_3mm_B6_out_c0_exe4479),
        .out_c0_exe5480(bb_kernel_3mm_B6_out_c0_exe5480),
        .out_c0_exe6481(bb_kernel_3mm_B6_out_c0_exe6481),
        .out_c0_exe7482(bb_kernel_3mm_B6_out_c0_exe7482),
        .out_c0_exe9484(bb_kernel_3mm_B6_out_c0_exe9484),
        .out_profile_loop_o_valid(bb_kernel_3mm_B6_out_profile_loop_o_valid),
        .out_stall_in_0(bb_kernel_3mm_B6_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B6_out_stall_out_0),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_address(bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_read(bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_write(bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_address(bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_read(bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_write(bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B6_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B7(BLACKBOX,15)
    kernel_3mm_bb_B7 thebb_kernel_3mm_B7 (
        .in_c0_exe147625_0(bb_kernel_3mm_B6_out_c0_exe1476),
        .in_c0_exe447928_0(bb_kernel_3mm_B6_out_c0_exe4479),
        .in_c0_exe548029_0(bb_kernel_3mm_B6_out_c0_exe5480),
        .in_c0_exe648131_0(bb_kernel_3mm_B6_out_c0_exe6481),
        .in_c0_exe748232_0(bb_kernel_3mm_B6_out_c0_exe7482),
        .in_c0_exe948433_0(bb_kernel_3mm_B6_out_c0_exe9484),
        .in_flush(in_start),
        .in_memdep_1_kernel_3mm_avm_readdata(in_memdep_1_kernel_3mm_avm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(in_memdep_1_kernel_3mm_avm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(in_memdep_1_kernel_3mm_avm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(in_memdep_1_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B8_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B6_out_valid_out_0),
        .out_c0_exe1506(bb_kernel_3mm_B7_out_c0_exe1506),
        .out_c0_exe447928(bb_kernel_3mm_B7_out_c0_exe447928),
        .out_c0_exe648131(bb_kernel_3mm_B7_out_c0_exe648131),
        .out_memdep_1_kernel_3mm_avm_address(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B7_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B7_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B7_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B8(BLACKBOX,16)
    kernel_3mm_bb_B8 thebb_kernel_3mm_B8 (
        .in_c0_exe150635_0(bb_kernel_3mm_B7_out_c0_exe1506),
        .in_c0_exe447927_0(bb_kernel_3mm_B7_out_c0_exe447928),
        .in_c0_exe648130_0(bb_kernel_3mm_B7_out_c0_exe648131),
        .in_stall_in_0(bb_kernel_3mm_B9_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B7_out_valid_out_0),
        .out_c0_exe150635(bb_kernel_3mm_B8_out_c0_exe150635),
        .out_c0_exe447927(bb_kernel_3mm_B8_out_c0_exe447927),
        .out_stall_in_0(bb_kernel_3mm_B8_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B8_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B8_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9(BLACKBOX,17)
    kernel_3mm_bb_B9 thebb_kernel_3mm_B9 (
        .in_c0_exe150634_0(bb_kernel_3mm_B8_out_c0_exe150635),
        .in_c0_exe447926_0(bb_kernel_3mm_B8_out_c0_exe447927),
        .in_feedback_almost_empty_in_21(bb_kernel_3mm_B15_out_feedback_almost_empty_out_21),
        .in_feedback_data_in_21(bb_kernel_3mm_B15_out_feedback_data_out_21),
        .in_feedback_empty_in_21(bb_kernel_3mm_B15_out_feedback_empty_out_21),
        .in_feedback_stall_in_17(bb_kernel_3mm_B1_start_out_feedback_stall_out_17),
        .in_stall_in_0(bb_kernel_3mm_B10_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B8_out_valid_out_0),
        .out_feedback_almost_empty_out_17(bb_kernel_3mm_B9_out_feedback_almost_empty_out_17),
        .out_feedback_data_out_17(bb_kernel_3mm_B9_out_feedback_data_out_17),
        .out_feedback_empty_out_17(bb_kernel_3mm_B9_out_feedback_empty_out_17),
        .out_feedback_stall_out_21(bb_kernel_3mm_B9_out_feedback_stall_out_21),
        .out_memdep_phi7_pop21(bb_kernel_3mm_B9_out_memdep_phi7_pop21),
        .out_stall_out_0(bb_kernel_3mm_B9_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14(BLACKBOX,7)
    kernel_3mm_bb_B14 thebb_kernel_3mm_B14 (
        .in_c0_exe160137_0(bb_kernel_3mm_B13_out_c0_exe160138),
        .in_c0_exe162045_0(bb_kernel_3mm_B13_out_c0_exe1620),
        .in_c0_exe660640_0(bb_kernel_3mm_B13_out_c0_exe660641),
        .in_stall_in_0(bb_kernel_3mm_B15_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B13_out_valid_out_0),
        .out_c0_exe160137(bb_kernel_3mm_B14_out_c0_exe160137),
        .out_c0_exe162045(bb_kernel_3mm_B14_out_c0_exe162045),
        .out_stall_in_0(bb_kernel_3mm_B14_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B14_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B14_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B14_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15(BLACKBOX,8)
    kernel_3mm_bb_B15 thebb_kernel_3mm_B15 (
        .in_c0_exe160136_0(bb_kernel_3mm_B14_out_c0_exe160137),
        .in_c0_exe162044_0(bb_kernel_3mm_B14_out_c0_exe162045),
        .in_feedback_stall_in_20(bb_kernel_3mm_B1_start_out_feedback_stall_out_20),
        .in_feedback_stall_in_21(bb_kernel_3mm_B9_out_feedback_stall_out_21),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(in_iowr_bl_return_kernel_3mm_i_fifoready),
        .in_stall_in_0(in_stall_in),
        .in_valid_in_0(bb_kernel_3mm_B14_out_valid_out_0),
        .out_feedback_almost_empty_out_20(bb_kernel_3mm_B15_out_feedback_almost_empty_out_20),
        .out_feedback_almost_empty_out_21(bb_kernel_3mm_B15_out_feedback_almost_empty_out_21),
        .out_feedback_data_out_20(bb_kernel_3mm_B15_out_feedback_data_out_20),
        .out_feedback_data_out_21(bb_kernel_3mm_B15_out_feedback_data_out_21),
        .out_feedback_empty_out_20(bb_kernel_3mm_B15_out_feedback_empty_out_20),
        .out_feedback_empty_out_21(bb_kernel_3mm_B15_out_feedback_empty_out_21),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_3mm_B15_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B15_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B15_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B15_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B0_runOnce(BLACKBOX,2)
    kernel_3mm_bb_B0_runOnce thebb_kernel_3mm_B0_runOnce (
        .in_stall_in_0(bb_kernel_3mm_B1_start_out_stall_out_0),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_3mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B0_runOnce_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B1_start(BLACKBOX,9)
    kernel_3mm_bb_B1_start thebb_kernel_3mm_B1_start (
        .in_feedback_almost_empty_in_17(bb_kernel_3mm_B9_out_feedback_almost_empty_out_17),
        .in_feedback_almost_empty_in_20(bb_kernel_3mm_B15_out_feedback_almost_empty_out_20),
        .in_feedback_data_in_17(bb_kernel_3mm_B9_out_feedback_data_out_17),
        .in_feedback_data_in_20(bb_kernel_3mm_B15_out_feedback_data_out_20),
        .in_feedback_empty_in_17(bb_kernel_3mm_B9_out_feedback_empty_out_17),
        .in_feedback_empty_in_20(bb_kernel_3mm_B15_out_feedback_empty_out_20),
        .in_iord_bl_call_kernel_3mm_i_fifodata(in_iord_bl_call_kernel_3mm_i_fifodata),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(in_iord_bl_call_kernel_3mm_i_fifovalid),
        .in_stall_in_0(bb_kernel_3mm_B2_out_stall_out_0),
        .in_valid_in_0(bb_kernel_3mm_B0_runOnce_out_valid_out_0),
        .out_c0_exe2(bb_kernel_3mm_B1_start_out_c0_exe2),
        .out_feedback_stall_out_17(bb_kernel_3mm_B1_start_out_feedback_stall_out_17),
        .out_feedback_stall_out_20(bb_kernel_3mm_B1_start_out_feedback_stall_out_20),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_memdep_phi3_pop19(bb_kernel_3mm_B1_start_out_memdep_phi3_pop19),
        .out_memdep_phi_pop17(bb_kernel_3mm_B1_start_out_memdep_phi_pop17),
        .out_stall_out_0(bb_kernel_3mm_B1_start_out_stall_out_0),
        .out_valid_in_0(bb_kernel_3mm_B1_start_out_valid_in_0),
        .out_valid_out_0(bb_kernel_3mm_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_3mm_B1_start_x(EXTIFACE,97)
    assign kernel_3mm_B1_start_x_i_capture = GND_q;
    assign kernel_3mm_B1_start_x_i_clear = GND_q;
    assign kernel_3mm_B1_start_x_i_enable = VCC_q;
    assign kernel_3mm_B1_start_x_i_shift = GND_q;
    assign kernel_3mm_B1_start_x_i_stall_pred = bb_kernel_3mm_B1_start_out_stall_out_0;
    assign kernel_3mm_B1_start_x_i_stall_succ = bb_kernel_3mm_B15_out_stall_in_0;
    assign kernel_3mm_B1_start_x_i_valid_loop = bb_kernel_3mm_B15_out_valid_in_0;
    assign kernel_3mm_B1_start_x_i_valid_pred = bb_kernel_3mm_B1_start_out_valid_in_0;
    assign kernel_3mm_B1_start_x_i_valid_succ = bb_kernel_3mm_B15_out_valid_out_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_3mm_B10_x(EXTIFACE,98)
    assign kernel_3mm_B10_x_i_capture = GND_q;
    assign kernel_3mm_B10_x_i_clear = GND_q;
    assign kernel_3mm_B10_x_i_enable = VCC_q;
    assign kernel_3mm_B10_x_i_shift = GND_q;
    assign kernel_3mm_B10_x_i_stall_pred = bb_kernel_3mm_B10_out_stall_out_0;
    assign kernel_3mm_B10_x_i_stall_succ = bb_kernel_3mm_B14_out_stall_in_0;
    assign kernel_3mm_B10_x_i_valid_loop = bb_kernel_3mm_B14_out_valid_in_0;
    assign kernel_3mm_B10_x_i_valid_pred = bb_kernel_3mm_B10_out_valid_in_0;
    assign kernel_3mm_B10_x_i_valid_succ = bb_kernel_3mm_B14_out_valid_out_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_3mm_B11_x(EXTIFACE,99)
    assign kernel_3mm_B11_x_i_capture = GND_q;
    assign kernel_3mm_B11_x_i_clear = GND_q;
    assign kernel_3mm_B11_x_i_enable = VCC_q;
    assign kernel_3mm_B11_x_i_shift = GND_q;
    assign kernel_3mm_B11_x_i_stall_pred = bb_kernel_3mm_B11_out_stall_out_0;
    assign kernel_3mm_B11_x_i_stall_succ = bb_kernel_3mm_B13_out_stall_in_0;
    assign kernel_3mm_B11_x_i_valid_loop = bb_kernel_3mm_B13_out_valid_in_0;
    assign kernel_3mm_B11_x_i_valid_pred = bb_kernel_3mm_B11_out_valid_in_0;
    assign kernel_3mm_B11_x_i_valid_succ = bb_kernel_3mm_B13_out_valid_out_0;
    assign kernel_3mm_B11_x_i_capture_bitsignaltemp = kernel_3mm_B11_x_i_capture[0];
    assign kernel_3mm_B11_x_i_clear_bitsignaltemp = kernel_3mm_B11_x_i_clear[0];
    assign kernel_3mm_B11_x_i_enable_bitsignaltemp = kernel_3mm_B11_x_i_enable[0];
    assign kernel_3mm_B11_x_i_shift_bitsignaltemp = kernel_3mm_B11_x_i_shift[0];
    assign kernel_3mm_B11_x_i_stall_pred_bitsignaltemp = kernel_3mm_B11_x_i_stall_pred[0];
    assign kernel_3mm_B11_x_i_stall_succ_bitsignaltemp = kernel_3mm_B11_x_i_stall_succ[0];
    assign kernel_3mm_B11_x_i_valid_loop_bitsignaltemp = kernel_3mm_B11_x_i_valid_loop[0];
    assign kernel_3mm_B11_x_i_valid_pred_bitsignaltemp = kernel_3mm_B11_x_i_valid_pred[0];
    assign kernel_3mm_B11_x_i_valid_succ_bitsignaltemp = kernel_3mm_B11_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B11")
    ) thekernel_3mm_B11_x (
        .i_capture(kernel_3mm_B11_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B11_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B11_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B11_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B11_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B11_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B11_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B11_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B11_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_3mm_B12_x(EXTIFACE,100)
    assign kernel_3mm_B12_x_i_capture = GND_q;
    assign kernel_3mm_B12_x_i_clear = GND_q;
    assign kernel_3mm_B12_x_i_enable = VCC_q;
    assign kernel_3mm_B12_x_i_shift = GND_q;
    assign kernel_3mm_B12_x_i_stall_pred = bb_kernel_3mm_B12_out_stall_out_0;
    assign kernel_3mm_B12_x_i_stall_succ = bb_kernel_3mm_B12_out_stall_in_0;
    assign kernel_3mm_B12_x_i_valid_loop = bb_kernel_3mm_B12_out_profile_loop_o_valid;
    assign kernel_3mm_B12_x_i_valid_pred = bb_kernel_3mm_B12_out_valid_in_0;
    assign kernel_3mm_B12_x_i_valid_succ = bb_kernel_3mm_B12_out_valid_out_0;
    assign kernel_3mm_B12_x_i_capture_bitsignaltemp = kernel_3mm_B12_x_i_capture[0];
    assign kernel_3mm_B12_x_i_clear_bitsignaltemp = kernel_3mm_B12_x_i_clear[0];
    assign kernel_3mm_B12_x_i_enable_bitsignaltemp = kernel_3mm_B12_x_i_enable[0];
    assign kernel_3mm_B12_x_i_shift_bitsignaltemp = kernel_3mm_B12_x_i_shift[0];
    assign kernel_3mm_B12_x_i_stall_pred_bitsignaltemp = kernel_3mm_B12_x_i_stall_pred[0];
    assign kernel_3mm_B12_x_i_stall_succ_bitsignaltemp = kernel_3mm_B12_x_i_stall_succ[0];
    assign kernel_3mm_B12_x_i_valid_loop_bitsignaltemp = kernel_3mm_B12_x_i_valid_loop[0];
    assign kernel_3mm_B12_x_i_valid_pred_bitsignaltemp = kernel_3mm_B12_x_i_valid_pred[0];
    assign kernel_3mm_B12_x_i_valid_succ_bitsignaltemp = kernel_3mm_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B12")
    ) thekernel_3mm_B12_x (
        .i_capture(kernel_3mm_B12_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B12_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B12_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_3mm_B2_x(EXTIFACE,101)
    assign kernel_3mm_B2_x_i_capture = GND_q;
    assign kernel_3mm_B2_x_i_clear = GND_q;
    assign kernel_3mm_B2_x_i_enable = VCC_q;
    assign kernel_3mm_B2_x_i_shift = GND_q;
    assign kernel_3mm_B2_x_i_stall_pred = bb_kernel_3mm_B2_out_stall_out_0;
    assign kernel_3mm_B2_x_i_stall_succ = bb_kernel_3mm_B8_out_stall_in_0;
    assign kernel_3mm_B2_x_i_valid_loop = bb_kernel_3mm_B8_out_valid_in_0;
    assign kernel_3mm_B2_x_i_valid_pred = bb_kernel_3mm_B2_out_valid_in_0;
    assign kernel_3mm_B2_x_i_valid_succ = bb_kernel_3mm_B8_out_valid_out_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_3mm_B3_x(EXTIFACE,102)
    assign kernel_3mm_B3_x_i_capture = GND_q;
    assign kernel_3mm_B3_x_i_clear = GND_q;
    assign kernel_3mm_B3_x_i_enable = VCC_q;
    assign kernel_3mm_B3_x_i_shift = GND_q;
    assign kernel_3mm_B3_x_i_stall_pred = bb_kernel_3mm_B3_out_stall_out_0;
    assign kernel_3mm_B3_x_i_stall_succ = bb_kernel_3mm_B7_out_stall_in_0;
    assign kernel_3mm_B3_x_i_valid_loop = bb_kernel_3mm_B7_out_valid_in_0;
    assign kernel_3mm_B3_x_i_valid_pred = bb_kernel_3mm_B3_out_valid_in_0;
    assign kernel_3mm_B3_x_i_valid_succ = bb_kernel_3mm_B7_out_valid_out_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_3mm_B4_x(EXTIFACE,103)
    assign kernel_3mm_B4_x_i_capture = GND_q;
    assign kernel_3mm_B4_x_i_clear = GND_q;
    assign kernel_3mm_B4_x_i_enable = VCC_q;
    assign kernel_3mm_B4_x_i_shift = GND_q;
    assign kernel_3mm_B4_x_i_stall_pred = bb_kernel_3mm_B4_out_stall_out_0;
    assign kernel_3mm_B4_x_i_stall_succ = bb_kernel_3mm_B4_out_stall_in_0;
    assign kernel_3mm_B4_x_i_valid_loop = bb_kernel_3mm_B4_out_profile_loop_o_valid;
    assign kernel_3mm_B4_x_i_valid_pred = bb_kernel_3mm_B4_out_valid_in_0;
    assign kernel_3mm_B4_x_i_valid_succ = bb_kernel_3mm_B4_out_valid_out_0;
    assign kernel_3mm_B4_x_i_capture_bitsignaltemp = kernel_3mm_B4_x_i_capture[0];
    assign kernel_3mm_B4_x_i_clear_bitsignaltemp = kernel_3mm_B4_x_i_clear[0];
    assign kernel_3mm_B4_x_i_enable_bitsignaltemp = kernel_3mm_B4_x_i_enable[0];
    assign kernel_3mm_B4_x_i_shift_bitsignaltemp = kernel_3mm_B4_x_i_shift[0];
    assign kernel_3mm_B4_x_i_stall_pred_bitsignaltemp = kernel_3mm_B4_x_i_stall_pred[0];
    assign kernel_3mm_B4_x_i_stall_succ_bitsignaltemp = kernel_3mm_B4_x_i_stall_succ[0];
    assign kernel_3mm_B4_x_i_valid_loop_bitsignaltemp = kernel_3mm_B4_x_i_valid_loop[0];
    assign kernel_3mm_B4_x_i_valid_pred_bitsignaltemp = kernel_3mm_B4_x_i_valid_pred[0];
    assign kernel_3mm_B4_x_i_valid_succ_bitsignaltemp = kernel_3mm_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("kernel_3mm.B4")
    ) thekernel_3mm_B4_x (
        .i_capture(kernel_3mm_B4_x_i_capture_bitsignaltemp),
        .i_clear(kernel_3mm_B4_x_i_clear_bitsignaltemp),
        .i_enable(kernel_3mm_B4_x_i_enable_bitsignaltemp),
        .i_shift(kernel_3mm_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(kernel_3mm_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(kernel_3mm_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(kernel_3mm_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(kernel_3mm_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(kernel_3mm_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(rst_sync_rst_sclrn[0])
    );

    // kernel_3mm_B6_x(EXTIFACE,104)
    assign kernel_3mm_B6_x_i_capture = GND_q;
    assign kernel_3mm_B6_x_i_clear = GND_q;
    assign kernel_3mm_B6_x_i_enable = VCC_q;
    assign kernel_3mm_B6_x_i_shift = GND_q;
    assign kernel_3mm_B6_x_i_stall_pred = bb_kernel_3mm_B6_out_stall_out_0;
    assign kernel_3mm_B6_x_i_stall_succ = bb_kernel_3mm_B6_out_stall_in_0;
    assign kernel_3mm_B6_x_i_valid_loop = bb_kernel_3mm_B6_out_profile_loop_o_valid;
    assign kernel_3mm_B6_x_i_valid_pred = bb_kernel_3mm_B6_out_valid_in_0;
    assign kernel_3mm_B6_x_i_valid_succ = bb_kernel_3mm_B6_out_valid_out_0;
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
        .resetn(rst_sync_rst_sclrn[0])
    );

    // out_iord_bl_call_kernel_3mm_o_fifoalmost_full(GPOUT,105)
    assign out_iord_bl_call_kernel_3mm_o_fifoalmost_full = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_3mm_o_fifoready(GPOUT,106)
    assign out_iord_bl_call_kernel_3mm_o_fifoready = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;

    // out_iowr_bl_return_kernel_3mm_o_fifodata(GPOUT,107)
    assign out_iowr_bl_return_kernel_3mm_o_fifodata = bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // out_iowr_bl_return_kernel_3mm_o_fifovalid(GPOUT,108)
    assign out_iowr_bl_return_kernel_3mm_o_fifovalid = bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // out_memdep_1_kernel_3mm_avm_address(GPOUT,109)
    assign out_memdep_1_kernel_3mm_avm_address = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_address;

    // out_memdep_1_kernel_3mm_avm_burstcount(GPOUT,110)
    assign out_memdep_1_kernel_3mm_avm_burstcount = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_burstcount;

    // out_memdep_1_kernel_3mm_avm_byteenable(GPOUT,111)
    assign out_memdep_1_kernel_3mm_avm_byteenable = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_byteenable;

    // out_memdep_1_kernel_3mm_avm_enable(GPOUT,112)
    assign out_memdep_1_kernel_3mm_avm_enable = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_enable;

    // out_memdep_1_kernel_3mm_avm_read(GPOUT,113)
    assign out_memdep_1_kernel_3mm_avm_read = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_read;

    // out_memdep_1_kernel_3mm_avm_write(GPOUT,114)
    assign out_memdep_1_kernel_3mm_avm_write = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_write;

    // out_memdep_1_kernel_3mm_avm_writedata(GPOUT,115)
    assign out_memdep_1_kernel_3mm_avm_writedata = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_writedata;

    // out_memdep_6_kernel_3mm_avm_address(GPOUT,116)
    assign out_memdep_6_kernel_3mm_avm_address = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_address;

    // out_memdep_6_kernel_3mm_avm_burstcount(GPOUT,117)
    assign out_memdep_6_kernel_3mm_avm_burstcount = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_burstcount;

    // out_memdep_6_kernel_3mm_avm_byteenable(GPOUT,118)
    assign out_memdep_6_kernel_3mm_avm_byteenable = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_byteenable;

    // out_memdep_6_kernel_3mm_avm_enable(GPOUT,119)
    assign out_memdep_6_kernel_3mm_avm_enable = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_enable;

    // out_memdep_6_kernel_3mm_avm_read(GPOUT,120)
    assign out_memdep_6_kernel_3mm_avm_read = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_read;

    // out_memdep_6_kernel_3mm_avm_write(GPOUT,121)
    assign out_memdep_6_kernel_3mm_avm_write = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_write;

    // out_memdep_6_kernel_3mm_avm_writedata(GPOUT,122)
    assign out_memdep_6_kernel_3mm_avm_writedata = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_writedata;

    // out_memdep_kernel_3mm_avm_address(GPOUT,123)
    assign out_memdep_kernel_3mm_avm_address = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address;

    // out_memdep_kernel_3mm_avm_burstcount(GPOUT,124)
    assign out_memdep_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount;

    // out_memdep_kernel_3mm_avm_byteenable(GPOUT,125)
    assign out_memdep_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable;

    // out_memdep_kernel_3mm_avm_enable(GPOUT,126)
    assign out_memdep_kernel_3mm_avm_enable = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable;

    // out_memdep_kernel_3mm_avm_read(GPOUT,127)
    assign out_memdep_kernel_3mm_avm_read = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read;

    // out_memdep_kernel_3mm_avm_write(GPOUT,128)
    assign out_memdep_kernel_3mm_avm_write = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write;

    // out_memdep_kernel_3mm_avm_writedata(GPOUT,129)
    assign out_memdep_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata;

    // out_stall_out(GPOUT,130)
    assign out_stall_out = bb_kernel_3mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_address(GPOUT,131)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(GPOUT,132)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(GPOUT,133)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(GPOUT,134)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_read(GPOUT,135)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_write(GPOUT,136)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(GPOUT,137)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_address(GPOUT,138)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(GPOUT,139)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(GPOUT,140)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(GPOUT,141)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_read(GPOUT,142)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_write(GPOUT,143)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(GPOUT,144)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_address(GPOUT,145)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(GPOUT,146)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(GPOUT,147)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(GPOUT,148)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_read(GPOUT,149)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_write(GPOUT,150)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(GPOUT,151)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_address(GPOUT,152)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount(GPOUT,153)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable(GPOUT,154)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_enable(GPOUT,155)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_read(GPOUT,156)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_write(GPOUT,157)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata(GPOUT,158)
    assign out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm1_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_address(GPOUT,159)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_address = bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount(GPOUT,160)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable(GPOUT,161)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_enable(GPOUT,162)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_enable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_read(GPOUT,163)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_read = bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_write(GPOUT,164)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_write = bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata(GPOUT,165)
    assign out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_out_unnamed_kernel_3mm3_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_address(GPOUT,166)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_address = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(GPOUT,167)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(GPOUT,168)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(GPOUT,169)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_enable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_read(GPOUT,170)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_read = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_write(GPOUT,171)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_write = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(GPOUT,172)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_address(GPOUT,173)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_address = bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(GPOUT,174)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(GPOUT,175)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(GPOUT,176)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_enable = bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_read(GPOUT,177)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_read = bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_write(GPOUT,178)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_write = bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(GPOUT,179)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_address(GPOUT,180)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(GPOUT,181)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(GPOUT,182)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(GPOUT,183)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_read(GPOUT,184)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_write(GPOUT,185)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(GPOUT,186)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_address(GPOUT,187)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(GPOUT,188)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(GPOUT,189)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(GPOUT,190)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_read(GPOUT,191)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_write(GPOUT,192)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(GPOUT,193)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;

    // out_valid_out(GPOUT,194)
    assign out_valid_out = bb_kernel_3mm_B15_out_valid_out_0;

    // rst_sync(RESETSYNC,195)
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
