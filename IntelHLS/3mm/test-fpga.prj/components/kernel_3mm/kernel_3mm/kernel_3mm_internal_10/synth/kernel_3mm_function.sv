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
// SystemVerilog created on Fri Apr  7 18:25:08 2023


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
    input wire [31:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack,
    input wire [31:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest,
    input wire [0:0] in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack,
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
    output wire [31:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata,
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
    output wire [31:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_address,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount,
    output wire [3:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_enable,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_read,
    output wire [0:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_write,
    output wire [31:0] out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata,
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
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe2529;
    wire [31:0] bb_kernel_3mm_B10_out_c0_exe3530;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe4531;
    wire [0:0] bb_kernel_3mm_B10_out_c0_exe5532;
    wire [0:0] bb_kernel_3mm_B10_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B10_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B10_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B10_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B10_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B10_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B10_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B10_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe10567;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe11568;
    wire [31:0] bb_kernel_3mm_B11_out_c0_exe12569;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe13570;
    wire [31:0] bb_kernel_3mm_B11_out_c0_exe1558;
    wire [63:0] bb_kernel_3mm_B11_out_c0_exe2559;
    wire [63:0] bb_kernel_3mm_B11_out_c0_exe3560;
    wire [63:0] bb_kernel_3mm_B11_out_c0_exe4561;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe5562;
    wire [31:0] bb_kernel_3mm_B11_out_c0_exe6563;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe8565;
    wire [0:0] bb_kernel_3mm_B11_out_c0_exe9566;
    wire [0:0] bb_kernel_3mm_B11_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B11_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B11_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B11_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B11_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B11_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B11_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B11_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B12_out_c0_exe2612;
    wire [31:0] bb_kernel_3mm_B12_out_c0_exe4614;
    wire [0:0] bb_kernel_3mm_B12_out_c0_exe6616;
    wire [63:0] bb_kernel_3mm_B12_out_c0_exe7617;
    wire [0:0] bb_kernel_3mm_B12_out_c0_exe8618;
    wire [0:0] bb_kernel_3mm_B12_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B12_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B12_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B12_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B12_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B12_out_stall_out_1;
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
    wire [0:0] bb_kernel_3mm_B12_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B12_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B13_out_c0_exe261238;
    wire [0:0] bb_kernel_3mm_B13_out_c0_exe661641;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6;
    wire [31:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B13_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B13_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B13_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B14_out_c0_exe261237;
    wire [0:0] bb_kernel_3mm_B14_out_memdep_645;
    wire [0:0] bb_kernel_3mm_B14_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B14_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B14_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_out_20;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_out_21;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_valid_out_20;
    wire [0:0] bb_kernel_3mm_B15_out_feedback_valid_out_21;
    wire [0:0] bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifodata;
    wire [0:0] bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifovalid;
    wire [0:0] bb_kernel_3mm_B15_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B15_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B15_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_c0_exe2;
    wire [0:0] bb_kernel_3mm_B1_start_out_feedback_stall_out_17;
    wire [0:0] bb_kernel_3mm_B1_start_out_feedback_stall_out_20;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;
    wire [0:0] bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;
    wire [0:0] bb_kernel_3mm_B1_start_out_memdep_phi3_pop19;
    wire [0:0] bb_kernel_3mm_B1_start_out_memdep_phi_pop17;
    wire [0:0] bb_kernel_3mm_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B1_start_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B1_start_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe10;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe11;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe12;
    wire [31:0] bb_kernel_3mm_B2_out_c0_exe1291;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe13;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe3;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe4;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe5;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe6;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe7;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe8;
    wire [0:0] bb_kernel_3mm_B2_out_c0_exe9;
    wire [0:0] bb_kernel_3mm_B2_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B2_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B2_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B2_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B2_out_stall_out_1;
    wire [0:0] bb_kernel_3mm_B2_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B2_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B2_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe10329;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe11330;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe12331;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe1320;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe13332;
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
    wire [63:0] bb_kernel_3mm_B3_out_c0_exe2321;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe24;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe25;
    wire [63:0] bb_kernel_3mm_B3_out_c0_exe3322;
    wire [63:0] bb_kernel_3mm_B3_out_c0_exe4323;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe5324;
    wire [31:0] bb_kernel_3mm_B3_out_c0_exe6325;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe8327;
    wire [0:0] bb_kernel_3mm_B3_out_c0_exe9328;
    wire [0:0] bb_kernel_3mm_B3_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B3_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B3_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B3_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B3_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B3_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B3_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B3_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe10395;
    wire [31:0] bb_kernel_3mm_B4_out_c0_exe11396;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe12397;
    wire [63:0] bb_kernel_3mm_B4_out_c0_exe13398;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe14399;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe15400;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe16401;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe17402;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe18403;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe19404;
    wire [31:0] bb_kernel_3mm_B4_out_c0_exe20405;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe21406;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe22407;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe23408;
    wire [63:0] bb_kernel_3mm_B4_out_c0_exe2387;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe24409;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe25410;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe26;
    wire [63:0] bb_kernel_3mm_B4_out_c0_exe3388;
    wire [31:0] bb_kernel_3mm_B4_out_c0_exe4389;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe6391;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe7392;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe8393;
    wire [0:0] bb_kernel_3mm_B4_out_c0_exe9394;
    wire [0:0] bb_kernel_3mm_B4_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B4_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B4_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B4_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B4_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B4_out_stall_out_1;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B4_out_valid_in_0;
    wire [0:0] bb_kernel_3mm_B4_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B4_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe103958;
    wire [31:0] bb_kernel_3mm_B5_out_c0_exe113969;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1239710;
    wire [63:0] bb_kernel_3mm_B5_out_c0_exe1421;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1439912;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1540013;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1640114;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1740215;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1840316;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe1940417;
    wire [31:0] bb_kernel_3mm_B5_out_c0_exe2040518;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2140619;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2240720;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2340821;
    wire [63:0] bb_kernel_3mm_B5_out_c0_exe23871;
    wire [31:0] bb_kernel_3mm_B5_out_c0_exe2422;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2440922;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2541023;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe2624;
    wire [63:0] bb_kernel_3mm_B5_out_c0_exe33882;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe63914;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe73925;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe83936;
    wire [0:0] bb_kernel_3mm_B5_out_c0_exe93947;
    wire [0:0] bb_kernel_3mm_B5_out_memdep;
    wire [31:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_out_stall_out_0;
    wire [31:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B5_out_valid_out_0;
    wire [31:0] bb_kernel_3mm_B6_out_c0_exe2497;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe4499;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe5500;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe6501;
    wire [0:0] bb_kernel_3mm_B6_out_c0_exe7502;
    wire [63:0] bb_kernel_3mm_B6_out_c0_exe9504;
    wire [0:0] bb_kernel_3mm_B6_out_exiting_stall_out;
    wire [0:0] bb_kernel_3mm_B6_out_exiting_valid_out;
    wire [0:0] bb_kernel_3mm_B6_out_pipeline_valid_out;
    wire [0:0] bb_kernel_3mm_B6_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B6_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B6_out_stall_out_1;
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
    wire [0:0] bb_kernel_3mm_B6_out_valid_in_1;
    wire [0:0] bb_kernel_3mm_B6_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe449928;
    wire [0:0] bb_kernel_3mm_B7_out_c0_exe650131;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1;
    wire [31:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_address;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_burstcount;
    wire [3:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_byteenable;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_enable;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_read;
    wire [0:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_write;
    wire [31:0] bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_writedata;
    wire [0:0] bb_kernel_3mm_B7_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B7_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B7_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B8_out_c0_exe449927;
    wire [0:0] bb_kernel_3mm_B8_out_memdep_135;
    wire [0:0] bb_kernel_3mm_B8_out_stall_in_0;
    wire [0:0] bb_kernel_3mm_B8_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B8_out_valid_out_0;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_out_17;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_stall_out_21;
    wire [0:0] bb_kernel_3mm_B9_out_feedback_valid_out_17;
    wire [0:0] bb_kernel_3mm_B9_out_memdep_phi7_pop21;
    wire [0:0] bb_kernel_3mm_B9_out_stall_out_0;
    wire [0:0] bb_kernel_3mm_B9_out_valid_out_0;
    wire [1:0] c_i2_0251_q;
    wire [63:0] c_i32_addrspace_68_undef86_q;
    wire [31:0] c_i32_undef142_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo_out_valid_out;
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
    wire [0:0] loop_limiter_kernel_3mm0_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm0_out_o_valid;
    wire [0:0] loop_limiter_kernel_3mm1_out_o_stall;
    wire [0:0] loop_limiter_kernel_3mm1_out_o_valid;
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
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [63:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [63:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [31:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [63:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [63:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [63:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [63:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_13_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_23_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [63:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [63:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [31:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_23_tpl;
    wire [63:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_24_tpl;
    wire [31:0] bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_25_tpl;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [63:0] bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_1_tpl;


    // c_i2_0251(CONSTANT,130)
    assign c_i2_0251_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo(BLACKBOX,172)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going79_2_valid_fifo thei_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo(BLACKBOX,170)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going75_2_valid_fifo thei_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo(BLACKBOX,168)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going70_2_valid_fifo thei_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo(BLACKBOX,166)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going56_6_valid_fifo thei_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo(BLACKBOX,164)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going40_6_valid_fifo thei_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9_sr_0_aunroll_x(BLACKBOX,356)
    kernel_3mm_bb_B9_sr_0 thebb_kernel_3mm_B9_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B9_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B8_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B8_out_c0_exe449927),
        .in_i_data_1_tpl(bb_kernel_3mm_B8_out_memdep_135),
        .out_o_stall(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B8(BLACKBOX,16)
    kernel_3mm_bb_B8 thebb_kernel_3mm_B8 (
        .in_c0_exe449927_0(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe650130_0(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_memdep_135_0(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe449927(bb_kernel_3mm_B8_out_c0_exe449927),
        .out_memdep_135(bb_kernel_3mm_B8_out_memdep_135),
        .out_stall_in_0(bb_kernel_3mm_B8_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B8_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B8_sr_0_aunroll_x(BLACKBOX,355)
    kernel_3mm_bb_B8_sr_0 thebb_kernel_3mm_B8_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B8_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B7_out_c0_exe449928),
        .in_i_data_1_tpl(bb_kernel_3mm_B7_out_c0_exe650131),
        .in_i_data_2_tpl(bb_kernel_3mm_B7_out_memdep_1),
        .out_o_stall(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B7(BLACKBOX,15)
    kernel_3mm_bb_B7 thebb_kernel_3mm_B7 (
        .in_c0_exe249725_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe449928_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe550029_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe650131_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe750232_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe950433_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_memdep_1_kernel_3mm_avm_readdata(in_memdep_1_kernel_3mm_avm_readdata),
        .in_memdep_1_kernel_3mm_avm_readdatavalid(in_memdep_1_kernel_3mm_avm_readdatavalid),
        .in_memdep_1_kernel_3mm_avm_waitrequest(in_memdep_1_kernel_3mm_avm_waitrequest),
        .in_memdep_1_kernel_3mm_avm_writeack(in_memdep_1_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe449928(bb_kernel_3mm_B7_out_c0_exe449928),
        .out_c0_exe650131(bb_kernel_3mm_B7_out_c0_exe650131),
        .out_memdep_1(bb_kernel_3mm_B7_out_memdep_1),
        .out_memdep_1_kernel_3mm_avm_address(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_address),
        .out_memdep_1_kernel_3mm_avm_burstcount(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_burstcount),
        .out_memdep_1_kernel_3mm_avm_byteenable(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_byteenable),
        .out_memdep_1_kernel_3mm_avm_enable(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_enable),
        .out_memdep_1_kernel_3mm_avm_read(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_read),
        .out_memdep_1_kernel_3mm_avm_write(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_write),
        .out_memdep_1_kernel_3mm_avm_writedata(bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B7_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B7_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B7_sr_0_aunroll_x(BLACKBOX,354)
    kernel_3mm_bb_B7_sr_0 thebb_kernel_3mm_B7_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B7_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B6_out_c0_exe2497),
        .in_i_data_1_tpl(bb_kernel_3mm_B6_out_c0_exe4499),
        .in_i_data_2_tpl(bb_kernel_3mm_B6_out_c0_exe5500),
        .in_i_data_3_tpl(bb_kernel_3mm_B6_out_c0_exe6501),
        .in_i_data_4_tpl(bb_kernel_3mm_B6_out_c0_exe7502),
        .in_i_data_5_tpl(bb_kernel_3mm_B6_out_c0_exe9504),
        .out_o_stall(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr(BLACKBOX,163)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going40_6_sr thei_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6(BLACKBOX,14)
    kernel_3mm_bb_B6 thebb_kernel_3mm_B6 (
        .in_arrayidx444236_0(c_i32_addrspace_68_undef86_q),
        .in_arrayidx444236_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_flush(in_start),
        .in_forked37_0(GND_q),
        .in_forked37_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked81135_0(GND_q),
        .in_forked81135_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked8183_pop24179_0(GND_q),
        .in_forked8183_pop24179_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_forked8185_pop51218_0(GND_q),
        .in_forked8185_pop51218_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_i_060_pop23109_pop56228_0(c_i32_undef142_q),
        .in_i_060_pop23109_pop56228_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_i_060_pop23169_0(c_i32_undef142_q),
        .in_i_060_pop23169_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_idxprom11121_pop59215_0(c_i32_addrspace_68_undef86_q),
        .in_idxprom11121_pop59215_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_idxprom119_pop58213_0(c_i32_addrspace_68_undef86_q),
        .in_idxprom119_pop58213_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_memdep_235_0(GND_q),
        .in_memdep_235_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_memdep_phi2_pop18149_0(GND_q),
        .in_memdep_phi2_pop18149_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi2_pop1891_pop26189_0(GND_q),
        .in_memdep_phi2_pop1891_pop26189_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_phi2_pop1893_pop53222_0(GND_q),
        .in_memdep_phi2_pop1893_pop53222_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_memdep_phi3_pop19156_0(GND_q),
        .in_memdep_phi3_pop19156_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi3_pop1995_pop27194_0(GND_q),
        .in_memdep_phi3_pop1995_pop27194_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_memdep_phi3_pop1997_pop54224_0(GND_q),
        .in_memdep_phi3_pop1997_pop54224_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_memdep_phi5_pop20101_pop55226_0(GND_q),
        .in_memdep_phi5_pop20101_pop55226_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_memdep_phi5_pop20163_0(GND_q),
        .in_memdep_phi5_pop20163_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi5_pop2099_pop28199_0(GND_q),
        .in_memdep_phi5_pop2099_pop28199_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi_pop17142_0(GND_q),
        .in_memdep_phi_pop17142_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop1787_pop25184_0(GND_q),
        .in_memdep_phi_pop1787_pop25184_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi_pop1789_pop52220_0(GND_q),
        .in_memdep_phi_pop1789_pop52220_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_notcmp68124_pop61233_0(GND_q),
        .in_notcmp68124_pop61233_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_notcmp73112_pop57230_0(GND_q),
        .in_notcmp73112_pop57230_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_notcmp73174_0(GND_q),
        .in_notcmp73174_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm7_0(c_i32_undef142_q),
        .in_unnamed_kernel_3mm7_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_25_tpl),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm8_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm8_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm8_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm9_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm9_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm9_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going40_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2497(bb_kernel_3mm_B6_out_c0_exe2497),
        .out_c0_exe4499(bb_kernel_3mm_B6_out_c0_exe4499),
        .out_c0_exe5500(bb_kernel_3mm_B6_out_c0_exe5500),
        .out_c0_exe6501(bb_kernel_3mm_B6_out_c0_exe6501),
        .out_c0_exe7502(bb_kernel_3mm_B6_out_c0_exe7502),
        .out_c0_exe9504(bb_kernel_3mm_B6_out_c0_exe9504),
        .out_exiting_stall_out(bb_kernel_3mm_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B6_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B6_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B6_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B6_out_stall_out_1),
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
        .out_valid_in_1(bb_kernel_3mm_B6_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B6_sr_1_aunroll_x(BLACKBOX,353)
    kernel_3mm_bb_B6_sr_1 thebb_kernel_3mm_B6_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B5_out_c0_exe1540013),
        .in_i_data_2_tpl(bb_kernel_3mm_B5_out_c0_exe1640114),
        .in_i_data_3_tpl(bb_kernel_3mm_B5_out_c0_exe1740215),
        .in_i_data_4_tpl(bb_kernel_3mm_B5_out_c0_exe1840316),
        .in_i_data_5_tpl(bb_kernel_3mm_B5_out_c0_exe1940417),
        .in_i_data_6_tpl(bb_kernel_3mm_B5_out_c0_exe2040518),
        .in_i_data_7_tpl(bb_kernel_3mm_B5_out_c0_exe2140619),
        .in_i_data_8_tpl(bb_kernel_3mm_B5_out_c0_exe2240720),
        .in_i_data_9_tpl(bb_kernel_3mm_B5_out_c0_exe2340821),
        .in_i_data_10_tpl(bb_kernel_3mm_B5_out_c0_exe2440922),
        .in_i_data_11_tpl(bb_kernel_3mm_B5_out_c0_exe2541023),
        .in_i_data_12_tpl(bb_kernel_3mm_B5_out_c0_exe2624),
        .in_i_data_13_tpl(bb_kernel_3mm_B5_out_c0_exe23871),
        .in_i_data_14_tpl(bb_kernel_3mm_B5_out_c0_exe33882),
        .in_i_data_15_tpl(bb_kernel_3mm_B5_out_c0_exe63914),
        .in_i_data_16_tpl(bb_kernel_3mm_B5_out_c0_exe73925),
        .in_i_data_17_tpl(bb_kernel_3mm_B5_out_c0_exe83936),
        .in_i_data_18_tpl(bb_kernel_3mm_B5_out_c0_exe93947),
        .in_i_data_19_tpl(bb_kernel_3mm_B5_out_c0_exe103958),
        .in_i_data_20_tpl(bb_kernel_3mm_B5_out_c0_exe113969),
        .in_i_data_21_tpl(bb_kernel_3mm_B5_out_c0_exe1239710),
        .in_i_data_22_tpl(bb_kernel_3mm_B5_out_c0_exe1439912),
        .in_i_data_23_tpl(bb_kernel_3mm_B5_out_memdep),
        .in_i_data_24_tpl(bb_kernel_3mm_B5_out_c0_exe1421),
        .in_i_data_25_tpl(bb_kernel_3mm_B5_out_c0_exe2422),
        .out_o_stall(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_24_tpl),
        .out_o_data_25_tpl(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_data_25_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm5(BLACKBOX,251)
    kernel_3mm_loop_limiter_5 theloop_limiter_kernel_3mm5 (
        .in_i_stall(bb_kernel_3mm_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B6_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B5_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm5_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5(BLACKBOX,13)
    kernel_3mm_bb_B5 thebb_kernel_3mm_B5 (
        .in_c0_exe103958_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe113969_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1239710_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1339811_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1439912_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe1540013_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .in_c0_exe1640114_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .in_c0_exe1740215_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .in_c0_exe1840316_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .in_c0_exe1940417_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_16_tpl),
        .in_c0_exe2040518_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_17_tpl),
        .in_c0_exe2140619_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_18_tpl),
        .in_c0_exe2240720_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_19_tpl),
        .in_c0_exe2340821_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_20_tpl),
        .in_c0_exe23871_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe2440922_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_21_tpl),
        .in_c0_exe2541023_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_22_tpl),
        .in_c0_exe2624_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_23_tpl),
        .in_c0_exe33882_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe43893_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe63914_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe73925_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe83936_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe93947_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_memdep_kernel_3mm_avm_readdata(in_memdep_kernel_3mm_avm_readdata),
        .in_memdep_kernel_3mm_avm_readdatavalid(in_memdep_kernel_3mm_avm_readdatavalid),
        .in_memdep_kernel_3mm_avm_waitrequest(in_memdep_kernel_3mm_avm_waitrequest),
        .in_memdep_kernel_3mm_avm_writeack(in_memdep_kernel_3mm_avm_writeack),
        .in_stall_in_0(loop_limiter_kernel_3mm5_out_o_stall),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm6_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm6_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm6_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm6_kernel_3mm_avm_writeack),
        .in_valid_in_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe103958(bb_kernel_3mm_B5_out_c0_exe103958),
        .out_c0_exe113969(bb_kernel_3mm_B5_out_c0_exe113969),
        .out_c0_exe1239710(bb_kernel_3mm_B5_out_c0_exe1239710),
        .out_c0_exe1421(bb_kernel_3mm_B5_out_c0_exe1421),
        .out_c0_exe1439912(bb_kernel_3mm_B5_out_c0_exe1439912),
        .out_c0_exe1540013(bb_kernel_3mm_B5_out_c0_exe1540013),
        .out_c0_exe1640114(bb_kernel_3mm_B5_out_c0_exe1640114),
        .out_c0_exe1740215(bb_kernel_3mm_B5_out_c0_exe1740215),
        .out_c0_exe1840316(bb_kernel_3mm_B5_out_c0_exe1840316),
        .out_c0_exe1940417(bb_kernel_3mm_B5_out_c0_exe1940417),
        .out_c0_exe2040518(bb_kernel_3mm_B5_out_c0_exe2040518),
        .out_c0_exe2140619(bb_kernel_3mm_B5_out_c0_exe2140619),
        .out_c0_exe2240720(bb_kernel_3mm_B5_out_c0_exe2240720),
        .out_c0_exe2340821(bb_kernel_3mm_B5_out_c0_exe2340821),
        .out_c0_exe23871(bb_kernel_3mm_B5_out_c0_exe23871),
        .out_c0_exe2422(bb_kernel_3mm_B5_out_c0_exe2422),
        .out_c0_exe2440922(bb_kernel_3mm_B5_out_c0_exe2440922),
        .out_c0_exe2541023(bb_kernel_3mm_B5_out_c0_exe2541023),
        .out_c0_exe2624(bb_kernel_3mm_B5_out_c0_exe2624),
        .out_c0_exe33882(bb_kernel_3mm_B5_out_c0_exe33882),
        .out_c0_exe63914(bb_kernel_3mm_B5_out_c0_exe63914),
        .out_c0_exe73925(bb_kernel_3mm_B5_out_c0_exe73925),
        .out_c0_exe83936(bb_kernel_3mm_B5_out_c0_exe83936),
        .out_c0_exe93947(bb_kernel_3mm_B5_out_c0_exe93947),
        .out_memdep(bb_kernel_3mm_B5_out_memdep),
        .out_memdep_kernel_3mm_avm_address(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address),
        .out_memdep_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount),
        .out_memdep_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable),
        .out_memdep_kernel_3mm_avm_enable(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable),
        .out_memdep_kernel_3mm_avm_read(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read),
        .out_memdep_kernel_3mm_avm_write(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write),
        .out_memdep_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata),
        .out_stall_out_0(bb_kernel_3mm_B5_out_stall_out_0),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_address(bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount(bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable(bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_enable(bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_read(bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_write(bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata(bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata),
        .out_valid_out_0(bb_kernel_3mm_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B5_sr_0_aunroll_x(BLACKBOX,352)
    kernel_3mm_bb_B5_sr_0 thebb_kernel_3mm_B5_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B5_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B4_out_c0_exe2387),
        .in_i_data_1_tpl(bb_kernel_3mm_B4_out_c0_exe3388),
        .in_i_data_2_tpl(bb_kernel_3mm_B4_out_c0_exe4389),
        .in_i_data_3_tpl(bb_kernel_3mm_B4_out_c0_exe6391),
        .in_i_data_4_tpl(bb_kernel_3mm_B4_out_c0_exe7392),
        .in_i_data_5_tpl(bb_kernel_3mm_B4_out_c0_exe8393),
        .in_i_data_6_tpl(bb_kernel_3mm_B4_out_c0_exe9394),
        .in_i_data_7_tpl(bb_kernel_3mm_B4_out_c0_exe10395),
        .in_i_data_8_tpl(bb_kernel_3mm_B4_out_c0_exe11396),
        .in_i_data_9_tpl(bb_kernel_3mm_B4_out_c0_exe12397),
        .in_i_data_10_tpl(bb_kernel_3mm_B4_out_c0_exe13398),
        .in_i_data_11_tpl(bb_kernel_3mm_B4_out_c0_exe14399),
        .in_i_data_12_tpl(bb_kernel_3mm_B4_out_c0_exe15400),
        .in_i_data_13_tpl(bb_kernel_3mm_B4_out_c0_exe16401),
        .in_i_data_14_tpl(bb_kernel_3mm_B4_out_c0_exe17402),
        .in_i_data_15_tpl(bb_kernel_3mm_B4_out_c0_exe18403),
        .in_i_data_16_tpl(bb_kernel_3mm_B4_out_c0_exe19404),
        .in_i_data_17_tpl(bb_kernel_3mm_B4_out_c0_exe20405),
        .in_i_data_18_tpl(bb_kernel_3mm_B4_out_c0_exe21406),
        .in_i_data_19_tpl(bb_kernel_3mm_B4_out_c0_exe22407),
        .in_i_data_20_tpl(bb_kernel_3mm_B4_out_c0_exe23408),
        .in_i_data_21_tpl(bb_kernel_3mm_B4_out_c0_exe24409),
        .in_i_data_22_tpl(bb_kernel_3mm_B4_out_c0_exe25410),
        .in_i_data_23_tpl(bb_kernel_3mm_B4_out_c0_exe26),
        .out_o_stall(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_data_23_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr(BLACKBOX,165)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going56_6_sr thei_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_68_undef86(CONSTANT,138)
    assign c_i32_addrspace_68_undef86_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_kernel_3mm_B4(BLACKBOX,12)
    kernel_3mm_bb_B4 thebb_kernel_3mm_B4 (
        .in_arrayidx121205_0(c_i32_addrspace_68_undef86_q),
        .in_arrayidx121205_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_flush(in_start),
        .in_forked53_0(GND_q),
        .in_forked53_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked81137_0(GND_q),
        .in_forked81137_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked8183_pop24181_0(GND_q),
        .in_forked8183_pop24181_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_forked8184_pop34208_0(GND_q),
        .in_forked8184_pop34208_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_i_060_pop23108_pop39202_0(c_i32_undef142_q),
        .in_i_060_pop23108_pop39202_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_i_060_pop23171_0(c_i32_undef142_q),
        .in_i_060_pop23171_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_idxprom11204_0(c_i32_addrspace_68_undef86_q),
        .in_idxprom11204_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_idxprom203_0(c_i32_addrspace_68_undef86_q),
        .in_idxprom203_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_memdep_phi2_pop18151_0(GND_q),
        .in_memdep_phi2_pop18151_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi2_pop1891_pop26191_0(GND_q),
        .in_memdep_phi2_pop1891_pop26191_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_phi2_pop1892_pop36209_0(GND_q),
        .in_memdep_phi2_pop1892_pop36209_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_memdep_phi3_pop19158_0(GND_q),
        .in_memdep_phi3_pop19158_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi3_pop1995_pop27196_0(GND_q),
        .in_memdep_phi3_pop1995_pop27196_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_memdep_phi3_pop1996_pop37210_0(GND_q),
        .in_memdep_phi3_pop1996_pop37210_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_memdep_phi5_pop20100_pop38211_0(GND_q),
        .in_memdep_phi5_pop20100_pop38211_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_23_tpl),
        .in_memdep_phi5_pop20165_0(GND_q),
        .in_memdep_phi5_pop20165_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi5_pop2099_pop28201_0(GND_q),
        .in_memdep_phi5_pop2099_pop28201_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi_pop17144_0(GND_q),
        .in_memdep_phi_pop17144_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop1787_pop25186_0(GND_q),
        .in_memdep_phi_pop1787_pop25186_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi_pop1788_pop35206_0(GND_q),
        .in_memdep_phi_pop1788_pop35206_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_notcmp68207_0(GND_q),
        .in_notcmp68207_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_notcmp73111_pop40212_0(GND_q),
        .in_notcmp73111_pop40212_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_24_tpl),
        .in_notcmp73176_0(GND_q),
        .in_notcmp73176_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm3_0(c_i32_undef142_q),
        .in_unnamed_kernel_3mm3_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm4_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm4_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm4_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm5_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm5_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm5_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going56_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10395(bb_kernel_3mm_B4_out_c0_exe10395),
        .out_c0_exe11396(bb_kernel_3mm_B4_out_c0_exe11396),
        .out_c0_exe12397(bb_kernel_3mm_B4_out_c0_exe12397),
        .out_c0_exe13398(bb_kernel_3mm_B4_out_c0_exe13398),
        .out_c0_exe14399(bb_kernel_3mm_B4_out_c0_exe14399),
        .out_c0_exe15400(bb_kernel_3mm_B4_out_c0_exe15400),
        .out_c0_exe16401(bb_kernel_3mm_B4_out_c0_exe16401),
        .out_c0_exe17402(bb_kernel_3mm_B4_out_c0_exe17402),
        .out_c0_exe18403(bb_kernel_3mm_B4_out_c0_exe18403),
        .out_c0_exe19404(bb_kernel_3mm_B4_out_c0_exe19404),
        .out_c0_exe20405(bb_kernel_3mm_B4_out_c0_exe20405),
        .out_c0_exe21406(bb_kernel_3mm_B4_out_c0_exe21406),
        .out_c0_exe22407(bb_kernel_3mm_B4_out_c0_exe22407),
        .out_c0_exe23408(bb_kernel_3mm_B4_out_c0_exe23408),
        .out_c0_exe2387(bb_kernel_3mm_B4_out_c0_exe2387),
        .out_c0_exe24409(bb_kernel_3mm_B4_out_c0_exe24409),
        .out_c0_exe25410(bb_kernel_3mm_B4_out_c0_exe25410),
        .out_c0_exe26(bb_kernel_3mm_B4_out_c0_exe26),
        .out_c0_exe3388(bb_kernel_3mm_B4_out_c0_exe3388),
        .out_c0_exe4389(bb_kernel_3mm_B4_out_c0_exe4389),
        .out_c0_exe6391(bb_kernel_3mm_B4_out_c0_exe6391),
        .out_c0_exe7392(bb_kernel_3mm_B4_out_c0_exe7392),
        .out_c0_exe8393(bb_kernel_3mm_B4_out_c0_exe8393),
        .out_c0_exe9394(bb_kernel_3mm_B4_out_c0_exe9394),
        .out_exiting_stall_out(bb_kernel_3mm_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B4_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B4_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B4_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B4_out_stall_out_1),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_address(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_read(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_write(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_address(bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_read(bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_write(bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B4_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B4_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B4_sr_1_aunroll_x(BLACKBOX,351)
    kernel_3mm_bb_B4_sr_1 thebb_kernel_3mm_B4_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B3_out_c0_exe14),
        .in_i_data_2_tpl(bb_kernel_3mm_B3_out_c0_exe15),
        .in_i_data_3_tpl(bb_kernel_3mm_B3_out_c0_exe16),
        .in_i_data_4_tpl(bb_kernel_3mm_B3_out_c0_exe17),
        .in_i_data_5_tpl(bb_kernel_3mm_B3_out_c0_exe18),
        .in_i_data_6_tpl(bb_kernel_3mm_B3_out_c0_exe19),
        .in_i_data_7_tpl(bb_kernel_3mm_B3_out_c0_exe20),
        .in_i_data_8_tpl(bb_kernel_3mm_B3_out_c0_exe21),
        .in_i_data_9_tpl(bb_kernel_3mm_B3_out_c0_exe22),
        .in_i_data_10_tpl(bb_kernel_3mm_B3_out_c0_exe23),
        .in_i_data_11_tpl(bb_kernel_3mm_B3_out_c0_exe24),
        .in_i_data_12_tpl(bb_kernel_3mm_B3_out_c0_exe25),
        .in_i_data_13_tpl(bb_kernel_3mm_B3_out_c0_exe1320),
        .in_i_data_14_tpl(bb_kernel_3mm_B3_out_c0_exe2321),
        .in_i_data_15_tpl(bb_kernel_3mm_B3_out_c0_exe3322),
        .in_i_data_16_tpl(bb_kernel_3mm_B3_out_c0_exe4323),
        .in_i_data_17_tpl(bb_kernel_3mm_B3_out_c0_exe5324),
        .in_i_data_18_tpl(bb_kernel_3mm_B3_out_c0_exe6325),
        .in_i_data_19_tpl(bb_kernel_3mm_B3_out_c0_exe8327),
        .in_i_data_20_tpl(bb_kernel_3mm_B3_out_c0_exe9328),
        .in_i_data_21_tpl(bb_kernel_3mm_B3_out_c0_exe10329),
        .in_i_data_22_tpl(bb_kernel_3mm_B3_out_c0_exe11330),
        .in_i_data_23_tpl(bb_kernel_3mm_B3_out_c0_exe12331),
        .in_i_data_24_tpl(bb_kernel_3mm_B3_out_c0_exe13332),
        .out_o_stall(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_data_23_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_23_tpl),
        .out_o_data_24_tpl(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_data_24_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm4(BLACKBOX,250)
    kernel_3mm_loop_limiter_4 theloop_limiter_kernel_3mm4 (
        .in_i_stall(bb_kernel_3mm_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B4_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B3_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm4_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr(BLACKBOX,167)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going70_2_sr thei_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef142(CONSTANT,141)
    assign c_i32_undef142_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_kernel_3mm_B3(BLACKBOX,11)
    kernel_3mm_bb_B3 thebb_kernel_3mm_B3 (
        .in_flush(in_start),
        .in_forked107_0(GND_q),
        .in_forked107_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked81138_0(GND_q),
        .in_forked81138_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked8183_pop24177_0(GND_q),
        .in_forked8183_pop24177_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_i_060_pop23167_0(c_i32_undef142_q),
        .in_i_060_pop23167_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_phi2_pop18152_0(GND_q),
        .in_memdep_phi2_pop18152_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi2_pop1891_pop26187_0(GND_q),
        .in_memdep_phi2_pop1891_pop26187_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_phi3_pop19159_0(GND_q),
        .in_memdep_phi3_pop19159_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi3_pop1995_pop27192_0(GND_q),
        .in_memdep_phi3_pop1995_pop27192_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_memdep_phi5_pop20166_0(GND_q),
        .in_memdep_phi5_pop20166_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi5_pop2099_pop28197_0(GND_q),
        .in_memdep_phi5_pop2099_pop28197_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi_pop17145_0(GND_q),
        .in_memdep_phi_pop17145_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi_pop1787_pop25182_0(GND_q),
        .in_memdep_phi_pop1787_pop25182_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp73172_0(GND_q),
        .in_notcmp73172_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm4_out_o_stall),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm2_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm2_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm2_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm2_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going70_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10329(bb_kernel_3mm_B3_out_c0_exe10329),
        .out_c0_exe11330(bb_kernel_3mm_B3_out_c0_exe11330),
        .out_c0_exe12331(bb_kernel_3mm_B3_out_c0_exe12331),
        .out_c0_exe1320(bb_kernel_3mm_B3_out_c0_exe1320),
        .out_c0_exe13332(bb_kernel_3mm_B3_out_c0_exe13332),
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
        .out_c0_exe2321(bb_kernel_3mm_B3_out_c0_exe2321),
        .out_c0_exe24(bb_kernel_3mm_B3_out_c0_exe24),
        .out_c0_exe25(bb_kernel_3mm_B3_out_c0_exe25),
        .out_c0_exe3322(bb_kernel_3mm_B3_out_c0_exe3322),
        .out_c0_exe4323(bb_kernel_3mm_B3_out_c0_exe4323),
        .out_c0_exe5324(bb_kernel_3mm_B3_out_c0_exe5324),
        .out_c0_exe6325(bb_kernel_3mm_B3_out_c0_exe6325),
        .out_c0_exe8327(bb_kernel_3mm_B3_out_c0_exe8327),
        .out_c0_exe9328(bb_kernel_3mm_B3_out_c0_exe9328),
        .out_exiting_stall_out(bb_kernel_3mm_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B3_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B3_out_stall_out_1),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_address(bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount(bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_enable(bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_read(bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_write(bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata(bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B3_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B3_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B3_sr_1_aunroll_x(BLACKBOX,350)
    kernel_3mm_bb_B3_sr_1 thebb_kernel_3mm_B3_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B2_out_c0_exe9),
        .in_i_data_2_tpl(bb_kernel_3mm_B2_out_c0_exe10),
        .in_i_data_3_tpl(bb_kernel_3mm_B2_out_c0_exe11),
        .in_i_data_4_tpl(bb_kernel_3mm_B2_out_c0_exe12),
        .in_i_data_5_tpl(bb_kernel_3mm_B2_out_c0_exe13),
        .in_i_data_6_tpl(bb_kernel_3mm_B2_out_c0_exe1291),
        .in_i_data_7_tpl(bb_kernel_3mm_B2_out_c0_exe3),
        .in_i_data_8_tpl(bb_kernel_3mm_B2_out_c0_exe4),
        .in_i_data_9_tpl(bb_kernel_3mm_B2_out_c0_exe5),
        .in_i_data_10_tpl(bb_kernel_3mm_B2_out_c0_exe6),
        .in_i_data_11_tpl(bb_kernel_3mm_B2_out_c0_exe7),
        .in_i_data_12_tpl(bb_kernel_3mm_B2_out_c0_exe8),
        .out_o_stall(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm2(BLACKBOX,248)
    kernel_3mm_loop_limiter_2 theloop_limiter_kernel_3mm2 (
        .in_i_stall(bb_kernel_3mm_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B3_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B2_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm2_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr(BLACKBOX,169)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going75_2_sr thei_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B2(BLACKBOX,10)
    kernel_3mm_bb_B2 thebb_kernel_3mm_B2 (
        .in_forked81132_0(GND_q),
        .in_forked81132_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_forked82_0(GND_q),
        .in_forked82_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi2_pop18146_0(GND_q),
        .in_memdep_phi2_pop18146_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi3_pop19153_0(GND_q),
        .in_memdep_phi3_pop19153_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi5_pop20160_0(GND_q),
        .in_memdep_phi5_pop20160_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_memdep_phi_pop17139_0(GND_q),
        .in_memdep_phi_pop17139_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going75_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_kernel_3mm_B2_out_c0_exe10),
        .out_c0_exe11(bb_kernel_3mm_B2_out_c0_exe11),
        .out_c0_exe12(bb_kernel_3mm_B2_out_c0_exe12),
        .out_c0_exe1291(bb_kernel_3mm_B2_out_c0_exe1291),
        .out_c0_exe13(bb_kernel_3mm_B2_out_c0_exe13),
        .out_c0_exe3(bb_kernel_3mm_B2_out_c0_exe3),
        .out_c0_exe4(bb_kernel_3mm_B2_out_c0_exe4),
        .out_c0_exe5(bb_kernel_3mm_B2_out_c0_exe5),
        .out_c0_exe6(bb_kernel_3mm_B2_out_c0_exe6),
        .out_c0_exe7(bb_kernel_3mm_B2_out_c0_exe7),
        .out_c0_exe8(bb_kernel_3mm_B2_out_c0_exe8),
        .out_c0_exe9(bb_kernel_3mm_B2_out_c0_exe9),
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

    // bb_kernel_3mm_B2_sr_1_aunroll_x(BLACKBOX,349)
    kernel_3mm_bb_B2_sr_1 thebb_kernel_3mm_B2_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B1_start_out_c0_exe2),
        .in_i_data_2_tpl(bb_kernel_3mm_B1_start_out_memdep_phi_pop17),
        .in_i_data_3_tpl(bb_kernel_3mm_B1_start_out_memdep_phi_pop17),
        .in_i_data_4_tpl(bb_kernel_3mm_B1_start_out_memdep_phi3_pop19),
        .in_i_data_5_tpl(bb_kernel_3mm_B1_start_out_memdep_phi3_pop19),
        .out_o_stall(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B2_sr_1_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm0(BLACKBOX,246)
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

    // i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr(BLACKBOX,171)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going79_2_sr thei_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo(BLACKBOX,162)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going33_2_valid_fifo thei_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo(BLACKBOX,160)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going28_2_valid_fifo thei_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo(BLACKBOX,174)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo (
        .in_data_in(c_i2_0251_q),
        .in_stall_in(bb_kernel_3mm_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15_sr_0_aunroll_x(BLACKBOX,348)
    kernel_3mm_bb_B15_sr_0 thebb_kernel_3mm_B15_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B15_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B14_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B14_out_c0_exe261237),
        .in_i_data_1_tpl(bb_kernel_3mm_B14_out_memdep_645),
        .out_o_stall(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14(BLACKBOX,7)
    kernel_3mm_bb_B14 thebb_kernel_3mm_B14 (
        .in_c0_exe261237_0(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe661640_0(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_memdep_645_0(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe261237(bb_kernel_3mm_B14_out_c0_exe261237),
        .out_memdep_645(bb_kernel_3mm_B14_out_memdep_645),
        .out_stall_in_0(bb_kernel_3mm_B14_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B14_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B14_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B14_sr_0_aunroll_x(BLACKBOX,347)
    kernel_3mm_bb_B14_sr_0 thebb_kernel_3mm_B14_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B14_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B13_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B13_out_c0_exe261238),
        .in_i_data_1_tpl(bb_kernel_3mm_B13_out_c0_exe661641),
        .in_i_data_2_tpl(bb_kernel_3mm_B13_out_memdep_6),
        .out_o_stall(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B13(BLACKBOX,6)
    kernel_3mm_bb_B13 thebb_kernel_3mm_B13 (
        .in_c0_exe261238_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe461439_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe661641_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe761742_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe861843_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_memdep_6_kernel_3mm_avm_readdata(in_memdep_6_kernel_3mm_avm_readdata),
        .in_memdep_6_kernel_3mm_avm_readdatavalid(in_memdep_6_kernel_3mm_avm_readdatavalid),
        .in_memdep_6_kernel_3mm_avm_waitrequest(in_memdep_6_kernel_3mm_avm_waitrequest),
        .in_memdep_6_kernel_3mm_avm_writeack(in_memdep_6_kernel_3mm_avm_writeack),
        .in_stall_in_0(bb_kernel_3mm_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe261238(bb_kernel_3mm_B13_out_c0_exe261238),
        .out_c0_exe661641(bb_kernel_3mm_B13_out_c0_exe661641),
        .out_memdep_6(bb_kernel_3mm_B13_out_memdep_6),
        .out_memdep_6_kernel_3mm_avm_address(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_address),
        .out_memdep_6_kernel_3mm_avm_burstcount(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_burstcount),
        .out_memdep_6_kernel_3mm_avm_byteenable(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_byteenable),
        .out_memdep_6_kernel_3mm_avm_enable(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_enable),
        .out_memdep_6_kernel_3mm_avm_read(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_read),
        .out_memdep_6_kernel_3mm_avm_write(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_write),
        .out_memdep_6_kernel_3mm_avm_writedata(bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_writedata),
        .out_stall_in_0(bb_kernel_3mm_B13_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B13_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B13_sr_0_aunroll_x(BLACKBOX,346)
    kernel_3mm_bb_B13_sr_0 thebb_kernel_3mm_B13_sr_0_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B13_out_stall_out_0),
        .in_i_valid(bb_kernel_3mm_B12_out_valid_out_0),
        .in_i_data_0_tpl(bb_kernel_3mm_B12_out_c0_exe2612),
        .in_i_data_1_tpl(bb_kernel_3mm_B12_out_c0_exe4614),
        .in_i_data_2_tpl(bb_kernel_3mm_B12_out_c0_exe6616),
        .in_i_data_3_tpl(bb_kernel_3mm_B12_out_c0_exe7617),
        .in_i_data_4_tpl(bb_kernel_3mm_B12_out_c0_exe8618),
        .out_o_stall(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr(BLACKBOX,173)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12(BLACKBOX,5)
    kernel_3mm_bb_B12 thebb_kernel_3mm_B12 (
        .in_arrayidx817268_0(c_i32_addrspace_68_undef86_q),
        .in_arrayidx817268_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_252_pop30117_pop45265_0(c_i32_undef142_q),
        .in_i_252_pop30117_pop45265_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_i_252_pop30261_0(c_i32_undef142_q),
        .in_i_252_pop30261_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_idxprom78266_0(c_i32_addrspace_68_undef86_q),
        .in_idxprom78266_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_idxprom80267_0(c_i32_addrspace_68_undef86_q),
        .in_idxprom80267_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi7_pop21104_pop31264_0(GND_q),
        .in_memdep_phi7_pop21104_pop31264_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi7_pop21105_pop43269_0(GND_q),
        .in_memdep_phi7_pop21105_pop43269_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi7_pop21254_0(GND_q),
        .in_memdep_phi7_pop21254_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp26270_0(GND_q),
        .in_notcmp26270_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp31115_pop44271_0(GND_q),
        .in_notcmp31115_pop44271_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_notcmp31258_0(GND_q),
        .in_notcmp31258_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_sr_out_o_stall),
        .in_stall_in_0(bb_kernel_3mm_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_kernel_3mm11_0(c_i32_undef142_q),
        .in_unnamed_kernel_3mm11_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm12_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm12_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm12_kernel_3mm_avm_writeack),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm13_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm13_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm13_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_kernel_3mm6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2612(bb_kernel_3mm_B12_out_c0_exe2612),
        .out_c0_exe4614(bb_kernel_3mm_B12_out_c0_exe4614),
        .out_c0_exe6616(bb_kernel_3mm_B12_out_c0_exe6616),
        .out_c0_exe7617(bb_kernel_3mm_B12_out_c0_exe7617),
        .out_c0_exe8618(bb_kernel_3mm_B12_out_c0_exe8618),
        .out_exiting_stall_out(bb_kernel_3mm_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B12_out_pipeline_valid_out),
        .out_stall_in_0(bb_kernel_3mm_B12_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B12_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B12_out_stall_out_1),
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
        .out_valid_in_1(bb_kernel_3mm_B12_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B12_sr_1_aunroll_x(BLACKBOX,345)
    kernel_3mm_bb_B12_sr_1 thebb_kernel_3mm_B12_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm6_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B11_out_c0_exe10567),
        .in_i_data_2_tpl(bb_kernel_3mm_B11_out_c0_exe11568),
        .in_i_data_3_tpl(bb_kernel_3mm_B11_out_c0_exe12569),
        .in_i_data_4_tpl(bb_kernel_3mm_B11_out_c0_exe13570),
        .in_i_data_5_tpl(bb_kernel_3mm_B11_out_c0_exe1558),
        .in_i_data_6_tpl(bb_kernel_3mm_B11_out_c0_exe2559),
        .in_i_data_7_tpl(bb_kernel_3mm_B11_out_c0_exe3560),
        .in_i_data_8_tpl(bb_kernel_3mm_B11_out_c0_exe4561),
        .in_i_data_9_tpl(bb_kernel_3mm_B11_out_c0_exe5562),
        .in_i_data_10_tpl(bb_kernel_3mm_B11_out_c0_exe6563),
        .in_i_data_11_tpl(bb_kernel_3mm_B11_out_c0_exe8565),
        .in_i_data_12_tpl(bb_kernel_3mm_B11_out_c0_exe9566),
        .out_o_stall(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm6(BLACKBOX,252)
    kernel_3mm_loop_limiter_6 theloop_limiter_kernel_3mm6 (
        .in_i_stall(bb_kernel_3mm_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B12_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B11_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm6_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr(BLACKBOX,159)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going28_2_sr thei_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B11(BLACKBOX,4)
    kernel_3mm_bb_B11 thebb_kernel_3mm_B11 (
        .in_flush(in_start),
        .in_forked114_0(GND_q),
        .in_forked114_1(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_252_pop30259_0(c_i32_undef142_q),
        .in_i_252_pop30259_1(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi7_pop21104_pop31262_0(GND_q),
        .in_memdep_phi7_pop21104_pop31262_1(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi7_pop21255_0(GND_q),
        .in_memdep_phi7_pop21255_1(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_notcmp31256_0(GND_q),
        .in_notcmp31256_1(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm6_out_o_stall),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdata),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid(in_unnamed_kernel_3mm10_kernel_3mm_avm_readdatavalid),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest(in_unnamed_kernel_3mm10_kernel_3mm_avm_waitrequest),
        .in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack(in_unnamed_kernel_3mm10_kernel_3mm_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going28_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10567(bb_kernel_3mm_B11_out_c0_exe10567),
        .out_c0_exe11568(bb_kernel_3mm_B11_out_c0_exe11568),
        .out_c0_exe12569(bb_kernel_3mm_B11_out_c0_exe12569),
        .out_c0_exe13570(bb_kernel_3mm_B11_out_c0_exe13570),
        .out_c0_exe1558(bb_kernel_3mm_B11_out_c0_exe1558),
        .out_c0_exe2559(bb_kernel_3mm_B11_out_c0_exe2559),
        .out_c0_exe3560(bb_kernel_3mm_B11_out_c0_exe3560),
        .out_c0_exe4561(bb_kernel_3mm_B11_out_c0_exe4561),
        .out_c0_exe5562(bb_kernel_3mm_B11_out_c0_exe5562),
        .out_c0_exe6563(bb_kernel_3mm_B11_out_c0_exe6563),
        .out_c0_exe8565(bb_kernel_3mm_B11_out_c0_exe8565),
        .out_c0_exe9566(bb_kernel_3mm_B11_out_c0_exe9566),
        .out_exiting_stall_out(bb_kernel_3mm_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B11_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B11_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B11_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B11_out_stall_out_1),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_address(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_address),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_read(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_read),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_write(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_write),
        .out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata),
        .out_valid_in_0(bb_kernel_3mm_B11_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B11_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B11_sr_1_aunroll_x(BLACKBOX,344)
    kernel_3mm_bb_B11_sr_1 thebb_kernel_3mm_B11_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B10_out_c0_exe5532),
        .in_i_data_2_tpl(bb_kernel_3mm_B10_out_c0_exe2529),
        .in_i_data_3_tpl(bb_kernel_3mm_B10_out_c0_exe3530),
        .in_i_data_4_tpl(bb_kernel_3mm_B10_out_c0_exe4531),
        .out_o_stall(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm3(BLACKBOX,249)
    kernel_3mm_loop_limiter_3 theloop_limiter_kernel_3mm3 (
        .in_i_stall(bb_kernel_3mm_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B11_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B10_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm3_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr(BLACKBOX,161)
    kernel_3mm_i_llvm_fpga_pipeline_keep_going33_2_sr thei_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo_out_stall_out),
        .in_i_valid(bb_kernel_3mm_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10(BLACKBOX,3)
    kernel_3mm_bb_B10 thebb_kernel_3mm_B10 (
        .in_forked103_0(GND_q),
        .in_forked103_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_memdep_phi7_pop21251_0(GND_q),
        .in_memdep_phi7_pop21251_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going33_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2529(bb_kernel_3mm_B10_out_c0_exe2529),
        .out_c0_exe3530(bb_kernel_3mm_B10_out_c0_exe3530),
        .out_c0_exe4531(bb_kernel_3mm_B10_out_c0_exe4531),
        .out_c0_exe5532(bb_kernel_3mm_B10_out_c0_exe5532),
        .out_exiting_stall_out(bb_kernel_3mm_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_kernel_3mm_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_kernel_3mm_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B10_out_stall_out_0),
        .out_stall_out_1(bb_kernel_3mm_B10_out_stall_out_1),
        .out_valid_in_0(bb_kernel_3mm_B10_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B10_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B10_sr_1_aunroll_x(BLACKBOX,343)
    kernel_3mm_bb_B10_sr_1 thebb_kernel_3mm_B10_sr_1_aunroll_x (
        .in_i_stall(bb_kernel_3mm_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_kernel_3mm1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_kernel_3mm_B9_out_memdep_phi7_pop21),
        .out_o_stall(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_kernel_3mm1(BLACKBOX,247)
    kernel_3mm_loop_limiter_1 theloop_limiter_kernel_3mm1 (
        .in_i_stall(bb_kernel_3mm_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_kernel_3mm_B10_out_exiting_stall_out),
        .in_i_valid(bb_kernel_3mm_B9_out_valid_out_0),
        .in_i_valid_exit(bb_kernel_3mm_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_kernel_3mm1_out_o_stall),
        .out_o_valid(loop_limiter_kernel_3mm1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B9(BLACKBOX,17)
    kernel_3mm_bb_B9 thebb_kernel_3mm_B9 (
        .in_c0_exe449926_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_in_21(bb_kernel_3mm_B15_out_feedback_out_21),
        .in_feedback_stall_in_17(bb_kernel_3mm_B1_start_out_feedback_stall_out_17),
        .in_feedback_valid_in_21(bb_kernel_3mm_B15_out_feedback_valid_out_21),
        .in_memdep_134_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_kernel_3mm1_out_o_stall),
        .in_valid_in_0(bb_kernel_3mm_B9_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_17(bb_kernel_3mm_B9_out_feedback_out_17),
        .out_feedback_stall_out_21(bb_kernel_3mm_B9_out_feedback_stall_out_21),
        .out_feedback_valid_out_17(bb_kernel_3mm_B9_out_feedback_valid_out_17),
        .out_memdep_phi7_pop21(bb_kernel_3mm_B9_out_memdep_phi7_pop21),
        .out_stall_out_0(bb_kernel_3mm_B9_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B1_start(BLACKBOX,9)
    kernel_3mm_bb_B1_start thebb_kernel_3mm_B1_start (
        .in_feedback_in_17(bb_kernel_3mm_B9_out_feedback_out_17),
        .in_feedback_in_20(bb_kernel_3mm_B15_out_feedback_out_20),
        .in_feedback_valid_in_17(bb_kernel_3mm_B9_out_feedback_valid_out_17),
        .in_feedback_valid_in_20(bb_kernel_3mm_B15_out_feedback_valid_out_20),
        .in_forked81_0(GND_q),
        .in_forked81_1(VCC_q),
        .in_iord_bl_call_kernel_3mm_i_fifodata(in_iord_bl_call_kernel_3mm_i_fifodata),
        .in_iord_bl_call_kernel_3mm_i_fifovalid(in_iord_bl_call_kernel_3mm_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_kernel_3mm0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going79_kernel_3mm2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_c0_exe2(bb_kernel_3mm_B1_start_out_c0_exe2),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_17(bb_kernel_3mm_B1_start_out_feedback_stall_out_17),
        .out_feedback_stall_out_20(bb_kernel_3mm_B1_start_out_feedback_stall_out_20),
        .out_iord_bl_call_kernel_3mm_o_fifoalmost_full(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full),
        .out_iord_bl_call_kernel_3mm_o_fifoready(bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready),
        .out_memdep_phi3_pop19(bb_kernel_3mm_B1_start_out_memdep_phi3_pop19),
        .out_memdep_phi_pop17(bb_kernel_3mm_B1_start_out_memdep_phi_pop17),
        .out_pipeline_valid_out(bb_kernel_3mm_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_kernel_3mm_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_kernel_3mm_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_kernel_3mm_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_kernel_3mm_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_kernel_3mm_B15(BLACKBOX,8)
    kernel_3mm_bb_B15 thebb_kernel_3mm_B15 (
        .in_c0_exe261236_0(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_20(bb_kernel_3mm_B1_start_out_feedback_stall_out_20),
        .in_feedback_stall_in_21(bb_kernel_3mm_B9_out_feedback_stall_out_21),
        .in_iowr_bl_return_kernel_3mm_i_fifoready(in_iowr_bl_return_kernel_3mm_i_fifoready),
        .in_memdep_644_0(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_kernel_3mm_B15_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_20(bb_kernel_3mm_B15_out_feedback_out_20),
        .out_feedback_out_21(bb_kernel_3mm_B15_out_feedback_out_21),
        .out_feedback_valid_out_20(bb_kernel_3mm_B15_out_feedback_valid_out_20),
        .out_feedback_valid_out_21(bb_kernel_3mm_B15_out_feedback_valid_out_21),
        .out_iowr_bl_return_kernel_3mm_o_fifodata(bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifodata),
        .out_iowr_bl_return_kernel_3mm_o_fifovalid(bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifovalid),
        .out_stall_in_0(bb_kernel_3mm_B15_out_stall_in_0),
        .out_stall_out_0(bb_kernel_3mm_B15_out_stall_out_0),
        .out_valid_out_0(bb_kernel_3mm_B15_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // kernel_3mm_B1_start_x(EXTIFACE,238)
    assign kernel_3mm_B1_start_x_i_capture = GND_q;
    assign kernel_3mm_B1_start_x_i_clear = GND_q;
    assign kernel_3mm_B1_start_x_i_enable = VCC_q;
    assign kernel_3mm_B1_start_x_i_shift = GND_q;
    assign kernel_3mm_B1_start_x_i_stall_pred = GND_q;
    assign kernel_3mm_B1_start_x_i_stall_succ = bb_kernel_3mm_B15_out_stall_in_0;
    assign kernel_3mm_B1_start_x_i_valid_loop = bb_kernel_3mm_B1_start_out_valid_in_0;
    assign kernel_3mm_B1_start_x_i_valid_pred = bb_kernel_3mm_B1_start_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_3mm_B10_x(EXTIFACE,239)
    assign kernel_3mm_B10_x_i_capture = GND_q;
    assign kernel_3mm_B10_x_i_clear = GND_q;
    assign kernel_3mm_B10_x_i_enable = VCC_q;
    assign kernel_3mm_B10_x_i_shift = GND_q;
    assign kernel_3mm_B10_x_i_stall_pred = loop_limiter_kernel_3mm1_out_o_stall;
    assign kernel_3mm_B10_x_i_stall_succ = bb_kernel_3mm_B14_out_stall_in_0;
    assign kernel_3mm_B10_x_i_valid_loop = bb_kernel_3mm_B10_out_valid_in_0;
    assign kernel_3mm_B10_x_i_valid_pred = bb_kernel_3mm_B10_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_3mm_B11_x(EXTIFACE,240)
    assign kernel_3mm_B11_x_i_capture = GND_q;
    assign kernel_3mm_B11_x_i_clear = GND_q;
    assign kernel_3mm_B11_x_i_enable = VCC_q;
    assign kernel_3mm_B11_x_i_shift = GND_q;
    assign kernel_3mm_B11_x_i_stall_pred = loop_limiter_kernel_3mm3_out_o_stall;
    assign kernel_3mm_B11_x_i_stall_succ = bb_kernel_3mm_B13_out_stall_in_0;
    assign kernel_3mm_B11_x_i_valid_loop = bb_kernel_3mm_B11_out_valid_in_0;
    assign kernel_3mm_B11_x_i_valid_pred = bb_kernel_3mm_B11_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_3mm_B12_x(EXTIFACE,241)
    assign kernel_3mm_B12_x_i_capture = GND_q;
    assign kernel_3mm_B12_x_i_clear = GND_q;
    assign kernel_3mm_B12_x_i_enable = VCC_q;
    assign kernel_3mm_B12_x_i_shift = GND_q;
    assign kernel_3mm_B12_x_i_stall_pred = loop_limiter_kernel_3mm6_out_o_stall;
    assign kernel_3mm_B12_x_i_stall_succ = bb_kernel_3mm_B12_out_stall_in_0;
    assign kernel_3mm_B12_x_i_valid_loop = bb_kernel_3mm_B12_out_valid_in_0;
    assign kernel_3mm_B12_x_i_valid_pred = bb_kernel_3mm_B12_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_3mm_B2_x(EXTIFACE,242)
    assign kernel_3mm_B2_x_i_capture = GND_q;
    assign kernel_3mm_B2_x_i_clear = GND_q;
    assign kernel_3mm_B2_x_i_enable = VCC_q;
    assign kernel_3mm_B2_x_i_shift = GND_q;
    assign kernel_3mm_B2_x_i_stall_pred = loop_limiter_kernel_3mm0_out_o_stall;
    assign kernel_3mm_B2_x_i_stall_succ = bb_kernel_3mm_B8_out_stall_in_0;
    assign kernel_3mm_B2_x_i_valid_loop = bb_kernel_3mm_B2_out_valid_in_0;
    assign kernel_3mm_B2_x_i_valid_pred = bb_kernel_3mm_B2_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_3mm_B3_x(EXTIFACE,243)
    assign kernel_3mm_B3_x_i_capture = GND_q;
    assign kernel_3mm_B3_x_i_clear = GND_q;
    assign kernel_3mm_B3_x_i_enable = VCC_q;
    assign kernel_3mm_B3_x_i_shift = GND_q;
    assign kernel_3mm_B3_x_i_stall_pred = loop_limiter_kernel_3mm2_out_o_stall;
    assign kernel_3mm_B3_x_i_stall_succ = bb_kernel_3mm_B7_out_stall_in_0;
    assign kernel_3mm_B3_x_i_valid_loop = bb_kernel_3mm_B3_out_valid_in_0;
    assign kernel_3mm_B3_x_i_valid_pred = bb_kernel_3mm_B3_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_3mm_B4_x(EXTIFACE,244)
    assign kernel_3mm_B4_x_i_capture = GND_q;
    assign kernel_3mm_B4_x_i_clear = GND_q;
    assign kernel_3mm_B4_x_i_enable = VCC_q;
    assign kernel_3mm_B4_x_i_shift = GND_q;
    assign kernel_3mm_B4_x_i_stall_pred = loop_limiter_kernel_3mm4_out_o_stall;
    assign kernel_3mm_B4_x_i_stall_succ = bb_kernel_3mm_B4_out_stall_in_0;
    assign kernel_3mm_B4_x_i_valid_loop = bb_kernel_3mm_B4_out_valid_in_0;
    assign kernel_3mm_B4_x_i_valid_pred = bb_kernel_3mm_B4_out_valid_in_1;
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
        .resetn(resetn)
    );

    // kernel_3mm_B6_x(EXTIFACE,245)
    assign kernel_3mm_B6_x_i_capture = GND_q;
    assign kernel_3mm_B6_x_i_clear = GND_q;
    assign kernel_3mm_B6_x_i_enable = VCC_q;
    assign kernel_3mm_B6_x_i_shift = GND_q;
    assign kernel_3mm_B6_x_i_stall_pred = loop_limiter_kernel_3mm5_out_o_stall;
    assign kernel_3mm_B6_x_i_stall_succ = bb_kernel_3mm_B6_out_stall_in_0;
    assign kernel_3mm_B6_x_i_valid_loop = bb_kernel_3mm_B6_out_valid_in_0;
    assign kernel_3mm_B6_x_i_valid_pred = bb_kernel_3mm_B6_out_valid_in_1;
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
        .resetn(resetn)
    );

    // out_iord_bl_call_kernel_3mm_o_fifoalmost_full(GPOUT,253)
    assign out_iord_bl_call_kernel_3mm_o_fifoalmost_full = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoalmost_full;

    // out_iord_bl_call_kernel_3mm_o_fifoready(GPOUT,254)
    assign out_iord_bl_call_kernel_3mm_o_fifoready = bb_kernel_3mm_B1_start_out_iord_bl_call_kernel_3mm_o_fifoready;

    // out_iowr_bl_return_kernel_3mm_o_fifodata(GPOUT,255)
    assign out_iowr_bl_return_kernel_3mm_o_fifodata = bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifodata;

    // out_iowr_bl_return_kernel_3mm_o_fifovalid(GPOUT,256)
    assign out_iowr_bl_return_kernel_3mm_o_fifovalid = bb_kernel_3mm_B15_out_iowr_bl_return_kernel_3mm_o_fifovalid;

    // out_memdep_1_kernel_3mm_avm_address(GPOUT,257)
    assign out_memdep_1_kernel_3mm_avm_address = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_address;

    // out_memdep_1_kernel_3mm_avm_burstcount(GPOUT,258)
    assign out_memdep_1_kernel_3mm_avm_burstcount = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_burstcount;

    // out_memdep_1_kernel_3mm_avm_byteenable(GPOUT,259)
    assign out_memdep_1_kernel_3mm_avm_byteenable = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_byteenable;

    // out_memdep_1_kernel_3mm_avm_enable(GPOUT,260)
    assign out_memdep_1_kernel_3mm_avm_enable = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_enable;

    // out_memdep_1_kernel_3mm_avm_read(GPOUT,261)
    assign out_memdep_1_kernel_3mm_avm_read = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_read;

    // out_memdep_1_kernel_3mm_avm_write(GPOUT,262)
    assign out_memdep_1_kernel_3mm_avm_write = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_write;

    // out_memdep_1_kernel_3mm_avm_writedata(GPOUT,263)
    assign out_memdep_1_kernel_3mm_avm_writedata = bb_kernel_3mm_B7_out_memdep_1_kernel_3mm_avm_writedata;

    // out_memdep_6_kernel_3mm_avm_address(GPOUT,264)
    assign out_memdep_6_kernel_3mm_avm_address = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_address;

    // out_memdep_6_kernel_3mm_avm_burstcount(GPOUT,265)
    assign out_memdep_6_kernel_3mm_avm_burstcount = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_burstcount;

    // out_memdep_6_kernel_3mm_avm_byteenable(GPOUT,266)
    assign out_memdep_6_kernel_3mm_avm_byteenable = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_byteenable;

    // out_memdep_6_kernel_3mm_avm_enable(GPOUT,267)
    assign out_memdep_6_kernel_3mm_avm_enable = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_enable;

    // out_memdep_6_kernel_3mm_avm_read(GPOUT,268)
    assign out_memdep_6_kernel_3mm_avm_read = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_read;

    // out_memdep_6_kernel_3mm_avm_write(GPOUT,269)
    assign out_memdep_6_kernel_3mm_avm_write = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_write;

    // out_memdep_6_kernel_3mm_avm_writedata(GPOUT,270)
    assign out_memdep_6_kernel_3mm_avm_writedata = bb_kernel_3mm_B13_out_memdep_6_kernel_3mm_avm_writedata;

    // out_memdep_kernel_3mm_avm_address(GPOUT,271)
    assign out_memdep_kernel_3mm_avm_address = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_address;

    // out_memdep_kernel_3mm_avm_burstcount(GPOUT,272)
    assign out_memdep_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_burstcount;

    // out_memdep_kernel_3mm_avm_byteenable(GPOUT,273)
    assign out_memdep_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_byteenable;

    // out_memdep_kernel_3mm_avm_enable(GPOUT,274)
    assign out_memdep_kernel_3mm_avm_enable = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_enable;

    // out_memdep_kernel_3mm_avm_read(GPOUT,275)
    assign out_memdep_kernel_3mm_avm_read = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_read;

    // out_memdep_kernel_3mm_avm_write(GPOUT,276)
    assign out_memdep_kernel_3mm_avm_write = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_write;

    // out_memdep_kernel_3mm_avm_writedata(GPOUT,277)
    assign out_memdep_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_out_memdep_kernel_3mm_avm_writedata;

    // bb_kernel_3mm_B0_runOnce(BLACKBOX,2)
    kernel_3mm_bb_B0_runOnce thebb_kernel_3mm_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_kernel_3mm_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,278)
    assign out_stall_out = bb_kernel_3mm_B0_runOnce_out_stall_out_0;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_address(GPOUT,279)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_address = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount(GPOUT,280)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable(GPOUT,281)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_enable(GPOUT,282)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_enable = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_read(GPOUT,283)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_read = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_write(GPOUT,284)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_write = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata(GPOUT,285)
    assign out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata = bb_kernel_3mm_B11_out_unnamed_kernel_3mm10_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_address(GPOUT,286)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_address = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount(GPOUT,287)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable(GPOUT,288)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_enable(GPOUT,289)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_enable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_read(GPOUT,290)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_read = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_write(GPOUT,291)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_write = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata(GPOUT,292)
    assign out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_out_unnamed_kernel_3mm12_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_address(GPOUT,293)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_address = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount(GPOUT,294)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable(GPOUT,295)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_enable(GPOUT,296)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_enable = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_read(GPOUT,297)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_read = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_write(GPOUT,298)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_write = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata(GPOUT,299)
    assign out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata = bb_kernel_3mm_B12_out_unnamed_kernel_3mm13_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_address(GPOUT,300)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_address = bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount(GPOUT,301)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount = bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable(GPOUT,302)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_enable(GPOUT,303)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_enable = bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_read(GPOUT,304)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_read = bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_write(GPOUT,305)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_write = bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata(GPOUT,306)
    assign out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata = bb_kernel_3mm_B3_out_unnamed_kernel_3mm2_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_address(GPOUT,307)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_address = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount(GPOUT,308)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable(GPOUT,309)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_enable(GPOUT,310)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_enable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_read(GPOUT,311)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_read = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_write(GPOUT,312)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_write = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata(GPOUT,313)
    assign out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_out_unnamed_kernel_3mm4_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_address(GPOUT,314)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_address = bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount(GPOUT,315)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount = bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable(GPOUT,316)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_enable(GPOUT,317)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_enable = bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_read(GPOUT,318)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_read = bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_write(GPOUT,319)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_write = bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata(GPOUT,320)
    assign out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata = bb_kernel_3mm_B4_out_unnamed_kernel_3mm5_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_address(GPOUT,321)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_address = bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount(GPOUT,322)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount = bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable(GPOUT,323)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable = bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_enable(GPOUT,324)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_enable = bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_read(GPOUT,325)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_read = bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_write(GPOUT,326)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_write = bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata(GPOUT,327)
    assign out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata = bb_kernel_3mm_B5_out_unnamed_kernel_3mm6_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_address(GPOUT,328)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_address = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount(GPOUT,329)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable(GPOUT,330)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_enable(GPOUT,331)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_enable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_read(GPOUT,332)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_read = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_write(GPOUT,333)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_write = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata(GPOUT,334)
    assign out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_out_unnamed_kernel_3mm8_kernel_3mm_avm_writedata;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_address(GPOUT,335)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_address = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_address;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount(GPOUT,336)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_burstcount;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable(GPOUT,337)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_byteenable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_enable(GPOUT,338)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_enable = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_enable;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_read(GPOUT,339)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_read = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_read;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_write(GPOUT,340)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_write = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_write;

    // out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata(GPOUT,341)
    assign out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata = bb_kernel_3mm_B6_out_unnamed_kernel_3mm9_kernel_3mm_avm_writedata;

    // out_valid_out(GPOUT,342)
    assign out_valid_out = GND_q;

endmodule
