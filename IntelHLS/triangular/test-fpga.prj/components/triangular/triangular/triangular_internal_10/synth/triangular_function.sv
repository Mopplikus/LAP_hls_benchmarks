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

// SystemVerilog created from triangular_function
// Created for function/kernel triangular
// SystemVerilog created on Wed Apr  5 14:46:59 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module triangular_function (
    input wire [63:0] in_arg_A,
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_return,
    input wire [63:0] in_arg_x,
    input wire [191:0] in_iord_bl_call_triangular_i_fifodata,
    input wire [0:0] in_iord_bl_call_triangular_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_triangular_i_fifoready,
    input wire [31:0] in_lm122_triangular_avm_readdata,
    input wire [0:0] in_lm122_triangular_avm_readdatavalid,
    input wire [0:0] in_lm122_triangular_avm_waitrequest,
    input wire [0:0] in_lm122_triangular_avm_writeack,
    input wire [31:0] in_lm143_triangular_avm_readdata,
    input wire [0:0] in_lm143_triangular_avm_readdatavalid,
    input wire [0:0] in_lm143_triangular_avm_waitrequest,
    input wire [0:0] in_lm143_triangular_avm_writeack,
    input wire [31:0] in_lm1_triangular_avm_readdata,
    input wire [0:0] in_lm1_triangular_avm_readdatavalid,
    input wire [0:0] in_lm1_triangular_avm_waitrequest,
    input wire [0:0] in_lm1_triangular_avm_writeack,
    input wire [31:0] in_memdep_4_triangular_avm_readdata,
    input wire [0:0] in_memdep_4_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_4_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_4_triangular_avm_writeack,
    input wire [31:0] in_memdep_5_triangular_avm_readdata,
    input wire [0:0] in_memdep_5_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_5_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_5_triangular_avm_writeack,
    input wire [63:0] in_memdep_8_triangular_avm_readdata,
    input wire [0:0] in_memdep_8_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_8_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_8_triangular_avm_writeack,
    input wire [31:0] in_memdep_triangular_avm_readdata,
    input wire [0:0] in_memdep_triangular_avm_readdatavalid,
    input wire [0:0] in_memdep_triangular_avm_waitrequest,
    input wire [0:0] in_memdep_triangular_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_triangular17_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular17_triangular_avm_readdatavalid,
    input wire [0:0] in_unnamed_triangular17_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular17_triangular_avm_writeack,
    input wire [63:0] in_unnamed_triangular8_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_readdatavalid,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular8_triangular_avm_writeack,
    input wire [63:0] in_unnamed_triangular9_triangular_avm_readdata,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_readdatavalid,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_waitrequest,
    input wire [0:0] in_unnamed_triangular9_triangular_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_triangular_o_fifoready,
    output wire [0:0] out_iowr_bl_return_triangular_o_fifodata,
    output wire [0:0] out_iowr_bl_return_triangular_o_fifovalid,
    output wire [31:0] out_lm122_triangular_avm_address,
    output wire [0:0] out_lm122_triangular_avm_burstcount,
    output wire [3:0] out_lm122_triangular_avm_byteenable,
    output wire [0:0] out_lm122_triangular_avm_enable,
    output wire [0:0] out_lm122_triangular_avm_read,
    output wire [0:0] out_lm122_triangular_avm_write,
    output wire [31:0] out_lm122_triangular_avm_writedata,
    output wire [31:0] out_lm143_triangular_avm_address,
    output wire [0:0] out_lm143_triangular_avm_burstcount,
    output wire [3:0] out_lm143_triangular_avm_byteenable,
    output wire [0:0] out_lm143_triangular_avm_enable,
    output wire [0:0] out_lm143_triangular_avm_read,
    output wire [0:0] out_lm143_triangular_avm_write,
    output wire [31:0] out_lm143_triangular_avm_writedata,
    output wire [31:0] out_lm1_triangular_avm_address,
    output wire [0:0] out_lm1_triangular_avm_burstcount,
    output wire [3:0] out_lm1_triangular_avm_byteenable,
    output wire [0:0] out_lm1_triangular_avm_enable,
    output wire [0:0] out_lm1_triangular_avm_read,
    output wire [0:0] out_lm1_triangular_avm_write,
    output wire [31:0] out_lm1_triangular_avm_writedata,
    output wire [31:0] out_memdep_4_triangular_avm_address,
    output wire [0:0] out_memdep_4_triangular_avm_burstcount,
    output wire [3:0] out_memdep_4_triangular_avm_byteenable,
    output wire [0:0] out_memdep_4_triangular_avm_enable,
    output wire [0:0] out_memdep_4_triangular_avm_read,
    output wire [0:0] out_memdep_4_triangular_avm_write,
    output wire [31:0] out_memdep_4_triangular_avm_writedata,
    output wire [31:0] out_memdep_5_triangular_avm_address,
    output wire [0:0] out_memdep_5_triangular_avm_burstcount,
    output wire [3:0] out_memdep_5_triangular_avm_byteenable,
    output wire [0:0] out_memdep_5_triangular_avm_enable,
    output wire [0:0] out_memdep_5_triangular_avm_read,
    output wire [0:0] out_memdep_5_triangular_avm_write,
    output wire [31:0] out_memdep_5_triangular_avm_writedata,
    output wire [63:0] out_memdep_8_triangular_avm_address,
    output wire [0:0] out_memdep_8_triangular_avm_burstcount,
    output wire [7:0] out_memdep_8_triangular_avm_byteenable,
    output wire [0:0] out_memdep_8_triangular_avm_enable,
    output wire [0:0] out_memdep_8_triangular_avm_read,
    output wire [0:0] out_memdep_8_triangular_avm_write,
    output wire [63:0] out_memdep_8_triangular_avm_writedata,
    output wire [31:0] out_memdep_triangular_avm_address,
    output wire [0:0] out_memdep_triangular_avm_burstcount,
    output wire [3:0] out_memdep_triangular_avm_byteenable,
    output wire [0:0] out_memdep_triangular_avm_enable,
    output wire [0:0] out_memdep_triangular_avm_read,
    output wire [0:0] out_memdep_triangular_avm_write,
    output wire [31:0] out_memdep_triangular_avm_writedata,
    output wire [0:0] out_o_active_memdep_8,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_triangular17_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_burstcount,
    output wire [3:0] out_unnamed_triangular17_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular17_triangular_avm_write,
    output wire [31:0] out_unnamed_triangular17_triangular_avm_writedata,
    output wire [63:0] out_unnamed_triangular8_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_burstcount,
    output wire [7:0] out_unnamed_triangular8_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular8_triangular_avm_write,
    output wire [63:0] out_unnamed_triangular8_triangular_avm_writedata,
    output wire [63:0] out_unnamed_triangular9_triangular_avm_address,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_burstcount,
    output wire [7:0] out_unnamed_triangular9_triangular_avm_byteenable,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_enable,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_read,
    output wire [0:0] out_unnamed_triangular9_triangular_avm_write,
    output wire [63:0] out_unnamed_triangular9_triangular_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_triangular_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_triangular_B10_out_c0_exe2223;
    wire [31:0] bb_triangular_B10_out_c0_exe3224;
    wire [0:0] bb_triangular_B10_out_exiting_stall_out;
    wire [0:0] bb_triangular_B10_out_exiting_valid_out;
    wire [0:0] bb_triangular_B10_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B10_out_stall_out_0;
    wire [0:0] bb_triangular_B10_out_stall_out_1;
    wire [0:0] bb_triangular_B10_out_valid_in_0;
    wire [0:0] bb_triangular_B10_out_valid_in_1;
    wire [0:0] bb_triangular_B10_out_valid_out_0;
    wire [0:0] bb_triangular_B11_out_feedback_out_1;
    wire [0:0] bb_triangular_B11_out_feedback_valid_out_1;
    wire [0:0] bb_triangular_B11_out_iowr_bl_return_triangular_o_fifodata;
    wire [0:0] bb_triangular_B11_out_iowr_bl_return_triangular_o_fifovalid;
    wire [0:0] bb_triangular_B11_out_stall_in_0;
    wire [0:0] bb_triangular_B11_out_stall_out_0;
    wire [0:0] bb_triangular_B11_out_valid_out_0;
    wire [0:0] bb_triangular_B12_out_stall_in_0;
    wire [0:0] bb_triangular_B12_out_stall_out_0;
    wire [0:0] bb_triangular_B12_out_valid_out_0;
    wire [0:0] bb_triangular_B13_out_c0_exe3238;
    wire [0:0] bb_triangular_B13_out_exiting_stall_out;
    wire [0:0] bb_triangular_B13_out_exiting_valid_out;
    wire [0:0] bb_triangular_B13_out_lsu_memdep_8_o_active;
    wire [63:0] bb_triangular_B13_out_memdep_8_triangular_avm_address;
    wire [0:0] bb_triangular_B13_out_memdep_8_triangular_avm_burstcount;
    wire [7:0] bb_triangular_B13_out_memdep_8_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B13_out_memdep_8_triangular_avm_enable;
    wire [0:0] bb_triangular_B13_out_memdep_8_triangular_avm_read;
    wire [0:0] bb_triangular_B13_out_memdep_8_triangular_avm_write;
    wire [63:0] bb_triangular_B13_out_memdep_8_triangular_avm_writedata;
    wire [0:0] bb_triangular_B13_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B13_out_stall_in_0;
    wire [0:0] bb_triangular_B13_out_stall_out_0;
    wire [0:0] bb_triangular_B13_out_stall_out_1;
    wire [31:0] bb_triangular_B13_out_unnamed_triangular17_triangular_avm_address;
    wire [0:0] bb_triangular_B13_out_unnamed_triangular17_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B13_out_unnamed_triangular17_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B13_out_unnamed_triangular17_triangular_avm_enable;
    wire [0:0] bb_triangular_B13_out_unnamed_triangular17_triangular_avm_read;
    wire [0:0] bb_triangular_B13_out_unnamed_triangular17_triangular_avm_write;
    wire [31:0] bb_triangular_B13_out_unnamed_triangular17_triangular_avm_writedata;
    wire [0:0] bb_triangular_B13_out_valid_in_0;
    wire [0:0] bb_triangular_B13_out_valid_in_1;
    wire [0:0] bb_triangular_B13_out_valid_out_0;
    wire [31:0] bb_triangular_B1_start_out_c1_exe1;
    wire [0:0] bb_triangular_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_triangular_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_triangular_B1_start_out_intel_reserved_ffwd_1_0;
    wire [31:0] bb_triangular_B1_start_out_intel_reserved_ffwd_2_0;
    wire [0:0] bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full;
    wire [0:0] bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready;
    wire [0:0] bb_triangular_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B1_start_out_stall_out_0;
    wire [0:0] bb_triangular_B1_start_out_valid_in_0;
    wire [0:0] bb_triangular_B1_start_out_valid_in_1;
    wire [0:0] bb_triangular_B1_start_out_valid_out_0;
    wire [31:0] bb_triangular_B2_out_c0_exe72;
    wire [0:0] bb_triangular_B2_out_intel_reserved_ffwd_3_0;
    wire [31:0] bb_triangular_B2_out_intel_reserved_ffwd_4_0;
    wire [32:0] bb_triangular_B2_out_intel_reserved_ffwd_5_0;
    wire [31:0] bb_triangular_B2_out_reorder_limiter_enter;
    wire [0:0] bb_triangular_B2_out_stall_out_0;
    wire [0:0] bb_triangular_B2_out_valid_out_0;
    wire [0:0] bb_triangular_B2_out_wgl_10_enter_exit_stall_out;
    wire [0:0] bb_triangular_B2_out_wgl_10_enter_exit_valid_out;
    wire [0:0] bb_triangular_B3_out_c0_exe2144;
    wire [31:0] bb_triangular_B3_out_c0_exe3;
    wire [31:0] bb_triangular_B3_out_c0_exe4;
    wire [31:0] bb_triangular_B3_out_c0_exe5;
    wire [0:0] bb_triangular_B3_out_exiting_stall_out;
    wire [0:0] bb_triangular_B3_out_exiting_valid_out;
    wire [0:0] bb_triangular_B3_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B3_out_stall_out_0;
    wire [0:0] bb_triangular_B3_out_stall_out_1;
    wire [0:0] bb_triangular_B3_out_valid_in_0;
    wire [0:0] bb_triangular_B3_out_valid_in_1;
    wire [0:0] bb_triangular_B3_out_valid_out_0;
    wire [31:0] bb_triangular_B4_out_c0_exe73;
    wire [31:0] bb_triangular_B4_out_memdep_triangular_avm_address;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B4_out_memdep_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_read;
    wire [0:0] bb_triangular_B4_out_memdep_triangular_avm_write;
    wire [31:0] bb_triangular_B4_out_memdep_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_out_stall_in_0;
    wire [0:0] bb_triangular_B4_out_stall_out_0;
    wire [63:0] bb_triangular_B4_out_unnamed_triangular8_triangular_avm_address;
    wire [0:0] bb_triangular_B4_out_unnamed_triangular8_triangular_avm_burstcount;
    wire [7:0] bb_triangular_B4_out_unnamed_triangular8_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B4_out_unnamed_triangular8_triangular_avm_enable;
    wire [0:0] bb_triangular_B4_out_unnamed_triangular8_triangular_avm_read;
    wire [0:0] bb_triangular_B4_out_unnamed_triangular8_triangular_avm_write;
    wire [63:0] bb_triangular_B4_out_unnamed_triangular8_triangular_avm_writedata;
    wire [0:0] bb_triangular_B4_out_valid_out_0;
    wire [63:0] bb_triangular_B5_out_c0_exe3158;
    wire [31:0] bb_triangular_B5_out_c0_exe7;
    wire [0:0] bb_triangular_B5_out_c0_exe8;
    wire [0:0] bb_triangular_B5_out_exiting_stall_out;
    wire [0:0] bb_triangular_B5_out_exiting_valid_out;
    wire [31:0] bb_triangular_B5_out_memdep_4_triangular_avm_address;
    wire [0:0] bb_triangular_B5_out_memdep_4_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B5_out_memdep_4_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_out_memdep_4_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_out_memdep_4_triangular_avm_read;
    wire [0:0] bb_triangular_B5_out_memdep_4_triangular_avm_write;
    wire [31:0] bb_triangular_B5_out_memdep_4_triangular_avm_writedata;
    wire [0:0] bb_triangular_B5_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B5_out_stall_in_0;
    wire [0:0] bb_triangular_B5_out_stall_out_0;
    wire [0:0] bb_triangular_B5_out_stall_out_1;
    wire [63:0] bb_triangular_B5_out_unnamed_triangular9_triangular_avm_address;
    wire [0:0] bb_triangular_B5_out_unnamed_triangular9_triangular_avm_burstcount;
    wire [7:0] bb_triangular_B5_out_unnamed_triangular9_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B5_out_unnamed_triangular9_triangular_avm_enable;
    wire [0:0] bb_triangular_B5_out_unnamed_triangular9_triangular_avm_read;
    wire [0:0] bb_triangular_B5_out_unnamed_triangular9_triangular_avm_write;
    wire [63:0] bb_triangular_B5_out_unnamed_triangular9_triangular_avm_writedata;
    wire [0:0] bb_triangular_B5_out_valid_in_0;
    wire [0:0] bb_triangular_B5_out_valid_in_1;
    wire [0:0] bb_triangular_B5_out_valid_out_0;
    wire [31:0] bb_triangular_B6_out_c0_exe52118;
    wire [0:0] bb_triangular_B6_out_feedback_out_24;
    wire [0:0] bb_triangular_B6_out_feedback_valid_out_24;
    wire [0:0] bb_triangular_B6_out_stall_in_0;
    wire [0:0] bb_triangular_B6_out_stall_out_0;
    wire [0:0] bb_triangular_B6_out_valid_out_0;
    wire [0:0] bb_triangular_B7_out_stall_out_0;
    wire [0:0] bb_triangular_B7_out_valid_out_0;
    wire [0:0] bb_triangular_B7_out_wgl_10_exit_exit_stall_in;
    wire [0:0] bb_triangular_B7_out_wgl_10_exit_exit_valid_in;
    wire [31:0] bb_triangular_B8_out_c0_exe10;
    wire [31:0] bb_triangular_B8_out_c0_exe11;
    wire [32:0] bb_triangular_B8_out_c0_exe1178;
    wire [31:0] bb_triangular_B8_out_c0_exe2179;
    wire [31:0] bb_triangular_B8_out_c0_exe3180;
    wire [0:0] bb_triangular_B8_out_c0_exe4181;
    wire [0:0] bb_triangular_B8_out_c0_exe5182;
    wire [0:0] bb_triangular_B8_out_c0_exe6183;
    wire [31:0] bb_triangular_B8_out_c0_exe7184;
    wire [31:0] bb_triangular_B8_out_c0_exe8185;
    wire [0:0] bb_triangular_B8_out_exiting_stall_out;
    wire [0:0] bb_triangular_B8_out_exiting_valid_out;
    wire [0:0] bb_triangular_B8_out_feedback_stall_out_24;
    wire [0:0] bb_triangular_B8_out_memdep_phi6_pop24;
    wire [0:0] bb_triangular_B8_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B8_out_stall_out_0;
    wire [0:0] bb_triangular_B8_out_stall_out_1;
    wire [0:0] bb_triangular_B8_out_valid_in_0;
    wire [0:0] bb_triangular_B8_out_valid_in_1;
    wire [0:0] bb_triangular_B8_out_valid_out_0;
    wire [0:0] bb_triangular_B9_out_c0_exe2208;
    wire [0:0] bb_triangular_B9_out_c0_exe4210;
    wire [31:0] bb_triangular_B9_out_c0_exe5211;
    wire [0:0] bb_triangular_B9_out_c0_exe6212;
    wire [0:0] bb_triangular_B9_out_exiting_stall_out;
    wire [0:0] bb_triangular_B9_out_exiting_valid_out;
    wire [31:0] bb_triangular_B9_out_lm122_triangular_avm_address;
    wire [0:0] bb_triangular_B9_out_lm122_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_out_lm122_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_out_lm122_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_out_lm122_triangular_avm_read;
    wire [0:0] bb_triangular_B9_out_lm122_triangular_avm_write;
    wire [31:0] bb_triangular_B9_out_lm122_triangular_avm_writedata;
    wire [31:0] bb_triangular_B9_out_lm143_triangular_avm_address;
    wire [0:0] bb_triangular_B9_out_lm143_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_out_lm143_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_out_lm143_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_out_lm143_triangular_avm_read;
    wire [0:0] bb_triangular_B9_out_lm143_triangular_avm_write;
    wire [31:0] bb_triangular_B9_out_lm143_triangular_avm_writedata;
    wire [31:0] bb_triangular_B9_out_lm1_triangular_avm_address;
    wire [0:0] bb_triangular_B9_out_lm1_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_out_lm1_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_out_lm1_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_out_lm1_triangular_avm_read;
    wire [0:0] bb_triangular_B9_out_lm1_triangular_avm_write;
    wire [31:0] bb_triangular_B9_out_lm1_triangular_avm_writedata;
    wire [31:0] bb_triangular_B9_out_memdep_5_triangular_avm_address;
    wire [0:0] bb_triangular_B9_out_memdep_5_triangular_avm_burstcount;
    wire [3:0] bb_triangular_B9_out_memdep_5_triangular_avm_byteenable;
    wire [0:0] bb_triangular_B9_out_memdep_5_triangular_avm_enable;
    wire [0:0] bb_triangular_B9_out_memdep_5_triangular_avm_read;
    wire [0:0] bb_triangular_B9_out_memdep_5_triangular_avm_write;
    wire [31:0] bb_triangular_B9_out_memdep_5_triangular_avm_writedata;
    wire [0:0] bb_triangular_B9_out_pipeline_valid_out;
    wire [0:0] bb_triangular_B9_out_stall_in_0;
    wire [0:0] bb_triangular_B9_out_stall_out_0;
    wire [0:0] bb_triangular_B9_out_stall_out_1;
    wire [0:0] bb_triangular_B9_out_valid_in_0;
    wire [0:0] bb_triangular_B9_out_valid_in_1;
    wire [0:0] bb_triangular_B9_out_valid_out_0;
    wire [1:0] c_i2_083_q;
    wire [31:0] c_i32_undef12_q;
    wire [32:0] c_i33_undef50_q;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_triangular2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_triangular2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_triangular2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_triangular2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_triangular2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_triangular2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_triangular2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_triangular2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_triangular0_out_o_stall;
    wire [0:0] loop_limiter_triangular0_out_o_valid;
    wire [0:0] loop_limiter_triangular1_out_o_stall;
    wire [0:0] loop_limiter_triangular1_out_o_valid;
    wire [0:0] loop_limiter_triangular2_out_o_stall;
    wire [0:0] loop_limiter_triangular2_out_o_valid;
    wire [0:0] loop_limiter_triangular3_out_o_stall;
    wire [0:0] loop_limiter_triangular3_out_o_valid;
    wire [0:0] loop_limiter_triangular4_out_o_stall;
    wire [0:0] loop_limiter_triangular4_out_o_valid;
    wire [0:0] loop_limiter_triangular5_out_o_stall;
    wire [0:0] loop_limiter_triangular5_out_o_valid;
    wire [0:0] triangular_B1_start_x_i_capture;
    wire triangular_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_clear;
    wire triangular_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_enable;
    wire triangular_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_shift;
    wire triangular_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_stall_pred;
    wire triangular_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_stall_succ;
    wire triangular_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_valid_loop;
    wire triangular_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_valid_pred;
    wire triangular_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B1_start_x_i_valid_succ;
    wire triangular_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_capture;
    wire triangular_B10_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_clear;
    wire triangular_B10_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_enable;
    wire triangular_B10_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_shift;
    wire triangular_B10_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_stall_pred;
    wire triangular_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_stall_succ;
    wire triangular_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_valid_loop;
    wire triangular_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_valid_pred;
    wire triangular_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B10_x_i_valid_succ;
    wire triangular_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_capture;
    wire triangular_B13_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_clear;
    wire triangular_B13_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_enable;
    wire triangular_B13_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_shift;
    wire triangular_B13_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_stall_pred;
    wire triangular_B13_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_stall_succ;
    wire triangular_B13_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_valid_loop;
    wire triangular_B13_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_valid_pred;
    wire triangular_B13_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B13_x_i_valid_succ;
    wire triangular_B13_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_capture;
    wire triangular_B3_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_clear;
    wire triangular_B3_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_enable;
    wire triangular_B3_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_shift;
    wire triangular_B3_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_stall_pred;
    wire triangular_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_stall_succ;
    wire triangular_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_valid_loop;
    wire triangular_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_valid_pred;
    wire triangular_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B3_x_i_valid_succ;
    wire triangular_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_capture;
    wire triangular_B5_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_clear;
    wire triangular_B5_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_enable;
    wire triangular_B5_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_shift;
    wire triangular_B5_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_stall_pred;
    wire triangular_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_stall_succ;
    wire triangular_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_valid_loop;
    wire triangular_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_valid_pred;
    wire triangular_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B5_x_i_valid_succ;
    wire triangular_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_capture;
    wire triangular_B8_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_clear;
    wire triangular_B8_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_enable;
    wire triangular_B8_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_shift;
    wire triangular_B8_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_stall_pred;
    wire triangular_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_stall_succ;
    wire triangular_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_valid_loop;
    wire triangular_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_valid_pred;
    wire triangular_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B8_x_i_valid_succ;
    wire triangular_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_capture;
    wire triangular_B9_x_i_capture_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_clear;
    wire triangular_B9_x_i_clear_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_enable;
    wire triangular_B9_x_i_enable_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_shift;
    wire triangular_B9_x_i_shift_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_stall_pred;
    wire triangular_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_stall_succ;
    wire triangular_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_valid_loop;
    wire triangular_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_valid_pred;
    wire triangular_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] triangular_B9_x_i_valid_succ;
    wire triangular_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] bb_triangular_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B11_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B12_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B13_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B13_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B13_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B13_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_triangular_B13_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_triangular_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_triangular_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_triangular_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_triangular_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_triangular_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_triangular_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_triangular_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_triangular_B7_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B7_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_triangular_B7_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_triangular_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_triangular_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_triangular_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_triangular_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [32:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_triangular_B9_sr_1_aunroll_x_out_o_data_11_tpl;


    // c_i2_083(CONSTANT,66)
    assign c_i2_083_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo(BLACKBOX,99)
    triangular_i_llvm_fpga_pipeline_keep_going89_2_valid_fifo thei_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_triangular_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going89_triangular2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo(BLACKBOX,97)
    triangular_i_llvm_fpga_pipeline_keep_going85_2_valid_fifo thei_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_triangular_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going85_triangular2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo(BLACKBOX,95)
    triangular_i_llvm_fpga_pipeline_keep_going71_6_valid_fifo thei_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_triangular_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going71_triangular6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo(BLACKBOX,89)
    triangular_i_llvm_fpga_pipeline_keep_going40_2_valid_fifo thei_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_triangular_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going40_triangular2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo(BLACKBOX,101)
    triangular_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_triangular_B13_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B11_sr_0_aunroll_x(BLACKBOX,243)
    triangular_bb_B11_sr_0 thebb_triangular_B11_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B11_out_stall_out_0),
        .in_i_valid(bb_triangular_B12_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_triangular_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B12(BLACKBOX,5)
    triangular_bb_B12 thebb_triangular_B12 (
        .in_c0_exe323810_0(bb_triangular_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_triangular_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_triangular_B12_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_triangular_B12_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B12_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B12_sr_0_aunroll_x(BLACKBOX,244)
    triangular_bb_B12_sr_0 thebb_triangular_B12_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B12_out_stall_out_0),
        .in_i_valid(bb_triangular_B13_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B13_out_c0_exe3238),
        .out_o_stall(bb_triangular_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B12_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_triangular6_sr(BLACKBOX,100)
    triangular_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_triangular6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B13_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B13(BLACKBOX,6)
    triangular_bb_B13 thebb_triangular_B13 (
        .in_flush(in_start),
        .in_forked37_0(GND_q),
        .in_forked37_1(bb_triangular_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i46_033_pop28135_0(c_i32_undef12_q),
        .in_i46_033_pop28135_1(bb_triangular_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_8_triangular_avm_readdata(in_memdep_8_triangular_avm_readdata),
        .in_memdep_8_triangular_avm_readdatavalid(in_memdep_8_triangular_avm_readdatavalid),
        .in_memdep_8_triangular_avm_waitrequest(in_memdep_8_triangular_avm_waitrequest),
        .in_memdep_8_triangular_avm_writeack(in_memdep_8_triangular_avm_writeack),
        .in_notcmp38134_0(GND_q),
        .in_notcmp38134_1(bb_triangular_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_triangular6_sr_out_o_stall),
        .in_stall_in_0(bb_triangular_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_triangular17_triangular_avm_readdata(in_unnamed_triangular17_triangular_avm_readdata),
        .in_unnamed_triangular17_triangular_avm_readdatavalid(in_unnamed_triangular17_triangular_avm_readdatavalid),
        .in_unnamed_triangular17_triangular_avm_waitrequest(in_unnamed_triangular17_triangular_avm_waitrequest),
        .in_unnamed_triangular17_triangular_avm_writeack(in_unnamed_triangular17_triangular_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_triangular6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B13_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3238(bb_triangular_B13_out_c0_exe3238),
        .out_exiting_stall_out(bb_triangular_B13_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B13_out_exiting_valid_out),
        .out_lsu_memdep_8_o_active(bb_triangular_B13_out_lsu_memdep_8_o_active),
        .out_memdep_8_triangular_avm_address(bb_triangular_B13_out_memdep_8_triangular_avm_address),
        .out_memdep_8_triangular_avm_burstcount(bb_triangular_B13_out_memdep_8_triangular_avm_burstcount),
        .out_memdep_8_triangular_avm_byteenable(bb_triangular_B13_out_memdep_8_triangular_avm_byteenable),
        .out_memdep_8_triangular_avm_enable(bb_triangular_B13_out_memdep_8_triangular_avm_enable),
        .out_memdep_8_triangular_avm_read(bb_triangular_B13_out_memdep_8_triangular_avm_read),
        .out_memdep_8_triangular_avm_write(bb_triangular_B13_out_memdep_8_triangular_avm_write),
        .out_memdep_8_triangular_avm_writedata(bb_triangular_B13_out_memdep_8_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B13_out_pipeline_valid_out),
        .out_stall_in_0(bb_triangular_B13_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B13_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B13_out_stall_out_1),
        .out_unnamed_triangular17_triangular_avm_address(bb_triangular_B13_out_unnamed_triangular17_triangular_avm_address),
        .out_unnamed_triangular17_triangular_avm_burstcount(bb_triangular_B13_out_unnamed_triangular17_triangular_avm_burstcount),
        .out_unnamed_triangular17_triangular_avm_byteenable(bb_triangular_B13_out_unnamed_triangular17_triangular_avm_byteenable),
        .out_unnamed_triangular17_triangular_avm_enable(bb_triangular_B13_out_unnamed_triangular17_triangular_avm_enable),
        .out_unnamed_triangular17_triangular_avm_read(bb_triangular_B13_out_unnamed_triangular17_triangular_avm_read),
        .out_unnamed_triangular17_triangular_avm_write(bb_triangular_B13_out_unnamed_triangular17_triangular_avm_write),
        .out_unnamed_triangular17_triangular_avm_writedata(bb_triangular_B13_out_unnamed_triangular17_triangular_avm_writedata),
        .out_valid_in_0(bb_triangular_B13_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B13_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B13_sr_1_aunroll_x(BLACKBOX,245)
    triangular_bb_B13_sr_1 thebb_triangular_B13_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B13_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_triangular_B10_out_c0_exe2223),
        .in_i_data_2_tpl(bb_triangular_B10_out_c0_exe3224),
        .out_o_stall(bb_triangular_B13_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B13_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular5(BLACKBOX,157)
    triangular_loop_limiter_5 theloop_limiter_triangular5 (
        .in_i_stall(bb_triangular_B13_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B13_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B10_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B13_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular5_out_o_stall),
        .out_o_valid(loop_limiter_triangular5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going40_triangular2_sr(BLACKBOX,88)
    triangular_i_llvm_fpga_pipeline_keep_going40_2_sr thei_llvm_fpga_pipeline_keep_going40_triangular2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going40_triangular2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going40_triangular2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B10(BLACKBOX,3)
    triangular_bb_B10 thebb_triangular_B10 (
        .in_forked99_0(GND_q),
        .in_forked99_1(bb_triangular_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going40_triangular2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_triangular5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going40_triangular2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2223(bb_triangular_B10_out_c0_exe2223),
        .out_c0_exe3224(bb_triangular_B10_out_c0_exe3224),
        .out_exiting_stall_out(bb_triangular_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B10_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_triangular_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_triangular_B10_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B10_out_stall_out_1),
        .out_valid_in_0(bb_triangular_B10_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B10_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B10_sr_1_aunroll_x(BLACKBOX,242)
    triangular_bb_B10_sr_1 thebb_triangular_B10_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_triangular_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B10_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular2(BLACKBOX,154)
    triangular_loop_limiter_2 theloop_limiter_triangular2 (
        .in_i_stall(bb_triangular_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B10_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B7_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular2_out_o_stall),
        .out_o_valid(loop_limiter_triangular2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo(BLACKBOX,93)
    triangular_i_llvm_fpga_pipeline_keep_going63_2_valid_fifo thei_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_triangular_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going63_triangular2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo(BLACKBOX,91)
    triangular_i_llvm_fpga_pipeline_keep_going47_6_valid_fifo thei_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo (
        .in_data_in(c_i2_083_q),
        .in_stall_in(bb_triangular_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going47_triangular6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef50(CONSTANT,86)
    assign c_i33_undef50_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going47_triangular6_sr(BLACKBOX,90)
    triangular_i_llvm_fpga_pipeline_keep_going47_6_sr thei_llvm_fpga_pipeline_keep_going47_triangular6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going47_triangular6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going47_triangular6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B9(BLACKBOX,15)
    triangular_bb_B9 thebb_triangular_B9 (
        .in_flush(in_start),
        .in_forked44_0(GND_q),
        .in_forked44_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i20_039123_0(c_i32_undef12_q),
        .in_i20_039123_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .in_lim_ext94_pop33119_0(c_i32_undef12_q),
        .in_lim_ext94_pop33119_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lim_ext95_pop25127_0(c_i32_undef12_q),
        .in_lim_ext95_pop25127_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_lm122_triangular_avm_readdata(in_lm122_triangular_avm_readdata),
        .in_lm122_triangular_avm_readdatavalid(in_lm122_triangular_avm_readdatavalid),
        .in_lm122_triangular_avm_waitrequest(in_lm122_triangular_avm_waitrequest),
        .in_lm122_triangular_avm_writeack(in_lm122_triangular_avm_writeack),
        .in_lm143_triangular_avm_readdata(in_lm143_triangular_avm_readdata),
        .in_lm143_triangular_avm_readdatavalid(in_lm143_triangular_avm_readdatavalid),
        .in_lm143_triangular_avm_waitrequest(in_lm143_triangular_avm_waitrequest),
        .in_lm143_triangular_avm_writeack(in_lm143_triangular_avm_writeack),
        .in_lm1_triangular_avm_readdata(in_lm1_triangular_avm_readdata),
        .in_lm1_triangular_avm_readdatavalid(in_lm1_triangular_avm_readdatavalid),
        .in_lm1_triangular_avm_waitrequest(in_lm1_triangular_avm_waitrequest),
        .in_lm1_triangular_avm_writeack(in_lm1_triangular_avm_writeack),
        .in_memdep_5_triangular_avm_readdata(in_memdep_5_triangular_avm_readdata),
        .in_memdep_5_triangular_avm_readdatavalid(in_memdep_5_triangular_avm_readdatavalid),
        .in_memdep_5_triangular_avm_waitrequest(in_memdep_5_triangular_avm_waitrequest),
        .in_memdep_5_triangular_avm_writeack(in_memdep_5_triangular_avm_writeack),
        .in_memdep_phi6_pop24126_0(GND_q),
        .in_memdep_phi6_pop24126_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp62125_0(GND_q),
        .in_notcmp62125_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going47_triangular6_sr_out_o_stall),
        .in_reorder_limiter_enter112_0(c_i32_undef12_q),
        .in_reorder_limiter_enter112_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_reorder_limiter_enter97_pop26128_0(c_i32_undef12_q),
        .in_reorder_limiter_enter97_pop26128_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_stall_in_0(bb_triangular_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_sub25124_0(c_i32_undef12_q),
        .in_sub25124_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_unnamed_triangular13_0(c_i33_undef50_q),
        .in_unnamed_triangular13_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_unnamed_triangular14_0(GND_q),
        .in_unnamed_triangular14_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_unnamed_triangular15_0(GND_q),
        .in_unnamed_triangular15_1(bb_triangular_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going47_triangular6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2208(bb_triangular_B9_out_c0_exe2208),
        .out_c0_exe4210(bb_triangular_B9_out_c0_exe4210),
        .out_c0_exe5211(bb_triangular_B9_out_c0_exe5211),
        .out_c0_exe6212(bb_triangular_B9_out_c0_exe6212),
        .out_exiting_stall_out(bb_triangular_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B9_out_exiting_valid_out),
        .out_lm122_triangular_avm_address(bb_triangular_B9_out_lm122_triangular_avm_address),
        .out_lm122_triangular_avm_burstcount(bb_triangular_B9_out_lm122_triangular_avm_burstcount),
        .out_lm122_triangular_avm_byteenable(bb_triangular_B9_out_lm122_triangular_avm_byteenable),
        .out_lm122_triangular_avm_enable(bb_triangular_B9_out_lm122_triangular_avm_enable),
        .out_lm122_triangular_avm_read(bb_triangular_B9_out_lm122_triangular_avm_read),
        .out_lm122_triangular_avm_write(bb_triangular_B9_out_lm122_triangular_avm_write),
        .out_lm122_triangular_avm_writedata(bb_triangular_B9_out_lm122_triangular_avm_writedata),
        .out_lm143_triangular_avm_address(bb_triangular_B9_out_lm143_triangular_avm_address),
        .out_lm143_triangular_avm_burstcount(bb_triangular_B9_out_lm143_triangular_avm_burstcount),
        .out_lm143_triangular_avm_byteenable(bb_triangular_B9_out_lm143_triangular_avm_byteenable),
        .out_lm143_triangular_avm_enable(bb_triangular_B9_out_lm143_triangular_avm_enable),
        .out_lm143_triangular_avm_read(bb_triangular_B9_out_lm143_triangular_avm_read),
        .out_lm143_triangular_avm_write(bb_triangular_B9_out_lm143_triangular_avm_write),
        .out_lm143_triangular_avm_writedata(bb_triangular_B9_out_lm143_triangular_avm_writedata),
        .out_lm1_triangular_avm_address(bb_triangular_B9_out_lm1_triangular_avm_address),
        .out_lm1_triangular_avm_burstcount(bb_triangular_B9_out_lm1_triangular_avm_burstcount),
        .out_lm1_triangular_avm_byteenable(bb_triangular_B9_out_lm1_triangular_avm_byteenable),
        .out_lm1_triangular_avm_enable(bb_triangular_B9_out_lm1_triangular_avm_enable),
        .out_lm1_triangular_avm_read(bb_triangular_B9_out_lm1_triangular_avm_read),
        .out_lm1_triangular_avm_write(bb_triangular_B9_out_lm1_triangular_avm_write),
        .out_lm1_triangular_avm_writedata(bb_triangular_B9_out_lm1_triangular_avm_writedata),
        .out_memdep_5_triangular_avm_address(bb_triangular_B9_out_memdep_5_triangular_avm_address),
        .out_memdep_5_triangular_avm_burstcount(bb_triangular_B9_out_memdep_5_triangular_avm_burstcount),
        .out_memdep_5_triangular_avm_byteenable(bb_triangular_B9_out_memdep_5_triangular_avm_byteenable),
        .out_memdep_5_triangular_avm_enable(bb_triangular_B9_out_memdep_5_triangular_avm_enable),
        .out_memdep_5_triangular_avm_read(bb_triangular_B9_out_memdep_5_triangular_avm_read),
        .out_memdep_5_triangular_avm_write(bb_triangular_B9_out_memdep_5_triangular_avm_write),
        .out_memdep_5_triangular_avm_writedata(bb_triangular_B9_out_memdep_5_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_triangular_B9_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B9_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B9_out_stall_out_1),
        .out_valid_in_0(bb_triangular_B9_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B9_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B9_sr_1_aunroll_x(BLACKBOX,253)
    triangular_bb_B9_sr_1 thebb_triangular_B9_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_triangular_B8_out_c0_exe10),
        .in_i_data_2_tpl(bb_triangular_B8_out_c0_exe11),
        .in_i_data_3_tpl(bb_triangular_B8_out_c0_exe1178),
        .in_i_data_4_tpl(bb_triangular_B8_out_c0_exe2179),
        .in_i_data_5_tpl(bb_triangular_B8_out_c0_exe3180),
        .in_i_data_6_tpl(bb_triangular_B8_out_c0_exe4181),
        .in_i_data_7_tpl(bb_triangular_B8_out_c0_exe5182),
        .in_i_data_8_tpl(bb_triangular_B8_out_c0_exe6183),
        .in_i_data_9_tpl(bb_triangular_B8_out_memdep_phi6_pop24),
        .in_i_data_10_tpl(bb_triangular_B8_out_c0_exe7184),
        .in_i_data_11_tpl(bb_triangular_B8_out_c0_exe8185),
        .out_o_stall(bb_triangular_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_triangular_B9_sr_1_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular4(BLACKBOX,156)
    triangular_loop_limiter_4 theloop_limiter_triangular4 (
        .in_i_stall(bb_triangular_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B9_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B8_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular4_out_o_stall),
        .out_o_valid(loop_limiter_triangular4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going63_triangular2_sr(BLACKBOX,92)
    triangular_i_llvm_fpga_pipeline_keep_going63_2_sr thei_llvm_fpga_pipeline_keep_going63_triangular2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going63_triangular2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going63_triangular2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B8_sr_1_aunroll_x(BLACKBOX,252)
    triangular_bb_B8_sr_1 thebb_triangular_B8_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_triangular_B2_out_reorder_limiter_enter),
        .in_i_data_2_tpl(bb_triangular_B2_out_c0_exe72),
        .out_o_stall(bb_triangular_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B8(BLACKBOX,14)
    triangular_bb_B8 thebb_triangular_B8 (
        .in_feedback_in_24(bb_triangular_B6_out_feedback_out_24),
        .in_feedback_valid_in_24(bb_triangular_B6_out_feedback_valid_out_24),
        .in_forked_0(GND_q),
        .in_forked_1(bb_triangular_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .in_intel_reserved_ffwd_3_0(bb_triangular_B2_out_intel_reserved_ffwd_3_0),
        .in_intel_reserved_ffwd_4_0(bb_triangular_B2_out_intel_reserved_ffwd_4_0),
        .in_intel_reserved_ffwd_5_0(bb_triangular_B2_out_intel_reserved_ffwd_5_0),
        .in_lim_ext94_pop33117_0(c_i32_undef12_q),
        .in_lim_ext94_pop33117_1(bb_triangular_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going63_triangular2_sr_out_o_stall),
        .in_reorder_limiter_enter110_0(c_i32_undef12_q),
        .in_reorder_limiter_enter110_1(bb_triangular_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_triangular4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going63_triangular2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_triangular_B8_out_c0_exe10),
        .out_c0_exe11(bb_triangular_B8_out_c0_exe11),
        .out_c0_exe1178(bb_triangular_B8_out_c0_exe1178),
        .out_c0_exe2179(bb_triangular_B8_out_c0_exe2179),
        .out_c0_exe3180(bb_triangular_B8_out_c0_exe3180),
        .out_c0_exe4181(bb_triangular_B8_out_c0_exe4181),
        .out_c0_exe5182(bb_triangular_B8_out_c0_exe5182),
        .out_c0_exe6183(bb_triangular_B8_out_c0_exe6183),
        .out_c0_exe7184(bb_triangular_B8_out_c0_exe7184),
        .out_c0_exe8185(bb_triangular_B8_out_c0_exe8185),
        .out_exiting_stall_out(bb_triangular_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B8_out_exiting_valid_out),
        .out_feedback_stall_out_24(bb_triangular_B8_out_feedback_stall_out_24),
        .out_memdep_phi6_pop24(bb_triangular_B8_out_memdep_phi6_pop24),
        .out_pipeline_valid_out(bb_triangular_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_triangular_B8_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B8_out_stall_out_1),
        .out_valid_in_0(bb_triangular_B8_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B8_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B6_sr_0_aunroll_x(BLACKBOX,250)
    triangular_bb_B6_sr_0 thebb_triangular_B6_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B6_out_stall_out_0),
        .in_i_valid(bb_triangular_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B9_out_c0_exe2208),
        .in_i_data_1_tpl(bb_triangular_B9_out_c0_exe4210),
        .in_i_data_2_tpl(bb_triangular_B9_out_c0_exe5211),
        .in_i_data_3_tpl(bb_triangular_B9_out_c0_exe6212),
        .out_o_stall(bb_triangular_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_triangular_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B6(BLACKBOX,12)
    triangular_bb_B6 thebb_triangular_B6 (
        .in_c0_exe22085_0(bb_triangular_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42106_0(bb_triangular_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe52118_0(bb_triangular_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62129_0(bb_triangular_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_24(bb_triangular_B8_out_feedback_stall_out_24),
        .in_stall_in_0(bb_triangular_B7_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_triangular_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe52118(bb_triangular_B6_out_c0_exe52118),
        .out_feedback_out_24(bb_triangular_B6_out_feedback_out_24),
        .out_feedback_valid_out_24(bb_triangular_B6_out_feedback_valid_out_24),
        .out_stall_in_0(bb_triangular_B6_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B6_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B7_sr_0_aunroll_x(BLACKBOX,251)
    triangular_bb_B7_sr_0 thebb_triangular_B7_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B7_out_stall_out_0),
        .in_i_valid(bb_triangular_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B6_out_c0_exe52118),
        .out_o_stall(bb_triangular_B7_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B7_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B7(BLACKBOX,13)
    triangular_bb_B7 thebb_triangular_B7 (
        .in_c0_exe52117_0(bb_triangular_B7_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_triangular2_out_o_stall),
        .in_valid_in_0(bb_triangular_B7_sr_0_aunroll_x_out_o_valid),
        .in_wgl_10_exit_exit_stall_out(bb_triangular_B2_out_wgl_10_enter_exit_stall_out),
        .in_wgl_10_exit_exit_valid_out(bb_triangular_B2_out_wgl_10_enter_exit_valid_out),
        .out_stall_out_0(bb_triangular_B7_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B7_out_valid_out_0),
        .out_wgl_10_exit_exit_stall_in(bb_triangular_B7_out_wgl_10_exit_exit_stall_in),
        .out_wgl_10_exit_exit_valid_in(bb_triangular_B7_out_wgl_10_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular1(BLACKBOX,153)
    triangular_loop_limiter_1 theloop_limiter_triangular1 (
        .in_i_stall(bb_triangular_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B8_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B2_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular1_out_o_stall),
        .out_o_valid(loop_limiter_triangular1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B2(BLACKBOX,8)
    triangular_bb_B2 thebb_triangular_B2 (
        .in_c0_exe72_0(bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .in_stall_in_0(loop_limiter_triangular1_out_o_stall),
        .in_valid_in_0(bb_triangular_B2_sr_0_aunroll_x_out_o_valid),
        .in_wgl_10_enter_exit_stall_in(bb_triangular_B7_out_wgl_10_exit_exit_stall_in),
        .in_wgl_10_enter_exit_valid_in(bb_triangular_B7_out_wgl_10_exit_exit_valid_in),
        .out_c0_exe72(bb_triangular_B2_out_c0_exe72),
        .out_intel_reserved_ffwd_3_0(bb_triangular_B2_out_intel_reserved_ffwd_3_0),
        .out_intel_reserved_ffwd_4_0(bb_triangular_B2_out_intel_reserved_ffwd_4_0),
        .out_intel_reserved_ffwd_5_0(bb_triangular_B2_out_intel_reserved_ffwd_5_0),
        .out_reorder_limiter_enter(bb_triangular_B2_out_reorder_limiter_enter),
        .out_stall_out_0(bb_triangular_B2_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B2_out_valid_out_0),
        .out_wgl_10_enter_exit_stall_out(bb_triangular_B2_out_wgl_10_enter_exit_stall_out),
        .out_wgl_10_enter_exit_valid_out(bb_triangular_B2_out_wgl_10_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B2_sr_0_aunroll_x(BLACKBOX,246)
    triangular_bb_B2_sr_0 thebb_triangular_B2_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B2_out_stall_out_0),
        .in_i_valid(bb_triangular_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B4_out_c0_exe73),
        .out_o_stall(bb_triangular_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4(BLACKBOX,10)
    triangular_bb_B4 thebb_triangular_B4 (
        .in_c0_exe31581_0(bb_triangular_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe73_0(bb_triangular_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe84_0(bb_triangular_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_0_0(bb_triangular_B1_start_out_intel_reserved_ffwd_0_0),
        .in_memdep_triangular_avm_readdata(in_memdep_triangular_avm_readdata),
        .in_memdep_triangular_avm_readdatavalid(in_memdep_triangular_avm_readdatavalid),
        .in_memdep_triangular_avm_waitrequest(in_memdep_triangular_avm_waitrequest),
        .in_memdep_triangular_avm_writeack(in_memdep_triangular_avm_writeack),
        .in_stall_in_0(bb_triangular_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_triangular8_triangular_avm_readdata(in_unnamed_triangular8_triangular_avm_readdata),
        .in_unnamed_triangular8_triangular_avm_readdatavalid(in_unnamed_triangular8_triangular_avm_readdatavalid),
        .in_unnamed_triangular8_triangular_avm_waitrequest(in_unnamed_triangular8_triangular_avm_waitrequest),
        .in_unnamed_triangular8_triangular_avm_writeack(in_unnamed_triangular8_triangular_avm_writeack),
        .in_valid_in_0(bb_triangular_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe73(bb_triangular_B4_out_c0_exe73),
        .out_memdep_triangular_avm_address(bb_triangular_B4_out_memdep_triangular_avm_address),
        .out_memdep_triangular_avm_burstcount(bb_triangular_B4_out_memdep_triangular_avm_burstcount),
        .out_memdep_triangular_avm_byteenable(bb_triangular_B4_out_memdep_triangular_avm_byteenable),
        .out_memdep_triangular_avm_enable(bb_triangular_B4_out_memdep_triangular_avm_enable),
        .out_memdep_triangular_avm_read(bb_triangular_B4_out_memdep_triangular_avm_read),
        .out_memdep_triangular_avm_write(bb_triangular_B4_out_memdep_triangular_avm_write),
        .out_memdep_triangular_avm_writedata(bb_triangular_B4_out_memdep_triangular_avm_writedata),
        .out_stall_in_0(bb_triangular_B4_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B4_out_stall_out_0),
        .out_unnamed_triangular8_triangular_avm_address(bb_triangular_B4_out_unnamed_triangular8_triangular_avm_address),
        .out_unnamed_triangular8_triangular_avm_burstcount(bb_triangular_B4_out_unnamed_triangular8_triangular_avm_burstcount),
        .out_unnamed_triangular8_triangular_avm_byteenable(bb_triangular_B4_out_unnamed_triangular8_triangular_avm_byteenable),
        .out_unnamed_triangular8_triangular_avm_enable(bb_triangular_B4_out_unnamed_triangular8_triangular_avm_enable),
        .out_unnamed_triangular8_triangular_avm_read(bb_triangular_B4_out_unnamed_triangular8_triangular_avm_read),
        .out_unnamed_triangular8_triangular_avm_write(bb_triangular_B4_out_unnamed_triangular8_triangular_avm_write),
        .out_unnamed_triangular8_triangular_avm_writedata(bb_triangular_B4_out_unnamed_triangular8_triangular_avm_writedata),
        .out_valid_out_0(bb_triangular_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B4_sr_0_aunroll_x(BLACKBOX,248)
    triangular_bb_B4_sr_0 thebb_triangular_B4_sr_0_aunroll_x (
        .in_i_stall(bb_triangular_B4_out_stall_out_0),
        .in_i_valid(bb_triangular_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_triangular_B5_out_c0_exe3158),
        .in_i_data_1_tpl(bb_triangular_B5_out_c0_exe7),
        .in_i_data_2_tpl(bb_triangular_B5_out_c0_exe8),
        .out_o_stall(bb_triangular_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_triangular6_sr(BLACKBOX,94)
    triangular_i_llvm_fpga_pipeline_keep_going71_6_sr thei_llvm_fpga_pipeline_keep_going71_triangular6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going71_triangular6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going71_triangular6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B5(BLACKBOX,11)
    triangular_bb_B5 thebb_triangular_B5 (
        .in_flush(in_start),
        .in_forked68_0(GND_q),
        .in_forked68_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_041_pop19114_0(c_i32_undef12_q),
        .in_i_041_pop19114_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .in_lim_ext109_0(c_i32_undef12_q),
        .in_lim_ext109_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext93_pop20115_0(c_i32_undef12_q),
        .in_lim_ext93_pop20115_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_4_triangular_avm_readdata(in_memdep_4_triangular_avm_readdata),
        .in_memdep_4_triangular_avm_readdatavalid(in_memdep_4_triangular_avm_readdatavalid),
        .in_memdep_4_triangular_avm_waitrequest(in_memdep_4_triangular_avm_waitrequest),
        .in_memdep_4_triangular_avm_writeack(in_memdep_4_triangular_avm_writeack),
        .in_notcmp83113_0(GND_q),
        .in_notcmp83113_1(bb_triangular_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going71_triangular6_sr_out_o_stall),
        .in_stall_in_0(bb_triangular_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_triangular9_triangular_avm_readdata(in_unnamed_triangular9_triangular_avm_readdata),
        .in_unnamed_triangular9_triangular_avm_readdatavalid(in_unnamed_triangular9_triangular_avm_readdatavalid),
        .in_unnamed_triangular9_triangular_avm_waitrequest(in_unnamed_triangular9_triangular_avm_waitrequest),
        .in_unnamed_triangular9_triangular_avm_writeack(in_unnamed_triangular9_triangular_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going71_triangular6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3158(bb_triangular_B5_out_c0_exe3158),
        .out_c0_exe7(bb_triangular_B5_out_c0_exe7),
        .out_c0_exe8(bb_triangular_B5_out_c0_exe8),
        .out_exiting_stall_out(bb_triangular_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B5_out_exiting_valid_out),
        .out_memdep_4_triangular_avm_address(bb_triangular_B5_out_memdep_4_triangular_avm_address),
        .out_memdep_4_triangular_avm_burstcount(bb_triangular_B5_out_memdep_4_triangular_avm_burstcount),
        .out_memdep_4_triangular_avm_byteenable(bb_triangular_B5_out_memdep_4_triangular_avm_byteenable),
        .out_memdep_4_triangular_avm_enable(bb_triangular_B5_out_memdep_4_triangular_avm_enable),
        .out_memdep_4_triangular_avm_read(bb_triangular_B5_out_memdep_4_triangular_avm_read),
        .out_memdep_4_triangular_avm_write(bb_triangular_B5_out_memdep_4_triangular_avm_write),
        .out_memdep_4_triangular_avm_writedata(bb_triangular_B5_out_memdep_4_triangular_avm_writedata),
        .out_pipeline_valid_out(bb_triangular_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_triangular_B5_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B5_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B5_out_stall_out_1),
        .out_unnamed_triangular9_triangular_avm_address(bb_triangular_B5_out_unnamed_triangular9_triangular_avm_address),
        .out_unnamed_triangular9_triangular_avm_burstcount(bb_triangular_B5_out_unnamed_triangular9_triangular_avm_burstcount),
        .out_unnamed_triangular9_triangular_avm_byteenable(bb_triangular_B5_out_unnamed_triangular9_triangular_avm_byteenable),
        .out_unnamed_triangular9_triangular_avm_enable(bb_triangular_B5_out_unnamed_triangular9_triangular_avm_enable),
        .out_unnamed_triangular9_triangular_avm_read(bb_triangular_B5_out_unnamed_triangular9_triangular_avm_read),
        .out_unnamed_triangular9_triangular_avm_write(bb_triangular_B5_out_unnamed_triangular9_triangular_avm_write),
        .out_unnamed_triangular9_triangular_avm_writedata(bb_triangular_B5_out_unnamed_triangular9_triangular_avm_writedata),
        .out_valid_in_0(bb_triangular_B5_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B5_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B5_sr_1_aunroll_x(BLACKBOX,249)
    triangular_bb_B5_sr_1 thebb_triangular_B5_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_triangular_B3_out_c0_exe5),
        .in_i_data_2_tpl(bb_triangular_B3_out_c0_exe2144),
        .in_i_data_3_tpl(bb_triangular_B3_out_c0_exe3),
        .in_i_data_4_tpl(bb_triangular_B3_out_c0_exe4),
        .out_o_stall(bb_triangular_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_triangular_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular3(BLACKBOX,155)
    triangular_loop_limiter_3 theloop_limiter_triangular3 (
        .in_i_stall(bb_triangular_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B5_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B3_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular3_out_o_stall),
        .out_o_valid(loop_limiter_triangular3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going85_triangular2_sr(BLACKBOX,96)
    triangular_i_llvm_fpga_pipeline_keep_going85_2_sr thei_llvm_fpga_pipeline_keep_going85_triangular2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going85_triangular2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going85_triangular2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef12(CONSTANT,73)
    assign c_i32_undef12_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_triangular_B3(BLACKBOX,9)
    triangular_bb_B3 thebb_triangular_B3 (
        .in_forked92_0(GND_q),
        .in_forked92_1(bb_triangular_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext107_0(c_i32_undef12_q),
        .in_lim_ext107_1(bb_triangular_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going85_triangular2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_triangular3_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going85_triangular2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_triangular_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2144(bb_triangular_B3_out_c0_exe2144),
        .out_c0_exe3(bb_triangular_B3_out_c0_exe3),
        .out_c0_exe4(bb_triangular_B3_out_c0_exe4),
        .out_c0_exe5(bb_triangular_B3_out_c0_exe5),
        .out_exiting_stall_out(bb_triangular_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_triangular_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_triangular_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_triangular_B3_out_stall_out_0),
        .out_stall_out_1(bb_triangular_B3_out_stall_out_1),
        .out_valid_in_0(bb_triangular_B3_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B3_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B3_sr_1_aunroll_x(BLACKBOX,247)
    triangular_bb_B3_sr_1 thebb_triangular_B3_sr_1_aunroll_x (
        .in_i_stall(bb_triangular_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_triangular0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_triangular_B1_start_out_c1_exe1),
        .out_o_stall(bb_triangular_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_triangular_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_triangular_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_triangular_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_triangular0(BLACKBOX,152)
    triangular_loop_limiter_0 theloop_limiter_triangular0 (
        .in_i_stall(bb_triangular_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_triangular_B3_out_exiting_stall_out),
        .in_i_valid(bb_triangular_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_triangular_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_triangular0_out_o_stall),
        .out_o_valid(loop_limiter_triangular0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going89_triangular2_sr(BLACKBOX,98)
    triangular_i_llvm_fpga_pipeline_keep_going89_2_sr thei_llvm_fpga_pipeline_keep_going89_triangular2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo_out_stall_out),
        .in_i_valid(bb_triangular_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going89_triangular2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going89_triangular2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // bb_triangular_B11(BLACKBOX,4)
    triangular_bb_B11 thebb_triangular_B11 (
        .in_feedback_stall_in_1(bb_triangular_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_triangular_i_fifoready(in_iowr_bl_return_triangular_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_triangular_B11_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_triangular_B11_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_triangular_B11_out_feedback_valid_out_1),
        .out_iowr_bl_return_triangular_o_fifodata(bb_triangular_B11_out_iowr_bl_return_triangular_o_fifodata),
        .out_iowr_bl_return_triangular_o_fifovalid(bb_triangular_B11_out_iowr_bl_return_triangular_o_fifovalid),
        .out_stall_in_0(bb_triangular_B11_out_stall_in_0),
        .out_stall_out_0(bb_triangular_B11_out_stall_out_0),
        .out_valid_out_0(bb_triangular_B11_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_triangular_B1_start(BLACKBOX,7)
    triangular_bb_B1_start thebb_triangular_B1_start (
        .in_feedback_in_1(bb_triangular_B11_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_triangular_B11_out_feedback_valid_out_1),
        .in_forked91_0(GND_q),
        .in_forked91_1(VCC_q),
        .in_iord_bl_call_triangular_i_fifodata(in_iord_bl_call_triangular_i_fifodata),
        .in_iord_bl_call_triangular_i_fifovalid(in_iord_bl_call_triangular_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going89_triangular2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_triangular0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going89_triangular2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_c1_exe1(bb_triangular_B1_start_out_c1_exe1),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_triangular_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_triangular_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_triangular_B1_start_out_intel_reserved_ffwd_1_0),
        .out_intel_reserved_ffwd_2_0(bb_triangular_B1_start_out_intel_reserved_ffwd_2_0),
        .out_iord_bl_call_triangular_o_fifoalmost_full(bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full),
        .out_iord_bl_call_triangular_o_fifoready(bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready),
        .out_pipeline_valid_out(bb_triangular_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_triangular_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_triangular_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_triangular_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_triangular_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_triangular_o_fifoalmost_full(GPOUT,158)
    assign out_iord_bl_call_triangular_o_fifoalmost_full = bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoalmost_full;

    // out_iord_bl_call_triangular_o_fifoready(GPOUT,159)
    assign out_iord_bl_call_triangular_o_fifoready = bb_triangular_B1_start_out_iord_bl_call_triangular_o_fifoready;

    // out_iowr_bl_return_triangular_o_fifodata(GPOUT,160)
    assign out_iowr_bl_return_triangular_o_fifodata = bb_triangular_B11_out_iowr_bl_return_triangular_o_fifodata;

    // out_iowr_bl_return_triangular_o_fifovalid(GPOUT,161)
    assign out_iowr_bl_return_triangular_o_fifovalid = bb_triangular_B11_out_iowr_bl_return_triangular_o_fifovalid;

    // out_lm122_triangular_avm_address(GPOUT,162)
    assign out_lm122_triangular_avm_address = bb_triangular_B9_out_lm122_triangular_avm_address;

    // out_lm122_triangular_avm_burstcount(GPOUT,163)
    assign out_lm122_triangular_avm_burstcount = bb_triangular_B9_out_lm122_triangular_avm_burstcount;

    // out_lm122_triangular_avm_byteenable(GPOUT,164)
    assign out_lm122_triangular_avm_byteenable = bb_triangular_B9_out_lm122_triangular_avm_byteenable;

    // out_lm122_triangular_avm_enable(GPOUT,165)
    assign out_lm122_triangular_avm_enable = bb_triangular_B9_out_lm122_triangular_avm_enable;

    // out_lm122_triangular_avm_read(GPOUT,166)
    assign out_lm122_triangular_avm_read = bb_triangular_B9_out_lm122_triangular_avm_read;

    // out_lm122_triangular_avm_write(GPOUT,167)
    assign out_lm122_triangular_avm_write = bb_triangular_B9_out_lm122_triangular_avm_write;

    // out_lm122_triangular_avm_writedata(GPOUT,168)
    assign out_lm122_triangular_avm_writedata = bb_triangular_B9_out_lm122_triangular_avm_writedata;

    // out_lm143_triangular_avm_address(GPOUT,169)
    assign out_lm143_triangular_avm_address = bb_triangular_B9_out_lm143_triangular_avm_address;

    // out_lm143_triangular_avm_burstcount(GPOUT,170)
    assign out_lm143_triangular_avm_burstcount = bb_triangular_B9_out_lm143_triangular_avm_burstcount;

    // out_lm143_triangular_avm_byteenable(GPOUT,171)
    assign out_lm143_triangular_avm_byteenable = bb_triangular_B9_out_lm143_triangular_avm_byteenable;

    // out_lm143_triangular_avm_enable(GPOUT,172)
    assign out_lm143_triangular_avm_enable = bb_triangular_B9_out_lm143_triangular_avm_enable;

    // out_lm143_triangular_avm_read(GPOUT,173)
    assign out_lm143_triangular_avm_read = bb_triangular_B9_out_lm143_triangular_avm_read;

    // out_lm143_triangular_avm_write(GPOUT,174)
    assign out_lm143_triangular_avm_write = bb_triangular_B9_out_lm143_triangular_avm_write;

    // out_lm143_triangular_avm_writedata(GPOUT,175)
    assign out_lm143_triangular_avm_writedata = bb_triangular_B9_out_lm143_triangular_avm_writedata;

    // out_lm1_triangular_avm_address(GPOUT,176)
    assign out_lm1_triangular_avm_address = bb_triangular_B9_out_lm1_triangular_avm_address;

    // out_lm1_triangular_avm_burstcount(GPOUT,177)
    assign out_lm1_triangular_avm_burstcount = bb_triangular_B9_out_lm1_triangular_avm_burstcount;

    // out_lm1_triangular_avm_byteenable(GPOUT,178)
    assign out_lm1_triangular_avm_byteenable = bb_triangular_B9_out_lm1_triangular_avm_byteenable;

    // out_lm1_triangular_avm_enable(GPOUT,179)
    assign out_lm1_triangular_avm_enable = bb_triangular_B9_out_lm1_triangular_avm_enable;

    // out_lm1_triangular_avm_read(GPOUT,180)
    assign out_lm1_triangular_avm_read = bb_triangular_B9_out_lm1_triangular_avm_read;

    // out_lm1_triangular_avm_write(GPOUT,181)
    assign out_lm1_triangular_avm_write = bb_triangular_B9_out_lm1_triangular_avm_write;

    // out_lm1_triangular_avm_writedata(GPOUT,182)
    assign out_lm1_triangular_avm_writedata = bb_triangular_B9_out_lm1_triangular_avm_writedata;

    // out_memdep_4_triangular_avm_address(GPOUT,183)
    assign out_memdep_4_triangular_avm_address = bb_triangular_B5_out_memdep_4_triangular_avm_address;

    // out_memdep_4_triangular_avm_burstcount(GPOUT,184)
    assign out_memdep_4_triangular_avm_burstcount = bb_triangular_B5_out_memdep_4_triangular_avm_burstcount;

    // out_memdep_4_triangular_avm_byteenable(GPOUT,185)
    assign out_memdep_4_triangular_avm_byteenable = bb_triangular_B5_out_memdep_4_triangular_avm_byteenable;

    // out_memdep_4_triangular_avm_enable(GPOUT,186)
    assign out_memdep_4_triangular_avm_enable = bb_triangular_B5_out_memdep_4_triangular_avm_enable;

    // out_memdep_4_triangular_avm_read(GPOUT,187)
    assign out_memdep_4_triangular_avm_read = bb_triangular_B5_out_memdep_4_triangular_avm_read;

    // out_memdep_4_triangular_avm_write(GPOUT,188)
    assign out_memdep_4_triangular_avm_write = bb_triangular_B5_out_memdep_4_triangular_avm_write;

    // out_memdep_4_triangular_avm_writedata(GPOUT,189)
    assign out_memdep_4_triangular_avm_writedata = bb_triangular_B5_out_memdep_4_triangular_avm_writedata;

    // out_memdep_5_triangular_avm_address(GPOUT,190)
    assign out_memdep_5_triangular_avm_address = bb_triangular_B9_out_memdep_5_triangular_avm_address;

    // out_memdep_5_triangular_avm_burstcount(GPOUT,191)
    assign out_memdep_5_triangular_avm_burstcount = bb_triangular_B9_out_memdep_5_triangular_avm_burstcount;

    // out_memdep_5_triangular_avm_byteenable(GPOUT,192)
    assign out_memdep_5_triangular_avm_byteenable = bb_triangular_B9_out_memdep_5_triangular_avm_byteenable;

    // out_memdep_5_triangular_avm_enable(GPOUT,193)
    assign out_memdep_5_triangular_avm_enable = bb_triangular_B9_out_memdep_5_triangular_avm_enable;

    // out_memdep_5_triangular_avm_read(GPOUT,194)
    assign out_memdep_5_triangular_avm_read = bb_triangular_B9_out_memdep_5_triangular_avm_read;

    // out_memdep_5_triangular_avm_write(GPOUT,195)
    assign out_memdep_5_triangular_avm_write = bb_triangular_B9_out_memdep_5_triangular_avm_write;

    // out_memdep_5_triangular_avm_writedata(GPOUT,196)
    assign out_memdep_5_triangular_avm_writedata = bb_triangular_B9_out_memdep_5_triangular_avm_writedata;

    // out_memdep_8_triangular_avm_address(GPOUT,197)
    assign out_memdep_8_triangular_avm_address = bb_triangular_B13_out_memdep_8_triangular_avm_address;

    // out_memdep_8_triangular_avm_burstcount(GPOUT,198)
    assign out_memdep_8_triangular_avm_burstcount = bb_triangular_B13_out_memdep_8_triangular_avm_burstcount;

    // out_memdep_8_triangular_avm_byteenable(GPOUT,199)
    assign out_memdep_8_triangular_avm_byteenable = bb_triangular_B13_out_memdep_8_triangular_avm_byteenable;

    // out_memdep_8_triangular_avm_enable(GPOUT,200)
    assign out_memdep_8_triangular_avm_enable = bb_triangular_B13_out_memdep_8_triangular_avm_enable;

    // out_memdep_8_triangular_avm_read(GPOUT,201)
    assign out_memdep_8_triangular_avm_read = bb_triangular_B13_out_memdep_8_triangular_avm_read;

    // out_memdep_8_triangular_avm_write(GPOUT,202)
    assign out_memdep_8_triangular_avm_write = bb_triangular_B13_out_memdep_8_triangular_avm_write;

    // out_memdep_8_triangular_avm_writedata(GPOUT,203)
    assign out_memdep_8_triangular_avm_writedata = bb_triangular_B13_out_memdep_8_triangular_avm_writedata;

    // out_memdep_triangular_avm_address(GPOUT,204)
    assign out_memdep_triangular_avm_address = bb_triangular_B4_out_memdep_triangular_avm_address;

    // out_memdep_triangular_avm_burstcount(GPOUT,205)
    assign out_memdep_triangular_avm_burstcount = bb_triangular_B4_out_memdep_triangular_avm_burstcount;

    // out_memdep_triangular_avm_byteenable(GPOUT,206)
    assign out_memdep_triangular_avm_byteenable = bb_triangular_B4_out_memdep_triangular_avm_byteenable;

    // out_memdep_triangular_avm_enable(GPOUT,207)
    assign out_memdep_triangular_avm_enable = bb_triangular_B4_out_memdep_triangular_avm_enable;

    // out_memdep_triangular_avm_read(GPOUT,208)
    assign out_memdep_triangular_avm_read = bb_triangular_B4_out_memdep_triangular_avm_read;

    // out_memdep_triangular_avm_write(GPOUT,209)
    assign out_memdep_triangular_avm_write = bb_triangular_B4_out_memdep_triangular_avm_write;

    // out_memdep_triangular_avm_writedata(GPOUT,210)
    assign out_memdep_triangular_avm_writedata = bb_triangular_B4_out_memdep_triangular_avm_writedata;

    // out_o_active_memdep_8(GPOUT,211)
    assign out_o_active_memdep_8 = bb_triangular_B13_out_lsu_memdep_8_o_active;

    // bb_triangular_B0_runOnce(BLACKBOX,2)
    triangular_bb_B0_runOnce thebb_triangular_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_triangular_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,212)
    assign out_stall_out = bb_triangular_B0_runOnce_out_stall_out_0;

    // out_unnamed_triangular17_triangular_avm_address(GPOUT,213)
    assign out_unnamed_triangular17_triangular_avm_address = bb_triangular_B13_out_unnamed_triangular17_triangular_avm_address;

    // out_unnamed_triangular17_triangular_avm_burstcount(GPOUT,214)
    assign out_unnamed_triangular17_triangular_avm_burstcount = bb_triangular_B13_out_unnamed_triangular17_triangular_avm_burstcount;

    // out_unnamed_triangular17_triangular_avm_byteenable(GPOUT,215)
    assign out_unnamed_triangular17_triangular_avm_byteenable = bb_triangular_B13_out_unnamed_triangular17_triangular_avm_byteenable;

    // out_unnamed_triangular17_triangular_avm_enable(GPOUT,216)
    assign out_unnamed_triangular17_triangular_avm_enable = bb_triangular_B13_out_unnamed_triangular17_triangular_avm_enable;

    // out_unnamed_triangular17_triangular_avm_read(GPOUT,217)
    assign out_unnamed_triangular17_triangular_avm_read = bb_triangular_B13_out_unnamed_triangular17_triangular_avm_read;

    // out_unnamed_triangular17_triangular_avm_write(GPOUT,218)
    assign out_unnamed_triangular17_triangular_avm_write = bb_triangular_B13_out_unnamed_triangular17_triangular_avm_write;

    // out_unnamed_triangular17_triangular_avm_writedata(GPOUT,219)
    assign out_unnamed_triangular17_triangular_avm_writedata = bb_triangular_B13_out_unnamed_triangular17_triangular_avm_writedata;

    // out_unnamed_triangular8_triangular_avm_address(GPOUT,220)
    assign out_unnamed_triangular8_triangular_avm_address = bb_triangular_B4_out_unnamed_triangular8_triangular_avm_address;

    // out_unnamed_triangular8_triangular_avm_burstcount(GPOUT,221)
    assign out_unnamed_triangular8_triangular_avm_burstcount = bb_triangular_B4_out_unnamed_triangular8_triangular_avm_burstcount;

    // out_unnamed_triangular8_triangular_avm_byteenable(GPOUT,222)
    assign out_unnamed_triangular8_triangular_avm_byteenable = bb_triangular_B4_out_unnamed_triangular8_triangular_avm_byteenable;

    // out_unnamed_triangular8_triangular_avm_enable(GPOUT,223)
    assign out_unnamed_triangular8_triangular_avm_enable = bb_triangular_B4_out_unnamed_triangular8_triangular_avm_enable;

    // out_unnamed_triangular8_triangular_avm_read(GPOUT,224)
    assign out_unnamed_triangular8_triangular_avm_read = bb_triangular_B4_out_unnamed_triangular8_triangular_avm_read;

    // out_unnamed_triangular8_triangular_avm_write(GPOUT,225)
    assign out_unnamed_triangular8_triangular_avm_write = bb_triangular_B4_out_unnamed_triangular8_triangular_avm_write;

    // out_unnamed_triangular8_triangular_avm_writedata(GPOUT,226)
    assign out_unnamed_triangular8_triangular_avm_writedata = bb_triangular_B4_out_unnamed_triangular8_triangular_avm_writedata;

    // out_unnamed_triangular9_triangular_avm_address(GPOUT,227)
    assign out_unnamed_triangular9_triangular_avm_address = bb_triangular_B5_out_unnamed_triangular9_triangular_avm_address;

    // out_unnamed_triangular9_triangular_avm_burstcount(GPOUT,228)
    assign out_unnamed_triangular9_triangular_avm_burstcount = bb_triangular_B5_out_unnamed_triangular9_triangular_avm_burstcount;

    // out_unnamed_triangular9_triangular_avm_byteenable(GPOUT,229)
    assign out_unnamed_triangular9_triangular_avm_byteenable = bb_triangular_B5_out_unnamed_triangular9_triangular_avm_byteenable;

    // out_unnamed_triangular9_triangular_avm_enable(GPOUT,230)
    assign out_unnamed_triangular9_triangular_avm_enable = bb_triangular_B5_out_unnamed_triangular9_triangular_avm_enable;

    // out_unnamed_triangular9_triangular_avm_read(GPOUT,231)
    assign out_unnamed_triangular9_triangular_avm_read = bb_triangular_B5_out_unnamed_triangular9_triangular_avm_read;

    // out_unnamed_triangular9_triangular_avm_write(GPOUT,232)
    assign out_unnamed_triangular9_triangular_avm_write = bb_triangular_B5_out_unnamed_triangular9_triangular_avm_write;

    // out_unnamed_triangular9_triangular_avm_writedata(GPOUT,233)
    assign out_unnamed_triangular9_triangular_avm_writedata = bb_triangular_B5_out_unnamed_triangular9_triangular_avm_writedata;

    // out_valid_out(GPOUT,234)
    assign out_valid_out = GND_q;

    // triangular_B1_start_x(EXTIFACE,235)
    assign triangular_B1_start_x_i_capture = GND_q;
    assign triangular_B1_start_x_i_clear = GND_q;
    assign triangular_B1_start_x_i_enable = VCC_q;
    assign triangular_B1_start_x_i_shift = GND_q;
    assign triangular_B1_start_x_i_stall_pred = GND_q;
    assign triangular_B1_start_x_i_stall_succ = bb_triangular_B11_out_stall_in_0;
    assign triangular_B1_start_x_i_valid_loop = bb_triangular_B1_start_out_valid_in_0;
    assign triangular_B1_start_x_i_valid_pred = bb_triangular_B1_start_out_valid_in_1;
    assign triangular_B1_start_x_i_valid_succ = bb_triangular_B11_out_valid_out_0;
    assign triangular_B1_start_x_i_capture_bitsignaltemp = triangular_B1_start_x_i_capture[0];
    assign triangular_B1_start_x_i_clear_bitsignaltemp = triangular_B1_start_x_i_clear[0];
    assign triangular_B1_start_x_i_enable_bitsignaltemp = triangular_B1_start_x_i_enable[0];
    assign triangular_B1_start_x_i_shift_bitsignaltemp = triangular_B1_start_x_i_shift[0];
    assign triangular_B1_start_x_i_stall_pred_bitsignaltemp = triangular_B1_start_x_i_stall_pred[0];
    assign triangular_B1_start_x_i_stall_succ_bitsignaltemp = triangular_B1_start_x_i_stall_succ[0];
    assign triangular_B1_start_x_i_valid_loop_bitsignaltemp = triangular_B1_start_x_i_valid_loop[0];
    assign triangular_B1_start_x_i_valid_pred_bitsignaltemp = triangular_B1_start_x_i_valid_pred[0];
    assign triangular_B1_start_x_i_valid_succ_bitsignaltemp = triangular_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B1.start")
    ) thetriangular_B1_start_x (
        .i_capture(triangular_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B10_x(EXTIFACE,236)
    assign triangular_B10_x_i_capture = GND_q;
    assign triangular_B10_x_i_clear = GND_q;
    assign triangular_B10_x_i_enable = VCC_q;
    assign triangular_B10_x_i_shift = GND_q;
    assign triangular_B10_x_i_stall_pred = loop_limiter_triangular2_out_o_stall;
    assign triangular_B10_x_i_stall_succ = bb_triangular_B12_out_stall_in_0;
    assign triangular_B10_x_i_valid_loop = bb_triangular_B10_out_valid_in_0;
    assign triangular_B10_x_i_valid_pred = bb_triangular_B10_out_valid_in_1;
    assign triangular_B10_x_i_valid_succ = bb_triangular_B12_out_valid_out_0;
    assign triangular_B10_x_i_capture_bitsignaltemp = triangular_B10_x_i_capture[0];
    assign triangular_B10_x_i_clear_bitsignaltemp = triangular_B10_x_i_clear[0];
    assign triangular_B10_x_i_enable_bitsignaltemp = triangular_B10_x_i_enable[0];
    assign triangular_B10_x_i_shift_bitsignaltemp = triangular_B10_x_i_shift[0];
    assign triangular_B10_x_i_stall_pred_bitsignaltemp = triangular_B10_x_i_stall_pred[0];
    assign triangular_B10_x_i_stall_succ_bitsignaltemp = triangular_B10_x_i_stall_succ[0];
    assign triangular_B10_x_i_valid_loop_bitsignaltemp = triangular_B10_x_i_valid_loop[0];
    assign triangular_B10_x_i_valid_pred_bitsignaltemp = triangular_B10_x_i_valid_pred[0];
    assign triangular_B10_x_i_valid_succ_bitsignaltemp = triangular_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B10")
    ) thetriangular_B10_x (
        .i_capture(triangular_B10_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B10_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B10_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B13_x(EXTIFACE,237)
    assign triangular_B13_x_i_capture = GND_q;
    assign triangular_B13_x_i_clear = GND_q;
    assign triangular_B13_x_i_enable = VCC_q;
    assign triangular_B13_x_i_shift = GND_q;
    assign triangular_B13_x_i_stall_pred = loop_limiter_triangular5_out_o_stall;
    assign triangular_B13_x_i_stall_succ = bb_triangular_B13_out_stall_in_0;
    assign triangular_B13_x_i_valid_loop = bb_triangular_B13_out_valid_in_0;
    assign triangular_B13_x_i_valid_pred = bb_triangular_B13_out_valid_in_1;
    assign triangular_B13_x_i_valid_succ = bb_triangular_B13_out_valid_out_0;
    assign triangular_B13_x_i_capture_bitsignaltemp = triangular_B13_x_i_capture[0];
    assign triangular_B13_x_i_clear_bitsignaltemp = triangular_B13_x_i_clear[0];
    assign triangular_B13_x_i_enable_bitsignaltemp = triangular_B13_x_i_enable[0];
    assign triangular_B13_x_i_shift_bitsignaltemp = triangular_B13_x_i_shift[0];
    assign triangular_B13_x_i_stall_pred_bitsignaltemp = triangular_B13_x_i_stall_pred[0];
    assign triangular_B13_x_i_stall_succ_bitsignaltemp = triangular_B13_x_i_stall_succ[0];
    assign triangular_B13_x_i_valid_loop_bitsignaltemp = triangular_B13_x_i_valid_loop[0];
    assign triangular_B13_x_i_valid_pred_bitsignaltemp = triangular_B13_x_i_valid_pred[0];
    assign triangular_B13_x_i_valid_succ_bitsignaltemp = triangular_B13_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B13")
    ) thetriangular_B13_x (
        .i_capture(triangular_B13_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B13_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B13_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B13_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B13_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B13_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B13_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B13_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B13_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B3_x(EXTIFACE,238)
    assign triangular_B3_x_i_capture = GND_q;
    assign triangular_B3_x_i_clear = GND_q;
    assign triangular_B3_x_i_enable = VCC_q;
    assign triangular_B3_x_i_shift = GND_q;
    assign triangular_B3_x_i_stall_pred = loop_limiter_triangular0_out_o_stall;
    assign triangular_B3_x_i_stall_succ = bb_triangular_B4_out_stall_in_0;
    assign triangular_B3_x_i_valid_loop = bb_triangular_B3_out_valid_in_0;
    assign triangular_B3_x_i_valid_pred = bb_triangular_B3_out_valid_in_1;
    assign triangular_B3_x_i_valid_succ = bb_triangular_B4_out_valid_out_0;
    assign triangular_B3_x_i_capture_bitsignaltemp = triangular_B3_x_i_capture[0];
    assign triangular_B3_x_i_clear_bitsignaltemp = triangular_B3_x_i_clear[0];
    assign triangular_B3_x_i_enable_bitsignaltemp = triangular_B3_x_i_enable[0];
    assign triangular_B3_x_i_shift_bitsignaltemp = triangular_B3_x_i_shift[0];
    assign triangular_B3_x_i_stall_pred_bitsignaltemp = triangular_B3_x_i_stall_pred[0];
    assign triangular_B3_x_i_stall_succ_bitsignaltemp = triangular_B3_x_i_stall_succ[0];
    assign triangular_B3_x_i_valid_loop_bitsignaltemp = triangular_B3_x_i_valid_loop[0];
    assign triangular_B3_x_i_valid_pred_bitsignaltemp = triangular_B3_x_i_valid_pred[0];
    assign triangular_B3_x_i_valid_succ_bitsignaltemp = triangular_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B3")
    ) thetriangular_B3_x (
        .i_capture(triangular_B3_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B3_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B3_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B5_x(EXTIFACE,239)
    assign triangular_B5_x_i_capture = GND_q;
    assign triangular_B5_x_i_clear = GND_q;
    assign triangular_B5_x_i_enable = VCC_q;
    assign triangular_B5_x_i_shift = GND_q;
    assign triangular_B5_x_i_stall_pred = loop_limiter_triangular3_out_o_stall;
    assign triangular_B5_x_i_stall_succ = bb_triangular_B5_out_stall_in_0;
    assign triangular_B5_x_i_valid_loop = bb_triangular_B5_out_valid_in_0;
    assign triangular_B5_x_i_valid_pred = bb_triangular_B5_out_valid_in_1;
    assign triangular_B5_x_i_valid_succ = bb_triangular_B5_out_valid_out_0;
    assign triangular_B5_x_i_capture_bitsignaltemp = triangular_B5_x_i_capture[0];
    assign triangular_B5_x_i_clear_bitsignaltemp = triangular_B5_x_i_clear[0];
    assign triangular_B5_x_i_enable_bitsignaltemp = triangular_B5_x_i_enable[0];
    assign triangular_B5_x_i_shift_bitsignaltemp = triangular_B5_x_i_shift[0];
    assign triangular_B5_x_i_stall_pred_bitsignaltemp = triangular_B5_x_i_stall_pred[0];
    assign triangular_B5_x_i_stall_succ_bitsignaltemp = triangular_B5_x_i_stall_succ[0];
    assign triangular_B5_x_i_valid_loop_bitsignaltemp = triangular_B5_x_i_valid_loop[0];
    assign triangular_B5_x_i_valid_pred_bitsignaltemp = triangular_B5_x_i_valid_pred[0];
    assign triangular_B5_x_i_valid_succ_bitsignaltemp = triangular_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B5")
    ) thetriangular_B5_x (
        .i_capture(triangular_B5_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B5_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B5_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B8_x(EXTIFACE,240)
    assign triangular_B8_x_i_capture = GND_q;
    assign triangular_B8_x_i_clear = GND_q;
    assign triangular_B8_x_i_enable = VCC_q;
    assign triangular_B8_x_i_shift = GND_q;
    assign triangular_B8_x_i_stall_pred = loop_limiter_triangular1_out_o_stall;
    assign triangular_B8_x_i_stall_succ = bb_triangular_B6_out_stall_in_0;
    assign triangular_B8_x_i_valid_loop = bb_triangular_B8_out_valid_in_0;
    assign triangular_B8_x_i_valid_pred = bb_triangular_B8_out_valid_in_1;
    assign triangular_B8_x_i_valid_succ = bb_triangular_B6_out_valid_out_0;
    assign triangular_B8_x_i_capture_bitsignaltemp = triangular_B8_x_i_capture[0];
    assign triangular_B8_x_i_clear_bitsignaltemp = triangular_B8_x_i_clear[0];
    assign triangular_B8_x_i_enable_bitsignaltemp = triangular_B8_x_i_enable[0];
    assign triangular_B8_x_i_shift_bitsignaltemp = triangular_B8_x_i_shift[0];
    assign triangular_B8_x_i_stall_pred_bitsignaltemp = triangular_B8_x_i_stall_pred[0];
    assign triangular_B8_x_i_stall_succ_bitsignaltemp = triangular_B8_x_i_stall_succ[0];
    assign triangular_B8_x_i_valid_loop_bitsignaltemp = triangular_B8_x_i_valid_loop[0];
    assign triangular_B8_x_i_valid_pred_bitsignaltemp = triangular_B8_x_i_valid_pred[0];
    assign triangular_B8_x_i_valid_succ_bitsignaltemp = triangular_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B8")
    ) thetriangular_B8_x (
        .i_capture(triangular_B8_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B8_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B8_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // triangular_B9_x(EXTIFACE,241)
    assign triangular_B9_x_i_capture = GND_q;
    assign triangular_B9_x_i_clear = GND_q;
    assign triangular_B9_x_i_enable = VCC_q;
    assign triangular_B9_x_i_shift = GND_q;
    assign triangular_B9_x_i_stall_pred = loop_limiter_triangular4_out_o_stall;
    assign triangular_B9_x_i_stall_succ = bb_triangular_B9_out_stall_in_0;
    assign triangular_B9_x_i_valid_loop = bb_triangular_B9_out_valid_in_0;
    assign triangular_B9_x_i_valid_pred = bb_triangular_B9_out_valid_in_1;
    assign triangular_B9_x_i_valid_succ = bb_triangular_B9_out_valid_out_0;
    assign triangular_B9_x_i_capture_bitsignaltemp = triangular_B9_x_i_capture[0];
    assign triangular_B9_x_i_clear_bitsignaltemp = triangular_B9_x_i_clear[0];
    assign triangular_B9_x_i_enable_bitsignaltemp = triangular_B9_x_i_enable[0];
    assign triangular_B9_x_i_shift_bitsignaltemp = triangular_B9_x_i_shift[0];
    assign triangular_B9_x_i_stall_pred_bitsignaltemp = triangular_B9_x_i_stall_pred[0];
    assign triangular_B9_x_i_stall_succ_bitsignaltemp = triangular_B9_x_i_stall_succ[0];
    assign triangular_B9_x_i_valid_loop_bitsignaltemp = triangular_B9_x_i_valid_loop[0];
    assign triangular_B9_x_i_valid_pred_bitsignaltemp = triangular_B9_x_i_valid_pred[0];
    assign triangular_B9_x_i_valid_succ_bitsignaltemp = triangular_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("triangular.B9")
    ) thetriangular_B9_x (
        .i_capture(triangular_B9_x_i_capture_bitsignaltemp),
        .i_clear(triangular_B9_x_i_clear_bitsignaltemp),
        .i_enable(triangular_B9_x_i_enable_bitsignaltemp),
        .i_shift(triangular_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(triangular_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(triangular_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(triangular_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(triangular_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(triangular_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

endmodule
