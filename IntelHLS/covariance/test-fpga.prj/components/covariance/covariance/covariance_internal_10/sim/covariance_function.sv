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
// SystemVerilog created on Fri Apr  7 17:50:03 2023


(* altera_attribute = "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007; -name MESSAGE_DISABLE 10958" *)
module covariance_function (
    input wire [63:0] in_arg_call,
    input wire [63:0] in_arg_cov,
    input wire [63:0] in_arg_data,
    input wire [63:0] in_arg_return,
    input wire [127:0] in_iord_bl_call_covariance_i_fifodata,
    input wire [0:0] in_iord_bl_call_covariance_i_fifovalid,
    input wire [0:0] in_iowr_bl_return_covariance_i_fifoready,
    input wire [31:0] in_memdep_covariance_avm_readdata,
    input wire [0:0] in_memdep_covariance_avm_readdatavalid,
    input wire [0:0] in_memdep_covariance_avm_waitrequest,
    input wire [0:0] in_memdep_covariance_avm_writeack,
    input wire [0:0] in_stall_in,
    input wire [0:0] in_start,
    input wire [31:0] in_unnamed_covariance2_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance2_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance3_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance3_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance4_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance4_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance5_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance5_covariance_avm_writeack,
    input wire [31:0] in_unnamed_covariance6_covariance_avm_readdata,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_readdatavalid,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_waitrequest,
    input wire [0:0] in_unnamed_covariance6_covariance_avm_writeack,
    input wire [0:0] in_valid_in,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoalmost_full,
    output wire [0:0] out_iord_bl_call_covariance_o_fifoready,
    output wire [0:0] out_iowr_bl_return_covariance_o_fifodata,
    output wire [0:0] out_iowr_bl_return_covariance_o_fifovalid,
    output wire [31:0] out_memdep_covariance_avm_address,
    output wire [0:0] out_memdep_covariance_avm_burstcount,
    output wire [3:0] out_memdep_covariance_avm_byteenable,
    output wire [0:0] out_memdep_covariance_avm_enable,
    output wire [0:0] out_memdep_covariance_avm_read,
    output wire [0:0] out_memdep_covariance_avm_write,
    output wire [31:0] out_memdep_covariance_avm_writedata,
    output wire [0:0] out_stall_out,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance2_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance2_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance2_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance3_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance3_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance3_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance4_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance4_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance4_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance5_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance5_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance5_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance5_covariance_avm_writedata,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_address,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_burstcount,
    output wire [3:0] out_unnamed_covariance6_covariance_avm_byteenable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_enable,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_read,
    output wire [0:0] out_unnamed_covariance6_covariance_avm_write,
    output wire [31:0] out_unnamed_covariance6_covariance_avm_writedata,
    output wire [0:0] out_valid_out,
    input wire clock,
    input wire resetn
    );

    wire [0:0] GND_q;
    wire [0:0] VCC_q;
    wire [0:0] bb_covariance_B0_runOnce_out_stall_out_0;
    wire [0:0] bb_covariance_B10_out_c0_exe442823;
    wire [31:0] bb_covariance_B10_out_c0_exe843227;
    wire [0:0] bb_covariance_B10_out_stall_in_0;
    wire [0:0] bb_covariance_B10_out_stall_out_0;
    wire [0:0] bb_covariance_B10_out_valid_out_0;
    wire [0:0] bb_covariance_B11_out_c0_exe1381;
    wire [0:0] bb_covariance_B11_out_c0_exe442824;
    wire [31:0] bb_covariance_B11_out_c0_exe843228;
    wire [0:0] bb_covariance_B11_out_stall_in_0;
    wire [0:0] bb_covariance_B11_out_stall_out_0;
    wire [31:0] bb_covariance_B11_out_unnamed_covariance4_covariance_avm_address;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance4_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B11_out_unnamed_covariance4_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance4_covariance_avm_enable;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance4_covariance_avm_read;
    wire [0:0] bb_covariance_B11_out_unnamed_covariance4_covariance_avm_write;
    wire [31:0] bb_covariance_B11_out_unnamed_covariance4_covariance_avm_writedata;
    wire [0:0] bb_covariance_B11_out_valid_out_0;
    wire [0:0] bb_covariance_B12_out_c0_exe10434;
    wire [0:0] bb_covariance_B12_out_c0_exe11435;
    wire [0:0] bb_covariance_B12_out_c0_exe12436;
    wire [63:0] bb_covariance_B12_out_c0_exe2426;
    wire [63:0] bb_covariance_B12_out_c0_exe3427;
    wire [0:0] bb_covariance_B12_out_c0_exe4428;
    wire [31:0] bb_covariance_B12_out_c0_exe6430;
    wire [31:0] bb_covariance_B12_out_c0_exe8432;
    wire [31:0] bb_covariance_B12_out_c0_exe9433;
    wire [0:0] bb_covariance_B12_out_exiting_stall_out;
    wire [0:0] bb_covariance_B12_out_exiting_valid_out;
    wire [0:0] bb_covariance_B12_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B12_out_stall_in_0;
    wire [0:0] bb_covariance_B12_out_stall_out_0;
    wire [0:0] bb_covariance_B12_out_stall_out_1;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance5_covariance_avm_address;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance5_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_out_unnamed_covariance5_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance5_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance5_covariance_avm_read;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance5_covariance_avm_write;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance5_covariance_avm_writedata;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_address;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_enable;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_read;
    wire [0:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_write;
    wire [31:0] bb_covariance_B12_out_unnamed_covariance6_covariance_avm_writedata;
    wire [0:0] bb_covariance_B12_out_valid_in_0;
    wire [0:0] bb_covariance_B12_out_valid_in_1;
    wire [0:0] bb_covariance_B12_out_valid_out_0;
    wire [0:0] bb_covariance_B13_out_feedback_out_18;
    wire [0:0] bb_covariance_B13_out_feedback_valid_out_18;
    wire [0:0] bb_covariance_B13_out_iowr_bl_return_covariance_o_fifodata;
    wire [0:0] bb_covariance_B13_out_iowr_bl_return_covariance_o_fifovalid;
    wire [0:0] bb_covariance_B13_out_stall_in_0;
    wire [0:0] bb_covariance_B13_out_stall_out_0;
    wire [0:0] bb_covariance_B13_out_valid_out_0;
    wire [0:0] bb_covariance_B13_out_wgl_7_exit_exit_stall_in;
    wire [0:0] bb_covariance_B13_out_wgl_7_exit_exit_valid_in;
    wire [31:0] bb_covariance_B1_start_out_c1_exe1;
    wire [0:0] bb_covariance_B1_start_out_feedback_stall_out_16;
    wire [0:0] bb_covariance_B1_start_out_feedback_stall_out_18;
    wire [0:0] bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full;
    wire [0:0] bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready;
    wire [0:0] bb_covariance_B1_start_out_memdep_phi1_pop16;
    wire [0:0] bb_covariance_B1_start_out_memdep_phi2_pop17;
    wire [0:0] bb_covariance_B1_start_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B1_start_out_stall_out_0;
    wire [0:0] bb_covariance_B1_start_out_valid_in_0;
    wire [0:0] bb_covariance_B1_start_out_valid_in_1;
    wire [0:0] bb_covariance_B1_start_out_valid_out_0;
    wire [31:0] bb_covariance_B2_out_c0_exe429315;
    wire [0:0] bb_covariance_B2_out_feedback_out_16;
    wire [0:0] bb_covariance_B2_out_feedback_valid_out_16;
    wire [31:0] bb_covariance_B2_out_reorder_limiter_enter;
    wire [0:0] bb_covariance_B2_out_stall_out_0;
    wire [0:0] bb_covariance_B2_out_valid_out_0;
    wire [0:0] bb_covariance_B2_out_wgl_7_enter_exit_stall_out;
    wire [0:0] bb_covariance_B2_out_wgl_7_enter_exit_valid_out;
    wire [0:0] bb_covariance_B3_out_c0_exe10;
    wire [0:0] bb_covariance_B3_out_c0_exe11;
    wire [0:0] bb_covariance_B3_out_c0_exe12;
    wire [0:0] bb_covariance_B3_out_c0_exe1214;
    wire [0:0] bb_covariance_B3_out_c0_exe2215;
    wire [31:0] bb_covariance_B3_out_c0_exe3;
    wire [31:0] bb_covariance_B3_out_c0_exe4;
    wire [0:0] bb_covariance_B3_out_c0_exe5;
    wire [0:0] bb_covariance_B3_out_c0_exe6;
    wire [0:0] bb_covariance_B3_out_c0_exe7;
    wire [31:0] bb_covariance_B3_out_c0_exe9;
    wire [0:0] bb_covariance_B3_out_exiting_stall_out;
    wire [0:0] bb_covariance_B3_out_exiting_valid_out;
    wire [0:0] bb_covariance_B3_out_feedback_stall_out_22;
    wire [0:0] bb_covariance_B3_out_memdep_phi_pop22;
    wire [0:0] bb_covariance_B3_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B3_out_stall_out_0;
    wire [0:0] bb_covariance_B3_out_stall_out_1;
    wire [0:0] bb_covariance_B3_out_valid_in_0;
    wire [0:0] bb_covariance_B3_out_valid_in_1;
    wire [0:0] bb_covariance_B3_out_valid_out_0;
    wire [0:0] bb_covariance_B4_out_c0_exe102498;
    wire [31:0] bb_covariance_B4_out_c0_exe112509;
    wire [0:0] bb_covariance_B4_out_c0_exe1225110;
    wire [0:0] bb_covariance_B4_out_c0_exe1311;
    wire [0:0] bb_covariance_B4_out_c0_exe1412;
    wire [63:0] bb_covariance_B4_out_c0_exe22411;
    wire [0:0] bb_covariance_B4_out_c0_exe32422;
    wire [31:0] bb_covariance_B4_out_c0_exe62454;
    wire [0:0] bb_covariance_B4_out_c0_exe72465;
    wire [0:0] bb_covariance_B4_out_c0_exe82476;
    wire [0:0] bb_covariance_B4_out_c0_exe92487;
    wire [31:0] bb_covariance_B4_out_mul;
    wire [0:0] bb_covariance_B4_out_stall_out_0;
    wire [0:0] bb_covariance_B4_out_valid_out_0;
    wire [0:0] bb_covariance_B5_out_c0_exe10249;
    wire [31:0] bb_covariance_B5_out_c0_exe11250;
    wire [0:0] bb_covariance_B5_out_c0_exe12251;
    wire [0:0] bb_covariance_B5_out_c0_exe13;
    wire [0:0] bb_covariance_B5_out_c0_exe14;
    wire [63:0] bb_covariance_B5_out_c0_exe2241;
    wire [0:0] bb_covariance_B5_out_c0_exe3242;
    wire [31:0] bb_covariance_B5_out_c0_exe4243;
    wire [31:0] bb_covariance_B5_out_c0_exe6245;
    wire [0:0] bb_covariance_B5_out_c0_exe7246;
    wire [0:0] bb_covariance_B5_out_c0_exe8247;
    wire [0:0] bb_covariance_B5_out_c0_exe9248;
    wire [0:0] bb_covariance_B5_out_exiting_stall_out;
    wire [0:0] bb_covariance_B5_out_exiting_valid_out;
    wire [0:0] bb_covariance_B5_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B5_out_stall_in_0;
    wire [0:0] bb_covariance_B5_out_stall_out_0;
    wire [0:0] bb_covariance_B5_out_stall_out_1;
    wire [31:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_address;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_enable;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_read;
    wire [0:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_write;
    wire [31:0] bb_covariance_B5_out_unnamed_covariance2_covariance_avm_writedata;
    wire [0:0] bb_covariance_B5_out_valid_in_0;
    wire [0:0] bb_covariance_B5_out_valid_in_1;
    wire [0:0] bb_covariance_B5_out_valid_out_0;
    wire [0:0] bb_covariance_B6_out_c0_exe229113;
    wire [31:0] bb_covariance_B6_out_c0_exe429316;
    wire [0:0] bb_covariance_B6_out_feedback_out_22;
    wire [0:0] bb_covariance_B6_out_feedback_valid_out_22;
    wire [0:0] bb_covariance_B6_out_stall_in_0;
    wire [0:0] bb_covariance_B6_out_stall_out_0;
    wire [0:0] bb_covariance_B6_out_valid_out_0;
    wire [0:0] bb_covariance_B7_out_c0_exe2291;
    wire [31:0] bb_covariance_B7_out_c0_exe4293;
    wire [0:0] bb_covariance_B7_out_c0_exe5294;
    wire [0:0] bb_covariance_B7_out_c0_exe6295;
    wire [0:0] bb_covariance_B7_out_exiting_stall_out;
    wire [0:0] bb_covariance_B7_out_exiting_valid_out;
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
    wire [31:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_address;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_burstcount;
    wire [3:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_byteenable;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_enable;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_read;
    wire [0:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_write;
    wire [31:0] bb_covariance_B7_out_unnamed_covariance3_covariance_avm_writedata;
    wire [0:0] bb_covariance_B7_out_valid_in_0;
    wire [0:0] bb_covariance_B7_out_valid_in_1;
    wire [0:0] bb_covariance_B7_out_valid_out_0;
    wire [32:0] bb_covariance_B8_out_c0_exe1316;
    wire [0:0] bb_covariance_B8_out_c0_exe3318;
    wire [31:0] bb_covariance_B8_out_c0_exe4319;
    wire [31:0] bb_covariance_B8_out_c0_exe5320;
    wire [31:0] bb_covariance_B8_out_c0_exe6321;
    wire [31:0] bb_covariance_B8_out_c0_exe7322;
    wire [31:0] bb_covariance_B8_out_c0_exe8323;
    wire [0:0] bb_covariance_B8_out_exiting_stall_out;
    wire [0:0] bb_covariance_B8_out_exiting_valid_out;
    wire [0:0] bb_covariance_B8_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B8_out_stall_out_0;
    wire [0:0] bb_covariance_B8_out_stall_out_1;
    wire [0:0] bb_covariance_B8_out_valid_in_0;
    wire [0:0] bb_covariance_B8_out_valid_in_1;
    wire [0:0] bb_covariance_B8_out_valid_out_0;
    wire [31:0] bb_covariance_B9_out_c0_exe10365;
    wire [32:0] bb_covariance_B9_out_c0_exe11366;
    wire [0:0] bb_covariance_B9_out_c0_exe12367;
    wire [31:0] bb_covariance_B9_out_c0_exe13368;
    wire [31:0] bb_covariance_B9_out_c0_exe14369;
    wire [31:0] bb_covariance_B9_out_c0_exe15;
    wire [0:0] bb_covariance_B9_out_c0_exe2357;
    wire [31:0] bb_covariance_B9_out_c0_exe3358;
    wire [31:0] bb_covariance_B9_out_c0_exe4359;
    wire [31:0] bb_covariance_B9_out_c0_exe5360;
    wire [0:0] bb_covariance_B9_out_c0_exe6361;
    wire [31:0] bb_covariance_B9_out_c0_exe7362;
    wire [0:0] bb_covariance_B9_out_c0_exe8363;
    wire [31:0] bb_covariance_B9_out_c0_exe9364;
    wire [0:0] bb_covariance_B9_out_exiting_stall_out;
    wire [0:0] bb_covariance_B9_out_exiting_valid_out;
    wire [0:0] bb_covariance_B9_out_pipeline_valid_out;
    wire [0:0] bb_covariance_B9_out_stall_out_0;
    wire [0:0] bb_covariance_B9_out_stall_out_1;
    wire [0:0] bb_covariance_B9_out_valid_in_0;
    wire [0:0] bb_covariance_B9_out_valid_in_1;
    wire [0:0] bb_covariance_B9_out_valid_out_0;
    wire [1:0] c_i2_0166_q;
    wire [31:0] c_i32_undef104_q;
    wire [32:0] c_i33_undef108_q;
    wire [63:0] c_i64_undef78_q;
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
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo_out_valid_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_stall;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_valid;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_stall_out;
    wire [0:0] i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_valid_out;
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
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [63:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [31:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B11_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [32:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_13_tpl;
    wire [31:0] bb_covariance_B12_sr_1_aunroll_x_out_o_data_14_tpl;
    wire [0:0] bb_covariance_B13_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B13_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B13_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B13_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B2_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B3_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_valid;
    wire [63:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_covariance_B4_sr_0_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [31:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_covariance_B5_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [63:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl;
    wire [31:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_8_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_9_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_10_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_11_tpl;
    wire [0:0] bb_covariance_B7_sr_1_aunroll_x_out_o_data_12_tpl;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B8_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_stall;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_valid;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl;
    wire [32:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl;
    wire [0:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl;
    wire [31:0] bb_covariance_B9_sr_1_aunroll_x_out_o_data_7_tpl;


    // c_i2_0166(CONSTANT,84)
    assign c_i2_0166_q = $unsigned(2'b00);

    // i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo(BLACKBOX,136)
    covariance_i_llvm_fpga_pipeline_keep_going71_2_valid_fifo thei_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo (
        .in_data_in(c_i2_0166_q),
        .in_stall_in(bb_covariance_B1_start_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo(BLACKBOX,134)
    covariance_i_llvm_fpga_pipeline_keep_going67_2_valid_fifo thei_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo (
        .in_data_in(c_i2_0166_q),
        .in_stall_in(bb_covariance_B3_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going67_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo(BLACKBOX,132)
    covariance_i_llvm_fpga_pipeline_keep_going53_6_valid_fifo thei_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo (
        .in_data_in(c_i2_0166_q),
        .in_stall_in(bb_covariance_B5_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going53_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo(BLACKBOX,130)
    covariance_i_llvm_fpga_pipeline_keep_going37_6_valid_fifo thei_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo (
        .in_data_in(c_i2_0166_q),
        .in_stall_in(bb_covariance_B7_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going37_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6_sr_0_aunroll_x(BLACKBOX,235)
    covariance_bb_B6_sr_0 thebb_covariance_B6_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B6_out_stall_out_0),
        .in_i_valid(bb_covariance_B7_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B7_out_c0_exe2291),
        .in_i_data_1_tpl(bb_covariance_B7_out_c0_exe4293),
        .in_i_data_2_tpl(bb_covariance_B7_out_c0_exe5294),
        .in_i_data_3_tpl(bb_covariance_B7_out_c0_exe6295),
        .out_o_stall(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going37_covariance6_sr(BLACKBOX,129)
    covariance_i_llvm_fpga_pipeline_keep_going37_6_sr thei_llvm_fpga_pipeline_keep_going37_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B7_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going37_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going37_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i64_undef78(CONSTANT,116)
    assign c_i64_undef78_q = $unsigned(64'b0000000000000000000000000000000000000000000000000000000000000000);

    // bb_covariance_B7(BLACKBOX,13)
    covariance_bb_B7 thebb_covariance_B7 (
        .in_exitcond1094_pop41154_0(GND_q),
        .in_exitcond1094_pop41154_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_flush(in_start),
        .in_forked34_0(GND_q),
        .in_forked34_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_idxprom7143_0(c_i64_undef78_q),
        .in_idxprom7143_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_lim_ext111_0(c_i32_undef104_q),
        .in_lim_ext111_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext76_pop37148_0(c_i32_undef104_q),
        .in_lim_ext76_pop37148_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_memdep_covariance_avm_readdata(in_memdep_covariance_avm_readdata),
        .in_memdep_covariance_avm_readdatavalid(in_memdep_covariance_avm_readdatavalid),
        .in_memdep_covariance_avm_waitrequest(in_memdep_covariance_avm_waitrequest),
        .in_memdep_covariance_avm_writeack(in_memdep_covariance_avm_writeack),
        .in_memdep_phi1_pop16116_0(GND_q),
        .in_memdep_phi1_pop16116_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi1_pop1682_pop38145_0(GND_q),
        .in_memdep_phi1_pop1682_pop38145_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_memdep_phi2_pop17121_0(GND_q),
        .in_memdep_phi2_pop17121_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi2_pop1785_pop39150_0(GND_q),
        .in_memdep_phi2_pop1785_pop39150_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi4_pop18126_0(GND_q),
        .in_memdep_phi4_pop18126_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi4_pop1888_pop40152_0(GND_q),
        .in_memdep_phi4_pop1888_pop40152_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_mul142_0(c_i32_undef104_q),
        .in_mul142_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_notcmp6596_pop42156_0(GND_q),
        .in_notcmp6596_pop42156_1(bb_covariance_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going37_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance3_covariance_avm_readdata(in_unnamed_covariance3_covariance_avm_readdata),
        .in_unnamed_covariance3_covariance_avm_readdatavalid(in_unnamed_covariance3_covariance_avm_readdatavalid),
        .in_unnamed_covariance3_covariance_avm_waitrequest(in_unnamed_covariance3_covariance_avm_waitrequest),
        .in_unnamed_covariance3_covariance_avm_writeack(in_unnamed_covariance3_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going37_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B7_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe2291(bb_covariance_B7_out_c0_exe2291),
        .out_c0_exe4293(bb_covariance_B7_out_c0_exe4293),
        .out_c0_exe5294(bb_covariance_B7_out_c0_exe5294),
        .out_c0_exe6295(bb_covariance_B7_out_c0_exe6295),
        .out_exiting_stall_out(bb_covariance_B7_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B7_out_exiting_valid_out),
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
        .out_unnamed_covariance3_covariance_avm_address(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_address),
        .out_unnamed_covariance3_covariance_avm_burstcount(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_burstcount),
        .out_unnamed_covariance3_covariance_avm_byteenable(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_byteenable),
        .out_unnamed_covariance3_covariance_avm_enable(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_enable),
        .out_unnamed_covariance3_covariance_avm_read(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_read),
        .out_unnamed_covariance3_covariance_avm_write(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_write),
        .out_unnamed_covariance3_covariance_avm_writedata(bb_covariance_B7_out_unnamed_covariance3_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B7_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B7_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B7_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B7_sr_1_aunroll_x(BLACKBOX,236)
    covariance_bb_B7_sr_1 thebb_covariance_B7_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B7_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance3_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B4_out_c0_exe112509),
        .in_i_data_2_tpl(bb_covariance_B4_out_c0_exe1225110),
        .in_i_data_3_tpl(bb_covariance_B4_out_c0_exe1311),
        .in_i_data_4_tpl(bb_covariance_B4_out_c0_exe1412),
        .in_i_data_5_tpl(bb_covariance_B4_out_mul),
        .in_i_data_6_tpl(bb_covariance_B4_out_c0_exe22411),
        .in_i_data_7_tpl(bb_covariance_B4_out_c0_exe32422),
        .in_i_data_8_tpl(bb_covariance_B4_out_c0_exe62454),
        .in_i_data_9_tpl(bb_covariance_B4_out_c0_exe72465),
        .in_i_data_10_tpl(bb_covariance_B4_out_c0_exe82476),
        .in_i_data_11_tpl(bb_covariance_B4_out_c0_exe92487),
        .in_i_data_12_tpl(bb_covariance_B4_out_c0_exe102498),
        .out_o_stall(bb_covariance_B7_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B7_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_covariance_B7_sr_1_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance3(BLACKBOX,176)
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

    // bb_covariance_B4(BLACKBOX,10)
    covariance_bb_B4 thebb_covariance_B4 (
        .in_c0_exe102498_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe112509_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe1225110_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .in_c0_exe1311_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .in_c0_exe1412_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .in_c0_exe22411_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe32422_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe42433_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe62454_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe72465_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe82476_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_c0_exe92487_0(bb_covariance_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_stall_in_0(loop_limiter_covariance3_out_o_stall),
        .in_valid_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe102498(bb_covariance_B4_out_c0_exe102498),
        .out_c0_exe112509(bb_covariance_B4_out_c0_exe112509),
        .out_c0_exe1225110(bb_covariance_B4_out_c0_exe1225110),
        .out_c0_exe1311(bb_covariance_B4_out_c0_exe1311),
        .out_c0_exe1412(bb_covariance_B4_out_c0_exe1412),
        .out_c0_exe22411(bb_covariance_B4_out_c0_exe22411),
        .out_c0_exe32422(bb_covariance_B4_out_c0_exe32422),
        .out_c0_exe62454(bb_covariance_B4_out_c0_exe62454),
        .out_c0_exe72465(bb_covariance_B4_out_c0_exe72465),
        .out_c0_exe82476(bb_covariance_B4_out_c0_exe82476),
        .out_c0_exe92487(bb_covariance_B4_out_c0_exe92487),
        .out_mul(bb_covariance_B4_out_mul),
        .out_stall_out_0(bb_covariance_B4_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B4_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B4_sr_0_aunroll_x(BLACKBOX,233)
    covariance_bb_B4_sr_0 thebb_covariance_B4_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B4_out_stall_out_0),
        .in_i_valid(bb_covariance_B5_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B5_out_c0_exe2241),
        .in_i_data_1_tpl(bb_covariance_B5_out_c0_exe3242),
        .in_i_data_2_tpl(bb_covariance_B5_out_c0_exe4243),
        .in_i_data_3_tpl(bb_covariance_B5_out_c0_exe6245),
        .in_i_data_4_tpl(bb_covariance_B5_out_c0_exe7246),
        .in_i_data_5_tpl(bb_covariance_B5_out_c0_exe8247),
        .in_i_data_6_tpl(bb_covariance_B5_out_c0_exe9248),
        .in_i_data_7_tpl(bb_covariance_B5_out_c0_exe10249),
        .in_i_data_8_tpl(bb_covariance_B5_out_c0_exe11250),
        .in_i_data_9_tpl(bb_covariance_B5_out_c0_exe12251),
        .in_i_data_10_tpl(bb_covariance_B5_out_c0_exe13),
        .in_i_data_11_tpl(bb_covariance_B5_out_c0_exe14),
        .out_o_stall(bb_covariance_B4_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B4_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_covariance_B4_sr_0_aunroll_x_out_o_data_11_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going53_covariance6_sr(BLACKBOX,131)
    covariance_i_llvm_fpga_pipeline_keep_going53_6_sr thei_llvm_fpga_pipeline_keep_going53_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B5_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going53_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going53_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5(BLACKBOX,11)
    covariance_bb_B5 thebb_covariance_B5 (
        .in_exitcond10134_0(GND_q),
        .in_exitcond10134_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_forked50_0(GND_q),
        .in_forked50_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_j_039_pop21136_0(c_i32_undef104_q),
        .in_j_039_pop21136_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_lim_ext113_0(c_i32_undef104_q),
        .in_lim_ext113_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_lim_ext75_pop23138_0(c_i32_undef104_q),
        .in_lim_ext75_pop23138_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_memdep_phi1_pop16118_0(GND_q),
        .in_memdep_phi1_pop16118_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi1_pop1681_pop24139_0(GND_q),
        .in_memdep_phi1_pop1681_pop24139_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_memdep_phi2_pop17123_0(GND_q),
        .in_memdep_phi2_pop17123_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi2_pop1784_pop25140_0(GND_q),
        .in_memdep_phi2_pop1784_pop25140_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_memdep_phi4_pop18128_0(GND_q),
        .in_memdep_phi4_pop18128_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_memdep_phi4_pop1887_pop26141_0(GND_q),
        .in_memdep_phi4_pop1887_pop26141_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_memdep_phi_pop22137_0(GND_q),
        .in_memdep_phi_pop22137_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_notcmp65135_0(GND_q),
        .in_notcmp65135_1(bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going53_covariance6_sr_out_o_stall),
        .in_stall_in_0(bb_covariance_B4_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance2_covariance_avm_readdata(in_unnamed_covariance2_covariance_avm_readdata),
        .in_unnamed_covariance2_covariance_avm_readdatavalid(in_unnamed_covariance2_covariance_avm_readdatavalid),
        .in_unnamed_covariance2_covariance_avm_waitrequest(in_unnamed_covariance2_covariance_avm_waitrequest),
        .in_unnamed_covariance2_covariance_avm_writeack(in_unnamed_covariance2_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going53_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B5_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10249(bb_covariance_B5_out_c0_exe10249),
        .out_c0_exe11250(bb_covariance_B5_out_c0_exe11250),
        .out_c0_exe12251(bb_covariance_B5_out_c0_exe12251),
        .out_c0_exe13(bb_covariance_B5_out_c0_exe13),
        .out_c0_exe14(bb_covariance_B5_out_c0_exe14),
        .out_c0_exe2241(bb_covariance_B5_out_c0_exe2241),
        .out_c0_exe3242(bb_covariance_B5_out_c0_exe3242),
        .out_c0_exe4243(bb_covariance_B5_out_c0_exe4243),
        .out_c0_exe6245(bb_covariance_B5_out_c0_exe6245),
        .out_c0_exe7246(bb_covariance_B5_out_c0_exe7246),
        .out_c0_exe8247(bb_covariance_B5_out_c0_exe8247),
        .out_c0_exe9248(bb_covariance_B5_out_c0_exe9248),
        .out_exiting_stall_out(bb_covariance_B5_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B5_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B5_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B5_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B5_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B5_out_stall_out_1),
        .out_unnamed_covariance2_covariance_avm_address(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_address),
        .out_unnamed_covariance2_covariance_avm_burstcount(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_burstcount),
        .out_unnamed_covariance2_covariance_avm_byteenable(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_byteenable),
        .out_unnamed_covariance2_covariance_avm_enable(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_enable),
        .out_unnamed_covariance2_covariance_avm_read(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_read),
        .out_unnamed_covariance2_covariance_avm_write(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_write),
        .out_unnamed_covariance2_covariance_avm_writedata(bb_covariance_B5_out_unnamed_covariance2_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B5_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B5_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B5_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B5_sr_1_aunroll_x(BLACKBOX,234)
    covariance_bb_B5_sr_1 thebb_covariance_B5_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B5_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance2_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B3_out_c0_exe9),
        .in_i_data_2_tpl(bb_covariance_B3_out_c0_exe10),
        .in_i_data_3_tpl(bb_covariance_B3_out_c0_exe11),
        .in_i_data_4_tpl(bb_covariance_B3_out_c0_exe12),
        .in_i_data_5_tpl(bb_covariance_B3_out_c0_exe1214),
        .in_i_data_6_tpl(bb_covariance_B3_out_c0_exe2215),
        .in_i_data_7_tpl(bb_covariance_B3_out_c0_exe3),
        .in_i_data_8_tpl(bb_covariance_B3_out_memdep_phi_pop22),
        .in_i_data_9_tpl(bb_covariance_B3_out_c0_exe4),
        .in_i_data_10_tpl(bb_covariance_B3_out_c0_exe5),
        .in_i_data_11_tpl(bb_covariance_B3_out_c0_exe6),
        .in_i_data_12_tpl(bb_covariance_B3_out_c0_exe7),
        .out_o_stall(bb_covariance_B5_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B5_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_covariance_B5_sr_1_aunroll_x_out_o_data_12_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance2(BLACKBOX,175)
    covariance_loop_limiter_2 theloop_limiter_covariance2 (
        .in_i_stall(bb_covariance_B5_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B5_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B3_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B5_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance2_out_o_stall),
        .out_o_valid(loop_limiter_covariance2_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going67_covariance2_sr(BLACKBOX,133)
    covariance_i_llvm_fpga_pipeline_keep_going67_2_sr thei_llvm_fpga_pipeline_keep_going67_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B3_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going67_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going67_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i32_undef104(CONSTANT,91)
    assign c_i32_undef104_q = $unsigned(32'b00000000000000000000000000000000);

    // bb_covariance_B2_sr_0_aunroll_x(BLACKBOX,231)
    covariance_bb_B2_sr_0 thebb_covariance_B2_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B2_out_stall_out_0),
        .in_i_valid(bb_covariance_B6_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B6_out_c0_exe229113),
        .in_i_data_1_tpl(bb_covariance_B6_out_c0_exe429316),
        .out_o_stall(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B6(BLACKBOX,12)
    covariance_bb_B6 thebb_covariance_B6 (
        .in_c0_exe229113_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe429316_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe529417_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe629518_0(bb_covariance_B6_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_feedback_stall_in_22(bb_covariance_B3_out_feedback_stall_out_22),
        .in_stall_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B6_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe229113(bb_covariance_B6_out_c0_exe229113),
        .out_c0_exe429316(bb_covariance_B6_out_c0_exe429316),
        .out_feedback_out_22(bb_covariance_B6_out_feedback_out_22),
        .out_feedback_valid_out_22(bb_covariance_B6_out_feedback_valid_out_22),
        .out_stall_in_0(bb_covariance_B6_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B6_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B6_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3(BLACKBOX,9)
    covariance_bb_B3 thebb_covariance_B3 (
        .in_feedback_in_22(bb_covariance_B6_out_feedback_out_22),
        .in_feedback_valid_in_22(bb_covariance_B6_out_feedback_valid_out_22),
        .in_forked74_0(GND_q),
        .in_forked74_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext109_0(c_i32_undef104_q),
        .in_lim_ext109_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_memdep_phi1_pop16114_0(GND_q),
        .in_memdep_phi1_pop16114_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_memdep_phi2_pop17119_0(GND_q),
        .in_memdep_phi2_pop17119_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_memdep_phi4_pop18124_0(GND_q),
        .in_memdep_phi4_pop18124_1(bb_covariance_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going67_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance2_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going67_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10(bb_covariance_B3_out_c0_exe10),
        .out_c0_exe11(bb_covariance_B3_out_c0_exe11),
        .out_c0_exe12(bb_covariance_B3_out_c0_exe12),
        .out_c0_exe1214(bb_covariance_B3_out_c0_exe1214),
        .out_c0_exe2215(bb_covariance_B3_out_c0_exe2215),
        .out_c0_exe3(bb_covariance_B3_out_c0_exe3),
        .out_c0_exe4(bb_covariance_B3_out_c0_exe4),
        .out_c0_exe5(bb_covariance_B3_out_c0_exe5),
        .out_c0_exe6(bb_covariance_B3_out_c0_exe6),
        .out_c0_exe7(bb_covariance_B3_out_c0_exe7),
        .out_c0_exe9(bb_covariance_B3_out_c0_exe9),
        .out_exiting_stall_out(bb_covariance_B3_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B3_out_exiting_valid_out),
        .out_feedback_stall_out_22(bb_covariance_B3_out_feedback_stall_out_22),
        .out_memdep_phi_pop22(bb_covariance_B3_out_memdep_phi_pop22),
        .out_pipeline_valid_out(bb_covariance_B3_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B3_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B3_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B3_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B3_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B3_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B3_sr_1_aunroll_x(BLACKBOX,232)
    covariance_bb_B3_sr_1 thebb_covariance_B3_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B3_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance0_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B1_start_out_c1_exe1),
        .in_i_data_2_tpl(bb_covariance_B1_start_out_memdep_phi1_pop16),
        .in_i_data_3_tpl(bb_covariance_B1_start_out_memdep_phi2_pop17),
        .in_i_data_4_tpl(bb_covariance_B1_start_out_memdep_phi2_pop17),
        .out_o_stall(bb_covariance_B3_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B3_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B3_sr_1_aunroll_x_out_o_data_4_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance0(BLACKBOX,173)
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

    // i_llvm_fpga_pipeline_keep_going71_covariance2_sr(BLACKBOX,135)
    covariance_i_llvm_fpga_pipeline_keep_going71_2_sr thei_llvm_fpga_pipeline_keep_going71_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B1_start_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo(BLACKBOX,128)
    covariance_i_llvm_fpga_pipeline_keep_going29_2_valid_fifo thei_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo (
        .in_data_in(c_i2_0166_q),
        .in_stall_in(bb_covariance_B8_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going29_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo(BLACKBOX,126)
    covariance_i_llvm_fpga_pipeline_keep_going24_2_valid_fifo thei_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo (
        .in_data_in(c_i2_0166_q),
        .in_stall_in(bb_covariance_B9_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going24_covariance2_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo(BLACKBOX,138)
    covariance_i_llvm_fpga_pipeline_keep_going_6_valid_fifo thei_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo (
        .in_data_in(c_i2_0166_q),
        .in_stall_in(bb_covariance_B12_out_stall_out_0),
        .in_valid_in(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_valid),
        .out_almost_full(),
        .out_data_out(),
        .out_stall_out(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_stall_out),
        .out_valid_out(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13_sr_0_aunroll_x(BLACKBOX,230)
    covariance_bb_B13_sr_0 thebb_covariance_B13_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B13_out_stall_out_0),
        .in_i_valid(bb_covariance_B10_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B10_out_c0_exe442823),
        .in_i_data_1_tpl(bb_covariance_B10_out_c0_exe843227),
        .out_o_stall(bb_covariance_B13_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B13_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10(BLACKBOX,3)
    covariance_bb_B10 thebb_covariance_B10 (
        .in_c0_exe138119_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe442823_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe843227_0(bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_stall_in_0(bb_covariance_B13_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_valid_in_0(bb_covariance_B10_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe442823(bb_covariance_B10_out_c0_exe442823),
        .out_c0_exe843227(bb_covariance_B10_out_c0_exe843227),
        .out_stall_in_0(bb_covariance_B10_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B10_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B10_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B10_sr_0_aunroll_x(BLACKBOX,227)
    covariance_bb_B10_sr_0 thebb_covariance_B10_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B10_out_stall_out_0),
        .in_i_valid(bb_covariance_B11_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B11_out_c0_exe1381),
        .in_i_data_1_tpl(bb_covariance_B11_out_c0_exe442824),
        .in_i_data_2_tpl(bb_covariance_B11_out_c0_exe843228),
        .out_o_stall(bb_covariance_B10_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B10_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B10_sr_0_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B11(BLACKBOX,4)
    covariance_bb_B11 thebb_covariance_B11 (
        .in_c0_exe1043430_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_6_tpl),
        .in_c0_exe1143531_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_7_tpl),
        .in_c0_exe1243632_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_8_tpl),
        .in_c0_exe242620_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe342721_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_c0_exe442824_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .in_c0_exe643025_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .in_c0_exe843228_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .in_c0_exe943329_0(bb_covariance_B11_sr_0_aunroll_x_out_o_data_5_tpl),
        .in_flush(in_start),
        .in_stall_in_0(bb_covariance_B10_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance4_covariance_avm_readdata(in_unnamed_covariance4_covariance_avm_readdata),
        .in_unnamed_covariance4_covariance_avm_readdatavalid(in_unnamed_covariance4_covariance_avm_readdatavalid),
        .in_unnamed_covariance4_covariance_avm_waitrequest(in_unnamed_covariance4_covariance_avm_waitrequest),
        .in_unnamed_covariance4_covariance_avm_writeack(in_unnamed_covariance4_covariance_avm_writeack),
        .in_valid_in_0(bb_covariance_B11_sr_0_aunroll_x_out_o_valid),
        .out_c0_exe1381(bb_covariance_B11_out_c0_exe1381),
        .out_c0_exe442824(bb_covariance_B11_out_c0_exe442824),
        .out_c0_exe843228(bb_covariance_B11_out_c0_exe843228),
        .out_stall_in_0(bb_covariance_B11_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B11_out_stall_out_0),
        .out_unnamed_covariance4_covariance_avm_address(bb_covariance_B11_out_unnamed_covariance4_covariance_avm_address),
        .out_unnamed_covariance4_covariance_avm_burstcount(bb_covariance_B11_out_unnamed_covariance4_covariance_avm_burstcount),
        .out_unnamed_covariance4_covariance_avm_byteenable(bb_covariance_B11_out_unnamed_covariance4_covariance_avm_byteenable),
        .out_unnamed_covariance4_covariance_avm_enable(bb_covariance_B11_out_unnamed_covariance4_covariance_avm_enable),
        .out_unnamed_covariance4_covariance_avm_read(bb_covariance_B11_out_unnamed_covariance4_covariance_avm_read),
        .out_unnamed_covariance4_covariance_avm_write(bb_covariance_B11_out_unnamed_covariance4_covariance_avm_write),
        .out_unnamed_covariance4_covariance_avm_writedata(bb_covariance_B11_out_unnamed_covariance4_covariance_avm_writedata),
        .out_valid_out_0(bb_covariance_B11_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B11_sr_0_aunroll_x(BLACKBOX,228)
    covariance_bb_B11_sr_0 thebb_covariance_B11_sr_0_aunroll_x (
        .in_i_stall(bb_covariance_B11_out_stall_out_0),
        .in_i_valid(bb_covariance_B12_out_valid_out_0),
        .in_i_data_0_tpl(bb_covariance_B12_out_c0_exe2426),
        .in_i_data_1_tpl(bb_covariance_B12_out_c0_exe3427),
        .in_i_data_2_tpl(bb_covariance_B12_out_c0_exe4428),
        .in_i_data_3_tpl(bb_covariance_B12_out_c0_exe6430),
        .in_i_data_4_tpl(bb_covariance_B12_out_c0_exe8432),
        .in_i_data_5_tpl(bb_covariance_B12_out_c0_exe9433),
        .in_i_data_6_tpl(bb_covariance_B12_out_c0_exe10434),
        .in_i_data_7_tpl(bb_covariance_B12_out_c0_exe11435),
        .in_i_data_8_tpl(bb_covariance_B12_out_c0_exe12436),
        .out_o_stall(bb_covariance_B11_sr_0_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B11_sr_0_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B11_sr_0_aunroll_x_out_o_data_8_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going_covariance6_sr(BLACKBOX,137)
    covariance_i_llvm_fpga_pipeline_keep_going_6_sr thei_llvm_fpga_pipeline_keep_going_covariance6_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B12_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12(BLACKBOX,5)
    covariance_bb_B12 thebb_covariance_B12 (
        .in_flush(in_start),
        .in_forked23184_0(GND_q),
        .in_forked23184_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_8_tpl),
        .in_forked_0(GND_q),
        .in_forked_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv14_pop28171_0(c_i33_undef108_q),
        .in_fpga_indvars_iv14_pop28171_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i24_034_pop29104_pop62190_0(c_i32_undef104_q),
        .in_i24_034_pop29104_pop62190_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_14_tpl),
        .in_i24_034_pop29177_0(c_i32_undef104_q),
        .in_i24_034_pop29177_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_j28_033_pop58186_0(c_i32_undef104_q),
        .in_j28_033_pop58186_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_10_tpl),
        .in_lim_ext77_pop49163_0(c_i32_undef104_q),
        .in_lim_ext77_pop49163_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lim_ext78_pop30180_0(c_i32_undef104_q),
        .in_lim_ext78_pop30180_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_lim_ext79_pop59187_0(c_i32_undef104_q),
        .in_lim_ext79_pop59187_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_11_tpl),
        .in_notcmp22185_0(GND_q),
        .in_notcmp22185_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_9_tpl),
        .in_notcmp27102_pop61189_0(GND_q),
        .in_notcmp27102_pop61189_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_13_tpl),
        .in_notcmp27174_0(GND_q),
        .in_notcmp27174_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going_covariance6_sr_out_o_stall),
        .in_reorder_limiter_enter132_0(c_i32_undef104_q),
        .in_reorder_limiter_enter132_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_reorder_limiter_enter91_pop31183_0(c_i32_undef104_q),
        .in_reorder_limiter_enter91_pop31183_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_reorder_limiter_enter92_pop60188_0(c_i32_undef104_q),
        .in_reorder_limiter_enter92_pop60188_1(bb_covariance_B12_sr_1_aunroll_x_out_o_data_12_tpl),
        .in_stall_in_0(bb_covariance_B11_sr_0_aunroll_x_out_o_stall),
        .in_stall_in_1(GND_q),
        .in_unnamed_covariance5_covariance_avm_readdata(in_unnamed_covariance5_covariance_avm_readdata),
        .in_unnamed_covariance5_covariance_avm_readdatavalid(in_unnamed_covariance5_covariance_avm_readdatavalid),
        .in_unnamed_covariance5_covariance_avm_waitrequest(in_unnamed_covariance5_covariance_avm_waitrequest),
        .in_unnamed_covariance5_covariance_avm_writeack(in_unnamed_covariance5_covariance_avm_writeack),
        .in_unnamed_covariance6_covariance_avm_readdata(in_unnamed_covariance6_covariance_avm_readdata),
        .in_unnamed_covariance6_covariance_avm_readdatavalid(in_unnamed_covariance6_covariance_avm_readdatavalid),
        .in_unnamed_covariance6_covariance_avm_waitrequest(in_unnamed_covariance6_covariance_avm_waitrequest),
        .in_unnamed_covariance6_covariance_avm_writeack(in_unnamed_covariance6_covariance_avm_writeack),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going_covariance6_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B12_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10434(bb_covariance_B12_out_c0_exe10434),
        .out_c0_exe11435(bb_covariance_B12_out_c0_exe11435),
        .out_c0_exe12436(bb_covariance_B12_out_c0_exe12436),
        .out_c0_exe2426(bb_covariance_B12_out_c0_exe2426),
        .out_c0_exe3427(bb_covariance_B12_out_c0_exe3427),
        .out_c0_exe4428(bb_covariance_B12_out_c0_exe4428),
        .out_c0_exe6430(bb_covariance_B12_out_c0_exe6430),
        .out_c0_exe8432(bb_covariance_B12_out_c0_exe8432),
        .out_c0_exe9433(bb_covariance_B12_out_c0_exe9433),
        .out_exiting_stall_out(bb_covariance_B12_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B12_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B12_out_pipeline_valid_out),
        .out_stall_in_0(bb_covariance_B12_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B12_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B12_out_stall_out_1),
        .out_unnamed_covariance5_covariance_avm_address(bb_covariance_B12_out_unnamed_covariance5_covariance_avm_address),
        .out_unnamed_covariance5_covariance_avm_burstcount(bb_covariance_B12_out_unnamed_covariance5_covariance_avm_burstcount),
        .out_unnamed_covariance5_covariance_avm_byteenable(bb_covariance_B12_out_unnamed_covariance5_covariance_avm_byteenable),
        .out_unnamed_covariance5_covariance_avm_enable(bb_covariance_B12_out_unnamed_covariance5_covariance_avm_enable),
        .out_unnamed_covariance5_covariance_avm_read(bb_covariance_B12_out_unnamed_covariance5_covariance_avm_read),
        .out_unnamed_covariance5_covariance_avm_write(bb_covariance_B12_out_unnamed_covariance5_covariance_avm_write),
        .out_unnamed_covariance5_covariance_avm_writedata(bb_covariance_B12_out_unnamed_covariance5_covariance_avm_writedata),
        .out_unnamed_covariance6_covariance_avm_address(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_address),
        .out_unnamed_covariance6_covariance_avm_burstcount(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_burstcount),
        .out_unnamed_covariance6_covariance_avm_byteenable(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_byteenable),
        .out_unnamed_covariance6_covariance_avm_enable(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_enable),
        .out_unnamed_covariance6_covariance_avm_read(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_read),
        .out_unnamed_covariance6_covariance_avm_write(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_write),
        .out_unnamed_covariance6_covariance_avm_writedata(bb_covariance_B12_out_unnamed_covariance6_covariance_avm_writedata),
        .out_valid_in_0(bb_covariance_B12_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B12_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B12_out_valid_out_0),
        .out_valid_out_1(),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B12_sr_1_aunroll_x(BLACKBOX,229)
    covariance_bb_B12_sr_1 thebb_covariance_B12_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B12_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance5_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B9_out_c0_exe9364),
        .in_i_data_2_tpl(bb_covariance_B9_out_c0_exe10365),
        .in_i_data_3_tpl(bb_covariance_B9_out_c0_exe11366),
        .in_i_data_4_tpl(bb_covariance_B9_out_c0_exe12367),
        .in_i_data_5_tpl(bb_covariance_B9_out_c0_exe13368),
        .in_i_data_6_tpl(bb_covariance_B9_out_c0_exe14369),
        .in_i_data_7_tpl(bb_covariance_B9_out_c0_exe15),
        .in_i_data_8_tpl(bb_covariance_B9_out_c0_exe8363),
        .in_i_data_9_tpl(bb_covariance_B9_out_c0_exe2357),
        .in_i_data_10_tpl(bb_covariance_B9_out_c0_exe3358),
        .in_i_data_11_tpl(bb_covariance_B9_out_c0_exe4359),
        .in_i_data_12_tpl(bb_covariance_B9_out_c0_exe5360),
        .in_i_data_13_tpl(bb_covariance_B9_out_c0_exe6361),
        .in_i_data_14_tpl(bb_covariance_B9_out_c0_exe7362),
        .out_o_stall(bb_covariance_B12_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B12_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_7_tpl),
        .out_o_data_8_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_8_tpl),
        .out_o_data_9_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_9_tpl),
        .out_o_data_10_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_10_tpl),
        .out_o_data_11_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_11_tpl),
        .out_o_data_12_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_12_tpl),
        .out_o_data_13_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_13_tpl),
        .out_o_data_14_tpl(bb_covariance_B12_sr_1_aunroll_x_out_o_data_14_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance5(BLACKBOX,178)
    covariance_loop_limiter_5 theloop_limiter_covariance5 (
        .in_i_stall(bb_covariance_B12_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B12_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B9_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B12_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance5_out_o_stall),
        .out_o_valid(loop_limiter_covariance5_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going24_covariance2_sr(BLACKBOX,125)
    covariance_i_llvm_fpga_pipeline_keep_going24_2_sr thei_llvm_fpga_pipeline_keep_going24_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B9_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going24_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going24_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // c_i33_undef108(CONSTANT,114)
    assign c_i33_undef108_q = $unsigned(33'b000000000000000000000000000000000);

    // bb_covariance_B9(BLACKBOX,15)
    covariance_bb_B9 thebb_covariance_B9 (
        .in_forked23_0(GND_q),
        .in_forked23_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_fpga_indvars_iv14_pop28169_0(c_i33_undef108_q),
        .in_fpga_indvars_iv14_pop28169_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .in_i24_034_pop29175_0(c_i32_undef104_q),
        .in_i24_034_pop29175_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .in_lim_ext77_pop49164_0(c_i32_undef104_q),
        .in_lim_ext77_pop49164_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_lim_ext78_pop30178_0(c_i32_undef104_q),
        .in_lim_ext78_pop30178_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .in_notcmp27172_0(GND_q),
        .in_notcmp27172_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going24_covariance2_sr_out_o_stall),
        .in_reorder_limiter_enter133_0(c_i32_undef104_q),
        .in_reorder_limiter_enter133_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_reorder_limiter_enter91_pop31181_0(c_i32_undef104_q),
        .in_reorder_limiter_enter91_pop31181_1(bb_covariance_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .in_stall_in_0(loop_limiter_covariance5_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going24_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B9_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe10365(bb_covariance_B9_out_c0_exe10365),
        .out_c0_exe11366(bb_covariance_B9_out_c0_exe11366),
        .out_c0_exe12367(bb_covariance_B9_out_c0_exe12367),
        .out_c0_exe13368(bb_covariance_B9_out_c0_exe13368),
        .out_c0_exe14369(bb_covariance_B9_out_c0_exe14369),
        .out_c0_exe15(bb_covariance_B9_out_c0_exe15),
        .out_c0_exe2357(bb_covariance_B9_out_c0_exe2357),
        .out_c0_exe3358(bb_covariance_B9_out_c0_exe3358),
        .out_c0_exe4359(bb_covariance_B9_out_c0_exe4359),
        .out_c0_exe5360(bb_covariance_B9_out_c0_exe5360),
        .out_c0_exe6361(bb_covariance_B9_out_c0_exe6361),
        .out_c0_exe7362(bb_covariance_B9_out_c0_exe7362),
        .out_c0_exe8363(bb_covariance_B9_out_c0_exe8363),
        .out_c0_exe9364(bb_covariance_B9_out_c0_exe9364),
        .out_exiting_stall_out(bb_covariance_B9_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B9_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B9_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B9_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B9_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B9_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B9_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B9_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B9_sr_1_aunroll_x(BLACKBOX,238)
    covariance_bb_B9_sr_1 thebb_covariance_B9_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B9_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance4_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B8_out_c0_exe7322),
        .in_i_data_2_tpl(bb_covariance_B8_out_c0_exe8323),
        .in_i_data_3_tpl(bb_covariance_B8_out_c0_exe1316),
        .in_i_data_4_tpl(bb_covariance_B8_out_c0_exe3318),
        .in_i_data_5_tpl(bb_covariance_B8_out_c0_exe4319),
        .in_i_data_6_tpl(bb_covariance_B8_out_c0_exe5320),
        .in_i_data_7_tpl(bb_covariance_B8_out_c0_exe6321),
        .out_o_stall(bb_covariance_B9_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B9_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_2_tpl),
        .out_o_data_3_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_3_tpl),
        .out_o_data_4_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_4_tpl),
        .out_o_data_5_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_5_tpl),
        .out_o_data_6_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_6_tpl),
        .out_o_data_7_tpl(bb_covariance_B9_sr_1_aunroll_x_out_o_data_7_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance4(BLACKBOX,177)
    covariance_loop_limiter_4 theloop_limiter_covariance4 (
        .in_i_stall(bb_covariance_B9_sr_1_aunroll_x_out_o_stall),
        .in_i_stall_exit(bb_covariance_B9_out_exiting_stall_out),
        .in_i_valid(bb_covariance_B8_out_valid_out_0),
        .in_i_valid_exit(bb_covariance_B9_out_exiting_valid_out),
        .out_o_stall(loop_limiter_covariance4_out_o_stall),
        .out_o_valid(loop_limiter_covariance4_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // i_llvm_fpga_pipeline_keep_going29_covariance2_sr(BLACKBOX,127)
    covariance_i_llvm_fpga_pipeline_keep_going29_2_sr thei_llvm_fpga_pipeline_keep_going29_covariance2_sr (
        .in_i_data(GND_q),
        .in_i_stall(i_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo_out_stall_out),
        .in_i_valid(bb_covariance_B8_out_pipeline_valid_out),
        .out_o_data(),
        .out_o_stall(i_llvm_fpga_pipeline_keep_going29_covariance2_sr_out_o_stall),
        .out_o_valid(i_llvm_fpga_pipeline_keep_going29_covariance2_sr_out_o_valid),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8(BLACKBOX,14)
    covariance_bb_B8 thebb_covariance_B8 (
        .in_forked90_0(GND_q),
        .in_forked90_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .in_lim_ext77_pop49160_0(c_i32_undef104_q),
        .in_lim_ext77_pop49160_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going29_covariance2_sr_out_o_stall),
        .in_reorder_limiter_enter129_0(c_i32_undef104_q),
        .in_reorder_limiter_enter129_1(bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .in_stall_in_0(loop_limiter_covariance4_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going29_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(bb_covariance_B8_sr_1_aunroll_x_out_o_valid),
        .out_c0_exe1316(bb_covariance_B8_out_c0_exe1316),
        .out_c0_exe3318(bb_covariance_B8_out_c0_exe3318),
        .out_c0_exe4319(bb_covariance_B8_out_c0_exe4319),
        .out_c0_exe5320(bb_covariance_B8_out_c0_exe5320),
        .out_c0_exe6321(bb_covariance_B8_out_c0_exe6321),
        .out_c0_exe7322(bb_covariance_B8_out_c0_exe7322),
        .out_c0_exe8323(bb_covariance_B8_out_c0_exe8323),
        .out_exiting_stall_out(bb_covariance_B8_out_exiting_stall_out),
        .out_exiting_valid_out(bb_covariance_B8_out_exiting_valid_out),
        .out_pipeline_valid_out(bb_covariance_B8_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B8_out_stall_out_0),
        .out_stall_out_1(bb_covariance_B8_out_stall_out_1),
        .out_valid_in_0(bb_covariance_B8_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B8_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B8_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B8_sr_1_aunroll_x(BLACKBOX,237)
    covariance_bb_B8_sr_1 thebb_covariance_B8_sr_1_aunroll_x (
        .in_i_stall(bb_covariance_B8_out_stall_out_1),
        .in_i_valid(loop_limiter_covariance1_out_o_valid),
        .in_i_data_0_tpl(VCC_q),
        .in_i_data_1_tpl(bb_covariance_B2_out_reorder_limiter_enter),
        .in_i_data_2_tpl(bb_covariance_B2_out_c0_exe429315),
        .out_o_stall(bb_covariance_B8_sr_1_aunroll_x_out_o_stall),
        .out_o_valid(bb_covariance_B8_sr_1_aunroll_x_out_o_valid),
        .out_o_data_0_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_0_tpl),
        .out_o_data_1_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_1_tpl),
        .out_o_data_2_tpl(bb_covariance_B8_sr_1_aunroll_x_out_o_data_2_tpl),
        .clock(clock),
        .resetn(resetn)
    );

    // loop_limiter_covariance1(BLACKBOX,174)
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

    // bb_covariance_B2(BLACKBOX,8)
    covariance_bb_B2 thebb_covariance_B2 (
        .in_c0_exe229114_0(bb_covariance_B2_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe429315_0(bb_covariance_B2_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_16(bb_covariance_B1_start_out_feedback_stall_out_16),
        .in_stall_in_0(loop_limiter_covariance1_out_o_stall),
        .in_valid_in_0(bb_covariance_B2_sr_0_aunroll_x_out_o_valid),
        .in_wgl_7_enter_exit_stall_in(bb_covariance_B13_out_wgl_7_exit_exit_stall_in),
        .in_wgl_7_enter_exit_valid_in(bb_covariance_B13_out_wgl_7_exit_exit_valid_in),
        .out_c0_exe429315(bb_covariance_B2_out_c0_exe429315),
        .out_feedback_out_16(bb_covariance_B2_out_feedback_out_16),
        .out_feedback_valid_out_16(bb_covariance_B2_out_feedback_valid_out_16),
        .out_reorder_limiter_enter(bb_covariance_B2_out_reorder_limiter_enter),
        .out_stall_out_0(bb_covariance_B2_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B2_out_valid_out_0),
        .out_wgl_7_enter_exit_stall_out(bb_covariance_B2_out_wgl_7_enter_exit_stall_out),
        .out_wgl_7_enter_exit_valid_out(bb_covariance_B2_out_wgl_7_enter_exit_valid_out),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B1_start(BLACKBOX,7)
    covariance_bb_B1_start thebb_covariance_B1_start (
        .in_feedback_in_16(bb_covariance_B2_out_feedback_out_16),
        .in_feedback_in_18(bb_covariance_B13_out_feedback_out_18),
        .in_feedback_valid_in_16(bb_covariance_B2_out_feedback_valid_out_16),
        .in_feedback_valid_in_18(bb_covariance_B13_out_feedback_valid_out_18),
        .in_forked73_0(GND_q),
        .in_forked73_1(VCC_q),
        .in_iord_bl_call_covariance_i_fifodata(in_iord_bl_call_covariance_i_fifodata),
        .in_iord_bl_call_covariance_i_fifovalid(in_iord_bl_call_covariance_i_fifovalid),
        .in_pipeline_stall_in(i_llvm_fpga_pipeline_keep_going71_covariance2_sr_out_o_stall),
        .in_stall_in_0(loop_limiter_covariance0_out_o_stall),
        .in_valid_in_0(i_llvm_fpga_pipeline_keep_going71_covariance2_valid_fifo_out_valid_out),
        .in_valid_in_1(in_valid_in),
        .out_c1_exe1(bb_covariance_B1_start_out_c1_exe1),
        .out_exiting_stall_out(),
        .out_exiting_valid_out(),
        .out_feedback_stall_out_16(bb_covariance_B1_start_out_feedback_stall_out_16),
        .out_feedback_stall_out_18(bb_covariance_B1_start_out_feedback_stall_out_18),
        .out_iord_bl_call_covariance_o_fifoalmost_full(bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full),
        .out_iord_bl_call_covariance_o_fifoready(bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready),
        .out_memdep_phi1_pop16(bb_covariance_B1_start_out_memdep_phi1_pop16),
        .out_memdep_phi2_pop17(bb_covariance_B1_start_out_memdep_phi2_pop17),
        .out_pipeline_valid_out(bb_covariance_B1_start_out_pipeline_valid_out),
        .out_stall_out_0(bb_covariance_B1_start_out_stall_out_0),
        .out_stall_out_1(),
        .out_valid_in_0(bb_covariance_B1_start_out_valid_in_0),
        .out_valid_in_1(bb_covariance_B1_start_out_valid_in_1),
        .out_valid_out_0(bb_covariance_B1_start_out_valid_out_0),
        .clock(clock),
        .resetn(resetn)
    );

    // bb_covariance_B13(BLACKBOX,6)
    covariance_bb_B13 thebb_covariance_B13 (
        .in_c0_exe442822_0(bb_covariance_B13_sr_0_aunroll_x_out_o_data_0_tpl),
        .in_c0_exe843226_0(bb_covariance_B13_sr_0_aunroll_x_out_o_data_1_tpl),
        .in_feedback_stall_in_18(bb_covariance_B1_start_out_feedback_stall_out_18),
        .in_iowr_bl_return_covariance_i_fifoready(in_iowr_bl_return_covariance_i_fifoready),
        .in_stall_in_0(GND_q),
        .in_valid_in_0(bb_covariance_B13_sr_0_aunroll_x_out_o_valid),
        .in_wgl_7_exit_exit_stall_out(bb_covariance_B2_out_wgl_7_enter_exit_stall_out),
        .in_wgl_7_exit_exit_valid_out(bb_covariance_B2_out_wgl_7_enter_exit_valid_out),
        .out_feedback_out_18(bb_covariance_B13_out_feedback_out_18),
        .out_feedback_valid_out_18(bb_covariance_B13_out_feedback_valid_out_18),
        .out_iowr_bl_return_covariance_o_fifodata(bb_covariance_B13_out_iowr_bl_return_covariance_o_fifodata),
        .out_iowr_bl_return_covariance_o_fifovalid(bb_covariance_B13_out_iowr_bl_return_covariance_o_fifovalid),
        .out_stall_in_0(bb_covariance_B13_out_stall_in_0),
        .out_stall_out_0(bb_covariance_B13_out_stall_out_0),
        .out_valid_out_0(bb_covariance_B13_out_valid_out_0),
        .out_wgl_7_exit_exit_stall_in(bb_covariance_B13_out_wgl_7_exit_exit_stall_in),
        .out_wgl_7_exit_exit_valid_in(bb_covariance_B13_out_wgl_7_exit_exit_valid_in),
        .clock(clock),
        .resetn(resetn)
    );

    // VCC(CONSTANT,1)
    assign VCC_q = $unsigned(1'b1);

    // GND(CONSTANT,0)
    assign GND_q = $unsigned(1'b0);

    // covariance_B1_start_x(EXTIFACE,118)
    assign covariance_B1_start_x_i_capture = GND_q;
    assign covariance_B1_start_x_i_clear = GND_q;
    assign covariance_B1_start_x_i_enable = VCC_q;
    assign covariance_B1_start_x_i_shift = GND_q;
    assign covariance_B1_start_x_i_stall_pred = GND_q;
    assign covariance_B1_start_x_i_stall_succ = bb_covariance_B13_out_stall_in_0;
    assign covariance_B1_start_x_i_valid_loop = bb_covariance_B1_start_out_valid_in_0;
    assign covariance_B1_start_x_i_valid_pred = bb_covariance_B1_start_out_valid_in_1;
    assign covariance_B1_start_x_i_valid_succ = bb_covariance_B13_out_valid_out_0;
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

    // covariance_B12_x(EXTIFACE,119)
    assign covariance_B12_x_i_capture = GND_q;
    assign covariance_B12_x_i_clear = GND_q;
    assign covariance_B12_x_i_enable = VCC_q;
    assign covariance_B12_x_i_shift = GND_q;
    assign covariance_B12_x_i_stall_pred = loop_limiter_covariance5_out_o_stall;
    assign covariance_B12_x_i_stall_succ = bb_covariance_B12_out_stall_in_0;
    assign covariance_B12_x_i_valid_loop = bb_covariance_B12_out_valid_in_0;
    assign covariance_B12_x_i_valid_pred = bb_covariance_B12_out_valid_in_1;
    assign covariance_B12_x_i_valid_succ = bb_covariance_B12_out_valid_out_0;
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

    // covariance_B3_x(EXTIFACE,120)
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

    // covariance_B5_x(EXTIFACE,121)
    assign covariance_B5_x_i_capture = GND_q;
    assign covariance_B5_x_i_clear = GND_q;
    assign covariance_B5_x_i_enable = VCC_q;
    assign covariance_B5_x_i_shift = GND_q;
    assign covariance_B5_x_i_stall_pred = loop_limiter_covariance2_out_o_stall;
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

    // covariance_B7_x(EXTIFACE,122)
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

    // covariance_B8_x(EXTIFACE,123)
    assign covariance_B8_x_i_capture = GND_q;
    assign covariance_B8_x_i_clear = GND_q;
    assign covariance_B8_x_i_enable = VCC_q;
    assign covariance_B8_x_i_shift = GND_q;
    assign covariance_B8_x_i_stall_pred = loop_limiter_covariance1_out_o_stall;
    assign covariance_B8_x_i_stall_succ = bb_covariance_B10_out_stall_in_0;
    assign covariance_B8_x_i_valid_loop = bb_covariance_B8_out_valid_in_0;
    assign covariance_B8_x_i_valid_pred = bb_covariance_B8_out_valid_in_1;
    assign covariance_B8_x_i_valid_succ = bb_covariance_B10_out_valid_out_0;
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

    // covariance_B9_x(EXTIFACE,124)
    assign covariance_B9_x_i_capture = GND_q;
    assign covariance_B9_x_i_clear = GND_q;
    assign covariance_B9_x_i_enable = VCC_q;
    assign covariance_B9_x_i_shift = GND_q;
    assign covariance_B9_x_i_stall_pred = loop_limiter_covariance4_out_o_stall;
    assign covariance_B9_x_i_stall_succ = bb_covariance_B11_out_stall_in_0;
    assign covariance_B9_x_i_valid_loop = bb_covariance_B9_out_valid_in_0;
    assign covariance_B9_x_i_valid_pred = bb_covariance_B9_out_valid_in_1;
    assign covariance_B9_x_i_valid_succ = bb_covariance_B11_out_valid_out_0;
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

    // out_iord_bl_call_covariance_o_fifoalmost_full(GPOUT,179)
    assign out_iord_bl_call_covariance_o_fifoalmost_full = bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoalmost_full;

    // out_iord_bl_call_covariance_o_fifoready(GPOUT,180)
    assign out_iord_bl_call_covariance_o_fifoready = bb_covariance_B1_start_out_iord_bl_call_covariance_o_fifoready;

    // out_iowr_bl_return_covariance_o_fifodata(GPOUT,181)
    assign out_iowr_bl_return_covariance_o_fifodata = bb_covariance_B13_out_iowr_bl_return_covariance_o_fifodata;

    // out_iowr_bl_return_covariance_o_fifovalid(GPOUT,182)
    assign out_iowr_bl_return_covariance_o_fifovalid = bb_covariance_B13_out_iowr_bl_return_covariance_o_fifovalid;

    // out_memdep_covariance_avm_address(GPOUT,183)
    assign out_memdep_covariance_avm_address = bb_covariance_B7_out_memdep_covariance_avm_address;

    // out_memdep_covariance_avm_burstcount(GPOUT,184)
    assign out_memdep_covariance_avm_burstcount = bb_covariance_B7_out_memdep_covariance_avm_burstcount;

    // out_memdep_covariance_avm_byteenable(GPOUT,185)
    assign out_memdep_covariance_avm_byteenable = bb_covariance_B7_out_memdep_covariance_avm_byteenable;

    // out_memdep_covariance_avm_enable(GPOUT,186)
    assign out_memdep_covariance_avm_enable = bb_covariance_B7_out_memdep_covariance_avm_enable;

    // out_memdep_covariance_avm_read(GPOUT,187)
    assign out_memdep_covariance_avm_read = bb_covariance_B7_out_memdep_covariance_avm_read;

    // out_memdep_covariance_avm_write(GPOUT,188)
    assign out_memdep_covariance_avm_write = bb_covariance_B7_out_memdep_covariance_avm_write;

    // out_memdep_covariance_avm_writedata(GPOUT,189)
    assign out_memdep_covariance_avm_writedata = bb_covariance_B7_out_memdep_covariance_avm_writedata;

    // bb_covariance_B0_runOnce(BLACKBOX,2)
    covariance_bb_B0_runOnce thebb_covariance_B0_runOnce (
        .in_stall_in_0(GND_q),
        .in_valid_in_0(in_valid_in),
        .out_stall_out_0(bb_covariance_B0_runOnce_out_stall_out_0),
        .out_valid_out_0(),
        .clock(clock),
        .resetn(resetn)
    );

    // out_stall_out(GPOUT,190)
    assign out_stall_out = bb_covariance_B0_runOnce_out_stall_out_0;

    // out_unnamed_covariance2_covariance_avm_address(GPOUT,191)
    assign out_unnamed_covariance2_covariance_avm_address = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_address;

    // out_unnamed_covariance2_covariance_avm_burstcount(GPOUT,192)
    assign out_unnamed_covariance2_covariance_avm_burstcount = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_burstcount;

    // out_unnamed_covariance2_covariance_avm_byteenable(GPOUT,193)
    assign out_unnamed_covariance2_covariance_avm_byteenable = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_byteenable;

    // out_unnamed_covariance2_covariance_avm_enable(GPOUT,194)
    assign out_unnamed_covariance2_covariance_avm_enable = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_enable;

    // out_unnamed_covariance2_covariance_avm_read(GPOUT,195)
    assign out_unnamed_covariance2_covariance_avm_read = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_read;

    // out_unnamed_covariance2_covariance_avm_write(GPOUT,196)
    assign out_unnamed_covariance2_covariance_avm_write = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_write;

    // out_unnamed_covariance2_covariance_avm_writedata(GPOUT,197)
    assign out_unnamed_covariance2_covariance_avm_writedata = bb_covariance_B5_out_unnamed_covariance2_covariance_avm_writedata;

    // out_unnamed_covariance3_covariance_avm_address(GPOUT,198)
    assign out_unnamed_covariance3_covariance_avm_address = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_address;

    // out_unnamed_covariance3_covariance_avm_burstcount(GPOUT,199)
    assign out_unnamed_covariance3_covariance_avm_burstcount = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_burstcount;

    // out_unnamed_covariance3_covariance_avm_byteenable(GPOUT,200)
    assign out_unnamed_covariance3_covariance_avm_byteenable = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_byteenable;

    // out_unnamed_covariance3_covariance_avm_enable(GPOUT,201)
    assign out_unnamed_covariance3_covariance_avm_enable = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_enable;

    // out_unnamed_covariance3_covariance_avm_read(GPOUT,202)
    assign out_unnamed_covariance3_covariance_avm_read = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_read;

    // out_unnamed_covariance3_covariance_avm_write(GPOUT,203)
    assign out_unnamed_covariance3_covariance_avm_write = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_write;

    // out_unnamed_covariance3_covariance_avm_writedata(GPOUT,204)
    assign out_unnamed_covariance3_covariance_avm_writedata = bb_covariance_B7_out_unnamed_covariance3_covariance_avm_writedata;

    // out_unnamed_covariance4_covariance_avm_address(GPOUT,205)
    assign out_unnamed_covariance4_covariance_avm_address = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_address;

    // out_unnamed_covariance4_covariance_avm_burstcount(GPOUT,206)
    assign out_unnamed_covariance4_covariance_avm_burstcount = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_burstcount;

    // out_unnamed_covariance4_covariance_avm_byteenable(GPOUT,207)
    assign out_unnamed_covariance4_covariance_avm_byteenable = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_byteenable;

    // out_unnamed_covariance4_covariance_avm_enable(GPOUT,208)
    assign out_unnamed_covariance4_covariance_avm_enable = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_enable;

    // out_unnamed_covariance4_covariance_avm_read(GPOUT,209)
    assign out_unnamed_covariance4_covariance_avm_read = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_read;

    // out_unnamed_covariance4_covariance_avm_write(GPOUT,210)
    assign out_unnamed_covariance4_covariance_avm_write = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_write;

    // out_unnamed_covariance4_covariance_avm_writedata(GPOUT,211)
    assign out_unnamed_covariance4_covariance_avm_writedata = bb_covariance_B11_out_unnamed_covariance4_covariance_avm_writedata;

    // out_unnamed_covariance5_covariance_avm_address(GPOUT,212)
    assign out_unnamed_covariance5_covariance_avm_address = bb_covariance_B12_out_unnamed_covariance5_covariance_avm_address;

    // out_unnamed_covariance5_covariance_avm_burstcount(GPOUT,213)
    assign out_unnamed_covariance5_covariance_avm_burstcount = bb_covariance_B12_out_unnamed_covariance5_covariance_avm_burstcount;

    // out_unnamed_covariance5_covariance_avm_byteenable(GPOUT,214)
    assign out_unnamed_covariance5_covariance_avm_byteenable = bb_covariance_B12_out_unnamed_covariance5_covariance_avm_byteenable;

    // out_unnamed_covariance5_covariance_avm_enable(GPOUT,215)
    assign out_unnamed_covariance5_covariance_avm_enable = bb_covariance_B12_out_unnamed_covariance5_covariance_avm_enable;

    // out_unnamed_covariance5_covariance_avm_read(GPOUT,216)
    assign out_unnamed_covariance5_covariance_avm_read = bb_covariance_B12_out_unnamed_covariance5_covariance_avm_read;

    // out_unnamed_covariance5_covariance_avm_write(GPOUT,217)
    assign out_unnamed_covariance5_covariance_avm_write = bb_covariance_B12_out_unnamed_covariance5_covariance_avm_write;

    // out_unnamed_covariance5_covariance_avm_writedata(GPOUT,218)
    assign out_unnamed_covariance5_covariance_avm_writedata = bb_covariance_B12_out_unnamed_covariance5_covariance_avm_writedata;

    // out_unnamed_covariance6_covariance_avm_address(GPOUT,219)
    assign out_unnamed_covariance6_covariance_avm_address = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_address;

    // out_unnamed_covariance6_covariance_avm_burstcount(GPOUT,220)
    assign out_unnamed_covariance6_covariance_avm_burstcount = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_burstcount;

    // out_unnamed_covariance6_covariance_avm_byteenable(GPOUT,221)
    assign out_unnamed_covariance6_covariance_avm_byteenable = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_byteenable;

    // out_unnamed_covariance6_covariance_avm_enable(GPOUT,222)
    assign out_unnamed_covariance6_covariance_avm_enable = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_enable;

    // out_unnamed_covariance6_covariance_avm_read(GPOUT,223)
    assign out_unnamed_covariance6_covariance_avm_read = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_read;

    // out_unnamed_covariance6_covariance_avm_write(GPOUT,224)
    assign out_unnamed_covariance6_covariance_avm_write = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_write;

    // out_unnamed_covariance6_covariance_avm_writedata(GPOUT,225)
    assign out_unnamed_covariance6_covariance_avm_writedata = bb_covariance_B12_out_unnamed_covariance6_covariance_avm_writedata;

    // out_valid_out(GPOUT,226)
    assign out_valid_out = GND_q;

endmodule
