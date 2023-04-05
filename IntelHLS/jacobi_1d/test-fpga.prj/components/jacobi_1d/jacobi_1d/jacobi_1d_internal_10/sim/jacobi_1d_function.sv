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

// SystemVerilog created from jacobi_1d_function
// Created for function/kernel jacobi_1d
// SystemVerilog created on Wed Apr  5 13:32:11 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module jacobi_1d_function (
    input wire [63:0] in_arg_A_1,
    input wire [63:0] in_arg_A_2,
    input wire [63:0] in_arg_B,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_jacobi_1d_i_fifodata,
    input wire [0:0] in_iord_bl_call_jacobi_1d_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_jacobi_1d_i_fifoready,
    input wire [31:0] in_memdep_2_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_2_jacobi_1d_avm_writeack,
    input wire [31:0] in_memdep_3_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_3_jacobi_1d_avm_writeack,
    input wire [31:0] in_memdep_4_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_4_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_4_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_4_jacobi_1d_avm_writeack,
    input wire [31:0] in_memdep_5_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_5_jacobi_1d_avm_writeack,
    input wire [63:0] in_memdep_6_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_6_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_6_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_6_jacobi_1d_avm_writeack,
    input wire [63:0] in_memdep_7_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_7_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_7_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_7_jacobi_1d_avm_writeack,
    input wire [31:0] in_memdep_jacobi_1d_avm_readdata,
    input wire [0:0] in_memdep_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_memdep_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_memdep_jacobi_1d_avm_writeack,
    input wire [31:0] in_pre_pre1_jacobi_1d_avm_readdata,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_pre_pre1_jacobi_1d_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack,
    input wire [63:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d12_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack,
    input wire [31:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack,
    input wire [63:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest,
    input wire [0:0] in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_jacobi_1d_o_fifoready,
    output wire [0:0] out_iowr_bl_return_jacobi_1d_o_fifodata,
    output wire [0:0] out_iowr_bl_return_jacobi_1d_o_fifovalid,
    output wire [31:0] out_memdep_2_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_2_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_2_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_2_jacobi_1d_avm_writedata,
    output wire [31:0] out_memdep_3_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_3_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_3_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_3_jacobi_1d_avm_writedata,
    output wire [31:0] out_memdep_4_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_4_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_4_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_4_jacobi_1d_avm_writedata,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_5_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_5_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_5_jacobi_1d_avm_writedata,
    output wire [63:0] out_memdep_6_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_burstcount,
    output wire [7:0] out_memdep_6_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_6_jacobi_1d_avm_write,
    output wire [63:0] out_memdep_6_jacobi_1d_avm_writedata,
    output wire [63:0] out_memdep_7_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_burstcount,
    output wire [7:0] out_memdep_7_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_7_jacobi_1d_avm_write,
    output wire [63:0] out_memdep_7_jacobi_1d_avm_writedata,
    output wire [31:0] out_memdep_jacobi_1d_avm_address,
    output wire [0:0] out_memdep_jacobi_1d_avm_burstcount,
    output wire [3:0] out_memdep_jacobi_1d_avm_byteenable,
    output wire [0:0] out_memdep_jacobi_1d_avm_enable,
    output wire [0:0] out_memdep_jacobi_1d_avm_read,
    output wire [0:0] out_memdep_jacobi_1d_avm_write,
    output wire [31:0] out_memdep_jacobi_1d_avm_writedata,
    output wire [0:0] out_o_active_memdep_6,
    output wire [0:0] out_o_active_memdep_7,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_address,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_burstcount,
    output wire [3:0] out_pre_pre1_jacobi_1d_avm_byteenable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_enable,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_read,
    output wire [0:0] out_pre_pre1_jacobi_1d_avm_write,
    output wire [31:0] out_pre_pre1_jacobi_1d_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount,
    output wire [7:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata,
    output wire [63:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount,
    output wire [7:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata,
    output wire [31:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount,
    output wire [3:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_write,
    output wire [31:0] out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata,
    output wire [63:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_address,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount,
    output wire [7:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_enable,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_read,
    output wire [0:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_write,
    output wire [63:0] out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_jacobi_1d_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;
    wire [0:0] bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready;
    wire [0:0] bb_jacobi_1d_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B1_start_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B1_start_out_valid_out_0;
    wire [31:0] bb_jacobi_1d_B2_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B2_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B2_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B3_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B3_out_exiting_valid_out;
    wire [31:0] bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B3_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B3_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B3_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B3_out_stall_out_1;
    wire [63:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;
    wire [63:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;
    wire [63:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B3_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B3_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B3_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B4_out_c0_exe283;
    wire [0:0] bb_jacobi_1d_B4_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B4_out_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B4_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B4_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B4_out_stall_out_1;
    wire [0:0] bb_jacobi_1d_B4_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B4_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B4_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B5_out_c0_exe393;
    wire [0:0] bb_jacobi_1d_B5_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B5_out_exiting_valid_out;
    wire [31:0] bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B5_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B5_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B5_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B5_out_stall_out_1;
    wire [31:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B5_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B5_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B5_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B6_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B6_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B6_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B7_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B7_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B8_out_exiting_stall_out;
    wire [0:0] bb_jacobi_1d_B8_out_exiting_valid_out;
    wire [0:0] bb_jacobi_1d_B8_out_lsu_memdep_6_o_active;
    wire [0:0] bb_jacobi_1d_B8_out_lsu_memdep_7_o_active;
    wire [63:0] bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_writedata;
    wire [63:0] bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_burstcount;
    wire [7:0] bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_write;
    wire [63:0] bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B8_out_pipeline_valid_out;
    wire [0:0] bb_jacobi_1d_B8_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B8_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B8_out_stall_out_1;
    wire [31:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;
    wire [31:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;
    wire [3:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;
    wire [0:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;
    wire [31:0] bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;
    wire [0:0] bb_jacobi_1d_B8_out_valid_in_0;
    wire [0:0] bb_jacobi_1d_B8_out_valid_in_1;
    wire [0:0] bb_jacobi_1d_B8_out_valid_out_0;
    wire [0:0] bb_jacobi_1d_B9_out_feedback_out_1;
    wire [0:0] bb_jacobi_1d_B9_out_feedback_valid_out_1;
    wire [0:0] bb_jacobi_1d_B9_out_iowr_bl_return_jacobi_1d_o_fifodata;
    wire [0:0] bb_jacobi_1d_B9_out_iowr_bl_return_jacobi_1d_o_fifovalid;
    wire [0:0] bb_jacobi_1d_B9_out_stall_in_0;
    wire [0:0] bb_jacobi_1d_B9_out_stall_out_0;
    wire [0:0] bb_jacobi_1d_B9_out_valid_out_0;
    wire [1:0] c_i2_026_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr_out_o_valid;
    wire [0:0] jacobi_1d_B1_start_x_i_capture;
    wire jacobi_1d_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_clear;
    wire jacobi_1d_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_enable;
    wire jacobi_1d_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_shift;
    wire jacobi_1d_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_stall_pred;
    wire jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_stall_succ;
    wire jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_loop;
    wire jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_pred;
    wire jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B1_start_x_i_valid_succ;
    wire jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_capture;
    wire jacobi_1d_B3_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_clear;
    wire jacobi_1d_B3_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_enable;
    wire jacobi_1d_B3_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_shift;
    wire jacobi_1d_B3_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_stall_pred;
    wire jacobi_1d_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_stall_succ;
    wire jacobi_1d_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_valid_loop;
    wire jacobi_1d_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_valid_pred;
    wire jacobi_1d_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B3_x_i_valid_succ;
    wire jacobi_1d_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_capture;
    wire jacobi_1d_B4_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_clear;
    wire jacobi_1d_B4_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_enable;
    wire jacobi_1d_B4_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_shift;
    wire jacobi_1d_B4_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_stall_pred;
    wire jacobi_1d_B4_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_stall_succ;
    wire jacobi_1d_B4_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_valid_loop;
    wire jacobi_1d_B4_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_valid_pred;
    wire jacobi_1d_B4_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B4_x_i_valid_succ;
    wire jacobi_1d_B4_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_capture;
    wire jacobi_1d_B5_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_clear;
    wire jacobi_1d_B5_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_enable;
    wire jacobi_1d_B5_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_shift;
    wire jacobi_1d_B5_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_stall_pred;
    wire jacobi_1d_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_stall_succ;
    wire jacobi_1d_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_valid_loop;
    wire jacobi_1d_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_valid_pred;
    wire jacobi_1d_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B5_x_i_valid_succ;
    wire jacobi_1d_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_capture;
    wire jacobi_1d_B8_x_i_capture_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_clear;
    wire jacobi_1d_B8_x_i_clear_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_enable;
    wire jacobi_1d_B8_x_i_enable_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_shift;
    wire jacobi_1d_B8_x_i_shift_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_stall_pred;
    wire jacobi_1d_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_stall_succ;
    wire jacobi_1d_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_valid_loop;
    wire jacobi_1d_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_valid_pred;
    wire jacobi_1d_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] jacobi_1d_B8_x_i_valid_succ;
    wire jacobi_1d_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] loop_limiter_jacobi_1d0_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d0_out_o_valid;
    wire [0:0] loop_limiter_jacobi_1d1_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d1_out_o_valid;
    wire [0:0] loop_limiter_jacobi_1d2_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d2_out_o_valid;
    wire [0:0] loop_limiter_jacobi_1d3_out_o_stall;
    wire [0:0] loop_limiter_jacobi_1d3_out_o_valid;
    wire [0:0] bb_jacobi_1d_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_jacobi_1d_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_jacobi_1d_B9_sr_0_aunroll_x_out_o_valid;


    // c_i2_026(CONSTANT,45)
    assign c_i2_026_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo(BLACKBOX,57)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going63_1_valid_fifo thei_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo (
        .in_data_in(c_i2_026_q),
        .in_stall_in(bb_jacobi_1d_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo(BLACKBOX,55)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going50_6_valid_fifo thei_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo (
        .in_data_in(c_i2_026_q),
        .in_stall_in(bb_jacobi_1d_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo(BLACKBOX,53)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going43_2_valid_fifo thei_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo (
        .in_data_in(c_i2_026_q),
        .in_stall_in(bb_jacobi_1d_B4_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo(BLACKBOX,51)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going29_6_valid_fifo thei_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo (
        .in_data_in(c_i2_026_q),
        .in_stall_in(bb_jacobi_1d_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B9_sr_0_aunroll_x(BLACKBOX,259)
    jacobi_1d_bb_B9_sr_0 thebb_jacobi_1d_B9_sr_0_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B9_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B8_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_jacobi_1d_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr(BLACKBOX,58)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going_0_sr thei_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr (
        .in_i_data(GND_q),
        .in_i_stall(bb_jacobi_1d_B8_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B8(BLACKBOX,10)
    jacobi_1d_bb_B8 thebb_jacobi_1d_B8 (
        .in_flush(in_start),
        .in_forked25_0(GND_q),
        .in_forked25_1(bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_1_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_6_jacobi_1d_avm_readdata(in_memdep_6_jacobi_1d_avm_readdata),
        .in_memdep_6_jacobi_1d_avm_readdatavalid(in_memdep_6_jacobi_1d_avm_readdatavalid),
        .in_memdep_6_jacobi_1d_avm_waitrequest(in_memdep_6_jacobi_1d_avm_waitrequest),
        .in_memdep_6_jacobi_1d_avm_writeack(in_memdep_6_jacobi_1d_avm_writeack),
        .in_memdep_7_jacobi_1d_avm_readdata(in_memdep_7_jacobi_1d_avm_readdata),
        .in_memdep_7_jacobi_1d_avm_readdatavalid(in_memdep_7_jacobi_1d_avm_readdatavalid),
        .in_memdep_7_jacobi_1d_avm_waitrequest(in_memdep_7_jacobi_1d_avm_waitrequest),
        .in_memdep_7_jacobi_1d_avm_writeack(in_memdep_7_jacobi_1d_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr_out_o_stall),
        .in_stall_in_0(bb_jacobi_1d_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d14_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d14_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d14_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d14_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d15_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d15_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d15_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d15_jacobi_1d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_jacobi_1d0_sr_out_o_valid),
        .in_valid_in_1(bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_jacobi_1d_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B8_out_exiting_valid_out),
        .out_lsu_memdep_6_o_active(bb_jacobi_1d_B8_out_lsu_memdep_6_o_active),
        .out_lsu_memdep_7_o_active(bb_jacobi_1d_B8_out_lsu_memdep_7_o_active),
        .out_memdep_6_jacobi_1d_avm_address(bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_address),
        .out_memdep_6_jacobi_1d_avm_burstcount(bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_burstcount),
        .out_memdep_6_jacobi_1d_avm_byteenable(bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_byteenable),
        .out_memdep_6_jacobi_1d_avm_enable(bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_enable),
        .out_memdep_6_jacobi_1d_avm_read(bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_read),
        .out_memdep_6_jacobi_1d_avm_write(bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_write),
        .out_memdep_6_jacobi_1d_avm_writedata(bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_writedata),
        .out_memdep_7_jacobi_1d_avm_address(bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_address),
        .out_memdep_7_jacobi_1d_avm_burstcount(bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_burstcount),
        .out_memdep_7_jacobi_1d_avm_byteenable(bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_byteenable),
        .out_memdep_7_jacobi_1d_avm_enable(bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_enable),
        .out_memdep_7_jacobi_1d_avm_read(bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_read),
        .out_memdep_7_jacobi_1d_avm_write(bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_write),
        .out_memdep_7_jacobi_1d_avm_writedata(bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_writedata),
        .out_pipeline_valid_out(bb_jacobi_1d_B8_out_pipeline_valid_out),
        .out_stall_in_0(bb_jacobi_1d_B8_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B8_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B8_out_stall_out_1),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_address(bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount(bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable(bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_enable(bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_read(bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_write(bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata(bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_address(bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount(bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable(bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_enable(bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_read(bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_write(bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata(bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata),
        .out_valid_in_0(bb_jacobi_1d_B8_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B8_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B8_sr_1_aunroll_x(BLACKBOX,258)
    jacobi_1d_bb_B8_sr_1 thebb_jacobi_1d_B8_sr_1_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d2(BLACKBOX,137)
    jacobi_1d_loop_limiter_2 theloop_limiter_jacobi_1d2 (
        .in_i_stall(bb_jacobi_1d_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B8_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B7_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d2_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B7(BLACKBOX,9)
    jacobi_1d_bb_B7 thebb_jacobi_1d_B7 (
        .in_stall_in_0(loop_limiter_jacobi_1d2_out_o_stall),
        .in_valid_in_0(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_jacobi_1d_B7_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B7_sr_0_aunroll_x(BLACKBOX,257)
    jacobi_1d_bb_B7_sr_0 thebb_jacobi_1d_B7_sr_0_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B7_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B6_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B6(BLACKBOX,8)
    jacobi_1d_bb_B6 thebb_jacobi_1d_B6 (
        .in_c0_exe3931_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_jacobi_1d_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_jacobi_1d_B6_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B6_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B6_sr_0_aunroll_x(BLACKBOX,256)
    jacobi_1d_bb_B6_sr_0 thebb_jacobi_1d_B6_sr_0_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B6_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_jacobi_1d_B5_out_c0_exe393),
        .out_o_stall(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr(BLACKBOX,50)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going29_6_sr thei_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B5(BLACKBOX,7)
    jacobi_1d_bb_B5 thebb_jacobi_1d_B5 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_3_0(bb_jacobi_1d_B2_out_intel_reserved_ffwd_3_0),
        .in_memdep_4_jacobi_1d_avm_readdata(in_memdep_4_jacobi_1d_avm_readdata),
        .in_memdep_4_jacobi_1d_avm_readdatavalid(in_memdep_4_jacobi_1d_avm_readdatavalid),
        .in_memdep_4_jacobi_1d_avm_waitrequest(in_memdep_4_jacobi_1d_avm_waitrequest),
        .in_memdep_4_jacobi_1d_avm_writeack(in_memdep_4_jacobi_1d_avm_writeack),
        .in_memdep_5_jacobi_1d_avm_readdata(in_memdep_5_jacobi_1d_avm_readdata),
        .in_memdep_5_jacobi_1d_avm_readdatavalid(in_memdep_5_jacobi_1d_avm_readdatavalid),
        .in_memdep_5_jacobi_1d_avm_waitrequest(in_memdep_5_jacobi_1d_avm_waitrequest),
        .in_memdep_5_jacobi_1d_avm_writeack(in_memdep_5_jacobi_1d_avm_writeack),
        .in_notcmp4168_0(GND_q),
        .in_notcmp4168_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_sr_out_o_stall),
        .in_stall_in_0(bb_jacobi_1d_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d12_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d12_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d12_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d12_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d12_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d13_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d13_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d13_jacobi_1d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going29_jacobi_1d6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe393(bb_jacobi_1d_B5_out_c0_exe393),
        .out_exiting_stall_out(bb_jacobi_1d_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B5_out_exiting_valid_out),
        .out_memdep_4_jacobi_1d_avm_address(bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_address),
        .out_memdep_4_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_burstcount),
        .out_memdep_4_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_byteenable),
        .out_memdep_4_jacobi_1d_avm_enable(bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_enable),
        .out_memdep_4_jacobi_1d_avm_read(bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_read),
        .out_memdep_4_jacobi_1d_avm_write(bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_write),
        .out_memdep_4_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_writedata),
        .out_memdep_5_jacobi_1d_avm_address(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_address),
        .out_memdep_5_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_burstcount),
        .out_memdep_5_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_byteenable),
        .out_memdep_5_jacobi_1d_avm_enable(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_enable),
        .out_memdep_5_jacobi_1d_avm_read(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_read),
        .out_memdep_5_jacobi_1d_avm_write(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_write),
        .out_memdep_5_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_writedata),
        .out_pipeline_valid_out(bb_jacobi_1d_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_jacobi_1d_B5_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B5_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B5_out_stall_out_1),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_address(bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_enable(bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_read(bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_write(bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_address(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_read(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_write(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata),
        .out_valid_in_0(bb_jacobi_1d_B5_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B5_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B5_sr_1_aunroll_x(BLACKBOX,255)
    jacobi_1d_bb_B5_sr_1 thebb_jacobi_1d_B5_sr_1_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_jacobi_1d_B4_out_c0_exe283),
        .out_o_stall(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d3(BLACKBOX,138)
    jacobi_1d_loop_limiter_3 theloop_limiter_jacobi_1d3 (
        .in_i_stall(bb_jacobi_1d_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B5_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B4_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d3_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr(BLACKBOX,52)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going43_2_sr thei_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B4_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4(BLACKBOX,6)
    jacobi_1d_bb_B4 thebb_jacobi_1d_B4 (
        .in_forked66_0(GND_q),
        .in_forked66_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_jacobi_1d3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going43_jacobi_1d2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe283(bb_jacobi_1d_B4_out_c0_exe283),
        .out_exiting_stall_out(bb_jacobi_1d_B4_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B4_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_jacobi_1d_B4_out_pipeline_valid_out),
        .out_stall_out_0(bb_jacobi_1d_B4_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B4_out_stall_out_1),
        .out_valid_in_0(bb_jacobi_1d_B4_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B4_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B4_sr_1_aunroll_x(BLACKBOX,254)
    jacobi_1d_bb_B4_sr_1 thebb_jacobi_1d_B4_sr_1_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B4_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d1(BLACKBOX,136)
    jacobi_1d_loop_limiter_1 theloop_limiter_jacobi_1d1 (
        .in_i_stall(bb_jacobi_1d_B4_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B4_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B2_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B4_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d1_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B2(BLACKBOX,4)
    jacobi_1d_bb_B2 thebb_jacobi_1d_B2 (
        .in_flush(in_start),
        .in_pre_pre1_jacobi_1d_avm_readdata(in_pre_pre1_jacobi_1d_avm_readdata),
        .in_pre_pre1_jacobi_1d_avm_readdatavalid(in_pre_pre1_jacobi_1d_avm_readdatavalid),
        .in_pre_pre1_jacobi_1d_avm_waitrequest(in_pre_pre1_jacobi_1d_avm_waitrequest),
        .in_pre_pre1_jacobi_1d_avm_writeack(in_pre_pre1_jacobi_1d_avm_writeack),
        .in_stall_in_0(loop_limiter_jacobi_1d1_out_o_stall),
        .in_valid_in_0(bb_jacobi_1d_B2_sr_0_aunroll_x_out_o_valid),
        .out_intel_reserved_ffwd_3_0(bb_jacobi_1d_B2_out_intel_reserved_ffwd_3_0),
        .out_pre_pre1_jacobi_1d_avm_address(bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_address),
        .out_pre_pre1_jacobi_1d_avm_burstcount(bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_burstcount),
        .out_pre_pre1_jacobi_1d_avm_byteenable(bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_byteenable),
        .out_pre_pre1_jacobi_1d_avm_enable(bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_enable),
        .out_pre_pre1_jacobi_1d_avm_read(bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_read),
        .out_pre_pre1_jacobi_1d_avm_write(bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_write),
        .out_pre_pre1_jacobi_1d_avm_writedata(bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_writedata),
        .out_stall_out_0(bb_jacobi_1d_B2_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B2_sr_0_aunroll_x(BLACKBOX,252)
    jacobi_1d_bb_B2_sr_0 thebb_jacobi_1d_B2_sr_0_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B2_out_stall_out_0),
        .in_i_valid(bb_jacobi_1d_B3_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_jacobi_1d_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr(BLACKBOX,54)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going50_6_sr thei_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3(BLACKBOX,5)
    jacobi_1d_bb_B3 thebb_jacobi_1d_B3 (
        .in_flush(in_start),
        .in_forked47_0(GND_q),
        .in_forked47_1(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_0_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_2_jacobi_1d_avm_readdata(in_memdep_2_jacobi_1d_avm_readdata),
        .in_memdep_2_jacobi_1d_avm_readdatavalid(in_memdep_2_jacobi_1d_avm_readdatavalid),
        .in_memdep_2_jacobi_1d_avm_waitrequest(in_memdep_2_jacobi_1d_avm_waitrequest),
        .in_memdep_2_jacobi_1d_avm_writeack(in_memdep_2_jacobi_1d_avm_writeack),
        .in_memdep_3_jacobi_1d_avm_readdata(in_memdep_3_jacobi_1d_avm_readdata),
        .in_memdep_3_jacobi_1d_avm_readdatavalid(in_memdep_3_jacobi_1d_avm_readdatavalid),
        .in_memdep_3_jacobi_1d_avm_waitrequest(in_memdep_3_jacobi_1d_avm_waitrequest),
        .in_memdep_3_jacobi_1d_avm_writeack(in_memdep_3_jacobi_1d_avm_writeack),
        .in_memdep_jacobi_1d_avm_readdata(in_memdep_jacobi_1d_avm_readdata),
        .in_memdep_jacobi_1d_avm_readdatavalid(in_memdep_jacobi_1d_avm_readdatavalid),
        .in_memdep_jacobi_1d_avm_waitrequest(in_memdep_jacobi_1d_avm_waitrequest),
        .in_memdep_jacobi_1d_avm_writeack(in_memdep_jacobi_1d_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_sr_out_o_stall),
        .in_stall_in_0(bb_jacobi_1d_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d10_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d10_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d10_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d10_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d11_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d11_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d11_jacobi_1d_avm_writeack),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdata),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid(in_unnamed_jacobi_1d9_jacobi_1d_avm_readdatavalid),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest(in_unnamed_jacobi_1d9_jacobi_1d_avm_waitrequest),
        .in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack(in_unnamed_jacobi_1d9_jacobi_1d_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going50_jacobi_1d6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_jacobi_1d_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_jacobi_1d_B3_out_exiting_valid_out),
        .out_memdep_2_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_address),
        .out_memdep_2_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_burstcount),
        .out_memdep_2_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_byteenable),
        .out_memdep_2_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_enable),
        .out_memdep_2_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_read),
        .out_memdep_2_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_write),
        .out_memdep_2_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_writedata),
        .out_memdep_3_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_address),
        .out_memdep_3_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_burstcount),
        .out_memdep_3_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_byteenable),
        .out_memdep_3_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_enable),
        .out_memdep_3_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_read),
        .out_memdep_3_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_write),
        .out_memdep_3_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_writedata),
        .out_memdep_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_address),
        .out_memdep_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_burstcount),
        .out_memdep_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_byteenable),
        .out_memdep_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_enable),
        .out_memdep_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_read),
        .out_memdep_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_write),
        .out_memdep_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_writedata),
        .out_pipeline_valid_out(bb_jacobi_1d_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_jacobi_1d_B3_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B3_out_stall_out_0),
        .out_stall_out_1(bb_jacobi_1d_B3_out_stall_out_1),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_address(bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_address),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_read(bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_read),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_write(bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_write),
        .out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata),
        .out_valid_in_0(bb_jacobi_1d_B3_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B3_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B3_sr_1_aunroll_x(BLACKBOX,253)
    jacobi_1d_bb_B3_sr_1 thebb_jacobi_1d_B3_sr_1_aunroll_x (
        .in_i_stall(bb_jacobi_1d_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_jacobi_1d0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_jacobi_1d0(BLACKBOX,135)
    jacobi_1d_loop_limiter_0 theloop_limiter_jacobi_1d0 (
        .in_i_stall(bb_jacobi_1d_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_jacobi_1d_B3_out_exiting_stall_out),
        .in_i_valid(bb_jacobi_1d_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_jacobi_1d_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_jacobi_1d0_out_o_stall),
        .out_o_valid(loop_limiter_jacobi_1d0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr(BLACKBOX,56)
    jacobi_1d_i_llvm_fpga_pipeline_keep_going63_1_sr thei_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo_out_stall_out),
        .in_i_valid(bb_jacobi_1d_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B1_start(BLACKBOX,3)
    jacobi_1d_bb_B1_start thebb_jacobi_1d_B1_start (
        .in_feedback_in_1(bb_jacobi_1d_B9_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_jacobi_1d_B9_out_feedback_valid_out_1),
        .in_iord_bl_call_jacobi_1d_i_fifodata(in_iord_bl_call_jacobi_1d_i_fifodata),
        .in_iord_bl_call_jacobi_1d_i_fifovalid(in_iord_bl_call_jacobi_1d_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_jacobi_1d0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going63_jacobi_1d1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_jacobi_1d_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_jacobi_1d_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_jacobi_1d_o_fifoalmost_full(bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full),
        .out_iord_bl_call_jacobi_1d_o_fifoready(bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready),
        .out_pipeline_valid_out(bb_jacobi_1d_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_jacobi_1d_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_jacobi_1d_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_jacobi_1d_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_jacobi_1d_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_jacobi_1d_B9(BLACKBOX,11)
    jacobi_1d_bb_B9 thebb_jacobi_1d_B9 (
        .in_feedback_stall_in_1(bb_jacobi_1d_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_jacobi_1d_i_fifoready(in_iowr_bl_return_jacobi_1d_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_jacobi_1d_B9_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_jacobi_1d_B9_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_jacobi_1d_B9_out_feedback_valid_out_1),
        .out_iowr_bl_return_jacobi_1d_o_fifodata(bb_jacobi_1d_B9_out_iowr_bl_return_jacobi_1d_o_fifodata),
        .out_iowr_bl_return_jacobi_1d_o_fifovalid(bb_jacobi_1d_B9_out_iowr_bl_return_jacobi_1d_o_fifovalid),
        .out_stall_in_0(bb_jacobi_1d_B9_out_stall_in_0),
        .out_stall_out_0(bb_jacobi_1d_B9_out_stall_out_0),
        .out_valid_out_0(bb_jacobi_1d_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // jacobi_1d_B1_start_x(EXTIFACE,130)
    assign jacobi_1d_B1_start_x_i_capture = GND_q;
    assign jacobi_1d_B1_start_x_i_clear = GND_q;
    assign jacobi_1d_B1_start_x_i_enable = VCC_q;
    assign jacobi_1d_B1_start_x_i_shift = GND_q;
    assign jacobi_1d_B1_start_x_i_stall_pred = GND_q;
    assign jacobi_1d_B1_start_x_i_stall_succ = bb_jacobi_1d_B9_out_stall_in_0;
    assign jacobi_1d_B1_start_x_i_valid_loop = bb_jacobi_1d_B1_start_out_valid_in_0;
    assign jacobi_1d_B1_start_x_i_valid_pred = bb_jacobi_1d_B1_start_out_valid_in_1;
    assign jacobi_1d_B1_start_x_i_valid_succ = bb_jacobi_1d_B9_out_valid_out_0;
    assign jacobi_1d_B1_start_x_i_capture_bitsignaltemp = jacobi_1d_B1_start_x_i_capture[0];
    assign jacobi_1d_B1_start_x_i_clear_bitsignaltemp = jacobi_1d_B1_start_x_i_clear[0];
    assign jacobi_1d_B1_start_x_i_enable_bitsignaltemp = jacobi_1d_B1_start_x_i_enable[0];
    assign jacobi_1d_B1_start_x_i_shift_bitsignaltemp = jacobi_1d_B1_start_x_i_shift[0];
    assign jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp = jacobi_1d_B1_start_x_i_stall_pred[0];
    assign jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp = jacobi_1d_B1_start_x_i_stall_succ[0];
    assign jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_loop[0];
    assign jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_pred[0];
    assign jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp = jacobi_1d_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B1.start")
    ) thejacobi_1d_B1_start_x (
        .i_capture(jacobi_1d_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B3_x(EXTIFACE,131)
    assign jacobi_1d_B3_x_i_capture = GND_q;
    assign jacobi_1d_B3_x_i_clear = GND_q;
    assign jacobi_1d_B3_x_i_enable = VCC_q;
    assign jacobi_1d_B3_x_i_shift = GND_q;
    assign jacobi_1d_B3_x_i_stall_pred = loop_limiter_jacobi_1d0_out_o_stall;
    assign jacobi_1d_B3_x_i_stall_succ = bb_jacobi_1d_B3_out_stall_in_0;
    assign jacobi_1d_B3_x_i_valid_loop = bb_jacobi_1d_B3_out_valid_in_0;
    assign jacobi_1d_B3_x_i_valid_pred = bb_jacobi_1d_B3_out_valid_in_1;
    assign jacobi_1d_B3_x_i_valid_succ = bb_jacobi_1d_B3_out_valid_out_0;
    assign jacobi_1d_B3_x_i_capture_bitsignaltemp = jacobi_1d_B3_x_i_capture[0];
    assign jacobi_1d_B3_x_i_clear_bitsignaltemp = jacobi_1d_B3_x_i_clear[0];
    assign jacobi_1d_B3_x_i_enable_bitsignaltemp = jacobi_1d_B3_x_i_enable[0];
    assign jacobi_1d_B3_x_i_shift_bitsignaltemp = jacobi_1d_B3_x_i_shift[0];
    assign jacobi_1d_B3_x_i_stall_pred_bitsignaltemp = jacobi_1d_B3_x_i_stall_pred[0];
    assign jacobi_1d_B3_x_i_stall_succ_bitsignaltemp = jacobi_1d_B3_x_i_stall_succ[0];
    assign jacobi_1d_B3_x_i_valid_loop_bitsignaltemp = jacobi_1d_B3_x_i_valid_loop[0];
    assign jacobi_1d_B3_x_i_valid_pred_bitsignaltemp = jacobi_1d_B3_x_i_valid_pred[0];
    assign jacobi_1d_B3_x_i_valid_succ_bitsignaltemp = jacobi_1d_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B3")
    ) thejacobi_1d_B3_x (
        .i_capture(jacobi_1d_B3_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B3_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B3_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B4_x(EXTIFACE,132)
    assign jacobi_1d_B4_x_i_capture = GND_q;
    assign jacobi_1d_B4_x_i_clear = GND_q;
    assign jacobi_1d_B4_x_i_enable = VCC_q;
    assign jacobi_1d_B4_x_i_shift = GND_q;
    assign jacobi_1d_B4_x_i_stall_pred = loop_limiter_jacobi_1d1_out_o_stall;
    assign jacobi_1d_B4_x_i_stall_succ = bb_jacobi_1d_B6_out_stall_in_0;
    assign jacobi_1d_B4_x_i_valid_loop = bb_jacobi_1d_B4_out_valid_in_0;
    assign jacobi_1d_B4_x_i_valid_pred = bb_jacobi_1d_B4_out_valid_in_1;
    assign jacobi_1d_B4_x_i_valid_succ = bb_jacobi_1d_B6_out_valid_out_0;
    assign jacobi_1d_B4_x_i_capture_bitsignaltemp = jacobi_1d_B4_x_i_capture[0];
    assign jacobi_1d_B4_x_i_clear_bitsignaltemp = jacobi_1d_B4_x_i_clear[0];
    assign jacobi_1d_B4_x_i_enable_bitsignaltemp = jacobi_1d_B4_x_i_enable[0];
    assign jacobi_1d_B4_x_i_shift_bitsignaltemp = jacobi_1d_B4_x_i_shift[0];
    assign jacobi_1d_B4_x_i_stall_pred_bitsignaltemp = jacobi_1d_B4_x_i_stall_pred[0];
    assign jacobi_1d_B4_x_i_stall_succ_bitsignaltemp = jacobi_1d_B4_x_i_stall_succ[0];
    assign jacobi_1d_B4_x_i_valid_loop_bitsignaltemp = jacobi_1d_B4_x_i_valid_loop[0];
    assign jacobi_1d_B4_x_i_valid_pred_bitsignaltemp = jacobi_1d_B4_x_i_valid_pred[0];
    assign jacobi_1d_B4_x_i_valid_succ_bitsignaltemp = jacobi_1d_B4_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B4")
    ) thejacobi_1d_B4_x (
        .i_capture(jacobi_1d_B4_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B4_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B4_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B4_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B4_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B4_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B4_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B4_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B4_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B5_x(EXTIFACE,133)
    assign jacobi_1d_B5_x_i_capture = GND_q;
    assign jacobi_1d_B5_x_i_clear = GND_q;
    assign jacobi_1d_B5_x_i_enable = VCC_q;
    assign jacobi_1d_B5_x_i_shift = GND_q;
    assign jacobi_1d_B5_x_i_stall_pred = loop_limiter_jacobi_1d3_out_o_stall;
    assign jacobi_1d_B5_x_i_stall_succ = bb_jacobi_1d_B5_out_stall_in_0;
    assign jacobi_1d_B5_x_i_valid_loop = bb_jacobi_1d_B5_out_valid_in_0;
    assign jacobi_1d_B5_x_i_valid_pred = bb_jacobi_1d_B5_out_valid_in_1;
    assign jacobi_1d_B5_x_i_valid_succ = bb_jacobi_1d_B5_out_valid_out_0;
    assign jacobi_1d_B5_x_i_capture_bitsignaltemp = jacobi_1d_B5_x_i_capture[0];
    assign jacobi_1d_B5_x_i_clear_bitsignaltemp = jacobi_1d_B5_x_i_clear[0];
    assign jacobi_1d_B5_x_i_enable_bitsignaltemp = jacobi_1d_B5_x_i_enable[0];
    assign jacobi_1d_B5_x_i_shift_bitsignaltemp = jacobi_1d_B5_x_i_shift[0];
    assign jacobi_1d_B5_x_i_stall_pred_bitsignaltemp = jacobi_1d_B5_x_i_stall_pred[0];
    assign jacobi_1d_B5_x_i_stall_succ_bitsignaltemp = jacobi_1d_B5_x_i_stall_succ[0];
    assign jacobi_1d_B5_x_i_valid_loop_bitsignaltemp = jacobi_1d_B5_x_i_valid_loop[0];
    assign jacobi_1d_B5_x_i_valid_pred_bitsignaltemp = jacobi_1d_B5_x_i_valid_pred[0];
    assign jacobi_1d_B5_x_i_valid_succ_bitsignaltemp = jacobi_1d_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B5")
    ) thejacobi_1d_B5_x (
        .i_capture(jacobi_1d_B5_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B5_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B5_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // jacobi_1d_B8_x(EXTIFACE,134)
    assign jacobi_1d_B8_x_i_capture = GND_q;
    assign jacobi_1d_B8_x_i_clear = GND_q;
    assign jacobi_1d_B8_x_i_enable = VCC_q;
    assign jacobi_1d_B8_x_i_shift = GND_q;
    assign jacobi_1d_B8_x_i_stall_pred = loop_limiter_jacobi_1d2_out_o_stall;
    assign jacobi_1d_B8_x_i_stall_succ = bb_jacobi_1d_B8_out_stall_in_0;
    assign jacobi_1d_B8_x_i_valid_loop = bb_jacobi_1d_B8_out_valid_in_0;
    assign jacobi_1d_B8_x_i_valid_pred = bb_jacobi_1d_B8_out_valid_in_1;
    assign jacobi_1d_B8_x_i_valid_succ = bb_jacobi_1d_B8_out_valid_out_0;
    assign jacobi_1d_B8_x_i_capture_bitsignaltemp = jacobi_1d_B8_x_i_capture[0];
    assign jacobi_1d_B8_x_i_clear_bitsignaltemp = jacobi_1d_B8_x_i_clear[0];
    assign jacobi_1d_B8_x_i_enable_bitsignaltemp = jacobi_1d_B8_x_i_enable[0];
    assign jacobi_1d_B8_x_i_shift_bitsignaltemp = jacobi_1d_B8_x_i_shift[0];
    assign jacobi_1d_B8_x_i_stall_pred_bitsignaltemp = jacobi_1d_B8_x_i_stall_pred[0];
    assign jacobi_1d_B8_x_i_stall_succ_bitsignaltemp = jacobi_1d_B8_x_i_stall_succ[0];
    assign jacobi_1d_B8_x_i_valid_loop_bitsignaltemp = jacobi_1d_B8_x_i_valid_loop[0];
    assign jacobi_1d_B8_x_i_valid_pred_bitsignaltemp = jacobi_1d_B8_x_i_valid_pred[0];
    assign jacobi_1d_B8_x_i_valid_succ_bitsignaltemp = jacobi_1d_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("jacobi_1d.B8")
    ) thejacobi_1d_B8_x (
        .i_capture(jacobi_1d_B8_x_i_capture_bitsignaltemp),
        .i_clear(jacobi_1d_B8_x_i_clear_bitsignaltemp),
        .i_enable(jacobi_1d_B8_x_i_enable_bitsignaltemp),
        .i_shift(jacobi_1d_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(jacobi_1d_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(jacobi_1d_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(jacobi_1d_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(jacobi_1d_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(jacobi_1d_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_jacobi_1d_o_fifoalmost_full(GPOUT,139)
    assign out_iord_bl_call_jacobi_1d_o_fifoalmost_full = bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoalmost_full;

    // out_iord_bl_call_jacobi_1d_o_fifoready(GPOUT,140)
    assign out_iord_bl_call_jacobi_1d_o_fifoready = bb_jacobi_1d_B1_start_out_iord_bl_call_jacobi_1d_o_fifoready;

    // out_iowr_bl_return_jacobi_1d_o_fifodata(GPOUT,141)
    assign out_iowr_bl_return_jacobi_1d_o_fifodata = bb_jacobi_1d_B9_out_iowr_bl_return_jacobi_1d_o_fifodata;

    // out_iowr_bl_return_jacobi_1d_o_fifovalid(GPOUT,142)
    assign out_iowr_bl_return_jacobi_1d_o_fifovalid = bb_jacobi_1d_B9_out_iowr_bl_return_jacobi_1d_o_fifovalid;

    // out_memdep_2_jacobi_1d_avm_address(GPOUT,143)
    assign out_memdep_2_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_address;

    // out_memdep_2_jacobi_1d_avm_burstcount(GPOUT,144)
    assign out_memdep_2_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_burstcount;

    // out_memdep_2_jacobi_1d_avm_byteenable(GPOUT,145)
    assign out_memdep_2_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_byteenable;

    // out_memdep_2_jacobi_1d_avm_enable(GPOUT,146)
    assign out_memdep_2_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_enable;

    // out_memdep_2_jacobi_1d_avm_read(GPOUT,147)
    assign out_memdep_2_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_read;

    // out_memdep_2_jacobi_1d_avm_write(GPOUT,148)
    assign out_memdep_2_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_write;

    // out_memdep_2_jacobi_1d_avm_writedata(GPOUT,149)
    assign out_memdep_2_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_memdep_2_jacobi_1d_avm_writedata;

    // out_memdep_3_jacobi_1d_avm_address(GPOUT,150)
    assign out_memdep_3_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_address;

    // out_memdep_3_jacobi_1d_avm_burstcount(GPOUT,151)
    assign out_memdep_3_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_burstcount;

    // out_memdep_3_jacobi_1d_avm_byteenable(GPOUT,152)
    assign out_memdep_3_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_byteenable;

    // out_memdep_3_jacobi_1d_avm_enable(GPOUT,153)
    assign out_memdep_3_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_enable;

    // out_memdep_3_jacobi_1d_avm_read(GPOUT,154)
    assign out_memdep_3_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_read;

    // out_memdep_3_jacobi_1d_avm_write(GPOUT,155)
    assign out_memdep_3_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_write;

    // out_memdep_3_jacobi_1d_avm_writedata(GPOUT,156)
    assign out_memdep_3_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_memdep_3_jacobi_1d_avm_writedata;

    // out_memdep_4_jacobi_1d_avm_address(GPOUT,157)
    assign out_memdep_4_jacobi_1d_avm_address = bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_address;

    // out_memdep_4_jacobi_1d_avm_burstcount(GPOUT,158)
    assign out_memdep_4_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_burstcount;

    // out_memdep_4_jacobi_1d_avm_byteenable(GPOUT,159)
    assign out_memdep_4_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_byteenable;

    // out_memdep_4_jacobi_1d_avm_enable(GPOUT,160)
    assign out_memdep_4_jacobi_1d_avm_enable = bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_enable;

    // out_memdep_4_jacobi_1d_avm_read(GPOUT,161)
    assign out_memdep_4_jacobi_1d_avm_read = bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_read;

    // out_memdep_4_jacobi_1d_avm_write(GPOUT,162)
    assign out_memdep_4_jacobi_1d_avm_write = bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_write;

    // out_memdep_4_jacobi_1d_avm_writedata(GPOUT,163)
    assign out_memdep_4_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_out_memdep_4_jacobi_1d_avm_writedata;

    // out_memdep_5_jacobi_1d_avm_address(GPOUT,164)
    assign out_memdep_5_jacobi_1d_avm_address = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_address;

    // out_memdep_5_jacobi_1d_avm_burstcount(GPOUT,165)
    assign out_memdep_5_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_burstcount;

    // out_memdep_5_jacobi_1d_avm_byteenable(GPOUT,166)
    assign out_memdep_5_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_byteenable;

    // out_memdep_5_jacobi_1d_avm_enable(GPOUT,167)
    assign out_memdep_5_jacobi_1d_avm_enable = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_enable;

    // out_memdep_5_jacobi_1d_avm_read(GPOUT,168)
    assign out_memdep_5_jacobi_1d_avm_read = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_read;

    // out_memdep_5_jacobi_1d_avm_write(GPOUT,169)
    assign out_memdep_5_jacobi_1d_avm_write = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_write;

    // out_memdep_5_jacobi_1d_avm_writedata(GPOUT,170)
    assign out_memdep_5_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_out_memdep_5_jacobi_1d_avm_writedata;

    // out_memdep_6_jacobi_1d_avm_address(GPOUT,171)
    assign out_memdep_6_jacobi_1d_avm_address = bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_address;

    // out_memdep_6_jacobi_1d_avm_burstcount(GPOUT,172)
    assign out_memdep_6_jacobi_1d_avm_burstcount = bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_burstcount;

    // out_memdep_6_jacobi_1d_avm_byteenable(GPOUT,173)
    assign out_memdep_6_jacobi_1d_avm_byteenable = bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_byteenable;

    // out_memdep_6_jacobi_1d_avm_enable(GPOUT,174)
    assign out_memdep_6_jacobi_1d_avm_enable = bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_enable;

    // out_memdep_6_jacobi_1d_avm_read(GPOUT,175)
    assign out_memdep_6_jacobi_1d_avm_read = bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_read;

    // out_memdep_6_jacobi_1d_avm_write(GPOUT,176)
    assign out_memdep_6_jacobi_1d_avm_write = bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_write;

    // out_memdep_6_jacobi_1d_avm_writedata(GPOUT,177)
    assign out_memdep_6_jacobi_1d_avm_writedata = bb_jacobi_1d_B8_out_memdep_6_jacobi_1d_avm_writedata;

    // out_memdep_7_jacobi_1d_avm_address(GPOUT,178)
    assign out_memdep_7_jacobi_1d_avm_address = bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_address;

    // out_memdep_7_jacobi_1d_avm_burstcount(GPOUT,179)
    assign out_memdep_7_jacobi_1d_avm_burstcount = bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_burstcount;

    // out_memdep_7_jacobi_1d_avm_byteenable(GPOUT,180)
    assign out_memdep_7_jacobi_1d_avm_byteenable = bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_byteenable;

    // out_memdep_7_jacobi_1d_avm_enable(GPOUT,181)
    assign out_memdep_7_jacobi_1d_avm_enable = bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_enable;

    // out_memdep_7_jacobi_1d_avm_read(GPOUT,182)
    assign out_memdep_7_jacobi_1d_avm_read = bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_read;

    // out_memdep_7_jacobi_1d_avm_write(GPOUT,183)
    assign out_memdep_7_jacobi_1d_avm_write = bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_write;

    // out_memdep_7_jacobi_1d_avm_writedata(GPOUT,184)
    assign out_memdep_7_jacobi_1d_avm_writedata = bb_jacobi_1d_B8_out_memdep_7_jacobi_1d_avm_writedata;

    // out_memdep_jacobi_1d_avm_address(GPOUT,185)
    assign out_memdep_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_address;

    // out_memdep_jacobi_1d_avm_burstcount(GPOUT,186)
    assign out_memdep_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_burstcount;

    // out_memdep_jacobi_1d_avm_byteenable(GPOUT,187)
    assign out_memdep_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_byteenable;

    // out_memdep_jacobi_1d_avm_enable(GPOUT,188)
    assign out_memdep_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_enable;

    // out_memdep_jacobi_1d_avm_read(GPOUT,189)
    assign out_memdep_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_read;

    // out_memdep_jacobi_1d_avm_write(GPOUT,190)
    assign out_memdep_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_write;

    // out_memdep_jacobi_1d_avm_writedata(GPOUT,191)
    assign out_memdep_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_memdep_jacobi_1d_avm_writedata;

    // out_o_active_memdep_6(GPOUT,192)
    assign out_o_active_memdep_6 = bb_jacobi_1d_B8_out_lsu_memdep_6_o_active;

    // out_o_active_memdep_7(GPOUT,193)
    assign out_o_active_memdep_7 = bb_jacobi_1d_B8_out_lsu_memdep_7_o_active;

    // out_pre_pre1_jacobi_1d_avm_address(GPOUT,194)
    assign out_pre_pre1_jacobi_1d_avm_address = bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_address;

    // out_pre_pre1_jacobi_1d_avm_burstcount(GPOUT,195)
    assign out_pre_pre1_jacobi_1d_avm_burstcount = bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_burstcount;

    // out_pre_pre1_jacobi_1d_avm_byteenable(GPOUT,196)
    assign out_pre_pre1_jacobi_1d_avm_byteenable = bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_byteenable;

    // out_pre_pre1_jacobi_1d_avm_enable(GPOUT,197)
    assign out_pre_pre1_jacobi_1d_avm_enable = bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_enable;

    // out_pre_pre1_jacobi_1d_avm_read(GPOUT,198)
    assign out_pre_pre1_jacobi_1d_avm_read = bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_read;

    // out_pre_pre1_jacobi_1d_avm_write(GPOUT,199)
    assign out_pre_pre1_jacobi_1d_avm_write = bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_write;

    // out_pre_pre1_jacobi_1d_avm_writedata(GPOUT,200)
    assign out_pre_pre1_jacobi_1d_avm_writedata = bb_jacobi_1d_B2_out_pre_pre1_jacobi_1d_avm_writedata;

    // bb_jacobi_1d_B0_runOnce(BLACKBOX,2)
    jacobi_1d_bb_B0_runOnce thebb_jacobi_1d_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_jacobi_1d_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,201)
    assign out_stall_out = bb_jacobi_1d_B0_runOnce_out_stall_out_0;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_address(GPOUT,202)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount(GPOUT,203)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable(GPOUT,204)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_enable(GPOUT,205)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_read(GPOUT,206)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_write(GPOUT,207)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata(GPOUT,208)
    assign out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_unnamed_jacobi_1d10_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_address(GPOUT,209)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount(GPOUT,210)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable(GPOUT,211)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_enable(GPOUT,212)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_read(GPOUT,213)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_write(GPOUT,214)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata(GPOUT,215)
    assign out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_unnamed_jacobi_1d11_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d12_jacobi_1d_avm_address(GPOUT,216)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_address = bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount(GPOUT,217)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable(GPOUT,218)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d12_jacobi_1d_avm_enable(GPOUT,219)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_enable = bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d12_jacobi_1d_avm_read(GPOUT,220)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_read = bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d12_jacobi_1d_avm_write(GPOUT,221)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_write = bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata(GPOUT,222)
    assign out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_out_unnamed_jacobi_1d12_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_address(GPOUT,223)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_address = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount(GPOUT,224)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable(GPOUT,225)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_enable(GPOUT,226)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_enable = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_read(GPOUT,227)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_read = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_write(GPOUT,228)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_write = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata(GPOUT,229)
    assign out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata = bb_jacobi_1d_B5_out_unnamed_jacobi_1d13_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d14_jacobi_1d_avm_address(GPOUT,230)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_address = bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount(GPOUT,231)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount = bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable(GPOUT,232)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable = bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d14_jacobi_1d_avm_enable(GPOUT,233)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_enable = bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d14_jacobi_1d_avm_read(GPOUT,234)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_read = bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d14_jacobi_1d_avm_write(GPOUT,235)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_write = bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata(GPOUT,236)
    assign out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata = bb_jacobi_1d_B8_out_unnamed_jacobi_1d14_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d15_jacobi_1d_avm_address(GPOUT,237)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_address = bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount(GPOUT,238)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount = bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable(GPOUT,239)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable = bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d15_jacobi_1d_avm_enable(GPOUT,240)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_enable = bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d15_jacobi_1d_avm_read(GPOUT,241)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_read = bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d15_jacobi_1d_avm_write(GPOUT,242)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_write = bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata(GPOUT,243)
    assign out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata = bb_jacobi_1d_B8_out_unnamed_jacobi_1d15_jacobi_1d_avm_writedata;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_address(GPOUT,244)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_address = bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_address;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount(GPOUT,245)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount = bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_burstcount;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable(GPOUT,246)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_byteenable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_enable(GPOUT,247)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_enable = bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_enable;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_read(GPOUT,248)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_read = bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_read;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_write(GPOUT,249)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_write = bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_write;

    // out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata(GPOUT,250)
    assign out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata = bb_jacobi_1d_B3_out_unnamed_jacobi_1d9_jacobi_1d_avm_writedata;

    // out_valid_out(GPOUT,251)
    assign out_valid_out = GND_q;

endmodule
