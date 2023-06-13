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

// SystemVerilog created from covariance_function
// Created for function/kernel covariance
// SystemVerilog created on Tue Jun 13 02:07:49 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_cov,
    input wire [63:0] in_arg_data,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_covariance_i_fifodata,
    input wire [0:0] in_iord_bl_call_covariance_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_covariance_i_fifoready,
    input wire [31:0] in_memdep_1_covariance_avm_readdata,
    input wire [0:0] in_memdep_1_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_1_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_1_covariance_avm_writeack,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_covariance10_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance10_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance16_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance16_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance17_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance17_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance8_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoready,
    output wire [0:0] out_iowr_bl_return_covariance_o_fifodata,
    output wire [0:0] out_iowr_bl_return_covariance_o_fifovalid,
    output wire [31:0] out_memdep_1_covariance_avm_address,
    output wire [0:0] out_memdep_1_covariance_avm_burstcount,
    output wire [3:0] out_memdep_1_covariance_avm_byteenable,
    output wire [0:0] out_memdep_1_covariance_avm_enable,
    output wire [0:0] out_memdep_1_covariance_avm_read,
    output wire [0:0] out_memdep_1_covariance_avm_write,
    output wire [31:0] out_memdep_1_covariance_avm_writedata,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [0:0] out_o_active_memdep,
    output wire [0:0] out_o_active_memdep_1,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_covariance10_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance10_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance10_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance10_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance16_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance16_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance16_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance16_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance17_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance17_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance17_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance17_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance8_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [32:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_covariance_B10_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_covariance_B10_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B10_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_covariance_B12_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_covariance_B12_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B12_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [32:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_15_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_16_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_17_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_18_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_19_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_20_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_21_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_22_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_valid;
    wire [63:0] bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl;
    wire [63:0] bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl;
    wire [31:0] bb_covariance_B1_start_aunroll_x_out_c1_exe1;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_feedback_stall_out_1;
    wire [63:0] bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_stall_out_0;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_valid_in_0;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_valid_in_1;
    wire [0:0] bb_covariance_B1_start_aunroll_x_out_valid_out_0;
    wire [31:0] bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_valid;
    wire [63:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B5_aunroll_x_out_c0_exe10;
    wire [31:0] bb_covariance_B5_aunroll_x_out_c0_exe12;
    wire [63:0] bb_covariance_B5_aunroll_x_out_c0_exe3223;
    wire [31:0] bb_covariance_B5_aunroll_x_out_c0_exe4224;
    wire [31:0] bb_covariance_B5_aunroll_x_out_c0_exe8;
    wire [0:0] bb_covariance_B5_aunroll_x_out_c0_exe9;
    wire [31:0] bb_covariance_B5_aunroll_x_out_c1_exe1232;
    wire [0:0] bb_covariance_B5_aunroll_x_out_exiting_stall_out;
    wire [0:0] bb_covariance_B5_aunroll_x_out_exiting_valid_out;
    wire [63:0] bb_covariance_B5_aunroll_x_out_intel_reserved_ffwd_3_0;
    wire [0:0] bb_covariance_B5_aunroll_x_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B5_aunroll_x_out_stall_in_0;
    wire [0:0] bb_covariance_B5_aunroll_x_out_stall_out_0;
    wire [0:0] bb_covariance_B5_aunroll_x_out_stall_out_1;
    wire [31:0] bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_address;
    wire [0:0] bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_read;
    wire [0:0] bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_write;
    wire [31:0] bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_aunroll_x_out_valid_in_0;
    wire [0:0] bb_covariance_B5_aunroll_x_out_valid_in_1;
    wire [0:0] bb_covariance_B5_aunroll_x_out_valid_out_0;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B9_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B9_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B9_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_covariance_B10_out_c0_exe10346;
    wire [0:0] bb_covariance_B10_out_c0_exe11347;
    wire [31:0] bb_covariance_B10_out_c0_exe12348;
    wire [31:0] bb_covariance_B10_out_c0_exe13;
    wire [0:0] bb_covariance_B10_out_c0_exe1337;
    wire [31:0] bb_covariance_B10_out_c0_exe14;
    wire [31:0] bb_covariance_B10_out_c0_exe15;
    wire [32:0] bb_covariance_B10_out_c0_exe16;
    wire [0:0] bb_covariance_B10_out_c0_exe17;
    wire [0:0] bb_covariance_B10_out_c0_exe18;
    wire [0:0] bb_covariance_B10_out_c0_exe19;
    wire [31:0] bb_covariance_B10_out_c0_exe20;
    wire [31:0] bb_covariance_B10_out_c0_exe21;
    wire [0:0] bb_covariance_B10_out_c0_exe2338;
    wire [31:0] bb_covariance_B10_out_c0_exe3339;
    wire [31:0] bb_covariance_B10_out_c0_exe4340;
    wire [31:0] bb_covariance_B10_out_c0_exe5341;
    wire [31:0] bb_covariance_B10_out_c0_exe6342;
    wire [31:0] bb_covariance_B10_out_c0_exe7343;
    wire [0:0] bb_covariance_B10_out_c0_exe8344;
    wire [0:0] bb_covariance_B10_out_c0_exe9345;
    wire [0:0] bb_covariance_B10_out_exiting_stall_out;
    wire [0:0] bb_covariance_B10_out_exiting_valid_out;
    wire [0:0] bb_covariance_B10_out_feedback_stall_out_50;
    wire [0:0] bb_covariance_B10_out_memdep_phi2_pop50;
    wire [0:0] bb_covariance_B10_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B10_out_stall_out_0;
    wire [0:0] bb_covariance_B10_out_stall_out_1;
    wire [0:0] bb_covariance_B10_out_valid_in_0;
    wire [0:0] bb_covariance_B10_out_valid_in_1;
    wire [0:0] bb_covariance_B10_out_valid_out_0;
    wire [31:0] bb_covariance_B11_out_c0_exe841317;
    wire [0:0] bb_covariance_B11_out_feedback_out_25;
    wire [0:0] bb_covariance_B11_out_feedback_valid_out_25;
    wire [0:0] bb_covariance_B11_out_stall_in_0;
    wire [0:0] bb_covariance_B11_out_stall_out_0;
    wire [0:0] bb_covariance_B11_out_valid_out_0;
    wire [0:0] bb_covariance_B12_out_c0_exe1141622;
    wire [0:0] bb_covariance_B12_out_c0_exe1360;
    wire [31:0] bb_covariance_B12_out_c0_exe841318;
    wire [0:0] bb_covariance_B12_out_feedback_out_50;
    wire [0:0] bb_covariance_B12_out_feedback_valid_out_50;
    wire [0:0] bb_covariance_B12_out_lsu_memdep_1_o_active;
    wire [0:0] bb_covariance_B12_out_memdep_1;
    wire [31:0] bb_covariance_B12_out_memdep_1_covariance_avm_address;
    wire [0:0] bb_covariance_B12_out_memdep_1_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_out_memdep_1_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_out_memdep_1_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_out_memdep_1_covariance_avm_read;
    wire [0:0] bb_covariance_B12_out_memdep_1_covariance_avm_write;
    wire [31:0] bb_covariance_B12_out_memdep_1_covariance_avm_writedata;
    wire [0:0] bb_covariance_B12_out_stall_in_0;
    wire [0:0] bb_covariance_B12_out_stall_out_0;
    wire [0:0] bb_covariance_B12_out_valid_out_0;
    wire [31:0] bb_covariance_B13_out_c0_exe10415;
    wire [0:0] bb_covariance_B13_out_c0_exe11416;
    wire [0:0] bb_covariance_B13_out_c0_exe12417;
    wire [0:0] bb_covariance_B13_out_c0_exe13418;
    wire [0:0] bb_covariance_B13_out_c0_exe14419;
    wire [0:0] bb_covariance_B13_out_c0_exe15420;
    wire [31:0] bb_covariance_B13_out_c0_exe5410;
    wire [31:0] bb_covariance_B13_out_c0_exe8413;
    wire [31:0] bb_covariance_B13_out_c0_exe9414;
    wire [31:0] bb_covariance_B13_out_c1_exe1438;
    wire [0:0] bb_covariance_B13_out_exiting_stall_out;
    wire [0:0] bb_covariance_B13_out_exiting_valid_out;
    wire [0:0] bb_covariance_B13_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B13_out_stall_in_0;
    wire [0:0] bb_covariance_B13_out_stall_out_0;
    wire [0:0] bb_covariance_B13_out_stall_out_1;
    wire [31:0] bb_covariance_B13_out_unnamed_covariance16_covariance_avm_address;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance16_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B13_out_unnamed_covariance16_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance16_covariance_avm_enable;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance16_covariance_avm_read;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance16_covariance_avm_write;
    wire [31:0] bb_covariance_B13_out_unnamed_covariance16_covariance_avm_writedata;
    wire [31:0] bb_covariance_B13_out_unnamed_covariance17_covariance_avm_address;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance17_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B13_out_unnamed_covariance17_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance17_covariance_avm_enable;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance17_covariance_avm_read;
    wire [0:0] bb_covariance_B13_out_unnamed_covariance17_covariance_avm_write;
    wire [31:0] bb_covariance_B13_out_unnamed_covariance17_covariance_avm_writedata;
    wire [0:0] bb_covariance_B13_out_valid_in_0;
    wire [0:0] bb_covariance_B13_out_valid_in_1;
    wire [0:0] bb_covariance_B13_out_valid_out_0;
    wire [31:0] bb_covariance_B2_out_c0_exe52638;
    wire [63:0] bb_covariance_B2_out_intel_reserved_ffwd_2_0;
    wire [31:0] bb_covariance_B2_out_reorder_limiter_enter;
    wire [0:0] bb_covariance_B2_out_stall_out_0;
    wire [0:0] bb_covariance_B2_out_valid_out_0;
    wire [0:0] bb_covariance_B2_out_wgl_8_enter_exit_stall_out;
    wire [0:0] bb_covariance_B2_out_wgl_8_enter_exit_valid_out;
    wire [0:0] bb_covariance_B3_out_c0_exe1207;
    wire [0:0] bb_covariance_B3_out_c0_exe2208;
    wire [31:0] bb_covariance_B3_out_c0_exe3;
    wire [31:0] bb_covariance_B3_out_c0_exe4;
    wire [31:0] bb_covariance_B3_out_c0_exe6;
    wire [0:0] bb_covariance_B3_out_exiting_stall_out;
    wire [0:0] bb_covariance_B3_out_exiting_valid_out;
    wire [0:0] bb_covariance_B3_out_feedback_stall_out_20;
    wire [0:0] bb_covariance_B3_out_memdep_phi_pop20;
    wire [0:0] bb_covariance_B3_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B3_out_stall_out_0;
    wire [0:0] bb_covariance_B3_out_stall_out_1;
    wire [0:0] bb_covariance_B3_out_valid_in_0;
    wire [0:0] bb_covariance_B3_out_valid_in_1;
    wire [0:0] bb_covariance_B3_out_valid_out_0;
    wire [0:0] bb_covariance_B4_out_c0_exe105;
    wire [31:0] bb_covariance_B4_out_c0_exe126;
    wire [63:0] bb_covariance_B4_out_c0_exe32231;
    wire [31:0] bb_covariance_B4_out_c0_exe42242;
    wire [31:0] bb_covariance_B4_out_c0_exe83;
    wire [0:0] bb_covariance_B4_out_c0_exe94;
    wire [31:0] bb_covariance_B4_out_mul6;
    wire [0:0] bb_covariance_B4_out_stall_out_0;
    wire [0:0] bb_covariance_B4_out_valid_out_0;
    wire [31:0] bb_covariance_B6_out_c0_exe52639;
    wire [0:0] bb_covariance_B6_out_feedback_out_20;
    wire [0:0] bb_covariance_B6_out_feedback_valid_out_20;
    wire [0:0] bb_covariance_B6_out_stall_in_0;
    wire [0:0] bb_covariance_B6_out_stall_out_0;
    wire [0:0] bb_covariance_B6_out_valid_out_0;
    wire [31:0] bb_covariance_B7_out_c0_exe5263;
    wire [0:0] bb_covariance_B7_out_c0_exe6264;
    wire [0:0] bb_covariance_B7_out_c0_exe7265;
    wire [0:0] bb_covariance_B7_out_exiting_stall_out;
    wire [0:0] bb_covariance_B7_out_exiting_valid_out;
    wire [0:0] bb_covariance_B7_out_lsu_memdep_o_active;
    wire [0:0] bb_covariance_B7_out_memdep;
    wire [31:0] bb_covariance_B7_out_memdep_covariance_avm_address;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_out_memdep_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_read;
    wire [0:0] bb_covariance_B7_out_memdep_covariance_avm_write;
    wire [31:0] bb_covariance_B7_out_memdep_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B7_out_stall_in_0;
    wire [0:0] bb_covariance_B7_out_stall_out_0;
    wire [0:0] bb_covariance_B7_out_stall_out_1;
    wire [31:0] bb_covariance_B7_out_unnamed_covariance10_covariance_avm_address;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance10_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_out_unnamed_covariance10_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance10_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance10_covariance_avm_read;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance10_covariance_avm_write;
    wire [31:0] bb_covariance_B7_out_unnamed_covariance10_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_out_valid_in_0;
    wire [0:0] bb_covariance_B7_out_valid_in_1;
    wire [0:0] bb_covariance_B7_out_valid_out_0;
    wire [31:0] bb_covariance_B8_out_c0_exe10306;
    wire [31:0] bb_covariance_B8_out_c0_exe1297;
    wire [31:0] bb_covariance_B8_out_c0_exe2298;
    wire [32:0] bb_covariance_B8_out_c0_exe3299;
    wire [0:0] bb_covariance_B8_out_c0_exe4300;
    wire [0:0] bb_covariance_B8_out_c0_exe5301;
    wire [31:0] bb_covariance_B8_out_c0_exe6302;
    wire [31:0] bb_covariance_B8_out_c0_exe7303;
    wire [31:0] bb_covariance_B8_out_c0_exe9305;
    wire [0:0] bb_covariance_B8_out_exiting_stall_out;
    wire [0:0] bb_covariance_B8_out_exiting_valid_out;
    wire [0:0] bb_covariance_B8_out_feedback_stall_out_25;
    wire [0:0] bb_covariance_B8_out_memdep_phi3_pop25;
    wire [0:0] bb_covariance_B8_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B8_out_stall_out_0;
    wire [0:0] bb_covariance_B8_out_stall_out_1;
    wire [0:0] bb_covariance_B8_out_valid_in_0;
    wire [0:0] bb_covariance_B8_out_valid_in_1;
    wire [0:0] bb_covariance_B8_out_valid_out_0;
    wire [0:0] bb_covariance_B9_out_feedback_out_1;
    wire [0:0] bb_covariance_B9_out_feedback_valid_out_1;
    wire [0:0] bb_covariance_B9_out_iowr_bl_return_covariance_o_fifodata;
    wire [0:0] bb_covariance_B9_out_iowr_bl_return_covariance_o_fifovalid;
    wire [0:0] bb_covariance_B9_out_stall_in_0;
    wire [0:0] bb_covariance_B9_out_stall_out_0;
    wire [0:0] bb_covariance_B9_out_valid_out_0;
    wire [0:0] bb_covariance_B9_out_wgl_8_exit_exit_stall_in;
    wire [0:0] bb_covariance_B9_out_wgl_8_exit_exit_valid_in;
    wire [1:0] c_i2_0156_q;
    wire [63:0] c_i32_addrspace_1025_undef49_q;
    wire [31:0] c_i32_undef110_q;
    wire [32:0] c_i33_undef118_q;
    wire [0:0] covariance_B1_start_x_i_capture;
    wire covariance_B1_start_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_clear;
    wire covariance_B1_start_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_enable;
    wire covariance_B1_start_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_shift;
    wire covariance_B1_start_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_stall_pred;
    wire covariance_B1_start_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_stall_succ;
    wire covariance_B1_start_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_valid_loop;
    wire covariance_B1_start_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_valid_pred;
    wire covariance_B1_start_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B1_start_x_i_valid_succ;
    wire covariance_B1_start_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_capture;
    wire covariance_B10_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_clear;
    wire covariance_B10_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_enable;
    wire covariance_B10_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_shift;
    wire covariance_B10_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_stall_pred;
    wire covariance_B10_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_stall_succ;
    wire covariance_B10_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_valid_loop;
    wire covariance_B10_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_valid_pred;
    wire covariance_B10_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B10_x_i_valid_succ;
    wire covariance_B10_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_capture;
    wire covariance_B13_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_clear;
    wire covariance_B13_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_enable;
    wire covariance_B13_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_shift;
    wire covariance_B13_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_stall_pred;
    wire covariance_B13_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_stall_succ;
    wire covariance_B13_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_valid_loop;
    wire covariance_B13_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_valid_pred;
    wire covariance_B13_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B13_x_i_valid_succ;
    wire covariance_B13_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_capture;
    wire covariance_B3_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_clear;
    wire covariance_B3_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_enable;
    wire covariance_B3_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_shift;
    wire covariance_B3_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_stall_pred;
    wire covariance_B3_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_stall_succ;
    wire covariance_B3_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_valid_loop;
    wire covariance_B3_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_valid_pred;
    wire covariance_B3_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B3_x_i_valid_succ;
    wire covariance_B3_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_capture;
    wire covariance_B5_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_clear;
    wire covariance_B5_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_enable;
    wire covariance_B5_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_shift;
    wire covariance_B5_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_stall_pred;
    wire covariance_B5_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_stall_succ;
    wire covariance_B5_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_valid_loop;
    wire covariance_B5_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_valid_pred;
    wire covariance_B5_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B5_x_i_valid_succ;
    wire covariance_B5_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_capture;
    wire covariance_B7_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_clear;
    wire covariance_B7_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_enable;
    wire covariance_B7_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_shift;
    wire covariance_B7_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_stall_pred;
    wire covariance_B7_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_stall_succ;
    wire covariance_B7_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_valid_loop;
    wire covariance_B7_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_valid_pred;
    wire covariance_B7_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B7_x_i_valid_succ;
    wire covariance_B7_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_capture;
    wire covariance_B8_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_clear;
    wire covariance_B8_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_enable;
    wire covariance_B8_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_shift;
    wire covariance_B8_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_stall_pred;
    wire covariance_B8_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_stall_succ;
    wire covariance_B8_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_valid_loop;
    wire covariance_B8_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_valid_pred;
    wire covariance_B8_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B8_x_i_valid_succ;
    wire covariance_B8_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_valid_out;
    wire [0:0] loop_limiter_covariance0_out_o_stall;
    wire [0:0] loop_limiter_covariance0_out_o_valid;
    wire [0:0] loop_limiter_covariance1_out_o_stall;
    wire [0:0] loop_limiter_covariance1_out_o_valid;
    wire [0:0] loop_limiter_covariance2_out_o_stall;
    wire [0:0] loop_limiter_covariance2_out_o_valid;
    wire [0:0] loop_limiter_covariance3_out_o_stall;
    wire [0:0] loop_limiter_covariance3_out_o_valid;
    wire [0:0] loop_limiter_covariance4_out_o_stall;
    wire [0:0] loop_limiter_covariance4_out_o_valid;
    wire [0:0] loop_limiter_covariance5_out_o_stall;
    wire [0:0] loop_limiter_covariance5_out_o_valid;


    // c_i2_0156(CONSTANT,89)
    assign c_i2_0156_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo(BLACKBOX,145)
    covariance_i_llvm_fpga_pipeline_keep_going75_2_valid_fifo thei_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo (
        .in_data_in(c_i2_0156_q),
        .in_stall_in(bb_covariance_B1_start_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going75_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo(BLACKBOX,143)
    covariance_i_llvm_fpga_pipeline_keep_going71_2_valid_fifo thei_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo (
        .in_data_in(c_i2_0156_q),
        .in_stall_in(bb_covariance_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo(BLACKBOX,141)
    covariance_i_llvm_fpga_pipeline_keep_going57_6_valid_fifo thei_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo (
        .in_data_in(c_i2_0156_q),
        .in_stall_in(bb_covariance_B5_aunroll_x_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going57_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo(BLACKBOX,139)
    covariance_i_llvm_fpga_pipeline_keep_going41_6_valid_fifo thei_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo (
        .in_data_in(c_i2_0156_q),
        .in_stall_in(bb_covariance_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going41_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6_sr_0_aunroll_x(BLACKBOX,12)
    covariance_bb_B6_sr_0 thebb_covariance_B6_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_covariance_B7_out_c0_exe5263),
        .in_i_data_1_tpl(bb_covariance_B7_out_c0_exe6264),
        .in_i_data_2_tpl(bb_covariance_B7_out_c0_exe7265),
        .in_i_data_3_tpl(bb_covariance_B7_out_memdep),
        .in_i_stall(bb_covariance_B6_out_stall_out_0),
        .in_i_valid(bb_covariance_B7_out_valid_out_0),
        .out_o_data_0_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going41_covariance6_sr(BLACKBOX,138)
    covariance_i_llvm_fpga_pipeline_keep_going41_6_sr thei_llvm_fpga_pipeline_keep_going41_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going41_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going41_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_addrspace_1025_undef49(CONSTANT,96)
    assign c_i32_addrspace_1025_undef49_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_covariance_B7(BLACKBOX,25)
    covariance_bb_B7 thebb_covariance_B7 (
        .in_exitcond1089_pop34136_0(GND_q),
        .in_exitcond1089_pop34136_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked38_0(GND_q),
        .in_forked38_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j_077_pop1993_pop36131_0(c_i32_undef110_q),
        .in_j_077_pop1993_pop36131_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_lim_ext115_0(c_i32_undef110_q),
        .in_lim_ext115_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext80_pop33134_0(c_i32_undef110_q),
        .in_lim_ext80_pop33134_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_mPtr_bitcast8286129_0(c_i32_addrspace_1025_undef49_q),
        .in_mPtr_bitcast8286129_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_mul6128_0(c_i32_undef110_q),
        .in_mul6128_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp6991_pop35138_0(GND_q),
        .in_notcmp6991_pop35138_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going41_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance10_covariance_avm_readdata(in_unnamed_covariance10_covariance_avm_readdata),
        .in_unnamed_covariance10_covariance_avm_readdatavalid(in_unnamed_covariance10_covariance_avm_readdatavalid),
        .in_unnamed_covariance10_covariance_avm_waitrequest(in_unnamed_covariance10_covariance_avm_waitrequest),
        .in_unnamed_covariance10_covariance_avm_writeack(in_unnamed_covariance10_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going41_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe5263(bb_covariance_B7_out_c0_exe5263),
        .out_c0_exe6264(bb_covariance_B7_out_c0_exe6264),
        .out_c0_exe7265(bb_covariance_B7_out_c0_exe7265),
        .out_exiting_stall_out(bb_covariance_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B7_out_exiting_valid_out),
        .out_lsu_memdep_o_active(bb_covariance_B7_out_lsu_memdep_o_active),
        .out_memdep(bb_covariance_B7_out_memdep),
        .out_memdep_covariance_avm_address(bb_covariance_B7_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(bb_covariance_B7_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(bb_covariance_B7_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(bb_covariance_B7_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(bb_covariance_B7_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(bb_covariance_B7_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(bb_covariance_B7_out_memdep_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B7_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B7_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B7_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B7_out_stall_out_1),
        .out_unnamed_covariance10_covariance_avm_address(bb_covariance_B7_out_unnamed_covariance10_covariance_avm_address),
        .out_unnamed_covariance10_covariance_avm_burstcount(bb_covariance_B7_out_unnamed_covariance10_covariance_avm_burstcount),
        .out_unnamed_covariance10_covariance_avm_byteenable(bb_covariance_B7_out_unnamed_covariance10_covariance_avm_byteenable),
        .out_unnamed_covariance10_covariance_avm_enable(bb_covariance_B7_out_unnamed_covariance10_covariance_avm_enable),
        .out_unnamed_covariance10_covariance_avm_read(bb_covariance_B7_out_unnamed_covariance10_covariance_avm_read),
        .out_unnamed_covariance10_covariance_avm_write(bb_covariance_B7_out_unnamed_covariance10_covariance_avm_write),
        .out_unnamed_covariance10_covariance_avm_writedata(bb_covariance_B7_out_unnamed_covariance10_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B7_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B7_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7_sr_1_aunroll_x(BLACKBOX,13)
    covariance_bb_B7_sr_1 thebb_covariance_B7_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B4_out_c0_exe126),
        .in_i_data_2_tpl(bb_covariance_B4_out_mul6),
        .in_i_data_3_tpl(bb_covariance_B4_out_c0_exe32231),
        .in_i_data_4_tpl(bb_covariance_B4_out_c0_exe42242),
        .in_i_data_5_tpl(bb_covariance_B4_out_c0_exe83),
        .in_i_data_6_tpl(bb_covariance_B4_out_c0_exe94),
        .in_i_data_7_tpl(bb_covariance_B4_out_c0_exe105),
        .in_i_stall(bb_covariance_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance3_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_stall(bb_covariance_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B7_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance3(BLACKBOX,185)
    covariance_loop_limiter_3 theloop_limiter_covariance3 (
        .in_i_stall(bb_covariance_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B7_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B4_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance3_out_o_stall),
        .out_o_valid(loop_limiter_covariance3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B4(BLACKBOX,23)
    covariance_bb_B4 thebb_covariance_B4 (
        .in_c0_exe105_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe126_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe32231_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe42242_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe83_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe94_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c1_exe12327_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(loop_limiter_covariance3_out_o_stall),
        .in_valid_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe105(bb_covariance_B4_out_c0_exe105),
        .out_c0_exe126(bb_covariance_B4_out_c0_exe126),
        .out_c0_exe32231(bb_covariance_B4_out_c0_exe32231),
        .out_c0_exe42242(bb_covariance_B4_out_c0_exe42242),
        .out_c0_exe83(bb_covariance_B4_out_c0_exe83),
        .out_c0_exe94(bb_covariance_B4_out_c0_exe94),
        .out_mul6(bb_covariance_B4_out_mul6),
        .out_stall_out_0(bb_covariance_B4_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B4_sr_0_aunroll_x(BLACKBOX,9)
    covariance_bb_B4_sr_0 thebb_covariance_B4_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_covariance_B5_aunroll_x_out_c0_exe3223),
        .in_i_data_1_tpl(bb_covariance_B5_aunroll_x_out_c0_exe4224),
        .in_i_data_2_tpl(bb_covariance_B5_aunroll_x_out_c0_exe8),
        .in_i_data_3_tpl(bb_covariance_B5_aunroll_x_out_c0_exe9),
        .in_i_data_4_tpl(bb_covariance_B5_aunroll_x_out_c0_exe10),
        .in_i_data_5_tpl(bb_covariance_B5_aunroll_x_out_c0_exe12),
        .in_i_data_6_tpl(bb_covariance_B5_aunroll_x_out_c1_exe1232),
        .in_i_stall(bb_covariance_B4_out_stall_out_0),
        .in_i_valid(bb_covariance_B5_aunroll_x_out_valid_out_0),
        .out_o_data_0_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_covariance_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B4_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going57_covariance6_sr(BLACKBOX,140)
    covariance_i_llvm_fpga_pipeline_keep_going57_6_sr thei_llvm_fpga_pipeline_keep_going57_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B5_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going57_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going57_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_aunroll_x(BLACKBOX,10)
    covariance_bb_B5 thebb_covariance_B5_aunroll_x (
        .in_intel_reserved_ffwd_0_0_0_tpl(bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .in_intel_reserved_ffwd_0_0_1_tpl(bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .in_exitcond10123_0(GND_q),
        .in_exitcond10123_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked54_0(GND_q),
        .in_forked54_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j_077_pop19125_0(c_i32_undef110_q),
        .in_j_077_pop19125_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_lim_ext117_0(c_i32_undef110_q),
        .in_lim_ext117_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext79_pop21127_0(c_i32_undef110_q),
        .in_lim_ext79_pop21127_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_phi_pop20126_0(GND_q),
        .in_memdep_phi_pop20126_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp69124_0(GND_q),
        .in_notcmp69124_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going57_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance8_covariance_avm_readdata(in_unnamed_covariance8_covariance_avm_readdata),
        .in_unnamed_covariance8_covariance_avm_readdatavalid(in_unnamed_covariance8_covariance_avm_readdatavalid),
        .in_unnamed_covariance8_covariance_avm_waitrequest(in_unnamed_covariance8_covariance_avm_waitrequest),
        .in_unnamed_covariance8_covariance_avm_writeack(in_unnamed_covariance8_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going57_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_covariance_B5_aunroll_x_out_c0_exe10),
        .out_c0_exe12(bb_covariance_B5_aunroll_x_out_c0_exe12),
        .out_c0_exe3223(bb_covariance_B5_aunroll_x_out_c0_exe3223),
        .out_c0_exe4224(bb_covariance_B5_aunroll_x_out_c0_exe4224),
        .out_c0_exe8(bb_covariance_B5_aunroll_x_out_c0_exe8),
        .out_c0_exe9(bb_covariance_B5_aunroll_x_out_c0_exe9),
        .out_c1_exe1232(bb_covariance_B5_aunroll_x_out_c1_exe1232),
        .out_exiting_stall_out(bb_covariance_B5_aunroll_x_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B5_aunroll_x_out_exiting_valid_out),
        .out_intel_reserved_ffwd_3_0(bb_covariance_B5_aunroll_x_out_intel_reserved_ffwd_3_0),
        .out_pipeline_valid_out(bb_covariance_B5_aunroll_x_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B5_aunroll_x_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B5_aunroll_x_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B5_aunroll_x_out_stall_out_1),
        .out_unnamed_covariance8_covariance_avm_address(bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_address),
        .out_unnamed_covariance8_covariance_avm_burstcount(bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_burstcount),
        .out_unnamed_covariance8_covariance_avm_byteenable(bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_byteenable),
        .out_unnamed_covariance8_covariance_avm_enable(bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_enable),
        .out_unnamed_covariance8_covariance_avm_read(bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_read),
        .out_unnamed_covariance8_covariance_avm_write(bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_write),
        .out_unnamed_covariance8_covariance_avm_writedata(bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B5_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B5_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B5_aunroll_x_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_sr_1_aunroll_x(BLACKBOX,11)
    covariance_bb_B5_sr_1 thebb_covariance_B5_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B3_out_c0_exe6),
        .in_i_data_2_tpl(bb_covariance_B3_out_c0_exe1207),
        .in_i_data_3_tpl(bb_covariance_B3_out_c0_exe2208),
        .in_i_data_4_tpl(bb_covariance_B3_out_c0_exe3),
        .in_i_data_5_tpl(bb_covariance_B3_out_memdep_phi_pop20),
        .in_i_data_6_tpl(bb_covariance_B3_out_c0_exe4),
        .in_i_stall(bb_covariance_B5_aunroll_x_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance2_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_stall(bb_covariance_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B5_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance2(BLACKBOX,184)
    covariance_loop_limiter_2 theloop_limiter_covariance2 (
        .in_i_stall(bb_covariance_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B5_aunroll_x_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B3_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B5_aunroll_x_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance2_out_o_stall),
        .out_o_valid(loop_limiter_covariance2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going71_covariance2_sr(BLACKBOX,142)
    covariance_i_llvm_fpga_pipeline_keep_going71_2_sr thei_llvm_fpga_pipeline_keep_going71_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef110(CONSTANT,97)
    assign c_i32_undef110_q = $unsigned(32'b00000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo(BLACKBOX,137)
    covariance_i_llvm_fpga_pipeline_keep_going33_2_valid_fifo thei_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo (
        .in_data_in(c_i2_0156_q),
        .in_stall_in(bb_covariance_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going33_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo(BLACKBOX,135)
    covariance_i_llvm_fpga_pipeline_keep_going28_2_valid_fifo thei_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo (
        .in_data_in(c_i2_0156_q),
        .in_stall_in(bb_covariance_B10_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going28_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo(BLACKBOX,147)
    covariance_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo (
        .in_data_in(c_i2_0156_q),
        .in_stall_in(bb_covariance_B13_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_sr_0_aunroll_x(BLACKBOX,4)
    covariance_bb_B12_sr_0 thebb_covariance_B12_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_covariance_B13_out_c0_exe5410),
        .in_i_data_1_tpl(bb_covariance_B13_out_c0_exe8413),
        .in_i_data_2_tpl(bb_covariance_B13_out_c0_exe9414),
        .in_i_data_3_tpl(bb_covariance_B13_out_c0_exe10415),
        .in_i_data_4_tpl(bb_covariance_B13_out_c0_exe11416),
        .in_i_data_5_tpl(bb_covariance_B13_out_c0_exe12417),
        .in_i_data_6_tpl(bb_covariance_B13_out_c0_exe13418),
        .in_i_data_7_tpl(bb_covariance_B13_out_c0_exe14419),
        .in_i_data_8_tpl(bb_covariance_B13_out_c0_exe15420),
        .in_i_data_9_tpl(bb_covariance_B13_out_c1_exe1438),
        .in_i_stall(bb_covariance_B12_out_stall_out_0),
        .in_i_valid(bb_covariance_B13_out_valid_out_0),
        .out_o_data_0_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B12_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_stall(bb_covariance_B12_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B12_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6_sr(BLACKBOX,146)
    covariance_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B13_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13(BLACKBOX,20)
    covariance_bb_B13 thebb_covariance_B13 (
        .in_exitcond18175_0(GND_q),
        .in_exitcond18175_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_exitcond21102_pop55183_0(GND_q),
        .in_exitcond21102_pop55183_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_20_tpl),
        .in_exitcond21161_0(GND_q),
        .in_exitcond21161_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_forked27174_0(GND_q),
        .in_forked27174_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv14_pop23158_0(c_i33_undef118_q),
        .in_fpga_indvars_iv14_pop23158_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_i21_072_pop24152_0(c_i32_undef110_q),
        .in_i21_072_pop24152_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i21_072_pop2498_pop53181_0(c_i32_undef110_q),
        .in_i21_072_pop2498_pop53181_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_18_tpl),
        .in_intel_reserved_ffwd_3_0(bb_covariance_B5_aunroll_x_out_intel_reserved_ffwd_3_0),
        .in_j26_071_pop49177_0(c_i32_undef110_q),
        .in_j26_071_pop49177_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_lim_ext81_pop42144_0(c_i32_undef110_q),
        .in_lim_ext81_pop42144_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lim_ext82_pop26170_0(c_i32_undef110_q),
        .in_lim_ext82_pop26170_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_lim_ext83_pop51179_0(c_i32_undef110_q),
        .in_lim_ext83_pop51179_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_16_tpl),
        .in_memdep_phi2_pop50178_0(GND_q),
        .in_memdep_phi2_pop50178_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_15_tpl),
        .in_memdep_phi3_pop25106_pop57185_0(GND_q),
        .in_memdep_phi3_pop25106_pop57185_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_22_tpl),
        .in_memdep_phi3_pop25167_0(GND_q),
        .in_memdep_phi3_pop25167_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul47100_pop54182_0(c_i32_undef110_q),
        .in_mul47100_pop54182_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_19_tpl),
        .in_mul47155_0(c_i32_undef110_q),
        .in_mul47155_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp26176_0(GND_q),
        .in_notcmp26176_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp31104_pop56184_0(GND_q),
        .in_notcmp31104_pop56184_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_21_tpl),
        .in_notcmp31164_0(GND_q),
        .in_notcmp31164_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_stall),
        .in_reorder_limiter_enter121_0(c_i32_undef110_q),
        .in_reorder_limiter_enter121_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_reorder_limiter_enter86_pop27173_0(c_i32_undef110_q),
        .in_reorder_limiter_enter86_pop27173_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_reorder_limiter_enter87_pop52180_0(c_i32_undef110_q),
        .in_reorder_limiter_enter87_pop52180_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_17_tpl),
        .in_stall_in_0(bb_covariance_B12_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance16_covariance_avm_readdata(in_unnamed_covariance16_covariance_avm_readdata),
        .in_unnamed_covariance16_covariance_avm_readdatavalid(in_unnamed_covariance16_covariance_avm_readdatavalid),
        .in_unnamed_covariance16_covariance_avm_waitrequest(in_unnamed_covariance16_covariance_avm_waitrequest),
        .in_unnamed_covariance16_covariance_avm_writeack(in_unnamed_covariance16_covariance_avm_writeack),
        .in_unnamed_covariance17_covariance_avm_readdata(in_unnamed_covariance17_covariance_avm_readdata),
        .in_unnamed_covariance17_covariance_avm_readdatavalid(in_unnamed_covariance17_covariance_avm_readdatavalid),
        .in_unnamed_covariance17_covariance_avm_waitrequest(in_unnamed_covariance17_covariance_avm_waitrequest),
        .in_unnamed_covariance17_covariance_avm_writeack(in_unnamed_covariance17_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B13_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10415(bb_covariance_B13_out_c0_exe10415),
        .out_c0_exe11416(bb_covariance_B13_out_c0_exe11416),
        .out_c0_exe12417(bb_covariance_B13_out_c0_exe12417),
        .out_c0_exe13418(bb_covariance_B13_out_c0_exe13418),
        .out_c0_exe14419(bb_covariance_B13_out_c0_exe14419),
        .out_c0_exe15420(bb_covariance_B13_out_c0_exe15420),
        .out_c0_exe5410(bb_covariance_B13_out_c0_exe5410),
        .out_c0_exe8413(bb_covariance_B13_out_c0_exe8413),
        .out_c0_exe9414(bb_covariance_B13_out_c0_exe9414),
        .out_c1_exe1438(bb_covariance_B13_out_c1_exe1438),
        .out_exiting_stall_out(bb_covariance_B13_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B13_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B13_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B13_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B13_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B13_out_stall_out_1),
        .out_unnamed_covariance16_covariance_avm_address(bb_covariance_B13_out_unnamed_covariance16_covariance_avm_address),
        .out_unnamed_covariance16_covariance_avm_burstcount(bb_covariance_B13_out_unnamed_covariance16_covariance_avm_burstcount),
        .out_unnamed_covariance16_covariance_avm_byteenable(bb_covariance_B13_out_unnamed_covariance16_covariance_avm_byteenable),
        .out_unnamed_covariance16_covariance_avm_enable(bb_covariance_B13_out_unnamed_covariance16_covariance_avm_enable),
        .out_unnamed_covariance16_covariance_avm_read(bb_covariance_B13_out_unnamed_covariance16_covariance_avm_read),
        .out_unnamed_covariance16_covariance_avm_write(bb_covariance_B13_out_unnamed_covariance16_covariance_avm_write),
        .out_unnamed_covariance16_covariance_avm_writedata(bb_covariance_B13_out_unnamed_covariance16_covariance_avm_writedata),
        .out_unnamed_covariance17_covariance_avm_address(bb_covariance_B13_out_unnamed_covariance17_covariance_avm_address),
        .out_unnamed_covariance17_covariance_avm_burstcount(bb_covariance_B13_out_unnamed_covariance17_covariance_avm_burstcount),
        .out_unnamed_covariance17_covariance_avm_byteenable(bb_covariance_B13_out_unnamed_covariance17_covariance_avm_byteenable),
        .out_unnamed_covariance17_covariance_avm_enable(bb_covariance_B13_out_unnamed_covariance17_covariance_avm_enable),
        .out_unnamed_covariance17_covariance_avm_read(bb_covariance_B13_out_unnamed_covariance17_covariance_avm_read),
        .out_unnamed_covariance17_covariance_avm_write(bb_covariance_B13_out_unnamed_covariance17_covariance_avm_write),
        .out_unnamed_covariance17_covariance_avm_writedata(bb_covariance_B13_out_unnamed_covariance17_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B13_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B13_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B13_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13_sr_1_aunroll_x(BLACKBOX,5)
    covariance_bb_B13_sr_1 thebb_covariance_B13_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B10_out_c0_exe12348),
        .in_i_data_2_tpl(bb_covariance_B10_out_c0_exe13),
        .in_i_data_3_tpl(bb_covariance_B10_out_c0_exe14),
        .in_i_data_4_tpl(bb_covariance_B10_out_c0_exe15),
        .in_i_data_5_tpl(bb_covariance_B10_out_c0_exe16),
        .in_i_data_6_tpl(bb_covariance_B10_out_c0_exe17),
        .in_i_data_7_tpl(bb_covariance_B10_out_c0_exe18),
        .in_i_data_8_tpl(bb_covariance_B10_out_c0_exe19),
        .in_i_data_9_tpl(bb_covariance_B10_out_c0_exe20),
        .in_i_data_10_tpl(bb_covariance_B10_out_c0_exe21),
        .in_i_data_11_tpl(bb_covariance_B10_out_c0_exe11347),
        .in_i_data_12_tpl(bb_covariance_B10_out_c0_exe1337),
        .in_i_data_13_tpl(bb_covariance_B10_out_c0_exe2338),
        .in_i_data_14_tpl(bb_covariance_B10_out_c0_exe3339),
        .in_i_data_15_tpl(bb_covariance_B10_out_memdep_phi2_pop50),
        .in_i_data_16_tpl(bb_covariance_B10_out_c0_exe4340),
        .in_i_data_17_tpl(bb_covariance_B10_out_c0_exe5341),
        .in_i_data_18_tpl(bb_covariance_B10_out_c0_exe6342),
        .in_i_data_19_tpl(bb_covariance_B10_out_c0_exe7343),
        .in_i_data_20_tpl(bb_covariance_B10_out_c0_exe8344),
        .in_i_data_21_tpl(bb_covariance_B10_out_c0_exe9345),
        .in_i_data_22_tpl(bb_covariance_B10_out_c0_exe10346),
        .in_i_stall(bb_covariance_B13_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance5_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_14_tpl),
        .out_o_data_15_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_15_tpl),
        .out_o_data_16_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_16_tpl),
        .out_o_data_17_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_17_tpl),
        .out_o_data_18_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_18_tpl),
        .out_o_data_19_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_19_tpl),
        .out_o_data_20_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_20_tpl),
        .out_o_data_21_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_21_tpl),
        .out_o_data_22_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_22_tpl),
        .out_o_stall(bb_covariance_B13_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B13_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance5(BLACKBOX,187)
    covariance_loop_limiter_5 theloop_limiter_covariance5 (
        .in_i_stall(bb_covariance_B13_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B13_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B10_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B13_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance5_out_o_stall),
        .out_o_valid(loop_limiter_covariance5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going28_covariance2_sr(BLACKBOX,134)
    covariance_i_llvm_fpga_pipeline_keep_going28_2_sr thei_llvm_fpga_pipeline_keep_going28_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B10_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going28_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going28_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef118(CONSTANT,124)
    assign c_i33_undef118_q = $unsigned(33'b000000000000000000000000000000000);

    // bb_covariance_B11_sr_0_aunroll_x(BLACKBOX,3)
    covariance_bb_B11_sr_0 thebb_covariance_B11_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_covariance_B12_out_c0_exe1360),
        .in_i_data_1_tpl(bb_covariance_B12_out_memdep_1),
        .in_i_data_2_tpl(bb_covariance_B12_out_c0_exe841318),
        .in_i_data_3_tpl(bb_covariance_B12_out_c0_exe1141622),
        .in_i_stall(bb_covariance_B11_out_stall_out_0),
        .in_i_valid(bb_covariance_B12_out_valid_out_0),
        .out_o_data_0_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_stall(bb_covariance_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B11_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12(BLACKBOX,19)
    covariance_bb_B12 thebb_covariance_B12 (
        .in_c0_exe1041520_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe1141622_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe1241723_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe1341824_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe1441925_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe1542026_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe541015_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe841318_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe941419_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c1_exe143827_0(bb_covariance_B12_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_feedback_stall_in_50(bb_covariance_B10_out_feedback_stall_out_50),
        .in_flush(in_start),
        .in_intel_reserved_ffwd_2_0(bb_covariance_B2_out_intel_reserved_ffwd_2_0),
        .in_memdep_1_covariance_avm_readdata(in_memdep_1_covariance_avm_readdata),
        .in_memdep_1_covariance_avm_readdatavalid(in_memdep_1_covariance_avm_readdatavalid),
        .in_memdep_1_covariance_avm_waitrequest(in_memdep_1_covariance_avm_waitrequest),
        .in_memdep_1_covariance_avm_writeack(in_memdep_1_covariance_avm_writeack),
        .in_stall_in_0(bb_covariance_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B12_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1141622(bb_covariance_B12_out_c0_exe1141622),
        .out_c0_exe1360(bb_covariance_B12_out_c0_exe1360),
        .out_c0_exe841318(bb_covariance_B12_out_c0_exe841318),
        .out_feedback_out_50(bb_covariance_B12_out_feedback_out_50),
        .out_feedback_valid_out_50(bb_covariance_B12_out_feedback_valid_out_50),
        .out_lsu_memdep_1_o_active(bb_covariance_B12_out_lsu_memdep_1_o_active),
        .out_memdep_1(bb_covariance_B12_out_memdep_1),
        .out_memdep_1_covariance_avm_address(bb_covariance_B12_out_memdep_1_covariance_avm_address),
        .out_memdep_1_covariance_avm_burstcount(bb_covariance_B12_out_memdep_1_covariance_avm_burstcount),
        .out_memdep_1_covariance_avm_byteenable(bb_covariance_B12_out_memdep_1_covariance_avm_byteenable),
        .out_memdep_1_covariance_avm_enable(bb_covariance_B12_out_memdep_1_covariance_avm_enable),
        .out_memdep_1_covariance_avm_read(bb_covariance_B12_out_memdep_1_covariance_avm_read),
        .out_memdep_1_covariance_avm_write(bb_covariance_B12_out_memdep_1_covariance_avm_write),
        .out_memdep_1_covariance_avm_writedata(bb_covariance_B12_out_memdep_1_covariance_avm_writedata),
        .out_stall_in_0(bb_covariance_B12_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B12_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10(BLACKBOX,17)
    covariance_bb_B10 thebb_covariance_B10 (
        .in_exitcond21159_0(GND_q),
        .in_exitcond21159_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_feedback_in_50(bb_covariance_B12_out_feedback_out_50),
        .in_feedback_valid_in_50(bb_covariance_B12_out_feedback_valid_out_50),
        .in_forked27_0(GND_q),
        .in_forked27_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv14_pop23156_0(c_i33_undef118_q),
        .in_fpga_indvars_iv14_pop23156_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_i21_072_pop24150_0(c_i32_undef110_q),
        .in_i21_072_pop24150_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lim_ext81_pop42145_0(c_i32_undef110_q),
        .in_lim_ext81_pop42145_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lim_ext82_pop26168_0(c_i32_undef110_q),
        .in_lim_ext82_pop26168_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi3_pop25165_0(GND_q),
        .in_memdep_phi3_pop25165_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_mul47153_0(c_i32_undef110_q),
        .in_mul47153_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_notcmp31162_0(GND_q),
        .in_notcmp31162_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going28_covariance2_sr_out_o_stall),
        .in_reorder_limiter_enter122_0(c_i32_undef110_q),
        .in_reorder_limiter_enter122_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_reorder_limiter_enter86_pop27171_0(c_i32_undef110_q),
        .in_reorder_limiter_enter86_pop27171_1(bb_covariance_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_stall_in_0(loop_limiter_covariance5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going28_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B10_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10346(bb_covariance_B10_out_c0_exe10346),
        .out_c0_exe11347(bb_covariance_B10_out_c0_exe11347),
        .out_c0_exe12348(bb_covariance_B10_out_c0_exe12348),
        .out_c0_exe13(bb_covariance_B10_out_c0_exe13),
        .out_c0_exe1337(bb_covariance_B10_out_c0_exe1337),
        .out_c0_exe14(bb_covariance_B10_out_c0_exe14),
        .out_c0_exe15(bb_covariance_B10_out_c0_exe15),
        .out_c0_exe16(bb_covariance_B10_out_c0_exe16),
        .out_c0_exe17(bb_covariance_B10_out_c0_exe17),
        .out_c0_exe18(bb_covariance_B10_out_c0_exe18),
        .out_c0_exe19(bb_covariance_B10_out_c0_exe19),
        .out_c0_exe20(bb_covariance_B10_out_c0_exe20),
        .out_c0_exe21(bb_covariance_B10_out_c0_exe21),
        .out_c0_exe2338(bb_covariance_B10_out_c0_exe2338),
        .out_c0_exe3339(bb_covariance_B10_out_c0_exe3339),
        .out_c0_exe4340(bb_covariance_B10_out_c0_exe4340),
        .out_c0_exe5341(bb_covariance_B10_out_c0_exe5341),
        .out_c0_exe6342(bb_covariance_B10_out_c0_exe6342),
        .out_c0_exe7343(bb_covariance_B10_out_c0_exe7343),
        .out_c0_exe8344(bb_covariance_B10_out_c0_exe8344),
        .out_c0_exe9345(bb_covariance_B10_out_c0_exe9345),
        .out_exiting_stall_out(bb_covariance_B10_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B10_out_exiting_valid_out),
        .out_feedback_stall_out_50(bb_covariance_B10_out_feedback_stall_out_50),
        .out_memdep_phi2_pop50(bb_covariance_B10_out_memdep_phi2_pop50),
        .out_pipeline_valid_out(bb_covariance_B10_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B10_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B10_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B10_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B10_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B10_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10_sr_1_aunroll_x(BLACKBOX,2)
    covariance_bb_B10_sr_1 thebb_covariance_B10_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B8_out_c0_exe9305),
        .in_i_data_2_tpl(bb_covariance_B8_out_c0_exe10306),
        .in_i_data_3_tpl(bb_covariance_B8_out_c0_exe1297),
        .in_i_data_4_tpl(bb_covariance_B8_out_c0_exe2298),
        .in_i_data_5_tpl(bb_covariance_B8_out_c0_exe3299),
        .in_i_data_6_tpl(bb_covariance_B8_out_c0_exe4300),
        .in_i_data_7_tpl(bb_covariance_B8_out_c0_exe5301),
        .in_i_data_8_tpl(bb_covariance_B8_out_memdep_phi3_pop25),
        .in_i_data_9_tpl(bb_covariance_B8_out_c0_exe6302),
        .in_i_data_10_tpl(bb_covariance_B8_out_c0_exe7303),
        .in_i_stall(bb_covariance_B10_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance4_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_covariance_B10_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_stall(bb_covariance_B10_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B10_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance4(BLACKBOX,186)
    covariance_loop_limiter_4 theloop_limiter_covariance4 (
        .in_i_stall(bb_covariance_B10_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B10_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B8_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B10_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance4_out_o_stall),
        .out_o_valid(loop_limiter_covariance4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going33_covariance2_sr(BLACKBOX,136)
    covariance_i_llvm_fpga_pipeline_keep_going33_2_sr thei_llvm_fpga_pipeline_keep_going33_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going33_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going33_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9_sr_0_aunroll_x(BLACKBOX,15)
    covariance_bb_B9_sr_0 thebb_covariance_B9_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_covariance_B11_out_c0_exe841317),
        .in_i_stall(bb_covariance_B9_out_stall_out_0),
        .in_i_valid(bb_covariance_B11_out_valid_out_0),
        .out_o_data_0_tpl(bb_covariance_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_covariance_B9_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B9_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B11(BLACKBOX,18)
    covariance_bb_B11 thebb_covariance_B11 (
        .in_c0_exe1141621_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe136013_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe841317_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_25(bb_covariance_B8_out_feedback_stall_out_25),
        .in_memdep_114_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_covariance_B9_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B11_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe841317(bb_covariance_B11_out_c0_exe841317),
        .out_feedback_out_25(bb_covariance_B11_out_feedback_out_25),
        .out_feedback_valid_out_25(bb_covariance_B11_out_feedback_valid_out_25),
        .out_stall_in_0(bb_covariance_B11_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B11_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8(BLACKBOX,26)
    covariance_bb_B8 thebb_covariance_B8 (
        .in_feedback_in_25(bb_covariance_B11_out_feedback_out_25),
        .in_feedback_valid_in_25(bb_covariance_B11_out_feedback_valid_out_25),
        .in_forked85_0(GND_q),
        .in_forked85_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext81_pop42141_0(c_i32_undef110_q),
        .in_lim_ext81_pop42141_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going33_covariance2_sr_out_o_stall),
        .in_reorder_limiter_enter118_0(c_i32_undef110_q),
        .in_reorder_limiter_enter118_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_covariance4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going33_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10306(bb_covariance_B8_out_c0_exe10306),
        .out_c0_exe1297(bb_covariance_B8_out_c0_exe1297),
        .out_c0_exe2298(bb_covariance_B8_out_c0_exe2298),
        .out_c0_exe3299(bb_covariance_B8_out_c0_exe3299),
        .out_c0_exe4300(bb_covariance_B8_out_c0_exe4300),
        .out_c0_exe5301(bb_covariance_B8_out_c0_exe5301),
        .out_c0_exe6302(bb_covariance_B8_out_c0_exe6302),
        .out_c0_exe7303(bb_covariance_B8_out_c0_exe7303),
        .out_c0_exe9305(bb_covariance_B8_out_c0_exe9305),
        .out_exiting_stall_out(bb_covariance_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B8_out_exiting_valid_out),
        .out_feedback_stall_out_25(bb_covariance_B8_out_feedback_stall_out_25),
        .out_memdep_phi3_pop25(bb_covariance_B8_out_memdep_phi3_pop25),
        .out_pipeline_valid_out(bb_covariance_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B8_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B8_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B8_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B8_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_sr_1_aunroll_x(BLACKBOX,14)
    covariance_bb_B8_sr_1 thebb_covariance_B8_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B2_out_reorder_limiter_enter),
        .in_i_data_2_tpl(bb_covariance_B2_out_c0_exe52638),
        .in_i_stall(bb_covariance_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance1_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_stall(bb_covariance_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B8_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance1(BLACKBOX,183)
    covariance_loop_limiter_1 theloop_limiter_covariance1 (
        .in_i_stall(bb_covariance_B8_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B8_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B2_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B8_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance1_out_o_stall),
        .out_o_valid(loop_limiter_covariance1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B2(BLACKBOX,21)
    covariance_bb_B2 thebb_covariance_B2 (
        .in_c0_exe52638_0(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_intel_reserved_ffwd_1_0(bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .in_stall_in_0(loop_limiter_covariance1_out_o_stall),
        .in_valid_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .in_wgl_8_enter_exit_stall_in(bb_covariance_B9_out_wgl_8_exit_exit_stall_in),
        .in_wgl_8_enter_exit_valid_in(bb_covariance_B9_out_wgl_8_exit_exit_valid_in),
        .out_c0_exe52638(bb_covariance_B2_out_c0_exe52638),
        .out_intel_reserved_ffwd_2_0(bb_covariance_B2_out_intel_reserved_ffwd_2_0),
        .out_reorder_limiter_enter(bb_covariance_B2_out_reorder_limiter_enter),
        .out_stall_out_0(bb_covariance_B2_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B2_out_valid_out_0),
        .out_wgl_8_enter_exit_stall_out(bb_covariance_B2_out_wgl_8_enter_exit_stall_out),
        .out_wgl_8_enter_exit_valid_out(bb_covariance_B2_out_wgl_8_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B2_sr_0_aunroll_x(BLACKBOX,7)
    covariance_bb_B2_sr_0 thebb_covariance_B2_sr_0_aunroll_x (
        .in_i_data_0_tpl(bb_covariance_B6_out_c0_exe52639),
        .in_i_stall(bb_covariance_B2_out_stall_out_0),
        .in_i_valid(bb_covariance_B6_out_valid_out_0),
        .out_o_data_0_tpl(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_stall(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6(BLACKBOX,24)
    covariance_bb_B6 thebb_covariance_B6 (
        .in_c0_exe52639_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe626410_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe726511_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_feedback_stall_in_20(bb_covariance_B3_out_feedback_stall_out_20),
        .in_memdep_12_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_stall_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe52639(bb_covariance_B6_out_c0_exe52639),
        .out_feedback_out_20(bb_covariance_B6_out_feedback_out_20),
        .out_feedback_valid_out_20(bb_covariance_B6_out_feedback_valid_out_20),
        .out_stall_in_0(bb_covariance_B6_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B6_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3(BLACKBOX,22)
    covariance_bb_B3 thebb_covariance_B3 (
        .in_feedback_in_20(bb_covariance_B6_out_feedback_out_20),
        .in_feedback_valid_in_20(bb_covariance_B6_out_feedback_valid_out_20),
        .in_forked78_0(GND_q),
        .in_forked78_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext113_0(c_i32_undef110_q),
        .in_lim_ext113_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1207(bb_covariance_B3_out_c0_exe1207),
        .out_c0_exe2208(bb_covariance_B3_out_c0_exe2208),
        .out_c0_exe3(bb_covariance_B3_out_c0_exe3),
        .out_c0_exe4(bb_covariance_B3_out_c0_exe4),
        .out_c0_exe6(bb_covariance_B3_out_c0_exe6),
        .out_exiting_stall_out(bb_covariance_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B3_out_exiting_valid_out),
        .out_feedback_stall_out_20(bb_covariance_B3_out_feedback_stall_out_20),
        .out_memdep_phi_pop20(bb_covariance_B3_out_memdep_phi_pop20),
        .out_pipeline_valid_out(bb_covariance_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B3_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B3_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B3_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B3_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3_sr_1_aunroll_x(BLACKBOX,8)
    covariance_bb_B3_sr_1 thebb_covariance_B3_sr_1_aunroll_x (
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B1_start_aunroll_x_out_c1_exe1),
        .in_i_stall(bb_covariance_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance0_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_stall(bb_covariance_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance0(BLACKBOX,182)
    covariance_loop_limiter_0 theloop_limiter_covariance0 (
        .in_i_stall(bb_covariance_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B3_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B1_start_aunroll_x_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance0_out_o_stall),
        .out_o_valid(loop_limiter_covariance0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going75_covariance2_sr(BLACKBOX,144)
    covariance_i_llvm_fpga_pipeline_keep_going75_2_sr thei_llvm_fpga_pipeline_keep_going75_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going75_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going75_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B1_start_aunroll_x(BLACKBOX,6)
    covariance_bb_B1_start thebb_covariance_B1_start_aunroll_x (
        .in_feedback_in_1(bb_covariance_B9_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_covariance_B9_out_feedback_valid_out_1),
        .in_forked77_0(GND_q),
        .in_forked77_1(VCC_q),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going75_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going75_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_intel_reserved_ffwd_0_0_0_tpl(bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_0_tpl),
        .out_intel_reserved_ffwd_0_0_1_tpl(bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_0_0_1_tpl),
        .out_c1_exe1(bb_covariance_B1_start_aunroll_x_out_c1_exe1),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_covariance_B1_start_aunroll_x_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_1_0(bb_covariance_B1_start_aunroll_x_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_covariance_o_fifoalmost_full(bb_covariance_B1_start_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(bb_covariance_B1_start_aunroll_x_out_iord_bl_call_covariance_o_fifoready),
        .out_pipeline_valid_out(bb_covariance_B1_start_aunroll_x_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B1_start_aunroll_x_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_covariance_B1_start_aunroll_x_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B1_start_aunroll_x_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B1_start_aunroll_x_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9(BLACKBOX,27)
    covariance_bb_B9 thebb_covariance_B9 (
        .in_c0_exe841316_0(bb_covariance_B9_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_feedback_stall_in_1(bb_covariance_B1_start_aunroll_x_out_feedback_stall_out_1),
        .in_iowr_bl_return_covariance_i_fifoready(in_iowr_bl_return_covariance_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_covariance_B9_sr_0_aunroll_x_out_o_valid),
        .in_wgl_8_exit_exit_stall_out(bb_covariance_B2_out_wgl_8_enter_exit_stall_out),
        .in_wgl_8_exit_exit_valid_out(bb_covariance_B2_out_wgl_8_enter_exit_valid_out),
        .out_feedback_out_1(bb_covariance_B9_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_covariance_B9_out_feedback_valid_out_1),
        .out_iowr_bl_return_covariance_o_fifodata(bb_covariance_B9_out_iowr_bl_return_covariance_o_fifodata),
        .out_iowr_bl_return_covariance_o_fifovalid(bb_covariance_B9_out_iowr_bl_return_covariance_o_fifovalid),
        .out_stall_in_0(bb_covariance_B9_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B9_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B9_out_valid_out_0),
        .out_wgl_8_exit_exit_stall_in(bb_covariance_B9_out_wgl_8_exit_exit_stall_in),
        .out_wgl_8_exit_exit_valid_in(bb_covariance_B9_out_wgl_8_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // covariance_B1_start_x(EXTIFACE,127)
    assign covariance_B1_start_x_i_capture = GND_q;
    assign covariance_B1_start_x_i_clear = GND_q;
    assign covariance_B1_start_x_i_enable = VCC_q;
    assign covariance_B1_start_x_i_shift = GND_q;
    assign covariance_B1_start_x_i_stall_pred = GND_q;
    assign covariance_B1_start_x_i_stall_succ = bb_covariance_B9_out_stall_in_0;
    assign covariance_B1_start_x_i_valid_loop = bb_covariance_B1_start_aunroll_x_out_valid_in_0;
    assign covariance_B1_start_x_i_valid_pred = bb_covariance_B1_start_aunroll_x_out_valid_in_1;
    assign covariance_B1_start_x_i_valid_succ = bb_covariance_B9_out_valid_out_0;
    assign covariance_B1_start_x_i_capture_bitsignaltemp = covariance_B1_start_x_i_capture[0];
    assign covariance_B1_start_x_i_clear_bitsignaltemp = covariance_B1_start_x_i_clear[0];
    assign covariance_B1_start_x_i_enable_bitsignaltemp = covariance_B1_start_x_i_enable[0];
    assign covariance_B1_start_x_i_shift_bitsignaltemp = covariance_B1_start_x_i_shift[0];
    assign covariance_B1_start_x_i_stall_pred_bitsignaltemp = covariance_B1_start_x_i_stall_pred[0];
    assign covariance_B1_start_x_i_stall_succ_bitsignaltemp = covariance_B1_start_x_i_stall_succ[0];
    assign covariance_B1_start_x_i_valid_loop_bitsignaltemp = covariance_B1_start_x_i_valid_loop[0];
    assign covariance_B1_start_x_i_valid_pred_bitsignaltemp = covariance_B1_start_x_i_valid_pred[0];
    assign covariance_B1_start_x_i_valid_succ_bitsignaltemp = covariance_B1_start_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B1.start")
    ) thecovariance_B1_start_x (
        .i_capture(covariance_B1_start_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B1_start_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B1_start_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B1_start_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B1_start_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B1_start_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B1_start_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B1_start_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B1_start_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B10_x(EXTIFACE,128)
    assign covariance_B10_x_i_capture = GND_q;
    assign covariance_B10_x_i_clear = GND_q;
    assign covariance_B10_x_i_enable = VCC_q;
    assign covariance_B10_x_i_shift = GND_q;
    assign covariance_B10_x_i_stall_pred = loop_limiter_covariance4_out_o_stall;
    assign covariance_B10_x_i_stall_succ = bb_covariance_B12_out_stall_in_0;
    assign covariance_B10_x_i_valid_loop = bb_covariance_B10_out_valid_in_0;
    assign covariance_B10_x_i_valid_pred = bb_covariance_B10_out_valid_in_1;
    assign covariance_B10_x_i_valid_succ = bb_covariance_B12_out_valid_out_0;
    assign covariance_B10_x_i_capture_bitsignaltemp = covariance_B10_x_i_capture[0];
    assign covariance_B10_x_i_clear_bitsignaltemp = covariance_B10_x_i_clear[0];
    assign covariance_B10_x_i_enable_bitsignaltemp = covariance_B10_x_i_enable[0];
    assign covariance_B10_x_i_shift_bitsignaltemp = covariance_B10_x_i_shift[0];
    assign covariance_B10_x_i_stall_pred_bitsignaltemp = covariance_B10_x_i_stall_pred[0];
    assign covariance_B10_x_i_stall_succ_bitsignaltemp = covariance_B10_x_i_stall_succ[0];
    assign covariance_B10_x_i_valid_loop_bitsignaltemp = covariance_B10_x_i_valid_loop[0];
    assign covariance_B10_x_i_valid_pred_bitsignaltemp = covariance_B10_x_i_valid_pred[0];
    assign covariance_B10_x_i_valid_succ_bitsignaltemp = covariance_B10_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B10")
    ) thecovariance_B10_x (
        .i_capture(covariance_B10_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B10_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B10_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B10_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B10_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B10_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B10_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B10_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B10_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B13_x(EXTIFACE,129)
    assign covariance_B13_x_i_capture = GND_q;
    assign covariance_B13_x_i_clear = GND_q;
    assign covariance_B13_x_i_enable = VCC_q;
    assign covariance_B13_x_i_shift = GND_q;
    assign covariance_B13_x_i_stall_pred = loop_limiter_covariance5_out_o_stall;
    assign covariance_B13_x_i_stall_succ = bb_covariance_B13_out_stall_in_0;
    assign covariance_B13_x_i_valid_loop = bb_covariance_B13_out_valid_in_0;
    assign covariance_B13_x_i_valid_pred = bb_covariance_B13_out_valid_in_1;
    assign covariance_B13_x_i_valid_succ = bb_covariance_B13_out_valid_out_0;
    assign covariance_B13_x_i_capture_bitsignaltemp = covariance_B13_x_i_capture[0];
    assign covariance_B13_x_i_clear_bitsignaltemp = covariance_B13_x_i_clear[0];
    assign covariance_B13_x_i_enable_bitsignaltemp = covariance_B13_x_i_enable[0];
    assign covariance_B13_x_i_shift_bitsignaltemp = covariance_B13_x_i_shift[0];
    assign covariance_B13_x_i_stall_pred_bitsignaltemp = covariance_B13_x_i_stall_pred[0];
    assign covariance_B13_x_i_stall_succ_bitsignaltemp = covariance_B13_x_i_stall_succ[0];
    assign covariance_B13_x_i_valid_loop_bitsignaltemp = covariance_B13_x_i_valid_loop[0];
    assign covariance_B13_x_i_valid_pred_bitsignaltemp = covariance_B13_x_i_valid_pred[0];
    assign covariance_B13_x_i_valid_succ_bitsignaltemp = covariance_B13_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B13")
    ) thecovariance_B13_x (
        .i_capture(covariance_B13_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B13_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B13_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B13_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B13_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B13_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B13_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B13_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B13_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B3_x(EXTIFACE,130)
    assign covariance_B3_x_i_capture = GND_q;
    assign covariance_B3_x_i_clear = GND_q;
    assign covariance_B3_x_i_enable = VCC_q;
    assign covariance_B3_x_i_shift = GND_q;
    assign covariance_B3_x_i_stall_pred = loop_limiter_covariance0_out_o_stall;
    assign covariance_B3_x_i_stall_succ = bb_covariance_B6_out_stall_in_0;
    assign covariance_B3_x_i_valid_loop = bb_covariance_B3_out_valid_in_0;
    assign covariance_B3_x_i_valid_pred = bb_covariance_B3_out_valid_in_1;
    assign covariance_B3_x_i_valid_succ = bb_covariance_B6_out_valid_out_0;
    assign covariance_B3_x_i_capture_bitsignaltemp = covariance_B3_x_i_capture[0];
    assign covariance_B3_x_i_clear_bitsignaltemp = covariance_B3_x_i_clear[0];
    assign covariance_B3_x_i_enable_bitsignaltemp = covariance_B3_x_i_enable[0];
    assign covariance_B3_x_i_shift_bitsignaltemp = covariance_B3_x_i_shift[0];
    assign covariance_B3_x_i_stall_pred_bitsignaltemp = covariance_B3_x_i_stall_pred[0];
    assign covariance_B3_x_i_stall_succ_bitsignaltemp = covariance_B3_x_i_stall_succ[0];
    assign covariance_B3_x_i_valid_loop_bitsignaltemp = covariance_B3_x_i_valid_loop[0];
    assign covariance_B3_x_i_valid_pred_bitsignaltemp = covariance_B3_x_i_valid_pred[0];
    assign covariance_B3_x_i_valid_succ_bitsignaltemp = covariance_B3_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B3")
    ) thecovariance_B3_x (
        .i_capture(covariance_B3_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B3_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B3_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B3_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B3_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B3_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B3_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B3_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B3_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B5_x(EXTIFACE,131)
    assign covariance_B5_x_i_capture = GND_q;
    assign covariance_B5_x_i_clear = GND_q;
    assign covariance_B5_x_i_enable = VCC_q;
    assign covariance_B5_x_i_shift = GND_q;
    assign covariance_B5_x_i_stall_pred = loop_limiter_covariance2_out_o_stall;
    assign covariance_B5_x_i_stall_succ = bb_covariance_B5_aunroll_x_out_stall_in_0;
    assign covariance_B5_x_i_valid_loop = bb_covariance_B5_aunroll_x_out_valid_in_0;
    assign covariance_B5_x_i_valid_pred = bb_covariance_B5_aunroll_x_out_valid_in_1;
    assign covariance_B5_x_i_valid_succ = bb_covariance_B5_aunroll_x_out_valid_out_0;
    assign covariance_B5_x_i_capture_bitsignaltemp = covariance_B5_x_i_capture[0];
    assign covariance_B5_x_i_clear_bitsignaltemp = covariance_B5_x_i_clear[0];
    assign covariance_B5_x_i_enable_bitsignaltemp = covariance_B5_x_i_enable[0];
    assign covariance_B5_x_i_shift_bitsignaltemp = covariance_B5_x_i_shift[0];
    assign covariance_B5_x_i_stall_pred_bitsignaltemp = covariance_B5_x_i_stall_pred[0];
    assign covariance_B5_x_i_stall_succ_bitsignaltemp = covariance_B5_x_i_stall_succ[0];
    assign covariance_B5_x_i_valid_loop_bitsignaltemp = covariance_B5_x_i_valid_loop[0];
    assign covariance_B5_x_i_valid_pred_bitsignaltemp = covariance_B5_x_i_valid_pred[0];
    assign covariance_B5_x_i_valid_succ_bitsignaltemp = covariance_B5_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B5")
    ) thecovariance_B5_x (
        .i_capture(covariance_B5_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B5_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B5_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B5_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B5_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B5_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B5_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B5_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B5_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B7_x(EXTIFACE,132)
    assign covariance_B7_x_i_capture = GND_q;
    assign covariance_B7_x_i_clear = GND_q;
    assign covariance_B7_x_i_enable = VCC_q;
    assign covariance_B7_x_i_shift = GND_q;
    assign covariance_B7_x_i_stall_pred = loop_limiter_covariance3_out_o_stall;
    assign covariance_B7_x_i_stall_succ = bb_covariance_B7_out_stall_in_0;
    assign covariance_B7_x_i_valid_loop = bb_covariance_B7_out_valid_in_0;
    assign covariance_B7_x_i_valid_pred = bb_covariance_B7_out_valid_in_1;
    assign covariance_B7_x_i_valid_succ = bb_covariance_B7_out_valid_out_0;
    assign covariance_B7_x_i_capture_bitsignaltemp = covariance_B7_x_i_capture[0];
    assign covariance_B7_x_i_clear_bitsignaltemp = covariance_B7_x_i_clear[0];
    assign covariance_B7_x_i_enable_bitsignaltemp = covariance_B7_x_i_enable[0];
    assign covariance_B7_x_i_shift_bitsignaltemp = covariance_B7_x_i_shift[0];
    assign covariance_B7_x_i_stall_pred_bitsignaltemp = covariance_B7_x_i_stall_pred[0];
    assign covariance_B7_x_i_stall_succ_bitsignaltemp = covariance_B7_x_i_stall_succ[0];
    assign covariance_B7_x_i_valid_loop_bitsignaltemp = covariance_B7_x_i_valid_loop[0];
    assign covariance_B7_x_i_valid_pred_bitsignaltemp = covariance_B7_x_i_valid_pred[0];
    assign covariance_B7_x_i_valid_succ_bitsignaltemp = covariance_B7_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B7")
    ) thecovariance_B7_x (
        .i_capture(covariance_B7_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B7_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B7_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B7_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B7_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B7_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B7_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B7_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B7_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B8_x(EXTIFACE,133)
    assign covariance_B8_x_i_capture = GND_q;
    assign covariance_B8_x_i_clear = GND_q;
    assign covariance_B8_x_i_enable = VCC_q;
    assign covariance_B8_x_i_shift = GND_q;
    assign covariance_B8_x_i_stall_pred = loop_limiter_covariance1_out_o_stall;
    assign covariance_B8_x_i_stall_succ = bb_covariance_B11_out_stall_in_0;
    assign covariance_B8_x_i_valid_loop = bb_covariance_B8_out_valid_in_0;
    assign covariance_B8_x_i_valid_pred = bb_covariance_B8_out_valid_in_1;
    assign covariance_B8_x_i_valid_succ = bb_covariance_B11_out_valid_out_0;
    assign covariance_B8_x_i_capture_bitsignaltemp = covariance_B8_x_i_capture[0];
    assign covariance_B8_x_i_clear_bitsignaltemp = covariance_B8_x_i_clear[0];
    assign covariance_B8_x_i_enable_bitsignaltemp = covariance_B8_x_i_enable[0];
    assign covariance_B8_x_i_shift_bitsignaltemp = covariance_B8_x_i_shift[0];
    assign covariance_B8_x_i_stall_pred_bitsignaltemp = covariance_B8_x_i_stall_pred[0];
    assign covariance_B8_x_i_stall_succ_bitsignaltemp = covariance_B8_x_i_stall_succ[0];
    assign covariance_B8_x_i_valid_loop_bitsignaltemp = covariance_B8_x_i_valid_loop[0];
    assign covariance_B8_x_i_valid_pred_bitsignaltemp = covariance_B8_x_i_valid_pred[0];
    assign covariance_B8_x_i_valid_succ_bitsignaltemp = covariance_B8_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B8")
    ) thecovariance_B8_x (
        .i_capture(covariance_B8_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B8_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B8_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B8_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B8_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B8_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B8_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B8_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B8_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_covariance_o_fifoalmost_full(GPOUT,188)
    assign out_iord_bl_call_covariance_o_fifoalmost_full = bb_covariance_B1_start_aunroll_x_out_iord_bl_call_covariance_o_fifoalmost_full;

    // out_iord_bl_call_covariance_o_fifoready(GPOUT,189)
    assign out_iord_bl_call_covariance_o_fifoready = bb_covariance_B1_start_aunroll_x_out_iord_bl_call_covariance_o_fifoready;

    // out_iowr_bl_return_covariance_o_fifodata(GPOUT,190)
    assign out_iowr_bl_return_covariance_o_fifodata = bb_covariance_B9_out_iowr_bl_return_covariance_o_fifodata;

    // out_iowr_bl_return_covariance_o_fifovalid(GPOUT,191)
    assign out_iowr_bl_return_covariance_o_fifovalid = bb_covariance_B9_out_iowr_bl_return_covariance_o_fifovalid;

    // out_memdep_1_covariance_avm_address(GPOUT,192)
    assign out_memdep_1_covariance_avm_address = bb_covariance_B12_out_memdep_1_covariance_avm_address;

    // out_memdep_1_covariance_avm_burstcount(GPOUT,193)
    assign out_memdep_1_covariance_avm_burstcount = bb_covariance_B12_out_memdep_1_covariance_avm_burstcount;

    // out_memdep_1_covariance_avm_byteenable(GPOUT,194)
    assign out_memdep_1_covariance_avm_byteenable = bb_covariance_B12_out_memdep_1_covariance_avm_byteenable;

    // out_memdep_1_covariance_avm_enable(GPOUT,195)
    assign out_memdep_1_covariance_avm_enable = bb_covariance_B12_out_memdep_1_covariance_avm_enable;

    // out_memdep_1_covariance_avm_read(GPOUT,196)
    assign out_memdep_1_covariance_avm_read = bb_covariance_B12_out_memdep_1_covariance_avm_read;

    // out_memdep_1_covariance_avm_write(GPOUT,197)
    assign out_memdep_1_covariance_avm_write = bb_covariance_B12_out_memdep_1_covariance_avm_write;

    // out_memdep_1_covariance_avm_writedata(GPOUT,198)
    assign out_memdep_1_covariance_avm_writedata = bb_covariance_B12_out_memdep_1_covariance_avm_writedata;

    // out_memdep_covariance_avm_address(GPOUT,199)
    assign out_memdep_covariance_avm_address = bb_covariance_B7_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,200)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B7_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,201)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B7_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,202)
    assign out_memdep_covariance_avm_enable = bb_covariance_B7_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,203)
    assign out_memdep_covariance_avm_read = bb_covariance_B7_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,204)
    assign out_memdep_covariance_avm_write = bb_covariance_B7_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,205)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B7_out_memdep_covariance_avm_writedata;

    // out_o_active_memdep(GPOUT,206)
    assign out_o_active_memdep = bb_covariance_B7_out_lsu_memdep_o_active;

    // out_o_active_memdep_1(GPOUT,207)
    assign out_o_active_memdep_1 = bb_covariance_B12_out_lsu_memdep_1_o_active;

    // bb_covariance_B0_runOnce(BLACKBOX,16)
    covariance_bb_B0_runOnce thebb_covariance_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_covariance_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,208)
    assign out_stall_out = bb_covariance_B0_runOnce_out_stall_out_0;

    // out_unnamed_covariance10_covariance_avm_address(GPOUT,209)
    assign out_unnamed_covariance10_covariance_avm_address = bb_covariance_B7_out_unnamed_covariance10_covariance_avm_address;

    // out_unnamed_covariance10_covariance_avm_burstcount(GPOUT,210)
    assign out_unnamed_covariance10_covariance_avm_burstcount = bb_covariance_B7_out_unnamed_covariance10_covariance_avm_burstcount;

    // out_unnamed_covariance10_covariance_avm_byteenable(GPOUT,211)
    assign out_unnamed_covariance10_covariance_avm_byteenable = bb_covariance_B7_out_unnamed_covariance10_covariance_avm_byteenable;

    // out_unnamed_covariance10_covariance_avm_enable(GPOUT,212)
    assign out_unnamed_covariance10_covariance_avm_enable = bb_covariance_B7_out_unnamed_covariance10_covariance_avm_enable;

    // out_unnamed_covariance10_covariance_avm_read(GPOUT,213)
    assign out_unnamed_covariance10_covariance_avm_read = bb_covariance_B7_out_unnamed_covariance10_covariance_avm_read;

    // out_unnamed_covariance10_covariance_avm_write(GPOUT,214)
    assign out_unnamed_covariance10_covariance_avm_write = bb_covariance_B7_out_unnamed_covariance10_covariance_avm_write;

    // out_unnamed_covariance10_covariance_avm_writedata(GPOUT,215)
    assign out_unnamed_covariance10_covariance_avm_writedata = bb_covariance_B7_out_unnamed_covariance10_covariance_avm_writedata;

    // out_unnamed_covariance16_covariance_avm_address(GPOUT,216)
    assign out_unnamed_covariance16_covariance_avm_address = bb_covariance_B13_out_unnamed_covariance16_covariance_avm_address;

    // out_unnamed_covariance16_covariance_avm_burstcount(GPOUT,217)
    assign out_unnamed_covariance16_covariance_avm_burstcount = bb_covariance_B13_out_unnamed_covariance16_covariance_avm_burstcount;

    // out_unnamed_covariance16_covariance_avm_byteenable(GPOUT,218)
    assign out_unnamed_covariance16_covariance_avm_byteenable = bb_covariance_B13_out_unnamed_covariance16_covariance_avm_byteenable;

    // out_unnamed_covariance16_covariance_avm_enable(GPOUT,219)
    assign out_unnamed_covariance16_covariance_avm_enable = bb_covariance_B13_out_unnamed_covariance16_covariance_avm_enable;

    // out_unnamed_covariance16_covariance_avm_read(GPOUT,220)
    assign out_unnamed_covariance16_covariance_avm_read = bb_covariance_B13_out_unnamed_covariance16_covariance_avm_read;

    // out_unnamed_covariance16_covariance_avm_write(GPOUT,221)
    assign out_unnamed_covariance16_covariance_avm_write = bb_covariance_B13_out_unnamed_covariance16_covariance_avm_write;

    // out_unnamed_covariance16_covariance_avm_writedata(GPOUT,222)
    assign out_unnamed_covariance16_covariance_avm_writedata = bb_covariance_B13_out_unnamed_covariance16_covariance_avm_writedata;

    // out_unnamed_covariance17_covariance_avm_address(GPOUT,223)
    assign out_unnamed_covariance17_covariance_avm_address = bb_covariance_B13_out_unnamed_covariance17_covariance_avm_address;

    // out_unnamed_covariance17_covariance_avm_burstcount(GPOUT,224)
    assign out_unnamed_covariance17_covariance_avm_burstcount = bb_covariance_B13_out_unnamed_covariance17_covariance_avm_burstcount;

    // out_unnamed_covariance17_covariance_avm_byteenable(GPOUT,225)
    assign out_unnamed_covariance17_covariance_avm_byteenable = bb_covariance_B13_out_unnamed_covariance17_covariance_avm_byteenable;

    // out_unnamed_covariance17_covariance_avm_enable(GPOUT,226)
    assign out_unnamed_covariance17_covariance_avm_enable = bb_covariance_B13_out_unnamed_covariance17_covariance_avm_enable;

    // out_unnamed_covariance17_covariance_avm_read(GPOUT,227)
    assign out_unnamed_covariance17_covariance_avm_read = bb_covariance_B13_out_unnamed_covariance17_covariance_avm_read;

    // out_unnamed_covariance17_covariance_avm_write(GPOUT,228)
    assign out_unnamed_covariance17_covariance_avm_write = bb_covariance_B13_out_unnamed_covariance17_covariance_avm_write;

    // out_unnamed_covariance17_covariance_avm_writedata(GPOUT,229)
    assign out_unnamed_covariance17_covariance_avm_writedata = bb_covariance_B13_out_unnamed_covariance17_covariance_avm_writedata;

    // out_unnamed_covariance8_covariance_avm_address(GPOUT,230)
    assign out_unnamed_covariance8_covariance_avm_address = bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_address;

    // out_unnamed_covariance8_covariance_avm_burstcount(GPOUT,231)
    assign out_unnamed_covariance8_covariance_avm_burstcount = bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_burstcount;

    // out_unnamed_covariance8_covariance_avm_byteenable(GPOUT,232)
    assign out_unnamed_covariance8_covariance_avm_byteenable = bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_byteenable;

    // out_unnamed_covariance8_covariance_avm_enable(GPOUT,233)
    assign out_unnamed_covariance8_covariance_avm_enable = bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_enable;

    // out_unnamed_covariance8_covariance_avm_read(GPOUT,234)
    assign out_unnamed_covariance8_covariance_avm_read = bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_read;

    // out_unnamed_covariance8_covariance_avm_write(GPOUT,235)
    assign out_unnamed_covariance8_covariance_avm_write = bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_write;

    // out_unnamed_covariance8_covariance_avm_writedata(GPOUT,236)
    assign out_unnamed_covariance8_covariance_avm_writedata = bb_covariance_B5_aunroll_x_out_unnamed_covariance8_covariance_avm_writedata;

    // out_valid_out(GPOUT,237)
    assign out_valid_out = GND_q;

endmodule
