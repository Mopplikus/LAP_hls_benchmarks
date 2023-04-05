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

// SystemVerilog created from matvec_function
// Created for function/kernel matvec
// SystemVerilog created on Wed Apr  5 15:28:29 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module matvec_function (
    input wire [63:0] in_arg_M,
    input wire [63:0] in_arg_Out0,
    input wire [63:0] in_arg_V,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [191:0] in_iord_bl_call_matvec_i_fifodata,
    input wire [0:0] in_iord_bl_call_matvec_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_matvec_i_fifoready,
    input wire [31:0] in_memdep_1_matvec_avm_readdata,
    input wire [0:0] in_memdep_1_matvec_avm_readdatavalid,
    input wire [0:0] in_memdep_1_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_1_matvec_avm_writeack,
    input wire [31:0] in_memdep_2_matvec_avm_readdata,
    input wire [0:0] in_memdep_2_matvec_avm_readdatavalid,
    input wire [0:0] in_memdep_2_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_2_matvec_avm_writeack,
    input wire [31:0] in_memdep_3_matvec_avm_readdata,
    input wire [0:0] in_memdep_3_matvec_avm_readdatavalid,
    input wire [0:0] in_memdep_3_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_3_matvec_avm_writeack,
    input wire [63:0] in_memdep_4_matvec_avm_readdata,
    input wire [0:0] in_memdep_4_matvec_avm_readdatavalid,
    input wire [0:0] in_memdep_4_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_4_matvec_avm_writeack,
    input wire [31:0] in_memdep_matvec_avm_readdata,
    input wire [0:0] in_memdep_matvec_avm_readdatavalid,
    input wire [0:0] in_memdep_matvec_avm_waitrequest,
    input wire [0:0] in_memdep_matvec_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_matvec10_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec10_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec10_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec10_matvec_avm_writeack,
    input wire [31:0] in_unnamed_matvec11_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec11_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec11_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec11_matvec_avm_writeack,
    input wire [63:0] in_unnamed_matvec6_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec6_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec6_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec6_matvec_avm_writeack,
    input wire [63:0] in_unnamed_matvec7_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec7_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec7_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec7_matvec_avm_writeack,
    input wire [63:0] in_unnamed_matvec8_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec8_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec8_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec8_matvec_avm_writeack,
    input wire [31:0] in_unnamed_matvec9_matvec_avm_readdata,
    input wire [0:0] in_unnamed_matvec9_matvec_avm_readdatavalid,
    input wire [0:0] in_unnamed_matvec9_matvec_avm_waitrequest,
    input wire [0:0] in_unnamed_matvec9_matvec_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_matvec_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_matvec_o_fifoready,
    output wire [0:0] out_iowr_bl_return_matvec_o_fifodata,
    output wire [0:0] out_iowr_bl_return_matvec_o_fifovalid,
    output wire [31:0] out_memdep_1_matvec_avm_address,
    output wire [0:0] out_memdep_1_matvec_avm_burstcount,
    output wire [3:0] out_memdep_1_matvec_avm_byteenable,
    output wire [0:0] out_memdep_1_matvec_avm_enable,
    output wire [0:0] out_memdep_1_matvec_avm_read,
    output wire [0:0] out_memdep_1_matvec_avm_write,
    output wire [31:0] out_memdep_1_matvec_avm_writedata,
    output wire [31:0] out_memdep_2_matvec_avm_address,
    output wire [0:0] out_memdep_2_matvec_avm_burstcount,
    output wire [3:0] out_memdep_2_matvec_avm_byteenable,
    output wire [0:0] out_memdep_2_matvec_avm_enable,
    output wire [0:0] out_memdep_2_matvec_avm_read,
    output wire [0:0] out_memdep_2_matvec_avm_write,
    output wire [31:0] out_memdep_2_matvec_avm_writedata,
    output wire [31:0] out_memdep_3_matvec_avm_address,
    output wire [0:0] out_memdep_3_matvec_avm_burstcount,
    output wire [3:0] out_memdep_3_matvec_avm_byteenable,
    output wire [0:0] out_memdep_3_matvec_avm_enable,
    output wire [0:0] out_memdep_3_matvec_avm_read,
    output wire [0:0] out_memdep_3_matvec_avm_write,
    output wire [31:0] out_memdep_3_matvec_avm_writedata,
    output wire [63:0] out_memdep_4_matvec_avm_address,
    output wire [0:0] out_memdep_4_matvec_avm_burstcount,
    output wire [7:0] out_memdep_4_matvec_avm_byteenable,
    output wire [0:0] out_memdep_4_matvec_avm_enable,
    output wire [0:0] out_memdep_4_matvec_avm_read,
    output wire [0:0] out_memdep_4_matvec_avm_write,
    output wire [63:0] out_memdep_4_matvec_avm_writedata,
    output wire [31:0] out_memdep_matvec_avm_address,
    output wire [0:0] out_memdep_matvec_avm_burstcount,
    output wire [3:0] out_memdep_matvec_avm_byteenable,
    output wire [0:0] out_memdep_matvec_avm_enable,
    output wire [0:0] out_memdep_matvec_avm_read,
    output wire [0:0] out_memdep_matvec_avm_write,
    output wire [31:0] out_memdep_matvec_avm_writedata,
    output wire [0:0] out_o_active_memdep_4,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_matvec10_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec10_matvec_avm_burstcount,
    output wire [3:0] out_unnamed_matvec10_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec10_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec10_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec10_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec10_matvec_avm_writedata,
    output wire [31:0] out_unnamed_matvec11_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec11_matvec_avm_burstcount,
    output wire [3:0] out_unnamed_matvec11_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec11_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec11_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec11_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec11_matvec_avm_writedata,
    output wire [63:0] out_unnamed_matvec6_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec6_matvec_avm_burstcount,
    output wire [7:0] out_unnamed_matvec6_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec6_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec6_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec6_matvec_avm_write,
    output wire [63:0] out_unnamed_matvec6_matvec_avm_writedata,
    output wire [63:0] out_unnamed_matvec7_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_burstcount,
    output wire [7:0] out_unnamed_matvec7_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec7_matvec_avm_write,
    output wire [63:0] out_unnamed_matvec7_matvec_avm_writedata,
    output wire [63:0] out_unnamed_matvec8_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_burstcount,
    output wire [7:0] out_unnamed_matvec8_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec8_matvec_avm_write,
    output wire [63:0] out_unnamed_matvec8_matvec_avm_writedata,
    output wire [31:0] out_unnamed_matvec9_matvec_avm_address,
    output wire [0:0] out_unnamed_matvec9_matvec_avm_burstcount,
    output wire [3:0] out_unnamed_matvec9_matvec_avm_byteenable,
    output wire [0:0] out_unnamed_matvec9_matvec_avm_enable,
    output wire [0:0] out_unnamed_matvec9_matvec_avm_read,
    output wire [0:0] out_unnamed_matvec9_matvec_avm_write,
    output wire [31:0] out_unnamed_matvec9_matvec_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_matvec_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_matvec_B10_out_exiting_stall_out;
    wire [0:0] bb_matvec_B10_out_exiting_valid_out;
    wire [0:0] bb_matvec_B10_out_lsu_memdep_4_o_active;
    wire [63:0] bb_matvec_B10_out_memdep_4_matvec_avm_address;
    wire [0:0] bb_matvec_B10_out_memdep_4_matvec_avm_burstcount;
    wire [7:0] bb_matvec_B10_out_memdep_4_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B10_out_memdep_4_matvec_avm_enable;
    wire [0:0] bb_matvec_B10_out_memdep_4_matvec_avm_read;
    wire [0:0] bb_matvec_B10_out_memdep_4_matvec_avm_write;
    wire [63:0] bb_matvec_B10_out_memdep_4_matvec_avm_writedata;
    wire [0:0] bb_matvec_B10_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B10_out_stall_in_0;
    wire [0:0] bb_matvec_B10_out_stall_out_0;
    wire [0:0] bb_matvec_B10_out_stall_out_1;
    wire [31:0] bb_matvec_B10_out_unnamed_matvec11_matvec_avm_address;
    wire [0:0] bb_matvec_B10_out_unnamed_matvec11_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B10_out_unnamed_matvec11_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B10_out_unnamed_matvec11_matvec_avm_enable;
    wire [0:0] bb_matvec_B10_out_unnamed_matvec11_matvec_avm_read;
    wire [0:0] bb_matvec_B10_out_unnamed_matvec11_matvec_avm_write;
    wire [31:0] bb_matvec_B10_out_unnamed_matvec11_matvec_avm_writedata;
    wire [0:0] bb_matvec_B10_out_valid_in_0;
    wire [0:0] bb_matvec_B10_out_valid_in_1;
    wire [0:0] bb_matvec_B10_out_valid_out_0;
    wire [0:0] bb_matvec_B11_out_feedback_out_1;
    wire [0:0] bb_matvec_B11_out_feedback_valid_out_1;
    wire [0:0] bb_matvec_B11_out_iowr_bl_return_matvec_o_fifodata;
    wire [0:0] bb_matvec_B11_out_iowr_bl_return_matvec_o_fifovalid;
    wire [0:0] bb_matvec_B11_out_stall_in_0;
    wire [0:0] bb_matvec_B11_out_stall_out_0;
    wire [0:0] bb_matvec_B11_out_valid_out_0;
    wire [0:0] bb_matvec_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_matvec_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_matvec_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_matvec_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoalmost_full;
    wire [0:0] bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoready;
    wire [0:0] bb_matvec_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B1_start_out_stall_out_0;
    wire [0:0] bb_matvec_B1_start_out_valid_in_0;
    wire [0:0] bb_matvec_B1_start_out_valid_in_1;
    wire [0:0] bb_matvec_B1_start_out_valid_out_0;
    wire [0:0] bb_matvec_B2_out_c0_exe2;
    wire [31:0] bb_matvec_B2_out_c0_exe3;
    wire [0:0] bb_matvec_B2_out_exiting_stall_out;
    wire [0:0] bb_matvec_B2_out_exiting_valid_out;
    wire [0:0] bb_matvec_B2_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B2_out_stall_out_0;
    wire [0:0] bb_matvec_B2_out_stall_out_1;
    wire [0:0] bb_matvec_B2_out_valid_in_0;
    wire [0:0] bb_matvec_B2_out_valid_in_1;
    wire [0:0] bb_matvec_B2_out_valid_out_0;
    wire [63:0] bb_matvec_B3_out_c0_exe395;
    wire [0:0] bb_matvec_B3_out_c0_exe7;
    wire [0:0] bb_matvec_B3_out_exiting_stall_out;
    wire [0:0] bb_matvec_B3_out_exiting_valid_out;
    wire [31:0] bb_matvec_B3_out_memdep_matvec_avm_address;
    wire [0:0] bb_matvec_B3_out_memdep_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B3_out_memdep_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B3_out_memdep_matvec_avm_enable;
    wire [0:0] bb_matvec_B3_out_memdep_matvec_avm_read;
    wire [0:0] bb_matvec_B3_out_memdep_matvec_avm_write;
    wire [31:0] bb_matvec_B3_out_memdep_matvec_avm_writedata;
    wire [0:0] bb_matvec_B3_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B3_out_stall_in_0;
    wire [0:0] bb_matvec_B3_out_stall_out_0;
    wire [0:0] bb_matvec_B3_out_stall_out_1;
    wire [63:0] bb_matvec_B3_out_unnamed_matvec6_matvec_avm_address;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec6_matvec_avm_burstcount;
    wire [7:0] bb_matvec_B3_out_unnamed_matvec6_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec6_matvec_avm_enable;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec6_matvec_avm_read;
    wire [0:0] bb_matvec_B3_out_unnamed_matvec6_matvec_avm_write;
    wire [63:0] bb_matvec_B3_out_unnamed_matvec6_matvec_avm_writedata;
    wire [0:0] bb_matvec_B3_out_valid_in_0;
    wire [0:0] bb_matvec_B3_out_valid_in_1;
    wire [0:0] bb_matvec_B3_out_valid_out_0;
    wire [31:0] bb_matvec_B4_out_memdep_1_matvec_avm_address;
    wire [0:0] bb_matvec_B4_out_memdep_1_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B4_out_memdep_1_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B4_out_memdep_1_matvec_avm_enable;
    wire [0:0] bb_matvec_B4_out_memdep_1_matvec_avm_read;
    wire [0:0] bb_matvec_B4_out_memdep_1_matvec_avm_write;
    wire [31:0] bb_matvec_B4_out_memdep_1_matvec_avm_writedata;
    wire [31:0] bb_matvec_B4_out_memdep_2_matvec_avm_address;
    wire [0:0] bb_matvec_B4_out_memdep_2_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B4_out_memdep_2_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B4_out_memdep_2_matvec_avm_enable;
    wire [0:0] bb_matvec_B4_out_memdep_2_matvec_avm_read;
    wire [0:0] bb_matvec_B4_out_memdep_2_matvec_avm_write;
    wire [31:0] bb_matvec_B4_out_memdep_2_matvec_avm_writedata;
    wire [0:0] bb_matvec_B4_out_stall_in_0;
    wire [0:0] bb_matvec_B4_out_stall_out_0;
    wire [63:0] bb_matvec_B4_out_unnamed_matvec7_matvec_avm_address;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec7_matvec_avm_burstcount;
    wire [7:0] bb_matvec_B4_out_unnamed_matvec7_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec7_matvec_avm_enable;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec7_matvec_avm_read;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec7_matvec_avm_write;
    wire [63:0] bb_matvec_B4_out_unnamed_matvec7_matvec_avm_writedata;
    wire [63:0] bb_matvec_B4_out_unnamed_matvec8_matvec_avm_address;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec8_matvec_avm_burstcount;
    wire [7:0] bb_matvec_B4_out_unnamed_matvec8_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec8_matvec_avm_enable;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec8_matvec_avm_read;
    wire [0:0] bb_matvec_B4_out_unnamed_matvec8_matvec_avm_write;
    wire [63:0] bb_matvec_B4_out_unnamed_matvec8_matvec_avm_writedata;
    wire [0:0] bb_matvec_B4_out_valid_out_0;
    wire [0:0] bb_matvec_B5_out_stall_out_0;
    wire [0:0] bb_matvec_B5_out_valid_out_0;
    wire [0:0] bb_matvec_B6_out_c0_exe2104;
    wire [31:0] bb_matvec_B6_out_c0_exe3105;
    wire [0:0] bb_matvec_B6_out_exiting_stall_out;
    wire [0:0] bb_matvec_B6_out_exiting_valid_out;
    wire [0:0] bb_matvec_B6_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B6_out_stall_out_0;
    wire [0:0] bb_matvec_B6_out_stall_out_1;
    wire [0:0] bb_matvec_B6_out_valid_in_0;
    wire [0:0] bb_matvec_B6_out_valid_in_1;
    wire [0:0] bb_matvec_B6_out_valid_out_0;
    wire [63:0] bb_matvec_B7_out_c0_exe2120;
    wire [31:0] bb_matvec_B7_out_c0_exe3121;
    wire [0:0] bb_matvec_B7_out_c0_exe5123;
    wire [0:0] bb_matvec_B7_out_exiting_stall_out;
    wire [0:0] bb_matvec_B7_out_exiting_valid_out;
    wire [0:0] bb_matvec_B7_out_pipeline_valid_out;
    wire [0:0] bb_matvec_B7_out_stall_in_0;
    wire [0:0] bb_matvec_B7_out_stall_out_0;
    wire [0:0] bb_matvec_B7_out_stall_out_1;
    wire [31:0] bb_matvec_B7_out_unnamed_matvec10_matvec_avm_address;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec10_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B7_out_unnamed_matvec10_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec10_matvec_avm_enable;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec10_matvec_avm_read;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec10_matvec_avm_write;
    wire [31:0] bb_matvec_B7_out_unnamed_matvec10_matvec_avm_writedata;
    wire [31:0] bb_matvec_B7_out_unnamed_matvec9_matvec_avm_address;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec9_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B7_out_unnamed_matvec9_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec9_matvec_avm_enable;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec9_matvec_avm_read;
    wire [0:0] bb_matvec_B7_out_unnamed_matvec9_matvec_avm_write;
    wire [31:0] bb_matvec_B7_out_unnamed_matvec9_matvec_avm_writedata;
    wire [0:0] bb_matvec_B7_out_valid_in_0;
    wire [0:0] bb_matvec_B7_out_valid_in_1;
    wire [0:0] bb_matvec_B7_out_valid_out_0;
    wire [31:0] bb_matvec_B8_out_memdep_3_matvec_avm_address;
    wire [0:0] bb_matvec_B8_out_memdep_3_matvec_avm_burstcount;
    wire [3:0] bb_matvec_B8_out_memdep_3_matvec_avm_byteenable;
    wire [0:0] bb_matvec_B8_out_memdep_3_matvec_avm_enable;
    wire [0:0] bb_matvec_B8_out_memdep_3_matvec_avm_read;
    wire [0:0] bb_matvec_B8_out_memdep_3_matvec_avm_write;
    wire [31:0] bb_matvec_B8_out_memdep_3_matvec_avm_writedata;
    wire [0:0] bb_matvec_B8_out_stall_in_0;
    wire [0:0] bb_matvec_B8_out_stall_out_0;
    wire [0:0] bb_matvec_B8_out_valid_out_0;
    wire [0:0] bb_matvec_B9_out_stall_out_0;
    wire [0:0] bb_matvec_B9_out_valid_out_0;
    wire [1:0] c_i2_040_q;
    wire [31:0] c_i32_undef15_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_matvec6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_matvec6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_matvec2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_matvec2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_matvec1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_matvec1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_matvec0_out_o_stall;
    wire [0:0] loop_limiter_matvec0_out_o_valid;
    wire [0:0] loop_limiter_matvec1_out_o_stall;
    wire [0:0] loop_limiter_matvec1_out_o_valid;
    wire [0:0] loop_limiter_matvec2_out_o_stall;
    wire [0:0] loop_limiter_matvec2_out_o_valid;
    wire [0:0] loop_limiter_matvec3_out_o_stall;
    wire [0:0] loop_limiter_matvec3_out_o_valid;
    wire [0:0] loop_limiter_matvec4_out_o_stall;
    wire [0:0] loop_limiter_matvec4_out_o_valid;
    wire [0:0] matvec_B1_start_x_i_capture;
    wire matvec_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_clear;
    wire matvec_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_enable;
    wire matvec_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_shift;
    wire matvec_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_stall_pred;
    wire matvec_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_stall_succ;
    wire matvec_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_valid_loop;
    wire matvec_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_valid_pred;
    wire matvec_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B1_start_x_i_valid_succ;
    wire matvec_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_capture;
    wire matvec_B10_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_clear;
    wire matvec_B10_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_enable;
    wire matvec_B10_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_shift;
    wire matvec_B10_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_stall_pred;
    wire matvec_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_stall_succ;
    wire matvec_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_valid_loop;
    wire matvec_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_valid_pred;
    wire matvec_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B10_x_i_valid_succ;
    wire matvec_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_capture;
    wire matvec_B2_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_clear;
    wire matvec_B2_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_enable;
    wire matvec_B2_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_shift;
    wire matvec_B2_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_stall_pred;
    wire matvec_B2_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_stall_succ;
    wire matvec_B2_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_valid_loop;
    wire matvec_B2_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_valid_pred;
    wire matvec_B2_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B2_x_i_valid_succ;
    wire matvec_B2_x_i_valid_succ_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_capture;
    wire matvec_B3_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_clear;
    wire matvec_B3_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_enable;
    wire matvec_B3_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_shift;
    wire matvec_B3_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_stall_pred;
    wire matvec_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_stall_succ;
    wire matvec_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_valid_loop;
    wire matvec_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_valid_pred;
    wire matvec_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B3_x_i_valid_succ;
    wire matvec_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_capture;
    wire matvec_B6_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_clear;
    wire matvec_B6_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_enable;
    wire matvec_B6_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_shift;
    wire matvec_B6_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_stall_pred;
    wire matvec_B6_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_stall_succ;
    wire matvec_B6_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_valid_loop;
    wire matvec_B6_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_valid_pred;
    wire matvec_B6_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B6_x_i_valid_succ;
    wire matvec_B6_x_i_valid_succ_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_capture;
    wire matvec_B7_x_i_capture_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_clear;
    wire matvec_B7_x_i_clear_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_enable;
    wire matvec_B7_x_i_enable_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_shift;
    wire matvec_B7_x_i_shift_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_stall_pred;
    wire matvec_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_stall_succ;
    wire matvec_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_valid_loop;
    wire matvec_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_valid_pred;
    wire matvec_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] matvec_B7_x_i_valid_succ;
    wire matvec_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_matvec_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B2_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B2_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B2_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_matvec_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_matvec_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_matvec_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_matvec_B5_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B5_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B6_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B6_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B6_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_matvec_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_matvec_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_matvec_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_matvec_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B8_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_matvec_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_matvec_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_matvec_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_matvec_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_matvec_B9_sr_0_aunroll_x_out_o_valid;


    // c_i2_040(CONSTANT,54)
    assign c_i2_040_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo(BLACKBOX,72)
    matvec_i_llvm_fpga_pipeline_keep_going64_1_valid_fifo thei_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo (
        .in_data_in(c_i2_040_q),
        .in_stall_in(bb_matvec_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going64_matvec1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo(BLACKBOX,70)
    matvec_i_llvm_fpga_pipeline_keep_going60_2_valid_fifo thei_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo (
        .in_data_in(c_i2_040_q),
        .in_stall_in(bb_matvec_B2_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going60_matvec2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo(BLACKBOX,68)
    matvec_i_llvm_fpga_pipeline_keep_going46_6_valid_fifo thei_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo (
        .in_data_in(c_i2_040_q),
        .in_stall_in(bb_matvec_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going46_matvec6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo(BLACKBOX,66)
    matvec_i_llvm_fpga_pipeline_keep_going39_2_valid_fifo thei_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo (
        .in_data_in(c_i2_040_q),
        .in_stall_in(bb_matvec_B6_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going39_matvec2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo(BLACKBOX,64)
    matvec_i_llvm_fpga_pipeline_keep_going25_6_valid_fifo thei_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo (
        .in_data_in(c_i2_040_q),
        .in_stall_in(bb_matvec_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going25_matvec6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo(BLACKBOX,74)
    matvec_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo (
        .in_data_in(c_i2_040_q),
        .in_stall_in(bb_matvec_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B11_sr_0_aunroll_x(BLACKBOX,226)
    matvec_bb_B11_sr_0 thebb_matvec_B11_sr_0_aunroll_x (
        .in_i_stall(bb_matvec_B11_out_stall_out_0),
        .in_i_valid(bb_matvec_B10_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_matvec_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_matvec6_sr(BLACKBOX,73)
    matvec_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_matvec6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B10(BLACKBOX,3)
    matvec_bb_B10 thebb_matvec_B10 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_matvec_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_matvec_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_4_matvec_avm_readdata(in_memdep_4_matvec_avm_readdata),
        .in_memdep_4_matvec_avm_readdatavalid(in_memdep_4_matvec_avm_readdatavalid),
        .in_memdep_4_matvec_avm_waitrequest(in_memdep_4_matvec_avm_waitrequest),
        .in_memdep_4_matvec_avm_writeack(in_memdep_4_matvec_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_matvec6_sr_out_o_stall),
        .in_stall_in_0(bb_matvec_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_matvec11_matvec_avm_readdata(in_unnamed_matvec11_matvec_avm_readdata),
        .in_unnamed_matvec11_matvec_avm_readdatavalid(in_unnamed_matvec11_matvec_avm_readdatavalid),
        .in_unnamed_matvec11_matvec_avm_waitrequest(in_unnamed_matvec11_matvec_avm_waitrequest),
        .in_unnamed_matvec11_matvec_avm_writeack(in_unnamed_matvec11_matvec_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_matvec6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_matvec_B10_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_matvec_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_matvec_B10_out_exiting_valid_out),
        .out_lsu_memdep_4_o_active(bb_matvec_B10_out_lsu_memdep_4_o_active),
        .out_memdep_4_matvec_avm_address(bb_matvec_B10_out_memdep_4_matvec_avm_address),
        .out_memdep_4_matvec_avm_burstcount(bb_matvec_B10_out_memdep_4_matvec_avm_burstcount),
        .out_memdep_4_matvec_avm_byteenable(bb_matvec_B10_out_memdep_4_matvec_avm_byteenable),
        .out_memdep_4_matvec_avm_enable(bb_matvec_B10_out_memdep_4_matvec_avm_enable),
        .out_memdep_4_matvec_avm_read(bb_matvec_B10_out_memdep_4_matvec_avm_read),
        .out_memdep_4_matvec_avm_write(bb_matvec_B10_out_memdep_4_matvec_avm_write),
        .out_memdep_4_matvec_avm_writedata(bb_matvec_B10_out_memdep_4_matvec_avm_writedata),
        .out_pipeline_valid_out(bb_matvec_B10_out_pipeline_valid_out),
        .out_stall_in_0(bb_matvec_B10_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B10_out_stall_out_0),
        .out_stall_out_1(bb_matvec_B10_out_stall_out_1),
        .out_unnamed_matvec11_matvec_avm_address(bb_matvec_B10_out_unnamed_matvec11_matvec_avm_address),
        .out_unnamed_matvec11_matvec_avm_burstcount(bb_matvec_B10_out_unnamed_matvec11_matvec_avm_burstcount),
        .out_unnamed_matvec11_matvec_avm_byteenable(bb_matvec_B10_out_unnamed_matvec11_matvec_avm_byteenable),
        .out_unnamed_matvec11_matvec_avm_enable(bb_matvec_B10_out_unnamed_matvec11_matvec_avm_enable),
        .out_unnamed_matvec11_matvec_avm_read(bb_matvec_B10_out_unnamed_matvec11_matvec_avm_read),
        .out_unnamed_matvec11_matvec_avm_write(bb_matvec_B10_out_unnamed_matvec11_matvec_avm_write),
        .out_unnamed_matvec11_matvec_avm_writedata(bb_matvec_B10_out_unnamed_matvec11_matvec_avm_writedata),
        .out_valid_in_0(bb_matvec_B10_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B10_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B10_sr_1_aunroll_x(BLACKBOX,225)
    matvec_bb_B10_sr_1 thebb_matvec_B10_sr_1_aunroll_x (
        .in_i_stall(bb_matvec_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_matvec2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_matvec_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_matvec2(BLACKBOX,132)
    matvec_loop_limiter_2 theloop_limiter_matvec2 (
        .in_i_stall(bb_matvec_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_matvec_B10_out_exiting_stall_out),
        .in_i_valid(bb_matvec_B9_out_valid_out_0),
        .in_i_valid_exit(bb_matvec_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_matvec2_out_o_stall),
        .out_o_valid(loop_limiter_matvec2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B9(BLACKBOX,13)
    matvec_bb_B9 thebb_matvec_B9 (
        .in_stall_in_0(loop_limiter_matvec2_out_o_stall),
        .in_valid_in_0(bb_matvec_B9_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_matvec_B9_out_stall_out_0),
        .out_valid_out_0(bb_matvec_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B9_sr_0_aunroll_x(BLACKBOX,234)
    matvec_bb_B9_sr_0 thebb_matvec_B9_sr_0_aunroll_x (
        .in_i_stall(bb_matvec_B9_out_stall_out_0),
        .in_i_valid(bb_matvec_B8_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_matvec_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B9_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B8(BLACKBOX,12)
    matvec_bb_B8 thebb_matvec_B8 (
        .in_c0_exe21203_0(bb_matvec_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31214_0(bb_matvec_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51235_0(bb_matvec_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_memdep_3_matvec_avm_readdata(in_memdep_3_matvec_avm_readdata),
        .in_memdep_3_matvec_avm_readdatavalid(in_memdep_3_matvec_avm_readdatavalid),
        .in_memdep_3_matvec_avm_waitrequest(in_memdep_3_matvec_avm_waitrequest),
        .in_memdep_3_matvec_avm_writeack(in_memdep_3_matvec_avm_writeack),
        .in_stall_in_0(bb_matvec_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_matvec_B8_sr_0_aunroll_x_out_o_valid),
        .out_memdep_3_matvec_avm_address(bb_matvec_B8_out_memdep_3_matvec_avm_address),
        .out_memdep_3_matvec_avm_burstcount(bb_matvec_B8_out_memdep_3_matvec_avm_burstcount),
        .out_memdep_3_matvec_avm_byteenable(bb_matvec_B8_out_memdep_3_matvec_avm_byteenable),
        .out_memdep_3_matvec_avm_enable(bb_matvec_B8_out_memdep_3_matvec_avm_enable),
        .out_memdep_3_matvec_avm_read(bb_matvec_B8_out_memdep_3_matvec_avm_read),
        .out_memdep_3_matvec_avm_write(bb_matvec_B8_out_memdep_3_matvec_avm_write),
        .out_memdep_3_matvec_avm_writedata(bb_matvec_B8_out_memdep_3_matvec_avm_writedata),
        .out_stall_in_0(bb_matvec_B8_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B8_out_stall_out_0),
        .out_valid_out_0(bb_matvec_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B8_sr_0_aunroll_x(BLACKBOX,233)
    matvec_bb_B8_sr_0 thebb_matvec_B8_sr_0_aunroll_x (
        .in_i_stall(bb_matvec_B8_out_stall_out_0),
        .in_i_valid(bb_matvec_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_matvec_B7_out_c0_exe2120),
        .in_i_data_1_tpl(bb_matvec_B7_out_c0_exe3121),
        .in_i_data_2_tpl(bb_matvec_B7_out_c0_exe5123),
        .out_o_stall(bb_matvec_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_matvec_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_matvec_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going25_matvec6_sr(BLACKBOX,63)
    matvec_i_llvm_fpga_pipeline_keep_going25_6_sr thei_llvm_fpga_pipeline_keep_going25_matvec6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going25_matvec6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going25_matvec6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B7(BLACKBOX,11)
    matvec_bb_B7 thebb_matvec_B7 (
        .in_flush(in_start),
        .in_forked22_0(GND_q),
        .in_forked22_1(bb_matvec_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_131_pop1778_0(c_i32_undef15_q),
        .in_i_131_pop1778_1(bb_matvec_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp3777_0(GND_q),
        .in_notcmp3777_1(bb_matvec_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going25_matvec6_sr_out_o_stall),
        .in_stall_in_0(bb_matvec_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_matvec10_matvec_avm_readdata(in_unnamed_matvec10_matvec_avm_readdata),
        .in_unnamed_matvec10_matvec_avm_readdatavalid(in_unnamed_matvec10_matvec_avm_readdatavalid),
        .in_unnamed_matvec10_matvec_avm_waitrequest(in_unnamed_matvec10_matvec_avm_waitrequest),
        .in_unnamed_matvec10_matvec_avm_writeack(in_unnamed_matvec10_matvec_avm_writeack),
        .in_unnamed_matvec9_matvec_avm_readdata(in_unnamed_matvec9_matvec_avm_readdata),
        .in_unnamed_matvec9_matvec_avm_readdatavalid(in_unnamed_matvec9_matvec_avm_readdatavalid),
        .in_unnamed_matvec9_matvec_avm_waitrequest(in_unnamed_matvec9_matvec_avm_waitrequest),
        .in_unnamed_matvec9_matvec_avm_writeack(in_unnamed_matvec9_matvec_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going25_matvec6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_matvec_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2120(bb_matvec_B7_out_c0_exe2120),
        .out_c0_exe3121(bb_matvec_B7_out_c0_exe3121),
        .out_c0_exe5123(bb_matvec_B7_out_c0_exe5123),
        .out_exiting_stall_out(bb_matvec_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_matvec_B7_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_matvec_B7_out_pipeline_valid_out),
        .out_stall_in_0(bb_matvec_B7_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B7_out_stall_out_0),
        .out_stall_out_1(bb_matvec_B7_out_stall_out_1),
        .out_unnamed_matvec10_matvec_avm_address(bb_matvec_B7_out_unnamed_matvec10_matvec_avm_address),
        .out_unnamed_matvec10_matvec_avm_burstcount(bb_matvec_B7_out_unnamed_matvec10_matvec_avm_burstcount),
        .out_unnamed_matvec10_matvec_avm_byteenable(bb_matvec_B7_out_unnamed_matvec10_matvec_avm_byteenable),
        .out_unnamed_matvec10_matvec_avm_enable(bb_matvec_B7_out_unnamed_matvec10_matvec_avm_enable),
        .out_unnamed_matvec10_matvec_avm_read(bb_matvec_B7_out_unnamed_matvec10_matvec_avm_read),
        .out_unnamed_matvec10_matvec_avm_write(bb_matvec_B7_out_unnamed_matvec10_matvec_avm_write),
        .out_unnamed_matvec10_matvec_avm_writedata(bb_matvec_B7_out_unnamed_matvec10_matvec_avm_writedata),
        .out_unnamed_matvec9_matvec_avm_address(bb_matvec_B7_out_unnamed_matvec9_matvec_avm_address),
        .out_unnamed_matvec9_matvec_avm_burstcount(bb_matvec_B7_out_unnamed_matvec9_matvec_avm_burstcount),
        .out_unnamed_matvec9_matvec_avm_byteenable(bb_matvec_B7_out_unnamed_matvec9_matvec_avm_byteenable),
        .out_unnamed_matvec9_matvec_avm_enable(bb_matvec_B7_out_unnamed_matvec9_matvec_avm_enable),
        .out_unnamed_matvec9_matvec_avm_read(bb_matvec_B7_out_unnamed_matvec9_matvec_avm_read),
        .out_unnamed_matvec9_matvec_avm_write(bb_matvec_B7_out_unnamed_matvec9_matvec_avm_write),
        .out_unnamed_matvec9_matvec_avm_writedata(bb_matvec_B7_out_unnamed_matvec9_matvec_avm_writedata),
        .out_valid_in_0(bb_matvec_B7_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B7_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B7_sr_1_aunroll_x(BLACKBOX,232)
    matvec_bb_B7_sr_1 thebb_matvec_B7_sr_1_aunroll_x (
        .in_i_stall(bb_matvec_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_matvec4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_matvec_B6_out_c0_exe2104),
        .in_i_data_2_tpl(bb_matvec_B6_out_c0_exe3105),
        .out_o_stall(bb_matvec_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_matvec_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_matvec_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_matvec4(BLACKBOX,134)
    matvec_loop_limiter_4 theloop_limiter_matvec4 (
        .in_i_stall(bb_matvec_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_matvec_B7_out_exiting_stall_out),
        .in_i_valid(bb_matvec_B6_out_valid_out_0),
        .in_i_valid_exit(bb_matvec_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_matvec4_out_o_stall),
        .out_o_valid(loop_limiter_matvec4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going39_matvec2_sr(BLACKBOX,65)
    matvec_i_llvm_fpga_pipeline_keep_going39_2_sr thei_llvm_fpga_pipeline_keep_going39_matvec2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B6_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going39_matvec2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going39_matvec2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B6(BLACKBOX,10)
    matvec_bb_B6 thebb_matvec_B6 (
        .in_forked68_0(GND_q),
        .in_forked68_1(bb_matvec_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going39_matvec2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_matvec4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going39_matvec2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_matvec_B6_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2104(bb_matvec_B6_out_c0_exe2104),
        .out_c0_exe3105(bb_matvec_B6_out_c0_exe3105),
        .out_exiting_stall_out(bb_matvec_B6_out_exiting_stall_out),
        .out_exiting_valid_out(bb_matvec_B6_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_matvec_B6_out_pipeline_valid_out),
        .out_stall_out_0(bb_matvec_B6_out_stall_out_0),
        .out_stall_out_1(bb_matvec_B6_out_stall_out_1),
        .out_valid_in_0(bb_matvec_B6_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B6_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B6_sr_1_aunroll_x(BLACKBOX,231)
    matvec_bb_B6_sr_1 thebb_matvec_B6_sr_1_aunroll_x (
        .in_i_stall(bb_matvec_B6_out_stall_out_1),
        .in_i_valid(loop_limiter_matvec1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_matvec_B6_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B6_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B6_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_matvec1(BLACKBOX,131)
    matvec_loop_limiter_1 theloop_limiter_matvec1 (
        .in_i_stall(bb_matvec_B6_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_matvec_B6_out_exiting_stall_out),
        .in_i_valid(bb_matvec_B5_out_valid_out_0),
        .in_i_valid_exit(bb_matvec_B6_out_exiting_valid_out),
        .out_o_stall(loop_limiter_matvec1_out_o_stall),
        .out_o_valid(loop_limiter_matvec1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B5(BLACKBOX,9)
    matvec_bb_B5 thebb_matvec_B5 (
        .in_stall_in_0(loop_limiter_matvec1_out_o_stall),
        .in_valid_in_0(bb_matvec_B5_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_matvec_B5_out_stall_out_0),
        .out_valid_out_0(bb_matvec_B5_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B5_sr_0_aunroll_x(BLACKBOX,230)
    matvec_bb_B5_sr_0 thebb_matvec_B5_sr_0_aunroll_x (
        .in_i_stall(bb_matvec_B5_out_stall_out_0),
        .in_i_valid(bb_matvec_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_matvec_B5_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B5_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B4(BLACKBOX,8)
    matvec_bb_B4 thebb_matvec_B4 (
        .in_c0_exe3951_0(bb_matvec_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe72_0(bb_matvec_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_1_0(bb_matvec_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_matvec_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_1_matvec_avm_readdata(in_memdep_1_matvec_avm_readdata),
        .in_memdep_1_matvec_avm_readdatavalid(in_memdep_1_matvec_avm_readdatavalid),
        .in_memdep_1_matvec_avm_waitrequest(in_memdep_1_matvec_avm_waitrequest),
        .in_memdep_1_matvec_avm_writeack(in_memdep_1_matvec_avm_writeack),
        .in_memdep_2_matvec_avm_readdata(in_memdep_2_matvec_avm_readdata),
        .in_memdep_2_matvec_avm_readdatavalid(in_memdep_2_matvec_avm_readdatavalid),
        .in_memdep_2_matvec_avm_waitrequest(in_memdep_2_matvec_avm_waitrequest),
        .in_memdep_2_matvec_avm_writeack(in_memdep_2_matvec_avm_writeack),
        .in_stall_in_0(bb_matvec_B5_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_matvec7_matvec_avm_readdata(in_unnamed_matvec7_matvec_avm_readdata),
        .in_unnamed_matvec7_matvec_avm_readdatavalid(in_unnamed_matvec7_matvec_avm_readdatavalid),
        .in_unnamed_matvec7_matvec_avm_waitrequest(in_unnamed_matvec7_matvec_avm_waitrequest),
        .in_unnamed_matvec7_matvec_avm_writeack(in_unnamed_matvec7_matvec_avm_writeack),
        .in_unnamed_matvec8_matvec_avm_readdata(in_unnamed_matvec8_matvec_avm_readdata),
        .in_unnamed_matvec8_matvec_avm_readdatavalid(in_unnamed_matvec8_matvec_avm_readdatavalid),
        .in_unnamed_matvec8_matvec_avm_waitrequest(in_unnamed_matvec8_matvec_avm_waitrequest),
        .in_unnamed_matvec8_matvec_avm_writeack(in_unnamed_matvec8_matvec_avm_writeack),
        .in_valid_in_0(bb_matvec_B4_sr_0_aunroll_x_out_o_valid),
        .out_memdep_1_matvec_avm_address(bb_matvec_B4_out_memdep_1_matvec_avm_address),
        .out_memdep_1_matvec_avm_burstcount(bb_matvec_B4_out_memdep_1_matvec_avm_burstcount),
        .out_memdep_1_matvec_avm_byteenable(bb_matvec_B4_out_memdep_1_matvec_avm_byteenable),
        .out_memdep_1_matvec_avm_enable(bb_matvec_B4_out_memdep_1_matvec_avm_enable),
        .out_memdep_1_matvec_avm_read(bb_matvec_B4_out_memdep_1_matvec_avm_read),
        .out_memdep_1_matvec_avm_write(bb_matvec_B4_out_memdep_1_matvec_avm_write),
        .out_memdep_1_matvec_avm_writedata(bb_matvec_B4_out_memdep_1_matvec_avm_writedata),
        .out_memdep_2_matvec_avm_address(bb_matvec_B4_out_memdep_2_matvec_avm_address),
        .out_memdep_2_matvec_avm_burstcount(bb_matvec_B4_out_memdep_2_matvec_avm_burstcount),
        .out_memdep_2_matvec_avm_byteenable(bb_matvec_B4_out_memdep_2_matvec_avm_byteenable),
        .out_memdep_2_matvec_avm_enable(bb_matvec_B4_out_memdep_2_matvec_avm_enable),
        .out_memdep_2_matvec_avm_read(bb_matvec_B4_out_memdep_2_matvec_avm_read),
        .out_memdep_2_matvec_avm_write(bb_matvec_B4_out_memdep_2_matvec_avm_write),
        .out_memdep_2_matvec_avm_writedata(bb_matvec_B4_out_memdep_2_matvec_avm_writedata),
        .out_stall_in_0(bb_matvec_B4_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B4_out_stall_out_0),
        .out_unnamed_matvec7_matvec_avm_address(bb_matvec_B4_out_unnamed_matvec7_matvec_avm_address),
        .out_unnamed_matvec7_matvec_avm_burstcount(bb_matvec_B4_out_unnamed_matvec7_matvec_avm_burstcount),
        .out_unnamed_matvec7_matvec_avm_byteenable(bb_matvec_B4_out_unnamed_matvec7_matvec_avm_byteenable),
        .out_unnamed_matvec7_matvec_avm_enable(bb_matvec_B4_out_unnamed_matvec7_matvec_avm_enable),
        .out_unnamed_matvec7_matvec_avm_read(bb_matvec_B4_out_unnamed_matvec7_matvec_avm_read),
        .out_unnamed_matvec7_matvec_avm_write(bb_matvec_B4_out_unnamed_matvec7_matvec_avm_write),
        .out_unnamed_matvec7_matvec_avm_writedata(bb_matvec_B4_out_unnamed_matvec7_matvec_avm_writedata),
        .out_unnamed_matvec8_matvec_avm_address(bb_matvec_B4_out_unnamed_matvec8_matvec_avm_address),
        .out_unnamed_matvec8_matvec_avm_burstcount(bb_matvec_B4_out_unnamed_matvec8_matvec_avm_burstcount),
        .out_unnamed_matvec8_matvec_avm_byteenable(bb_matvec_B4_out_unnamed_matvec8_matvec_avm_byteenable),
        .out_unnamed_matvec8_matvec_avm_enable(bb_matvec_B4_out_unnamed_matvec8_matvec_avm_enable),
        .out_unnamed_matvec8_matvec_avm_read(bb_matvec_B4_out_unnamed_matvec8_matvec_avm_read),
        .out_unnamed_matvec8_matvec_avm_write(bb_matvec_B4_out_unnamed_matvec8_matvec_avm_write),
        .out_unnamed_matvec8_matvec_avm_writedata(bb_matvec_B4_out_unnamed_matvec8_matvec_avm_writedata),
        .out_valid_out_0(bb_matvec_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B4_sr_0_aunroll_x(BLACKBOX,229)
    matvec_bb_B4_sr_0 thebb_matvec_B4_sr_0_aunroll_x (
        .in_i_stall(bb_matvec_B4_out_stall_out_0),
        .in_i_valid(bb_matvec_B3_out_valid_out_0),
        .in_i_data_0_tpl(bb_matvec_B3_out_c0_exe395),
        .in_i_data_1_tpl(bb_matvec_B3_out_c0_exe7),
        .out_o_stall(bb_matvec_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_matvec_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going46_matvec6_sr(BLACKBOX,67)
    matvec_i_llvm_fpga_pipeline_keep_going46_6_sr thei_llvm_fpga_pipeline_keep_going46_matvec6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going46_matvec6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going46_matvec6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef15(CONSTANT,60)
    assign c_i32_undef15_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_matvec_B3(BLACKBOX,7)
    matvec_bb_B3 thebb_matvec_B3 (
        .in_flush(in_start),
        .in_forked43_0(GND_q),
        .in_forked43_1(bb_matvec_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_033_pop1574_0(c_i32_undef15_q),
        .in_i_033_pop1574_1(bb_matvec_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_0_0(bb_matvec_B1_start_out_intel_reserved_ffwd_0_0),
        .in_memdep_matvec_avm_readdata(in_memdep_matvec_avm_readdata),
        .in_memdep_matvec_avm_readdatavalid(in_memdep_matvec_avm_readdatavalid),
        .in_memdep_matvec_avm_waitrequest(in_memdep_matvec_avm_waitrequest),
        .in_memdep_matvec_avm_writeack(in_memdep_matvec_avm_writeack),
        .in_notcmp5873_0(GND_q),
        .in_notcmp5873_1(bb_matvec_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going46_matvec6_sr_out_o_stall),
        .in_stall_in_0(bb_matvec_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_matvec6_matvec_avm_readdata(in_unnamed_matvec6_matvec_avm_readdata),
        .in_unnamed_matvec6_matvec_avm_readdatavalid(in_unnamed_matvec6_matvec_avm_readdatavalid),
        .in_unnamed_matvec6_matvec_avm_waitrequest(in_unnamed_matvec6_matvec_avm_waitrequest),
        .in_unnamed_matvec6_matvec_avm_writeack(in_unnamed_matvec6_matvec_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going46_matvec6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_matvec_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe395(bb_matvec_B3_out_c0_exe395),
        .out_c0_exe7(bb_matvec_B3_out_c0_exe7),
        .out_exiting_stall_out(bb_matvec_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_matvec_B3_out_exiting_valid_out),
        .out_memdep_matvec_avm_address(bb_matvec_B3_out_memdep_matvec_avm_address),
        .out_memdep_matvec_avm_burstcount(bb_matvec_B3_out_memdep_matvec_avm_burstcount),
        .out_memdep_matvec_avm_byteenable(bb_matvec_B3_out_memdep_matvec_avm_byteenable),
        .out_memdep_matvec_avm_enable(bb_matvec_B3_out_memdep_matvec_avm_enable),
        .out_memdep_matvec_avm_read(bb_matvec_B3_out_memdep_matvec_avm_read),
        .out_memdep_matvec_avm_write(bb_matvec_B3_out_memdep_matvec_avm_write),
        .out_memdep_matvec_avm_writedata(bb_matvec_B3_out_memdep_matvec_avm_writedata),
        .out_pipeline_valid_out(bb_matvec_B3_out_pipeline_valid_out),
        .out_stall_in_0(bb_matvec_B3_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B3_out_stall_out_0),
        .out_stall_out_1(bb_matvec_B3_out_stall_out_1),
        .out_unnamed_matvec6_matvec_avm_address(bb_matvec_B3_out_unnamed_matvec6_matvec_avm_address),
        .out_unnamed_matvec6_matvec_avm_burstcount(bb_matvec_B3_out_unnamed_matvec6_matvec_avm_burstcount),
        .out_unnamed_matvec6_matvec_avm_byteenable(bb_matvec_B3_out_unnamed_matvec6_matvec_avm_byteenable),
        .out_unnamed_matvec6_matvec_avm_enable(bb_matvec_B3_out_unnamed_matvec6_matvec_avm_enable),
        .out_unnamed_matvec6_matvec_avm_read(bb_matvec_B3_out_unnamed_matvec6_matvec_avm_read),
        .out_unnamed_matvec6_matvec_avm_write(bb_matvec_B3_out_unnamed_matvec6_matvec_avm_write),
        .out_unnamed_matvec6_matvec_avm_writedata(bb_matvec_B3_out_unnamed_matvec6_matvec_avm_writedata),
        .out_valid_in_0(bb_matvec_B3_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B3_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B3_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B3_sr_1_aunroll_x(BLACKBOX,228)
    matvec_bb_B3_sr_1 thebb_matvec_B3_sr_1_aunroll_x (
        .in_i_stall(bb_matvec_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_matvec3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_matvec_B2_out_c0_exe2),
        .in_i_data_2_tpl(bb_matvec_B2_out_c0_exe3),
        .out_o_stall(bb_matvec_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_matvec_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_matvec_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_matvec3(BLACKBOX,133)
    matvec_loop_limiter_3 theloop_limiter_matvec3 (
        .in_i_stall(bb_matvec_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_matvec_B3_out_exiting_stall_out),
        .in_i_valid(bb_matvec_B2_out_valid_out_0),
        .in_i_valid_exit(bb_matvec_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_matvec3_out_o_stall),
        .out_o_valid(loop_limiter_matvec3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going60_matvec2_sr(BLACKBOX,69)
    matvec_i_llvm_fpga_pipeline_keep_going60_2_sr thei_llvm_fpga_pipeline_keep_going60_matvec2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B2_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going60_matvec2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going60_matvec2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B2(BLACKBOX,6)
    matvec_bb_B2 thebb_matvec_B2 (
        .in_forked67_0(GND_q),
        .in_forked67_1(bb_matvec_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going60_matvec2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_matvec3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going60_matvec2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_matvec_B2_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_matvec_B2_out_c0_exe2),
        .out_c0_exe3(bb_matvec_B2_out_c0_exe3),
        .out_exiting_stall_out(bb_matvec_B2_out_exiting_stall_out),
        .out_exiting_valid_out(bb_matvec_B2_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_matvec_B2_out_pipeline_valid_out),
        .out_stall_out_0(bb_matvec_B2_out_stall_out_0),
        .out_stall_out_1(bb_matvec_B2_out_stall_out_1),
        .out_valid_in_0(bb_matvec_B2_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B2_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B2_sr_1_aunroll_x(BLACKBOX,227)
    matvec_bb_B2_sr_1 thebb_matvec_B2_sr_1_aunroll_x (
        .in_i_stall(bb_matvec_B2_out_stall_out_1),
        .in_i_valid(loop_limiter_matvec0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_matvec_B2_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_matvec_B2_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_matvec_B2_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_matvec0(BLACKBOX,130)
    matvec_loop_limiter_0 theloop_limiter_matvec0 (
        .in_i_stall(bb_matvec_B2_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_matvec_B2_out_exiting_stall_out),
        .in_i_valid(bb_matvec_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_matvec_B2_out_exiting_valid_out),
        .out_o_stall(loop_limiter_matvec0_out_o_stall),
        .out_o_valid(loop_limiter_matvec0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going64_matvec1_sr(BLACKBOX,71)
    matvec_i_llvm_fpga_pipeline_keep_going64_1_sr thei_llvm_fpga_pipeline_keep_going64_matvec1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo_out_stall_out),
        .in_i_valid(bb_matvec_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going64_matvec1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going64_matvec1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B1_start(BLACKBOX,5)
    matvec_bb_B1_start thebb_matvec_B1_start (
        .in_feedback_in_1(bb_matvec_B11_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_matvec_B11_out_feedback_valid_out_1),
        .in_iord_bl_call_matvec_i_fifodata(in_iord_bl_call_matvec_i_fifodata),
        .in_iord_bl_call_matvec_i_fifovalid(in_iord_bl_call_matvec_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going64_matvec1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_matvec0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going64_matvec1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_matvec_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_matvec_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_matvec_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_matvec_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_matvec_o_fifoalmost_full(bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoalmost_full),
        .out_iord_bl_call_matvec_o_fifoready(bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoready),
        .out_pipeline_valid_out(bb_matvec_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_matvec_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_matvec_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_matvec_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_matvec_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_matvec_B11(BLACKBOX,4)
    matvec_bb_B11 thebb_matvec_B11 (
        .in_feedback_stall_in_1(bb_matvec_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_matvec_i_fifoready(in_iowr_bl_return_matvec_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_matvec_B11_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_matvec_B11_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_matvec_B11_out_feedback_valid_out_1),
        .out_iowr_bl_return_matvec_o_fifodata(bb_matvec_B11_out_iowr_bl_return_matvec_o_fifodata),
        .out_iowr_bl_return_matvec_o_fifovalid(bb_matvec_B11_out_iowr_bl_return_matvec_o_fifovalid),
        .out_stall_in_0(bb_matvec_B11_out_stall_in_0),
        .out_stall_out_0(bb_matvec_B11_out_stall_out_0),
        .out_valid_out_0(bb_matvec_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // matvec_B1_start_x(EXTIFACE,135)
    assign matvec_B1_start_x_i_capture = GND_q;
    assign matvec_B1_start_x_i_clear = GND_q;
    assign matvec_B1_start_x_i_enable = VCC_q;
    assign matvec_B1_start_x_i_shift = GND_q;
    assign matvec_B1_start_x_i_stall_pred = GND_q;
    assign matvec_B1_start_x_i_stall_succ = bb_matvec_B11_out_stall_in_0;
    assign matvec_B1_start_x_i_valid_loop = bb_matvec_B1_start_out_valid_in_0;
    assign matvec_B1_start_x_i_valid_pred = bb_matvec_B1_start_out_valid_in_1;
    assign matvec_B1_start_x_i_valid_succ = bb_matvec_B11_out_valid_out_0;
    assign matvec_B1_start_x_i_capture_bitsignaltemp = matvec_B1_start_x_i_capture[0];
    assign matvec_B1_start_x_i_clear_bitsignaltemp = matvec_B1_start_x_i_clear[0];
    assign matvec_B1_start_x_i_enable_bitsignaltemp = matvec_B1_start_x_i_enable[0];
    assign matvec_B1_start_x_i_shift_bitsignaltemp = matvec_B1_start_x_i_shift[0];
    assign matvec_B1_start_x_i_stall_pred_bitsignaltemp = matvec_B1_start_x_i_stall_pred[0];
    assign matvec_B1_start_x_i_stall_succ_bitsignaltemp = matvec_B1_start_x_i_stall_succ[0];
    assign matvec_B1_start_x_i_valid_loop_bitsignaltemp = matvec_B1_start_x_i_valid_loop[0];
    assign matvec_B1_start_x_i_valid_pred_bitsignaltemp = matvec_B1_start_x_i_valid_pred[0];
    assign matvec_B1_start_x_i_valid_succ_bitsignaltemp = matvec_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B1.start")
    ) thematvec_B1_start_x (
        .i_capture(matvec_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B10_x(EXTIFACE,136)
    assign matvec_B10_x_i_capture = GND_q;
    assign matvec_B10_x_i_clear = GND_q;
    assign matvec_B10_x_i_enable = VCC_q;
    assign matvec_B10_x_i_shift = GND_q;
    assign matvec_B10_x_i_stall_pred = loop_limiter_matvec2_out_o_stall;
    assign matvec_B10_x_i_stall_succ = bb_matvec_B10_out_stall_in_0;
    assign matvec_B10_x_i_valid_loop = bb_matvec_B10_out_valid_in_0;
    assign matvec_B10_x_i_valid_pred = bb_matvec_B10_out_valid_in_1;
    assign matvec_B10_x_i_valid_succ = bb_matvec_B10_out_valid_out_0;
    assign matvec_B10_x_i_capture_bitsignaltemp = matvec_B10_x_i_capture[0];
    assign matvec_B10_x_i_clear_bitsignaltemp = matvec_B10_x_i_clear[0];
    assign matvec_B10_x_i_enable_bitsignaltemp = matvec_B10_x_i_enable[0];
    assign matvec_B10_x_i_shift_bitsignaltemp = matvec_B10_x_i_shift[0];
    assign matvec_B10_x_i_stall_pred_bitsignaltemp = matvec_B10_x_i_stall_pred[0];
    assign matvec_B10_x_i_stall_succ_bitsignaltemp = matvec_B10_x_i_stall_succ[0];
    assign matvec_B10_x_i_valid_loop_bitsignaltemp = matvec_B10_x_i_valid_loop[0];
    assign matvec_B10_x_i_valid_pred_bitsignaltemp = matvec_B10_x_i_valid_pred[0];
    assign matvec_B10_x_i_valid_succ_bitsignaltemp = matvec_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B10")
    ) thematvec_B10_x (
        .i_capture(matvec_B10_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B10_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B10_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B2_x(EXTIFACE,137)
    assign matvec_B2_x_i_capture = GND_q;
    assign matvec_B2_x_i_clear = GND_q;
    assign matvec_B2_x_i_enable = VCC_q;
    assign matvec_B2_x_i_shift = GND_q;
    assign matvec_B2_x_i_stall_pred = loop_limiter_matvec0_out_o_stall;
    assign matvec_B2_x_i_stall_succ = bb_matvec_B4_out_stall_in_0;
    assign matvec_B2_x_i_valid_loop = bb_matvec_B2_out_valid_in_0;
    assign matvec_B2_x_i_valid_pred = bb_matvec_B2_out_valid_in_1;
    assign matvec_B2_x_i_valid_succ = bb_matvec_B4_out_valid_out_0;
    assign matvec_B2_x_i_capture_bitsignaltemp = matvec_B2_x_i_capture[0];
    assign matvec_B2_x_i_clear_bitsignaltemp = matvec_B2_x_i_clear[0];
    assign matvec_B2_x_i_enable_bitsignaltemp = matvec_B2_x_i_enable[0];
    assign matvec_B2_x_i_shift_bitsignaltemp = matvec_B2_x_i_shift[0];
    assign matvec_B2_x_i_stall_pred_bitsignaltemp = matvec_B2_x_i_stall_pred[0];
    assign matvec_B2_x_i_stall_succ_bitsignaltemp = matvec_B2_x_i_stall_succ[0];
    assign matvec_B2_x_i_valid_loop_bitsignaltemp = matvec_B2_x_i_valid_loop[0];
    assign matvec_B2_x_i_valid_pred_bitsignaltemp = matvec_B2_x_i_valid_pred[0];
    assign matvec_B2_x_i_valid_succ_bitsignaltemp = matvec_B2_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B2")
    ) thematvec_B2_x (
        .i_capture(matvec_B2_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B2_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B2_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B2_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B2_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B2_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B2_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B2_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B2_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B3_x(EXTIFACE,138)
    assign matvec_B3_x_i_capture = GND_q;
    assign matvec_B3_x_i_clear = GND_q;
    assign matvec_B3_x_i_enable = VCC_q;
    assign matvec_B3_x_i_shift = GND_q;
    assign matvec_B3_x_i_stall_pred = loop_limiter_matvec3_out_o_stall;
    assign matvec_B3_x_i_stall_succ = bb_matvec_B3_out_stall_in_0;
    assign matvec_B3_x_i_valid_loop = bb_matvec_B3_out_valid_in_0;
    assign matvec_B3_x_i_valid_pred = bb_matvec_B3_out_valid_in_1;
    assign matvec_B3_x_i_valid_succ = bb_matvec_B3_out_valid_out_0;
    assign matvec_B3_x_i_capture_bitsignaltemp = matvec_B3_x_i_capture[0];
    assign matvec_B3_x_i_clear_bitsignaltemp = matvec_B3_x_i_clear[0];
    assign matvec_B3_x_i_enable_bitsignaltemp = matvec_B3_x_i_enable[0];
    assign matvec_B3_x_i_shift_bitsignaltemp = matvec_B3_x_i_shift[0];
    assign matvec_B3_x_i_stall_pred_bitsignaltemp = matvec_B3_x_i_stall_pred[0];
    assign matvec_B3_x_i_stall_succ_bitsignaltemp = matvec_B3_x_i_stall_succ[0];
    assign matvec_B3_x_i_valid_loop_bitsignaltemp = matvec_B3_x_i_valid_loop[0];
    assign matvec_B3_x_i_valid_pred_bitsignaltemp = matvec_B3_x_i_valid_pred[0];
    assign matvec_B3_x_i_valid_succ_bitsignaltemp = matvec_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B3")
    ) thematvec_B3_x (
        .i_capture(matvec_B3_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B3_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B3_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B6_x(EXTIFACE,139)
    assign matvec_B6_x_i_capture = GND_q;
    assign matvec_B6_x_i_clear = GND_q;
    assign matvec_B6_x_i_enable = VCC_q;
    assign matvec_B6_x_i_shift = GND_q;
    assign matvec_B6_x_i_stall_pred = loop_limiter_matvec1_out_o_stall;
    assign matvec_B6_x_i_stall_succ = bb_matvec_B8_out_stall_in_0;
    assign matvec_B6_x_i_valid_loop = bb_matvec_B6_out_valid_in_0;
    assign matvec_B6_x_i_valid_pred = bb_matvec_B6_out_valid_in_1;
    assign matvec_B6_x_i_valid_succ = bb_matvec_B8_out_valid_out_0;
    assign matvec_B6_x_i_capture_bitsignaltemp = matvec_B6_x_i_capture[0];
    assign matvec_B6_x_i_clear_bitsignaltemp = matvec_B6_x_i_clear[0];
    assign matvec_B6_x_i_enable_bitsignaltemp = matvec_B6_x_i_enable[0];
    assign matvec_B6_x_i_shift_bitsignaltemp = matvec_B6_x_i_shift[0];
    assign matvec_B6_x_i_stall_pred_bitsignaltemp = matvec_B6_x_i_stall_pred[0];
    assign matvec_B6_x_i_stall_succ_bitsignaltemp = matvec_B6_x_i_stall_succ[0];
    assign matvec_B6_x_i_valid_loop_bitsignaltemp = matvec_B6_x_i_valid_loop[0];
    assign matvec_B6_x_i_valid_pred_bitsignaltemp = matvec_B6_x_i_valid_pred[0];
    assign matvec_B6_x_i_valid_succ_bitsignaltemp = matvec_B6_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B6")
    ) thematvec_B6_x (
        .i_capture(matvec_B6_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B6_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B6_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B6_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B6_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B6_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B6_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B6_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B6_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // matvec_B7_x(EXTIFACE,140)
    assign matvec_B7_x_i_capture = GND_q;
    assign matvec_B7_x_i_clear = GND_q;
    assign matvec_B7_x_i_enable = VCC_q;
    assign matvec_B7_x_i_shift = GND_q;
    assign matvec_B7_x_i_stall_pred = loop_limiter_matvec4_out_o_stall;
    assign matvec_B7_x_i_stall_succ = bb_matvec_B7_out_stall_in_0;
    assign matvec_B7_x_i_valid_loop = bb_matvec_B7_out_valid_in_0;
    assign matvec_B7_x_i_valid_pred = bb_matvec_B7_out_valid_in_1;
    assign matvec_B7_x_i_valid_succ = bb_matvec_B7_out_valid_out_0;
    assign matvec_B7_x_i_capture_bitsignaltemp = matvec_B7_x_i_capture[0];
    assign matvec_B7_x_i_clear_bitsignaltemp = matvec_B7_x_i_clear[0];
    assign matvec_B7_x_i_enable_bitsignaltemp = matvec_B7_x_i_enable[0];
    assign matvec_B7_x_i_shift_bitsignaltemp = matvec_B7_x_i_shift[0];
    assign matvec_B7_x_i_stall_pred_bitsignaltemp = matvec_B7_x_i_stall_pred[0];
    assign matvec_B7_x_i_stall_succ_bitsignaltemp = matvec_B7_x_i_stall_succ[0];
    assign matvec_B7_x_i_valid_loop_bitsignaltemp = matvec_B7_x_i_valid_loop[0];
    assign matvec_B7_x_i_valid_pred_bitsignaltemp = matvec_B7_x_i_valid_pred[0];
    assign matvec_B7_x_i_valid_succ_bitsignaltemp = matvec_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("matvec.B7")
    ) thematvec_B7_x (
        .i_capture(matvec_B7_x_i_capture_bitsignaltemp),
        .i_clear(matvec_B7_x_i_clear_bitsignaltemp),
        .i_enable(matvec_B7_x_i_enable_bitsignaltemp),
        .i_shift(matvec_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(matvec_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(matvec_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(matvec_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(matvec_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(matvec_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_matvec_o_fifoalmost_full(GPOUT,141)
    assign out_iord_bl_call_matvec_o_fifoalmost_full = bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoalmost_full;

    // out_iord_bl_call_matvec_o_fifoready(GPOUT,142)
    assign out_iord_bl_call_matvec_o_fifoready = bb_matvec_B1_start_out_iord_bl_call_matvec_o_fifoready;

    // out_iowr_bl_return_matvec_o_fifodata(GPOUT,143)
    assign out_iowr_bl_return_matvec_o_fifodata = bb_matvec_B11_out_iowr_bl_return_matvec_o_fifodata;

    // out_iowr_bl_return_matvec_o_fifovalid(GPOUT,144)
    assign out_iowr_bl_return_matvec_o_fifovalid = bb_matvec_B11_out_iowr_bl_return_matvec_o_fifovalid;

    // out_memdep_1_matvec_avm_address(GPOUT,145)
    assign out_memdep_1_matvec_avm_address = bb_matvec_B4_out_memdep_1_matvec_avm_address;

    // out_memdep_1_matvec_avm_burstcount(GPOUT,146)
    assign out_memdep_1_matvec_avm_burstcount = bb_matvec_B4_out_memdep_1_matvec_avm_burstcount;

    // out_memdep_1_matvec_avm_byteenable(GPOUT,147)
    assign out_memdep_1_matvec_avm_byteenable = bb_matvec_B4_out_memdep_1_matvec_avm_byteenable;

    // out_memdep_1_matvec_avm_enable(GPOUT,148)
    assign out_memdep_1_matvec_avm_enable = bb_matvec_B4_out_memdep_1_matvec_avm_enable;

    // out_memdep_1_matvec_avm_read(GPOUT,149)
    assign out_memdep_1_matvec_avm_read = bb_matvec_B4_out_memdep_1_matvec_avm_read;

    // out_memdep_1_matvec_avm_write(GPOUT,150)
    assign out_memdep_1_matvec_avm_write = bb_matvec_B4_out_memdep_1_matvec_avm_write;

    // out_memdep_1_matvec_avm_writedata(GPOUT,151)
    assign out_memdep_1_matvec_avm_writedata = bb_matvec_B4_out_memdep_1_matvec_avm_writedata;

    // out_memdep_2_matvec_avm_address(GPOUT,152)
    assign out_memdep_2_matvec_avm_address = bb_matvec_B4_out_memdep_2_matvec_avm_address;

    // out_memdep_2_matvec_avm_burstcount(GPOUT,153)
    assign out_memdep_2_matvec_avm_burstcount = bb_matvec_B4_out_memdep_2_matvec_avm_burstcount;

    // out_memdep_2_matvec_avm_byteenable(GPOUT,154)
    assign out_memdep_2_matvec_avm_byteenable = bb_matvec_B4_out_memdep_2_matvec_avm_byteenable;

    // out_memdep_2_matvec_avm_enable(GPOUT,155)
    assign out_memdep_2_matvec_avm_enable = bb_matvec_B4_out_memdep_2_matvec_avm_enable;

    // out_memdep_2_matvec_avm_read(GPOUT,156)
    assign out_memdep_2_matvec_avm_read = bb_matvec_B4_out_memdep_2_matvec_avm_read;

    // out_memdep_2_matvec_avm_write(GPOUT,157)
    assign out_memdep_2_matvec_avm_write = bb_matvec_B4_out_memdep_2_matvec_avm_write;

    // out_memdep_2_matvec_avm_writedata(GPOUT,158)
    assign out_memdep_2_matvec_avm_writedata = bb_matvec_B4_out_memdep_2_matvec_avm_writedata;

    // out_memdep_3_matvec_avm_address(GPOUT,159)
    assign out_memdep_3_matvec_avm_address = bb_matvec_B8_out_memdep_3_matvec_avm_address;

    // out_memdep_3_matvec_avm_burstcount(GPOUT,160)
    assign out_memdep_3_matvec_avm_burstcount = bb_matvec_B8_out_memdep_3_matvec_avm_burstcount;

    // out_memdep_3_matvec_avm_byteenable(GPOUT,161)
    assign out_memdep_3_matvec_avm_byteenable = bb_matvec_B8_out_memdep_3_matvec_avm_byteenable;

    // out_memdep_3_matvec_avm_enable(GPOUT,162)
    assign out_memdep_3_matvec_avm_enable = bb_matvec_B8_out_memdep_3_matvec_avm_enable;

    // out_memdep_3_matvec_avm_read(GPOUT,163)
    assign out_memdep_3_matvec_avm_read = bb_matvec_B8_out_memdep_3_matvec_avm_read;

    // out_memdep_3_matvec_avm_write(GPOUT,164)
    assign out_memdep_3_matvec_avm_write = bb_matvec_B8_out_memdep_3_matvec_avm_write;

    // out_memdep_3_matvec_avm_writedata(GPOUT,165)
    assign out_memdep_3_matvec_avm_writedata = bb_matvec_B8_out_memdep_3_matvec_avm_writedata;

    // out_memdep_4_matvec_avm_address(GPOUT,166)
    assign out_memdep_4_matvec_avm_address = bb_matvec_B10_out_memdep_4_matvec_avm_address;

    // out_memdep_4_matvec_avm_burstcount(GPOUT,167)
    assign out_memdep_4_matvec_avm_burstcount = bb_matvec_B10_out_memdep_4_matvec_avm_burstcount;

    // out_memdep_4_matvec_avm_byteenable(GPOUT,168)
    assign out_memdep_4_matvec_avm_byteenable = bb_matvec_B10_out_memdep_4_matvec_avm_byteenable;

    // out_memdep_4_matvec_avm_enable(GPOUT,169)
    assign out_memdep_4_matvec_avm_enable = bb_matvec_B10_out_memdep_4_matvec_avm_enable;

    // out_memdep_4_matvec_avm_read(GPOUT,170)
    assign out_memdep_4_matvec_avm_read = bb_matvec_B10_out_memdep_4_matvec_avm_read;

    // out_memdep_4_matvec_avm_write(GPOUT,171)
    assign out_memdep_4_matvec_avm_write = bb_matvec_B10_out_memdep_4_matvec_avm_write;

    // out_memdep_4_matvec_avm_writedata(GPOUT,172)
    assign out_memdep_4_matvec_avm_writedata = bb_matvec_B10_out_memdep_4_matvec_avm_writedata;

    // out_memdep_matvec_avm_address(GPOUT,173)
    assign out_memdep_matvec_avm_address = bb_matvec_B3_out_memdep_matvec_avm_address;

    // out_memdep_matvec_avm_burstcount(GPOUT,174)
    assign out_memdep_matvec_avm_burstcount = bb_matvec_B3_out_memdep_matvec_avm_burstcount;

    // out_memdep_matvec_avm_byteenable(GPOUT,175)
    assign out_memdep_matvec_avm_byteenable = bb_matvec_B3_out_memdep_matvec_avm_byteenable;

    // out_memdep_matvec_avm_enable(GPOUT,176)
    assign out_memdep_matvec_avm_enable = bb_matvec_B3_out_memdep_matvec_avm_enable;

    // out_memdep_matvec_avm_read(GPOUT,177)
    assign out_memdep_matvec_avm_read = bb_matvec_B3_out_memdep_matvec_avm_read;

    // out_memdep_matvec_avm_write(GPOUT,178)
    assign out_memdep_matvec_avm_write = bb_matvec_B3_out_memdep_matvec_avm_write;

    // out_memdep_matvec_avm_writedata(GPOUT,179)
    assign out_memdep_matvec_avm_writedata = bb_matvec_B3_out_memdep_matvec_avm_writedata;

    // out_o_active_memdep_4(GPOUT,180)
    assign out_o_active_memdep_4 = bb_matvec_B10_out_lsu_memdep_4_o_active;

    // bb_matvec_B0_runOnce(BLACKBOX,2)
    matvec_bb_B0_runOnce thebb_matvec_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_matvec_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,181)
    assign out_stall_out = bb_matvec_B0_runOnce_out_stall_out_0;

    // out_unnamed_matvec10_matvec_avm_address(GPOUT,182)
    assign out_unnamed_matvec10_matvec_avm_address = bb_matvec_B7_out_unnamed_matvec10_matvec_avm_address;

    // out_unnamed_matvec10_matvec_avm_burstcount(GPOUT,183)
    assign out_unnamed_matvec10_matvec_avm_burstcount = bb_matvec_B7_out_unnamed_matvec10_matvec_avm_burstcount;

    // out_unnamed_matvec10_matvec_avm_byteenable(GPOUT,184)
    assign out_unnamed_matvec10_matvec_avm_byteenable = bb_matvec_B7_out_unnamed_matvec10_matvec_avm_byteenable;

    // out_unnamed_matvec10_matvec_avm_enable(GPOUT,185)
    assign out_unnamed_matvec10_matvec_avm_enable = bb_matvec_B7_out_unnamed_matvec10_matvec_avm_enable;

    // out_unnamed_matvec10_matvec_avm_read(GPOUT,186)
    assign out_unnamed_matvec10_matvec_avm_read = bb_matvec_B7_out_unnamed_matvec10_matvec_avm_read;

    // out_unnamed_matvec10_matvec_avm_write(GPOUT,187)
    assign out_unnamed_matvec10_matvec_avm_write = bb_matvec_B7_out_unnamed_matvec10_matvec_avm_write;

    // out_unnamed_matvec10_matvec_avm_writedata(GPOUT,188)
    assign out_unnamed_matvec10_matvec_avm_writedata = bb_matvec_B7_out_unnamed_matvec10_matvec_avm_writedata;

    // out_unnamed_matvec11_matvec_avm_address(GPOUT,189)
    assign out_unnamed_matvec11_matvec_avm_address = bb_matvec_B10_out_unnamed_matvec11_matvec_avm_address;

    // out_unnamed_matvec11_matvec_avm_burstcount(GPOUT,190)
    assign out_unnamed_matvec11_matvec_avm_burstcount = bb_matvec_B10_out_unnamed_matvec11_matvec_avm_burstcount;

    // out_unnamed_matvec11_matvec_avm_byteenable(GPOUT,191)
    assign out_unnamed_matvec11_matvec_avm_byteenable = bb_matvec_B10_out_unnamed_matvec11_matvec_avm_byteenable;

    // out_unnamed_matvec11_matvec_avm_enable(GPOUT,192)
    assign out_unnamed_matvec11_matvec_avm_enable = bb_matvec_B10_out_unnamed_matvec11_matvec_avm_enable;

    // out_unnamed_matvec11_matvec_avm_read(GPOUT,193)
    assign out_unnamed_matvec11_matvec_avm_read = bb_matvec_B10_out_unnamed_matvec11_matvec_avm_read;

    // out_unnamed_matvec11_matvec_avm_write(GPOUT,194)
    assign out_unnamed_matvec11_matvec_avm_write = bb_matvec_B10_out_unnamed_matvec11_matvec_avm_write;

    // out_unnamed_matvec11_matvec_avm_writedata(GPOUT,195)
    assign out_unnamed_matvec11_matvec_avm_writedata = bb_matvec_B10_out_unnamed_matvec11_matvec_avm_writedata;

    // out_unnamed_matvec6_matvec_avm_address(GPOUT,196)
    assign out_unnamed_matvec6_matvec_avm_address = bb_matvec_B3_out_unnamed_matvec6_matvec_avm_address;

    // out_unnamed_matvec6_matvec_avm_burstcount(GPOUT,197)
    assign out_unnamed_matvec6_matvec_avm_burstcount = bb_matvec_B3_out_unnamed_matvec6_matvec_avm_burstcount;

    // out_unnamed_matvec6_matvec_avm_byteenable(GPOUT,198)
    assign out_unnamed_matvec6_matvec_avm_byteenable = bb_matvec_B3_out_unnamed_matvec6_matvec_avm_byteenable;

    // out_unnamed_matvec6_matvec_avm_enable(GPOUT,199)
    assign out_unnamed_matvec6_matvec_avm_enable = bb_matvec_B3_out_unnamed_matvec6_matvec_avm_enable;

    // out_unnamed_matvec6_matvec_avm_read(GPOUT,200)
    assign out_unnamed_matvec6_matvec_avm_read = bb_matvec_B3_out_unnamed_matvec6_matvec_avm_read;

    // out_unnamed_matvec6_matvec_avm_write(GPOUT,201)
    assign out_unnamed_matvec6_matvec_avm_write = bb_matvec_B3_out_unnamed_matvec6_matvec_avm_write;

    // out_unnamed_matvec6_matvec_avm_writedata(GPOUT,202)
    assign out_unnamed_matvec6_matvec_avm_writedata = bb_matvec_B3_out_unnamed_matvec6_matvec_avm_writedata;

    // out_unnamed_matvec7_matvec_avm_address(GPOUT,203)
    assign out_unnamed_matvec7_matvec_avm_address = bb_matvec_B4_out_unnamed_matvec7_matvec_avm_address;

    // out_unnamed_matvec7_matvec_avm_burstcount(GPOUT,204)
    assign out_unnamed_matvec7_matvec_avm_burstcount = bb_matvec_B4_out_unnamed_matvec7_matvec_avm_burstcount;

    // out_unnamed_matvec7_matvec_avm_byteenable(GPOUT,205)
    assign out_unnamed_matvec7_matvec_avm_byteenable = bb_matvec_B4_out_unnamed_matvec7_matvec_avm_byteenable;

    // out_unnamed_matvec7_matvec_avm_enable(GPOUT,206)
    assign out_unnamed_matvec7_matvec_avm_enable = bb_matvec_B4_out_unnamed_matvec7_matvec_avm_enable;

    // out_unnamed_matvec7_matvec_avm_read(GPOUT,207)
    assign out_unnamed_matvec7_matvec_avm_read = bb_matvec_B4_out_unnamed_matvec7_matvec_avm_read;

    // out_unnamed_matvec7_matvec_avm_write(GPOUT,208)
    assign out_unnamed_matvec7_matvec_avm_write = bb_matvec_B4_out_unnamed_matvec7_matvec_avm_write;

    // out_unnamed_matvec7_matvec_avm_writedata(GPOUT,209)
    assign out_unnamed_matvec7_matvec_avm_writedata = bb_matvec_B4_out_unnamed_matvec7_matvec_avm_writedata;

    // out_unnamed_matvec8_matvec_avm_address(GPOUT,210)
    assign out_unnamed_matvec8_matvec_avm_address = bb_matvec_B4_out_unnamed_matvec8_matvec_avm_address;

    // out_unnamed_matvec8_matvec_avm_burstcount(GPOUT,211)
    assign out_unnamed_matvec8_matvec_avm_burstcount = bb_matvec_B4_out_unnamed_matvec8_matvec_avm_burstcount;

    // out_unnamed_matvec8_matvec_avm_byteenable(GPOUT,212)
    assign out_unnamed_matvec8_matvec_avm_byteenable = bb_matvec_B4_out_unnamed_matvec8_matvec_avm_byteenable;

    // out_unnamed_matvec8_matvec_avm_enable(GPOUT,213)
    assign out_unnamed_matvec8_matvec_avm_enable = bb_matvec_B4_out_unnamed_matvec8_matvec_avm_enable;

    // out_unnamed_matvec8_matvec_avm_read(GPOUT,214)
    assign out_unnamed_matvec8_matvec_avm_read = bb_matvec_B4_out_unnamed_matvec8_matvec_avm_read;

    // out_unnamed_matvec8_matvec_avm_write(GPOUT,215)
    assign out_unnamed_matvec8_matvec_avm_write = bb_matvec_B4_out_unnamed_matvec8_matvec_avm_write;

    // out_unnamed_matvec8_matvec_avm_writedata(GPOUT,216)
    assign out_unnamed_matvec8_matvec_avm_writedata = bb_matvec_B4_out_unnamed_matvec8_matvec_avm_writedata;

    // out_unnamed_matvec9_matvec_avm_address(GPOUT,217)
    assign out_unnamed_matvec9_matvec_avm_address = bb_matvec_B7_out_unnamed_matvec9_matvec_avm_address;

    // out_unnamed_matvec9_matvec_avm_burstcount(GPOUT,218)
    assign out_unnamed_matvec9_matvec_avm_burstcount = bb_matvec_B7_out_unnamed_matvec9_matvec_avm_burstcount;

    // out_unnamed_matvec9_matvec_avm_byteenable(GPOUT,219)
    assign out_unnamed_matvec9_matvec_avm_byteenable = bb_matvec_B7_out_unnamed_matvec9_matvec_avm_byteenable;

    // out_unnamed_matvec9_matvec_avm_enable(GPOUT,220)
    assign out_unnamed_matvec9_matvec_avm_enable = bb_matvec_B7_out_unnamed_matvec9_matvec_avm_enable;

    // out_unnamed_matvec9_matvec_avm_read(GPOUT,221)
    assign out_unnamed_matvec9_matvec_avm_read = bb_matvec_B7_out_unnamed_matvec9_matvec_avm_read;

    // out_unnamed_matvec9_matvec_avm_write(GPOUT,222)
    assign out_unnamed_matvec9_matvec_avm_write = bb_matvec_B7_out_unnamed_matvec9_matvec_avm_write;

    // out_unnamed_matvec9_matvec_avm_writedata(GPOUT,223)
    assign out_unnamed_matvec9_matvec_avm_writedata = bb_matvec_B7_out_unnamed_matvec9_matvec_avm_writedata;

    // out_valid_out(GPOUT,224)
    assign out_valid_out = GND_q;

endmodule
