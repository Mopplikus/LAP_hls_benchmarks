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
// SystemVerilog created on Wed Apr  5 02:12:07 2023


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
    input wire [31:0] in_memdep_2_covariance_avm_readdata,
    input wire [0:0] in_memdep_2_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_2_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_2_covariance_avm_writeack,
    input wire [31:0] in_memdep_3_covariance_avm_readdata,
    input wire [0:0] in_memdep_3_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_3_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_3_covariance_avm_writeack,
    input wire [63:0] in_memdep_4_covariance_avm_readdata,
    input wire [0:0] in_memdep_4_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_4_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_4_covariance_avm_writeack,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_covariance11_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance11_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance11_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance11_covariance_avm_writeack,
    input wire [63:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [63:0] in_unnamed_covariance5_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance7_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance7_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance8_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance8_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance9_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance9_covariance_avm_writeack,
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
    output wire [31:0] out_memdep_2_covariance_avm_address,
    output wire [0:0] out_memdep_2_covariance_avm_burstcount,
    output wire [3:0] out_memdep_2_covariance_avm_byteenable,
    output wire [0:0] out_memdep_2_covariance_avm_enable,
    output wire [0:0] out_memdep_2_covariance_avm_read,
    output wire [0:0] out_memdep_2_covariance_avm_write,
    output wire [31:0] out_memdep_2_covariance_avm_writedata,
    output wire [31:0] out_memdep_3_covariance_avm_address,
    output wire [0:0] out_memdep_3_covariance_avm_burstcount,
    output wire [3:0] out_memdep_3_covariance_avm_byteenable,
    output wire [0:0] out_memdep_3_covariance_avm_enable,
    output wire [0:0] out_memdep_3_covariance_avm_read,
    output wire [0:0] out_memdep_3_covariance_avm_write,
    output wire [31:0] out_memdep_3_covariance_avm_writedata,
    output wire [63:0] out_memdep_4_covariance_avm_address,
    output wire [0:0] out_memdep_4_covariance_avm_burstcount,
    output wire [7:0] out_memdep_4_covariance_avm_byteenable,
    output wire [0:0] out_memdep_4_covariance_avm_enable,
    output wire [0:0] out_memdep_4_covariance_avm_read,
    output wire [0:0] out_memdep_4_covariance_avm_write,
    output wire [63:0] out_memdep_4_covariance_avm_writedata,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [0:0] out_o_active_memdep_4,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_covariance11_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance11_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance11_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance11_covariance_avm_writedata,
    output wire [63:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    output wire [7:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [63:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [63:0] out_unnamed_covariance5_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_burstcount,
    output wire [7:0] out_unnamed_covariance5_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_write,
    output wire [63:0] out_unnamed_covariance5_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance7_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance7_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance7_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance8_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance8_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance8_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance9_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance9_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance9_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance9_covariance_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_covariance_B0_runOnce_out_stall_out_0;
    wire [31:0] bb_covariance_B10_out_c0_exe434112;
    wire [0:0] bb_covariance_B10_out_feedback_out_31;
    wire [0:0] bb_covariance_B10_out_feedback_valid_out_31;
    wire [0:0] bb_covariance_B10_out_stall_in_0;
    wire [0:0] bb_covariance_B10_out_stall_out_0;
    wire [0:0] bb_covariance_B10_out_valid_out_0;
    wire [0:0] bb_covariance_B11_out_c0_exe2339;
    wire [31:0] bb_covariance_B11_out_c0_exe4341;
    wire [0:0] bb_covariance_B11_out_c0_exe5342;
    wire [0:0] bb_covariance_B11_out_c0_exe6343;
    wire [0:0] bb_covariance_B11_out_exiting_stall_out;
    wire [0:0] bb_covariance_B11_out_exiting_valid_out;
    wire [31:0] bb_covariance_B11_out_memdep_2_covariance_avm_address;
    wire [0:0] bb_covariance_B11_out_memdep_2_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B11_out_memdep_2_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B11_out_memdep_2_covariance_avm_enable;
    wire [0:0] bb_covariance_B11_out_memdep_2_covariance_avm_read;
    wire [0:0] bb_covariance_B11_out_memdep_2_covariance_avm_write;
    wire [31:0] bb_covariance_B11_out_memdep_2_covariance_avm_writedata;
    wire [0:0] bb_covariance_B11_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B11_out_stall_in_0;
    wire [0:0] bb_covariance_B11_out_stall_out_0;
    wire [0:0] bb_covariance_B11_out_stall_out_1;
    wire [31:0] bb_covariance_B11_out_unnamed_covariance7_covariance_avm_address;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance7_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B11_out_unnamed_covariance7_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance7_covariance_avm_enable;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance7_covariance_avm_read;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance7_covariance_avm_write;
    wire [31:0] bb_covariance_B11_out_unnamed_covariance7_covariance_avm_writedata;
    wire [0:0] bb_covariance_B11_out_valid_in_0;
    wire [0:0] bb_covariance_B11_out_valid_in_1;
    wire [0:0] bb_covariance_B11_out_valid_out_0;
    wire [32:0] bb_covariance_B12_out_c0_exe1361;
    wire [0:0] bb_covariance_B12_out_c0_exe3363;
    wire [31:0] bb_covariance_B12_out_c0_exe4364;
    wire [31:0] bb_covariance_B12_out_c0_exe5365;
    wire [31:0] bb_covariance_B12_out_c0_exe6366;
    wire [31:0] bb_covariance_B12_out_c0_exe7367;
    wire [31:0] bb_covariance_B12_out_c0_exe8368;
    wire [0:0] bb_covariance_B12_out_exiting_stall_out;
    wire [0:0] bb_covariance_B12_out_exiting_valid_out;
    wire [0:0] bb_covariance_B12_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B12_out_stall_out_0;
    wire [0:0] bb_covariance_B12_out_stall_out_1;
    wire [0:0] bb_covariance_B12_out_valid_in_0;
    wire [0:0] bb_covariance_B12_out_valid_in_1;
    wire [0:0] bb_covariance_B12_out_valid_out_0;
    wire [31:0] bb_covariance_B13_out_c0_exe10404;
    wire [32:0] bb_covariance_B13_out_c0_exe11;
    wire [0:0] bb_covariance_B13_out_c0_exe12;
    wire [31:0] bb_covariance_B13_out_c0_exe13;
    wire [31:0] bb_covariance_B13_out_c0_exe14;
    wire [31:0] bb_covariance_B13_out_c0_exe15;
    wire [0:0] bb_covariance_B13_out_c0_exe2396;
    wire [31:0] bb_covariance_B13_out_c0_exe3397;
    wire [31:0] bb_covariance_B13_out_c0_exe4398;
    wire [31:0] bb_covariance_B13_out_c0_exe5399;
    wire [0:0] bb_covariance_B13_out_c0_exe6400;
    wire [31:0] bb_covariance_B13_out_c0_exe7401;
    wire [0:0] bb_covariance_B13_out_c0_exe8402;
    wire [31:0] bb_covariance_B13_out_c0_exe9403;
    wire [0:0] bb_covariance_B13_out_exiting_stall_out;
    wire [0:0] bb_covariance_B13_out_exiting_valid_out;
    wire [0:0] bb_covariance_B13_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B13_out_stall_out_0;
    wire [0:0] bb_covariance_B13_out_stall_out_1;
    wire [0:0] bb_covariance_B13_out_valid_in_0;
    wire [0:0] bb_covariance_B13_out_valid_in_1;
    wire [0:0] bb_covariance_B13_out_valid_out_0;
    wire [31:0] bb_covariance_B14_out_c0_exe645520;
    wire [0:0] bb_covariance_B14_out_stall_in_0;
    wire [0:0] bb_covariance_B14_out_stall_out_0;
    wire [0:0] bb_covariance_B14_out_valid_out_0;
    wire [0:0] bb_covariance_B15_out_c0_exe1416;
    wire [31:0] bb_covariance_B15_out_c0_exe645521;
    wire [31:0] bb_covariance_B15_out_memdep_3_covariance_avm_address;
    wire [0:0] bb_covariance_B15_out_memdep_3_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B15_out_memdep_3_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B15_out_memdep_3_covariance_avm_enable;
    wire [0:0] bb_covariance_B15_out_memdep_3_covariance_avm_read;
    wire [0:0] bb_covariance_B15_out_memdep_3_covariance_avm_write;
    wire [31:0] bb_covariance_B15_out_memdep_3_covariance_avm_writedata;
    wire [0:0] bb_covariance_B15_out_stall_in_0;
    wire [0:0] bb_covariance_B15_out_stall_out_0;
    wire [0:0] bb_covariance_B15_out_valid_out_0;
    wire [0:0] bb_covariance_B16_out_c0_exe10459;
    wire [63:0] bb_covariance_B16_out_c0_exe2451;
    wire [63:0] bb_covariance_B16_out_c0_exe3452;
    wire [31:0] bb_covariance_B16_out_c0_exe4453;
    wire [31:0] bb_covariance_B16_out_c0_exe6455;
    wire [31:0] bb_covariance_B16_out_c0_exe7456;
    wire [0:0] bb_covariance_B16_out_c0_exe8457;
    wire [0:0] bb_covariance_B16_out_c0_exe9458;
    wire [0:0] bb_covariance_B16_out_exiting_stall_out;
    wire [0:0] bb_covariance_B16_out_exiting_valid_out;
    wire [0:0] bb_covariance_B16_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B16_out_stall_in_0;
    wire [0:0] bb_covariance_B16_out_stall_out_0;
    wire [0:0] bb_covariance_B16_out_stall_out_1;
    wire [31:0] bb_covariance_B16_out_unnamed_covariance8_covariance_avm_address;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance8_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B16_out_unnamed_covariance8_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance8_covariance_avm_enable;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance8_covariance_avm_read;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance8_covariance_avm_write;
    wire [31:0] bb_covariance_B16_out_unnamed_covariance8_covariance_avm_writedata;
    wire [31:0] bb_covariance_B16_out_unnamed_covariance9_covariance_avm_address;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance9_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B16_out_unnamed_covariance9_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance9_covariance_avm_enable;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance9_covariance_avm_read;
    wire [0:0] bb_covariance_B16_out_unnamed_covariance9_covariance_avm_write;
    wire [31:0] bb_covariance_B16_out_unnamed_covariance9_covariance_avm_writedata;
    wire [0:0] bb_covariance_B16_out_valid_in_0;
    wire [0:0] bb_covariance_B16_out_valid_in_1;
    wire [0:0] bb_covariance_B16_out_valid_out_0;
    wire [0:0] bb_covariance_B17_out_stall_out_0;
    wire [0:0] bb_covariance_B17_out_valid_out_0;
    wire [0:0] bb_covariance_B17_out_wgl_12_exit_exit_stall_in;
    wire [0:0] bb_covariance_B17_out_wgl_12_exit_exit_valid_in;
    wire [0:0] bb_covariance_B18_out_c0_exe2473;
    wire [31:0] bb_covariance_B18_out_c0_exe3474;
    wire [0:0] bb_covariance_B18_out_exiting_stall_out;
    wire [0:0] bb_covariance_B18_out_exiting_valid_out;
    wire [0:0] bb_covariance_B18_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B18_out_stall_out_0;
    wire [0:0] bb_covariance_B18_out_stall_out_1;
    wire [0:0] bb_covariance_B18_out_valid_in_0;
    wire [0:0] bb_covariance_B18_out_valid_in_1;
    wire [0:0] bb_covariance_B18_out_valid_out_0;
    wire [0:0] bb_covariance_B19_out_stall_in_0;
    wire [0:0] bb_covariance_B19_out_stall_out_0;
    wire [0:0] bb_covariance_B19_out_valid_out_0;
    wire [31:0] bb_covariance_B1_start_out_c1_exe1;
    wire [0:0] bb_covariance_B1_start_out_feedback_stall_out_1;
    wire [63:0] bb_covariance_B1_start_out_intel_reserved_ffwd_0_0;
    wire [63:0] bb_covariance_B1_start_out_intel_reserved_ffwd_1_0;
    wire [0:0] bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] bb_covariance_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B1_start_out_stall_out_0;
    wire [0:0] bb_covariance_B1_start_out_valid_in_0;
    wire [0:0] bb_covariance_B1_start_out_valid_in_1;
    wire [0:0] bb_covariance_B1_start_out_valid_out_0;
    wire [31:0] bb_covariance_B2_out_c0_exe81;
    wire [0:0] bb_covariance_B2_out_stall_out_0;
    wire [0:0] bb_covariance_B2_out_valid_out_0;
    wire [0:0] bb_covariance_B20_out_c0_exe3488;
    wire [0:0] bb_covariance_B20_out_exiting_stall_out;
    wire [0:0] bb_covariance_B20_out_exiting_valid_out;
    wire [0:0] bb_covariance_B20_out_lsu_memdep_4_o_active;
    wire [63:0] bb_covariance_B20_out_memdep_4_covariance_avm_address;
    wire [0:0] bb_covariance_B20_out_memdep_4_covariance_avm_burstcount;
    wire [7:0] bb_covariance_B20_out_memdep_4_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B20_out_memdep_4_covariance_avm_enable;
    wire [0:0] bb_covariance_B20_out_memdep_4_covariance_avm_read;
    wire [0:0] bb_covariance_B20_out_memdep_4_covariance_avm_write;
    wire [63:0] bb_covariance_B20_out_memdep_4_covariance_avm_writedata;
    wire [0:0] bb_covariance_B20_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B20_out_stall_in_0;
    wire [0:0] bb_covariance_B20_out_stall_out_0;
    wire [0:0] bb_covariance_B20_out_stall_out_1;
    wire [31:0] bb_covariance_B20_out_unnamed_covariance11_covariance_avm_address;
    wire [0:0] bb_covariance_B20_out_unnamed_covariance11_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B20_out_unnamed_covariance11_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B20_out_unnamed_covariance11_covariance_avm_enable;
    wire [0:0] bb_covariance_B20_out_unnamed_covariance11_covariance_avm_read;
    wire [0:0] bb_covariance_B20_out_unnamed_covariance11_covariance_avm_write;
    wire [31:0] bb_covariance_B20_out_unnamed_covariance11_covariance_avm_writedata;
    wire [0:0] bb_covariance_B20_out_valid_in_0;
    wire [0:0] bb_covariance_B20_out_valid_in_1;
    wire [0:0] bb_covariance_B20_out_valid_out_0;
    wire [0:0] bb_covariance_B21_out_feedback_out_1;
    wire [0:0] bb_covariance_B21_out_feedback_valid_out_1;
    wire [0:0] bb_covariance_B21_out_iowr_bl_return_covariance_o_fifodata;
    wire [0:0] bb_covariance_B21_out_iowr_bl_return_covariance_o_fifovalid;
    wire [0:0] bb_covariance_B21_out_stall_in_0;
    wire [0:0] bb_covariance_B21_out_stall_out_0;
    wire [0:0] bb_covariance_B21_out_valid_out_0;
    wire [0:0] bb_covariance_B3_out_c0_exe2252;
    wire [31:0] bb_covariance_B3_out_c0_exe3;
    wire [31:0] bb_covariance_B3_out_c0_exe4;
    wire [31:0] bb_covariance_B3_out_c0_exe5;
    wire [0:0] bb_covariance_B3_out_exiting_stall_out;
    wire [0:0] bb_covariance_B3_out_exiting_valid_out;
    wire [0:0] bb_covariance_B3_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B3_out_stall_out_0;
    wire [0:0] bb_covariance_B3_out_stall_out_1;
    wire [0:0] bb_covariance_B3_out_valid_in_0;
    wire [0:0] bb_covariance_B3_out_valid_in_1;
    wire [0:0] bb_covariance_B3_out_valid_out_0;
    wire [31:0] bb_covariance_B4_out_c0_exe82;
    wire [0:0] bb_covariance_B4_out_stall_in_0;
    wire [0:0] bb_covariance_B4_out_stall_out_0;
    wire [0:0] bb_covariance_B4_out_valid_out_0;
    wire [31:0] bb_covariance_B5_out_c0_exe8;
    wire [0:0] bb_covariance_B5_out_c0_exe9;
    wire [0:0] bb_covariance_B5_out_exiting_stall_out;
    wire [0:0] bb_covariance_B5_out_exiting_valid_out;
    wire [31:0] bb_covariance_B5_out_memdep_1_covariance_avm_address;
    wire [0:0] bb_covariance_B5_out_memdep_1_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_out_memdep_1_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_out_memdep_1_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_out_memdep_1_covariance_avm_read;
    wire [0:0] bb_covariance_B5_out_memdep_1_covariance_avm_write;
    wire [31:0] bb_covariance_B5_out_memdep_1_covariance_avm_writedata;
    wire [31:0] bb_covariance_B5_out_memdep_covariance_avm_address;
    wire [0:0] bb_covariance_B5_out_memdep_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_out_memdep_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_out_memdep_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_out_memdep_covariance_avm_read;
    wire [0:0] bb_covariance_B5_out_memdep_covariance_avm_write;
    wire [31:0] bb_covariance_B5_out_memdep_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B5_out_stall_in_0;
    wire [0:0] bb_covariance_B5_out_stall_out_0;
    wire [0:0] bb_covariance_B5_out_stall_out_1;
    wire [63:0] bb_covariance_B5_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [7:0] bb_covariance_B5_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance4_covariance_avm_write;
    wire [63:0] bb_covariance_B5_out_unnamed_covariance4_covariance_avm_writedata;
    wire [63:0] bb_covariance_B5_out_unnamed_covariance5_covariance_avm_address;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance5_covariance_avm_burstcount;
    wire [7:0] bb_covariance_B5_out_unnamed_covariance5_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance5_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance5_covariance_avm_read;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance5_covariance_avm_write;
    wire [63:0] bb_covariance_B5_out_unnamed_covariance5_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_out_valid_in_0;
    wire [0:0] bb_covariance_B5_out_valid_in_1;
    wire [0:0] bb_covariance_B5_out_valid_out_0;
    wire [31:0] bb_covariance_B6_out_c0_exe434111;
    wire [31:0] bb_covariance_B6_out_reorder_limiter_enter;
    wire [0:0] bb_covariance_B6_out_stall_out_0;
    wire [0:0] bb_covariance_B6_out_valid_out_0;
    wire [0:0] bb_covariance_B6_out_wgl_12_enter_exit_stall_out;
    wire [0:0] bb_covariance_B6_out_wgl_12_enter_exit_valid_out;
    wire [0:0] bb_covariance_B7_out_c0_exe1281;
    wire [0:0] bb_covariance_B7_out_c0_exe2282;
    wire [31:0] bb_covariance_B7_out_c0_exe3283;
    wire [31:0] bb_covariance_B7_out_c0_exe4284;
    wire [31:0] bb_covariance_B7_out_c0_exe6286;
    wire [0:0] bb_covariance_B7_out_exiting_stall_out;
    wire [0:0] bb_covariance_B7_out_exiting_valid_out;
    wire [0:0] bb_covariance_B7_out_feedback_stall_out_31;
    wire [0:0] bb_covariance_B7_out_memdep_phi_pop31;
    wire [0:0] bb_covariance_B7_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B7_out_stall_out_0;
    wire [0:0] bb_covariance_B7_out_stall_out_1;
    wire [0:0] bb_covariance_B7_out_valid_in_0;
    wire [0:0] bb_covariance_B7_out_valid_in_1;
    wire [0:0] bb_covariance_B7_out_valid_out_0;
    wire [63:0] bb_covariance_B8_out_c0_exe23084;
    wire [31:0] bb_covariance_B8_out_c0_exe53116;
    wire [0:0] bb_covariance_B8_out_c0_exe63127;
    wire [0:0] bb_covariance_B8_out_c0_exe73138;
    wire [31:0] bb_covariance_B8_out_c0_exe83149;
    wire [31:0] bb_covariance_B8_out_mul;
    wire [0:0] bb_covariance_B8_out_stall_out_0;
    wire [0:0] bb_covariance_B8_out_valid_out_0;
    wire [63:0] bb_covariance_B9_out_c0_exe2308;
    wire [31:0] bb_covariance_B9_out_c0_exe3309;
    wire [31:0] bb_covariance_B9_out_c0_exe5311;
    wire [0:0] bb_covariance_B9_out_c0_exe6312;
    wire [0:0] bb_covariance_B9_out_c0_exe7313;
    wire [31:0] bb_covariance_B9_out_c0_exe8314;
    wire [0:0] bb_covariance_B9_out_exiting_stall_out;
    wire [0:0] bb_covariance_B9_out_exiting_valid_out;
    wire [0:0] bb_covariance_B9_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B9_out_stall_in_0;
    wire [0:0] bb_covariance_B9_out_stall_out_0;
    wire [0:0] bb_covariance_B9_out_stall_out_1;
    wire [31:0] bb_covariance_B9_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] bb_covariance_B9_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B9_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B9_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] bb_covariance_B9_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] bb_covariance_B9_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] bb_covariance_B9_out_unnamed_covariance6_covariance_avm_writedata;
    wire [0:0] bb_covariance_B9_out_valid_in_0;
    wire [0:0] bb_covariance_B9_out_valid_in_1;
    wire [0:0] bb_covariance_B9_out_valid_out_0;
    wire [1:0] c_i2_0161_q;
    wire [31:0] c_i32_undef101_q;
    wire [32:0] c_i33_undef121_q;
    wire [63:0] c_i64_undef69_q;
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
    wire [0:0] covariance_B11_x_i_capture;
    wire covariance_B11_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_clear;
    wire covariance_B11_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_enable;
    wire covariance_B11_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_shift;
    wire covariance_B11_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_stall_pred;
    wire covariance_B11_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_stall_succ;
    wire covariance_B11_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_valid_loop;
    wire covariance_B11_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_valid_pred;
    wire covariance_B11_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B11_x_i_valid_succ;
    wire covariance_B11_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_capture;
    wire covariance_B12_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_clear;
    wire covariance_B12_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_enable;
    wire covariance_B12_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_shift;
    wire covariance_B12_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_stall_pred;
    wire covariance_B12_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_stall_succ;
    wire covariance_B12_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_valid_loop;
    wire covariance_B12_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_valid_pred;
    wire covariance_B12_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B12_x_i_valid_succ;
    wire covariance_B12_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] covariance_B16_x_i_capture;
    wire covariance_B16_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_clear;
    wire covariance_B16_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_enable;
    wire covariance_B16_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_shift;
    wire covariance_B16_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_stall_pred;
    wire covariance_B16_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_stall_succ;
    wire covariance_B16_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_valid_loop;
    wire covariance_B16_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_valid_pred;
    wire covariance_B16_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B16_x_i_valid_succ;
    wire covariance_B16_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_capture;
    wire covariance_B18_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_clear;
    wire covariance_B18_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_enable;
    wire covariance_B18_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_shift;
    wire covariance_B18_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_stall_pred;
    wire covariance_B18_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_stall_succ;
    wire covariance_B18_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_valid_loop;
    wire covariance_B18_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_valid_pred;
    wire covariance_B18_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B18_x_i_valid_succ;
    wire covariance_B18_x_i_valid_succ_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_capture;
    wire covariance_B20_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_clear;
    wire covariance_B20_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_enable;
    wire covariance_B20_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_shift;
    wire covariance_B20_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_stall_pred;
    wire covariance_B20_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_stall_succ;
    wire covariance_B20_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_valid_loop;
    wire covariance_B20_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_valid_pred;
    wire covariance_B20_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B20_x_i_valid_succ;
    wire covariance_B20_x_i_valid_succ_bitsignaltemp;
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
    wire [0:0] covariance_B9_x_i_capture;
    wire covariance_B9_x_i_capture_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_clear;
    wire covariance_B9_x_i_clear_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_enable;
    wire covariance_B9_x_i_enable_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_shift;
    wire covariance_B9_x_i_shift_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_stall_pred;
    wire covariance_B9_x_i_stall_pred_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_stall_succ;
    wire covariance_B9_x_i_stall_succ_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_valid_loop;
    wire covariance_B9_x_i_valid_loop_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_valid_pred;
    wire covariance_B9_x_i_valid_pred_bitsignaltemp;
    wire [0:0] covariance_B9_x_i_valid_succ;
    wire covariance_B9_x_i_valid_succ_bitsignaltemp;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going124_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going124_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going128_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going128_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo_out_valid_out;
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
    wire [0:0] loop_limiter_covariance6_out_o_stall;
    wire [0:0] loop_limiter_covariance6_out_o_valid;
    wire [0:0] loop_limiter_covariance7_out_o_stall;
    wire [0:0] loop_limiter_covariance7_out_o_valid;
    wire [0:0] loop_limiter_covariance8_out_o_stall;
    wire [0:0] loop_limiter_covariance8_out_o_valid;
    wire [0:0] loop_limiter_covariance9_out_o_stall;
    wire [0:0] loop_limiter_covariance9_out_o_valid;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B11_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B11_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B11_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B11_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B11_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [63:0] bb_covariance_B11_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B11_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B11_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B11_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [32:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_covariance_B13_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B14_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B14_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B14_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B14_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B15_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B15_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B15_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B16_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B16_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [32:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_covariance_B16_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_covariance_B17_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B17_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B17_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B18_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B18_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B18_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B19_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B19_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B19_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B20_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B20_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B20_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B20_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B20_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B21_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B21_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_valid;
    wire [31:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B8_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B8_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_covariance_B8_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B8_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B8_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B8_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B8_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B8_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl;


    // c_i2_0161(CONSTANT,104)
    assign c_i2_0161_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo(BLACKBOX,165)
    covariance_i_llvm_fpga_pipeline_keep_going128_2_valid_fifo thei_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going128_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo(BLACKBOX,163)
    covariance_i_llvm_fpga_pipeline_keep_going124_2_valid_fifo thei_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going124_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo(BLACKBOX,161)
    covariance_i_llvm_fpga_pipeline_keep_going110_6_valid_fifo thei_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going110_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo(BLACKBOX,159)
    covariance_i_llvm_fpga_pipeline_keep_going103_2_valid_fifo thei_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going103_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo(BLACKBOX,177)
    covariance_i_llvm_fpga_pipeline_keep_going89_6_valid_fifo thei_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going89_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo(BLACKBOX,175)
    covariance_i_llvm_fpga_pipeline_keep_going73_6_valid_fifo thei_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B11_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going73_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10_sr_0_aunroll_x(BLACKBOX,339)
    covariance_bb_B10_sr_0 thebb_covariance_B10_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B10_out_stall_out_0),
        .in_i_valid(bb_covariance_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B11_out_c0_exe2339),
        .in_i_data_1_tpl(bb_covariance_B11_out_c0_exe4341),
        .in_i_data_2_tpl(bb_covariance_B11_out_c0_exe5342),
        .in_i_data_3_tpl(bb_covariance_B11_out_c0_exe6343),
        .out_o_stall(bb_covariance_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going73_covariance6_sr(BLACKBOX,174)
    covariance_i_llvm_fpga_pipeline_keep_going73_6_sr thei_llvm_fpga_pipeline_keep_going73_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B11_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going73_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going73_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef69(CONSTANT,145)
    assign c_i64_undef69_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_covariance_B11(BLACKBOX,4)
    covariance_bb_B11 thebb_covariance_B11 (
        .in_exitcond16148_pop53195_0(GND_q),
        .in_exitcond16148_pop53195_1(bb_covariance_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked70_0(GND_q),
        .in_forked70_1(bb_covariance_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom36190_0(c_i64_undef69_q),
        .in_idxprom36190_1(bb_covariance_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_lim_ext133_pop44173_0(c_i32_undef101_q),
        .in_lim_ext133_pop44173_1(bb_covariance_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext135_pop52193_0(c_i32_undef101_q),
        .in_lim_ext135_pop52193_1(bb_covariance_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_2_covariance_avm_readdata(in_memdep_2_covariance_avm_readdata),
        .in_memdep_2_covariance_avm_readdatavalid(in_memdep_2_covariance_avm_readdatavalid),
        .in_memdep_2_covariance_avm_waitrequest(in_memdep_2_covariance_avm_waitrequest),
        .in_memdep_2_covariance_avm_writeack(in_memdep_2_covariance_avm_writeack),
        .in_mul189_0(c_i32_undef101_q),
        .in_mul189_1(bb_covariance_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_notcmp101150_pop54197_0(GND_q),
        .in_notcmp101150_pop54197_1(bb_covariance_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going73_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance7_covariance_avm_readdata(in_unnamed_covariance7_covariance_avm_readdata),
        .in_unnamed_covariance7_covariance_avm_readdatavalid(in_unnamed_covariance7_covariance_avm_readdatavalid),
        .in_unnamed_covariance7_covariance_avm_waitrequest(in_unnamed_covariance7_covariance_avm_waitrequest),
        .in_unnamed_covariance7_covariance_avm_writeack(in_unnamed_covariance7_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going73_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B11_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2339(bb_covariance_B11_out_c0_exe2339),
        .out_c0_exe4341(bb_covariance_B11_out_c0_exe4341),
        .out_c0_exe5342(bb_covariance_B11_out_c0_exe5342),
        .out_c0_exe6343(bb_covariance_B11_out_c0_exe6343),
        .out_exiting_stall_out(bb_covariance_B11_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B11_out_exiting_valid_out),
        .out_memdep_2_covariance_avm_address(bb_covariance_B11_out_memdep_2_covariance_avm_address),
        .out_memdep_2_covariance_avm_burstcount(bb_covariance_B11_out_memdep_2_covariance_avm_burstcount),
        .out_memdep_2_covariance_avm_byteenable(bb_covariance_B11_out_memdep_2_covariance_avm_byteenable),
        .out_memdep_2_covariance_avm_enable(bb_covariance_B11_out_memdep_2_covariance_avm_enable),
        .out_memdep_2_covariance_avm_read(bb_covariance_B11_out_memdep_2_covariance_avm_read),
        .out_memdep_2_covariance_avm_write(bb_covariance_B11_out_memdep_2_covariance_avm_write),
        .out_memdep_2_covariance_avm_writedata(bb_covariance_B11_out_memdep_2_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B11_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B11_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B11_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B11_out_stall_out_1),
        .out_unnamed_covariance7_covariance_avm_address(bb_covariance_B11_out_unnamed_covariance7_covariance_avm_address),
        .out_unnamed_covariance7_covariance_avm_burstcount(bb_covariance_B11_out_unnamed_covariance7_covariance_avm_burstcount),
        .out_unnamed_covariance7_covariance_avm_byteenable(bb_covariance_B11_out_unnamed_covariance7_covariance_avm_byteenable),
        .out_unnamed_covariance7_covariance_avm_enable(bb_covariance_B11_out_unnamed_covariance7_covariance_avm_enable),
        .out_unnamed_covariance7_covariance_avm_read(bb_covariance_B11_out_unnamed_covariance7_covariance_avm_read),
        .out_unnamed_covariance7_covariance_avm_write(bb_covariance_B11_out_unnamed_covariance7_covariance_avm_write),
        .out_unnamed_covariance7_covariance_avm_writedata(bb_covariance_B11_out_unnamed_covariance7_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B11_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B11_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B11_sr_1_aunroll_x(BLACKBOX,340)
    covariance_bb_B11_sr_1 thebb_covariance_B11_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B11_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance6_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B8_out_c0_exe83149),
        .in_i_data_2_tpl(bb_covariance_B8_out_mul),
        .in_i_data_3_tpl(bb_covariance_B8_out_c0_exe23084),
        .in_i_data_4_tpl(bb_covariance_B8_out_c0_exe53116),
        .in_i_data_5_tpl(bb_covariance_B8_out_c0_exe63127),
        .in_i_data_6_tpl(bb_covariance_B8_out_c0_exe73138),
        .out_o_stall(bb_covariance_B11_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B11_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B11_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B11_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B11_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B11_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B11_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B11_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B11_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance6(BLACKBOX,244)
    covariance_loop_limiter_6 theloop_limiter_covariance6 (
        .in_i_stall(bb_covariance_B11_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B11_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B8_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B11_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance6_out_o_stall),
        .out_o_valid(loop_limiter_covariance6_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8(BLACKBOX,22)
    covariance_bb_B8 thebb_covariance_B8 (
        .in_c0_exe23084_0(bb_covariance_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe33095_0(bb_covariance_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe53116_0(bb_covariance_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe63127_0(bb_covariance_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe73138_0(bb_covariance_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe83149_0(bb_covariance_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_stall_in_0(loop_limiter_covariance6_out_o_stall),
        .in_valid_in_0(bb_covariance_B8_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe23084(bb_covariance_B8_out_c0_exe23084),
        .out_c0_exe53116(bb_covariance_B8_out_c0_exe53116),
        .out_c0_exe63127(bb_covariance_B8_out_c0_exe63127),
        .out_c0_exe73138(bb_covariance_B8_out_c0_exe73138),
        .out_c0_exe83149(bb_covariance_B8_out_c0_exe83149),
        .out_mul(bb_covariance_B8_out_mul),
        .out_stall_out_0(bb_covariance_B8_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_sr_0_aunroll_x(BLACKBOX,357)
    covariance_bb_B8_sr_0 thebb_covariance_B8_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B8_out_stall_out_0),
        .in_i_valid(bb_covariance_B9_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B9_out_c0_exe2308),
        .in_i_data_1_tpl(bb_covariance_B9_out_c0_exe3309),
        .in_i_data_2_tpl(bb_covariance_B9_out_c0_exe5311),
        .in_i_data_3_tpl(bb_covariance_B9_out_c0_exe6312),
        .in_i_data_4_tpl(bb_covariance_B9_out_c0_exe7313),
        .in_i_data_5_tpl(bb_covariance_B9_out_c0_exe8314),
        .out_o_stall(bb_covariance_B8_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B8_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B8_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B8_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B8_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B8_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B8_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B8_sr_0_aunroll_x_out_o_data_5_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going89_covariance6_sr(BLACKBOX,176)
    covariance_i_llvm_fpga_pipeline_keep_going89_6_sr thei_llvm_fpga_pipeline_keep_going89_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going89_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going89_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9(BLACKBOX,23)
    covariance_bb_B9 thebb_covariance_B9 (
        .in_exitcond16184_0(GND_q),
        .in_exitcond16184_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_flush(in_start),
        .in_forked86_0(GND_q),
        .in_forked86_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j24_062_pop30186_0(c_i32_undef101_q),
        .in_j24_062_pop30186_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_lim_ext133_pop44175_0(c_i32_undef101_q),
        .in_lim_ext133_pop44175_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext134_pop32188_0(c_i32_undef101_q),
        .in_lim_ext134_pop32188_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_memdep_phi_pop31187_0(GND_q),
        .in_memdep_phi_pop31187_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp101185_0(GND_q),
        .in_notcmp101185_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going89_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B8_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going89_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2308(bb_covariance_B9_out_c0_exe2308),
        .out_c0_exe3309(bb_covariance_B9_out_c0_exe3309),
        .out_c0_exe5311(bb_covariance_B9_out_c0_exe5311),
        .out_c0_exe6312(bb_covariance_B9_out_c0_exe6312),
        .out_c0_exe7313(bb_covariance_B9_out_c0_exe7313),
        .out_c0_exe8314(bb_covariance_B9_out_c0_exe8314),
        .out_exiting_stall_out(bb_covariance_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B9_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B9_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B9_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B9_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B9_out_stall_out_1),
        .out_unnamed_covariance6_covariance_avm_address(bb_covariance_B9_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(bb_covariance_B9_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(bb_covariance_B9_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(bb_covariance_B9_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(bb_covariance_B9_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(bb_covariance_B9_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(bb_covariance_B9_out_unnamed_covariance6_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B9_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B9_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B9_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9_sr_1_aunroll_x(BLACKBOX,358)
    covariance_bb_B9_sr_1 thebb_covariance_B9_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B7_out_c0_exe6286),
        .in_i_data_2_tpl(bb_covariance_B7_out_c0_exe1281),
        .in_i_data_3_tpl(bb_covariance_B7_out_c0_exe2282),
        .in_i_data_4_tpl(bb_covariance_B7_out_c0_exe3283),
        .in_i_data_5_tpl(bb_covariance_B7_out_memdep_phi_pop31),
        .in_i_data_6_tpl(bb_covariance_B7_out_c0_exe4284),
        .out_o_stall(bb_covariance_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance5(BLACKBOX,243)
    covariance_loop_limiter_5 theloop_limiter_covariance5 (
        .in_i_stall(bb_covariance_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B9_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B7_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance5_out_o_stall),
        .out_o_valid(loop_limiter_covariance5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going103_covariance2_sr(BLACKBOX,158)
    covariance_i_llvm_fpga_pipeline_keep_going103_2_sr thei_llvm_fpga_pipeline_keep_going103_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going103_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going103_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo(BLACKBOX,167)
    covariance_i_llvm_fpga_pipeline_keep_going39_2_valid_fifo thei_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B18_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going39_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo(BLACKBOX,179)
    covariance_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B20_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B21_sr_0_aunroll_x(BLACKBOX,350)
    covariance_bb_B21_sr_0 thebb_covariance_B21_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B21_out_stall_out_0),
        .in_i_valid(bb_covariance_B19_out_valid_out_0),
        .in_i_data_0_tpl(GND_q),
        .out_o_stall(bb_covariance_B21_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B21_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B19(BLACKBOX,12)
    covariance_bb_B19 thebb_covariance_B19 (
        .in_c0_exe348826_0(bb_covariance_B19_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(bb_covariance_B21_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B19_sr_0_aunroll_x_out_o_valid),
        .out_stall_in_0(bb_covariance_B19_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B19_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B19_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B19_sr_0_aunroll_x(BLACKBOX,348)
    covariance_bb_B19_sr_0 thebb_covariance_B19_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B19_out_stall_out_0),
        .in_i_valid(bb_covariance_B20_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B20_out_c0_exe3488),
        .out_o_stall(bb_covariance_B19_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B19_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B19_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6_sr(BLACKBOX,178)
    covariance_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B20_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B20(BLACKBOX,15)
    covariance_bb_B20 thebb_covariance_B20 (
        .in_flush(in_start),
        .in_forked_0(GND_q),
        .in_forked_1(bb_covariance_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i56_152_pop39243_0(c_i32_undef101_q),
        .in_i56_152_pop39243_1(bb_covariance_B20_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_intel_reserved_ffwd_1_0(bb_covariance_B1_start_out_intel_reserved_ffwd_1_0),
        .in_memdep_4_covariance_avm_readdata(in_memdep_4_covariance_avm_readdata),
        .in_memdep_4_covariance_avm_readdatavalid(in_memdep_4_covariance_avm_readdatavalid),
        .in_memdep_4_covariance_avm_waitrequest(in_memdep_4_covariance_avm_waitrequest),
        .in_memdep_4_covariance_avm_writeack(in_memdep_4_covariance_avm_writeack),
        .in_notcmp37242_0(GND_q),
        .in_notcmp37242_1(bb_covariance_B20_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B19_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance11_covariance_avm_readdata(in_unnamed_covariance11_covariance_avm_readdata),
        .in_unnamed_covariance11_covariance_avm_readdatavalid(in_unnamed_covariance11_covariance_avm_readdatavalid),
        .in_unnamed_covariance11_covariance_avm_waitrequest(in_unnamed_covariance11_covariance_avm_waitrequest),
        .in_unnamed_covariance11_covariance_avm_writeack(in_unnamed_covariance11_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B20_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe3488(bb_covariance_B20_out_c0_exe3488),
        .out_exiting_stall_out(bb_covariance_B20_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B20_out_exiting_valid_out),
        .out_lsu_memdep_4_o_active(bb_covariance_B20_out_lsu_memdep_4_o_active),
        .out_memdep_4_covariance_avm_address(bb_covariance_B20_out_memdep_4_covariance_avm_address),
        .out_memdep_4_covariance_avm_burstcount(bb_covariance_B20_out_memdep_4_covariance_avm_burstcount),
        .out_memdep_4_covariance_avm_byteenable(bb_covariance_B20_out_memdep_4_covariance_avm_byteenable),
        .out_memdep_4_covariance_avm_enable(bb_covariance_B20_out_memdep_4_covariance_avm_enable),
        .out_memdep_4_covariance_avm_read(bb_covariance_B20_out_memdep_4_covariance_avm_read),
        .out_memdep_4_covariance_avm_write(bb_covariance_B20_out_memdep_4_covariance_avm_write),
        .out_memdep_4_covariance_avm_writedata(bb_covariance_B20_out_memdep_4_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B20_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B20_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B20_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B20_out_stall_out_1),
        .out_unnamed_covariance11_covariance_avm_address(bb_covariance_B20_out_unnamed_covariance11_covariance_avm_address),
        .out_unnamed_covariance11_covariance_avm_burstcount(bb_covariance_B20_out_unnamed_covariance11_covariance_avm_burstcount),
        .out_unnamed_covariance11_covariance_avm_byteenable(bb_covariance_B20_out_unnamed_covariance11_covariance_avm_byteenable),
        .out_unnamed_covariance11_covariance_avm_enable(bb_covariance_B20_out_unnamed_covariance11_covariance_avm_enable),
        .out_unnamed_covariance11_covariance_avm_read(bb_covariance_B20_out_unnamed_covariance11_covariance_avm_read),
        .out_unnamed_covariance11_covariance_avm_write(bb_covariance_B20_out_unnamed_covariance11_covariance_avm_write),
        .out_unnamed_covariance11_covariance_avm_writedata(bb_covariance_B20_out_unnamed_covariance11_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B20_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B20_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B20_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B20_sr_1_aunroll_x(BLACKBOX,349)
    covariance_bb_B20_sr_1 thebb_covariance_B20_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B20_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance8_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B18_out_c0_exe2473),
        .in_i_data_2_tpl(bb_covariance_B18_out_c0_exe3474),
        .out_o_stall(bb_covariance_B20_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B20_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B20_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B20_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B20_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance8(BLACKBOX,246)
    covariance_loop_limiter_8 theloop_limiter_covariance8 (
        .in_i_stall(bb_covariance_B20_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B20_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B18_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B20_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance8_out_o_stall),
        .out_o_valid(loop_limiter_covariance8_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going39_covariance2_sr(BLACKBOX,166)
    covariance_i_llvm_fpga_pipeline_keep_going39_2_sr thei_llvm_fpga_pipeline_keep_going39_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B18_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going39_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going39_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B18(BLACKBOX,11)
    covariance_bb_B18 thebb_covariance_B18 (
        .in_forked145_0(GND_q),
        .in_forked145_1(bb_covariance_B18_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going39_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance8_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going39_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B18_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2473(bb_covariance_B18_out_c0_exe2473),
        .out_c0_exe3474(bb_covariance_B18_out_c0_exe3474),
        .out_exiting_stall_out(bb_covariance_B18_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B18_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B18_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B18_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B18_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B18_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B18_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B18_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B18_sr_1_aunroll_x(BLACKBOX,347)
    covariance_bb_B18_sr_1 thebb_covariance_B18_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B18_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .out_o_stall(bb_covariance_B18_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B18_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B18_sr_1_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance3(BLACKBOX,241)
    covariance_loop_limiter_3 theloop_limiter_covariance3 (
        .in_i_stall(bb_covariance_B18_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B18_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B17_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B18_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance3_out_o_stall),
        .out_o_valid(loop_limiter_covariance3_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo(BLACKBOX,169)
    covariance_i_llvm_fpga_pipeline_keep_going46_6_valid_fifo thei_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B16_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going46_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going46_covariance6_sr(BLACKBOX,168)
    covariance_i_llvm_fpga_pipeline_keep_going46_6_sr thei_llvm_fpga_pipeline_keep_going46_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B16_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going46_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going46_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef121(CONSTANT,143)
    assign c_i33_undef121_q = $unsigned(33'b000000000000000000000000000000000);

    // i_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo(BLACKBOX,171)
    covariance_i_llvm_fpga_pipeline_keep_going60_2_valid_fifo thei_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B13_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going60_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going60_covariance2_sr(BLACKBOX,170)
    covariance_i_llvm_fpga_pipeline_keep_going60_2_sr thei_llvm_fpga_pipeline_keep_going60_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B13_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going60_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going60_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo(BLACKBOX,173)
    covariance_i_llvm_fpga_pipeline_keep_going65_2_valid_fifo thei_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo (
        .in_data_in(c_i2_0161_q),
        .in_stall_in(bb_covariance_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going65_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going65_covariance2_sr(BLACKBOX,172)
    covariance_i_llvm_fpga_pipeline_keep_going65_2_sr thei_llvm_fpga_pipeline_keep_going65_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going65_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going65_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_sr_1_aunroll_x(BLACKBOX,341)
    covariance_bb_B12_sr_1 thebb_covariance_B12_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B6_out_reorder_limiter_enter),
        .in_i_data_2_tpl(bb_covariance_B6_out_c0_exe434111),
        .out_o_stall(bb_covariance_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12(BLACKBOX,5)
    covariance_bb_B12 thebb_covariance_B12 (
        .in_forked141_0(GND_q),
        .in_forked141_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext136_pop61200_0(c_i32_undef101_q),
        .in_lim_ext136_pop61200_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going65_covariance2_sr_out_o_stall),
        .in_reorder_limiter_enter179_0(c_i32_undef101_q),
        .in_reorder_limiter_enter179_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_covariance7_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going65_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1361(bb_covariance_B12_out_c0_exe1361),
        .out_c0_exe3363(bb_covariance_B12_out_c0_exe3363),
        .out_c0_exe4364(bb_covariance_B12_out_c0_exe4364),
        .out_c0_exe5365(bb_covariance_B12_out_c0_exe5365),
        .out_c0_exe6366(bb_covariance_B12_out_c0_exe6366),
        .out_c0_exe7367(bb_covariance_B12_out_c0_exe7367),
        .out_c0_exe8368(bb_covariance_B12_out_c0_exe8368),
        .out_exiting_stall_out(bb_covariance_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B12_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B12_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B12_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B12_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B12_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B12_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance7(BLACKBOX,245)
    covariance_loop_limiter_7 theloop_limiter_covariance7 (
        .in_i_stall(bb_covariance_B13_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B13_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B12_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B13_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance7_out_o_stall),
        .out_o_valid(loop_limiter_covariance7_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13_sr_1_aunroll_x(BLACKBOX,342)
    covariance_bb_B13_sr_1 thebb_covariance_B13_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B13_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance7_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B12_out_c0_exe7367),
        .in_i_data_2_tpl(bb_covariance_B12_out_c0_exe8368),
        .in_i_data_3_tpl(bb_covariance_B12_out_c0_exe1361),
        .in_i_data_4_tpl(bb_covariance_B12_out_c0_exe3363),
        .in_i_data_5_tpl(bb_covariance_B12_out_c0_exe4364),
        .in_i_data_6_tpl(bb_covariance_B12_out_c0_exe5365),
        .in_i_data_7_tpl(bb_covariance_B12_out_c0_exe6366),
        .out_o_stall(bb_covariance_B13_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B13_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13(BLACKBOX,6)
    covariance_bb_B13 thebb_covariance_B13 (
        .in_forked59_0(GND_q),
        .in_forked59_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv20_pop34209_0(c_i33_undef121_q),
        .in_fpga_indvars_iv20_pop34209_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i56_057_pop35215_0(c_i32_undef101_q),
        .in_i56_057_pop35215_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_lim_ext136_pop61204_0(c_i32_undef101_q),
        .in_lim_ext136_pop61204_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lim_ext137_pop36218_0(c_i32_undef101_q),
        .in_lim_ext137_pop36218_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp63212_0(GND_q),
        .in_notcmp63212_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going60_covariance2_sr_out_o_stall),
        .in_reorder_limiter_enter142_pop37221_0(c_i32_undef101_q),
        .in_reorder_limiter_enter142_pop37221_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_reorder_limiter_enter183_0(c_i32_undef101_q),
        .in_reorder_limiter_enter183_1(bb_covariance_B13_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_covariance9_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going60_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B13_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10404(bb_covariance_B13_out_c0_exe10404),
        .out_c0_exe11(bb_covariance_B13_out_c0_exe11),
        .out_c0_exe12(bb_covariance_B13_out_c0_exe12),
        .out_c0_exe13(bb_covariance_B13_out_c0_exe13),
        .out_c0_exe14(bb_covariance_B13_out_c0_exe14),
        .out_c0_exe15(bb_covariance_B13_out_c0_exe15),
        .out_c0_exe2396(bb_covariance_B13_out_c0_exe2396),
        .out_c0_exe3397(bb_covariance_B13_out_c0_exe3397),
        .out_c0_exe4398(bb_covariance_B13_out_c0_exe4398),
        .out_c0_exe5399(bb_covariance_B13_out_c0_exe5399),
        .out_c0_exe6400(bb_covariance_B13_out_c0_exe6400),
        .out_c0_exe7401(bb_covariance_B13_out_c0_exe7401),
        .out_c0_exe8402(bb_covariance_B13_out_c0_exe8402),
        .out_c0_exe9403(bb_covariance_B13_out_c0_exe9403),
        .out_exiting_stall_out(bb_covariance_B13_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B13_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B13_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B13_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B13_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B13_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B13_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B13_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance9(BLACKBOX,247)
    covariance_loop_limiter_9 theloop_limiter_covariance9 (
        .in_i_stall(bb_covariance_B16_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B16_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B13_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B16_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance9_out_o_stall),
        .out_o_valid(loop_limiter_covariance9_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B16_sr_1_aunroll_x(BLACKBOX,345)
    covariance_bb_B16_sr_1 thebb_covariance_B16_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B16_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance9_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B13_out_c0_exe9403),
        .in_i_data_2_tpl(bb_covariance_B13_out_c0_exe10404),
        .in_i_data_3_tpl(bb_covariance_B13_out_c0_exe11),
        .in_i_data_4_tpl(bb_covariance_B13_out_c0_exe12),
        .in_i_data_5_tpl(bb_covariance_B13_out_c0_exe13),
        .in_i_data_6_tpl(bb_covariance_B13_out_c0_exe14),
        .in_i_data_7_tpl(bb_covariance_B13_out_c0_exe15),
        .in_i_data_8_tpl(bb_covariance_B13_out_c0_exe8402),
        .in_i_data_9_tpl(bb_covariance_B13_out_c0_exe2396),
        .in_i_data_10_tpl(bb_covariance_B13_out_c0_exe3397),
        .in_i_data_11_tpl(bb_covariance_B13_out_c0_exe4398),
        .in_i_data_12_tpl(bb_covariance_B13_out_c0_exe5399),
        .in_i_data_13_tpl(bb_covariance_B13_out_c0_exe6400),
        .in_i_data_14_tpl(bb_covariance_B13_out_c0_exe7401),
        .out_o_stall(bb_covariance_B16_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B16_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_covariance_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B16(BLACKBOX,9)
    covariance_bb_B16 thebb_covariance_B16 (
        .in_flush(in_start),
        .in_forked43_0(GND_q),
        .in_forked43_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_forked59224_0(GND_q),
        .in_forked59224_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_fpga_indvars_iv20_pop34211_0(c_i33_undef121_q),
        .in_fpga_indvars_iv20_pop34211_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i56_057_pop35158_pop71230_0(c_i32_undef101_q),
        .in_i56_057_pop35158_pop71230_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_i56_057_pop35217_0(c_i32_undef101_q),
        .in_i56_057_pop35217_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_j60_056_pop67226_0(c_i32_undef101_q),
        .in_j60_056_pop67226_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_lim_ext136_pop61203_0(c_i32_undef101_q),
        .in_lim_ext136_pop61203_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lim_ext137_pop36220_0(c_i32_undef101_q),
        .in_lim_ext137_pop36220_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_lim_ext138_pop68227_0(c_i32_undef101_q),
        .in_lim_ext138_pop68227_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp58225_0(GND_q),
        .in_notcmp58225_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp63156_pop70229_0(GND_q),
        .in_notcmp63156_pop70229_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp63214_0(GND_q),
        .in_notcmp63214_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going46_covariance6_sr_out_o_stall),
        .in_reorder_limiter_enter142_pop37223_0(c_i32_undef101_q),
        .in_reorder_limiter_enter142_pop37223_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_reorder_limiter_enter143_pop69228_0(c_i32_undef101_q),
        .in_reorder_limiter_enter143_pop69228_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_reorder_limiter_enter182_0(c_i32_undef101_q),
        .in_reorder_limiter_enter182_1(bb_covariance_B16_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_covariance_B15_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance8_covariance_avm_readdata(in_unnamed_covariance8_covariance_avm_readdata),
        .in_unnamed_covariance8_covariance_avm_readdatavalid(in_unnamed_covariance8_covariance_avm_readdatavalid),
        .in_unnamed_covariance8_covariance_avm_waitrequest(in_unnamed_covariance8_covariance_avm_waitrequest),
        .in_unnamed_covariance8_covariance_avm_writeack(in_unnamed_covariance8_covariance_avm_writeack),
        .in_unnamed_covariance9_covariance_avm_readdata(in_unnamed_covariance9_covariance_avm_readdata),
        .in_unnamed_covariance9_covariance_avm_readdatavalid(in_unnamed_covariance9_covariance_avm_readdatavalid),
        .in_unnamed_covariance9_covariance_avm_waitrequest(in_unnamed_covariance9_covariance_avm_waitrequest),
        .in_unnamed_covariance9_covariance_avm_writeack(in_unnamed_covariance9_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going46_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B16_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10459(bb_covariance_B16_out_c0_exe10459),
        .out_c0_exe2451(bb_covariance_B16_out_c0_exe2451),
        .out_c0_exe3452(bb_covariance_B16_out_c0_exe3452),
        .out_c0_exe4453(bb_covariance_B16_out_c0_exe4453),
        .out_c0_exe6455(bb_covariance_B16_out_c0_exe6455),
        .out_c0_exe7456(bb_covariance_B16_out_c0_exe7456),
        .out_c0_exe8457(bb_covariance_B16_out_c0_exe8457),
        .out_c0_exe9458(bb_covariance_B16_out_c0_exe9458),
        .out_exiting_stall_out(bb_covariance_B16_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B16_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B16_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B16_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B16_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B16_out_stall_out_1),
        .out_unnamed_covariance8_covariance_avm_address(bb_covariance_B16_out_unnamed_covariance8_covariance_avm_address),
        .out_unnamed_covariance8_covariance_avm_burstcount(bb_covariance_B16_out_unnamed_covariance8_covariance_avm_burstcount),
        .out_unnamed_covariance8_covariance_avm_byteenable(bb_covariance_B16_out_unnamed_covariance8_covariance_avm_byteenable),
        .out_unnamed_covariance8_covariance_avm_enable(bb_covariance_B16_out_unnamed_covariance8_covariance_avm_enable),
        .out_unnamed_covariance8_covariance_avm_read(bb_covariance_B16_out_unnamed_covariance8_covariance_avm_read),
        .out_unnamed_covariance8_covariance_avm_write(bb_covariance_B16_out_unnamed_covariance8_covariance_avm_write),
        .out_unnamed_covariance8_covariance_avm_writedata(bb_covariance_B16_out_unnamed_covariance8_covariance_avm_writedata),
        .out_unnamed_covariance9_covariance_avm_address(bb_covariance_B16_out_unnamed_covariance9_covariance_avm_address),
        .out_unnamed_covariance9_covariance_avm_burstcount(bb_covariance_B16_out_unnamed_covariance9_covariance_avm_burstcount),
        .out_unnamed_covariance9_covariance_avm_byteenable(bb_covariance_B16_out_unnamed_covariance9_covariance_avm_byteenable),
        .out_unnamed_covariance9_covariance_avm_enable(bb_covariance_B16_out_unnamed_covariance9_covariance_avm_enable),
        .out_unnamed_covariance9_covariance_avm_read(bb_covariance_B16_out_unnamed_covariance9_covariance_avm_read),
        .out_unnamed_covariance9_covariance_avm_write(bb_covariance_B16_out_unnamed_covariance9_covariance_avm_write),
        .out_unnamed_covariance9_covariance_avm_writedata(bb_covariance_B16_out_unnamed_covariance9_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B16_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B16_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B16_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B15_sr_0_aunroll_x(BLACKBOX,344)
    covariance_bb_B15_sr_0 thebb_covariance_B15_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B15_out_stall_out_0),
        .in_i_valid(bb_covariance_B16_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B16_out_c0_exe2451),
        .in_i_data_1_tpl(bb_covariance_B16_out_c0_exe3452),
        .in_i_data_2_tpl(bb_covariance_B16_out_c0_exe4453),
        .in_i_data_3_tpl(bb_covariance_B16_out_c0_exe6455),
        .in_i_data_4_tpl(bb_covariance_B16_out_c0_exe7456),
        .in_i_data_5_tpl(bb_covariance_B16_out_c0_exe8457),
        .in_i_data_6_tpl(bb_covariance_B16_out_c0_exe9458),
        .in_i_data_7_tpl(bb_covariance_B16_out_c0_exe10459),
        .out_o_stall(bb_covariance_B15_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B15_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B15_sr_0_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B15(BLACKBOX,8)
    covariance_bb_B15 thebb_covariance_B15 (
        .in_c0_exe1045925_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe245116_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe345217_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe445318_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe645521_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe745622_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe845723_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe945824_0(bb_covariance_B15_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_flush(in_start),
        .in_memdep_3_covariance_avm_readdata(in_memdep_3_covariance_avm_readdata),
        .in_memdep_3_covariance_avm_readdatavalid(in_memdep_3_covariance_avm_readdatavalid),
        .in_memdep_3_covariance_avm_waitrequest(in_memdep_3_covariance_avm_waitrequest),
        .in_memdep_3_covariance_avm_writeack(in_memdep_3_covariance_avm_writeack),
        .in_stall_in_0(bb_covariance_B14_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B15_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1416(bb_covariance_B15_out_c0_exe1416),
        .out_c0_exe645521(bb_covariance_B15_out_c0_exe645521),
        .out_memdep_3_covariance_avm_address(bb_covariance_B15_out_memdep_3_covariance_avm_address),
        .out_memdep_3_covariance_avm_burstcount(bb_covariance_B15_out_memdep_3_covariance_avm_burstcount),
        .out_memdep_3_covariance_avm_byteenable(bb_covariance_B15_out_memdep_3_covariance_avm_byteenable),
        .out_memdep_3_covariance_avm_enable(bb_covariance_B15_out_memdep_3_covariance_avm_enable),
        .out_memdep_3_covariance_avm_read(bb_covariance_B15_out_memdep_3_covariance_avm_read),
        .out_memdep_3_covariance_avm_write(bb_covariance_B15_out_memdep_3_covariance_avm_write),
        .out_memdep_3_covariance_avm_writedata(bb_covariance_B15_out_memdep_3_covariance_avm_writedata),
        .out_stall_in_0(bb_covariance_B15_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B15_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B15_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B14_sr_0_aunroll_x(BLACKBOX,343)
    covariance_bb_B14_sr_0 thebb_covariance_B14_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B14_out_stall_out_0),
        .in_i_valid(bb_covariance_B15_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B15_out_c0_exe1416),
        .in_i_data_1_tpl(bb_covariance_B15_out_c0_exe645521),
        .out_o_stall(bb_covariance_B14_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B14_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B14(BLACKBOX,7)
    covariance_bb_B14 thebb_covariance_B14 (
        .in_c0_exe141615_0(bb_covariance_B14_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe645520_0(bb_covariance_B14_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_covariance_B17_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B14_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe645520(bb_covariance_B14_out_c0_exe645520),
        .out_stall_in_0(bb_covariance_B14_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B14_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B14_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B17_sr_0_aunroll_x(BLACKBOX,346)
    covariance_bb_B17_sr_0 thebb_covariance_B17_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B17_out_stall_out_0),
        .in_i_valid(bb_covariance_B14_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B14_out_c0_exe645520),
        .out_o_stall(bb_covariance_B17_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B17_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B17(BLACKBOX,10)
    covariance_bb_B17 thebb_covariance_B17 (
        .in_c0_exe645519_0(bb_covariance_B17_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_covariance3_out_o_stall),
        .in_valid_in_0(bb_covariance_B17_sr_0_aunroll_x_out_o_valid),
        .in_wgl_12_exit_exit_stall_out(bb_covariance_B6_out_wgl_12_enter_exit_stall_out),
        .in_wgl_12_exit_exit_valid_out(bb_covariance_B6_out_wgl_12_enter_exit_valid_out),
        .out_stall_out_0(bb_covariance_B17_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B17_out_valid_out_0),
        .out_wgl_12_exit_exit_stall_in(bb_covariance_B17_out_wgl_12_exit_exit_stall_in),
        .out_wgl_12_exit_exit_valid_in(bb_covariance_B17_out_wgl_12_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance2(BLACKBOX,240)
    covariance_loop_limiter_2 theloop_limiter_covariance2 (
        .in_i_stall(bb_covariance_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B12_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B6_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance2_out_o_stall),
        .out_o_valid(loop_limiter_covariance2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6(BLACKBOX,20)
    covariance_bb_B6 thebb_covariance_B6 (
        .in_c0_exe434111_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_covariance2_out_o_stall),
        .in_valid_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .in_wgl_12_enter_exit_stall_in(bb_covariance_B17_out_wgl_12_exit_exit_stall_in),
        .in_wgl_12_enter_exit_valid_in(bb_covariance_B17_out_wgl_12_exit_exit_valid_in),
        .out_c0_exe434111(bb_covariance_B6_out_c0_exe434111),
        .out_reorder_limiter_enter(bb_covariance_B6_out_reorder_limiter_enter),
        .out_stall_out_0(bb_covariance_B6_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B6_out_valid_out_0),
        .out_wgl_12_enter_exit_stall_out(bb_covariance_B6_out_wgl_12_enter_exit_stall_out),
        .out_wgl_12_enter_exit_valid_out(bb_covariance_B6_out_wgl_12_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6_sr_0_aunroll_x(BLACKBOX,355)
    covariance_bb_B6_sr_0 thebb_covariance_B6_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B6_out_stall_out_0),
        .in_i_valid(bb_covariance_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B10_out_c0_exe434112),
        .out_o_stall(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10(BLACKBOX,3)
    covariance_bb_B10 thebb_covariance_B10 (
        .in_c0_exe233910_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe434112_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe534213_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe634314_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_31(bb_covariance_B7_out_feedback_stall_out_31),
        .in_stall_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe434112(bb_covariance_B10_out_c0_exe434112),
        .out_feedback_out_31(bb_covariance_B10_out_feedback_out_31),
        .out_feedback_valid_out_31(bb_covariance_B10_out_feedback_valid_out_31),
        .out_stall_in_0(bb_covariance_B10_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B10_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7(BLACKBOX,21)
    covariance_bb_B7 thebb_covariance_B7 (
        .in_feedback_in_31(bb_covariance_B10_out_feedback_out_31),
        .in_feedback_valid_in_31(bb_covariance_B10_out_feedback_valid_out_31),
        .in_forked140_0(GND_q),
        .in_forked140_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext133_pop44171_0(c_i32_undef101_q),
        .in_lim_ext133_pop44171_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going103_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going103_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1281(bb_covariance_B7_out_c0_exe1281),
        .out_c0_exe2282(bb_covariance_B7_out_c0_exe2282),
        .out_c0_exe3283(bb_covariance_B7_out_c0_exe3283),
        .out_c0_exe4284(bb_covariance_B7_out_c0_exe4284),
        .out_c0_exe6286(bb_covariance_B7_out_c0_exe6286),
        .out_exiting_stall_out(bb_covariance_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B7_out_exiting_valid_out),
        .out_feedback_stall_out_31(bb_covariance_B7_out_feedback_stall_out_31),
        .out_memdep_phi_pop31(bb_covariance_B7_out_memdep_phi_pop31),
        .out_pipeline_valid_out(bb_covariance_B7_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B7_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B7_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B7_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B7_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B7_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7_sr_1_aunroll_x(BLACKBOX,356)
    covariance_bb_B7_sr_1 thebb_covariance_B7_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B2_out_c0_exe81),
        .out_o_stall(bb_covariance_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance1(BLACKBOX,239)
    covariance_loop_limiter_1 theloop_limiter_covariance1 (
        .in_i_stall(bb_covariance_B7_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B7_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B2_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B7_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance1_out_o_stall),
        .out_o_valid(loop_limiter_covariance1_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B2(BLACKBOX,14)
    covariance_bb_B2 thebb_covariance_B2 (
        .in_c0_exe81_0(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_stall_in_0(loop_limiter_covariance1_out_o_stall),
        .in_valid_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe81(bb_covariance_B2_out_c0_exe81),
        .out_stall_out_0(bb_covariance_B2_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B2_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B2_sr_0_aunroll_x(BLACKBOX,351)
    covariance_bb_B2_sr_0 thebb_covariance_B2_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B2_out_stall_out_0),
        .in_i_valid(bb_covariance_B4_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B4_out_c0_exe82),
        .out_o_stall(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B4(BLACKBOX,18)
    covariance_bb_B4 thebb_covariance_B4 (
        .in_c0_exe82_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe93_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe82(bb_covariance_B4_out_c0_exe82),
        .out_stall_in_0(bb_covariance_B4_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B4_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B4_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B4_sr_0_aunroll_x(BLACKBOX,353)
    covariance_bb_B4_sr_0 thebb_covariance_B4_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B4_out_stall_out_0),
        .in_i_valid(bb_covariance_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B5_out_c0_exe8),
        .in_i_data_1_tpl(bb_covariance_B5_out_c0_exe9),
        .out_o_stall(bb_covariance_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going110_covariance6_sr(BLACKBOX,160)
    covariance_i_llvm_fpga_pipeline_keep_going110_6_sr thei_llvm_fpga_pipeline_keep_going110_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going110_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going110_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5(BLACKBOX,19)
    covariance_bb_B5 thebb_covariance_B5 (
        .in_flush(in_start),
        .in_forked107_0(GND_q),
        .in_forked107_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_i_064_pop27169_0(c_i32_undef101_q),
        .in_i_064_pop27169_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_intel_reserved_ffwd_0_0(bb_covariance_B1_start_out_intel_reserved_ffwd_0_0),
        .in_intel_reserved_ffwd_1_0(bb_covariance_B1_start_out_intel_reserved_ffwd_1_0),
        .in_lim_ext132_pop28170_0(c_i32_undef101_q),
        .in_lim_ext132_pop28170_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_lim_ext167_0(c_i32_undef101_q),
        .in_lim_ext167_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_1_covariance_avm_readdata(in_memdep_1_covariance_avm_readdata),
        .in_memdep_1_covariance_avm_readdatavalid(in_memdep_1_covariance_avm_readdatavalid),
        .in_memdep_1_covariance_avm_waitrequest(in_memdep_1_covariance_avm_waitrequest),
        .in_memdep_1_covariance_avm_writeack(in_memdep_1_covariance_avm_writeack),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_notcmp122168_0(GND_q),
        .in_notcmp122168_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going110_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .in_unnamed_covariance5_covariance_avm_readdata(in_unnamed_covariance5_covariance_avm_readdata),
        .in_unnamed_covariance5_covariance_avm_readdatavalid(in_unnamed_covariance5_covariance_avm_readdatavalid),
        .in_unnamed_covariance5_covariance_avm_waitrequest(in_unnamed_covariance5_covariance_avm_waitrequest),
        .in_unnamed_covariance5_covariance_avm_writeack(in_unnamed_covariance5_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going110_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe8(bb_covariance_B5_out_c0_exe8),
        .out_c0_exe9(bb_covariance_B5_out_c0_exe9),
        .out_exiting_stall_out(bb_covariance_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B5_out_exiting_valid_out),
        .out_memdep_1_covariance_avm_address(bb_covariance_B5_out_memdep_1_covariance_avm_address),
        .out_memdep_1_covariance_avm_burstcount(bb_covariance_B5_out_memdep_1_covariance_avm_burstcount),
        .out_memdep_1_covariance_avm_byteenable(bb_covariance_B5_out_memdep_1_covariance_avm_byteenable),
        .out_memdep_1_covariance_avm_enable(bb_covariance_B5_out_memdep_1_covariance_avm_enable),
        .out_memdep_1_covariance_avm_read(bb_covariance_B5_out_memdep_1_covariance_avm_read),
        .out_memdep_1_covariance_avm_write(bb_covariance_B5_out_memdep_1_covariance_avm_write),
        .out_memdep_1_covariance_avm_writedata(bb_covariance_B5_out_memdep_1_covariance_avm_writedata),
        .out_memdep_covariance_avm_address(bb_covariance_B5_out_memdep_covariance_avm_address),
        .out_memdep_covariance_avm_burstcount(bb_covariance_B5_out_memdep_covariance_avm_burstcount),
        .out_memdep_covariance_avm_byteenable(bb_covariance_B5_out_memdep_covariance_avm_byteenable),
        .out_memdep_covariance_avm_enable(bb_covariance_B5_out_memdep_covariance_avm_enable),
        .out_memdep_covariance_avm_read(bb_covariance_B5_out_memdep_covariance_avm_read),
        .out_memdep_covariance_avm_write(bb_covariance_B5_out_memdep_covariance_avm_write),
        .out_memdep_covariance_avm_writedata(bb_covariance_B5_out_memdep_covariance_avm_writedata),
        .out_pipeline_valid_out(bb_covariance_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B5_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B5_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B5_out_stall_out_1),
        .out_unnamed_covariance4_covariance_avm_address(bb_covariance_B5_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(bb_covariance_B5_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(bb_covariance_B5_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(bb_covariance_B5_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(bb_covariance_B5_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(bb_covariance_B5_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(bb_covariance_B5_out_unnamed_covariance4_covariance_avm_writedata),
        .out_unnamed_covariance5_covariance_avm_address(bb_covariance_B5_out_unnamed_covariance5_covariance_avm_address),
        .out_unnamed_covariance5_covariance_avm_burstcount(bb_covariance_B5_out_unnamed_covariance5_covariance_avm_burstcount),
        .out_unnamed_covariance5_covariance_avm_byteenable(bb_covariance_B5_out_unnamed_covariance5_covariance_avm_byteenable),
        .out_unnamed_covariance5_covariance_avm_enable(bb_covariance_B5_out_unnamed_covariance5_covariance_avm_enable),
        .out_unnamed_covariance5_covariance_avm_read(bb_covariance_B5_out_unnamed_covariance5_covariance_avm_read),
        .out_unnamed_covariance5_covariance_avm_write(bb_covariance_B5_out_unnamed_covariance5_covariance_avm_write),
        .out_unnamed_covariance5_covariance_avm_writedata(bb_covariance_B5_out_unnamed_covariance5_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B5_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B5_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_sr_1_aunroll_x(BLACKBOX,354)
    covariance_bb_B5_sr_1 thebb_covariance_B5_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B3_out_c0_exe5),
        .in_i_data_2_tpl(bb_covariance_B3_out_c0_exe2252),
        .in_i_data_3_tpl(bb_covariance_B3_out_c0_exe3),
        .in_i_data_4_tpl(bb_covariance_B3_out_c0_exe4),
        .out_o_stall(bb_covariance_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance4(BLACKBOX,242)
    covariance_loop_limiter_4 theloop_limiter_covariance4 (
        .in_i_stall(bb_covariance_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B5_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B3_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance4_out_o_stall),
        .out_o_valid(loop_limiter_covariance4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going124_covariance2_sr(BLACKBOX,162)
    covariance_i_llvm_fpga_pipeline_keep_going124_2_sr thei_llvm_fpga_pipeline_keep_going124_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going124_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going124_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef101(CONSTANT,115)
    assign c_i32_undef101_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_covariance_B3(BLACKBOX,17)
    covariance_bb_B3 thebb_covariance_B3 (
        .in_forked131_0(GND_q),
        .in_forked131_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext165_0(c_i32_undef101_q),
        .in_lim_ext165_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going124_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going124_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2252(bb_covariance_B3_out_c0_exe2252),
        .out_c0_exe3(bb_covariance_B3_out_c0_exe3),
        .out_c0_exe4(bb_covariance_B3_out_c0_exe4),
        .out_c0_exe5(bb_covariance_B3_out_c0_exe5),
        .out_exiting_stall_out(bb_covariance_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B3_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B3_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B3_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B3_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B3_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3_sr_1_aunroll_x(BLACKBOX,352)
    covariance_bb_B3_sr_1 thebb_covariance_B3_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B1_start_out_c1_exe1),
        .out_o_stall(bb_covariance_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance0(BLACKBOX,238)
    covariance_loop_limiter_0 theloop_limiter_covariance0 (
        .in_i_stall(bb_covariance_B3_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B3_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B1_start_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B3_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance0_out_o_stall),
        .out_o_valid(loop_limiter_covariance0_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going128_covariance2_sr(BLACKBOX,164)
    covariance_i_llvm_fpga_pipeline_keep_going128_2_sr thei_llvm_fpga_pipeline_keep_going128_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going128_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going128_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B1_start(BLACKBOX,13)
    covariance_bb_B1_start thebb_covariance_B1_start (
        .in_feedback_in_1(bb_covariance_B21_out_feedback_out_1),
        .in_feedback_valid_in_1(bb_covariance_B21_out_feedback_valid_out_1),
        .in_forked130_0(GND_q),
        .in_forked130_1(VCC_q),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going128_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going128_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_c1_exe1(bb_covariance_B1_start_out_c1_exe1),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_1(bb_covariance_B1_start_out_feedback_stall_out_1),
        .out_intel_reserved_ffwd_0_0(bb_covariance_B1_start_out_intel_reserved_ffwd_0_0),
        .out_intel_reserved_ffwd_1_0(bb_covariance_B1_start_out_intel_reserved_ffwd_1_0),
        .out_iord_bl_call_covariance_o_fifoalmost_full(bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready),
        .out_pipeline_valid_out(bb_covariance_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_covariance_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B21(BLACKBOX,16)
    covariance_bb_B21 thebb_covariance_B21 (
        .in_feedback_stall_in_1(bb_covariance_B1_start_out_feedback_stall_out_1),
        .in_iowr_bl_return_covariance_i_fifoready(in_iowr_bl_return_covariance_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_covariance_B21_sr_0_aunroll_x_out_o_valid),
        .out_feedback_out_1(bb_covariance_B21_out_feedback_out_1),
        .out_feedback_valid_out_1(bb_covariance_B21_out_feedback_valid_out_1),
        .out_iowr_bl_return_covariance_o_fifodata(bb_covariance_B21_out_iowr_bl_return_covariance_o_fifodata),
        .out_iowr_bl_return_covariance_o_fifovalid(bb_covariance_B21_out_iowr_bl_return_covariance_o_fifovalid),
        .out_stall_in_0(bb_covariance_B21_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B21_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B21_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // covariance_B1_start_x(EXTIFACE,147)
    assign covariance_B1_start_x_i_capture = GND_q;
    assign covariance_B1_start_x_i_clear = GND_q;
    assign covariance_B1_start_x_i_enable = VCC_q;
    assign covariance_B1_start_x_i_shift = GND_q;
    assign covariance_B1_start_x_i_stall_pred = GND_q;
    assign covariance_B1_start_x_i_stall_succ = bb_covariance_B21_out_stall_in_0;
    assign covariance_B1_start_x_i_valid_loop = bb_covariance_B1_start_out_valid_in_0;
    assign covariance_B1_start_x_i_valid_pred = bb_covariance_B1_start_out_valid_in_1;
    assign covariance_B1_start_x_i_valid_succ = bb_covariance_B21_out_valid_out_0;
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

    // covariance_B11_x(EXTIFACE,148)
    assign covariance_B11_x_i_capture = GND_q;
    assign covariance_B11_x_i_clear = GND_q;
    assign covariance_B11_x_i_enable = VCC_q;
    assign covariance_B11_x_i_shift = GND_q;
    assign covariance_B11_x_i_stall_pred = loop_limiter_covariance6_out_o_stall;
    assign covariance_B11_x_i_stall_succ = bb_covariance_B11_out_stall_in_0;
    assign covariance_B11_x_i_valid_loop = bb_covariance_B11_out_valid_in_0;
    assign covariance_B11_x_i_valid_pred = bb_covariance_B11_out_valid_in_1;
    assign covariance_B11_x_i_valid_succ = bb_covariance_B11_out_valid_out_0;
    assign covariance_B11_x_i_capture_bitsignaltemp = covariance_B11_x_i_capture[0];
    assign covariance_B11_x_i_clear_bitsignaltemp = covariance_B11_x_i_clear[0];
    assign covariance_B11_x_i_enable_bitsignaltemp = covariance_B11_x_i_enable[0];
    assign covariance_B11_x_i_shift_bitsignaltemp = covariance_B11_x_i_shift[0];
    assign covariance_B11_x_i_stall_pred_bitsignaltemp = covariance_B11_x_i_stall_pred[0];
    assign covariance_B11_x_i_stall_succ_bitsignaltemp = covariance_B11_x_i_stall_succ[0];
    assign covariance_B11_x_i_valid_loop_bitsignaltemp = covariance_B11_x_i_valid_loop[0];
    assign covariance_B11_x_i_valid_pred_bitsignaltemp = covariance_B11_x_i_valid_pred[0];
    assign covariance_B11_x_i_valid_succ_bitsignaltemp = covariance_B11_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B11")
    ) thecovariance_B11_x (
        .i_capture(covariance_B11_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B11_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B11_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B11_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B11_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B11_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B11_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B11_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B11_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B12_x(EXTIFACE,149)
    assign covariance_B12_x_i_capture = GND_q;
    assign covariance_B12_x_i_clear = GND_q;
    assign covariance_B12_x_i_enable = VCC_q;
    assign covariance_B12_x_i_shift = GND_q;
    assign covariance_B12_x_i_stall_pred = loop_limiter_covariance2_out_o_stall;
    assign covariance_B12_x_i_stall_succ = bb_covariance_B14_out_stall_in_0;
    assign covariance_B12_x_i_valid_loop = bb_covariance_B12_out_valid_in_0;
    assign covariance_B12_x_i_valid_pred = bb_covariance_B12_out_valid_in_1;
    assign covariance_B12_x_i_valid_succ = bb_covariance_B14_out_valid_out_0;
    assign covariance_B12_x_i_capture_bitsignaltemp = covariance_B12_x_i_capture[0];
    assign covariance_B12_x_i_clear_bitsignaltemp = covariance_B12_x_i_clear[0];
    assign covariance_B12_x_i_enable_bitsignaltemp = covariance_B12_x_i_enable[0];
    assign covariance_B12_x_i_shift_bitsignaltemp = covariance_B12_x_i_shift[0];
    assign covariance_B12_x_i_stall_pred_bitsignaltemp = covariance_B12_x_i_stall_pred[0];
    assign covariance_B12_x_i_stall_succ_bitsignaltemp = covariance_B12_x_i_stall_succ[0];
    assign covariance_B12_x_i_valid_loop_bitsignaltemp = covariance_B12_x_i_valid_loop[0];
    assign covariance_B12_x_i_valid_pred_bitsignaltemp = covariance_B12_x_i_valid_pred[0];
    assign covariance_B12_x_i_valid_succ_bitsignaltemp = covariance_B12_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B12")
    ) thecovariance_B12_x (
        .i_capture(covariance_B12_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B12_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B12_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B12_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B12_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B12_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B12_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B12_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B12_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B13_x(EXTIFACE,150)
    assign covariance_B13_x_i_capture = GND_q;
    assign covariance_B13_x_i_clear = GND_q;
    assign covariance_B13_x_i_enable = VCC_q;
    assign covariance_B13_x_i_shift = GND_q;
    assign covariance_B13_x_i_stall_pred = loop_limiter_covariance7_out_o_stall;
    assign covariance_B13_x_i_stall_succ = bb_covariance_B15_out_stall_in_0;
    assign covariance_B13_x_i_valid_loop = bb_covariance_B13_out_valid_in_0;
    assign covariance_B13_x_i_valid_pred = bb_covariance_B13_out_valid_in_1;
    assign covariance_B13_x_i_valid_succ = bb_covariance_B15_out_valid_out_0;
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

    // covariance_B16_x(EXTIFACE,151)
    assign covariance_B16_x_i_capture = GND_q;
    assign covariance_B16_x_i_clear = GND_q;
    assign covariance_B16_x_i_enable = VCC_q;
    assign covariance_B16_x_i_shift = GND_q;
    assign covariance_B16_x_i_stall_pred = loop_limiter_covariance9_out_o_stall;
    assign covariance_B16_x_i_stall_succ = bb_covariance_B16_out_stall_in_0;
    assign covariance_B16_x_i_valid_loop = bb_covariance_B16_out_valid_in_0;
    assign covariance_B16_x_i_valid_pred = bb_covariance_B16_out_valid_in_1;
    assign covariance_B16_x_i_valid_succ = bb_covariance_B16_out_valid_out_0;
    assign covariance_B16_x_i_capture_bitsignaltemp = covariance_B16_x_i_capture[0];
    assign covariance_B16_x_i_clear_bitsignaltemp = covariance_B16_x_i_clear[0];
    assign covariance_B16_x_i_enable_bitsignaltemp = covariance_B16_x_i_enable[0];
    assign covariance_B16_x_i_shift_bitsignaltemp = covariance_B16_x_i_shift[0];
    assign covariance_B16_x_i_stall_pred_bitsignaltemp = covariance_B16_x_i_stall_pred[0];
    assign covariance_B16_x_i_stall_succ_bitsignaltemp = covariance_B16_x_i_stall_succ[0];
    assign covariance_B16_x_i_valid_loop_bitsignaltemp = covariance_B16_x_i_valid_loop[0];
    assign covariance_B16_x_i_valid_pred_bitsignaltemp = covariance_B16_x_i_valid_pred[0];
    assign covariance_B16_x_i_valid_succ_bitsignaltemp = covariance_B16_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B16")
    ) thecovariance_B16_x (
        .i_capture(covariance_B16_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B16_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B16_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B16_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B16_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B16_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B16_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B16_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B16_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B18_x(EXTIFACE,152)
    assign covariance_B18_x_i_capture = GND_q;
    assign covariance_B18_x_i_clear = GND_q;
    assign covariance_B18_x_i_enable = VCC_q;
    assign covariance_B18_x_i_shift = GND_q;
    assign covariance_B18_x_i_stall_pred = loop_limiter_covariance3_out_o_stall;
    assign covariance_B18_x_i_stall_succ = bb_covariance_B19_out_stall_in_0;
    assign covariance_B18_x_i_valid_loop = bb_covariance_B18_out_valid_in_0;
    assign covariance_B18_x_i_valid_pred = bb_covariance_B18_out_valid_in_1;
    assign covariance_B18_x_i_valid_succ = bb_covariance_B19_out_valid_out_0;
    assign covariance_B18_x_i_capture_bitsignaltemp = covariance_B18_x_i_capture[0];
    assign covariance_B18_x_i_clear_bitsignaltemp = covariance_B18_x_i_clear[0];
    assign covariance_B18_x_i_enable_bitsignaltemp = covariance_B18_x_i_enable[0];
    assign covariance_B18_x_i_shift_bitsignaltemp = covariance_B18_x_i_shift[0];
    assign covariance_B18_x_i_stall_pred_bitsignaltemp = covariance_B18_x_i_stall_pred[0];
    assign covariance_B18_x_i_stall_succ_bitsignaltemp = covariance_B18_x_i_stall_succ[0];
    assign covariance_B18_x_i_valid_loop_bitsignaltemp = covariance_B18_x_i_valid_loop[0];
    assign covariance_B18_x_i_valid_pred_bitsignaltemp = covariance_B18_x_i_valid_pred[0];
    assign covariance_B18_x_i_valid_succ_bitsignaltemp = covariance_B18_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B18")
    ) thecovariance_B18_x (
        .i_capture(covariance_B18_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B18_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B18_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B18_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B18_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B18_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B18_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B18_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B18_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B20_x(EXTIFACE,153)
    assign covariance_B20_x_i_capture = GND_q;
    assign covariance_B20_x_i_clear = GND_q;
    assign covariance_B20_x_i_enable = VCC_q;
    assign covariance_B20_x_i_shift = GND_q;
    assign covariance_B20_x_i_stall_pred = loop_limiter_covariance8_out_o_stall;
    assign covariance_B20_x_i_stall_succ = bb_covariance_B20_out_stall_in_0;
    assign covariance_B20_x_i_valid_loop = bb_covariance_B20_out_valid_in_0;
    assign covariance_B20_x_i_valid_pred = bb_covariance_B20_out_valid_in_1;
    assign covariance_B20_x_i_valid_succ = bb_covariance_B20_out_valid_out_0;
    assign covariance_B20_x_i_capture_bitsignaltemp = covariance_B20_x_i_capture[0];
    assign covariance_B20_x_i_clear_bitsignaltemp = covariance_B20_x_i_clear[0];
    assign covariance_B20_x_i_enable_bitsignaltemp = covariance_B20_x_i_enable[0];
    assign covariance_B20_x_i_shift_bitsignaltemp = covariance_B20_x_i_shift[0];
    assign covariance_B20_x_i_stall_pred_bitsignaltemp = covariance_B20_x_i_stall_pred[0];
    assign covariance_B20_x_i_stall_succ_bitsignaltemp = covariance_B20_x_i_stall_succ[0];
    assign covariance_B20_x_i_valid_loop_bitsignaltemp = covariance_B20_x_i_valid_loop[0];
    assign covariance_B20_x_i_valid_pred_bitsignaltemp = covariance_B20_x_i_valid_pred[0];
    assign covariance_B20_x_i_valid_succ_bitsignaltemp = covariance_B20_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B20")
    ) thecovariance_B20_x (
        .i_capture(covariance_B20_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B20_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B20_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B20_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B20_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B20_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B20_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B20_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B20_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // covariance_B3_x(EXTIFACE,154)
    assign covariance_B3_x_i_capture = GND_q;
    assign covariance_B3_x_i_clear = GND_q;
    assign covariance_B3_x_i_enable = VCC_q;
    assign covariance_B3_x_i_shift = GND_q;
    assign covariance_B3_x_i_stall_pred = loop_limiter_covariance0_out_o_stall;
    assign covariance_B3_x_i_stall_succ = bb_covariance_B4_out_stall_in_0;
    assign covariance_B3_x_i_valid_loop = bb_covariance_B3_out_valid_in_0;
    assign covariance_B3_x_i_valid_pred = bb_covariance_B3_out_valid_in_1;
    assign covariance_B3_x_i_valid_succ = bb_covariance_B4_out_valid_out_0;
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

    // covariance_B5_x(EXTIFACE,155)
    assign covariance_B5_x_i_capture = GND_q;
    assign covariance_B5_x_i_clear = GND_q;
    assign covariance_B5_x_i_enable = VCC_q;
    assign covariance_B5_x_i_shift = GND_q;
    assign covariance_B5_x_i_stall_pred = loop_limiter_covariance4_out_o_stall;
    assign covariance_B5_x_i_stall_succ = bb_covariance_B5_out_stall_in_0;
    assign covariance_B5_x_i_valid_loop = bb_covariance_B5_out_valid_in_0;
    assign covariance_B5_x_i_valid_pred = bb_covariance_B5_out_valid_in_1;
    assign covariance_B5_x_i_valid_succ = bb_covariance_B5_out_valid_out_0;
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

    // covariance_B7_x(EXTIFACE,156)
    assign covariance_B7_x_i_capture = GND_q;
    assign covariance_B7_x_i_clear = GND_q;
    assign covariance_B7_x_i_enable = VCC_q;
    assign covariance_B7_x_i_shift = GND_q;
    assign covariance_B7_x_i_stall_pred = loop_limiter_covariance1_out_o_stall;
    assign covariance_B7_x_i_stall_succ = bb_covariance_B10_out_stall_in_0;
    assign covariance_B7_x_i_valid_loop = bb_covariance_B7_out_valid_in_0;
    assign covariance_B7_x_i_valid_pred = bb_covariance_B7_out_valid_in_1;
    assign covariance_B7_x_i_valid_succ = bb_covariance_B10_out_valid_out_0;
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

    // covariance_B9_x(EXTIFACE,157)
    assign covariance_B9_x_i_capture = GND_q;
    assign covariance_B9_x_i_clear = GND_q;
    assign covariance_B9_x_i_enable = VCC_q;
    assign covariance_B9_x_i_shift = GND_q;
    assign covariance_B9_x_i_stall_pred = loop_limiter_covariance5_out_o_stall;
    assign covariance_B9_x_i_stall_succ = bb_covariance_B9_out_stall_in_0;
    assign covariance_B9_x_i_valid_loop = bb_covariance_B9_out_valid_in_0;
    assign covariance_B9_x_i_valid_pred = bb_covariance_B9_out_valid_in_1;
    assign covariance_B9_x_i_valid_succ = bb_covariance_B9_out_valid_out_0;
    assign covariance_B9_x_i_capture_bitsignaltemp = covariance_B9_x_i_capture[0];
    assign covariance_B9_x_i_clear_bitsignaltemp = covariance_B9_x_i_clear[0];
    assign covariance_B9_x_i_enable_bitsignaltemp = covariance_B9_x_i_enable[0];
    assign covariance_B9_x_i_shift_bitsignaltemp = covariance_B9_x_i_shift[0];
    assign covariance_B9_x_i_stall_pred_bitsignaltemp = covariance_B9_x_i_stall_pred[0];
    assign covariance_B9_x_i_stall_succ_bitsignaltemp = covariance_B9_x_i_stall_succ[0];
    assign covariance_B9_x_i_valid_loop_bitsignaltemp = covariance_B9_x_i_valid_loop[0];
    assign covariance_B9_x_i_valid_pred_bitsignaltemp = covariance_B9_x_i_valid_pred[0];
    assign covariance_B9_x_i_valid_succ_bitsignaltemp = covariance_B9_x_i_valid_succ[0];
    hld_loop_profiler #(
        .LOOP_NAME("covariance.B9")
    ) thecovariance_B9_x (
        .i_capture(covariance_B9_x_i_capture_bitsignaltemp),
        .i_clear(covariance_B9_x_i_clear_bitsignaltemp),
        .i_enable(covariance_B9_x_i_enable_bitsignaltemp),
        .i_shift(covariance_B9_x_i_shift_bitsignaltemp),
        .i_stall_pred(covariance_B9_x_i_stall_pred_bitsignaltemp),
        .i_stall_succ(covariance_B9_x_i_stall_succ_bitsignaltemp),
        .i_valid_loop(covariance_B9_x_i_valid_loop_bitsignaltemp),
        .i_valid_pred(covariance_B9_x_i_valid_pred_bitsignaltemp),
        .i_valid_succ(covariance_B9_x_i_valid_succ_bitsignaltemp),
        .clock(clock),
        .resetn(resetn)
    );

    // out_iord_bl_call_covariance_o_fifoalmost_full(GPOUT,248)
    assign out_iord_bl_call_covariance_o_fifoalmost_full = bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full;

    // out_iord_bl_call_covariance_o_fifoready(GPOUT,249)
    assign out_iord_bl_call_covariance_o_fifoready = bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready;

    // out_iowr_bl_return_covariance_o_fifodata(GPOUT,250)
    assign out_iowr_bl_return_covariance_o_fifodata = bb_covariance_B21_out_iowr_bl_return_covariance_o_fifodata;

    // out_iowr_bl_return_covariance_o_fifovalid(GPOUT,251)
    assign out_iowr_bl_return_covariance_o_fifovalid = bb_covariance_B21_out_iowr_bl_return_covariance_o_fifovalid;

    // out_memdep_1_covariance_avm_address(GPOUT,252)
    assign out_memdep_1_covariance_avm_address = bb_covariance_B5_out_memdep_1_covariance_avm_address;

    // out_memdep_1_covariance_avm_burstcount(GPOUT,253)
    assign out_memdep_1_covariance_avm_burstcount = bb_covariance_B5_out_memdep_1_covariance_avm_burstcount;

    // out_memdep_1_covariance_avm_byteenable(GPOUT,254)
    assign out_memdep_1_covariance_avm_byteenable = bb_covariance_B5_out_memdep_1_covariance_avm_byteenable;

    // out_memdep_1_covariance_avm_enable(GPOUT,255)
    assign out_memdep_1_covariance_avm_enable = bb_covariance_B5_out_memdep_1_covariance_avm_enable;

    // out_memdep_1_covariance_avm_read(GPOUT,256)
    assign out_memdep_1_covariance_avm_read = bb_covariance_B5_out_memdep_1_covariance_avm_read;

    // out_memdep_1_covariance_avm_write(GPOUT,257)
    assign out_memdep_1_covariance_avm_write = bb_covariance_B5_out_memdep_1_covariance_avm_write;

    // out_memdep_1_covariance_avm_writedata(GPOUT,258)
    assign out_memdep_1_covariance_avm_writedata = bb_covariance_B5_out_memdep_1_covariance_avm_writedata;

    // out_memdep_2_covariance_avm_address(GPOUT,259)
    assign out_memdep_2_covariance_avm_address = bb_covariance_B11_out_memdep_2_covariance_avm_address;

    // out_memdep_2_covariance_avm_burstcount(GPOUT,260)
    assign out_memdep_2_covariance_avm_burstcount = bb_covariance_B11_out_memdep_2_covariance_avm_burstcount;

    // out_memdep_2_covariance_avm_byteenable(GPOUT,261)
    assign out_memdep_2_covariance_avm_byteenable = bb_covariance_B11_out_memdep_2_covariance_avm_byteenable;

    // out_memdep_2_covariance_avm_enable(GPOUT,262)
    assign out_memdep_2_covariance_avm_enable = bb_covariance_B11_out_memdep_2_covariance_avm_enable;

    // out_memdep_2_covariance_avm_read(GPOUT,263)
    assign out_memdep_2_covariance_avm_read = bb_covariance_B11_out_memdep_2_covariance_avm_read;

    // out_memdep_2_covariance_avm_write(GPOUT,264)
    assign out_memdep_2_covariance_avm_write = bb_covariance_B11_out_memdep_2_covariance_avm_write;

    // out_memdep_2_covariance_avm_writedata(GPOUT,265)
    assign out_memdep_2_covariance_avm_writedata = bb_covariance_B11_out_memdep_2_covariance_avm_writedata;

    // out_memdep_3_covariance_avm_address(GPOUT,266)
    assign out_memdep_3_covariance_avm_address = bb_covariance_B15_out_memdep_3_covariance_avm_address;

    // out_memdep_3_covariance_avm_burstcount(GPOUT,267)
    assign out_memdep_3_covariance_avm_burstcount = bb_covariance_B15_out_memdep_3_covariance_avm_burstcount;

    // out_memdep_3_covariance_avm_byteenable(GPOUT,268)
    assign out_memdep_3_covariance_avm_byteenable = bb_covariance_B15_out_memdep_3_covariance_avm_byteenable;

    // out_memdep_3_covariance_avm_enable(GPOUT,269)
    assign out_memdep_3_covariance_avm_enable = bb_covariance_B15_out_memdep_3_covariance_avm_enable;

    // out_memdep_3_covariance_avm_read(GPOUT,270)
    assign out_memdep_3_covariance_avm_read = bb_covariance_B15_out_memdep_3_covariance_avm_read;

    // out_memdep_3_covariance_avm_write(GPOUT,271)
    assign out_memdep_3_covariance_avm_write = bb_covariance_B15_out_memdep_3_covariance_avm_write;

    // out_memdep_3_covariance_avm_writedata(GPOUT,272)
    assign out_memdep_3_covariance_avm_writedata = bb_covariance_B15_out_memdep_3_covariance_avm_writedata;

    // out_memdep_4_covariance_avm_address(GPOUT,273)
    assign out_memdep_4_covariance_avm_address = bb_covariance_B20_out_memdep_4_covariance_avm_address;

    // out_memdep_4_covariance_avm_burstcount(GPOUT,274)
    assign out_memdep_4_covariance_avm_burstcount = bb_covariance_B20_out_memdep_4_covariance_avm_burstcount;

    // out_memdep_4_covariance_avm_byteenable(GPOUT,275)
    assign out_memdep_4_covariance_avm_byteenable = bb_covariance_B20_out_memdep_4_covariance_avm_byteenable;

    // out_memdep_4_covariance_avm_enable(GPOUT,276)
    assign out_memdep_4_covariance_avm_enable = bb_covariance_B20_out_memdep_4_covariance_avm_enable;

    // out_memdep_4_covariance_avm_read(GPOUT,277)
    assign out_memdep_4_covariance_avm_read = bb_covariance_B20_out_memdep_4_covariance_avm_read;

    // out_memdep_4_covariance_avm_write(GPOUT,278)
    assign out_memdep_4_covariance_avm_write = bb_covariance_B20_out_memdep_4_covariance_avm_write;

    // out_memdep_4_covariance_avm_writedata(GPOUT,279)
    assign out_memdep_4_covariance_avm_writedata = bb_covariance_B20_out_memdep_4_covariance_avm_writedata;

    // out_memdep_covariance_avm_address(GPOUT,280)
    assign out_memdep_covariance_avm_address = bb_covariance_B5_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,281)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B5_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,282)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B5_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,283)
    assign out_memdep_covariance_avm_enable = bb_covariance_B5_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,284)
    assign out_memdep_covariance_avm_read = bb_covariance_B5_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,285)
    assign out_memdep_covariance_avm_write = bb_covariance_B5_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,286)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B5_out_memdep_covariance_avm_writedata;

    // out_o_active_memdep_4(GPOUT,287)
    assign out_o_active_memdep_4 = bb_covariance_B20_out_lsu_memdep_4_o_active;

    // bb_covariance_B0_runOnce(BLACKBOX,2)
    covariance_bb_B0_runOnce thebb_covariance_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_covariance_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,288)
    assign out_stall_out = bb_covariance_B0_runOnce_out_stall_out_0;

    // out_unnamed_covariance11_covariance_avm_address(GPOUT,289)
    assign out_unnamed_covariance11_covariance_avm_address = bb_covariance_B20_out_unnamed_covariance11_covariance_avm_address;

    // out_unnamed_covariance11_covariance_avm_burstcount(GPOUT,290)
    assign out_unnamed_covariance11_covariance_avm_burstcount = bb_covariance_B20_out_unnamed_covariance11_covariance_avm_burstcount;

    // out_unnamed_covariance11_covariance_avm_byteenable(GPOUT,291)
    assign out_unnamed_covariance11_covariance_avm_byteenable = bb_covariance_B20_out_unnamed_covariance11_covariance_avm_byteenable;

    // out_unnamed_covariance11_covariance_avm_enable(GPOUT,292)
    assign out_unnamed_covariance11_covariance_avm_enable = bb_covariance_B20_out_unnamed_covariance11_covariance_avm_enable;

    // out_unnamed_covariance11_covariance_avm_read(GPOUT,293)
    assign out_unnamed_covariance11_covariance_avm_read = bb_covariance_B20_out_unnamed_covariance11_covariance_avm_read;

    // out_unnamed_covariance11_covariance_avm_write(GPOUT,294)
    assign out_unnamed_covariance11_covariance_avm_write = bb_covariance_B20_out_unnamed_covariance11_covariance_avm_write;

    // out_unnamed_covariance11_covariance_avm_writedata(GPOUT,295)
    assign out_unnamed_covariance11_covariance_avm_writedata = bb_covariance_B20_out_unnamed_covariance11_covariance_avm_writedata;

    // out_unnamed_covariance4_covariance_avm_address(GPOUT,296)
    assign out_unnamed_covariance4_covariance_avm_address = bb_covariance_B5_out_unnamed_covariance4_covariance_avm_address;

    // out_unnamed_covariance4_covariance_avm_burstcount(GPOUT,297)
    assign out_unnamed_covariance4_covariance_avm_burstcount = bb_covariance_B5_out_unnamed_covariance4_covariance_avm_burstcount;

    // out_unnamed_covariance4_covariance_avm_byteenable(GPOUT,298)
    assign out_unnamed_covariance4_covariance_avm_byteenable = bb_covariance_B5_out_unnamed_covariance4_covariance_avm_byteenable;

    // out_unnamed_covariance4_covariance_avm_enable(GPOUT,299)
    assign out_unnamed_covariance4_covariance_avm_enable = bb_covariance_B5_out_unnamed_covariance4_covariance_avm_enable;

    // out_unnamed_covariance4_covariance_avm_read(GPOUT,300)
    assign out_unnamed_covariance4_covariance_avm_read = bb_covariance_B5_out_unnamed_covariance4_covariance_avm_read;

    // out_unnamed_covariance4_covariance_avm_write(GPOUT,301)
    assign out_unnamed_covariance4_covariance_avm_write = bb_covariance_B5_out_unnamed_covariance4_covariance_avm_write;

    // out_unnamed_covariance4_covariance_avm_writedata(GPOUT,302)
    assign out_unnamed_covariance4_covariance_avm_writedata = bb_covariance_B5_out_unnamed_covariance4_covariance_avm_writedata;

    // out_unnamed_covariance5_covariance_avm_address(GPOUT,303)
    assign out_unnamed_covariance5_covariance_avm_address = bb_covariance_B5_out_unnamed_covariance5_covariance_avm_address;

    // out_unnamed_covariance5_covariance_avm_burstcount(GPOUT,304)
    assign out_unnamed_covariance5_covariance_avm_burstcount = bb_covariance_B5_out_unnamed_covariance5_covariance_avm_burstcount;

    // out_unnamed_covariance5_covariance_avm_byteenable(GPOUT,305)
    assign out_unnamed_covariance5_covariance_avm_byteenable = bb_covariance_B5_out_unnamed_covariance5_covariance_avm_byteenable;

    // out_unnamed_covariance5_covariance_avm_enable(GPOUT,306)
    assign out_unnamed_covariance5_covariance_avm_enable = bb_covariance_B5_out_unnamed_covariance5_covariance_avm_enable;

    // out_unnamed_covariance5_covariance_avm_read(GPOUT,307)
    assign out_unnamed_covariance5_covariance_avm_read = bb_covariance_B5_out_unnamed_covariance5_covariance_avm_read;

    // out_unnamed_covariance5_covariance_avm_write(GPOUT,308)
    assign out_unnamed_covariance5_covariance_avm_write = bb_covariance_B5_out_unnamed_covariance5_covariance_avm_write;

    // out_unnamed_covariance5_covariance_avm_writedata(GPOUT,309)
    assign out_unnamed_covariance5_covariance_avm_writedata = bb_covariance_B5_out_unnamed_covariance5_covariance_avm_writedata;

    // out_unnamed_covariance6_covariance_avm_address(GPOUT,310)
    assign out_unnamed_covariance6_covariance_avm_address = bb_covariance_B9_out_unnamed_covariance6_covariance_avm_address;

    // out_unnamed_covariance6_covariance_avm_burstcount(GPOUT,311)
    assign out_unnamed_covariance6_covariance_avm_burstcount = bb_covariance_B9_out_unnamed_covariance6_covariance_avm_burstcount;

    // out_unnamed_covariance6_covariance_avm_byteenable(GPOUT,312)
    assign out_unnamed_covariance6_covariance_avm_byteenable = bb_covariance_B9_out_unnamed_covariance6_covariance_avm_byteenable;

    // out_unnamed_covariance6_covariance_avm_enable(GPOUT,313)
    assign out_unnamed_covariance6_covariance_avm_enable = bb_covariance_B9_out_unnamed_covariance6_covariance_avm_enable;

    // out_unnamed_covariance6_covariance_avm_read(GPOUT,314)
    assign out_unnamed_covariance6_covariance_avm_read = bb_covariance_B9_out_unnamed_covariance6_covariance_avm_read;

    // out_unnamed_covariance6_covariance_avm_write(GPOUT,315)
    assign out_unnamed_covariance6_covariance_avm_write = bb_covariance_B9_out_unnamed_covariance6_covariance_avm_write;

    // out_unnamed_covariance6_covariance_avm_writedata(GPOUT,316)
    assign out_unnamed_covariance6_covariance_avm_writedata = bb_covariance_B9_out_unnamed_covariance6_covariance_avm_writedata;

    // out_unnamed_covariance7_covariance_avm_address(GPOUT,317)
    assign out_unnamed_covariance7_covariance_avm_address = bb_covariance_B11_out_unnamed_covariance7_covariance_avm_address;

    // out_unnamed_covariance7_covariance_avm_burstcount(GPOUT,318)
    assign out_unnamed_covariance7_covariance_avm_burstcount = bb_covariance_B11_out_unnamed_covariance7_covariance_avm_burstcount;

    // out_unnamed_covariance7_covariance_avm_byteenable(GPOUT,319)
    assign out_unnamed_covariance7_covariance_avm_byteenable = bb_covariance_B11_out_unnamed_covariance7_covariance_avm_byteenable;

    // out_unnamed_covariance7_covariance_avm_enable(GPOUT,320)
    assign out_unnamed_covariance7_covariance_avm_enable = bb_covariance_B11_out_unnamed_covariance7_covariance_avm_enable;

    // out_unnamed_covariance7_covariance_avm_read(GPOUT,321)
    assign out_unnamed_covariance7_covariance_avm_read = bb_covariance_B11_out_unnamed_covariance7_covariance_avm_read;

    // out_unnamed_covariance7_covariance_avm_write(GPOUT,322)
    assign out_unnamed_covariance7_covariance_avm_write = bb_covariance_B11_out_unnamed_covariance7_covariance_avm_write;

    // out_unnamed_covariance7_covariance_avm_writedata(GPOUT,323)
    assign out_unnamed_covariance7_covariance_avm_writedata = bb_covariance_B11_out_unnamed_covariance7_covariance_avm_writedata;

    // out_unnamed_covariance8_covariance_avm_address(GPOUT,324)
    assign out_unnamed_covariance8_covariance_avm_address = bb_covariance_B16_out_unnamed_covariance8_covariance_avm_address;

    // out_unnamed_covariance8_covariance_avm_burstcount(GPOUT,325)
    assign out_unnamed_covariance8_covariance_avm_burstcount = bb_covariance_B16_out_unnamed_covariance8_covariance_avm_burstcount;

    // out_unnamed_covariance8_covariance_avm_byteenable(GPOUT,326)
    assign out_unnamed_covariance8_covariance_avm_byteenable = bb_covariance_B16_out_unnamed_covariance8_covariance_avm_byteenable;

    // out_unnamed_covariance8_covariance_avm_enable(GPOUT,327)
    assign out_unnamed_covariance8_covariance_avm_enable = bb_covariance_B16_out_unnamed_covariance8_covariance_avm_enable;

    // out_unnamed_covariance8_covariance_avm_read(GPOUT,328)
    assign out_unnamed_covariance8_covariance_avm_read = bb_covariance_B16_out_unnamed_covariance8_covariance_avm_read;

    // out_unnamed_covariance8_covariance_avm_write(GPOUT,329)
    assign out_unnamed_covariance8_covariance_avm_write = bb_covariance_B16_out_unnamed_covariance8_covariance_avm_write;

    // out_unnamed_covariance8_covariance_avm_writedata(GPOUT,330)
    assign out_unnamed_covariance8_covariance_avm_writedata = bb_covariance_B16_out_unnamed_covariance8_covariance_avm_writedata;

    // out_unnamed_covariance9_covariance_avm_address(GPOUT,331)
    assign out_unnamed_covariance9_covariance_avm_address = bb_covariance_B16_out_unnamed_covariance9_covariance_avm_address;

    // out_unnamed_covariance9_covariance_avm_burstcount(GPOUT,332)
    assign out_unnamed_covariance9_covariance_avm_burstcount = bb_covariance_B16_out_unnamed_covariance9_covariance_avm_burstcount;

    // out_unnamed_covariance9_covariance_avm_byteenable(GPOUT,333)
    assign out_unnamed_covariance9_covariance_avm_byteenable = bb_covariance_B16_out_unnamed_covariance9_covariance_avm_byteenable;

    // out_unnamed_covariance9_covariance_avm_enable(GPOUT,334)
    assign out_unnamed_covariance9_covariance_avm_enable = bb_covariance_B16_out_unnamed_covariance9_covariance_avm_enable;

    // out_unnamed_covariance9_covariance_avm_read(GPOUT,335)
    assign out_unnamed_covariance9_covariance_avm_read = bb_covariance_B16_out_unnamed_covariance9_covariance_avm_read;

    // out_unnamed_covariance9_covariance_avm_write(GPOUT,336)
    assign out_unnamed_covariance9_covariance_avm_write = bb_covariance_B16_out_unnamed_covariance9_covariance_avm_write;

    // out_unnamed_covariance9_covariance_avm_writedata(GPOUT,337)
    assign out_unnamed_covariance9_covariance_avm_writedata = bb_covariance_B16_out_unnamed_covariance9_covariance_avm_writedata;

    // out_valid_out(GPOUT,338)
    assign out_valid_out = GND_q;

endmodule
