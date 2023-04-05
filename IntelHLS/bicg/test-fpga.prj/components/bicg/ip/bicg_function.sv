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

// SystemVerilog created from bicg_function
// Created for function/kernel bicg
// SystemVerilog created on Wed Apr  5 16:26:34 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module bicg_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_p,
    input wire [63:0] in_arg_q,
    input wire [63:0] in_arg_r,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_s,
    input wire [319:0] in_iord_bl_call_bicg_i_fifodata,
    input wire [0:0] in_iord_bl_call_bicg_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_bicg_i_fifoready,
    input wire [31:0] in_memdep_1_bicg_avm_readdata,
    input wire [0:0] in_memdep_1_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_1_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_1_bicg_avm_writeack,
    input wire [31:0] in_memdep_2_bicg_avm_readdata,
    input wire [0:0] in_memdep_2_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_2_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_2_bicg_avm_writeack,
    input wire [31:0] in_memdep_3_bicg_avm_readdata,
    input wire [0:0] in_memdep_3_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_3_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_3_bicg_avm_writeack,
    input wire [31:0] in_memdep_4_bicg_avm_readdata,
    input wire [0:0] in_memdep_4_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_4_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_4_bicg_avm_writeack,
    input wire [31:0] in_memdep_5_bicg_avm_readdata,
    input wire [0:0] in_memdep_5_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_5_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_5_bicg_avm_writeack,
    input wire [31:0] in_memdep_6_bicg_avm_readdata,
    input wire [0:0] in_memdep_6_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_6_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_6_bicg_avm_writeack,
    input wire [63:0] in_memdep_7_bicg_avm_readdata,
    input wire [0:0] in_memdep_7_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_7_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_7_bicg_avm_writeack,
    input wire [31:0] in_memdep_bicg_avm_readdata,
    input wire [0:0] in_memdep_bicg_avm_readdatavalid,
    input wire [0:0] in_memdep_bicg_avm_waitrequest,
    input wire [0:0] in_memdep_bicg_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [63:0] in_unnamed_bicg10_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg10_bicg_avm_writeack,
    input wire [63:0] in_unnamed_bicg11_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg11_bicg_avm_writeack,
    input wire [63:0] in_unnamed_bicg12_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg12_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg13_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg13_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg15_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg15_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg16_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg16_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg17_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg17_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg18_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg18_bicg_avm_writeack,
    input wire [31:0] in_unnamed_bicg20_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg20_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg20_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg20_bicg_avm_writeack,
    input wire [63:0] in_unnamed_bicg8_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg8_bicg_avm_writeack,
    input wire [63:0] in_unnamed_bicg9_bicg_avm_readdata,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_readdatavalid,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_waitrequest,
    input wire [0:0] in_unnamed_bicg9_bicg_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_bicg_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_bicg_o_fifoready,
    output wire [0:0] out_iowr_bl_return_bicg_o_fifodata,
    output wire [0:0] out_iowr_bl_return_bicg_o_fifovalid,
    output wire [31:0] out_memdep_1_bicg_avm_address,
    output wire [0:0] out_memdep_1_bicg_avm_burstcount,
    output wire [3:0] out_memdep_1_bicg_avm_byteenable,
    output wire [0:0] out_memdep_1_bicg_avm_enable,
    output wire [0:0] out_memdep_1_bicg_avm_read,
    output wire [0:0] out_memdep_1_bicg_avm_write,
    output wire [31:0] out_memdep_1_bicg_avm_writedata,
    output wire [31:0] out_memdep_2_bicg_avm_address,
    output wire [0:0] out_memdep_2_bicg_avm_burstcount,
    output wire [3:0] out_memdep_2_bicg_avm_byteenable,
    output wire [0:0] out_memdep_2_bicg_avm_enable,
    output wire [0:0] out_memdep_2_bicg_avm_read,
    output wire [0:0] out_memdep_2_bicg_avm_write,
    output wire [31:0] out_memdep_2_bicg_avm_writedata,
    output wire [31:0] out_memdep_3_bicg_avm_address,
    output wire [0:0] out_memdep_3_bicg_avm_burstcount,
    output wire [3:0] out_memdep_3_bicg_avm_byteenable,
    output wire [0:0] out_memdep_3_bicg_avm_enable,
    output wire [0:0] out_memdep_3_bicg_avm_read,
    output wire [0:0] out_memdep_3_bicg_avm_write,
    output wire [31:0] out_memdep_3_bicg_avm_writedata,
    output wire [31:0] out_memdep_4_bicg_avm_address,
    output wire [0:0] out_memdep_4_bicg_avm_burstcount,
    output wire [3:0] out_memdep_4_bicg_avm_byteenable,
    output wire [0:0] out_memdep_4_bicg_avm_enable,
    output wire [0:0] out_memdep_4_bicg_avm_read,
    output wire [0:0] out_memdep_4_bicg_avm_write,
    output wire [31:0] out_memdep_4_bicg_avm_writedata,
    output wire [31:0] out_memdep_5_bicg_avm_address,
    output wire [0:0] out_memdep_5_bicg_avm_burstcount,
    output wire [3:0] out_memdep_5_bicg_avm_byteenable,
    output wire [0:0] out_memdep_5_bicg_avm_enable,
    output wire [0:0] out_memdep_5_bicg_avm_read,
    output wire [0:0] out_memdep_5_bicg_avm_write,
    output wire [31:0] out_memdep_5_bicg_avm_writedata,
    output wire [31:0] out_memdep_6_bicg_avm_address,
    output wire [0:0] out_memdep_6_bicg_avm_burstcount,
    output wire [3:0] out_memdep_6_bicg_avm_byteenable,
    output wire [0:0] out_memdep_6_bicg_avm_enable,
    output wire [0:0] out_memdep_6_bicg_avm_read,
    output wire [0:0] out_memdep_6_bicg_avm_write,
    output wire [31:0] out_memdep_6_bicg_avm_writedata,
    output wire [63:0] out_memdep_7_bicg_avm_address,
    output wire [0:0] out_memdep_7_bicg_avm_burstcount,
    output wire [7:0] out_memdep_7_bicg_avm_byteenable,
    output wire [0:0] out_memdep_7_bicg_avm_enable,
    output wire [0:0] out_memdep_7_bicg_avm_read,
    output wire [0:0] out_memdep_7_bicg_avm_write,
    output wire [63:0] out_memdep_7_bicg_avm_writedata,
    output wire [31:0] out_memdep_bicg_avm_address,
    output wire [0:0] out_memdep_bicg_avm_burstcount,
    output wire [3:0] out_memdep_bicg_avm_byteenable,
    output wire [0:0] out_memdep_bicg_avm_enable,
    output wire [0:0] out_memdep_bicg_avm_read,
    output wire [0:0] out_memdep_bicg_avm_write,
    output wire [31:0] out_memdep_bicg_avm_writedata,
    output wire [0:0] out_o_active_memdep_7,
    output wire [0:0] out_stall_out,
    output wire [63:0] out_unnamed_bicg10_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg10_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg10_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg10_bicg_avm_writedata,
    output wire [63:0] out_unnamed_bicg11_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg11_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg11_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg11_bicg_avm_writedata,
    output wire [63:0] out_unnamed_bicg12_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg12_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg12_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg12_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg13_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg13_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg13_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg13_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg15_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg15_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg15_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg16_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg16_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg16_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg17_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg17_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg17_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg17_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg18_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg18_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg18_bicg_avm_writedata,
    output wire [31:0] out_unnamed_bicg20_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_burstcount,
    output wire [3:0] out_unnamed_bicg20_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg20_bicg_avm_write,
    output wire [31:0] out_unnamed_bicg20_bicg_avm_writedata,
    output wire [63:0] out_unnamed_bicg8_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg8_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg8_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg8_bicg_avm_writedata,
    output wire [63:0] out_unnamed_bicg9_bicg_avm_address,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_burstcount,
    output wire [7:0] out_unnamed_bicg9_bicg_avm_byteenable,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_enable,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_read,
    output wire [0:0] out_unnamed_bicg9_bicg_avm_write,
    output wire [63:0] out_unnamed_bicg9_bicg_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_bicg_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_bicg_B10_out_feedback_out_1;
    wire [0:0] bb_bicg_B10_out_feedback_valid_out_1;
    wire [0:0] bb_bicg_B10_out_iowr_bl_return_bicg_o_fifodata;
    wire [0:0] bb_bicg_B10_out_iowr_bl_return_bicg_o_fifovalid;
    wire [0:0] bb_bicg_B10_out_stall_in_0;
    wire [0:0] bb_bicg_B10_out_stall_out_0;
    wire [0:0] bb_bicg_B10_out_valid_out_0;
    wire [0:0] bb_bicg_B11_out_exiting_stall_out;
    wire [0:0] bb_bicg_B11_out_exiting_valid_out;
    wire [0:0] bb_bicg_B11_out_lsu_memdep_7_o_active;
    wire [63:0] bb_bicg_B11_out_memdep_7_bicg_avm_address;
    wire [0:0] bb_bicg_B11_out_memdep_7_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B11_out_memdep_7_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B11_out_memdep_7_bicg_avm_enable;
    wire [0:0] bb_bicg_B11_out_memdep_7_bicg_avm_read;
    wire [0:0] bb_bicg_B11_out_memdep_7_bicg_avm_write;
    wire [63:0] bb_bicg_B11_out_memdep_7_bicg_avm_writedata;
    wire [0:0] bb_bicg_B11_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B11_out_stall_in_0;
    wire [0:0] bb_bicg_B11_out_stall_out_0;
    wire [0:0] bb_bicg_B11_out_stall_out_1;
    wire [31:0] bb_bicg_B11_out_unnamed_bicg20_bicg_avm_address;
    wire [0:0] bb_bicg_B11_out_unnamed_bicg20_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B11_out_unnamed_bicg20_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B11_out_unnamed_bicg20_bicg_avm_enable;
    wire [0:0] bb_bicg_B11_out_unnamed_bicg20_bicg_avm_read;
    wire [0:0] bb_bicg_B11_out_unnamed_bicg20_bicg_avm_write;
    wire [31:0] bb_bicg_B11_out_unnamed_bicg20_bicg_avm_writedata;
    wire [0:0] bb_bicg_B11_out_valid_in_0;
    wire [0:0] bb_bicg_B11_out_valid_in_1;
    wire [0:0] bb_bicg_B11_out_valid_out_0;
    wire [0:0] bb_bicg_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_bicg_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_bicg_B1_start_out_intel_reserved_ffwd_1_0;
    wire [63:0] bb_bicg_B1_start_out_intel_reserved_ffwd_2_0;
    wire [63:0] bb_bicg_B1_start_out_intel_reserved_ffwd_3_0;
    wire [63:0] bb_bicg_B1_start_out_intel_reserved_ffwd_4_0;
    wire [0:0] bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full;
    wire [0:0] bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready;
    wire [0:0] bb_bicg_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B1_start_out_stall_out_0;
    wire [0:0] bb_bicg_B1_start_out_valid_in_0;
    wire [0:0] bb_bicg_B1_start_out_valid_in_1;
    wire [0:0] bb_bicg_B1_start_out_valid_out_0;
    wire [0:0] bb_bicg_B2_out_stall_out_0;
    wire [0:0] bb_bicg_B2_out_valid_out_0;
    wire [0:0] bb_bicg_B3_out_c0_exe2;
    wire [31:0] bb_bicg_B3_out_c0_exe3;
    wire [0:0] bb_bicg_B3_out_exiting_stall_out;
    wire [0:0] bb_bicg_B3_out_exiting_valid_out;
    wire [0:0] bb_bicg_B3_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B3_out_stall_out_0;
    wire [0:0] bb_bicg_B3_out_stall_out_1;
    wire [0:0] bb_bicg_B3_out_valid_in_0;
    wire [0:0] bb_bicg_B3_out_valid_in_1;
    wire [0:0] bb_bicg_B3_out_valid_out_0;
    wire [31:0] bb_bicg_B4_out_memdep_1_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_memdep_1_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_out_memdep_1_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_memdep_1_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_memdep_1_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_memdep_1_bicg_avm_write;
    wire [31:0] bb_bicg_B4_out_memdep_1_bicg_avm_writedata;
    wire [31:0] bb_bicg_B4_out_memdep_2_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_memdep_2_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_out_memdep_2_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_memdep_2_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_memdep_2_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_memdep_2_bicg_avm_write;
    wire [31:0] bb_bicg_B4_out_memdep_2_bicg_avm_writedata;
    wire [31:0] bb_bicg_B4_out_memdep_3_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_memdep_3_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_out_memdep_3_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_memdep_3_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_memdep_3_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_memdep_3_bicg_avm_write;
    wire [31:0] bb_bicg_B4_out_memdep_3_bicg_avm_writedata;
    wire [31:0] bb_bicg_B4_out_memdep_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B4_out_memdep_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_memdep_bicg_avm_write;
    wire [31:0] bb_bicg_B4_out_memdep_bicg_avm_writedata;
    wire [0:0] bb_bicg_B4_out_stall_in_0;
    wire [0:0] bb_bicg_B4_out_stall_out_0;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg10_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg10_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_out_unnamed_bicg10_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg10_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg10_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg10_bicg_avm_write;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg10_bicg_avm_writedata;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg11_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg11_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_out_unnamed_bicg11_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg11_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg11_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg11_bicg_avm_write;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg11_bicg_avm_writedata;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg8_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg8_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_out_unnamed_bicg8_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg8_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg8_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg8_bicg_avm_write;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg8_bicg_avm_writedata;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg9_bicg_avm_address;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg9_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B4_out_unnamed_bicg9_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg9_bicg_avm_enable;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg9_bicg_avm_read;
    wire [0:0] bb_bicg_B4_out_unnamed_bicg9_bicg_avm_write;
    wire [63:0] bb_bicg_B4_out_unnamed_bicg9_bicg_avm_writedata;
    wire [0:0] bb_bicg_B4_out_valid_out_0;
    wire [63:0] bb_bicg_B5_out_c0_exe3108;
    wire [0:0] bb_bicg_B5_out_c0_exe7;
    wire [0:0] bb_bicg_B5_out_exiting_stall_out;
    wire [0:0] bb_bicg_B5_out_exiting_valid_out;
    wire [31:0] bb_bicg_B5_out_memdep_4_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_memdep_4_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B5_out_memdep_4_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_memdep_4_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_memdep_4_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_memdep_4_bicg_avm_write;
    wire [31:0] bb_bicg_B5_out_memdep_4_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B5_out_stall_in_0;
    wire [0:0] bb_bicg_B5_out_stall_out_0;
    wire [0:0] bb_bicg_B5_out_stall_out_1;
    wire [63:0] bb_bicg_B5_out_unnamed_bicg12_bicg_avm_address;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg12_bicg_avm_burstcount;
    wire [7:0] bb_bicg_B5_out_unnamed_bicg12_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg12_bicg_avm_enable;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg12_bicg_avm_read;
    wire [0:0] bb_bicg_B5_out_unnamed_bicg12_bicg_avm_write;
    wire [63:0] bb_bicg_B5_out_unnamed_bicg12_bicg_avm_writedata;
    wire [0:0] bb_bicg_B5_out_valid_in_0;
    wire [0:0] bb_bicg_B5_out_valid_in_1;
    wire [0:0] bb_bicg_B5_out_valid_out_0;
    wire [0:0] bb_bicg_B6_out_stall_out_0;
    wire [0:0] bb_bicg_B6_out_valid_out_0;
    wire [63:0] bb_bicg_B7_out_c0_exe1119;
    wire [63:0] bb_bicg_B7_out_c0_exe2120;
    wire [31:0] bb_bicg_B7_out_c0_exe3121;
    wire [0:0] bb_bicg_B7_out_c0_exe4122;
    wire [0:0] bb_bicg_B7_out_c0_exe5123;
    wire [0:0] bb_bicg_B7_out_exiting_stall_out;
    wire [0:0] bb_bicg_B7_out_exiting_valid_out;
    wire [0:0] bb_bicg_B7_out_feedback_stall_out_18;
    wire [0:0] bb_bicg_B7_out_memdep_phi_pop18;
    wire [0:0] bb_bicg_B7_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B7_out_stall_out_0;
    wire [0:0] bb_bicg_B7_out_stall_out_1;
    wire [31:0] bb_bicg_B7_out_unnamed_bicg13_bicg_avm_address;
    wire [0:0] bb_bicg_B7_out_unnamed_bicg13_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B7_out_unnamed_bicg13_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B7_out_unnamed_bicg13_bicg_avm_enable;
    wire [0:0] bb_bicg_B7_out_unnamed_bicg13_bicg_avm_read;
    wire [0:0] bb_bicg_B7_out_unnamed_bicg13_bicg_avm_write;
    wire [31:0] bb_bicg_B7_out_unnamed_bicg13_bicg_avm_writedata;
    wire [0:0] bb_bicg_B7_out_valid_in_0;
    wire [0:0] bb_bicg_B7_out_valid_in_1;
    wire [0:0] bb_bicg_B7_out_valid_out_0;
    wire [0:0] bb_bicg_B8_out_feedback_out_18;
    wire [0:0] bb_bicg_B8_out_feedback_valid_out_18;
    wire [31:0] bb_bicg_B8_out_memdep_5_bicg_avm_address;
    wire [0:0] bb_bicg_B8_out_memdep_5_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B8_out_memdep_5_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B8_out_memdep_5_bicg_avm_enable;
    wire [0:0] bb_bicg_B8_out_memdep_5_bicg_avm_read;
    wire [0:0] bb_bicg_B8_out_memdep_5_bicg_avm_write;
    wire [31:0] bb_bicg_B8_out_memdep_5_bicg_avm_writedata;
    wire [0:0] bb_bicg_B8_out_stall_in_0;
    wire [0:0] bb_bicg_B8_out_stall_out_0;
    wire [0:0] bb_bicg_B8_out_valid_out_0;
    wire [0:0] bb_bicg_B9_out_c0_exe2141;
    wire [31:0] bb_bicg_B9_out_c0_exe3142;
    wire [63:0] bb_bicg_B9_out_c0_exe5144;
    wire [0:0] bb_bicg_B9_out_c0_exe6145;
    wire [0:0] bb_bicg_B9_out_c0_exe7146;
    wire [0:0] bb_bicg_B9_out_exiting_stall_out;
    wire [0:0] bb_bicg_B9_out_exiting_valid_out;
    wire [31:0] bb_bicg_B9_out_memdep_6_bicg_avm_address;
    wire [0:0] bb_bicg_B9_out_memdep_6_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_out_memdep_6_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_out_memdep_6_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_out_memdep_6_bicg_avm_read;
    wire [0:0] bb_bicg_B9_out_memdep_6_bicg_avm_write;
    wire [31:0] bb_bicg_B9_out_memdep_6_bicg_avm_writedata;
    wire [0:0] bb_bicg_B9_out_pipeline_valid_out;
    wire [0:0] bb_bicg_B9_out_stall_in_0;
    wire [0:0] bb_bicg_B9_out_stall_out_0;
    wire [0:0] bb_bicg_B9_out_stall_out_1;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg15_bicg_avm_address;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg15_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_out_unnamed_bicg15_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg15_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg15_bicg_avm_read;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg15_bicg_avm_write;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg15_bicg_avm_writedata;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg16_bicg_avm_address;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg16_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_out_unnamed_bicg16_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg16_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg16_bicg_avm_read;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg16_bicg_avm_write;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg16_bicg_avm_writedata;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg17_bicg_avm_address;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg17_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_out_unnamed_bicg17_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg17_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg17_bicg_avm_read;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg17_bicg_avm_write;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg17_bicg_avm_writedata;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg18_bicg_avm_address;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg18_bicg_avm_burstcount;
    wire [3:0] bb_bicg_B9_out_unnamed_bicg18_bicg_avm_byteenable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg18_bicg_avm_enable;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg18_bicg_avm_read;
    wire [0:0] bb_bicg_B9_out_unnamed_bicg18_bicg_avm_write;
    wire [31:0] bb_bicg_B9_out_unnamed_bicg18_bicg_avm_writedata;
    wire [0:0] bb_bicg_B9_out_valid_in_0;
    wire [0:0] bb_bicg_B9_out_valid_in_1;
    wire [0:0] bb_bicg_B9_out_valid_out_0;
    wire [0:0] bicg_B1_start_x_i_capture;
    wire bicg_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_clear;
    wire bicg_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_enable;
    wire bicg_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_shift;
    wire bicg_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_stall_pred;
    wire bicg_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_stall_succ;
    wire bicg_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_valid_loop;
    wire bicg_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_valid_pred;
    wire bicg_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B1_start_x_i_valid_succ;
    wire bicg_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_capture;
    wire bicg_B11_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_clear;
    wire bicg_B11_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_enable;
    wire bicg_B11_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_shift;
    wire bicg_B11_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_stall_pred;
    wire bicg_B11_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_stall_succ;
    wire bicg_B11_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_valid_loop;
    wire bicg_B11_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_valid_pred;
    wire bicg_B11_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B11_x_i_valid_succ;
    wire bicg_B11_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_capture;
    wire bicg_B3_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_clear;
    wire bicg_B3_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_enable;
    wire bicg_B3_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_shift;
    wire bicg_B3_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_stall_pred;
    wire bicg_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_stall_succ;
    wire bicg_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_valid_loop;
    wire bicg_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_valid_pred;
    wire bicg_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B3_x_i_valid_succ;
    wire bicg_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_capture;
    wire bicg_B5_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_clear;
    wire bicg_B5_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_enable;
    wire bicg_B5_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_shift;
    wire bicg_B5_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_stall_pred;
    wire bicg_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_stall_succ;
    wire bicg_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_valid_loop;
    wire bicg_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_valid_pred;
    wire bicg_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B5_x_i_valid_succ;
    wire bicg_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_capture;
    wire bicg_B7_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_clear;
    wire bicg_B7_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_enable;
    wire bicg_B7_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_shift;
    wire bicg_B7_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_stall_pred;
    wire bicg_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_stall_succ;
    wire bicg_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_valid_loop;
    wire bicg_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_valid_pred;
    wire bicg_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B7_x_i_valid_succ;
    wire bicg_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_capture;
    wire bicg_B9_x_i_capture_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_clear;
    wire bicg_B9_x_i_clear_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_enable;
    wire bicg_B9_x_i_enable_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_shift;
    wire bicg_B9_x_i_shift_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_stall_pred;
    wire bicg_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_stall_succ;
    wire bicg_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_valid_loop;
    wire bicg_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_valid_pred;
    wire bicg_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] bicg_B9_x_i_valid_succ;
    wire bicg_B9_x_i_valid_succ_bitsignaltemp;
    wire [1:0] c_i2_052_q;
    wire [63:0] c_i32_addrspace_66_undef36_q;
    wire [31:0] c_i32_undef19_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_bicg6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_bicg6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_bicg2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_bicg2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_bicg1_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_bicg1_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_bicg0_out_o_stall;
    wire [0:0] loop_limiter_bicg0_out_o_valid;
    wire [0:0] loop_limiter_bicg1_out_o_stall;
    wire [0:0] loop_limiter_bicg1_out_o_valid;
    wire [0:0] loop_limiter_bicg2_out_o_stall;
    wire [0:0] loop_limiter_bicg2_out_o_valid;
    wire [0:0] loop_limiter_bicg3_out_o_stall;
    wire [0:0] loop_limiter_bicg3_out_o_valid;
    wire [0:0] loop_limiter_bicg4_out_o_stall;
    wire [0:0] loop_limiter_bicg4_out_o_valid;
    wire [0:0] bb_bicg_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_bicg_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_bicg_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_bicg_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_bicg_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B8_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_bicg_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_bicg_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_bicg_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_bicg_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_bicg_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_bicg_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_bicg_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_bicg_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [63:0] bb_bicg_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_bicg_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_bicg_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_bicg_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_bicg_B9_sr_1_aunroll_x_out_o_data_6_tpl;


    // c_i2_052(CONSTANT,62)
    assign c_i2_052_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo(BLACKBOX,82)
    bicg_i_llvm_fpga_pipeline_keep_going69_1_valid_fifo thei_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo (
        .in_data_in(c_i2_052_q),
        .in_stall_in(bb_bicg_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going69_bicg1_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo(BLACKBOX,80)
    bicg_i_llvm_fpga_pipeline_keep_going65_2_valid_fifo thei_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo (
        .in_data_in(c_i2_052_q),
        .in_stall_in(bb_bicg_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going65_bicg2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo(BLACKBOX,78)
    bicg_i_llvm_fpga_pipeline_keep_going51_6_valid_fifo thei_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo (
        .in_data_in(c_i2_052_q),
        .in_stall_in(bb_bicg_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going51_bicg6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo(BLACKBOX,76)
    bicg_i_llvm_fpga_pipeline_keep_going44_2_valid_fifo thei_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo (
        .in_data_in(c_i2_052_q),
        .in_stall_in(bb_bicg_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going44_bicg2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo(BLACKBOX,74)
    bicg_i_llvm_fpga_pipeline_keep_going30_6_valid_fifo thei_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo (
        .in_data_in(c_i2_052_q),
        .in_stall_in(bb_bicg_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going30_bicg6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B8_sr_0_aunroll_x(BLACKBOX,327)
    bicg_bb_B8_sr_0 thebb_bicg_B8_sr_0_aunroll_x (
        .in_i_stall(bb_bicg_B8_out_stall_out_0),
        .in_i_valid(bb_bicg_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_bicg_B9_out_c0_exe2141),
        .in_i_data_1_tpl(bb_bicg_B9_out_c0_exe3142),
        .in_i_data_2_tpl(bb_bicg_B9_out_c0_exe5144),
        .in_i_data_3_tpl(bb_bicg_B9_out_c0_exe6145),
        .in_i_data_4_tpl(bb_bicg_B9_out_c0_exe7146),
        .out_o_stall(bb_bicg_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_bicg_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_bicg_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_bicg_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_bicg_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going30_bicg6_sr(BLACKBOX,73)
    bicg_i_llvm_fpga_pipeline_keep_going30_6_sr thei_llvm_fpga_pipeline_keep_going30_bicg6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going30_bicg6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going30_bicg6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_66_undef36(CONSTANT,68)
    assign c_i32_addrspace_66_undef36_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_bicg_B9(BLACKBOX,13)
    bicg_bb_B9 thebb_bicg_B9 (
        .in_arrayidx41686_0(c_i32_addrspace_66_undef36_q),
        .in_arrayidx41686_1(bb_bicg_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_exitcond1687_0(GND_q),
        .in_exitcond1687_1(bb_bicg_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_flush(in_start),
        .in_forked27_0(GND_q),
        .in_forked27_1(bb_bicg_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom4085_0(c_i32_addrspace_66_undef36_q),
        .in_idxprom4085_1(bb_bicg_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_6_bicg_avm_readdata(in_memdep_6_bicg_avm_readdata),
        .in_memdep_6_bicg_avm_readdatavalid(in_memdep_6_bicg_avm_readdatavalid),
        .in_memdep_6_bicg_avm_waitrequest(in_memdep_6_bicg_avm_waitrequest),
        .in_memdep_6_bicg_avm_writeack(in_memdep_6_bicg_avm_writeack),
        .in_memdep_phi_pop1889_0(GND_q),
        .in_memdep_phi_pop1889_1(bb_bicg_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp4288_0(GND_q),
        .in_notcmp4288_1(bb_bicg_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going30_bicg6_sr_out_o_stall),
        .in_stall_in_0(bb_bicg_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_bicg14_0(c_i32_undef19_q),
        .in_unnamed_bicg14_1(bb_bicg_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_bicg15_bicg_avm_readdata(in_unnamed_bicg15_bicg_avm_readdata),
        .in_unnamed_bicg15_bicg_avm_readdatavalid(in_unnamed_bicg15_bicg_avm_readdatavalid),
        .in_unnamed_bicg15_bicg_avm_waitrequest(in_unnamed_bicg15_bicg_avm_waitrequest),
        .in_unnamed_bicg15_bicg_avm_writeack(in_unnamed_bicg15_bicg_avm_writeack),
        .in_unnamed_bicg16_bicg_avm_readdata(in_unnamed_bicg16_bicg_avm_readdata),
        .in_unnamed_bicg16_bicg_avm_readdatavalid(in_unnamed_bicg16_bicg_avm_readdatavalid),
        .in_unnamed_bicg16_bicg_avm_waitrequest(in_unnamed_bicg16_bicg_avm_waitrequest),
        .in_unnamed_bicg16_bicg_avm_writeack(in_unnamed_bicg16_bicg_avm_writeack),
        .in_unnamed_bicg17_bicg_avm_readdata(in_unnamed_bicg17_bicg_avm_readdata),
        .in_unnamed_bicg17_bicg_avm_readdatavalid(in_unnamed_bicg17_bicg_avm_readdatavalid),
        .in_unnamed_bicg17_bicg_avm_waitrequest(in_unnamed_bicg17_bicg_avm_waitrequest),
        .in_unnamed_bicg17_bicg_avm_writeack(in_unnamed_bicg17_bicg_avm_writeack),
        .in_unnamed_bicg18_bicg_avm_readdata(in_unnamed_bicg18_bicg_avm_readdata),
        .in_unnamed_bicg18_bicg_avm_readdatavalid(in_unnamed_bicg18_bicg_avm_readdatavalid),
        .in_unnamed_bicg18_bicg_avm_waitrequest(in_unnamed_bicg18_bicg_avm_waitrequest),
        .in_unnamed_bicg18_bicg_avm_writeack(in_unnamed_bicg18_bicg_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going30_bicg6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_bicg_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2141(bb_bicg_B9_out_c0_exe2141),
        .out_c0_exe3142(bb_bicg_B9_out_c0_exe3142),
        .out_c0_exe5144(bb_bicg_B9_out_c0_exe5144),
        .out_c0_exe6145(bb_bicg_B9_out_c0_exe6145),
        .out_c0_exe7146(bb_bicg_B9_out_c0_exe7146),
        .out_exiting_stall_out(bb_bicg_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_bicg_B9_out_exiting_valid_out),
        .out_memdep_6_bicg_avm_address(bb_bicg_B9_out_memdep_6_bicg_avm_address),
        .out_memdep_6_bicg_avm_burstcount(bb_bicg_B9_out_memdep_6_bicg_avm_burstcount),
        .out_memdep_6_bicg_avm_byteenable(bb_bicg_B9_out_memdep_6_bicg_avm_byteenable),
        .out_memdep_6_bicg_avm_enable(bb_bicg_B9_out_memdep_6_bicg_avm_enable),
        .out_memdep_6_bicg_avm_read(bb_bicg_B9_out_memdep_6_bicg_avm_read),
        .out_memdep_6_bicg_avm_write(bb_bicg_B9_out_memdep_6_bicg_avm_write),
        .out_memdep_6_bicg_avm_writedata(bb_bicg_B9_out_memdep_6_bicg_avm_writedata),
        .out_pipeline_valid_out(bb_bicg_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_bicg_B9_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B9_out_stall_out_0),
        .out_stall_out_1(bb_bicg_B9_out_stall_out_1),
        .out_unnamed_bicg15_bicg_avm_address(bb_bicg_B9_out_unnamed_bicg15_bicg_avm_address),
        .out_unnamed_bicg15_bicg_avm_burstcount(bb_bicg_B9_out_unnamed_bicg15_bicg_avm_burstcount),
        .out_unnamed_bicg15_bicg_avm_byteenable(bb_bicg_B9_out_unnamed_bicg15_bicg_avm_byteenable),
        .out_unnamed_bicg15_bicg_avm_enable(bb_bicg_B9_out_unnamed_bicg15_bicg_avm_enable),
        .out_unnamed_bicg15_bicg_avm_read(bb_bicg_B9_out_unnamed_bicg15_bicg_avm_read),
        .out_unnamed_bicg15_bicg_avm_write(bb_bicg_B9_out_unnamed_bicg15_bicg_avm_write),
        .out_unnamed_bicg15_bicg_avm_writedata(bb_bicg_B9_out_unnamed_bicg15_bicg_avm_writedata),
        .out_unnamed_bicg16_bicg_avm_address(bb_bicg_B9_out_unnamed_bicg16_bicg_avm_address),
        .out_unnamed_bicg16_bicg_avm_burstcount(bb_bicg_B9_out_unnamed_bicg16_bicg_avm_burstcount),
        .out_unnamed_bicg16_bicg_avm_byteenable(bb_bicg_B9_out_unnamed_bicg16_bicg_avm_byteenable),
        .out_unnamed_bicg16_bicg_avm_enable(bb_bicg_B9_out_unnamed_bicg16_bicg_avm_enable),
        .out_unnamed_bicg16_bicg_avm_read(bb_bicg_B9_out_unnamed_bicg16_bicg_avm_read),
        .out_unnamed_bicg16_bicg_avm_write(bb_bicg_B9_out_unnamed_bicg16_bicg_avm_write),
        .out_unnamed_bicg16_bicg_avm_writedata(bb_bicg_B9_out_unnamed_bicg16_bicg_avm_writedata),
        .out_unnamed_bicg17_bicg_avm_address(bb_bicg_B9_out_unnamed_bicg17_bicg_avm_address),
        .out_unnamed_bicg17_bicg_avm_burstcount(bb_bicg_B9_out_unnamed_bicg17_bicg_avm_burstcount),
        .out_unnamed_bicg17_bicg_avm_byteenable(bb_bicg_B9_out_unnamed_bicg17_bicg_avm_byteenable),
        .out_unnamed_bicg17_bicg_avm_enable(bb_bicg_B9_out_unnamed_bicg17_bicg_avm_enable),
        .out_unnamed_bicg17_bicg_avm_read(bb_bicg_B9_out_unnamed_bicg17_bicg_avm_read),
        .out_unnamed_bicg17_bicg_avm_write(bb_bicg_B9_out_unnamed_bicg17_bicg_avm_write),
        .out_unnamed_bicg17_bicg_avm_writedata(bb_bicg_B9_out_unnamed_bicg17_bicg_avm_writedata),
        .out_unnamed_bicg18_bicg_avm_address(bb_bicg_B9_out_unnamed_bicg18_bicg_avm_address),
        .out_unnamed_bicg18_bicg_avm_burstcount(bb_bicg_B9_out_unnamed_bicg18_bicg_avm_burstcount),
        .out_unnamed_bicg18_bicg_avm_byteenable(bb_bicg_B9_out_unnamed_bicg18_bicg_avm_byteenable),
        .out_unnamed_bicg18_bicg_avm_enable(bb_bicg_B9_out_unnamed_bicg18_bicg_avm_enable),
        .out_unnamed_bicg18_bicg_avm_read(bb_bicg_B9_out_unnamed_bicg18_bicg_avm_read),
        .out_unnamed_bicg18_bicg_avm_write(bb_bicg_B9_out_unnamed_bicg18_bicg_avm_write),
        .out_unnamed_bicg18_bicg_avm_writedata(bb_bicg_B9_out_unnamed_bicg18_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B9_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B9_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B9_sr_1_aunroll_x(BLACKBOX,328)
    bicg_bb_B9_sr_1 thebb_bicg_B9_sr_1_aunroll_x (
        .in_i_stall(bb_bicg_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_bicg4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_bicg_B7_out_c0_exe1119),
        .in_i_data_2_tpl(bb_bicg_B7_out_c0_exe2120),
        .in_i_data_3_tpl(bb_bicg_B7_out_c0_exe3121),
        .in_i_data_4_tpl(bb_bicg_B7_out_c0_exe4122),
        .in_i_data_5_tpl(bb_bicg_B7_out_c0_exe5123),
        .in_i_data_6_tpl(bb_bicg_B7_out_memdep_phi_pop18),
        .out_o_stall(bb_bicg_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_bicg_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_bicg_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_bicg_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_bicg_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_bicg_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_bicg_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_bicg4(BLACKBOX,178)
    bicg_loop_limiter_4 theloop_limiter_bicg4 (
        .in_i_stall(bb_bicg_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_bicg_B9_out_exiting_stall_out),
        .in_i_valid(bb_bicg_B7_out_valid_out_0),
        .in_i_valid_exit(bb_bicg_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_bicg4_out_o_stall),
        .out_o_valid(loop_limiter_bicg4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going44_bicg2_sr(BLACKBOX,75)
    bicg_i_llvm_fpga_pipeline_keep_going44_2_sr thei_llvm_fpga_pipeline_keep_going44_bicg2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going44_bicg2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going44_bicg2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo(BLACKBOX,84)
    bicg_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo (
        .in_data_in(c_i2_052_q),
        .in_stall_in(bb_bicg_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B10_sr_0_aunroll_x(BLACKBOX,319)
    bicg_bb_B10_sr_0 thebb_bicg_B10_sr_0_aunroll_x (
        .in_i_stall(bb_bicg_B10_out_stall_out_0),
        .in_i_valid(bb_bicg_B11_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_bicg_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_bicg6_sr(BLACKBOX,83)
    bicg_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_bicg6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B11(BLACKBOX,4)
    bicg_bb_B11 thebb_bicg_B11 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_bicg_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_bicg_B1_start_out_intel_reserved_ffwd_2_0),
        .in_memdep_7_bicg_avm_readdata(in_memdep_7_bicg_avm_readdata),
        .in_memdep_7_bicg_avm_readdatavalid(in_memdep_7_bicg_avm_readdatavalid),
        .in_memdep_7_bicg_avm_waitrequest(in_memdep_7_bicg_avm_waitrequest),
        .in_memdep_7_bicg_avm_writeack(in_memdep_7_bicg_avm_writeack),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_bicg6_sr_out_o_stall),
        .in_stall_in_0(bb_bicg_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_bicg20_bicg_avm_readdata(in_unnamed_bicg20_bicg_avm_readdata),
        .in_unnamed_bicg20_bicg_avm_readdatavalid(in_unnamed_bicg20_bicg_avm_readdatavalid),
        .in_unnamed_bicg20_bicg_avm_waitrequest(in_unnamed_bicg20_bicg_avm_waitrequest),
        .in_unnamed_bicg20_bicg_avm_writeack(in_unnamed_bicg20_bicg_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_bicg6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_bicg_B11_sr_1_aunroll_x_out_o_valid),
        .out_exiting_stall_out(bb_bicg_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_bicg_B11_out_exiting_valid_out),
        .out_lsu_memdep_7_o_active(bb_bicg_B11_out_lsu_memdep_7_o_active),
        .out_memdep_7_bicg_avm_address(bb_bicg_B11_out_memdep_7_bicg_avm_address),
        .out_memdep_7_bicg_avm_burstcount(bb_bicg_B11_out_memdep_7_bicg_avm_burstcount),
        .out_memdep_7_bicg_avm_byteenable(bb_bicg_B11_out_memdep_7_bicg_avm_byteenable),
        .out_memdep_7_bicg_avm_enable(bb_bicg_B11_out_memdep_7_bicg_avm_enable),
        .out_memdep_7_bicg_avm_read(bb_bicg_B11_out_memdep_7_bicg_avm_read),
        .out_memdep_7_bicg_avm_write(bb_bicg_B11_out_memdep_7_bicg_avm_write),
        .out_memdep_7_bicg_avm_writedata(bb_bicg_B11_out_memdep_7_bicg_avm_writedata),
        .out_pipeline_valid_out(bb_bicg_B11_out_pipeline_valid_out),
        .out_stall_in_0(bb_bicg_B11_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B11_out_stall_out_0),
        .out_stall_out_1(bb_bicg_B11_out_stall_out_1),
        .out_unnamed_bicg20_bicg_avm_address(bb_bicg_B11_out_unnamed_bicg20_bicg_avm_address),
        .out_unnamed_bicg20_bicg_avm_burstcount(bb_bicg_B11_out_unnamed_bicg20_bicg_avm_burstcount),
        .out_unnamed_bicg20_bicg_avm_byteenable(bb_bicg_B11_out_unnamed_bicg20_bicg_avm_byteenable),
        .out_unnamed_bicg20_bicg_avm_enable(bb_bicg_B11_out_unnamed_bicg20_bicg_avm_enable),
        .out_unnamed_bicg20_bicg_avm_read(bb_bicg_B11_out_unnamed_bicg20_bicg_avm_read),
        .out_unnamed_bicg20_bicg_avm_write(bb_bicg_B11_out_unnamed_bicg20_bicg_avm_write),
        .out_unnamed_bicg20_bicg_avm_writedata(bb_bicg_B11_out_unnamed_bicg20_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B11_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B11_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B11_sr_1_aunroll_x(BLACKBOX,320)
    bicg_bb_B11_sr_1 thebb_bicg_B11_sr_1_aunroll_x (
        .in_i_stall(bb_bicg_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_bicg2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_bicg_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B11_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_bicg2(BLACKBOX,176)
    bicg_loop_limiter_2 theloop_limiter_bicg2 (
        .in_i_stall(bb_bicg_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_bicg_B11_out_exiting_stall_out),
        .in_i_valid(bb_bicg_B6_out_valid_out_0),
        .in_i_valid_exit(bb_bicg_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_bicg2_out_o_stall),
        .out_o_valid(loop_limiter_bicg2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B6(BLACKBOX,10)
    bicg_bb_B6 thebb_bicg_B6 (
        .in_stall_in_0(loop_limiter_bicg2_out_o_stall),
        .in_valid_in_0(bb_bicg_B6_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_bicg_B6_out_stall_out_0),
        .out_valid_out_0(bb_bicg_B6_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B6_sr_0_aunroll_x(BLACKBOX,325)
    bicg_bb_B6_sr_0 thebb_bicg_B6_sr_0_aunroll_x (
        .in_i_stall(bb_bicg_B6_out_stall_out_0),
        .in_i_valid(bb_bicg_B8_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_bicg_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B8(BLACKBOX,12)
    bicg_bb_B8 thebb_bicg_B8 (
        .in_c0_exe21413_0(bb_bicg_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe31424_0(bb_bicg_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe51445_0(bb_bicg_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe61456_0(bb_bicg_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe71467_0(bb_bicg_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_feedback_stall_in_18(bb_bicg_B7_out_feedback_stall_out_18),
        .in_flush(in_start),
        .in_memdep_5_bicg_avm_readdata(in_memdep_5_bicg_avm_readdata),
        .in_memdep_5_bicg_avm_readdatavalid(in_memdep_5_bicg_avm_readdatavalid),
        .in_memdep_5_bicg_avm_waitrequest(in_memdep_5_bicg_avm_waitrequest),
        .in_memdep_5_bicg_avm_writeack(in_memdep_5_bicg_avm_writeack),
        .in_stall_in_0(bb_bicg_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_bicg_B8_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_18(bb_bicg_B8_out_feedback_out_18),
        .out_feedback_valid_out_18(bb_bicg_B8_out_feedback_valid_out_18),
        .out_memdep_5_bicg_avm_address(bb_bicg_B8_out_memdep_5_bicg_avm_address),
        .out_memdep_5_bicg_avm_burstcount(bb_bicg_B8_out_memdep_5_bicg_avm_burstcount),
        .out_memdep_5_bicg_avm_byteenable(bb_bicg_B8_out_memdep_5_bicg_avm_byteenable),
        .out_memdep_5_bicg_avm_enable(bb_bicg_B8_out_memdep_5_bicg_avm_enable),
        .out_memdep_5_bicg_avm_read(bb_bicg_B8_out_memdep_5_bicg_avm_read),
        .out_memdep_5_bicg_avm_write(bb_bicg_B8_out_memdep_5_bicg_avm_write),
        .out_memdep_5_bicg_avm_writedata(bb_bicg_B8_out_memdep_5_bicg_avm_writedata),
        .out_stall_in_0(bb_bicg_B8_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B8_out_stall_out_0),
        .out_valid_out_0(bb_bicg_B8_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B7(BLACKBOX,11)
    bicg_bb_B7 thebb_bicg_B7 (
        .in_feedback_in_18(bb_bicg_B8_out_feedback_out_18),
        .in_feedback_valid_in_18(bb_bicg_B8_out_feedback_valid_out_18),
        .in_flush(in_start),
        .in_forked73_0(GND_q),
        .in_forked73_1(bb_bicg_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going44_bicg2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_bicg4_out_o_stall),
        .in_unnamed_bicg13_bicg_avm_readdata(in_unnamed_bicg13_bicg_avm_readdata),
        .in_unnamed_bicg13_bicg_avm_readdatavalid(in_unnamed_bicg13_bicg_avm_readdatavalid),
        .in_unnamed_bicg13_bicg_avm_waitrequest(in_unnamed_bicg13_bicg_avm_waitrequest),
        .in_unnamed_bicg13_bicg_avm_writeack(in_unnamed_bicg13_bicg_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going44_bicg2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_bicg_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1119(bb_bicg_B7_out_c0_exe1119),
        .out_c0_exe2120(bb_bicg_B7_out_c0_exe2120),
        .out_c0_exe3121(bb_bicg_B7_out_c0_exe3121),
        .out_c0_exe4122(bb_bicg_B7_out_c0_exe4122),
        .out_c0_exe5123(bb_bicg_B7_out_c0_exe5123),
        .out_exiting_stall_out(bb_bicg_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_bicg_B7_out_exiting_valid_out),
        .out_feedback_stall_out_18(bb_bicg_B7_out_feedback_stall_out_18),
        .out_memdep_phi_pop18(bb_bicg_B7_out_memdep_phi_pop18),
        .out_pipeline_valid_out(bb_bicg_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_bicg_B7_out_stall_out_0),
        .out_stall_out_1(bb_bicg_B7_out_stall_out_1),
        .out_unnamed_bicg13_bicg_avm_address(bb_bicg_B7_out_unnamed_bicg13_bicg_avm_address),
        .out_unnamed_bicg13_bicg_avm_burstcount(bb_bicg_B7_out_unnamed_bicg13_bicg_avm_burstcount),
        .out_unnamed_bicg13_bicg_avm_byteenable(bb_bicg_B7_out_unnamed_bicg13_bicg_avm_byteenable),
        .out_unnamed_bicg13_bicg_avm_enable(bb_bicg_B7_out_unnamed_bicg13_bicg_avm_enable),
        .out_unnamed_bicg13_bicg_avm_read(bb_bicg_B7_out_unnamed_bicg13_bicg_avm_read),
        .out_unnamed_bicg13_bicg_avm_write(bb_bicg_B7_out_unnamed_bicg13_bicg_avm_write),
        .out_unnamed_bicg13_bicg_avm_writedata(bb_bicg_B7_out_unnamed_bicg13_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B7_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B7_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B7_sr_1_aunroll_x(BLACKBOX,326)
    bicg_bb_B7_sr_1 thebb_bicg_B7_sr_1_aunroll_x (
        .in_i_stall(bb_bicg_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_bicg1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_bicg_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_bicg1(BLACKBOX,175)
    bicg_loop_limiter_1 theloop_limiter_bicg1 (
        .in_i_stall(bb_bicg_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_bicg_B7_out_exiting_stall_out),
        .in_i_valid(bb_bicg_B2_out_valid_out_0),
        .in_i_valid_exit(bb_bicg_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_bicg1_out_o_stall),
        .out_o_valid(loop_limiter_bicg1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B2(BLACKBOX,6)
    bicg_bb_B2 thebb_bicg_B2 (
        .in_stall_in_0(loop_limiter_bicg1_out_o_stall),
        .in_valid_in_0(bb_bicg_B2_sr_0_aunroll_x_out_o_valid),
        .out_stall_out_0(bb_bicg_B2_out_stall_out_0),
        .out_valid_out_0(bb_bicg_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B2_sr_0_aunroll_x(BLACKBOX,321)
    bicg_bb_B2_sr_0 thebb_bicg_B2_sr_0_aunroll_x (
        .in_i_stall(bb_bicg_B2_out_stall_out_0),
        .in_i_valid(bb_bicg_B4_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_bicg_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B4(BLACKBOX,8)
    bicg_bb_B4 thebb_bicg_B4 (
        .in_c0_exe31081_0(bb_bicg_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe72_0(bb_bicg_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_1_0(bb_bicg_B1_start_out_intel_reserved_ffwd_1_0),
        .in_intel_reserved_ffwd_2_0(bb_bicg_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_bicg_B1_start_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_bicg_B1_start_out_intel_reserved_ffwd_4_0),
        .in_memdep_1_bicg_avm_readdata(in_memdep_1_bicg_avm_readdata),
        .in_memdep_1_bicg_avm_readdatavalid(in_memdep_1_bicg_avm_readdatavalid),
        .in_memdep_1_bicg_avm_waitrequest(in_memdep_1_bicg_avm_waitrequest),
        .in_memdep_1_bicg_avm_writeack(in_memdep_1_bicg_avm_writeack),
        .in_memdep_2_bicg_avm_readdata(in_memdep_2_bicg_avm_readdata),
        .in_memdep_2_bicg_avm_readdatavalid(in_memdep_2_bicg_avm_readdatavalid),
        .in_memdep_2_bicg_avm_waitrequest(in_memdep_2_bicg_avm_waitrequest),
        .in_memdep_2_bicg_avm_writeack(in_memdep_2_bicg_avm_writeack),
        .in_memdep_3_bicg_avm_readdata(in_memdep_3_bicg_avm_readdata),
        .in_memdep_3_bicg_avm_readdatavalid(in_memdep_3_bicg_avm_readdatavalid),
        .in_memdep_3_bicg_avm_waitrequest(in_memdep_3_bicg_avm_waitrequest),
        .in_memdep_3_bicg_avm_writeack(in_memdep_3_bicg_avm_writeack),
        .in_memdep_bicg_avm_readdata(in_memdep_bicg_avm_readdata),
        .in_memdep_bicg_avm_readdatavalid(in_memdep_bicg_avm_readdatavalid),
        .in_memdep_bicg_avm_waitrequest(in_memdep_bicg_avm_waitrequest),
        .in_memdep_bicg_avm_writeack(in_memdep_bicg_avm_writeack),
        .in_stall_in_0(bb_bicg_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_bicg10_bicg_avm_readdata(in_unnamed_bicg10_bicg_avm_readdata),
        .in_unnamed_bicg10_bicg_avm_readdatavalid(in_unnamed_bicg10_bicg_avm_readdatavalid),
        .in_unnamed_bicg10_bicg_avm_waitrequest(in_unnamed_bicg10_bicg_avm_waitrequest),
        .in_unnamed_bicg10_bicg_avm_writeack(in_unnamed_bicg10_bicg_avm_writeack),
        .in_unnamed_bicg11_bicg_avm_readdata(in_unnamed_bicg11_bicg_avm_readdata),
        .in_unnamed_bicg11_bicg_avm_readdatavalid(in_unnamed_bicg11_bicg_avm_readdatavalid),
        .in_unnamed_bicg11_bicg_avm_waitrequest(in_unnamed_bicg11_bicg_avm_waitrequest),
        .in_unnamed_bicg11_bicg_avm_writeack(in_unnamed_bicg11_bicg_avm_writeack),
        .in_unnamed_bicg8_bicg_avm_readdata(in_unnamed_bicg8_bicg_avm_readdata),
        .in_unnamed_bicg8_bicg_avm_readdatavalid(in_unnamed_bicg8_bicg_avm_readdatavalid),
        .in_unnamed_bicg8_bicg_avm_waitrequest(in_unnamed_bicg8_bicg_avm_waitrequest),
        .in_unnamed_bicg8_bicg_avm_writeack(in_unnamed_bicg8_bicg_avm_writeack),
        .in_unnamed_bicg9_bicg_avm_readdata(in_unnamed_bicg9_bicg_avm_readdata),
        .in_unnamed_bicg9_bicg_avm_readdatavalid(in_unnamed_bicg9_bicg_avm_readdatavalid),
        .in_unnamed_bicg9_bicg_avm_waitrequest(in_unnamed_bicg9_bicg_avm_waitrequest),
        .in_unnamed_bicg9_bicg_avm_writeack(in_unnamed_bicg9_bicg_avm_writeack),
        .in_valid_in_0(bb_bicg_B4_sr_0_aunroll_x_out_o_valid),
        .out_memdep_1_bicg_avm_address(bb_bicg_B4_out_memdep_1_bicg_avm_address),
        .out_memdep_1_bicg_avm_burstcount(bb_bicg_B4_out_memdep_1_bicg_avm_burstcount),
        .out_memdep_1_bicg_avm_byteenable(bb_bicg_B4_out_memdep_1_bicg_avm_byteenable),
        .out_memdep_1_bicg_avm_enable(bb_bicg_B4_out_memdep_1_bicg_avm_enable),
        .out_memdep_1_bicg_avm_read(bb_bicg_B4_out_memdep_1_bicg_avm_read),
        .out_memdep_1_bicg_avm_write(bb_bicg_B4_out_memdep_1_bicg_avm_write),
        .out_memdep_1_bicg_avm_writedata(bb_bicg_B4_out_memdep_1_bicg_avm_writedata),
        .out_memdep_2_bicg_avm_address(bb_bicg_B4_out_memdep_2_bicg_avm_address),
        .out_memdep_2_bicg_avm_burstcount(bb_bicg_B4_out_memdep_2_bicg_avm_burstcount),
        .out_memdep_2_bicg_avm_byteenable(bb_bicg_B4_out_memdep_2_bicg_avm_byteenable),
        .out_memdep_2_bicg_avm_enable(bb_bicg_B4_out_memdep_2_bicg_avm_enable),
        .out_memdep_2_bicg_avm_read(bb_bicg_B4_out_memdep_2_bicg_avm_read),
        .out_memdep_2_bicg_avm_write(bb_bicg_B4_out_memdep_2_bicg_avm_write),
        .out_memdep_2_bicg_avm_writedata(bb_bicg_B4_out_memdep_2_bicg_avm_writedata),
        .out_memdep_3_bicg_avm_address(bb_bicg_B4_out_memdep_3_bicg_avm_address),
        .out_memdep_3_bicg_avm_burstcount(bb_bicg_B4_out_memdep_3_bicg_avm_burstcount),
        .out_memdep_3_bicg_avm_byteenable(bb_bicg_B4_out_memdep_3_bicg_avm_byteenable),
        .out_memdep_3_bicg_avm_enable(bb_bicg_B4_out_memdep_3_bicg_avm_enable),
        .out_memdep_3_bicg_avm_read(bb_bicg_B4_out_memdep_3_bicg_avm_read),
        .out_memdep_3_bicg_avm_write(bb_bicg_B4_out_memdep_3_bicg_avm_write),
        .out_memdep_3_bicg_avm_writedata(bb_bicg_B4_out_memdep_3_bicg_avm_writedata),
        .out_memdep_bicg_avm_address(bb_bicg_B4_out_memdep_bicg_avm_address),
        .out_memdep_bicg_avm_burstcount(bb_bicg_B4_out_memdep_bicg_avm_burstcount),
        .out_memdep_bicg_avm_byteenable(bb_bicg_B4_out_memdep_bicg_avm_byteenable),
        .out_memdep_bicg_avm_enable(bb_bicg_B4_out_memdep_bicg_avm_enable),
        .out_memdep_bicg_avm_read(bb_bicg_B4_out_memdep_bicg_avm_read),
        .out_memdep_bicg_avm_write(bb_bicg_B4_out_memdep_bicg_avm_write),
        .out_memdep_bicg_avm_writedata(bb_bicg_B4_out_memdep_bicg_avm_writedata),
        .out_stall_in_0(bb_bicg_B4_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B4_out_stall_out_0),
        .out_unnamed_bicg10_bicg_avm_address(bb_bicg_B4_out_unnamed_bicg10_bicg_avm_address),
        .out_unnamed_bicg10_bicg_avm_burstcount(bb_bicg_B4_out_unnamed_bicg10_bicg_avm_burstcount),
        .out_unnamed_bicg10_bicg_avm_byteenable(bb_bicg_B4_out_unnamed_bicg10_bicg_avm_byteenable),
        .out_unnamed_bicg10_bicg_avm_enable(bb_bicg_B4_out_unnamed_bicg10_bicg_avm_enable),
        .out_unnamed_bicg10_bicg_avm_read(bb_bicg_B4_out_unnamed_bicg10_bicg_avm_read),
        .out_unnamed_bicg10_bicg_avm_write(bb_bicg_B4_out_unnamed_bicg10_bicg_avm_write),
        .out_unnamed_bicg10_bicg_avm_writedata(bb_bicg_B4_out_unnamed_bicg10_bicg_avm_writedata),
        .out_unnamed_bicg11_bicg_avm_address(bb_bicg_B4_out_unnamed_bicg11_bicg_avm_address),
        .out_unnamed_bicg11_bicg_avm_burstcount(bb_bicg_B4_out_unnamed_bicg11_bicg_avm_burstcount),
        .out_unnamed_bicg11_bicg_avm_byteenable(bb_bicg_B4_out_unnamed_bicg11_bicg_avm_byteenable),
        .out_unnamed_bicg11_bicg_avm_enable(bb_bicg_B4_out_unnamed_bicg11_bicg_avm_enable),
        .out_unnamed_bicg11_bicg_avm_read(bb_bicg_B4_out_unnamed_bicg11_bicg_avm_read),
        .out_unnamed_bicg11_bicg_avm_write(bb_bicg_B4_out_unnamed_bicg11_bicg_avm_write),
        .out_unnamed_bicg11_bicg_avm_writedata(bb_bicg_B4_out_unnamed_bicg11_bicg_avm_writedata),
        .out_unnamed_bicg8_bicg_avm_address(bb_bicg_B4_out_unnamed_bicg8_bicg_avm_address),
        .out_unnamed_bicg8_bicg_avm_burstcount(bb_bicg_B4_out_unnamed_bicg8_bicg_avm_burstcount),
        .out_unnamed_bicg8_bicg_avm_byteenable(bb_bicg_B4_out_unnamed_bicg8_bicg_avm_byteenable),
        .out_unnamed_bicg8_bicg_avm_enable(bb_bicg_B4_out_unnamed_bicg8_bicg_avm_enable),
        .out_unnamed_bicg8_bicg_avm_read(bb_bicg_B4_out_unnamed_bicg8_bicg_avm_read),
        .out_unnamed_bicg8_bicg_avm_write(bb_bicg_B4_out_unnamed_bicg8_bicg_avm_write),
        .out_unnamed_bicg8_bicg_avm_writedata(bb_bicg_B4_out_unnamed_bicg8_bicg_avm_writedata),
        .out_unnamed_bicg9_bicg_avm_address(bb_bicg_B4_out_unnamed_bicg9_bicg_avm_address),
        .out_unnamed_bicg9_bicg_avm_burstcount(bb_bicg_B4_out_unnamed_bicg9_bicg_avm_burstcount),
        .out_unnamed_bicg9_bicg_avm_byteenable(bb_bicg_B4_out_unnamed_bicg9_bicg_avm_byteenable),
        .out_unnamed_bicg9_bicg_avm_enable(bb_bicg_B4_out_unnamed_bicg9_bicg_avm_enable),
        .out_unnamed_bicg9_bicg_avm_read(bb_bicg_B4_out_unnamed_bicg9_bicg_avm_read),
        .out_unnamed_bicg9_bicg_avm_write(bb_bicg_B4_out_unnamed_bicg9_bicg_avm_write),
        .out_unnamed_bicg9_bicg_avm_writedata(bb_bicg_B4_out_unnamed_bicg9_bicg_avm_writedata),
        .out_valid_out_0(bb_bicg_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B4_sr_0_aunroll_x(BLACKBOX,323)
    bicg_bb_B4_sr_0 thebb_bicg_B4_sr_0_aunroll_x (
        .in_i_stall(bb_bicg_B4_out_stall_out_0),
        .in_i_valid(bb_bicg_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_bicg_B5_out_c0_exe3108),
        .in_i_data_1_tpl(bb_bicg_B5_out_c0_exe7),
        .out_o_stall(bb_bicg_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_bicg_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going51_bicg6_sr(BLACKBOX,77)
    bicg_i_llvm_fpga_pipeline_keep_going51_6_sr thei_llvm_fpga_pipeline_keep_going51_bicg6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going51_bicg6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going51_bicg6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef19(CONSTANT,69)
    assign c_i32_undef19_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_bicg_B5(BLACKBOX,9)
    bicg_bb_B5 thebb_bicg_B5 (
        .in_flush(in_start),
        .in_forked48_0(GND_q),
        .in_forked48_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_043_pop1582_0(c_i32_undef19_q),
        .in_i_043_pop1582_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_0_0(bb_bicg_B1_start_out_intel_reserved_ffwd_0_0),
        .in_memdep_4_bicg_avm_readdata(in_memdep_4_bicg_avm_readdata),
        .in_memdep_4_bicg_avm_readdatavalid(in_memdep_4_bicg_avm_readdatavalid),
        .in_memdep_4_bicg_avm_waitrequest(in_memdep_4_bicg_avm_waitrequest),
        .in_memdep_4_bicg_avm_writeack(in_memdep_4_bicg_avm_writeack),
        .in_notcmp6381_0(GND_q),
        .in_notcmp6381_1(bb_bicg_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going51_bicg6_sr_out_o_stall),
        .in_stall_in_0(bb_bicg_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_bicg12_bicg_avm_readdata(in_unnamed_bicg12_bicg_avm_readdata),
        .in_unnamed_bicg12_bicg_avm_readdatavalid(in_unnamed_bicg12_bicg_avm_readdatavalid),
        .in_unnamed_bicg12_bicg_avm_waitrequest(in_unnamed_bicg12_bicg_avm_waitrequest),
        .in_unnamed_bicg12_bicg_avm_writeack(in_unnamed_bicg12_bicg_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going51_bicg6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_bicg_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3108(bb_bicg_B5_out_c0_exe3108),
        .out_c0_exe7(bb_bicg_B5_out_c0_exe7),
        .out_exiting_stall_out(bb_bicg_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_bicg_B5_out_exiting_valid_out),
        .out_memdep_4_bicg_avm_address(bb_bicg_B5_out_memdep_4_bicg_avm_address),
        .out_memdep_4_bicg_avm_burstcount(bb_bicg_B5_out_memdep_4_bicg_avm_burstcount),
        .out_memdep_4_bicg_avm_byteenable(bb_bicg_B5_out_memdep_4_bicg_avm_byteenable),
        .out_memdep_4_bicg_avm_enable(bb_bicg_B5_out_memdep_4_bicg_avm_enable),
        .out_memdep_4_bicg_avm_read(bb_bicg_B5_out_memdep_4_bicg_avm_read),
        .out_memdep_4_bicg_avm_write(bb_bicg_B5_out_memdep_4_bicg_avm_write),
        .out_memdep_4_bicg_avm_writedata(bb_bicg_B5_out_memdep_4_bicg_avm_writedata),
        .out_pipeline_valid_out(bb_bicg_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_bicg_B5_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B5_out_stall_out_0),
        .out_stall_out_1(bb_bicg_B5_out_stall_out_1),
        .out_unnamed_bicg12_bicg_avm_address(bb_bicg_B5_out_unnamed_bicg12_bicg_avm_address),
        .out_unnamed_bicg12_bicg_avm_burstcount(bb_bicg_B5_out_unnamed_bicg12_bicg_avm_burstcount),
        .out_unnamed_bicg12_bicg_avm_byteenable(bb_bicg_B5_out_unnamed_bicg12_bicg_avm_byteenable),
        .out_unnamed_bicg12_bicg_avm_enable(bb_bicg_B5_out_unnamed_bicg12_bicg_avm_enable),
        .out_unnamed_bicg12_bicg_avm_read(bb_bicg_B5_out_unnamed_bicg12_bicg_avm_read),
        .out_unnamed_bicg12_bicg_avm_write(bb_bicg_B5_out_unnamed_bicg12_bicg_avm_write),
        .out_unnamed_bicg12_bicg_avm_writedata(bb_bicg_B5_out_unnamed_bicg12_bicg_avm_writedata),
        .out_valid_in_0(bb_bicg_B5_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B5_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B5_sr_1_aunroll_x(BLACKBOX,324)
    bicg_bb_B5_sr_1 thebb_bicg_B5_sr_1_aunroll_x (
        .in_i_stall(bb_bicg_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_bicg3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_bicg_B3_out_c0_exe2),
        .in_i_data_2_tpl(bb_bicg_B3_out_c0_exe3),
        .out_o_stall(bb_bicg_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_bicg_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_bicg3(BLACKBOX,177)
    bicg_loop_limiter_3 theloop_limiter_bicg3 (
        .in_i_stall(bb_bicg_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_bicg_B5_out_exiting_stall_out),
        .in_i_valid(bb_bicg_B3_out_valid_out_0),
        .in_i_valid_exit(bb_bicg_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_bicg3_out_o_stall),
        .out_o_valid(loop_limiter_bicg3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_bicg2_sr(BLACKBOX,79)
    bicg_i_llvm_fpga_pipeline_keep_going65_2_sr thei_llvm_fpga_pipeline_keep_going65_bicg2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going65_bicg2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going65_bicg2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B3(BLACKBOX,7)
    bicg_bb_B3 thebb_bicg_B3 (
        .in_forked72_0(GND_q),
        .in_forked72_1(bb_bicg_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going65_bicg2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_bicg3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going65_bicg2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_bicg_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2(bb_bicg_B3_out_c0_exe2),
        .out_c0_exe3(bb_bicg_B3_out_c0_exe3),
        .out_exiting_stall_out(bb_bicg_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_bicg_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_bicg_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_bicg_B3_out_stall_out_0),
        .out_stall_out_1(bb_bicg_B3_out_stall_out_1),
        .out_valid_in_0(bb_bicg_B3_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B3_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B3_sr_1_aunroll_x(BLACKBOX,322)
    bicg_bb_B3_sr_1 thebb_bicg_B3_sr_1_aunroll_x (
        .in_i_stall(bb_bicg_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_bicg0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_bicg_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_bicg_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_bicg_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_bicg0(BLACKBOX,174)
    bicg_loop_limiter_0 theloop_limiter_bicg0 (
        .in_i_stall(bb_bicg_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_bicg_B3_out_exiting_stall_out),
        .in_i_valid(bb_bicg_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_bicg_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_bicg0_out_o_stall),
        .out_o_valid(loop_limiter_bicg0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going69_bicg1_sr(BLACKBOX,81)
    bicg_i_llvm_fpga_pipeline_keep_going69_1_sr thei_llvm_fpga_pipeline_keep_going69_bicg1_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo_out_stall_out),
        .in_i_valid(bb_bicg_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going69_bicg1_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going69_bicg1_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B1_start(BLACKBOX,5)
    bicg_bb_B1_start thebb_bicg_B1_start (
        .in_feedback_in_1(bb_bicg_B10_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_bicg_B10_out_feedback_valid_out_1),
        .in_iord_bl_call_bicg_i_fifodata(in_iord_bl_call_bicg_i_fifodata),
        .in_iord_bl_call_bicg_i_fifovalid(in_iord_bl_call_bicg_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going69_bicg1_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_bicg0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going69_bicg1_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_bicg_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_bicg_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_bicg_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_bicg_B1_start_out_intel_reserved_ffwd_2_0),
        .out_intel_reserved_ffwd_3_0(bb_bicg_B1_start_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_bicg_B1_start_out_intel_reserved_ffwd_4_0),
        .out_iord_bl_call_bicg_o_fifoalmost_full(bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full),
        .out_iord_bl_call_bicg_o_fifoready(bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready),
        .out_pipeline_valid_out(bb_bicg_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_bicg_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_bicg_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_bicg_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_bicg_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_bicg_B10(BLACKBOX,3)
    bicg_bb_B10 thebb_bicg_B10 (
        .in_feedback_stall_in_1(bb_bicg_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_bicg_i_fifoready(in_iowr_bl_return_bicg_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_bicg_B10_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_bicg_B10_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_bicg_B10_out_feedback_valid_out_1),
        .out_iowr_bl_return_bicg_o_fifodata(bb_bicg_B10_out_iowr_bl_return_bicg_o_fifodata),
        .out_iowr_bl_return_bicg_o_fifovalid(bb_bicg_B10_out_iowr_bl_return_bicg_o_fifovalid),
        .out_stall_in_0(bb_bicg_B10_out_stall_in_0),
        .out_stall_out_0(bb_bicg_B10_out_stall_out_0),
        .out_valid_out_0(bb_bicg_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bicg_B1_start_x(EXTIFACE,14)
    assign bicg_B1_start_x_i_capture = GND_q;
    assign bicg_B1_start_x_i_clear = GND_q;
    assign bicg_B1_start_x_i_enable = VCC_q;
    assign bicg_B1_start_x_i_shift = GND_q;
    assign bicg_B1_start_x_i_stall_pred = GND_q;
    assign bicg_B1_start_x_i_stall_succ = bb_bicg_B10_out_stall_in_0;
    assign bicg_B1_start_x_i_valid_loop = bb_bicg_B1_start_out_valid_in_0;
    assign bicg_B1_start_x_i_valid_pred = bb_bicg_B1_start_out_valid_in_1;
    assign bicg_B1_start_x_i_valid_succ = bb_bicg_B10_out_valid_out_0;
    assign bicg_B1_start_x_i_capture_bitsignaltemp = bicg_B1_start_x_i_capture[0];
    assign bicg_B1_start_x_i_clear_bitsignaltemp = bicg_B1_start_x_i_clear[0];
    assign bicg_B1_start_x_i_enable_bitsignaltemp = bicg_B1_start_x_i_enable[0];
    assign bicg_B1_start_x_i_shift_bitsignaltemp = bicg_B1_start_x_i_shift[0];
    assign bicg_B1_start_x_i_stall_pred_bitsignaltemp = bicg_B1_start_x_i_stall_pred[0];
    assign bicg_B1_start_x_i_stall_succ_bitsignaltemp = bicg_B1_start_x_i_stall_succ[0];
    assign bicg_B1_start_x_i_valid_loop_bitsignaltemp = bicg_B1_start_x_i_valid_loop[0];
    assign bicg_B1_start_x_i_valid_pred_bitsignaltemp = bicg_B1_start_x_i_valid_pred[0];
    assign bicg_B1_start_x_i_valid_succ_bitsignaltemp = bicg_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B1.start")
    ) thebicg_B1_start_x (
        .i_capture(bicg_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B11_x(EXTIFACE,15)
    assign bicg_B11_x_i_capture = GND_q;
    assign bicg_B11_x_i_clear = GND_q;
    assign bicg_B11_x_i_enable = VCC_q;
    assign bicg_B11_x_i_shift = GND_q;
    assign bicg_B11_x_i_stall_pred = loop_limiter_bicg2_out_o_stall;
    assign bicg_B11_x_i_stall_succ = bb_bicg_B11_out_stall_in_0;
    assign bicg_B11_x_i_valid_loop = bb_bicg_B11_out_valid_in_0;
    assign bicg_B11_x_i_valid_pred = bb_bicg_B11_out_valid_in_1;
    assign bicg_B11_x_i_valid_succ = bb_bicg_B11_out_valid_out_0;
    assign bicg_B11_x_i_capture_bitsignaltemp = bicg_B11_x_i_capture[0];
    assign bicg_B11_x_i_clear_bitsignaltemp = bicg_B11_x_i_clear[0];
    assign bicg_B11_x_i_enable_bitsignaltemp = bicg_B11_x_i_enable[0];
    assign bicg_B11_x_i_shift_bitsignaltemp = bicg_B11_x_i_shift[0];
    assign bicg_B11_x_i_stall_pred_bitsignaltemp = bicg_B11_x_i_stall_pred[0];
    assign bicg_B11_x_i_stall_succ_bitsignaltemp = bicg_B11_x_i_stall_succ[0];
    assign bicg_B11_x_i_valid_loop_bitsignaltemp = bicg_B11_x_i_valid_loop[0];
    assign bicg_B11_x_i_valid_pred_bitsignaltemp = bicg_B11_x_i_valid_pred[0];
    assign bicg_B11_x_i_valid_succ_bitsignaltemp = bicg_B11_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B11")
    ) thebicg_B11_x (
        .i_capture(bicg_B11_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B11_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B11_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B11_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B11_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B11_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B11_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B11_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B11_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B3_x(EXTIFACE,16)
    assign bicg_B3_x_i_capture = GND_q;
    assign bicg_B3_x_i_clear = GND_q;
    assign bicg_B3_x_i_enable = VCC_q;
    assign bicg_B3_x_i_shift = GND_q;
    assign bicg_B3_x_i_stall_pred = loop_limiter_bicg0_out_o_stall;
    assign bicg_B3_x_i_stall_succ = bb_bicg_B4_out_stall_in_0;
    assign bicg_B3_x_i_valid_loop = bb_bicg_B3_out_valid_in_0;
    assign bicg_B3_x_i_valid_pred = bb_bicg_B3_out_valid_in_1;
    assign bicg_B3_x_i_valid_succ = bb_bicg_B4_out_valid_out_0;
    assign bicg_B3_x_i_capture_bitsignaltemp = bicg_B3_x_i_capture[0];
    assign bicg_B3_x_i_clear_bitsignaltemp = bicg_B3_x_i_clear[0];
    assign bicg_B3_x_i_enable_bitsignaltemp = bicg_B3_x_i_enable[0];
    assign bicg_B3_x_i_shift_bitsignaltemp = bicg_B3_x_i_shift[0];
    assign bicg_B3_x_i_stall_pred_bitsignaltemp = bicg_B3_x_i_stall_pred[0];
    assign bicg_B3_x_i_stall_succ_bitsignaltemp = bicg_B3_x_i_stall_succ[0];
    assign bicg_B3_x_i_valid_loop_bitsignaltemp = bicg_B3_x_i_valid_loop[0];
    assign bicg_B3_x_i_valid_pred_bitsignaltemp = bicg_B3_x_i_valid_pred[0];
    assign bicg_B3_x_i_valid_succ_bitsignaltemp = bicg_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B3")
    ) thebicg_B3_x (
        .i_capture(bicg_B3_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B3_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B3_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B5_x(EXTIFACE,17)
    assign bicg_B5_x_i_capture = GND_q;
    assign bicg_B5_x_i_clear = GND_q;
    assign bicg_B5_x_i_enable = VCC_q;
    assign bicg_B5_x_i_shift = GND_q;
    assign bicg_B5_x_i_stall_pred = loop_limiter_bicg3_out_o_stall;
    assign bicg_B5_x_i_stall_succ = bb_bicg_B5_out_stall_in_0;
    assign bicg_B5_x_i_valid_loop = bb_bicg_B5_out_valid_in_0;
    assign bicg_B5_x_i_valid_pred = bb_bicg_B5_out_valid_in_1;
    assign bicg_B5_x_i_valid_succ = bb_bicg_B5_out_valid_out_0;
    assign bicg_B5_x_i_capture_bitsignaltemp = bicg_B5_x_i_capture[0];
    assign bicg_B5_x_i_clear_bitsignaltemp = bicg_B5_x_i_clear[0];
    assign bicg_B5_x_i_enable_bitsignaltemp = bicg_B5_x_i_enable[0];
    assign bicg_B5_x_i_shift_bitsignaltemp = bicg_B5_x_i_shift[0];
    assign bicg_B5_x_i_stall_pred_bitsignaltemp = bicg_B5_x_i_stall_pred[0];
    assign bicg_B5_x_i_stall_succ_bitsignaltemp = bicg_B5_x_i_stall_succ[0];
    assign bicg_B5_x_i_valid_loop_bitsignaltemp = bicg_B5_x_i_valid_loop[0];
    assign bicg_B5_x_i_valid_pred_bitsignaltemp = bicg_B5_x_i_valid_pred[0];
    assign bicg_B5_x_i_valid_succ_bitsignaltemp = bicg_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B5")
    ) thebicg_B5_x (
        .i_capture(bicg_B5_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B5_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B5_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B7_x(EXTIFACE,18)
    assign bicg_B7_x_i_capture = GND_q;
    assign bicg_B7_x_i_clear = GND_q;
    assign bicg_B7_x_i_enable = VCC_q;
    assign bicg_B7_x_i_shift = GND_q;
    assign bicg_B7_x_i_stall_pred = loop_limiter_bicg1_out_o_stall;
    assign bicg_B7_x_i_stall_succ = bb_bicg_B8_out_stall_in_0;
    assign bicg_B7_x_i_valid_loop = bb_bicg_B7_out_valid_in_0;
    assign bicg_B7_x_i_valid_pred = bb_bicg_B7_out_valid_in_1;
    assign bicg_B7_x_i_valid_succ = bb_bicg_B8_out_valid_out_0;
    assign bicg_B7_x_i_capture_bitsignaltemp = bicg_B7_x_i_capture[0];
    assign bicg_B7_x_i_clear_bitsignaltemp = bicg_B7_x_i_clear[0];
    assign bicg_B7_x_i_enable_bitsignaltemp = bicg_B7_x_i_enable[0];
    assign bicg_B7_x_i_shift_bitsignaltemp = bicg_B7_x_i_shift[0];
    assign bicg_B7_x_i_stall_pred_bitsignaltemp = bicg_B7_x_i_stall_pred[0];
    assign bicg_B7_x_i_stall_succ_bitsignaltemp = bicg_B7_x_i_stall_succ[0];
    assign bicg_B7_x_i_valid_loop_bitsignaltemp = bicg_B7_x_i_valid_loop[0];
    assign bicg_B7_x_i_valid_pred_bitsignaltemp = bicg_B7_x_i_valid_pred[0];
    assign bicg_B7_x_i_valid_succ_bitsignaltemp = bicg_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B7")
    ) thebicg_B7_x (
        .i_capture(bicg_B7_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B7_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B7_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // bicg_B9_x(EXTIFACE,19)
    assign bicg_B9_x_i_capture = GND_q;
    assign bicg_B9_x_i_clear = GND_q;
    assign bicg_B9_x_i_enable = VCC_q;
    assign bicg_B9_x_i_shift = GND_q;
    assign bicg_B9_x_i_stall_pred = loop_limiter_bicg4_out_o_stall;
    assign bicg_B9_x_i_stall_succ = bb_bicg_B9_out_stall_in_0;
    assign bicg_B9_x_i_valid_loop = bb_bicg_B9_out_valid_in_0;
    assign bicg_B9_x_i_valid_pred = bb_bicg_B9_out_valid_in_1;
    assign bicg_B9_x_i_valid_succ = bb_bicg_B9_out_valid_out_0;
    assign bicg_B9_x_i_capture_bitsignaltemp = bicg_B9_x_i_capture[0];
    assign bicg_B9_x_i_clear_bitsignaltemp = bicg_B9_x_i_clear[0];
    assign bicg_B9_x_i_enable_bitsignaltemp = bicg_B9_x_i_enable[0];
    assign bicg_B9_x_i_shift_bitsignaltemp = bicg_B9_x_i_shift[0];
    assign bicg_B9_x_i_stall_pred_bitsignaltemp = bicg_B9_x_i_stall_pred[0];
    assign bicg_B9_x_i_stall_succ_bitsignaltemp = bicg_B9_x_i_stall_succ[0];
    assign bicg_B9_x_i_valid_loop_bitsignaltemp = bicg_B9_x_i_valid_loop[0];
    assign bicg_B9_x_i_valid_pred_bitsignaltemp = bicg_B9_x_i_valid_pred[0];
    assign bicg_B9_x_i_valid_succ_bitsignaltemp = bicg_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("bicg.B9")
    ) thebicg_B9_x (
        .i_capture(bicg_B9_x_i_capture_bitsignaltemp),
        .i_clear(bicg_B9_x_i_clear_bitsignaltemp),
        .i_enable(bicg_B9_x_i_enable_bitsignaltemp),
        .i_shift(bicg_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(bicg_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(bicg_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(bicg_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(bicg_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(bicg_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_bicg_o_fifoalmost_full(GPOUT,179)
    assign out_iord_bl_call_bicg_o_fifoalmost_full = bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoalmost_full;

    // out_iord_bl_call_bicg_o_fifoready(GPOUT,180)
    assign out_iord_bl_call_bicg_o_fifoready = bb_bicg_B1_start_out_iord_bl_call_bicg_o_fifoready;

    // out_iowr_bl_return_bicg_o_fifodata(GPOUT,181)
    assign out_iowr_bl_return_bicg_o_fifodata = bb_bicg_B10_out_iowr_bl_return_bicg_o_fifodata;

    // out_iowr_bl_return_bicg_o_fifovalid(GPOUT,182)
    assign out_iowr_bl_return_bicg_o_fifovalid = bb_bicg_B10_out_iowr_bl_return_bicg_o_fifovalid;

    // out_memdep_1_bicg_avm_address(GPOUT,183)
    assign out_memdep_1_bicg_avm_address = bb_bicg_B4_out_memdep_1_bicg_avm_address;

    // out_memdep_1_bicg_avm_burstcount(GPOUT,184)
    assign out_memdep_1_bicg_avm_burstcount = bb_bicg_B4_out_memdep_1_bicg_avm_burstcount;

    // out_memdep_1_bicg_avm_byteenable(GPOUT,185)
    assign out_memdep_1_bicg_avm_byteenable = bb_bicg_B4_out_memdep_1_bicg_avm_byteenable;

    // out_memdep_1_bicg_avm_enable(GPOUT,186)
    assign out_memdep_1_bicg_avm_enable = bb_bicg_B4_out_memdep_1_bicg_avm_enable;

    // out_memdep_1_bicg_avm_read(GPOUT,187)
    assign out_memdep_1_bicg_avm_read = bb_bicg_B4_out_memdep_1_bicg_avm_read;

    // out_memdep_1_bicg_avm_write(GPOUT,188)
    assign out_memdep_1_bicg_avm_write = bb_bicg_B4_out_memdep_1_bicg_avm_write;

    // out_memdep_1_bicg_avm_writedata(GPOUT,189)
    assign out_memdep_1_bicg_avm_writedata = bb_bicg_B4_out_memdep_1_bicg_avm_writedata;

    // out_memdep_2_bicg_avm_address(GPOUT,190)
    assign out_memdep_2_bicg_avm_address = bb_bicg_B4_out_memdep_2_bicg_avm_address;

    // out_memdep_2_bicg_avm_burstcount(GPOUT,191)
    assign out_memdep_2_bicg_avm_burstcount = bb_bicg_B4_out_memdep_2_bicg_avm_burstcount;

    // out_memdep_2_bicg_avm_byteenable(GPOUT,192)
    assign out_memdep_2_bicg_avm_byteenable = bb_bicg_B4_out_memdep_2_bicg_avm_byteenable;

    // out_memdep_2_bicg_avm_enable(GPOUT,193)
    assign out_memdep_2_bicg_avm_enable = bb_bicg_B4_out_memdep_2_bicg_avm_enable;

    // out_memdep_2_bicg_avm_read(GPOUT,194)
    assign out_memdep_2_bicg_avm_read = bb_bicg_B4_out_memdep_2_bicg_avm_read;

    // out_memdep_2_bicg_avm_write(GPOUT,195)
    assign out_memdep_2_bicg_avm_write = bb_bicg_B4_out_memdep_2_bicg_avm_write;

    // out_memdep_2_bicg_avm_writedata(GPOUT,196)
    assign out_memdep_2_bicg_avm_writedata = bb_bicg_B4_out_memdep_2_bicg_avm_writedata;

    // out_memdep_3_bicg_avm_address(GPOUT,197)
    assign out_memdep_3_bicg_avm_address = bb_bicg_B4_out_memdep_3_bicg_avm_address;

    // out_memdep_3_bicg_avm_burstcount(GPOUT,198)
    assign out_memdep_3_bicg_avm_burstcount = bb_bicg_B4_out_memdep_3_bicg_avm_burstcount;

    // out_memdep_3_bicg_avm_byteenable(GPOUT,199)
    assign out_memdep_3_bicg_avm_byteenable = bb_bicg_B4_out_memdep_3_bicg_avm_byteenable;

    // out_memdep_3_bicg_avm_enable(GPOUT,200)
    assign out_memdep_3_bicg_avm_enable = bb_bicg_B4_out_memdep_3_bicg_avm_enable;

    // out_memdep_3_bicg_avm_read(GPOUT,201)
    assign out_memdep_3_bicg_avm_read = bb_bicg_B4_out_memdep_3_bicg_avm_read;

    // out_memdep_3_bicg_avm_write(GPOUT,202)
    assign out_memdep_3_bicg_avm_write = bb_bicg_B4_out_memdep_3_bicg_avm_write;

    // out_memdep_3_bicg_avm_writedata(GPOUT,203)
    assign out_memdep_3_bicg_avm_writedata = bb_bicg_B4_out_memdep_3_bicg_avm_writedata;

    // out_memdep_4_bicg_avm_address(GPOUT,204)
    assign out_memdep_4_bicg_avm_address = bb_bicg_B5_out_memdep_4_bicg_avm_address;

    // out_memdep_4_bicg_avm_burstcount(GPOUT,205)
    assign out_memdep_4_bicg_avm_burstcount = bb_bicg_B5_out_memdep_4_bicg_avm_burstcount;

    // out_memdep_4_bicg_avm_byteenable(GPOUT,206)
    assign out_memdep_4_bicg_avm_byteenable = bb_bicg_B5_out_memdep_4_bicg_avm_byteenable;

    // out_memdep_4_bicg_avm_enable(GPOUT,207)
    assign out_memdep_4_bicg_avm_enable = bb_bicg_B5_out_memdep_4_bicg_avm_enable;

    // out_memdep_4_bicg_avm_read(GPOUT,208)
    assign out_memdep_4_bicg_avm_read = bb_bicg_B5_out_memdep_4_bicg_avm_read;

    // out_memdep_4_bicg_avm_write(GPOUT,209)
    assign out_memdep_4_bicg_avm_write = bb_bicg_B5_out_memdep_4_bicg_avm_write;

    // out_memdep_4_bicg_avm_writedata(GPOUT,210)
    assign out_memdep_4_bicg_avm_writedata = bb_bicg_B5_out_memdep_4_bicg_avm_writedata;

    // out_memdep_5_bicg_avm_address(GPOUT,211)
    assign out_memdep_5_bicg_avm_address = bb_bicg_B8_out_memdep_5_bicg_avm_address;

    // out_memdep_5_bicg_avm_burstcount(GPOUT,212)
    assign out_memdep_5_bicg_avm_burstcount = bb_bicg_B8_out_memdep_5_bicg_avm_burstcount;

    // out_memdep_5_bicg_avm_byteenable(GPOUT,213)
    assign out_memdep_5_bicg_avm_byteenable = bb_bicg_B8_out_memdep_5_bicg_avm_byteenable;

    // out_memdep_5_bicg_avm_enable(GPOUT,214)
    assign out_memdep_5_bicg_avm_enable = bb_bicg_B8_out_memdep_5_bicg_avm_enable;

    // out_memdep_5_bicg_avm_read(GPOUT,215)
    assign out_memdep_5_bicg_avm_read = bb_bicg_B8_out_memdep_5_bicg_avm_read;

    // out_memdep_5_bicg_avm_write(GPOUT,216)
    assign out_memdep_5_bicg_avm_write = bb_bicg_B8_out_memdep_5_bicg_avm_write;

    // out_memdep_5_bicg_avm_writedata(GPOUT,217)
    assign out_memdep_5_bicg_avm_writedata = bb_bicg_B8_out_memdep_5_bicg_avm_writedata;

    // out_memdep_6_bicg_avm_address(GPOUT,218)
    assign out_memdep_6_bicg_avm_address = bb_bicg_B9_out_memdep_6_bicg_avm_address;

    // out_memdep_6_bicg_avm_burstcount(GPOUT,219)
    assign out_memdep_6_bicg_avm_burstcount = bb_bicg_B9_out_memdep_6_bicg_avm_burstcount;

    // out_memdep_6_bicg_avm_byteenable(GPOUT,220)
    assign out_memdep_6_bicg_avm_byteenable = bb_bicg_B9_out_memdep_6_bicg_avm_byteenable;

    // out_memdep_6_bicg_avm_enable(GPOUT,221)
    assign out_memdep_6_bicg_avm_enable = bb_bicg_B9_out_memdep_6_bicg_avm_enable;

    // out_memdep_6_bicg_avm_read(GPOUT,222)
    assign out_memdep_6_bicg_avm_read = bb_bicg_B9_out_memdep_6_bicg_avm_read;

    // out_memdep_6_bicg_avm_write(GPOUT,223)
    assign out_memdep_6_bicg_avm_write = bb_bicg_B9_out_memdep_6_bicg_avm_write;

    // out_memdep_6_bicg_avm_writedata(GPOUT,224)
    assign out_memdep_6_bicg_avm_writedata = bb_bicg_B9_out_memdep_6_bicg_avm_writedata;

    // out_memdep_7_bicg_avm_address(GPOUT,225)
    assign out_memdep_7_bicg_avm_address = bb_bicg_B11_out_memdep_7_bicg_avm_address;

    // out_memdep_7_bicg_avm_burstcount(GPOUT,226)
    assign out_memdep_7_bicg_avm_burstcount = bb_bicg_B11_out_memdep_7_bicg_avm_burstcount;

    // out_memdep_7_bicg_avm_byteenable(GPOUT,227)
    assign out_memdep_7_bicg_avm_byteenable = bb_bicg_B11_out_memdep_7_bicg_avm_byteenable;

    // out_memdep_7_bicg_avm_enable(GPOUT,228)
    assign out_memdep_7_bicg_avm_enable = bb_bicg_B11_out_memdep_7_bicg_avm_enable;

    // out_memdep_7_bicg_avm_read(GPOUT,229)
    assign out_memdep_7_bicg_avm_read = bb_bicg_B11_out_memdep_7_bicg_avm_read;

    // out_memdep_7_bicg_avm_write(GPOUT,230)
    assign out_memdep_7_bicg_avm_write = bb_bicg_B11_out_memdep_7_bicg_avm_write;

    // out_memdep_7_bicg_avm_writedata(GPOUT,231)
    assign out_memdep_7_bicg_avm_writedata = bb_bicg_B11_out_memdep_7_bicg_avm_writedata;

    // out_memdep_bicg_avm_address(GPOUT,232)
    assign out_memdep_bicg_avm_address = bb_bicg_B4_out_memdep_bicg_avm_address;

    // out_memdep_bicg_avm_burstcount(GPOUT,233)
    assign out_memdep_bicg_avm_burstcount = bb_bicg_B4_out_memdep_bicg_avm_burstcount;

    // out_memdep_bicg_avm_byteenable(GPOUT,234)
    assign out_memdep_bicg_avm_byteenable = bb_bicg_B4_out_memdep_bicg_avm_byteenable;

    // out_memdep_bicg_avm_enable(GPOUT,235)
    assign out_memdep_bicg_avm_enable = bb_bicg_B4_out_memdep_bicg_avm_enable;

    // out_memdep_bicg_avm_read(GPOUT,236)
    assign out_memdep_bicg_avm_read = bb_bicg_B4_out_memdep_bicg_avm_read;

    // out_memdep_bicg_avm_write(GPOUT,237)
    assign out_memdep_bicg_avm_write = bb_bicg_B4_out_memdep_bicg_avm_write;

    // out_memdep_bicg_avm_writedata(GPOUT,238)
    assign out_memdep_bicg_avm_writedata = bb_bicg_B4_out_memdep_bicg_avm_writedata;

    // out_o_active_memdep_7(GPOUT,239)
    assign out_o_active_memdep_7 = bb_bicg_B11_out_lsu_memdep_7_o_active;

    // bb_bicg_B0_runOnce(BLACKBOX,2)
    bicg_bb_B0_runOnce thebb_bicg_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_bicg_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,240)
    assign out_stall_out = bb_bicg_B0_runOnce_out_stall_out_0;

    // out_unnamed_bicg10_bicg_avm_address(GPOUT,241)
    assign out_unnamed_bicg10_bicg_avm_address = bb_bicg_B4_out_unnamed_bicg10_bicg_avm_address;

    // out_unnamed_bicg10_bicg_avm_burstcount(GPOUT,242)
    assign out_unnamed_bicg10_bicg_avm_burstcount = bb_bicg_B4_out_unnamed_bicg10_bicg_avm_burstcount;

    // out_unnamed_bicg10_bicg_avm_byteenable(GPOUT,243)
    assign out_unnamed_bicg10_bicg_avm_byteenable = bb_bicg_B4_out_unnamed_bicg10_bicg_avm_byteenable;

    // out_unnamed_bicg10_bicg_avm_enable(GPOUT,244)
    assign out_unnamed_bicg10_bicg_avm_enable = bb_bicg_B4_out_unnamed_bicg10_bicg_avm_enable;

    // out_unnamed_bicg10_bicg_avm_read(GPOUT,245)
    assign out_unnamed_bicg10_bicg_avm_read = bb_bicg_B4_out_unnamed_bicg10_bicg_avm_read;

    // out_unnamed_bicg10_bicg_avm_write(GPOUT,246)
    assign out_unnamed_bicg10_bicg_avm_write = bb_bicg_B4_out_unnamed_bicg10_bicg_avm_write;

    // out_unnamed_bicg10_bicg_avm_writedata(GPOUT,247)
    assign out_unnamed_bicg10_bicg_avm_writedata = bb_bicg_B4_out_unnamed_bicg10_bicg_avm_writedata;

    // out_unnamed_bicg11_bicg_avm_address(GPOUT,248)
    assign out_unnamed_bicg11_bicg_avm_address = bb_bicg_B4_out_unnamed_bicg11_bicg_avm_address;

    // out_unnamed_bicg11_bicg_avm_burstcount(GPOUT,249)
    assign out_unnamed_bicg11_bicg_avm_burstcount = bb_bicg_B4_out_unnamed_bicg11_bicg_avm_burstcount;

    // out_unnamed_bicg11_bicg_avm_byteenable(GPOUT,250)
    assign out_unnamed_bicg11_bicg_avm_byteenable = bb_bicg_B4_out_unnamed_bicg11_bicg_avm_byteenable;

    // out_unnamed_bicg11_bicg_avm_enable(GPOUT,251)
    assign out_unnamed_bicg11_bicg_avm_enable = bb_bicg_B4_out_unnamed_bicg11_bicg_avm_enable;

    // out_unnamed_bicg11_bicg_avm_read(GPOUT,252)
    assign out_unnamed_bicg11_bicg_avm_read = bb_bicg_B4_out_unnamed_bicg11_bicg_avm_read;

    // out_unnamed_bicg11_bicg_avm_write(GPOUT,253)
    assign out_unnamed_bicg11_bicg_avm_write = bb_bicg_B4_out_unnamed_bicg11_bicg_avm_write;

    // out_unnamed_bicg11_bicg_avm_writedata(GPOUT,254)
    assign out_unnamed_bicg11_bicg_avm_writedata = bb_bicg_B4_out_unnamed_bicg11_bicg_avm_writedata;

    // out_unnamed_bicg12_bicg_avm_address(GPOUT,255)
    assign out_unnamed_bicg12_bicg_avm_address = bb_bicg_B5_out_unnamed_bicg12_bicg_avm_address;

    // out_unnamed_bicg12_bicg_avm_burstcount(GPOUT,256)
    assign out_unnamed_bicg12_bicg_avm_burstcount = bb_bicg_B5_out_unnamed_bicg12_bicg_avm_burstcount;

    // out_unnamed_bicg12_bicg_avm_byteenable(GPOUT,257)
    assign out_unnamed_bicg12_bicg_avm_byteenable = bb_bicg_B5_out_unnamed_bicg12_bicg_avm_byteenable;

    // out_unnamed_bicg12_bicg_avm_enable(GPOUT,258)
    assign out_unnamed_bicg12_bicg_avm_enable = bb_bicg_B5_out_unnamed_bicg12_bicg_avm_enable;

    // out_unnamed_bicg12_bicg_avm_read(GPOUT,259)
    assign out_unnamed_bicg12_bicg_avm_read = bb_bicg_B5_out_unnamed_bicg12_bicg_avm_read;

    // out_unnamed_bicg12_bicg_avm_write(GPOUT,260)
    assign out_unnamed_bicg12_bicg_avm_write = bb_bicg_B5_out_unnamed_bicg12_bicg_avm_write;

    // out_unnamed_bicg12_bicg_avm_writedata(GPOUT,261)
    assign out_unnamed_bicg12_bicg_avm_writedata = bb_bicg_B5_out_unnamed_bicg12_bicg_avm_writedata;

    // out_unnamed_bicg13_bicg_avm_address(GPOUT,262)
    assign out_unnamed_bicg13_bicg_avm_address = bb_bicg_B7_out_unnamed_bicg13_bicg_avm_address;

    // out_unnamed_bicg13_bicg_avm_burstcount(GPOUT,263)
    assign out_unnamed_bicg13_bicg_avm_burstcount = bb_bicg_B7_out_unnamed_bicg13_bicg_avm_burstcount;

    // out_unnamed_bicg13_bicg_avm_byteenable(GPOUT,264)
    assign out_unnamed_bicg13_bicg_avm_byteenable = bb_bicg_B7_out_unnamed_bicg13_bicg_avm_byteenable;

    // out_unnamed_bicg13_bicg_avm_enable(GPOUT,265)
    assign out_unnamed_bicg13_bicg_avm_enable = bb_bicg_B7_out_unnamed_bicg13_bicg_avm_enable;

    // out_unnamed_bicg13_bicg_avm_read(GPOUT,266)
    assign out_unnamed_bicg13_bicg_avm_read = bb_bicg_B7_out_unnamed_bicg13_bicg_avm_read;

    // out_unnamed_bicg13_bicg_avm_write(GPOUT,267)
    assign out_unnamed_bicg13_bicg_avm_write = bb_bicg_B7_out_unnamed_bicg13_bicg_avm_write;

    // out_unnamed_bicg13_bicg_avm_writedata(GPOUT,268)
    assign out_unnamed_bicg13_bicg_avm_writedata = bb_bicg_B7_out_unnamed_bicg13_bicg_avm_writedata;

    // out_unnamed_bicg15_bicg_avm_address(GPOUT,269)
    assign out_unnamed_bicg15_bicg_avm_address = bb_bicg_B9_out_unnamed_bicg15_bicg_avm_address;

    // out_unnamed_bicg15_bicg_avm_burstcount(GPOUT,270)
    assign out_unnamed_bicg15_bicg_avm_burstcount = bb_bicg_B9_out_unnamed_bicg15_bicg_avm_burstcount;

    // out_unnamed_bicg15_bicg_avm_byteenable(GPOUT,271)
    assign out_unnamed_bicg15_bicg_avm_byteenable = bb_bicg_B9_out_unnamed_bicg15_bicg_avm_byteenable;

    // out_unnamed_bicg15_bicg_avm_enable(GPOUT,272)
    assign out_unnamed_bicg15_bicg_avm_enable = bb_bicg_B9_out_unnamed_bicg15_bicg_avm_enable;

    // out_unnamed_bicg15_bicg_avm_read(GPOUT,273)
    assign out_unnamed_bicg15_bicg_avm_read = bb_bicg_B9_out_unnamed_bicg15_bicg_avm_read;

    // out_unnamed_bicg15_bicg_avm_write(GPOUT,274)
    assign out_unnamed_bicg15_bicg_avm_write = bb_bicg_B9_out_unnamed_bicg15_bicg_avm_write;

    // out_unnamed_bicg15_bicg_avm_writedata(GPOUT,275)
    assign out_unnamed_bicg15_bicg_avm_writedata = bb_bicg_B9_out_unnamed_bicg15_bicg_avm_writedata;

    // out_unnamed_bicg16_bicg_avm_address(GPOUT,276)
    assign out_unnamed_bicg16_bicg_avm_address = bb_bicg_B9_out_unnamed_bicg16_bicg_avm_address;

    // out_unnamed_bicg16_bicg_avm_burstcount(GPOUT,277)
    assign out_unnamed_bicg16_bicg_avm_burstcount = bb_bicg_B9_out_unnamed_bicg16_bicg_avm_burstcount;

    // out_unnamed_bicg16_bicg_avm_byteenable(GPOUT,278)
    assign out_unnamed_bicg16_bicg_avm_byteenable = bb_bicg_B9_out_unnamed_bicg16_bicg_avm_byteenable;

    // out_unnamed_bicg16_bicg_avm_enable(GPOUT,279)
    assign out_unnamed_bicg16_bicg_avm_enable = bb_bicg_B9_out_unnamed_bicg16_bicg_avm_enable;

    // out_unnamed_bicg16_bicg_avm_read(GPOUT,280)
    assign out_unnamed_bicg16_bicg_avm_read = bb_bicg_B9_out_unnamed_bicg16_bicg_avm_read;

    // out_unnamed_bicg16_bicg_avm_write(GPOUT,281)
    assign out_unnamed_bicg16_bicg_avm_write = bb_bicg_B9_out_unnamed_bicg16_bicg_avm_write;

    // out_unnamed_bicg16_bicg_avm_writedata(GPOUT,282)
    assign out_unnamed_bicg16_bicg_avm_writedata = bb_bicg_B9_out_unnamed_bicg16_bicg_avm_writedata;

    // out_unnamed_bicg17_bicg_avm_address(GPOUT,283)
    assign out_unnamed_bicg17_bicg_avm_address = bb_bicg_B9_out_unnamed_bicg17_bicg_avm_address;

    // out_unnamed_bicg17_bicg_avm_burstcount(GPOUT,284)
    assign out_unnamed_bicg17_bicg_avm_burstcount = bb_bicg_B9_out_unnamed_bicg17_bicg_avm_burstcount;

    // out_unnamed_bicg17_bicg_avm_byteenable(GPOUT,285)
    assign out_unnamed_bicg17_bicg_avm_byteenable = bb_bicg_B9_out_unnamed_bicg17_bicg_avm_byteenable;

    // out_unnamed_bicg17_bicg_avm_enable(GPOUT,286)
    assign out_unnamed_bicg17_bicg_avm_enable = bb_bicg_B9_out_unnamed_bicg17_bicg_avm_enable;

    // out_unnamed_bicg17_bicg_avm_read(GPOUT,287)
    assign out_unnamed_bicg17_bicg_avm_read = bb_bicg_B9_out_unnamed_bicg17_bicg_avm_read;

    // out_unnamed_bicg17_bicg_avm_write(GPOUT,288)
    assign out_unnamed_bicg17_bicg_avm_write = bb_bicg_B9_out_unnamed_bicg17_bicg_avm_write;

    // out_unnamed_bicg17_bicg_avm_writedata(GPOUT,289)
    assign out_unnamed_bicg17_bicg_avm_writedata = bb_bicg_B9_out_unnamed_bicg17_bicg_avm_writedata;

    // out_unnamed_bicg18_bicg_avm_address(GPOUT,290)
    assign out_unnamed_bicg18_bicg_avm_address = bb_bicg_B9_out_unnamed_bicg18_bicg_avm_address;

    // out_unnamed_bicg18_bicg_avm_burstcount(GPOUT,291)
    assign out_unnamed_bicg18_bicg_avm_burstcount = bb_bicg_B9_out_unnamed_bicg18_bicg_avm_burstcount;

    // out_unnamed_bicg18_bicg_avm_byteenable(GPOUT,292)
    assign out_unnamed_bicg18_bicg_avm_byteenable = bb_bicg_B9_out_unnamed_bicg18_bicg_avm_byteenable;

    // out_unnamed_bicg18_bicg_avm_enable(GPOUT,293)
    assign out_unnamed_bicg18_bicg_avm_enable = bb_bicg_B9_out_unnamed_bicg18_bicg_avm_enable;

    // out_unnamed_bicg18_bicg_avm_read(GPOUT,294)
    assign out_unnamed_bicg18_bicg_avm_read = bb_bicg_B9_out_unnamed_bicg18_bicg_avm_read;

    // out_unnamed_bicg18_bicg_avm_write(GPOUT,295)
    assign out_unnamed_bicg18_bicg_avm_write = bb_bicg_B9_out_unnamed_bicg18_bicg_avm_write;

    // out_unnamed_bicg18_bicg_avm_writedata(GPOUT,296)
    assign out_unnamed_bicg18_bicg_avm_writedata = bb_bicg_B9_out_unnamed_bicg18_bicg_avm_writedata;

    // out_unnamed_bicg20_bicg_avm_address(GPOUT,297)
    assign out_unnamed_bicg20_bicg_avm_address = bb_bicg_B11_out_unnamed_bicg20_bicg_avm_address;

    // out_unnamed_bicg20_bicg_avm_burstcount(GPOUT,298)
    assign out_unnamed_bicg20_bicg_avm_burstcount = bb_bicg_B11_out_unnamed_bicg20_bicg_avm_burstcount;

    // out_unnamed_bicg20_bicg_avm_byteenable(GPOUT,299)
    assign out_unnamed_bicg20_bicg_avm_byteenable = bb_bicg_B11_out_unnamed_bicg20_bicg_avm_byteenable;

    // out_unnamed_bicg20_bicg_avm_enable(GPOUT,300)
    assign out_unnamed_bicg20_bicg_avm_enable = bb_bicg_B11_out_unnamed_bicg20_bicg_avm_enable;

    // out_unnamed_bicg20_bicg_avm_read(GPOUT,301)
    assign out_unnamed_bicg20_bicg_avm_read = bb_bicg_B11_out_unnamed_bicg20_bicg_avm_read;

    // out_unnamed_bicg20_bicg_avm_write(GPOUT,302)
    assign out_unnamed_bicg20_bicg_avm_write = bb_bicg_B11_out_unnamed_bicg20_bicg_avm_write;

    // out_unnamed_bicg20_bicg_avm_writedata(GPOUT,303)
    assign out_unnamed_bicg20_bicg_avm_writedata = bb_bicg_B11_out_unnamed_bicg20_bicg_avm_writedata;

    // out_unnamed_bicg8_bicg_avm_address(GPOUT,304)
    assign out_unnamed_bicg8_bicg_avm_address = bb_bicg_B4_out_unnamed_bicg8_bicg_avm_address;

    // out_unnamed_bicg8_bicg_avm_burstcount(GPOUT,305)
    assign out_unnamed_bicg8_bicg_avm_burstcount = bb_bicg_B4_out_unnamed_bicg8_bicg_avm_burstcount;

    // out_unnamed_bicg8_bicg_avm_byteenable(GPOUT,306)
    assign out_unnamed_bicg8_bicg_avm_byteenable = bb_bicg_B4_out_unnamed_bicg8_bicg_avm_byteenable;

    // out_unnamed_bicg8_bicg_avm_enable(GPOUT,307)
    assign out_unnamed_bicg8_bicg_avm_enable = bb_bicg_B4_out_unnamed_bicg8_bicg_avm_enable;

    // out_unnamed_bicg8_bicg_avm_read(GPOUT,308)
    assign out_unnamed_bicg8_bicg_avm_read = bb_bicg_B4_out_unnamed_bicg8_bicg_avm_read;

    // out_unnamed_bicg8_bicg_avm_write(GPOUT,309)
    assign out_unnamed_bicg8_bicg_avm_write = bb_bicg_B4_out_unnamed_bicg8_bicg_avm_write;

    // out_unnamed_bicg8_bicg_avm_writedata(GPOUT,310)
    assign out_unnamed_bicg8_bicg_avm_writedata = bb_bicg_B4_out_unnamed_bicg8_bicg_avm_writedata;

    // out_unnamed_bicg9_bicg_avm_address(GPOUT,311)
    assign out_unnamed_bicg9_bicg_avm_address = bb_bicg_B4_out_unnamed_bicg9_bicg_avm_address;

    // out_unnamed_bicg9_bicg_avm_burstcount(GPOUT,312)
    assign out_unnamed_bicg9_bicg_avm_burstcount = bb_bicg_B4_out_unnamed_bicg9_bicg_avm_burstcount;

    // out_unnamed_bicg9_bicg_avm_byteenable(GPOUT,313)
    assign out_unnamed_bicg9_bicg_avm_byteenable = bb_bicg_B4_out_unnamed_bicg9_bicg_avm_byteenable;

    // out_unnamed_bicg9_bicg_avm_enable(GPOUT,314)
    assign out_unnamed_bicg9_bicg_avm_enable = bb_bicg_B4_out_unnamed_bicg9_bicg_avm_enable;

    // out_unnamed_bicg9_bicg_avm_read(GPOUT,315)
    assign out_unnamed_bicg9_bicg_avm_read = bb_bicg_B4_out_unnamed_bicg9_bicg_avm_read;

    // out_unnamed_bicg9_bicg_avm_write(GPOUT,316)
    assign out_unnamed_bicg9_bicg_avm_write = bb_bicg_B4_out_unnamed_bicg9_bicg_avm_write;

    // out_unnamed_bicg9_bicg_avm_writedata(GPOUT,317)
    assign out_unnamed_bicg9_bicg_avm_writedata = bb_bicg_B4_out_unnamed_bicg9_bicg_avm_writedata;

    // out_valid_out(GPOUT,318)
    assign out_valid_out = GND_q;

endmodule
